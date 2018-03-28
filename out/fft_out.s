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
	.global	invfft
	.bss
	.align	2
	.type	invfft, %object
	.size	invfft, 4
invfft:
	.space	4
	.comm	MAXSIZE,4,4
	.global	MAXWAVES
	.data
	.align	2
	.type	MAXWAVES, %object
	.size	MAXWAVES, 4
MAXWAVES:
	.word	4
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L3
	mov	r2, #1024
	str	r2, [r3]
	bl	old_main
	ldr	r3, .L3+4
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L19+12
	mov	r2, #0
	str	r2, [r3]
	bl	old_main
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	MAXSIZE
	.word	invfft
	.size	main, .-main
	.global	__aeabi_i2f
	.global	__aeabi_f2d
	.global	__aeabi_ui2f
	.global	__aeabi_fmul
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_d2f
	.section	.rodata
	.align	2
.LC0:
	.ascii	"RealOut:\000"
	.align	2
.LC1:
	.ascii	"%f \011\000"
	.align	2
.LC2:
	.ascii	"ImagOut:\000"
	.text
	.align	2
	.global	old_main
	.syntax unified
	.arm
	.fpu softvfp
	.type	old_main, %function
old_main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #44
	mov	r0, #1
	bl	srand
	ldr	r3, .L19
	ldr	r3, [r3]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-40]
	mov	r3, #0
	ldr	r3, [r3]
	lsl	r3, r3, #5
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, .L19
	ldr	r3, [r3]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, .L19
	ldr	r3, [r3]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, .L19+4
	ldr	r3, [r3]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L19+4
	ldr	r3, [r3]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r3, .L19
	str	r3, [fp, #-32]
	b	.L6
.L7:
	bl	rand
	mov	r1, r0
	ldr	r2, .L19+8
	smull	r3, r4, r1, r2
	asr	r2, r4, #6
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	sub	r3, r3, r2
	ldr	r3, [r3]	@ float
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, r1, r3
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-56]
	add	r4, r1, r3
	mov	r0, r2
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [r4]	@ float
	bl	rand
	mov	r1, r0
	ldr	r2, .L19+8
	smull	r3, r4, r1, r2
	asr	r2, r4, #6
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	add	r3, r3, r2
	ldr	r3, [r3]
	sub	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, r1, r3
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-60]
	add	r4, r1, r3
	mov	r0, r2
	bl	__aeabi_i2f
	mov	r3, r0
	str	r3, [r4]	@ float
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	str	r3, [fp, #-32]
.L6:
	ldr	r3, .L19+4
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bcc	.L7
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L8
.L13:
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	mov	r2, #1
	str	r2, [r3]	@ float
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L9
.L12:
	bl	rand
	mov	r3, r0
	lsl	r3, r3, #2
	cmp	r3, #0
	beq	.L10
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r0, [r3]
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-60]
	add	r3, r2, r3
	ldr	r4, [r3]	@ float
	ldr	r0, [fp, #-32]
	bl	__aeabi_ui2f
	mov	r3, r0
	ldr	r1, [r3]
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	cos
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r4, r2, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
	b	.L11
.L10:
	ldr	r3, [fp, #-32]
	and	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r7, r0
	mov	r8, r1
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-60]
	add	r3, r2, r3
	ldr	r4, [r3]	@ float
	ldr	r0, [fp, #-32]
	bl	__aeabi_ui2f
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	sin
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r4, r2, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
.L11:
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	mov	r2, #2048
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L9:
	ldr	r3, .L19+4
	ldr	r3, [r3]
	ldr	r2, [fp, #-36]
	cmp	r2, r3
	bcc	.L12
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L8:
	ldr	r3, .L19
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bcc	.L13
	ldr	r3, .L19
	mov	r0, r3
	ldr	r3, .L3
	mov	r1, r3
	ldr	r3, [fp, #-52]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-48]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	bl	fft_float
	ldr	r0, .L19+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L14
.L15:
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L19+20
	bl	printf
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	str	r3, [fp, #-32]
.L14:
	ldr	r3, .L19
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bcc	.L15
	ldr	r0, .L19+24
	bl	putchar
	mov	r0, #10
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L16
.L17:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L19+20
	bl	printf
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L16:
	ldr	r3, .L19
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bcc	.L17
	mov	r0, #10
	bl	putchar
	ldr	r0, [fp, #-40]
	bl	free
	ldr	r0, [fp, #-44]
	bl	free
	ldr	r0, [fp, #-48]
	bl	free
	ldr	r0, [fp, #-52]
	bl	free
	ldr	r0, [fp, #-56]
	bl	free
	ldr	r0, [fp, #-60]
	bl	free
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	MAXSIZE
	.word	MAXWAVES
	.word	274877907
	.word	invfft
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	old_main, .-old_main
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
