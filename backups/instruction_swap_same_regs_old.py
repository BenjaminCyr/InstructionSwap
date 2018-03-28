import sys
import os, glob
import re
import random


#Instructions where the first register is the source register
source_first_instructions = ('bx','bl','bgt','blt','b','beq','ldm', 'stm',
	'push','pop', 'nop', 'cmp', 'str')

#Regex to make a list of all registers
def get_regs(instruction):
	split = re.findall(r"r\d+|ip|sp|fp|lr", instruction)
	if instruction.startswith(source_first_instructions):
		split.insert(0, '')
	return split

def swap_instructions(filename, num_swaps):
	#Read Assembly file
	with open("src/" + filename, 'r', encoding='utf-8') as asm_file:
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
	#Remove non-instructions:
	for line in lines_numbered:
		if not line[0].startswith(('.', '@')):
			instructions.append(line)
		#if line.startswith('.L'):
			#instructions.append('')

	#Remove Un-swappable instructions:
	swappable_ins = []
	removed_instructions = ('bx','bl','bgt','blt','b','beq','ldm', 'stm',
		'push','pop', 'nop', 'cmp')#, 'str', 'ldr')
	for line in instructions:
		if not (line[0].startswith(removed_instructions) or line[0].endswith(":")):
			swappable_ins.append(line)


	#Count the number of swaps/arrangements
	#	Does this by swapping instructions that use the same regs
	num_swappable = 0
	total_arrangements = 1

	copy_swappable = swappable_ins[:]
	swapped_lines = []

	for _ in range(0, num_swaps):
		num_possible_swaps = 0
		ins_copy = list(copy_swappable)
		remove_copy = list(copy_swappable)

		#Counting Up all swaps
		for line in ins_copy:
			regs = get_regs(line[0])
			remove_copy.remove(line)
			for other_line in remove_copy:
				if regs and not line[0] == other_line[0] and regs == get_regs(other_line[0]):
					num_possible_swaps += 1

		if num_possible_swaps == 0:
			print("No More Swaps Possible")
			break

		#Choose random instruction and find possible swaps
		possible_swaps = []
		rand_index = random.randint(0, len(ins_copy)-1)
		while len(possible_swaps) < 1:
			possible_swaps = []
			instruction = ins_copy[rand_index]
			regs = get_regs(instruction[0])
			for other_line in ins_copy:
				if regs and not instruction[0] == other_line[0] and regs == get_regs(other_line[0]):
					possible_swaps.append(other_line)
			rand_index = (rand_index + 1) % len(ins_copy)

		#Choose random swap
		rand_index2 = random.randint(0, len(possible_swaps)-1)
		swapped_line = instruction
		swapped_other_line = possible_swaps[rand_index2]

		#Print Swap and remove instructions
		print("{0:<5}: {1:<25}  <---->  {2:<5}: {3:<25} : {4}".format(swapped_line[1], swapped_line[0],
		swapped_other_line[1], swapped_other_line[0], num_possible_swaps))

		copy_swappable.remove(swapped_line)
		copy_swappable.remove(swapped_other_line)
		swapped_lines.append((swapped_line[1], swapped_other_line[1]))
		total_arrangements *= num_possible_swaps

	print("\nNumber of Instructions: ", len(instructions))
	print("Number of Swappable Instructions: ", len(swappable_ins))
	print("Number of Arrangements: ", '%.2E\n' % total_arrangements)

	#Swap instructions
	for swap in swapped_lines:
		temp = lines[swap[0]]
		lines[swap[0]] = lines[swap[1]]
		lines[swap[1]] = temp

	#Write to output file
	with open("out/" + filename[:-2] + "_out.s", 'w', encoding='utf-8') as out_file:
		out_file.write('\n'.join(lines))

	#result = "{},{},{},{:.2E}".format(filename, len(instructions), len(swappable_ins), total_arrangements)

	return (filename, len(instructions), len(swappable_ins), total_arrangements)


#Filename
if len(sys.argv) < 2:
	filename = 'main.s'
else:
	filename = str(sys.argv[1])

#Key Size
if len(sys.argv) < 3:
	num_swaps = 16
else:
 	num_swaps = int(sys.argv[2])

if filename.startswith("all"):
	results = []
	os.chdir(os.path.dirname(os.path.realpath(__file__)))
	for file in glob.glob("src/*.s"):
		filename = file[4:]
		results.append(swap_instructions(filename, num_swaps))

	results.sort(key=lambda tup: tup[1])


	with open("results.csv", 'w', encoding='utf-8') as out_file:
		out_file.write('Arrangements with {} Swaps\n'.format(num_swaps))
		out_file.write('Program Name, Number of Instr., Number of Swappable Instr., Total Arrangements\n')
		for result in results:
			out_file.write("{},{},{},{:.2E}\n".format(*result))
else:
	swap_instructions(filename, num_swaps)

#print(num_swappable)
#print(len(instructions))

#for line in lines_stripped:
	#print(line)
