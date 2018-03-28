import sys
import re
import random


#Instructions where the first register is the source register
source_first_instructions = ('bx','bl','bgt','blt','b','beq','ldm', 'stm',
	'push','pop', 'nop', 'cmp', 'str')

#Regex to make a list of all registers
def get_regs(instruction):
	split = re.findall(r"\W(r\d+|ip|sp|fp|lr)", instruction[0])
	return split

def get_source_regs(instruction):
	regs = get_regs(instruction)
	output = ''
	if not instruction[0]:
		output = ['']
	elif instruction[0].startswith(source_first_instructions):
		output = regs
	else:
		output = regs[1:]
	return output

def get_dest_reg(instruction):
	regs = get_regs(instruction)
	output = ''
	if not instruction[0]:
		output = ['']
	elif instruction[0].startswith(source_first_instructions):
		output = ''
	else:
		output = regs[0]
	return output

#Parameters
if len(sys.argv) < 2:
	filename = 'main.s'
else:
	filename = str(sys.argv[1])
if len(sys.argv) < 3:
	key_size = 16
else:
 	key_size = int(sys.argv[2])


#Read Assembly file
with open(filename, 'r', encoding='utf-8') as asm_file:
	read_data = asm_file.read()

#Split into lines
lines = read_data.split('\n')

#Remove white space
lines_stripped = list(map(str.strip, lines))

line_index = 0
lines_numbered = []

#Add line numbers to lines for future use
for line in lines_stripped:
	lines_numbered.append((line, line_index))
	line_index += 1

instructions = []
#Remove non-instructions. Keep an empty location to show blocks and loops:
for line in lines_numbered:
	if line[0].startswith('.L') or line[0].endswith(':'):
		instructions.append(('',line[1]))
	elif not line[0].startswith(('.', '@')):
		instructions.append(line)

branch_instructions = ('bx','bl','bgt','blt','b','beq')
instructions_no_branches = []
#Replace branches to show context changes:
for line in instructions[:]:
	if line[0].startswith(branch_instructions):
		instructions_no_branches.append(('', line[1]))
	else:
		instructions_no_branches.append(line)

#Build Register dependencies for each instruction
instruction_source_dependencies = []
base_source_regs = set([''])#, 'sp', 'fp', 'ip', 'r0'])
regs = base_source_regs.copy()

#Source Register dependencies
for line in instructions_no_branches:
	regs_copy = regs.copy()
	instruction_source_dependencies.append((line[0], line[1], regs_copy))

	#Reset dependencies on new context
	if not line[0]:
		regs = base_source_regs.copy()
	else:
		regs.add(get_dest_reg(line))


instruction_dest_dependencies = []
base_dest_regs = set([''])#, 'fp', 'sp', 'ip', 'r0'])
regs = base_dest_regs.copy()

#Destination Register dependencies
for line in reversed(instruction_source_dependencies):
	regs_copy = regs.copy()
	instruction_dest_dependencies.append((line[0], line[1], regs_copy, line[2]))

	#Reset dependencies on new context
	if not line[0]:
		regs = base_dest_regs.copy()
	else:
		dest_reg = get_dest_reg(line)
		if dest_reg and dest_reg in regs:
			regs.remove(get_dest_reg(line))
		regs.update(get_source_regs(line))


#Remove unswappable instructions
removed_instructions = ('bx','bl','bgt','blt','b','beq','ldm', 'stm',
	'push','pop', 'nop', 'cmp')#, 'str', 'ldr')
swappable_ins = []
for line in reversed(instruction_dest_dependencies):
	if line[0] and not line[0].startswith(removed_instructions):
		swappable_ins.append(line)

#Count the number of swaps/arrangements
#	Does this by swapping instructions that have same dependencies
num_swappable = 0
total_arrangements = 1

copy_swappable = swappable_ins[:]
swapped_lines = []

for key_num in range(0, key_size):
	num_swaps = 0
	ins_copy = list(copy_swappable)
	remove_copy = list(copy_swappable)

	#Counting Up all swaps
	for line in ins_copy:
		dest_reg1 = get_dest_reg(line)
		source_regs1 = get_source_regs(line)
		remove_copy.remove(line)
		for other_line in remove_copy:
			dest_reg2 = get_dest_reg(other_line)
			source_regs2 = get_source_regs(other_line)

			if (not line[0] == other_line[0] and
					dest_reg1 in other_line[2] and
					all(reg in other_line[3] for reg in source_regs1) and
					dest_reg2 in line[2] and
					all(reg in line[3] for reg in source_regs2)):
				num_swaps += 1


	#Choose Random instructions to swap
	rand_index = random.randint(0, len(ins_copy)-1)
	rand_index2 = random.randint(0, len(ins_copy)-1)
	swapped = False
	while not swapped and num_swaps > 0:
		line = ins_copy[rand_index]
		dest_reg1 = get_dest_reg(line)
		source_regs1 = get_source_regs(line)
		for _ in ins_copy:
			other_line = ins_copy[rand_index2]
			dest_reg2 = get_dest_reg(other_line)
			source_regs2 = get_source_regs(other_line)

			if (not line[0] == other_line[0] and
					dest_reg1 in other_line[2] and
					all(reg in other_line[3] for reg in source_regs1) and
					dest_reg2 in line[2] and
					all(reg in line[3] for reg in source_regs2)):
				swapped_line = line
				swapped_other_line = other_line
				swapped = True
				break
			rand_index2 = (rand_index2 + 1) % len(ins_copy)
		rand_index = (rand_index + 1) % len(ins_copy)

	#Print Swap and remove instructions


	print("{0:<5}: {1:<25}  <---->  {2:<5}: {3:<25} : {4}".format(swapped_line[1], swapped_line[0],
	swapped_other_line[1], swapped_other_line[0], num_swaps))
	copy_swappable.remove(swapped_line)
	copy_swappable.remove(swapped_other_line)
	swapped_lines.append((swapped_line[1], swapped_other_line[1]))
	total_arrangements *= num_swaps

print("\nNumber of Instructions: ", len(instructions))
print("Number of Swappable Instructions: ", len(swappable_ins))
print("Number of Arrangements: ", '%.2E\n' % total_arrangements)

#Swap instructions
for swap in swapped_lines:
	temp = lines[swap[0]]
	lines[swap[0]] = lines[swap[1]]
	lines[swap[1]] = temp

#Write to output file
with open("out_"+filename, 'w', encoding='utf-8') as out_file:
	out_file.write('\n'.join(lines))




#print(num_swappable)
#print(len(instructions))

#for line in lines_stripped:
	#print(line)
