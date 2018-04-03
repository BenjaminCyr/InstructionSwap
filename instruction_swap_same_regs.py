import sys
import os, glob
import re
import random

DEFAULT_LIST = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
#index_list = [0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
index_list = DEFAULT_LIST
#Instructions where the first register is the source register
source_first_instructions = ('bx','bl','bgt','blt','b','beq','ldm', 'stm',
	'push','pop', 'nop', 'cmp', 'str')

def reset_index_list():
	index_list = DEFAULT_LIST

def index_not_used(instruction, index_list):
	cache_index = instruction[2] & 0x1F
	return cache_index in index_list

''' Regex to make a list of all registers '''
def get_regs(instruction):
	split = re.findall(r"\W(r\d+|ip|sp|fp|lr)", instruction[0])
	if instruction[0].startswith(source_first_instructions):
		split.insert(0, '')
	return split

''' Retrieve a list of source registers '''
def get_source_regs(instruction):
	regs = get_regs(instruction)
	output = ['']
	if not instruction[0]:
		output = ['']
	elif instruction[0].startswith(source_first_instructions):
		output = regs
	else:
		output = regs[1:]
	return output

''' Retrieve the Destination Register '''
def get_dest_reg(instruction):
	regs = get_regs(instruction)
	output = ''
	if regs and not instruction[0].startswith(source_first_instructions):
		output = regs[0]
	return output

''' Retrieve the instruction operation '''
def get_operation(instruction):
	split = instruction[0].split()
	output = ''
	if len(split) > 1:
		output = split[0]
	return output

''' Check if the instructions are swappable '''
def is_swappable(instruction1, instruction2, instructions):
	regs1 = get_regs(instruction1)
	op1 = get_operation(instruction1)
	index1 = instruction1[2]
	instruction1_before = instructions[(index1 - 1)] if index1 > 0 else ('',0,0)
	instruction1_after = instructions[(index1 + 1)] if index1 < len(instructions) - 1 else ('',0,0)
	op1_before = get_operation(instruction1_before)
	op1_after = get_operation(instruction1_after)
	reg1_before = get_dest_reg(instruction1_before)
	reg1_after = get_dest_reg(instruction1_after)

	regs2 = get_regs(instruction2)
	op2 = get_operation(instruction2)
	index2 = instruction2[2]
	instruction2_before = instructions[(index2 - 1)] if index2 > 0 else ('',0,0)
	instruction2_after = instructions[(index2 + 1)] if index2 < len(instructions) - 1 else ('',0,0)
	op2_before = get_operation(instruction2_before)
	op2_after = get_operation(instruction2_after)
	reg2_before = get_dest_reg(instruction2_before)
	reg2_after = get_dest_reg(instruction2_after)

	''' Check:
		1. not same instruction
		2. same source and destination registers
		3. instruction is not redundant
		    (the instructions before and after have different operation/dest reg)
	'''
	can_swap = (regs1) and (regs2) and \
		(instruction1[0] != instruction2[0]) and \
		(regs1 == regs2) and \
		(op1_before != op2 or reg1_before != regs2[0]) and \
		(op1_after != op2 or reg1_after != regs2[0]) and \
		(op2_before != op1 or reg2_before != regs1[0]) and \
		(op2_after != op1 or reg2_after != regs1[0])


	return can_swap

''' Swap the Instructions '''
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
	line_index = 0
	#Remove non-instructions:
	for line in lines_numbered:
		if line[0] and not line[0].startswith(('.', '@')) and not line[0].endswith(":"):
			instructions.append(line + (line_index,))
			line_index += 1

		#if line.startswith('.L'):
			#instructions.append('')

	#Remove Un-swappable instructions:

	# This is a list of tuples: (instruction string, line index in file, line index in instruction list)
	swappable_ins = []

	removed_instructions = ('bx','bl','bgt','blt','b','beq','ldm', 'stm',
		'push','pop', 'nop', 'cmp')#, 'str', 'ldr')
	for line in instructions:
		for other_line in instructions:
			if (line[0].startswith(removed_instructions)):
				break
			elif is_swappable(line, other_line, instructions):
				swappable_ins.append(line)
				break


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
			remove_copy.remove(line)
			if index_not_used(line, index_list):
				index_list.remove(line[2] & 0x1F)
				for other_line in remove_copy:
					if is_swappable(line, other_line, instructions) and index_not_used(other_line, index_list):
						num_possible_swaps += 1
				index_list.append(line[2] & 0x1F)

		if num_possible_swaps == 0:
			print("No More Swaps Possible")
			break

		#Choose random instruction and find possible swaps
		possible_swaps = []
		rand_index = random.randint(0, len(ins_copy)-1)
		while len(possible_swaps) < 1:
			possible_swaps = []
			instruction = ins_copy[rand_index]
			if index_not_used(instruction, index_list):
				index_list.remove(instruction[2] & 0x1F)
				for other_instruction in ins_copy:
					if is_swappable(instruction, other_instruction, instructions) and index_not_used(other_instruction, index_list):
						possible_swaps.append(other_instruction)
				index_list.append(instruction[2] & 0x1F)
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
		index_list.remove(swapped_line[2] & 0x1F)
		index_list.remove(swapped_other_line[2] & 0x1F)
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


''' Choose a single file in the src/ file or all files in src and then choose
 	how many swaps you want to do. Use like:
		python instruction_swap_same_regs.py main.s 16
		python instruction_swap_same_regs.py all 8

	Stores the swapped firmware in out/.

	If you use "all", it generates a csv called "results.csv"
'''
if __name__ == "__main__":
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
			index_list = DEFAULT_LIST[:]
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
