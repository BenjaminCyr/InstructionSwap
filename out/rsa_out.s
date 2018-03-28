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
	.comm	n,8,4
	.comm	e,4,4
	.comm	plaintext,8,4
	.comm	ciphertext,8,4
	.comm	_tmpglobal_ab,16,4
	.comm	_tmpglobal_q,8,4
	.comm	_tmpglobal_x,16,4
	.comm	_tmpglobal_ybnt,16,4
	.comm	_tmpglobal_ybit,16,4
	.comm	_tmpglobal_qitybit,16,4
	.comm	_tmpglobal_temp,8,4
	.text
	.align	2
	.global	add_word
	.syntax unified
	.arm
	.fpu softvfp
	.type	add_word, %function
add_word:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrh	r2, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-20]	@ movhi
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldrh	r3, [fp, #-22]	@ movhi
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldr	r3, [fp, #-16]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	mov	r1, r3
	ldrh	r2, [fp, #-18]
	ldrh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r1, r3
	blt	.L2
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	ldrh	r2, [fp, #-20]
	cmp	r2, r3
	bhi	.L2
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	b	.L3
.L2:
	mov	r3, #1
	strh	r3, [fp, #-6]	@ movhi
.L3:
	ldrh	r3, [fp, #-6]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	add_word, .-add_word
	.align	2
	.global	subtract_word
	.syntax unified
	.arm
	.fpu softvfp
	.type	subtract_word, %function
subtract_word:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	mov	r3, r2
	strb	r3, [fp, #-21]
	ldrh	r2, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-20]	@ movhi
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	lsl	r3, r3, #16
	lsr	r3, r3, #8
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldr	r3, [fp, #-16]
	strh	r2, [r3]	@ movhi
	ldrh	r3, [fp, #-20]
	ldr	r2, .L10
	cmp	r3, r2
	bne	.L6
	mov	r3, #1
	strb	r3, [fp, #-5]
	b	.L7
.L6:
	ldrh	r2, [fp, #-18]
	ldrh	r3, [fp, #-20]
	cmp	r2, r3
	bcs	.L8
	mov	r3, #1
	strb	r3, [fp, #-5]
	b	.L7
.L8:
	mov	r3, #0
	strb	r3, [fp, #-5]
.L7:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	65535
	.size	subtract_word, .-subtract_word
	.align	2
	.global	add_mp_elements
	.syntax unified
	.arm
	.fpu softvfp
	.type	add_mp_elements, %function
add_mp_elements:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	strb	r3, [fp, #-25]
	ldr	r3, [fp, #-20]
	ldrh	r1, [r3]
	ldr	r3, [fp, #-24]
	ldrh	r2, [r3]
	mov	r3, #0
	ldr	r0, [fp, #-16]
	bl	add_word
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L13
.L14:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r0, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r1, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldrh	r3, [fp, #-6]
	bl	add_word
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L13:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L14
	ldrh	r3, [fp, #-6]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	add_mp_elements, .-add_mp_elements
	.align	2
	.global	subtract_mp_elements
	.syntax unified
	.arm
	.fpu softvfp
	.type	subtract_mp_elements, %function
subtract_mp_elements:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	strb	r3, [fp, #-25]
	ldr	r3, [fp, #-20]
	ldrh	r1, [r3]
	ldr	r3, [fp, #-24]
	ldrh	r2, [r3]
	mov	r3, #0
	ldr	r0, [fp, #-16]
	bl	subtract_word
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L17
.L18:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r0, r2, r3
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r1, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldrh	r3, [fp, #-6]	@ movhi
	and	r3, r3, #255
	bl	subtract_word
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L17:
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L18
	ldrh	r3, [fp, #-6]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	subtract_mp_elements, .-subtract_mp_elements
	.align	2
	.global	add_mod_p
	.syntax unified
	.arm
	.fpu softvfp
	.type	add_mod_p, %function
add_mod_p:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	add_mp_elements
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L21
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	subtract_mp_elements
	b	.L23
.L21:
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-16]
	bl	compare_mp_elements
	mov	r3, r0
	cmp	r3, #1
	bne	.L23
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	subtract_mp_elements
.L23:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	add_mod_p, .-add_mod_p
	.align	2
	.global	subtract_mod_p
	.syntax unified
	.arm
	.fpu softvfp
	.type	subtract_mod_p, %function
subtract_mod_p:
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
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	subtract_mp_elements
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L26
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	add_mp_elements
.L26:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	subtract_mod_p, .-subtract_mod_p
	.align	2
	.global	set_to_zero
	.syntax unified
	.arm
	.fpu softvfp
	.type	set_to_zero, %function
set_to_zero:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, r1
	strb	r3, [fp, #-17]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L28
.L29:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L28:
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L29
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	set_to_zero, .-set_to_zero
	.align	2
	.global	multiply_words
	.syntax unified
	.arm
	.fpu softvfp
	.type	multiply_words, %function
multiply_words:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	mov	r3, r0
	str	r2, [fp, #-20]
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-16]	@ movhi
	ldr	r1, [fp, #-12]
	ldrh	r2, [fp, #-16]
	mul	r3, r2, r1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #16
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, [fp, #-8]
	strh	r3, [fp, #-12]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3]	@ movhi
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	multiply_words, .-multiply_words
	.align	2
	.global	multiply_words_2
	.syntax unified
	.arm
	.fpu softvfp
	.type	multiply_words_2, %function
multiply_words_2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	mov	r3, r0
	str	r2, [fp, #-36]
	strh	r3, [fp, #-30]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-32]	@ movhi
	ldrh	r3, [fp, #-30]
	lsr	r3, r3, #8
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-30]	@ movhi
	and	r3, r3, #255
	strh	r3, [fp, #-8]	@ movhi
	ldrh	r3, [fp, #-32]
	lsr	r3, r3, #8
	strh	r3, [fp, #-10]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	and	r3, r3, #255
	strh	r3, [fp, #-12]	@ movhi
	ldr	r1, [fp, #-68]
	ldrh	r2, [fp, #-12]	@ movhi
	mul	r3, r2, r1
	strh	r3, [fp, #-14]	@ movhi
	ldrh	r3, [fp, #-14]	@ movhi
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [fp, #-20]	@ movhi
	ldrh	r3, [fp, #-14]
	lsr	r3, r3, #8
	strh	r3, [fp, #-16]	@ movhi
	ldrh	r1, [fp, #-6]	@ movhi
	ldrh	r2, [fp, #-12]	@ movhi
	mul	r3, r2, r1
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldrh	r3, [fp, #-16]	@ movhi
	add	r3, r2, r3
	strh	r3, [fp, #-14]	@ movhi
	ldrh	r3, [fp, #-20]
	lsl	r3, r3, #16
	asr	r2, r3, #16
	ldrh	r3, [fp, #-14]
	lsl	r3, r3, #8
	lsl	r3, r3, #16
	asr	r3, r3, #16
	eor	r3, r3, r2
	lsl	r3, r3, #16
	asr	r3, r3, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [fp, #-20]	@ movhi
	ldrh	r3, [fp, #-14]
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r1, [fp, #-8]	@ movhi
	ldrh	r2, [fp, #-10]	@ movhi
	mul	r3, r2, r1
	strh	r3, [fp, #-14]	@ movhi
	ldrh	r3, [fp, #-14]
	lsl	r3, r3, #8
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [fp, #-24]	@ movhi
	ldrh	r3, [fp, #-14]
	lsr	r3, r3, #8
	strh	r3, [fp, #-16]	@ movhi
	ldrh	r1, [fp, #-6]	@ movhi
	ldrh	r2, [fp, #-10]	@ movhi
	mul	r3, r2, r1
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldrh	r3, [fp, #-16]	@ movhi
	add	r3, r2, r3
	strh	r3, [fp, #-14]	@ movhi
	ldrh	r3, [fp, #-14]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	sub	r2, fp, #20
	sub	r1, fp, #24
	mov	r3, #2
	ldr	r0, [fp, #-36]
	bl	add_mp_elements
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	multiply_words_2, .-multiply_words_2
	.align	2
	.global	multiply_mp_elements
	.syntax unified
	.arm
	.fpu softvfp
	.type	multiply_mp_elements, %function
multiply_mp_elements:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	strb	r3, [fp, #-41]
	ldrb	r3, [fp, #-41]
	lsl	r3, r3, #1
	and	r3, r3, #255
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	set_to_zero
	sub	r3, fp, #16
	mov	r1, #2
	mov	r0, r3
	bl	set_to_zero
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L33
.L36:
	mov	r3, #0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L34
.L35:
	ldrh	r3, [fp, #-14]
	strh	r3, [fp, #-24]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-22]	@ movhi
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldrh	r0, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrh	r3, [r3]
	sub	r2, fp, #16
	mov	r1, r3
	bl	multiply_words
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrh	r3, [r3]
	strh	r3, [fp, #-20]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-18]	@ movhi
	sub	r2, fp, #20
	sub	r1, fp, #16
	sub	r0, fp, #16
	mov	r3, #2
	bl	add_mp_elements
	sub	r2, fp, #24
	sub	r1, fp, #16
	sub	r0, fp, #16
	mov	r3, #2
	bl	add_mp_elements
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L34:
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L35
	ldrb	r2, [fp, #-41]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L33:
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L36
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	multiply_mp_elements, .-multiply_mp_elements
	.align	2
	.global	multiply_mp_elements2
	.syntax unified
	.arm
	.fpu softvfp
	.type	multiply_mp_elements2, %function
multiply_mp_elements2:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r3, [fp, #-44]
	mov	r3, r2
	strb	r3, [fp, #-37]
	ldrb	r2, [fp, #-37]
	ldrb	r3, [fp, #4]
	add	r3, r2, r3
	and	r3, r3, #255
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	set_to_zero
	sub	r3, fp, #16
	mov	r1, #2
	mov	r0, r3
	bl	set_to_zero
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L38
.L41:
	mov	r3, #0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L39
.L40:
	ldrh	r3, [fp, #-14]
	strh	r3, [fp, #-24]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-22]	@ movhi
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldrh	r0, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldrh	r3, [r3]
	sub	r2, fp, #16
	mov	r1, r3
	bl	multiply_words
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrh	r3, [r3]
	strh	r3, [fp, #-20]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-18]	@ movhi
	sub	r2, fp, #20
	sub	r1, fp, #16
	sub	r0, fp, #16
	mov	r3, #2
	bl	add_mp_elements
	sub	r2, fp, #24
	sub	r1, fp, #16
	sub	r0, fp, #16
	mov	r3, #2
	bl	add_mp_elements
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L39:
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L40
	ldrb	r2, [fp, #4]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L38:
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L41
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	multiply_mp_elements2, .-multiply_mp_elements2
	.align	2
	.global	compare_mp_elements
	.syntax unified
	.arm
	.fpu softvfp
	.type	compare_mp_elements, %function
compare_mp_elements:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, r2
	strb	r3, [fp, #-21]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L43
.L47:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-20]
	add	r3, r1, r3
	ldrh	r3, [r3]
	cmp	r2, r3
	bcs	.L44
	mov	r3, #0
	b	.L45
.L44:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-20]
	add	r3, r1, r3
	ldrh	r3, [r3]
	cmp	r2, r3
	bls	.L46
	mov	r3, #1
	b	.L45
.L46:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
.L43:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L47
	mov	r3, #1
.L45:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	compare_mp_elements, .-compare_mp_elements
	.align	2
	.global	mult_by_power_of_b
	.syntax unified
	.arm
	.fpu softvfp
	.type	mult_by_power_of_b, %function
mult_by_power_of_b:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r2, [fp, #-24]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-8]
	ldrh	r3, [fp, #-18]	@ movhi
	and	r3, r3, #255
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	set_to_zero
	b	.L49
.L51:
	ldrh	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	bge	.L50
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldrh	r1, [fp, #4]
	ldr	r3, [fp, #-8]
	add	r3, r1, r3
	ldrh	r3, [r3]
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
.L50:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L49:
	ldrh	r2, [fp, #4]
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	ldrh	r3, [fp, #-18]
	cmp	r2, r3
	blt	.L51
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	mult_by_power_of_b, .-mult_by_power_of_b
	.align	2
	.global	mod_pow_of_b
	.syntax unified
	.arm
	.fpu softvfp
	.type	mod_pow_of_b, %function
mod_pow_of_b:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r2, [fp, #-24]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	b	.L53
.L56:
	ldrh	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	bge	.L54
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	b	.L55
.L54:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3]	@ movhi
.L55:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L53:
	ldrh	r3, [fp, #-18]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L56
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	mod_pow_of_b, .-mod_pow_of_b
	.align	2
	.global	div_by_power_of_b
	.syntax unified
	.arm
	.fpu softvfp
	.type	div_by_power_of_b, %function
div_by_power_of_b:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r2, [fp, #-24]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrh	r3, [fp, #-18]	@ movhi
	and	r3, r3, #255
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	set_to_zero
	ldrh	r3, [fp, #-18]
	add	r2, r3, #1
	ldrh	r1, [fp, #-20]
	ldrh	r3, [fp, #4]
	sub	r3, r1, r3
	cmp	r2, r3
	ble	.L62
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L59
.L61:
	ldrh	r2, [fp, #4]
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	ldrh	r3, [fp, #-20]
	cmp	r2, r3
	bge	.L60
	ldrh	r2, [fp, #4]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
.L60:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L59:
	ldrh	r3, [fp, #-18]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L61
.L62:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	div_by_power_of_b, .-div_by_power_of_b
	.align	2
	.global	multiply_sp_by_mp_element
	.syntax unified
	.arm
	.fpu softvfp
	.type	multiply_sp_by_mp_element, %function
multiply_sp_by_mp_element:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r2, [fp, #-32]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrh	r3, [fp, #-28]	@ movhi
	and	r3, r3, #255
	add	r3, r3, #1
	and	r3, r3, #255
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	set_to_zero
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L64
.L65:
	ldrh	r3, [fp, #-26]
	ldr	r2, [fp, #-12]
	lsl	r2, r2, #1
	ldr	r1, [fp, #-32]
	add	r2, r1, r2
	ldrh	r2, [r2]
	mov	r1, r2
	mul	r2, r3, r1
	ldrh	r3, [fp, #-6]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #16
	strh	r3, [fp, #-18]	@ movhi
	ldr	r3, [fp, #-8]
	strh	r3, [fp, #-20]	@ movhi
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [fp, #-20]	@ movhi
	strh	r2, [r3]	@ movhi
	ldrh	r3, [fp, #-18]	@ movhi
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L64:
	ldrh	r3, [fp, #-28]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L65
	ldrh	r3, [fp, #-28]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r2, [fp, #-6]	@ movhi
	strh	r2, [r3]	@ movhi
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	multiply_sp_by_mp_element, .-multiply_sp_by_mp_element
	.align	2
	.global	are_mp_equal
	.syntax unified
	.arm
	.fpu softvfp
	.type	are_mp_equal, %function
are_mp_equal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, r2
	strb	r3, [fp, #-21]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L67
.L70:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-20]
	add	r3, r1, r3
	ldrh	r3, [r3]
	cmp	r2, r3
	beq	.L68
	mov	r3, #0
	str	r3, [fp, #-12]
.L68:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L67:
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	bne	.L69
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L70
.L69:
	ldr	r3, [fp, #-12]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	are_mp_equal, .-are_mp_equal
	.align	2
	.global	copy_mp
	.syntax unified
	.arm
	.fpu softvfp
	.type	copy_mp, %function
copy_mp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L73
.L74:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L73:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L74
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	copy_mp, .-copy_mp
	.align	2
	.global	ith_bit
	.syntax unified
	.arm
	.fpu softvfp
	.type	ith_bit, %function
ith_bit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	str	r1, [fp, #-20]
	strh	r3, [fp, #-14]	@ movhi
	mov	r2, #1
	ldr	r3, [fp, #-20]
	lsl	r3, r2, r3
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r2, [fp, #-14]	@ movhi
	ldr	r3, [fp, #-8]
	and	r3, r3, r2
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-6]
	cmp	r3, #0
	bne	.L76
	mov	r3, #0
	b	.L77
.L76:
	mov	r3, #1
.L77:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	ith_bit, .-ith_bit
	.align	2
	.global	bit_length
	.syntax unified
	.arm
	.fpu softvfp
	.type	bit_length, %function
bit_length:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, r0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #15
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L79
.L81:
	ldrh	r3, [fp, #-14]
	ldr	r1, [fp, #-8]
	mov	r0, r3
	bl	ith_bit
	mov	r3, r0
	cmp	r3, #1
	bne	.L80
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L79
.L80:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
.L79:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L81
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	bit_length, .-bit_length
	.align	2
	.global	mp_bit_length
	.syntax unified
	.arm
	.fpu softvfp
	.type	mp_bit_length, %function
mp_bit_length:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-32]
	mov	r3, r1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-34]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	mvn	r3, #0
	str	r3, [fp, #-20]
	b	.L84
.L87:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L85
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-20]
.L85:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L84:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	blt	.L86
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	blt	.L87
.L86:
	ldr	r3, [fp, #-20]
	lsl	r4, r3, #4
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrh	r3, [r3]
	mov	r0, r3
	bl	bit_length
	mov	r3, r0
	add	r3, r4, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, lr}
	bx	lr
	.size	mp_bit_length, .-mp_bit_length
	.align	2
	.global	mp_ith_bit
	.syntax unified
	.arm
	.fpu softvfp
	.type	mp_ith_bit, %function
mp_ith_bit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #15
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #4
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-6]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldrh	r0, [r3]
	ldrh	r3, [fp, #-6]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	mov	r1, r3
	bl	ith_bit
	mov	r3, r0
	strh	r3, [fp, #-8]	@ movhi
	ldrh	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	mp_ith_bit, .-mp_ith_bit
	.align	2
	.global	mp_non_zero_words
	.syntax unified
	.arm
	.fpu softvfp
	.type	mp_non_zero_words, %function
mp_non_zero_words:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #8
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	mov	r3, r1
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-18]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L92
.L95:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	lsl	r3, r3, #1
	cmp	r3, #0
	beq	.L93
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-12]
.L93:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
.L92:
	ldrh	r3, [fp, #-6]	@ movhi
	cmp	r3, #0
	blt	.L94
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	blt	.L95
.L94:
	ldr	r3, [fp, #-12]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	mp_non_zero_words, .-mp_non_zero_words
	.align	2
	.global	multiply_mod_p
	.syntax unified
	.arm
	.fpu softvfp
	.type	multiply_mod_p, %function
multiply_mod_p:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	ldr	r2, [fp, #-16]
	ldrh	r1, [fp, #-14]
	ldr	r0, .L98
	bl	multiply_mp_elements
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	lsl	r2, r3, #1
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, .L98
	ldr	r1, [fp, #-8]
	ldr	r0, .L98+4
	bl	divide_mp_elements
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L99:
	.align	2
.L98:
	.word	_tmpglobal_ab
	.word	_tmpglobal_q
	.size	multiply_mod_p, .-multiply_mod_p
	.global	__aeabi_uidiv
	.align	2
	.global	divide_2_word_by_1_word
	.syntax unified
	.arm
	.fpu softvfp
	.type	divide_2_word_by_1_word, %function
divide_2_word_by_1_word:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, r0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-16]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-18]
	cmp	r3, #0
	beq	.L101
	ldrh	r3, [fp, #-14]
	lsl	r3, r3, #16
	str	r3, [fp, #-8]
	ldrh	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldrh	r3, [fp, #-18]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	__aeabi_uidiv
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	b	.L102
.L101:
	mov	r3, #0
.L102:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	divide_2_word_by_1_word, .-divide_2_word_by_1_word
	.align	2
	.global	divide_mp_elements
	.syntax unified
	.arm
	.fpu softvfp
	.type	divide_mp_elements, %function
divide_mp_elements:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #68
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	str	r2, [fp, #-64]
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L104
.L105:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldr	r1, .L120
	ldr	r3, [fp, #-16]
	and	r3, r3, #255
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L104:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	blt	.L105
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L106
.L107:
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L106:
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	ble	.L107
	ldr	r3, [fp, #-68]
	lsl	r3, r3, #16
	lsr	r1, r3, #16
	ldr	r3, [fp, #8]
	lsl	r3, r3, #16
	lsr	r0, r3, #16
	ldr	r3, [fp, #-68]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldr	r3, [fp, #8]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	str	r3, [sp]
	mov	r3, r0
	ldr	r2, [fp, #4]
	ldr	r0, .L120+4
	bl	mult_by_power_of_b
	b	.L108
.L109:
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldrh	r1, [fp, #-8]	@ movhi
	ldr	r3, [fp, #8]
	sub	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-56]
	add	r3, r1, r3
	add	r2, r2, #1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-68]
	and	r3, r3, #255
	ldr	r2, .L120+4
	ldr	r1, .L120
	ldr	r0, .L120
	bl	subtract_mp_elements
.L108:
	ldr	r3, [fp, #-68]
	and	r3, r3, #255
	mov	r2, r3
	ldr	r1, .L120+4
	ldr	r0, .L120
	bl	compare_mp_elements
	mov	r3, r0
	cmp	r3, #1
	beq	.L109
	ldr	r3, [fp, #-68]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L110
.L119:
	ldr	r2, .L120
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldr	r3, [fp, #8]
	sub	r3, r3, #-2147483647
	lsl	r3, r3, #1
	ldr	r1, [fp, #4]
	add	r3, r1, r3
	ldrh	r3, [r3]
	sub	r3, r2, r3
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	cmp	r3, #0
	bne	.L111
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	mvn	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L112
.L111:
	ldr	r2, .L120
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r0, [r3]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	ldr	r2, .L120
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r1, [r3]
	ldr	r3, [fp, #8]
	sub	r3, r3, #-2147483647
	lsl	r3, r3, #1
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldrh	ip, [r3]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r4, r2, r3
	mov	r2, ip
	bl	divide_2_word_by_1_word
	mov	r3, r0
	strh	r3, [r4]	@ movhi
.L112:
	ldr	r3, [fp, #8]
	sub	r3, r3, #-2147483646
	lsl	r3, r3, #1
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldrh	r3, [r3]
	strh	r3, [fp, #-32]	@ movhi
	ldr	r3, [fp, #8]
	sub	r3, r3, #-2147483647
	lsl	r3, r3, #1
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldrh	r3, [r3]
	strh	r3, [fp, #-30]	@ movhi
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrh	r1, [r3]
	sub	r2, fp, #32
	sub	r0, fp, #40
	mov	r3, #2
	bl	multiply_sp_by_mp_element
	ldr	r3, [fp, #-16]
	sub	r3, r3, #2
	ldr	r2, .L120
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	strh	r3, [fp, #-48]	@ movhi
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	mov	r2, #1
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	strh	r3, [fp, #-46]	@ movhi
	ldr	r2, .L120
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	strh	r3, [fp, #-44]	@ movhi
	b	.L113
.L114:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-56]
	add	r3, r1, r3
	sub	r2, r2, #1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrh	r1, [r3]
	sub	r2, fp, #32
	sub	r0, fp, #40
	mov	r3, #2
	bl	multiply_sp_by_mp_element
.L113:
	sub	r1, fp, #40
	sub	r3, fp, #48
	mov	r2, #3
	mov	r0, r3
	bl	compare_mp_elements
	mov	r3, r0
	cmp	r3, #0
	beq	.L114
	ldr	r3, [fp, #-68]
	lsl	r3, r3, #16
	lsr	r1, r3, #16
	ldr	r3, [fp, #8]
	lsl	r3, r3, #16
	lsr	r0, r3, #16
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldr	r3, [fp, #8]
	lsl	r3, r3, #16
	and	r3, r3, #255
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	str	r3, [sp]
	mov	r3, r0	@ movhi
	ldr	r2, [fp, #4]
	ldr	r0, .L120+8
	bl	mult_by_power_of_b
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrh	r1, [r3]
	ldr	r3, [fp, #-68]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldr	r2, .L120+8
	ldr	r0, .L120+12
	bl	multiply_sp_by_mp_element
	ldr	r3, [fp, #-68]
	and	r3, r3, #255
	mov	r2, r3
	ldr	r1, .L120+12
	ldr	r0, .L120
	bl	compare_mp_elements
	mov	r3, r0
	cmp	r3, #0
	bne	.L115
	ldr	r3, [fp, #-68]
	and	r3, r3, #255
	ldr	r2, .L120+8
	ldr	r1, .L120
	ldr	r0, .L120
	bl	add_mp_elements
	ldr	r3, [fp, #-68]
	and	r3, r3, #255
	ldr	r2, .L120+12
	ldr	r1, .L120
	ldr	r0, .L120
	bl	subtract_mp_elements
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrh	r2, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-56]
	add	r3, r1, r3
	sub	r2, r2, #1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	b	.L116
.L115:
	ldr	r3, [fp, #-68]
	and	r3, r3, #255
	ldr	r2, .L120+12
	ldr	r1, .L120
	ldr	r0, .L120
	bl	subtract_mp_elements
.L116:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L117
.L118:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-60]
	add	r3, r2, r3
	ldr	r1, .L120
	ldr	r2, [fp, #-24]
	lsl	r2, r2, #1
	add	r2, r1, r2
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L117:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #8]
	cmp	r2, r3
	blt	.L118
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L110:
	ldr	r3, [fp, #8]
	sub	r3, r3, #1
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bgt	.L119
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	_tmpglobal_x
	.word	_tmpglobal_ybnt
	.word	_tmpglobal_ybit
	.word	_tmpglobal_qitybit
	.size	divide_mp_elements, .-divide_mp_elements
	.align	2
	.global	mod_exp
	.syntax unified
	.arm
	.fpu softvfp
	.type	mod_exp, %function
mod_exp:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	mp_bit_length
	str	r0, [fp, #-12]
	ldrh	r3, [fp, #8]	@ movhi
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	set_to_zero
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-8]
	b	.L123
.L125:
	ldrh	r3, [fp, #8]	@ movhi
	and	r3, r3, #255
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-16]
	ldr	r0, .L126
	bl	multiply_mod_p
	ldrh	r3, [fp, #8]
	mov	r2, r3
	ldr	r1, .L126
	ldr	r0, [fp, #-16]
	bl	copy_mp
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-24]
	bl	mp_ith_bit
	mov	r3, r0
	cmp	r3, #1
	bne	.L124
	ldrh	r3, [fp, #8]	@ movhi
	and	r3, r3, #255
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-16]
	ldr	r0, .L126
	bl	multiply_mod_p
	ldrh	r3, [fp, #8]
	mov	r2, r3
	ldr	r1, .L126
	ldr	r0, [fp, #-16]
	bl	copy_mp
.L124:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
.L123:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L125
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L127:
	.align	2
.L126:
	.word	_tmpglobal_temp
	.size	mod_exp, .-mod_exp
	.align	2
	.global	test_rsa_encrypt
	.syntax unified
	.arm
	.fpu softvfp
	.type	test_rsa_encrypt, %function
test_rsa_encrypt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #20
	mov	r3, #4
	str	r3, [sp, #4]
	ldr	r3, .L129
	str	r3, [sp]
	mov	r3, #1
	ldr	r2, .L129+4
	ldr	r1, .L129+8
	ldr	r0, .L129+12
	bl	mod_exp
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L130:
	.align	2
.L129:
	.word	n
	.word	e
	.word	plaintext
	.word	ciphertext
	.size	test_rsa_encrypt, .-test_rsa_encrypt
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Plaintext:\012\015\000"
	.align	2
.LC1:
	.ascii	"0x%08X\012\015\000"
	.align	2
.LC2:
	.ascii	"Cipertext:\012\015\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r3, .L137
	ldr	r2, .L137+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L137
	ldr	r2, .L137+8
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, .L137
	ldr	r2, .L137+12
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, .L137
	ldr	r2, .L137+16
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, .L137+20
	ldr	r2, .L120
	strh	r2, [r3]	@ movhi
	ldr	r3, .L137+20
	mov	r2, #1
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, .L137+24
	ldr	r2, .L137+28
	strh	r2, [r3]	@ movhi
	ldr	r3, .L137+24
	ldr	r2, .L137+32
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, .L137+24
	ldr	r2, .L137+36
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, .L137+24
	ldr	r2, .L137+40
	strh	r2, [r3, #6]	@ movhi
	ldr	r0, .L137+44
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L132
.L133:
	ldr	r2, .L137+24
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	mov	r1, r3
	ldr	r0, .L137+48
	bl	printf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L132:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L133
	bl	test_rsa_encrypt
	ldr	r0, .L137+52
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L134
.L135:
	ldr	r2, .L137+56
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	mov	r1, r3
	ldr	r0, .L137+48
	bl	printf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L134:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L135
	mov	r3, #11
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	n
	.word	-21640
	.word	-20550
	.word	-30489
	.word	18797
	.word	e
	.word	plaintext
	.word	19813
	.word	28005
	.word	28276
	.word	28531
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	ciphertext
	.size	main, .-main
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
