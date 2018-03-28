	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"aes.c"
	.bss
	.align	2
state:
	.space	4
	.size	state, 4
	.align	2
RoundKey:
	.space	176
	.size	RoundKey, 176
	.align	2
Key:
	.space	4
	.size	Key, 4
	.align	2
Iv:
	.space	4
	.size	Iv, 4
	.section	.rodata
	.align	2
	.type	sbox, %object
	.size	sbox, 256
sbox:
	.byte	99
	.byte	124
	.byte	119
	.byte	123
	.byte	-14
	.byte	107
	.byte	111
	.byte	-59
	.byte	48
	.byte	1
	.byte	103
	.byte	43
	.byte	-2
	.byte	-41
	.byte	-85
	.byte	118
	.byte	-54
	.byte	-126
	.byte	-55
	.byte	125
	.byte	-6
	.byte	89
	.byte	71
	.byte	-16
	.byte	-83
	.byte	-44
	.byte	-94
	.byte	-81
	.byte	-100
	.byte	-92
	.byte	114
	.byte	-64
	.byte	-73
	.byte	-3
	.byte	-109
	.byte	38
	.byte	54
	.byte	63
	.byte	-9
	.byte	-52
	.byte	52
	.byte	-91
	.byte	-27
	.byte	-15
	.byte	113
	.byte	-40
	.byte	49
	.byte	21
	.byte	4
	.byte	-57
	.byte	35
	.byte	-61
	.byte	24
	.byte	-106
	.byte	5
	.byte	-102
	.byte	7
	.byte	18
	.byte	-128
	.byte	-30
	.byte	-21
	.byte	39
	.byte	-78
	.byte	117
	.byte	9
	.byte	-125
	.byte	44
	.byte	26
	.byte	27
	.byte	110
	.byte	90
	.byte	-96
	.byte	82
	.byte	59
	.byte	-42
	.byte	-77
	.byte	41
	.byte	-29
	.byte	47
	.byte	-124
	.byte	83
	.byte	-47
	.byte	0
	.byte	-19
	.byte	32
	.byte	-4
	.byte	-79
	.byte	91
	.byte	106
	.byte	-53
	.byte	-66
	.byte	57
	.byte	74
	.byte	76
	.byte	88
	.byte	-49
	.byte	-48
	.byte	-17
	.byte	-86
	.byte	-5
	.byte	67
	.byte	77
	.byte	51
	.byte	-123
	.byte	69
	.byte	-7
	.byte	2
	.byte	127
	.byte	80
	.byte	60
	.byte	-97
	.byte	-88
	.byte	81
	.byte	-93
	.byte	64
	.byte	-113
	.byte	-110
	.byte	-99
	.byte	56
	.byte	-11
	.byte	-68
	.byte	-74
	.byte	-38
	.byte	33
	.byte	16
	.byte	-1
	.byte	-13
	.byte	-46
	.byte	-51
	.byte	12
	.byte	19
	.byte	-20
	.byte	95
	.byte	-105
	.byte	68
	.byte	23
	.byte	-60
	.byte	-89
	.byte	126
	.byte	61
	.byte	100
	.byte	93
	.byte	25
	.byte	115
	.byte	96
	.byte	-127
	.byte	79
	.byte	-36
	.byte	34
	.byte	42
	.byte	-112
	.byte	-120
	.byte	70
	.byte	-18
	.byte	-72
	.byte	20
	.byte	-34
	.byte	94
	.byte	11
	.byte	-37
	.byte	-32
	.byte	50
	.byte	58
	.byte	10
	.byte	73
	.byte	6
	.byte	36
	.byte	92
	.byte	-62
	.byte	-45
	.byte	-84
	.byte	98
	.byte	-111
	.byte	-107
	.byte	-28
	.byte	121
	.byte	-25
	.byte	-56
	.byte	55
	.byte	109
	.byte	-115
	.byte	-43
	.byte	78
	.byte	-87
	.byte	108
	.byte	86
	.byte	-12
	.byte	-22
	.byte	101
	.byte	122
	.byte	-82
	.byte	8
	.byte	-70
	.byte	120
	.byte	37
	.byte	46
	.byte	28
	.byte	-90
	.byte	-76
	.byte	-58
	.byte	-24
	.byte	-35
	.byte	116
	.byte	31
	.byte	75
	.byte	-67
	.byte	-117
	.byte	-118
	.byte	112
	.byte	62
	.byte	-75
	.byte	102
	.byte	72
	.byte	3
	.byte	-10
	.byte	14
	.byte	97
	.byte	53
	.byte	87
	.byte	-71
	.byte	-122
	.byte	-63
	.byte	29
	.byte	-98
	.byte	-31
	.byte	-8
	.byte	-104
	.byte	17
	.byte	105
	.byte	-39
	.byte	-114
	.byte	-108
	.byte	-101
	.byte	30
	.byte	-121
	.byte	-23
	.byte	-50
	.byte	85
	.byte	40
	.byte	-33
	.byte	-116
	.byte	-95
	.byte	-119
	.byte	13
	.byte	-65
	.byte	-26
	.byte	66
	.byte	104
	.byte	65
	.byte	-103
	.byte	45
	.byte	15
	.byte	-80
	.byte	84
	.byte	-69
	.byte	22
	.align	2
	.type	rsbox, %object
	.size	rsbox, 256
