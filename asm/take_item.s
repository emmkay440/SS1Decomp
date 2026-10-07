	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start TakeItemFromSlot
TakeItemFromSlot: @ 0x08013F20
	ldr r2, _08013F54 @ =gPlayerStats
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x88
	adds r1, r0, r1
	ldr r3, [r1]
	adds r0, r0, r2
	adds r0, #0x88
	ldrh r2, [r0]
	ldr r1, _08013F58 @ =0xFFFF8000
	ands r1, r2
	strh r1, [r0]
	ldr r1, [r0]
	ldr r2, _08013F5C @ =0x00007FFF
	ands r1, r2
	str r1, [r0]
	ldrb r2, [r0]
	movs r1, #0x71
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	ldr r0, _08013F60 @ =0xFFFFBFFF
	ands r3, r0
	adds r0, r3, #0
	bx lr
	.align 2, 0
_08013F54: .4byte gPlayerStats
_08013F58: .4byte 0xFFFF8000
_08013F5C: .4byte 0x00007FFF
_08013F60: .4byte 0xFFFFBFFF
