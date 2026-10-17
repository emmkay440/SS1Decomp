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

	thumb_func_start sub_080260E8
sub_080260E8: @ 0x080260E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x108
	ldr r0, _0802610C @ =gUnknown_03006430
	str r0, [sp, #0xe4]
	bl GetMultiplayerId
	str r0, [sp, #0xe8]
	movs r1, #0
	mov sl, r1
	mov r2, sb
	adds r2, #4
	str r2, [sp, #0xfc]
	b _080261E4
	.align 2, 0
_0802610C: .4byte gUnknown_03006430
_08026110:
	ldr r2, _080262F0 @ =0x080FB610
	ldr r1, _080262F4 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r7, [r0]
	movs r0, #0x34
	mov r5, sl
	muls r5, r0, r5
	add r5, sp
	adds r5, #0x10
	movs r0, #1
	movs r1, #1
	rsbs r1, r1, #0
	str r7, [r5, #0x10]
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	adds r0, r7, #0
	bl GetDataRecord
	str r0, [r5, #8]
	movs r4, #0x10
	add r4, sl
	mov r8, r4
	add r6, sp, #0x1c
	cmp r0, #0
	beq _080261A6
	ldr r1, _080262F8 @ =0x0000FFFF
	adds r4, r1, #0
	ands r4, r7
	movs r0, #0x88
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	str r1, [sp, #0x104]
	bl GetDataRecord
	str r0, [r5]
	ldr r1, [sp, #0x104]
	cmp r0, #0
	beq _080261A6
	ands r4, r1
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _080261A6
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0802618E:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _0802618E
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_080261A6:
	movs r0, #0x34
	mov r4, sl
	muls r4, r0, r4
	adds r2, r6, r4
	ldr r1, _080262F4 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, [r2]
	adds r1, r1, r0
	mov r0, r8
	movs r2, #1
	bl LoadPalette
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x10
	mov r7, sl
	strb r7, [r0, #0x1c]
	movs r0, #1
	add sl, r0
_080261E4:
	bl sub_08001EC4
	cmp sl, r0
	blo _08026110
	movs r1, #0xf0
	lsls r1, r1, #0xb
	str r1, [sp, #0xec]
	ldr r2, [sp, #0xe8]
	lsls r0, r2, #5
	adds r0, #0x10
	lsls r0, r0, #0xc
	str r0, [sp, #0xf0]
	ldr r0, _080262F4 @ =gPlayers
	movs r1, #0xd4
	adds r4, r2, #0
	muls r4, r1, r4
	adds r0, #0xd0
	adds r4, r4, r0
	ldr r3, [r4]
	ldrb r2, [r3, #3]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #3]
	ldr r2, [r4]
	movs r3, #0xf0
	lsls r3, r3, #3
	ldrh r0, [r2]
	ands r1, r0
	orrs r1, r3
	strh r1, [r2]
	ldr r3, [r4]
	ldr r5, [sp, #0xf0]
	asrs r1, r5, #0xc
	ldr r7, _080262FC @ =0x00000FFF
	adds r0, r7, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08026300 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r2, [r4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #4]
	mov r1, sb
	ldr r0, [r1]
	bl GetDataRecord
	adds r4, r0, #0
	mov r2, sb
	ldrh r0, [r2]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r6, r0, #0
	ldr r0, [sp, #0xfc]
	bl LZ77DecompressAlloc
	str r0, [sp, #0xe0]
	movs r3, #0
	mov sl, r3
	movs r5, #0xc0
	lsls r5, r5, #0x13
_0802626E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
	bl WaitFrame
	movs r7, #0x80
	lsls r7, r7, #5
	adds r5, r5, r7
	adds r0, r7, #0
	adds r4, r4, r0
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #7
	bls _0802626E
	ldr r1, _08026304 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r0, [sp, #0xe0]
	bl QueueCopy
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r1, _08026308 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #6
	bl sub_0800F308
	ldr r0, _0802630C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080262C8
	b _0802657E
_080262C8:
	ldr r3, _080262F4 @ =gPlayers
	str r3, [sp, #0xf4]
	ldr r4, [sp, #0xe8]
	movs r5, #0xd4
	adds r0, r4, #0
	muls r0, r5, r0
	ldr r7, _08026310 @ =0x03004650
	adds r0, r0, r7
	str r0, [sp, #0xf8]
_080262DA:
	ldr r0, [sp, #0xf8]
	ldr r3, [r0]
	ldrb r2, [r3, #4]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08026314
	cmp r0, #1
	beq _08026334
	b _08026408
	.align 2, 0
_080262F0: .4byte 0x080FB610
_080262F4: .4byte gPlayers
_080262F8: .4byte 0x0000FFFF
_080262FC: .4byte 0x00000FFF
_08026300: .4byte 0xFFFFF000
_08026304: .4byte 0x0600E800
_08026308: .4byte gBgRegsBuffer
_0802630C: .4byte gUnknown_030063D8
_08026310: .4byte 0x03004650
_08026314:
	ldr r0, _08026330 @ =gKeysHeld
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08026408
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #4]
	b _08026408
	.align 2, 0
_08026330: .4byte gKeysHeld
_08026334:
	movs r4, #0
	ldr r1, _08026348 @ =gKeysHeld
	ldrh r2, [r1]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0802634C
	movs r4, #5
	b _08026356
	.align 2, 0
_08026348: .4byte gKeysHeld
_0802634C:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08026356
	movs r4, #1
_08026356:
	ldrh r1, [r1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08026374
	cmp r4, #5
	bne _08026368
	movs r4, #4
	b _08026392
_08026368:
	cmp r4, #1
	bne _08026370
	movs r4, #2
	b _08026392
_08026370:
	movs r4, #3
	b _08026392
_08026374:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802638E
	cmp r4, #5
	bne _08026384
	movs r4, #6
	b _08026392
_08026384:
	cmp r4, #1
	bne _0802638C
	movs r4, #8
	b _08026392
_0802638C:
	movs r4, #7
_0802638E:
	cmp r4, #0
	beq _080263F8
_08026392:
	ldr r2, [sp, #0xf8]
	ldr r3, [r2]
	subs r1, r4, #1
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r2, _080263F0 @ =0x080FB5D0
	ldr r3, [sp, #0xf8]
	ldr r4, [r3]
	ldrb r1, [r4, #3]
	lsrs r1, r1, #4
	lsls r1, r1, #3
	adds r0, r1, r2
	ldr r0, [r0]
	movs r3, #0x32
	muls r0, r3, r0
	ldr r5, [sp, #0xec]
	adds r5, r5, r0
	str r5, [sp, #0xec]
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	muls r0, r3, r0
	ldr r7, [sp, #0xf0]
	adds r7, r7, r0
	str r7, [sp, #0xf0]
	asrs r1, r5, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [sp, #0xf8]
	ldr r3, [r0]
	lsls r2, r7, #8
	lsrs r2, r2, #0x14
	ldrh r0, [r3, #2]
	ldr r4, _080263F4 @ =0xFFFFF000
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	b _08026408
	.align 2, 0
_080263F0: .4byte 0x080FB5D0
_080263F4: .4byte 0xFFFFF000
_080263F8:
	ldr r5, [sp, #0xf8]
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	strb r1, [r0, #4]
_08026408:
	movs r0, #0
	mov sl, r0
	ldr r1, [sp, #0xe4]
	adds r1, #0x1c
	str r1, [sp, #0x100]
	b _08026540
_08026414:
	ldr r3, _08026434 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	ldr r5, _08026438 @ =0x03004650
	adds r2, r4, r5
	ldr r1, [r2]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0802643C
	cmp r0, #1
	beq _08026468
	b _08026494
	.align 2, 0
_08026434: .4byte gPlayers
_08026438: .4byte 0x03004650
_0802643C:
	adds r4, r4, r3
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r4, #0x70
	strh r3, [r4]
	ldr r0, [r2]
	ldrb r1, [r0, #5]
	movs r2, #0xc
	ands r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r7, _08026464 @ =0x080FB630
	adds r2, r2, r7
	b _0802648E
	.align 2, 0
_08026464: .4byte 0x080FB630
_08026468:
	adds r4, r4, r3
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #8
	adds r4, #0x70
	strh r3, [r4]
	ldr r0, [r2]
	ldrb r1, [r0, #5]
	movs r2, #0xc
	ands r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, _08026594 @ =0x080FB630
	adds r2, r2, r0
_0802648E:
	ldr r0, [r2]
	adds r3, r3, r0
	strh r3, [r4]
_08026494:
	movs r1, #0xd4
	mov r6, sl
	muls r6, r1, r6
	ldr r2, [sp, #0xf4]
	adds r7, r6, r2
	adds r4, r7, #0
	adds r4, #0x70
	ldrh r0, [r4]
	movs r5, #0x34
	mov r3, sl
	muls r3, r5, r3
	add r3, sp
	adds r3, #0x10
	adds r1, r2, #0
	adds r1, #0x72
	adds r1, r6, r1
	adds r2, #0x74
	adds r2, r6, r2
	ldr r3, [r3, #8]
	mov r8, r3
	movs r3, #1
	str r3, [sp]
	mov r3, r8
	bl sub_08004214
	adds r1, r7, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r0, _08026598 @ =0x03004650
	adds r6, r6, r0
	ldr r1, [r6]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldrh r2, [r4]
	adds r3, r7, #0
	adds r3, #0x72
	ldrh r3, [r3]
	movs r4, #0
	str r4, [sp]
	mov r4, sl
	muls r4, r5, r4
	mov r5, sp
	adds r5, r5, r4
	adds r5, #0x10
	mov r8, r5
	movs r7, #0x1c
	add r7, r8
	mov sb, r7
	str r7, [sp, #4]
	add r5, sp, #0x18
	adds r5, r5, r4
	ldr r4, [r5]
	str r4, [sp, #8]
	mov r7, r8
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
	ldr r0, [r5]
	bl sub_080044DC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, [r6]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r3, #0
	str r3, [sp]
	mov r4, sb
	str r4, [sp, #4]
	ldr r3, [r5]
	str r3, [sp, #8]
	ldr r3, [r7]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08004344
	movs r5, #1
	add sl, r5
_08026540:
	bl sub_08001EC4
	cmp sl, r0
	bhs _0802654A
	b _08026414
_0802654A:
	movs r7, #0
	str r7, [sp]
	ldr r0, [sp, #0x100]
	str r0, [sp, #4]
	ldr r1, [sp, #0xe4]
	ldr r0, [r1, #8]
	str r0, [sp, #8]
	ldr r0, [r1]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x96
	movs r2, #0x21
	movs r3, #0
	bl sub_08003518
	bl WaitFrame
	ldr r0, _0802659C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802657E
	b _080262DA
_0802657E:
	ldr r0, [sp, #0xe0]
	bl Free
	add sp, #0x108
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026594: .4byte 0x080FB630
_08026598: .4byte 0x03004650
_0802659C: .4byte gUnknown_030063D8