rsbox:
	.byte	82
	.byte	9
	.byte	106
	.byte	-43
	.byte	48
	.byte	54
	.byte	-91
	.byte	56
	.byte	-65
	.byte	64
	.byte	-93
	.byte	-98
	.byte	-127
	.byte	-13
	.byte	-41
	.byte	-5
	.byte	124
	.byte	-29
	.byte	57
	.byte	-126
	.byte	-101
	.byte	47
	.byte	-1
	.byte	-121
	.byte	52
	.byte	-114
	.byte	67
	.byte	68
	.byte	-60
	.byte	-34
	.byte	-23
	.byte	-53
	.byte	84
	.byte	123
	.byte	-108
	.byte	50
	.byte	-90
	.byte	-62
	.byte	35
	.byte	61
	.byte	-18
	.byte	76
	.byte	-107
	.byte	11
	.byte	66
	.byte	-6
	.byte	-61
	.byte	78
	.byte	8
	.byte	46
	.byte	-95
	.byte	102
	.byte	40
	.byte	-39
	.byte	36
	.byte	-78
	.byte	118
	.byte	91
	.byte	-94
	.byte	73
	.byte	109
	.byte	-117
	.byte	-47
	.byte	37
	.byte	114
	.byte	-8
	.byte	-10
	.byte	100
	.byte	-122
	.byte	104
	.byte	-104
	.byte	22
	.byte	-44
	.byte	-92
	.byte	92
	.byte	-52
	.byte	93
	.byte	101
	.byte	-74
	.byte	-110
	.byte	108
	.byte	112
	.byte	72
	.byte	80
	.byte	-3
	.byte	-19
	.byte	-71
	.byte	-38
	.byte	94
	.byte	21
	.byte	70
	.byte	87
	.byte	-89
	.byte	-115
	.byte	-99
	.byte	-124
	.byte	-112
	.byte	-40
	.byte	-85
	.byte	0
	.byte	-116
	.byte	-68
	.byte	-45
	.byte	10
	.byte	-9
	.byte	-28
	.byte	88
	.byte	5
	.byte	-72
	.byte	-77
	.byte	69
	.byte	6
	.byte	-48
	.byte	44
	.byte	30
	.byte	-113
	.byte	-54
	.byte	63
	.byte	15
	.byte	2
	.byte	-63
	.byte	-81
	.byte	-67
	.byte	3
	.byte	1
	.byte	19
	.byte	-118
	.byte	107
	.byte	58
	.byte	-111
	.byte	17
	.byte	65
	.byte	79
	.byte	103
	.byte	-36
	.byte	-22
	.byte	-105
	.byte	-14
	.byte	-49
	.byte	-50
	.byte	-16
	.byte	-76
	.byte	-26
	.byte	115
	.byte	-106
	.byte	-84
	.byte	116
	.byte	34
	.byte	-25
	.byte	-83
	.byte	53
	.byte	-123
	.byte	-30
	.byte	-7
	.byte	55
	.byte	-24
	.byte	28
	.byte	117
	.byte	-33
	.byte	110
	.byte	71
	.byte	-15
	.byte	26
	.byte	113
	.byte	29
	.byte	41
	.byte	-59
	.byte	-119
	.byte	111
	.byte	-73
	.byte	98
	.byte	14
	.byte	-86
	.byte	24
	.byte	-66
	.byte	27
	.byte	-4
	.byte	86
	.byte	62
	.byte	75
	.byte	-58
	.byte	-46
	.byte	121
	.byte	32
	.byte	-102
	.byte	-37
	.byte	-64
	.byte	-2
	.byte	120
	.byte	-51
	.byte	90
	.byte	-12
	.byte	31
	.byte	-35
	.byte	-88
	.byte	51
	.byte	-120
	.byte	7
	.byte	-57
	.byte	49
	.byte	-79
	.byte	18
	.byte	16
	.byte	89
	.byte	39
	.byte	-128
	.byte	-20
	.byte	95
	.byte	96
	.byte	81
	.byte	127
	.byte	-87
	.byte	25
	.byte	-75
	.byte	74
	.byte	13
	.byte	45
	.byte	-27
	.byte	122
	.byte	-97
	.byte	-109
	.byte	-55
	.byte	-100
	.byte	-17
	.byte	-96
	.byte	-32
	.byte	59
	.byte	77
	.byte	-82
	.byte	42
	.byte	-11
	.byte	-80
	.byte	-56
	.byte	-21
	.byte	-69
	.byte	60
	.byte	-125
	.byte	83
	.byte	-103
	.byte	97
	.byte	23
	.byte	43
	.byte	4
	.byte	126
	.byte	-70
	.byte	119
	.byte	-42
	.byte	38
	.byte	-31
	.byte	105
	.byte	20
	.byte	99
	.byte	85
	.byte	33
	.byte	12
	.byte	125
	.align	2
	.type	Rcon, %object
	.size	Rcon, 255
