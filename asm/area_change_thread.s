	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801AF3C
sub_0801AF3C: @ 0x0801AF3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl GetMultiplayerId
	mov sl, r0
	movs r1, #0xd4
	mov r0, sl
	muls r0, r1, r0
	mov r8, r0
	ldr r3, _0801AF60 @ =gPlayers
	add r3, r8
	mov sb, r3
	b _0801B158
	.align 2, 0
_0801AF60: .4byte gPlayers
_0801AF64:
	ldr r0, _0801AF80 @ =0x00000BB9
	bl _08000400
	bl sub_080074CC
	cmp r0, #0
	beq _0801AF76
	bl ThreadExit
_0801AF76:
	mov r5, sb
	ldrh r0, [r5, #0x16]
	cmp r0, #0
	beq _0801AFA4
	b _0801AF9C
	.align 2, 0
_0801AF80: .4byte 0x00000BB9
_0801AF84:
	bl sub_08007670
	cmp r0, #0
	beq _0801AF8E
	b _0801B162
_0801AF8E:
	bl sub_080074CC
	cmp r0, #0
	beq _0801AF98
	b _0801B162
_0801AF98:
	bl WaitFrame
_0801AF9C:
	bl sub_0800F298
	cmp r0, #0
	beq _0801AF84
_0801AFA4:
	ldr r4, _0801B008 @ =gUnknown_030063D8
	ldr r2, [r4]
	adds r3, r2, #0
	adds r3, #0x9c
	ldrh r1, [r3]
	ldr r5, _0801B00C @ =0x0000FFFD
	adds r0, r5, #0
	ands r1, r0
	movs r0, #0
	strh r1, [r3]
	str r0, [r2]
	str r0, [r2, #4]
	adds r2, #0x84
	strh r0, [r2]
	movs r2, #0
	movs r3, #0
_0801AFC4:
	ldr r0, [r4]
	lsls r1, r2, #2
	adds r0, #0xc
	adds r0, r0, r1
	str r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _0801AFC4
	bl sub_08013CE4
	ldr r0, _0801B008 @ =gUnknown_030063D8
	ldr r1, [r0]
	adds r1, #0x9c
	ldrh r2, [r1]
	movs r0, #4
	orrs r0, r2
	strh r0, [r1]
	mov r1, sb
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	bne _0801B018
	ldr r0, _0801B010 @ =gMapLayer_03003910
	adds r0, #0x6e
	ldrh r0, [r0]
	bl sub_080051B4
	movs r4, #0
	ldr r5, _0801B014 @ =0x0000012B
_0801AFFC:
	bl WaitFrame
	adds r4, #1
	cmp r4, r5
	bls _0801AFFC
	b _0801B080
	.align 2, 0
_0801B008: .4byte gUnknown_030063D8
_0801B00C: .4byte 0x0000FFFD
_0801B010: .4byte gMapLayer_03003910
_0801B014: .4byte 0x0000012B
_0801B018:
	bl sub_08027228
	ldr r0, _0801B050 @ =0x000514C8
	bl SignalEvent
	bl sub_08005F50
	movs r4, #0
_0801B028:
	bl sub_08007670
	cmp r0, #0
	beq _0801B032
	b _0801B162
_0801B032:
	bl sub_080074CC
	cmp r0, #0
	beq _0801B03C
	b _0801B162
_0801B03C:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x77
	bls _0801B028
	ldr r4, _0801B054 @ =gMapLayer_03003910
	adds r5, r4, #0
	adds r5, #0x6e
	b _0801B070
	.align 2, 0
_0801B050: .4byte 0x000514C8
_0801B054: .4byte gMapLayer_03003910
_0801B058:
	bl sub_08007670
	cmp r0, #0
	beq _0801B062
	b _0801B162
_0801B062:
	bl sub_080074CC
	cmp r0, #0
	beq _0801B06C
	b _0801B162
_0801B06C:
	bl WaitFrame
_0801B070:
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	ldrh r1, [r5]
	bl sub_08004DE0
	cmp r0, #0
	beq _0801B058
_0801B080:
	bl sub_08018940
	ldr r1, _0801B098 @ =gPlayers
	add r1, r8
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	beq _0801B09C
	adds r0, r1, #0
	movs r1, #0
	bl sub_080191FC
	b _0801B0A4
	.align 2, 0
_0801B098: .4byte gPlayers
_0801B09C:
	adds r0, r1, #0
	movs r1, #1
	bl sub_080191FC
_0801B0A4:
	movs r4, #0
	ldr r0, _0801B0B4 @ =gPlayers
	movs r7, #0
	movs r6, #0xa
	adds r5, r0, #0
	adds r5, #0xc
	b _0801B0C4
	.align 2, 0
_0801B0B4: .4byte gPlayers
_0801B0B8:
	cmp sl, r4
	beq _0801B0C0
	strh r6, [r5]
	strh r7, [r5, #4]
_0801B0C0:
	adds r5, #0xd4
	adds r4, #1
_0801B0C4:
	bl sub_08001EC4
	cmp r4, r0
	blo _0801B0B8
	ldr r0, _0801B0E0 @ =gMapLayer_03003910
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r1, #0x66
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	bl sub_0802934C
	b _0801B0FE
	.align 2, 0
_0801B0E0: .4byte gMapLayer_03003910
_0801B0E4:
	bl sub_08007670
	cmp r0, #0
	bne _0801B0F4
	bl sub_080074CC
	cmp r0, #0
	beq _0801B0FA
_0801B0F4:
	bl sub_080292D0
	b _0801B162
_0801B0FA:
	bl WaitFrame
_0801B0FE:
	ldr r0, [sp]
	cmp r0, #0
	bne _0801B0E4
	bl sub_08007544
	cmp r0, #0
	bne _0801B148
	ldr r4, _0801B13C @ =gPlayers
	add r4, r8
	strh r0, [r4, #0xc]
	bl sub_08007638
	cmp r0, #0
	beq _0801B11C
	movs r0, #1
_0801B11C:
	strh r0, [r4, #0x10]
	ldr r0, _0801B140 @ =gUnknown_030063D8
	ldr r2, [r0]
	adds r2, #0x9c
	ldrh r0, [r2]
	ldr r3, _0801B144 @ =0x0000FFFB
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	bl WaitFrame
	movs r0, #6
	bl sub_0800F308
	b _0801B158
	.align 2, 0
_0801B13C: .4byte gPlayers
_0801B140: .4byte gUnknown_030063D8
_0801B144: .4byte 0x0000FFFB
_0801B148:
	ldr r0, _0801B174 @ =gUnknown_030063D8
	ldr r2, [r0]
	adds r2, #0x9c
	ldrh r0, [r2]
	ldr r5, _0801B178 @ =0x0000FFFB
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r2]
_0801B158:
	bl sub_080074CC
	cmp r0, #0
	bne _0801B162
	b _0801AF64
_0801B162:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B174: .4byte gUnknown_030063D8
_0801B178: .4byte 0x0000FFFB
