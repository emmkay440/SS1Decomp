@ newlib: bzero, memcpy

	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start bzero
bzero: @ 0x08052820
	adds r2, r0, #0
	adds r0, r1, #0
	subs r1, #1
	cmp r0, #0
	beq _08052838
	movs r3, #0
_0805282C:
	strb r3, [r2]
	adds r2, #1
	adds r0, r1, #0
	subs r1, #1
	cmp r0, #0
	bne _0805282C
_08052838:
	bx lr
	.align 2, 0

	thumb_func_start memcpy
memcpy: @ 0x0805283C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _0805287C
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805287C
	adds r1, r5, #0
_08052856:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08052856
	cmp r2, #3
	bls _0805287A
_08052870:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _08052870
_0805287A:
	adds r4, r1, #0
_0805287C:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08052896
	adds r1, r0, #0
_08052888:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _08052888
_08052896:
	adds r0, r5, #0
	pop {r4, r5, pc}

	.2byte 0 @ padding