Rcon:
	.byte	-115
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.byte	108
	.byte	-40
	.byte	-85
	.byte	77
	.byte	-102
	.byte	47
	.byte	94
	.byte	-68
	.byte	99
	.byte	-58
	.byte	-105
	.byte	53
	.byte	106
	.byte	-44
	.byte	-77
	.byte	125
	.byte	-6
	.byte	-17
	.byte	-59
	.byte	-111
	.byte	57
	.byte	114
	.byte	-28
	.byte	-45
	.byte	-67
	.byte	97
	.byte	-62
	.byte	-97
	.byte	37
	.byte	74
	.byte	-108
	.byte	51
	.byte	102
	.byte	-52
	.byte	-125
	.byte	29
	.byte	58
	.byte	116
	.byte	-24
	.byte	-53
	.byte	-115
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.byte	108
	.byte	-40
	.byte	-85
	.byte	77
	.byte	-102
	.byte	47
	.byte	94
	.byte	-68
	.byte	99
	.byte	-58
	.byte	-105
	.byte	53
	.byte	106
	.byte	-44
	.byte	-77
	.byte	125
	.byte	-6
	.byte	-17
	.byte	-59
	.byte	-111
	.byte	57
	.byte	114
	.byte	-28
	.byte	-45
	.byte	-67
	.byte	97
	.byte	-62
	.byte	-97
	.byte	37
	.byte	74
	.byte	-108
	.byte	51
	.byte	102
	.byte	-52
	.byte	-125
	.byte	29
	.byte	58
	.byte	116
	.byte	-24
	.byte	-53
	.byte	-115
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.byte	108
	.byte	-40
	.byte	-85
	.byte	77
	.byte	-102
	.byte	47
	.byte	94
	.byte	-68
	.byte	99
	.byte	-58
	.byte	-105
	.byte	53
	.byte	106
	.byte	-44
	.byte	-77
	.byte	125
	.byte	-6
	.byte	-17
	.byte	-59
	.byte	-111
	.byte	57
	.byte	114
	.byte	-28
	.byte	-45
	.byte	-67
	.byte	97
	.byte	-62
	.byte	-97
	.byte	37
	.byte	74
	.byte	-108
	.byte	51
	.byte	102
	.byte	-52
	.byte	-125
	.byte	29
	.byte	58
	.byte	116
	.byte	-24
	.byte	-53
	.byte	-115
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.byte	108
	.byte	-40
	.byte	-85
	.byte	77
	.byte	-102
	.byte	47
	.byte	94
	.byte	-68
	.byte	99
	.byte	-58
	.byte	-105
	.byte	53
	.byte	106
	.byte	-44
	.byte	-77
	.byte	125
	.byte	-6
	.byte	-17
	.byte	-59
	.byte	-111
	.byte	57
	.byte	114
	.byte	-28
	.byte	-45
	.byte	-67
	.byte	97
	.byte	-62
	.byte	-97
	.byte	37
	.byte	74
	.byte	-108
	.byte	51
	.byte	102
	.byte	-52
	.byte	-125
	.byte	29
	.byte	58
	.byte	116
	.byte	-24
	.byte	-53
	.byte	-115
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.byte	108
	.byte	-40
	.byte	-85
	.byte	77
	.byte	-102
	.byte	47
	.byte	94
	.byte	-68
	.byte	99
	.byte	-58
	.byte	-105
	.byte	53
	.byte	106
	.byte	-44
	.byte	-77
	.byte	125
	.byte	-6
	.byte	-17
	.byte	-59
	.byte	-111
	.byte	57
	.byte	114
	.byte	-28
	.byte	-45
	.byte	-67
	.byte	97
	.byte	-62
	.byte	-97
	.byte	37
	.byte	74
	.byte	-108
	.byte	51
	.byte	102
	.byte	-52
	.byte	-125
	.byte	29
	.byte	58
	.byte	116
	.byte	-24
	.byte	-53
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	getSBoxValue, %function
getSBoxValue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	ldr	r2, .L3
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	sbox
	.size	getSBoxValue, .-getSBoxValue
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	getSBoxInvert, %function
getSBoxInvert:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	ldr	r2, .L7
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	rsbox
	.size	getSBoxInvert, .-getSBoxInvert
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	KeyExpansion, %function
KeyExpansion:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L10
.L11:
	ldr	r3, .L17
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L17+4
	strb	r1, [r2, r3]
	ldr	r3, .L17
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r3, #1
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L17+4
	strb	r1, [r2, r3]
	ldr	r3, .L17
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r3, #2
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L17+4
	strb	r1, [r2, r3]
	ldr	r3, .L17
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r3, #3
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L17+4
	strb	r1, [r2, r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L10:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	bls	.L11
	b	.L12
.L16:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L13
.L14:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #-1073741823
	lsl	r2, r3, #2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldr	r2, .L17+4
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	sub	r2, fp, #20
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L13:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	bls	.L14
	ldr	r3, [fp, #-8]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L15
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	str	r3, [fp, #-16]
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	strb	r3, [fp, #-20]
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	strb	r3, [fp, #-19]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	strb	r3, [fp, #-18]
	ldr	r3, [fp, #-16]
	and	r3, r3, #255
	strb	r3, [fp, #-17]
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	getSBoxValue
	mov	r3, r0
	strb	r3, [fp, #-20]
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	getSBoxValue
	mov	r3, r0
	strb	r3, [fp, #-19]
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	getSBoxValue
	mov	r3, r0
	strb	r3, [fp, #-18]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	getSBoxValue
	mov	r3, r0
	strb	r3, [fp, #-17]
	ldrb	r2, [fp, #-20]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #2
	ldr	r1, .L17+8
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	eor	r3, r3, r2
	and	r3, r3, #255
	strb	r3, [fp, #-20]
.L15:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #-1073741820
	lsl	r3, r3, #2
	ldr	r2, .L17+4
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-20]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	eor	r2, r2, r1
	and	r1, r2, #255
	ldr	r2, .L17+4
	strb	r1, [r2, r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #-1073741820
	lsl	r3, r3, #2
	add	r3, r3, #1
	ldr	r2, .L17+4
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-19]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r3, #1
	eor	r2, r2, r1
	and	r1, r2, #255
	ldr	r2, .L17+4
	strb	r1, [r2, r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #-1073741820
	lsl	r3, r3, #2
	add	r3, r3, #2
	ldr	r2, .L17+4
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-18]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r3, #2
	eor	r2, r2, r1
	and	r1, r2, #255
	ldr	r2, .L17+4
	strb	r1, [r2, r3]
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	sub	r3, r3, #-1073741820
	lsl	r3, r3, #2
	add	r3, r3, #3
	ldr	r2, .L17+4
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r3, #3
	eor	r2, r2, r1
	and	r1, r2, #255
	ldr	r2, .L17+4
	strb	r1, [r2, r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L12:
	ldr	r3, [fp, #-8]
	cmp	r3, #43
	bls	.L16
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	Key
	.word	RoundKey
	.word	Rcon
	.size	KeyExpansion, .-KeyExpansion
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	AddRoundKey, %function
AddRoundKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	strb	r3, [fp, #-13]
	mov	r3, #0
	strb	r3, [fp, #-5]
	b	.L20
.L23:
	mov	r3, #0
	strb	r3, [fp, #-6]
	b	.L21
.L22:
	ldr	r3, .L24
	ldr	r1, [r3]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	lsl	r2, r2, #2
	add	r2, r1, r2
	add	r3, r2, r3
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	lsl	r2, r3, #2
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	add	r3, r2, r3
	lsl	r2, r3, #2
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, .L24+4
	ldrb	r0, [r2, r3]	@ zero_extendqisi2
	ldr	r3, .L24
	ldr	r1, [r3]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	eor	r0, r0, ip
	and	r0, r0, #255
	lsl	r2, r2, #2
	add	r2, r1, r2
	add	r3, r2, r3
	mov	r2, r0
	strb	r2, [r3]
	ldrb	r3, [fp, #-6]
	add	r3, r3, #1
	strb	r3, [fp, #-6]
.L21:
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L22
	ldrb	r3, [fp, #-5]
	add	r3, r3, #1
	strb	r3, [fp, #-5]
.L20:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L23
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	state
	.word	RoundKey
	.size	AddRoundKey, .-AddRoundKey
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	SubBytes, %function
SubBytes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #12
	mov	r3, #0
	strb	r3, [fp, #-21]
	b	.L27
.L30:
	mov	r3, #0
	strb	r3, [fp, #-22]
	b	.L28
.L29:
	ldr	r3, .L31
	ldr	r1, [r3]
	ldrb	r2, [fp, #-22]	@ zero_extendqisi2
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	lsl	r2, r2, #2
	add	r2, r1, r2
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L31
	ldr	r5, [r3]
	ldrb	r6, [fp, #-22]	@ zero_extendqisi2
	ldrb	r4, [fp, #-21]	@ zero_extendqisi2
	mov	r0, r2
	bl	getSBoxValue
	mov	r3, r0
	mov	r2, r3
	lsl	r3, r6, #2
	add	r3, r5, r3
	add	r3, r3, r4
	strb	r2, [r3]
	ldrb	r3, [fp, #-22]
	add	r3, r3, #1
	strb	r3, [fp, #-22]
.L28:
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L29
	ldrb	r3, [fp, #-21]
	add	r3, r3, #1
	strb	r3, [fp, #-21]
.L27:
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L30
	nop
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	state
	.size	SubBytes, .-SubBytes
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	ShiftRows, %function
ShiftRows:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r3, [r3, #1]
	strb	r3, [fp, #-5]
	ldr	r3, .L34
	ldr	r2, [r3]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [r2, #5]	@ zero_extendqisi2
	strb	r2, [r3, #1]
	ldr	r3, .L34
	ldr	r2, [r3]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [r2, #9]	@ zero_extendqisi2
	strb	r2, [r3, #5]
	ldr	r3, .L34
	ldr	r2, [r3]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [r2, #13]	@ zero_extendqisi2
	strb	r2, [r3, #9]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #13]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r3, [r3, #2]
	strb	r3, [fp, #-5]
	ldr	r3, .L34
	ldr	r2, [r3]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [r2, #10]	@ zero_extendqisi2
	strb	r2, [r3, #2]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #10]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r3, [r3, #6]
	strb	r3, [fp, #-5]
	ldr	r3, .L34
	ldr	r2, [r3]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [r2, #14]	@ zero_extendqisi2
	strb	r2, [r3, #6]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #14]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r3, [r3, #3]
	strb	r3, [fp, #-5]
	ldr	r3, .L34
	ldr	r2, [r3]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [r2, #15]	@ zero_extendqisi2
	strb	r2, [r3, #3]
	ldr	r3, .L34
	ldr	r2, [r3]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [r2, #11]	@ zero_extendqisi2
	strb	r2, [r3, #15]
	ldr	r3, .L34
	ldr	r2, [r3]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [r2, #7]	@ zero_extendqisi2
	strb	r2, [r3, #11]
	ldr	r3, .L34
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #7]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	state
	.size	ShiftRows, .-ShiftRows
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	xtime, %function
xtime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #1
	lsl	r3, r3, #24
	asr	r2, r3, #24
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsr	r3, r3, #7
	and	r3, r3, #255
	mov	r1, r3
	lsl	r1, r1, #1
	add	r3, r1, r3
	mov	r1, r3
	lsl	r0, r1, #3
	mov	r1, r3
	mov	r3, r0
	add	r3, r1, r3
	and	r3, r3, #255
	lsl	r3, r3, #24
	asr	r3, r3, #24
	eor	r3, r3, r2
	lsl	r3, r3, #24
	asr	r3, r3, #24
	and	r3, r3, #255
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	xtime, .-xtime
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	MixColumns, %function
MixColumns:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	strb	r3, [fp, #-5]
	b	.L39
.L40:
	ldr	r3, .L41
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldrb	r3, [r3, r2, lsl #2]
	strb	r3, [fp, #-6]
	ldr	r3, .L41
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldrb	r2, [r3, r2, lsl #2]	@ zero_extendqisi2
	ldr	r3, .L41
	ldr	r1, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	eor	r3, r3, r2
	and	r2, r3, #255
	ldr	r3, .L41
	ldr	r1, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	eor	r3, r3, r2
	and	r2, r3, #255
	ldr	r3, .L41
	ldr	r1, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	eor	r3, r3, r2
	strb	r3, [fp, #-7]
	ldr	r3, .L41
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldrb	r2, [r3, r2, lsl #2]	@ zero_extendqisi2
	ldr	r3, .L41
	ldr	r1, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	eor	r3, r3, r2
	strb	r3, [fp, #-8]
	ldrb	r3, [fp, #-8]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	strb	r3, [fp, #-8]
	ldr	r3, .L41
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldrb	r0, [r3, r2, lsl #2]	@ zero_extendqisi2
	ldrb	r2, [fp, #-8]
	ldrb	r3, [fp, #-7]
	eor	r3, r3, r2
	and	r1, r3, #255
	ldr	r3, .L41
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	eor	r1, r1, r0
	and	r1, r1, #255
	strb	r1, [r3, r2, lsl #2]
	ldr	r3, .L41
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldr	r3, .L41
	ldr	r1, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	eor	r3, r3, r2
	strb	r3, [fp, #-8]
	ldrb	r3, [fp, #-8]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	strb	r3, [fp, #-8]
	ldr	r3, .L41
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldrb	r2, [fp, #-8]
	ldrb	r3, [fp, #-7]
	eor	r3, r3, r2
	and	r1, r3, #255
	ldr	r3, .L41
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	eor	r1, r1, r0
	and	r1, r1, #255
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #1]
	ldr	r3, .L41
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, .L41
	ldr	r1, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	eor	r3, r3, r2
	strb	r3, [fp, #-8]
	ldrb	r3, [fp, #-8]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	strb	r3, [fp, #-8]
	ldr	r3, .L41
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	ldrb	r2, [fp, #-8]
	ldrb	r3, [fp, #-7]
	eor	r3, r3, r2
	and	r1, r3, #255
	ldr	r3, .L41
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	eor	r1, r1, r0
	and	r1, r1, #255
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #2]
	ldr	r3, .L41
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r2, [r3, #3]	@ zero_extendqisi2
	ldrb	r3, [fp, #-6]
	eor	r3, r3, r2
	strb	r3, [fp, #-8]
	ldrb	r3, [fp, #-8]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	strb	r3, [fp, #-8]
	ldr	r3, .L41
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r0, r3
	ldrb	r2, [fp, #-8]
	ldrb	r3, [fp, #-7]
	eor	r3, r3, r2
	and	r1, r3, #255
	ldr	r3, .L41
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	eor	r1, r1, r0
	and	r1, r1, #255
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #3]
	ldrb	r3, [fp, #-5]
	add	r3, r3, #1
	strb	r3, [fp, #-5]
.L39:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L40
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	state
	.size	MixColumns, .-MixColumns
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	InvMixColumns, %function
InvMixColumns:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L44
.L45:
	ldr	r3, .L46
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	ldrb	r3, [r3, r2, lsl #2]
	strb	r3, [fp, #-17]
	ldr	r3, .L46
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r3, [r3, #1]
	strb	r3, [fp, #-18]
	ldr	r3, .L46
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r3, [r3, #2]
	strb	r3, [fp, #-19]
	ldr	r3, .L46
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r3, [r3, #3]
	strb	r3, [fp, #-20]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r4, r3
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-18]
	eor	r3, r3, r2
	and	r5, r3, #255
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r3, r3, #255
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-19]
	eor	r3, r3, r2
	and	r5, r3, #255
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r3, r3, #255
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-20]
	eor	r3, r3, r2
	and	r2, r3, #255
	ldr	r3, .L46
	ldr	r3, [r3]
	eor	r2, r2, r4
	and	r1, r2, #255
	ldr	r2, [fp, #-16]
	strb	r1, [r3, r2, lsl #2]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	ldrb	r0, [r3, #3]	@ zero_extendqisi2
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-17]
	eor	r3, r3, r2
	and	r4, r3, #255
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r5, r3
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r5, r3, #255
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r3, r3, #255
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-19]
	eor	r3, r3, r2
	and	r5, r3, #255
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r3, r3, #255
	eor	r3, r3, r4
	and	r4, r3, #255
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-20]
	eor	r3, r3, r2
	and	r5, r3, #255
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r3, r3, #255
	ldr	r2, .L46
	ldr	r2, [r2]
	eor	r3, r3, r4
	and	r1, r3, #255
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #1]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-17]
	eor	r3, r3, r2
	and	r4, r3, #255
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-18]
	eor	r3, r3, r2
	and	r3, r3, #255
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r5, r3
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r5, r3, #255
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r3, r3, #255
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-20]
	eor	r3, r3, r2
	and	r5, r3, #255
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	add	r3, r3, #16
	ldr	r2, .L46
	ldr	r2, [r2]
	eor	r3, r3, r4
	and	r1, r3, #255
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #2]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-5]
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-17]
	eor	r3, r3, r2
	and	r4, r3, #255
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-18]
	eor	r3, r3, r2
	and	r5, r3, #255
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r3, r3, #255
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [fp, #-19]
	eor	r3, r3, r2
	and	r3, r3, #255
	eor	r3, r3, r4
	and	r4, r3, #255
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r5, r3
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r5, r3, #255
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	mov	r0, r3
	bl	xtime
	mov	r3, r0
	eor	r3, r3, r5
	and	r3, r3, #255
	ldr	r2, .L46
	ldr	r2, [r2]
	eor	r3, r3, r4
	and	r1, r3, #255
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L44:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L45
	nop
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	state
	.size	InvMixColumns, .-InvMixColumns
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	InvSubBytes, %function
InvSubBytes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #12
	mov	r3, #0
	strb	r3, [fp, #-21]
	b	.L49
.L52:
	mov	r3, #0
	strb	r3, [fp, #-22]
	b	.L50
.L51:
	ldr	r3, .L53
	ldr	r1, [r3]
	ldrb	r2, [fp, #-22]	@ zero_extendqisi2
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	lsl	r2, r2, #2
	add	r2, r1, r2
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L53
	ldr	r5, [r3]
	ldrb	r6, [fp, #-22]	@ zero_extendqisi2
	ldrb	r4, [fp, #-21]	@ zero_extendqisi2
	mov	r0, r2
	bl	getSBoxInvert
	mov	r3, r0
	mov	r2, r3
	lsl	r3, r6, #2
	add	r3, r5, r3
	add	r3, r3, r4
	strb	r2, [r3]
	ldrb	r3, [fp, #-22]
	add	r3, r3, #1
	strb	r3, [fp, #-22]
.L50:
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L51
	ldrb	r3, [fp, #-21]
	add	r3, r3, #1
	strb	r3, [fp, #-21]
.L49:
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L52
	nop
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	state
	.size	InvSubBytes, .-InvSubBytes
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	InvShiftRows, %function
InvShiftRows:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r3, [r3, #13]
	strb	r3, [fp, #-5]
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [r2, #9]	@ zero_extendqisi2
	strb	r2, [r3, #13]
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [r2, #5]	@ zero_extendqisi2
	strb	r2, [r3, #9]
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r3, #5]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #1]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r3, [r3, #2]
	strb	r3, [fp, #-5]
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [r2, #10]	@ zero_extendqisi2
	strb	r2, [r3, #2]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #10]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r3, [r3, #6]
	strb	r3, [fp, #-5]
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [r2, #14]	@ zero_extendqisi2
	strb	r2, [r3, #6]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #14]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r3, [r3, #3]
	strb	r3, [fp, #-5]
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [r2, #7]	@ zero_extendqisi2
	strb	r2, [r3, #3]
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [r2, #11]	@ zero_extendqisi2
	strb	r2, [r3, #7]
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [r2, #15]	@ zero_extendqisi2
	strb	r2, [r3, #11]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #15]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L57:
	.align	2
.L56:
	.word	state
	.size	InvShiftRows, .-InvShiftRows
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	Cipher, %function
Cipher:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	strb	r3, [fp, #-5]
	mov	r0, #0
	bl	AddRoundKey
	mov	r3, #1
	strb	r3, [fp, #-5]
	b	.L59
.L60:
	bl	SubBytes
	bl	ShiftRows
	bl	MixColumns
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	bl	AddRoundKey
	ldrb	r3, [fp, #-5]
	add	r3, r3, #1
	strb	r3, [fp, #-5]
.L59:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L60
	bl	SubBytes
	bl	ShiftRows
	mov	r0, #10
	bl	AddRoundKey
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	Cipher, .-Cipher
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	InvCipher, %function
InvCipher:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	strb	r3, [fp, #-5]
	mov	r0, #10
	bl	AddRoundKey
	mov	r3, #9
	strb	r3, [fp, #-5]
	b	.L62
.L63:
	bl	InvShiftRows
	bl	InvSubBytes
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	bl	AddRoundKey
	bl	InvMixColumns
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	sub	r3, r3, #1
	strb	r3, [fp, #-5]
.L62:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L63
	bl	InvShiftRows
	bl	InvSubBytes
	mov	r0, #0
	bl	AddRoundKey
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	InvCipher, .-InvCipher
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	BlockCopy, %function
BlockCopy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	strb	r3, [fp, #-5]
	b	.L65
.L66:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	ldr	r2, [fp, #-20]
	add	r2, r2, r3
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r3, [fp, #-5]
	add	r3, r3, #1
	strb	r3, [fp, #-5]
.L65:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L66
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	BlockCopy, .-BlockCopy
	.align	2
	.global	AES128_ECB_encrypt
	.syntax unified
	.arm
	.fpu softvfp
	.type	AES128_ECB_encrypt, %function
AES128_ECB_encrypt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	BlockCopy
	ldr	r2, .L68
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	ldr	r2, .L68+4
	ldr	r3, [fp, #-12]
	str	r3, [r2]
	bl	KeyExpansion
	bl	Cipher
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	state
	.word	Key
	.size	AES128_ECB_encrypt, .-AES128_ECB_encrypt
	.align	2
	.global	AES128_ECB_decrypt
	.syntax unified
	.arm
	.fpu softvfp
	.type	AES128_ECB_decrypt, %function
AES128_ECB_decrypt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	BlockCopy
	ldr	r2, .L71
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	ldr	r2, .L71+4
	ldr	r3, [fp, #-12]
	str	r3, [r2]
	bl	KeyExpansion
	bl	InvCipher
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	state
	.word	Key
	.size	AES128_ECB_decrypt, .-AES128_ECB_decrypt
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	XorWithIv, %function
XorWithIv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	strb	r3, [fp, #-5]
	b	.L74
.L75:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L76
	ldr	r2, [r3]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	ldr	r0, [fp, #-16]
	add	r3, r0, r3
	eor	r2, r2, r1
	and	r2, r2, #255
	strb	r2, [r3]
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	add	r3, r3, #1
	strb	r3, [fp, #-5]
.L74:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L75
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L77:
	.align	2
.L76:
	.word	Iv
	.size	XorWithIv, .-XorWithIv
	.align	2
	.global	AES128_CBC_encrypt_buffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	AES128_CBC_encrypt_buffer, %function
AES128_CBC_encrypt_buffer:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	and	r3, r3, #255
	and	r3, r3, #15
	strb	r3, [fp, #-9]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	BlockCopy
	ldr	r2, .L85
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L79
	ldr	r2, .L85+4
	ldr	r3, [fp, #-28]
	str	r3, [r2]
	bl	KeyExpansion
.L79:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L80
	ldr	r2, .L85+8
	ldr	r3, [fp, #4]
	str	r3, [r2]
.L80:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L81
.L82:
	ldr	r0, [fp, #-20]
	bl	XorWithIv
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	BlockCopy
	ldr	r2, .L85
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	bl	Cipher
	ldr	r2, .L85+8
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	ldr	r3, [fp, #-20]
	and	r3, r3, #255
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	str	r3, [fp, #-8]
.L81:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bhi	.L82
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L84
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	BlockCopy
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	ldr	r2, [fp, #-16]
	add	r0, r2, r3
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	rsb	r3, r3, #16
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L85
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	bl	Cipher
.L84:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	state
	.word	Key
	.word	Iv
	.size	AES128_CBC_encrypt_buffer, .-AES128_CBC_encrypt_buffer
	.align	2
	.global	AES128_CBC_decrypt_buffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	AES128_CBC_decrypt_buffer, %function
AES128_CBC_decrypt_buffer:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	and	r3, r3, #255
	and	r3, r3, #15
	strb	r3, [fp, #-9]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	BlockCopy
	ldr	r2, .L94
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L88
	ldr	r2, .L94+4
	ldr	r3, [fp, #-28]
	str	r3, [r2]
	bl	KeyExpansion
.L88:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L89
	ldr	r2, .L94+8
	ldr	r3, [fp, #4]
	str	r3, [r2]
.L89:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L90
.L91:
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	BlockCopy
	ldr	r2, .L94
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	bl	InvCipher
	ldr	r0, [fp, #-16]
	bl	XorWithIv
	ldr	r2, .L94+8
	ldr	r3, [fp, #-20]
	str	r3, [r2]
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	str	r3, [fp, #-8]
.L90:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bhi	.L91
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L93
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	BlockCopy
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	ldr	r2, [fp, #-16]
	add	r0, r2, r3
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	rsb	r3, r3, #16
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L94
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	bl	InvCipher
.L93:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L95:
	.align	2
.L94:
	.word	state
	.word	Key
	.word	Iv
	.size	AES128_CBC_decrypt_buffer, .-AES128_CBC_decrypt_buffer
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
