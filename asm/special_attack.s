	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08025BFC
sub_08025BFC: @ 0x08025BFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r5, _08025C9C @ =gUnknown_03006430
	ldr r6, _08025CA0 @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08025C4E
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xe]
	cmp r0, #0xd
	beq _08025C4E
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xe]
	cmp r0, #0xc
	beq _08025C4E
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xe]
	cmp r0, #0xe
	beq _08025C4E
	b _08025E92
_08025C4E:
	bl sub_08022A88
	cmp r0, #0
	beq _08025C58
	b _08025E92
_08025C58:
	bl sub_08007510
	cmp r0, #0
	beq _08025C62
	b _08025E92
_08025C62:
	bl sub_08007544
	cmp r0, #0
	beq _08025C6C
	b _08025E92
_08025C6C:
	bl sub_080076E0
	cmp r0, #0
	beq _08025C76
	b _08025E92
_08025C76:
	bl sub_08007670
	cmp r0, #0
	beq _08025C80
	b _08025E92
_08025C80:
	bl sub_08022A88
	cmp r0, #0
	beq _08025C8A
	b _08025E92
_08025C8A:
	bl sub_080077C0
	cmp r0, #0
	beq _08025C94
	b _08025E92
_08025C94:
	ldr r4, [sp, #0x10]
	subs r4, #1
	b _08025CA8
	.align 2, 0
_08025C9C: .4byte gUnknown_03006430
_08025CA0: .4byte gPlayers
_08025CA4:
	bl WaitFrame
_08025CA8:
	bl sub_0800F430
	cmp r0, #0
	beq _08025CA4
	ldr r1, _08025CD0 @ =gUnknown_030064D8
	ldr r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #1
	str r0, [r1]
	ldr r2, _08025CD4 @ =gMapLayer_03003910
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	movs r0, #0x3c
	bl sub_0800F3A0
	b _08025CDC
	.align 2, 0
_08025CD0: .4byte gUnknown_030064D8
_08025CD4: .4byte gMapLayer_03003910
_08025CD8:
	bl WaitFrame
_08025CDC:
	bl sub_0800F298
	cmp r0, #0
	beq _08025CD8
	bl sub_080075E0
	bl WaitFrame
	bl WaitFrame
	ldr r1, _08025D14 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	cmp r4, #8
	bls _08025D0A
	b _08025E12
_08025D0A:
	lsls r0, r4, #2
	ldr r1, _08025D18 @ =_08025D1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025D14: .4byte gBgRegsBuffer
_08025D18: .4byte _08025D1C
_08025D1C: @ jump table
	.4byte _08025D40 @ case 0
	.4byte _08025D58 @ case 1
	.4byte _08025D70 @ case 2
	.4byte _08025D88 @ case 3
	.4byte _08025DA0 @ case 4
	.4byte _08025DB8 @ case 5
	.4byte _08025DD0 @ case 6
	.4byte _08025DEC @ case 7
	.4byte _08025E08 @ case 8
_08025D40:
	ldr r1, _08025D54 @ =gUnknown_03006918
	movs r0, #0
	strb r0, [r1]
	bl Random
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x32
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025D54: .4byte gUnknown_03006918
_08025D58:
	ldr r1, _08025D6C @ =gUnknown_03006918
	movs r0, #1
	strb r0, [r1]
	bl Random
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x50
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025D6C: .4byte gUnknown_03006918
_08025D70:
	ldr r1, _08025D84 @ =gUnknown_03006918
	movs r0, #3
	strb r0, [r1]
	bl Random
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x64
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025D84: .4byte gUnknown_03006918
_08025D88:
	ldr r1, _08025D9C @ =gUnknown_03006918
	movs r0, #2
	strb r0, [r1]
	bl Random
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x78
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025D9C: .4byte gUnknown_03006918
_08025DA0:
	ldr r1, _08025DB4 @ =gUnknown_03006918
	movs r0, #4
	strb r0, [r1]
	bl Random
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x96
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025DB4: .4byte gUnknown_03006918
_08025DB8:
	ldr r1, _08025DCC @ =gUnknown_03006918
	movs r0, #8
	strb r0, [r1]
	bl Random
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0xc8
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025DCC: .4byte gUnknown_03006918
_08025DD0:
	ldr r1, _08025DE8 @ =gUnknown_03006918
	movs r0, #7
	strb r0, [r1]
	bl Random
	movs r1, #0x7f
	ands r1, r0
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r0, r1, r0
	b _08025E10
	.align 2, 0
_08025DE8: .4byte gUnknown_03006918
_08025DEC:
	ldr r1, _08025E04 @ =gUnknown_03006918
	movs r0, #5
	strb r0, [r1]
	bl Random
	movs r1, #0x7f
	ands r1, r0
	movs r2, #0x96
	lsls r2, r2, #2
	adds r2, r1, r2
	str r2, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025E04: .4byte gUnknown_03006918
_08025E08:
	ldr r1, _08025E50 @ =gUnknown_03006918
	movs r0, #6
	strb r0, [r1]
	movs r0, #1
_08025E10:
	str r0, [sp, #0x14]
_08025E12:
	bl sub_080485A0
	ldr r0, _08025E54 @ =0x11201100
	bl _08000400
	ldr r3, _08025E58 @ =gUnknown_03006430
	ldr r2, [r3, #0x14]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r2, r2, #5
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	ldr r2, [r3, #0x18]
	bl LoadPalette
	ldr r0, _08025E5C @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x5c
	movs r2, #0
	ldrsh r4, [r1, r2]
	adds r0, #0x5e
	movs r1, #0
	ldrsh r5, [r0, r1]
	bl sub_08007544
	cmp r0, #0
	beq _08025E64
	ldr r0, _08025E60 @ =0x000514C9
	bl SignalEvent
	b _08025E6A
	.align 2, 0
_08025E50: .4byte gUnknown_03006918
_08025E54: .4byte 0x11201100
_08025E58: .4byte gUnknown_03006430
_08025E5C: .4byte gMapLayer_03003910
_08025E60: .4byte 0x000514C9
_08025E64:
	ldr r0, _08025E7C @ =0x000514C8
	bl SignalEvent
_08025E6A:
	ldr r0, _08025E80 @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x5c
	strh r4, [r1]
	adds r0, #0x5e
	strh r5, [r0]
	bl sub_080075F0
	b _08025E88
	.align 2, 0
_08025E7C: .4byte 0x000514C8
_08025E80: .4byte gMapLayer_03003910
_08025E84:
	bl WaitFrame
_08025E88:
	bl sub_0800F430
	cmp r0, #0
	beq _08025E84
	b _08025F3E
_08025E92:
	ldr r0, _08025F84 @ =gUnknown_030064D8
	ldr r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08025F88 @ =gPlayers
	movs r1, #0xd4
	muls r1, r7, r1
	adds r0, #0xd0
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _08025EF0
	adds r4, r1, #0
_08025EB4:
	bl sub_08007510
	cmp r0, #0
	bne _08025EE0
	bl sub_080076E0
	cmp r0, #0
	bne _08025EE0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #0x21
	movs r3, #0
	bl sub_08003518
_08025EE0:
	bl WaitFrame
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _08025EB4
_08025EF0:
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _08025F8C @ =0x03004650
	adds r6, r1, r0
_08025EFA:
	movs r4, #0
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _08025F0A
	movs r4, #1
_08025F0A:
	bl sub_08007510
	cmp r0, #0
	bne _08025F36
	bl sub_080076E0
	cmp r0, #0
	bne _08025F36
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #0x21
	movs r3, #0
	bl sub_08003518
_08025F36:
	bl WaitFrame
	cmp r4, #0
	bne _08025EFA
_08025F3E:
	bl GetMultiplayerId
	cmp r7, r0
	beq _08025F48
	b _08026080
_08025F48:
	ldr r0, _08025F90 @ =gEnemies
	ldr r5, [r0]
	movs r4, #0
_08025F4E:
	ldr r0, _08025F94 @ =gActiveEnemyMask
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0]
	ands r0, r1
	adds r2, r4, #1
	mov sl, r2
	movs r1, #0x94
	adds r1, r1, r5
	mov sb, r1
	cmp r0, #0
	bne _08025F68
	b _08026072
_08025F68:
	ldrh r0, [r5, #0xa]
	cmp r0, #8
	bne _08025F70
	b _08026072
_08025F70:
	ldr r0, [sp, #0x10]
	subs r0, #1
	cmp r0, #7
	bhi _0802600C
	lsls r0, r0, #2
	ldr r1, _08025F98 @ =_08025F9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025F84: .4byte gUnknown_030064D8
_08025F88: .4byte gPlayers
_08025F8C: .4byte 0x03004650
_08025F90: .4byte gEnemies
_08025F94: .4byte gActiveEnemyMask
_08025F98: .4byte _08025F9C
_08025F9C: @ jump table
	.4byte _08025FBC @ case 0
	.4byte _0802600C @ case 1
	.4byte _08025FBC @ case 2
	.4byte _0802600C @ case 3
	.4byte _08025FD2 @ case 4
	.4byte _0802600C @ case 5
	.4byte _08025FD2 @ case 6
	.4byte _08025FC2 @ case 7
_08025FBC:
	adds r0, r5, #0
	adds r0, #0x78
	b _08025FD6
_08025FC2:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	movs r0, #0x6e
	subs r0, r0, r1
	ldr r1, [sp, #0x14]
	muls r0, r1, r0
	b _08025FE0
_08025FD2:
	adds r0, r5, #0
	adds r0, #0x7a
_08025FD6:
	ldrh r1, [r0]
	movs r0, #0x6e
	subs r0, r0, r1
	ldr r2, [sp, #0x14]
	muls r0, r2, r0
_08025FE0:
	movs r1, #0x3c
	bl __divsi3
	strh r0, [r5, #0x2a]
	b _08026012
_08025FEA:
	bl GetMultiplayerId
	muls r0, r7, r0
	ldr r1, _08026008 @ =0x03004648
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r4, r0
	adds r1, r5, #0
	movs r2, #0x94
	bl memcpy
	movs r0, #0
	strh r0, [r5, #0x3e]
	b _08026072
	.align 2, 0
_08026008: .4byte 0x03004648
_0802600C:
	mov r2, sp
	ldrh r2, [r2, #0x14]
	strh r2, [r5, #0x2a]
_08026012:
	ldrh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x28]
	adds r0, r0, r1
	strh r0, [r5, #0x28]
	movs r0, #7
	strh r0, [r5, #0xa]
	movs r0, #1
	strh r0, [r5, #0x36]
	movs r6, #0
	adds r4, #1
	mov sl, r4
	movs r2, #0x94
	adds r2, r2, r5
	mov sb, r2
	ldr r0, _080260CC @ =gPlayers
	mov r8, r0
	movs r7, #0xd4
_08026034:
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	adds r0, #0xa2
	ldrh r0, [r0]
	adds r0, r0, r6
	movs r1, #5
	bl __modsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r7, r0
	ldr r1, _080260D0 @ =0x03004648
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x94
	muls r4, r0, r4
	adds r1, r4, r1
	ldrh r0, [r1]
	ldr r2, _080260D4 @ =0x0000FFFF
	cmp r0, r2
	beq _08025FEA
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _08026034
_08026072:
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	mov r5, sb
	cmp r4, #4
	bhi _08026080
	b _08025F4E
_08026080:
	bl sub_08001F64
	cmp r0, #0
	beq _080260A2
	ldr r1, _080260D8 @ =gUnknown_03006788
	movs r0, #1
	str r0, [r1]
	movs r6, #0
	ldr r2, _080260DC @ =gUnknown_03006718
	movs r1, #0
_08026094:
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08026094
_080260A2:
	bl GetMultiplayerId
	ldr r2, _080260CC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080260E0 @ =0x0000FEFF
	ands r0, r2
	movs r2, #0
	strh r0, [r1, #0x10]
	ldr r0, _080260E4 @ =gUnknown_030064D8
	str r2, [r0]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080260CC: .4byte gPlayers
_080260D0: .4byte 0x03004648
_080260D4: .4byte 0x0000FFFF
_080260D8: .4byte gUnknown_03006788
_080260DC: .4byte gUnknown_03006718
_080260E0: .4byte 0x0000FEFF
_080260E4: .4byte gUnknown_030064D8
