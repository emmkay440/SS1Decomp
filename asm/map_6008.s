	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08006008
sub_08006008: @ 0x08006008
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	lsrs r4, r4, #3
	lsrs r3, r3, #3
	cmp r2, #0
	beq _08006020
	ldr r1, _0800601C @ =gMapLayer_03003C00
	b _08006022
	.align 2, 0
_0800601C: .4byte gMapLayer_03003C00
_08006020:
	ldr r1, _08006044 @ =gMapLayer_03003910
_08006022:
	ldr r2, [r1, #0x54]
	adds r1, #0x58
	ldrh r1, [r1]
	muls r1, r3, r1
	adds r1, r4, r1
	lsls r1, r1, #1
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq _08006052
	cmp r1, #1
	bgt _08006048
	cmp r1, #0
	beq _0800604E
	b _08006058
	.align 2, 0
_08006044: .4byte gMapLayer_03003910
_08006048:
	cmp r1, #2
	beq _08006056
	b _08006058
_0800604E:
	movs r0, #2
	b _08006058
_08006052:
	movs r0, #1
	b _08006058
_08006056:
	movs r0, #3
_08006058:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
