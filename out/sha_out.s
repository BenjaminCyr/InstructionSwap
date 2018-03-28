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
	.file	"sha.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	sha_transform, %function
sha_transform:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 360
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #364
	str	r0, [fp, #-360]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L3:
	ldr	r2, [fp, #-360]
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	str	r2, [r3, #-348]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	ble	.L3
	mov	r3, #16
	str	r3, [fp, #-8]
	b	.L4
.L5:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #3
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r2, [r3, #-348]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #8
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-348]
	eor	r2, r2, r3
	ldr	r3, [fp, #-8]
	sub	r3, r3, #14
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	lsl	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	sub	r3, r3, #16
	ldr	r3, [r3, #-348]
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-348]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	str	r2, [r3, #-348]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L4:
	ldr	r3, [fp, #-8]
	cmp	r3, #79
	ble	.L5
	ldr	r3, [fp, #-360]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-360]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-360]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-360]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-360]
	ldr	r3, [r3, #16]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L6
.L7:
	ldr	r3, [fp, #-360]
	ror	r2, r3, #27
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-20]
	and	r1, r1, r3
	ldr	r3, [fp, #-16]
	mvn	r0, r3
	ldr	r3, [fp, #-24]
	and	r3, r3, r0
	orr	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-348]
	add	r2, r2, r3
	ldr	r3, .L14
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ror	r3, r3, #2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L6:
	ldr	r3, [fp, #-8]
	cmp	r3, #19
	ble	.L7
	mov	r3, #20
	str	r3, [fp, #-8]
	b	.L8
.L9:
	ldr	r3, [fp, #-12]
	ror	r2, r3, #27
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-20]
	eor	r1, r1, r3
	ldr	r3, [fp, #-24]
	eor	r3, r3, r1
	eor	r2, r2, r3
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-348]
	add	r2, r2, r3
	ldr	r3, .L14+4
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	ror	r3, r3, #2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L8:
	ldr	r3, [fp, #-8]
	cmp	r3, #39
	ble	.L9
	mov	r3, #40
	str	r3, [fp, #-8]
	b	.L10
.L11:
	ldr	r3, [fp, #-12]
	ror	r2, r3, #27
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-24]
	orr	r1, r1, r3
	ldr	r3, [fp, #-16]
	and	r1, r1, r3
	ldr	r0, [fp, #-20]
	ldr	r3, [fp, #-24]
	and	r3, r3, r0
	orr	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-348]
	add	r2, r2, r3
	ldr	r3, .L14+8
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	ror	r3, r3, #2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L10:
	ldr	r3, [fp, #-8]
	cmp	r3, #59
	ble	.L11
	mov	r3, #60
	str	r3, [fp, #-8]
	b	.L12
.L13:
	ldr	r3, [fp, #-12]
	ror	r2, r3, #27
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-20]
	eor	r1, r1, r3
	ldr	r3, [fp, #-24]
	eor	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-348]
	add	r2, r2, r3
	ldr	r3, .L14+12
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	ror	r3, r3, #2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L12:
	ldr	r3, [fp, #-8]
	cmp	r3, #79
	ble	.L13
	ldr	r3, [fp, #-360]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r2, r3
	ldr	r3, [fp, #-360]
	str	r2, [r3]
	ldr	r3, [fp, #-360]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, [fp, #-360]
	str	r2, [r3, #4]
	sub	r3, fp, #8192
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	eor	r2, r2, r3
	ldr	r3, [fp, #-360]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-360]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-360]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, [fp, #-360]
	str	r2, [r3, #16]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L15:
	.align	2
.L14:
	.word	1518500249
	.word	1859775393
	.word	-1894007588
	.word	-899497514
	.size	sha_transform, .-sha_transform
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	byte_reverse, %function
byte_reverse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-28]
	lsr	r3, r3, #2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L17
.L18:
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	strb	r3, [fp, #-15]
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	strb	r3, [fp, #-14]
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	strb	r3, [fp, #-13]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	ldrb	r2, [fp, #-14]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldrb	r2, [fp, #-15]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	ldrb	r2, [fp, #-16]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L17:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L18
	nop
	sub	sp, fp, #4
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	byte_reverse, .-byte_reverse
	.align	2
	.global	sha_init
	.syntax unified
	.arm
	.fpu softvfp
	.type	sha_init, %function
sha_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #4
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, .L20
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, .L20+4
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	r2, .L20+8
	str	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r2, .L20+12
	str	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r2, .L20+16
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #24]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	1732584193
	.word	-271733879
	.word	-1732584194
	.word	271733878
	.word	-1009589776
	.size	sha_init, .-sha_init
	.align	2
	.global	sha_update
	.syntax unified
	.arm
	.fpu softvfp
	.type	sha_update, %function
sha_update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bcs	.L23
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-8]
	str	r2, [r3, #24]
.L23:
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #24]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #29
	add	r2, r2, r3
	sub	r3, fp, #8192
	str	r2, [r3, #8]
	b	.L24
.L25:
	ldr	r3, [fp, #-8]
	add	r3, r3, #28
	mov	r2, #64
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	memcpy
	ldr	r3, [fp, #-8]
	add	r3, r3, #28
	mov	r1, #64
	mov	r0, r3
	bl	byte_reverse
	ldr	r0, [fp, #-8]
	bl	sha_transform
	ldr	r3, [fp, #-12]
	add	r3, r3, #64
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #64
	str	r3, [fp, #-16]
.L24:
	ldr	r3, [fp, #-16]
	cmp	r3, #63
	bgt	.L25
	ldr	r3, [fp, #-8]
	add	r3, r3, #28
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	memcpy
	nop
	add	sp, fp, #0
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	sha_update, .-sha_update
	.align	2
	.global	sha_final
	.syntax unified
	.arm
	.fpu softvfp
	.type	sha_final, %function
sha_final:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #3
	and	r3, r3, #63
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	add	r2, r3, #28
	ldr	r3, [fp, #-16]
	add	r1, r3, #1
	str	r1, [fp, #-16]
	add	r3, r2, r3
	mvn	r2, #127
	str	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	cmp	r3, #56
	ble	.L27
	ldr	r3, [fp, #-24]
	add	r2, r3, #28
	ldr	r3, [fp, #-16]
	add	r0, r2, r3
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #64
	mov	r2, r3
	mov	r1, #64
	bl	memset
	ldr	r3, [fp, #-24]
	add	r3, r3, #28
	mov	r1, #0
	mov	r0, r3
	bl	byte_reverse
	ldr	r0, [fp, #-24]
	bl	sha_transform
	ldr	r3, [fp, #-24]
	add	r3, r3, #28
	mov	r2, #56
	mov	r1, #0
	mov	r0, r3
	bl	memset
	b	.L28
.L27:
	ldr	r3, [fp, #-24]
	add	r2, r3, #28
	ldr	r3, [fp, #-16]
	add	r0, r2, r3
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #56
	mov	r2, r3
	mov	r1, #0
	bl	memset
.L28:
	ldr	r3, [fp, #-24]
	add	r3, r3, #28
	mov	r1, #64
	mov	r0, r3
	bl	byte_reverse
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #84]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #88]
	ldr	r0, [fp, #-24]
	bl	sha_transform
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	sha_final, .-sha_final
	.align	2
	.global	sha_stream
	.syntax unified
	.arm
	.fpu softvfp
	.type	sha_stream, %function
sha_stream:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8192
	sub	sp, sp, #16
	ldr	r3, [fp, #-360]
	sub	r3, r3, #4
	str	r0, [r3, #-12]
	sub	r3, fp, #8192
	sub	r3, r3, #4
	str	r1, [r3, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	sub	r3, fp, #8192
	sub	r3, r3, #4
	ldr	r0, [r3, #-12]
	bl	sha_init
	b	.L30
.L31:
	sub	r3, fp, #8192
	sub	r3, r3, #4
	sub	r3, r3, #4
	sub	r2, fp, #8192
	sub	r2, r2, #4
	mov	r0, r2
	mov	r2, #1
	mov	r1, r3
	ldr	r0, [r0, #-12]
	bl	sha_update
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L30:
	ldr	r3, [fp, #-8]
	sub	r2, fp, #8192
	sub	r2, r2, #4
	ldr	r2, [r2, #-16]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	sub	r3, r3, #4
	strb	r2, [r3, #-4]
	sub	r3, fp, #8192
	sub	r3, r3, #4
	ldrb	r3, [r3, #-4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L31
	sub	r3, fp, #8192
	sub	r3, r3, #4
	ldr	r0, [r3, #-12]
	bl	sha_final
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	sha_stream, .-sha_stream
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%08lx %08lx %08lx %08lx %08lx\012\000"
	.text
	.align	2
	.global	sha_print
	.syntax unified
	.arm
	.fpu softvfp
	.type	sha_print, %function
sha_print:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r1, [r3]
	ldr	r3, [fp, #-12]
	ldr	r0, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	ip, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-8]
	ldr	r2, [r2, #16]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r0
	ldr	r0, .L33
	bl	printf
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LC0
	.size	sha_print, .-sha_print
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
