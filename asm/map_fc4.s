	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08005FC4
sub_08005FC4: @ 0x08005FC4
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r2, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r2, #0
	beq _08005FE0
	ldr r1, _08005FDC @ =gMapLayer_03003C00
	b _08005FE2
	.align 2, 0
_08005FDC: .4byte gMapLayer_03003C00
_08005FE0:
	ldr r1, _08006004 @ =gMapLayer_03003910
_08005FE2:
	adds r0, r1, #0
	adds r0, #0x5c
	ldrh r2, [r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r5]
	adds r1, #0x5e
	ldrh r1, [r1]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6]
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006004: .4byte gMapLayer_03003910
