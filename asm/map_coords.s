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

	thumb_func_start sub_080060A0
sub_080060A0: @ 0x080060A0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r1, #0
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r4]
	bl GetDataRecord
	mov r8, r0
	ldm r4!, {r0}
	ldr r1, _08006110 @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r4, #0
	bl LZ77DecompressAlloc
	adds r6, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	mov r0, r8
	adds r1, r4, #0
	bl CpuFastSet
	adds r5, #0x1c
	lsls r5, r5, #0xb
	adds r5, r5, r4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r6, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r0, r6, #0
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl LoadPalette
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006110: .4byte 0x0000FFFF
