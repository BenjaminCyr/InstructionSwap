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
	.file	"main.c"
	.text
	.align	2
	.global	quicksort
	.syntax unified
	.arm
	.fpu softvfp
	.type	quicksort, %function
quicksort:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bge	.L10
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-12]
	b	.L3
.L6:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	str	r3, [fp, #-8]
.L4:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-24]
	add	r3, r1, r3
	lsl	r3, r3, #2
	cmp	r2, r3
	bgt	.L7
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	blt	.L6
	b	.L7
.L8:
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
.L7:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-28]
	add	r3, r1, r3
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L8
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bge	.L3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-24]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-8]
	str	r2, [r3]
.L3:
	ldr	r2, [fp, #-8]
	sub	r3, fp, #40
	cmp	r2, r3
	blt	.L4
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	ldr	r1, [fp, #-24]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	str	r2, [r3]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	mov	r2, r3
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-24]
	bl	quicksort
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-20]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	quicksort
.L10:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	quicksort, .-quicksort
	.section	.rodata
	.align	2
.LC0:
	.word	6
	.word	1
	.word	4
	.word	2
	.word	2
	.word	9
	.word	7
	.word	5
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L13
	sub	ip, fp, #40
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #-12]
	sub	r2, r3, #1
	ldr	r3, [fp, #-12]
	mov	r1, #0
	mov	r0, r3
	bl	quicksort
	mov	r3, #8
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
