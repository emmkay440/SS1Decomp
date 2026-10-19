	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801AAC8
sub_0801AAC8: @ 0x0801AAC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801AB1C @ =gPlayers
	adds r6, r1, r0
	ldr r1, _0801AB20 @ =0x00100064
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xf
	bl sub_08026ADC
	bl sub_080074CC
	cmp r0, #0
	bne _0801AB06
	ldr r0, _0801AB24 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801AB0A
_0801AB06:
	bl ThreadExit
_0801AB0A:
	ldr r0, _0801AB28 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	adds r1, r0, #0
	ldr r0, [r1, #8]
	adds r2, r1, r0
	movs r4, #0
	b _0801AB54
	.align 2, 0
_0801AB1C: .4byte gPlayers
_0801AB20: .4byte 0x00100064
_0801AB24: .4byte gUnknown_030063D8
_0801AB28: .4byte 0x080FB0F8
_0801AB2C:
	adds r1, #0xa4
	movs r0, #0
	strh r0, [r1]
	b _0801AF10
_0801AB34:
	ldr r0, _0801AB40 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	movs r1, #1
	strh r1, [r0]
	b _0801ADEE
	.align 2, 0
_0801AB40: .4byte gUnknown_030063D8
_0801AB44:
	adds r1, #0xa4
	movs r0, #0
	strh r0, [r1]
	b _0801ADEE
_0801AB4C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #8
_0801AB54:
	ldrh r0, [r1, #0xc]
	cmp r4, r0
	bhs _0801AB66
	ldrh r0, [r2, #2]
	cmp r0, #3
	bne _0801AB4C
	ldr r0, [r2, #4]
	adds r2, r2, r0
	mov sl, r2
_0801AB66:
	ldr r0, _0801AB78 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	movs r1, #0
	strh r1, [r0]
	ldr r7, _0801AB7C @ =0x03004650
_0801AB72:
	movs r5, #0
	movs r4, #0
	b _0801AB9E
	.align 2, 0
_0801AB78: .4byte gUnknown_030063D8
_0801AB7C: .4byte 0x03004650
_0801AB80:
	movs r0, #0xd4
	muls r0, r4, r0
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0801AB98
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801AB98:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801AB9E:
	bl sub_08001EC4
	cmp r4, r0
	blt _0801AB80
	ldr r4, _0801ABCC @ =gUnknown_030063D8
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801AB2C
	bl WaitFrame
	bl sub_08001EC4
	cmp r5, r0
	blt _0801AB72
	bl sub_08007728
	mov sb, r4
	add r1, sp, #0x48
	mov r8, r1
	b _0801ADD4
	.align 2, 0
_0801ABCC: .4byte gUnknown_030063D8
_0801ABD0:
	add r5, sp, #0x44
	movs r7, #1
	str r7, [sp]
	add r0, sp, #0x10
	movs r1, #0
	adds r2, r5, #0
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _0801AC40
	bl sub_08007604
	cmp r0, #0
	bne _0801AC40
	bl sub_080075AC
	cmp r0, #0
	bne _0801AC40
	mov r1, sl
	adds r1, #0x8c
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x4a
	movs r2, #0x30
	str r2, [sp]
	str r7, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_08005FC4
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldrh r3, [r5]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004418
_0801AC40:
	bl WaitFrame
	bl sub_0800F430
	cmp r0, #0
	beq _0801ACD8
	ldr r0, _0801ACD0 @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801ACD8
	bl sub_080076E0
	cmp r0, #0
	bne _0801ACD8
	ldrh r0, [r6, #0xc]
	cmp r0, #9
	beq _0801ACD8
	cmp r0, #5
	beq _0801ACD8
	bl sub_08007604
	cmp r0, #0
	bne _0801ACD8
	ldr r0, [r6, #0x58]
	asrs r0, r0, #0xf
	mov r1, r8
	strh r0, [r1]
	mov r3, sp
	adds r3, #0x4a
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #0xf
	strh r0, [r3]
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r2, sl
	adds r2, #0x8c
	ldrh r0, [r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801AC92
	rsbs r1, r1, #0
_0801AC92:
	cmp r1, #1
	bgt _0801AD1A
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrh r0, [r2, #2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801ACA4
	rsbs r1, r1, #0
_0801ACA4:
	cmp r1, #1
	bgt _0801AD1A
	bl sub_08007544
	cmp r0, #0
	beq _0801AD1A
	ldrh r1, [r6, #0x10]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r6, #0x10]
	ldr r0, _0801ACD4 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801AD1A
	movs r0, #9
	strh r0, [r6, #0xc]
	movs r0, #0xf
	strh r0, [r6, #0xe]
	b _0801AD1A
	.align 2, 0
_0801ACD0: .4byte gUnknown_030064D8
_0801ACD4: .4byte gKeysNew
_0801ACD8:
	bl sub_080076E0
	adds r3, r0, #0
	cmp r3, #0
	bne _0801AD1A
	ldrh r0, [r6, #0xc]
	cmp r0, #9
	bne _0801AD1A
	ldrh r0, [r6, #0xe]
	cmp r0, #0xf
	bne _0801AD1A
	ldrh r1, [r6, #0x10]
	movs r0, #0x10
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r6, #0x10]
	ldr r0, _0801AD38 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	ands r0, r1

_0801AD00:
	cmp r0, #0
	bne _0801AD10
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801AD1A
_0801AD10:
	strh r3, [r6, #0xc]
	ldr r1, _0801AD3C @ =0x0000FFFC
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r6, #0x10]
_0801AD1A:
	bl sub_080074F0
	cmp r0, #0
	beq _0801ADAE
	bl sub_08001F64
	cmp r0, #0
	beq _0801ADA0
	movs r5, #0
	movs r4, #0
	ldr r2, _0801AD40 @ =0x03004650
	ldr r1, _0801AD44 @ =0x0000F009
	ldr r0, _0801AD48 @ =0x0000F00F
	adds r7, r0, #0
	b _0801AD68
	.align 2, 0
_0801AD38: .4byte gKeysNew
_0801AD3C: .4byte 0x0000FFFC
_0801AD40: .4byte 0x03004650
_0801AD44: .4byte 0x0000F009
_0801AD48: .4byte 0x0000F00F
_0801AD4C:
	movs r0, #0xd4
	muls r0, r4, r0
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	ands r0, r7
	cmp r0, r1
	bne _0801AD62
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801AD62:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801AD68:
	str r1, [sp, #0x4c]
	str r2, [sp, #0x50]
	bl sub_08001EC4
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	cmp r4, r0
	blt _0801AD4C
	bl sub_08001EC4
	cmp r5, r0
	bne _0801ADA0
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0xa4
	movs r1, #1
	strh r1, [r0]
	b _0801AD90
_0801AD8C:
	bl WaitFrame
_0801AD90:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	cmp r0, #0
	beq _0801AD8C
_0801ADA0:
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801ADFC
	b _0801ADC4
_0801ADAE:
	ldr r0, _0801AE18 @ =gPlayers
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _0801AE1C @ =0x0000F00F
	adds r0, r2, #0
	ands r0, r1
	ldr r1, _0801AE20 @ =0x0000F009
	cmp r0, r1
	bne _0801ADC4
	b _0801AB34
_0801ADC4:
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801ADD4
	b _0801AB44
_0801ADD4:
	bl sub_080074CC
	cmp r0, #0
	bne _0801ADEE
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801ADEE
	b _0801ABD0
_0801ADEE:
	ldr r0, _0801AE24 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801ADFC
	b _0801AF10
_0801ADFC:
	movs r0, #2
	bl FadeOutBGM
	movs r0, #0x24
	bl PlaySE
	movs r0, #6
	bl sub_0800F3A0
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	b _0801AE96
	.align 2, 0
_0801AE18: .4byte gPlayers
_0801AE1C: .4byte 0x0000F00F
_0801AE20: .4byte 0x0000F009
_0801AE24: .4byte gUnknown_030063D8
_0801AE28:
	add r4, sp, #0x44
	movs r5, #1
	str r5, [sp]
	add r0, sp, #0x10
	movs r1, #0
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _0801AE92
	bl sub_08007604
	cmp r0, #0
	bne _0801AE92
	bl sub_080075AC
	cmp r0, #0
	bne _0801AE92
	mov r1, sl
	adds r1, #0x8c
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldrh r3, [r4]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004418
_0801AE92:
	bl WaitFrame
_0801AE96:
	bl sub_0800F298
	cmp r0, #0
	bne _0801AEB6
	bl sub_080074CC
	cmp r0, #0
	bne _0801AEB6
	ldr r0, _0801AF20 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801AE28
_0801AEB6:
	ldr r4, _0801AF24 @ =gUnknownThreadPtr_03006410
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0801AEC8
	ldr r0, [r4]
	bl KillThread
_0801AEC8:
	bl GetMultiplayerId
	ldr r2, _0801AF28 @ =gPlayers
	movs r1, #0xd4
	adds r3, r0, #0
	muls r3, r1, r3
	adds r3, r3, r2
	ldr r2, _0801AF2C @ =gMapLayer_03003910
	ldr r4, _0801AF30 @ =0x080FB0F8
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r0, [r0]
	subs r0, #1
	adds r2, #0x6e
	movs r4, #0
	strh r0, [r2]
	strh r0, [r3, #0x16]
	bl sub_08007564
	ldr r2, _0801AF34 @ =gMapLayer_03003C00
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r0, _0801AF38 @ =0x00000BB9
	bl SignalEvent
	ldr r0, _0801AF20 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	strh r4, [r0]
_0801AF10:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AF20: .4byte gUnknown_030063D8
_0801AF24: .4byte gUnknownThreadPtr_03006410
_0801AF28: .4byte gPlayers
_0801AF2C: .4byte gMapLayer_03003910
_0801AF30: .4byte 0x080FB0F8
_0801AF34: .4byte gMapLayer_03003C00
_0801AF38: .4byte 0x00000BB9
