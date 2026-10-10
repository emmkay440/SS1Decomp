	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start GetMapTileAttributes
GetMapTileAttributes: @ 0x08006060
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq _08006074
	ldr r0, _08006070 @ =gMapLayer_03003C00
	b _08006076
	.align 2, 0
_08006070: .4byte gMapLayer_03003C00
_08006074:
	ldr r0, _0800609C @ =gMapLayer_03003910
_08006076:
	ldr r3, [r0, #0x54]
	asrs r1, r4, #0xf
	asrs r2, r5, #0xf
	adds r0, #0x58
	ldrh r0, [r0]
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r0, [r0]
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x1c
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r0, r1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800609C: .4byte gMapLayer_03003910
