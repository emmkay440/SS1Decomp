	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080216E0
sub_080216E0: @ 0x080216E0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r1, _08021724 @ =gUnknown_030063D8
	ldr r0, [r1]
	ldr r3, [r0, #4]
	ldr r0, [r0]
	ldrh r2, [r0, #0xc]
	movs r4, #0
	adds r5, r1, #0
	cmp r4, r2
	bhs _08021734
	ldr r1, _08021728 @ =0x0300397C
_080216FA:
	ldrh r0, [r3, #2]
	cmp r0, #0
	bne _0802172C
	ldr r2, [r5]
	ldrh r1, [r1]
	lsls r0, r1, #4
	subs r0, r0, r1
	adds r0, r4, r0
	adds r2, #0xcc
	adds r2, r2, r0
	ldrb r1, [r2]
	ldr r0, [r3, #4]
	adds r0, r3, r0
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r7]
	b _08021734
	.align 2, 0
_08021724: .4byte gUnknown_030063D8
_08021728: .4byte 0x0300397C
_0802172C:
	adds r4, #1
	adds r3, #8
	cmp r4, r2
	blo _080216FA
_08021734:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
