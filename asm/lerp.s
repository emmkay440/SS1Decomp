	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start Lerp1024
Lerp1024: @ 0x080270A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r3, #0
	adds r0, r2, #0
	muls r0, r3, r0
	cmp r0, #0
	bge _080270B6
	ldr r2, _080270D4 @ =0x000003FF
	adds r0, r0, r2
_080270B6:
	asrs r2, r0, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	subs r0, r0, r4
	muls r1, r0, r1
	cmp r1, #0
	bge _080270C8
	ldr r0, _080270D4 @ =0x000003FF
	adds r1, r1, r0
_080270C8:
	asrs r1, r1, #0xa
	adds r0, r2, r1
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080270D4: .4byte 0x000003FF
