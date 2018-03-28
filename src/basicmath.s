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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"********* CUBIC FUNCTIONS ***********\012\015\000"
	.align	2
.LC1:
	.ascii	"Solutions:\000"
	.align	2
.LC2:
	.ascii	" %f\000"
	.align	2
.LC3:
	.ascii	"\012\015\000"
	.global	__aeabi_dsub
	.global	__aeabi_dcmpgt
	.global	__aeabi_dadd
	.global	__aeabi_dcmplt
	.align	2
.LC4:
	.ascii	"********* INTEGER SQR ROOTS ***********\012\015\000"
	.align	2
.LC5:
	.ascii	"sqrt(%3d) = %2d\012\015\000"
	.align	2
.LC6:
	.ascii	"\012\015sqrt(%lX) = %X\012\015\000"
	.align	2
.LC7:
	.ascii	"********* ANGLE CONVERSION ***********\012\015\000"
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.align	2
.LC8:
	.ascii	"%3.0f degrees = %.12f radians\012\015\000"
	.global	__aeabi_dcmple
	.align	2
.LC9:
	.ascii	"%.12f radians = %3.0f degrees\012\015\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #220
	mov	r3, #0
	ldr	r4, .L27+84
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	mov	r3, #0
	ldr	r4, .L27+8
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	mov	r3, #0
	ldr	r4, .L27+12
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	mov	r3, #0
	ldr	r4, .L27+16
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	mov	r3, #0
	ldr	r4, .L27+84
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
	mov	r3, #0
	ldr	r4, .L27+20
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
	mov	r3, #0
	ldr	r4, .L27+24
	str	r3, [fp, #-84]
	str	r4, [fp, #-80]
	mov	r3, #0
	ldr	r4, .L27+16
	str	r3, [fp, #-92]
	str	r4, [fp, #-88]
	mov	r3, #0
	ldr	r4, .L27+84
	str	r3, [fp, #-100]
	str	r4, [fp, #-96]
	mov	r3, #0
	ldr	r4, .L27+28
	str	r3, [fp, #-108]
	str	r4, [fp, #-104]
	mov	r3, #0
	ldr	r4, .L27+32
	str	r3, [fp, #-116]
	str	r4, [fp, #-112]
	mov	r3, #0
	ldr	r4, .L27+36
	str	r3, [fp, #-124]
	str	r4, [fp, #-120]
	mov	r3, #0
	ldr	r4, .L27+84
	str	r3, [fp, #-132]
	str	r4, [fp, #-128]
	adr	r4, .L27
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-140]
	str	r4, [fp, #-136]
	mov	r3, #0
	ldr	r4, .L27+84
	str	r3, [fp, #-148]
	str	r4, [fp, #-144]
	mov	r3, #0
	ldr	r4, .L27+40
	str	r3, [fp, #-156]
	str	r4, [fp, #-152]
	ldr	r3, .L27+44
	str	r3, [fp, #-160]
	ldr	r0, .L27+48
	bl	printf
	sub	r3, fp, #188
	str	r3, [sp, #20]
	sub	r3, fp, #192
	str	r3, [sp, #16]
	sub	r4, fp, #44
	ldmia	r4, {r3-r4}
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	sub	r4, fp, #36
	ldmia	r4, {r3-r4}
	stm	sp, {r3-r4}
	sub	r3, fp, #28
	ldmia	r3, {r2-r3}
	sub	r1, fp, #20
	ldmia	r1, {r0-r1}
	bl	SolveCubic
	ldr	r0, .L27+52
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L2
.L3:
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #3
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #176
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L27+64
	bl	printf
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L2:
	ldr	r3, [fp, #-192]
	ldr	r2, [fp, #-56]
	cmp	r2, r3
	blt	.L3
	ldr	r0, .L27+68
	bl	printf
	sub	r3, fp, #188
	str	r3, [sp, #20]
	sub	r3, fp, #192
	str	r3, [sp, #16]
	sub	r4, fp, #92
	ldmia	r4, {r3-r4}
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	sub	r4, fp, #84
	ldmia	r4, {r3-r4}
	stm	sp, {r3-r4}
	sub	r3, fp, #76
	ldmia	r3, {r2-r3}
	sub	r1, fp, #68
	ldmia	r1, {r0-r1}
	bl	SolveCubic
	ldr	r0, .L27+52
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L4
.L5:
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #3
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #176
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L27+64
	bl	printf
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L4:
	ldr	r3, [fp, #-192]
	ldr	r2, [fp, #-56]
	cmp	r2, r3
	blt	.L5
	ldr	r0, .L27+68
	bl	printf
	sub	r3, fp, #188
	str	r3, [sp, #20]
	sub	r3, fp, #192
	str	r3, [sp, #16]
	sub	r4, fp, #124
	ldmia	r4, {r3-r4}
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	sub	r4, fp, #116
	ldmia	r4, {r3-r4}
	stm	sp, {r3-r4}
	sub	r3, fp, #108
	ldmia	r3, {r2-r3}
	sub	r1, fp, #100
	ldmia	r1, {r0-r1}
	bl	SolveCubic
	ldr	r0, .L27+52
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L6
.L7:
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #3
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #176
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L27+64
	bl	printf
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L6:
	ldr	r3, [fp, #-192]
	ldr	r2, [fp, #-56]
	cmp	r2, r3
	blt	.L7
	ldr	r0, .L27+68
	bl	printf
	sub	r3, fp, #188
	str	r3, [sp, #20]
	sub	r3, fp, #192
	str	r3, [sp, #16]
	sub	r4, fp, #156
	ldmia	r4, {r3-r4}
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	sub	r4, fp, #148
	ldmia	r4, {r3-r4}
	stm	sp, {r3-r4}
	sub	r3, fp, #140
	ldmia	r3, {r2-r3}
	sub	r1, fp, #132
	ldmia	r1, {r0-r1}
	bl	SolveCubic
	ldr	r0, .L27+52
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L8
.L9:
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #3
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #176
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L27+64
	bl	printf
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L8:
	ldr	r3, [fp, #-192]
	ldr	r2, [fp, #-56]
	cmp	r2, r3
	blt	.L9
	ldr	r0, .L27+68
	bl	printf
	mov	r3, #0
	ldr	r4, .L27+84
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	b	.L10
.L19:
	mov	r3, #0
	ldr	r4, .L27+88
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	b	.L11
.L18:
	mov	r3, #0
	ldr	r4, .L27+56
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	b	.L12
.L17:
	mov	r3, #0
	ldr	r4, .L27+60
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	b	.L13
.L16:
	sub	r3, fp, #188
	str	r3, [sp, #20]
	sub	r3, fp, #192
	str	r3, [sp, #16]
	sub	r4, fp, #44
	ldmia	r4, {r3-r4}
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	sub	r4, fp, #36
	ldmia	r4, {r3-r4}
	stm	sp, {r3-r4}
	sub	r3, fp, #28
	ldmia	r3, {r2-r3}
	sub	r1, fp, #20
	ldmia	r1, {r0-r1}
	bl	SolveCubic
	ldr	r0, .L27+52
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L14
.L28:
	.align	3
.L27:
	.word	1717986918
	.word	-1070897562
	.word	-1071316992
	.word	1077936128
	.word	-1069678592
	.word	-1072562176
	.word	1076953088
	.word	-1072955392
	.word	1077280768
	.word	-1069613056
	.word	-1069449216
	.word	1072497001
	.word	.LC0
	.word	.LC1
	.word	1075052544
	.word	-1074790400
	.word	.LC2
	.word	.LC3
	.word	-1071251456
	.word	1071644672
	.word	1076756480
	.word	1072693248
	.word	1076101120
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
.L15:
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #3
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r3, r3, #176
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L27+64
	bl	printf
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L14:
	ldr	r3, [fp, #-192]
	ldr	r2, [fp, #-56]
	cmp	r2, r3
	blt	.L15
	ldr	r0, .L27+68
	bl	printf
	mov	r2, #0
	ldr	r3, .L27+84
	sub	r1, fp, #44
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
.L13:
	mov	r2, #0
	ldr	r3, .L27+72
	sub	r1, fp, #44
	ldmia	r1, {r0-r1}
	bl	__aeabi_dcmpgt
	mov	r3, r0
	cmp	r3, #0
	bne	.L16
	mov	r2, #0
	ldr	r3, .L27+76
	sub	r1, fp, #36
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
.L12:
	mov	r2, #0
	ldr	r3, .L27+80
	sub	r1, fp, #36
	ldmia	r1, {r0-r1}
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	bne	.L17
	mov	r2, #0
	ldr	r3, .L27+84
	sub	r1, fp, #28
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
.L11:
	mov	r2, #0
	mov	r3, #0
	sub	r1, fp, #28
	ldmia	r1, {r0-r1}
	bl	__aeabi_dcmpgt
	mov	r3, r0
	cmp	r3, #0
	bne	.L18
	mov	r2, #0
	ldr	r3, .L27+84
	sub	r1, fp, #20
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
.L10:
	mov	r2, #0
	ldr	r3, .L27+88
	sub	r1, fp, #20
	ldmia	r1, {r0-r1}
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	bne	.L19
	ldr	r0, .L27+92
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L20
.L21:
	ldr	r3, [fp, #-56]
	sub	r2, fp, #200
	mov	r1, r2
	mov	r0, r3
	bl	usqrt
	ldr	r3, [fp, #-200]
	mov	r2, r3
	ldr	r1, [fp, #-56]
	ldr	r0, .L27+96
	bl	printf
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L20:
	ldr	r3, [fp, #-56]
	cmp	r3, #1000
	ble	.L21
	sub	r3, fp, #200
	mov	r1, r3
	ldr	r0, [fp, #-160]
	bl	usqrt
	ldr	r3, [fp, #-200]
	mov	r2, r3
	ldr	r1, [fp, #-160]
	ldr	r0, .L27+100
	bl	printf
	ldr	r0, .L27+104
	bl	printf
	mov	r3, #0
	mov	r4, #0
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
	b	.L22
.L23:
	adr	r3, .L29
	ldmia	r3, {r2-r3}
	sub	r1, fp, #52
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #0
	ldr	r3, .L29+24
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	stm	sp, {r3-r4}
	sub	r3, fp, #52
	ldmia	r3, {r2-r3}
	ldr	r0, .L29+28
	bl	printf
	mov	r2, #0
	ldr	r3, .L29+32
	sub	r1, fp, #52
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
.L22:
	mov	r2, #0
	ldr	r3, .L29+36
	sub	r1, fp, #52
	ldmia	r1, {r0-r1}
	bl	__aeabi_dcmple
	mov	r3, r0
	cmp	r3, #0
	bne	.L23
	ldr	r0, .L29+40
	bl	printf
	mov	r3, #0
	mov	r4, #0
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
	b	.L24
.L25:
	mov	r2, #0
	ldr	r3, .L29+24
	sub	r1, fp, #52
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	adr	r3, .L29
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	stm	sp, {r3-r4}
	sub	r3, fp, #52
	ldmia	r3, {r2-r3}
	ldr	r0, .L29+44
	bl	printf
	adr	r3, .L29+8
	ldmia	r3, {r2-r3}
	sub	r1, fp, #52
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
.L24:
	adr	r3, .L29+16
	ldmia	r3, {r2-r3}
	sub	r1, fp, #52
	ldmia	r1, {r0-r1}
	bl	__aeabi_dcmple
	mov	r3, r0
	cmp	r3, #0
	bne	.L25
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, lr}
	bx	lr
.L30:
	.align	3
.L29:
	.word	1413754136
	.word	1074340347
	.word	2723323193
	.word	1066524486
	.word	2539654043
	.word	1075388923
	.word	1080459264
	.word	.LC8
	.word	1072693248
	.word	1081507840
	.word	.LC3
	.word	.LC9
	.size	main, .-main
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
