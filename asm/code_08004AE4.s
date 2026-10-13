	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08004AE4
sub_08004AE4: @ 0x08004AE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _08004B18 @ =gBgRegsBuffer
	str r0, [sp, #4]
	bl sub_08007544
	adds r1, r0, #0
	cmp r1, #0
	beq _08004B20
	lsls r1, r7, #2
	adds r2, r1, r7
	lsls r2, r2, #2
	ldr r3, _08004B1C @ =gMapLayer_03003C00
	b _08004B28
	.align 2, 0
_08004B18: .4byte gBgRegsBuffer
_08004B1C: .4byte gMapLayer_03003C00
_08004B20:
	lsls r1, r7, #2
	adds r2, r1, r7
	lsls r2, r2, #2
	ldr r3, _08004C38 @ =gMapLayer_03003910
_08004B28:
	adds r6, r2, r3
	str r1, [sp, #0xc]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r2, _08004C38 @ =gMapLayer_03003910
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r1, [r1]
	cmp r1, #7
	bne _08004B74
	adds r1, r2, #0
	adds r1, #0x6c
	ldrh r2, [r1]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	bne _08004B74
	cmp r7, #3
	bne _08004B74
	bl sub_08007544
	adds r1, r0, #0
	cmp r1, #0
	bne _08004B74
	movs r3, #0
	mov r8, r3
_08004B74:
	ldr r2, _08004C38 @ =gMapLayer_03003910
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r1, [r1]
	cmp r1, #9
	bne _08004B9C
	adds r1, r2, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	cmp r1, #0x11
	bne _08004B9C
	cmp r7, #3
	bne _08004B9C
	bl sub_08007544
	adds r1, r0, #0
	cmp r1, #0
	bne _08004B9C
	movs r1, #0
	mov r8, r1
_08004B9C:
	ldr r1, [r6, #8]
	cmp r1, #0
	bne _08004BA4
	b _08004DC2
_08004BA4:
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	adds r2, r4, #0
	str r1, [sp, #0x10]
	cmp r4, #0
	bge _08004BB2
	adds r2, r4, #7
_08004BB2:
	asrs r1, r2, #3
	ldrh r2, [r6]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r3, r1, #0x10
	adds r2, r3, #0
	mov sl, r1
	cmp r3, #0
	bge _08004BCC
	adds r2, r3, #7
_08004BCC:
	asrs r1, r2, #3
	ldrh r2, [r6, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r1, r5, #0x10
	asrs r5, r1, #0x10
	str r1, [sp, #0x14]
	cmp r5, #0
	ble _08004C3C
	adds r4, #0xf1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08004934
	subs r4, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0x18]
	lsls r3, r7, #1
	str r3, [sp, #8]
	cmp r2, r1
	bge _08004C94
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	adds r5, r1, #0
_08004C12:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	subs r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	mov r3, sl
	asrs r2, r3, #0x10
	bl sub_08004934
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r5
	blt _08004C12
	b _08004C94
	.align 2, 0
_08004C38: .4byte gMapLayer_03003910
_08004C3C:
	mov r1, r8
	lsls r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r2, r7, #1
	str r2, [sp, #8]
	cmp r5, #0
	bge _08004C94
	subs r4, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08004934
	rsbs r1, r5, #0
	adds r4, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _08004C94
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	adds r5, r1, #0
_08004C72:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	adds r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	mov r3, sl
	asrs r2, r3, #0x10
	bl sub_08004934
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r5
	blt _08004C72
_08004C94:
	ldr r1, [sp, #0x18]
	asrs r4, r1, #0x10
	cmp r4, #0
	ble _08004CEC
	lsrs r7, r1, #0x10
	ldr r2, [sp, #0x10]
	ldr r3, _08004CE8 @ =0xFFF80000
	adds r5, r2, r3
	asrs r1, r5, #0x10
	movs r0, #0xa1
	lsls r0, r0, #0x10
	add r0, sl
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08004A1C
	movs r2, #0
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _08004D36
	mov r8, r4
	adds r7, r1, #0
_08004CC4:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #3
	mov r0, r8
	subs r2, r0, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	asrs r1, r5, #0x10
	bl sub_08004A1C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r7
	blt _08004CC4
	b _08004D36
	.align 2, 0
_08004CE8: .4byte 0xFFF80000
_08004CEC:
	cmp r4, #0
	bge _08004D36
	ldr r1, [sp, #0x10]
	ldr r2, _08004DD4 @ =0xFFF80000
	adds r7, r1, r2
	asrs r1, r7, #0x10
	mov r3, sl
	asrs r5, r3, #0x10
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08004A1C
	rsbs r1, r4, #0
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _08004D36
	mov sb, r5
	mov r8, r1
	adds r5, r7, #0
_08004D16:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #3
	add r2, sb
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	asrs r1, r5, #0x10
	bl sub_08004A1C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r8
	blt _08004D16
_08004D36:
	ldr r2, [sp, #8]
	ldr r3, _08004DD8 @ =REG_BG0CNT
	adds r1, r2, r3
	ldrh r1, [r1]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _08004D5E
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bne _08004D5E
	ldr r2, [sp]
	cmp r2, #0
	beq _08004D6E
_08004D5E:
	ldr r0, _08004DDC @ =gUnknown_03003C90
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
_08004D6E:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _08004D7A
	ldr r2, [sp]
	cmp r2, #0
	beq _08004D88
_08004D7A:
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0x10
	cmp r1, #0
	bge _08004D84
	adds r1, #7
_08004D84:
	asrs r1, r1, #3
	strh r1, [r6]
_08004D88:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _08004D94
	ldr r2, [sp]
	cmp r2, #0
	beq _08004DA2
_08004D94:
	mov r3, sl
	asrs r1, r3, #0x10
	cmp r1, #0
	bge _08004D9E
	adds r1, #7
_08004D9E:
	asrs r1, r1, #3
	strh r1, [r6, #2]
_08004DA2:
	ldrh r1, [r6, #0x10]
	lsls r1, r1, #2
	ldr r2, [sp, #4]
	adds r2, r2, r1
	str r2, [sp, #4]
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0x10
	movs r2, #0xff
	ands r1, r2
	ldr r3, [sp, #4]
	strh r1, [r3]
	mov r3, sl
	asrs r1, r3, #0x10
	ands r1, r2
	ldr r2, [sp, #4]
	strh r1, [r2, #2]
_08004DC2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004DD4: .4byte 0xFFF80000
_08004DD8: .4byte REG_BG0CNT
_08004DDC: .4byte gUnknown_03003C90
