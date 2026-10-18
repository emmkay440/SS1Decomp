	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08023A94
sub_08023A94: @ 0x08023A94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x1c]
	ldr r1, _08023AB0 @ =0x080548C4
	add r0, sp, #0x10
	movs r2, #0xc
	bl memcpy
	b _08023E42
	.align 2, 0
_08023AB0: .4byte 0x080548C4
_08023AB4:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _08023ADE
	ldr r0, _08023AE8 @ =0x00018A92
	bl _08000400
	ldr r0, _08023AEC @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r0, #0x57
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	beq _08023ADE
	b _08023E4C
_08023ADE:
	ldr r1, _08023AF0 @ =0x0000FFE4
	mov sl, r1
	movs r2, #0x3c
	str r2, [sp, #0x20]
	b _08023CD8
	.align 2, 0
_08023AE8: .4byte 0x00018A92
_08023AEC: .4byte gPlayerStats
_08023AF0: .4byte 0x0000FFE4
_08023AF4:
	mov r3, r8
	asrs r4, r3, #0x10
	movs r0, #0x1c
	subs r0, r0, r4
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bgt _08023B0C
	movs r1, #1
_08023B0C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	asrs r0, r0, #0x10
	cmp r0, #0x1c
	ble _08023B22
	movs r2, #0x1c
	mov sl, r2
_08023B22:
	ldr r0, _08023BA0 @ =gKeysNew
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r1, r0
	ldr r0, _08023BA4 @ =gPlayerStats
	adds r0, #0x6c
	mov sb, r0
	cmp r1, #0
	beq _08023BD2
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _08023BC4
	ldr r5, _08023BA8 @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #5
	beq _08023BC4
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #2
	beq _08023BC4
	mov r2, sb
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08023B70
	strh r6, [r2]
_08023B70:
	bl sub_080140AC
	movs r3, #0x3c
	str r3, [sp, #0x20]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x14]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x12]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #3
	beq _08023BAC
	cmp r0, #4
	beq _08023BB8
	b _08023BC4
	.align 2, 0
_08023BA0: .4byte gKeysNew
_08023BA4: .4byte gPlayerStats
_08023BA8: .4byte gPlayers
_08023BAC:
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0xc]
	b _08023BC4
_08023BB8:
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #1
	strh r1, [r0, #0xc]
_08023BC4:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #0x57
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
_08023BD2:
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	bne _08023BE6
	movs r3, #0x3c
	str r3, [sp, #0x20]
	movs r0, #0x1c
	mov sl, r0
	mov r5, sp
	adds r5, #0x12
	b _08023C24
_08023BE6:
	movs r0, #0
	mov r1, sl
	lsls r1, r1, #0x10
	mov r5, sp
	adds r5, #0x12
	asrs r6, r1, #0x10
_08023BF2:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r6, r0
	adds r1, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	adds r2, #0x70
	ldr r3, _08023D00 @ =gPlayerStats
	adds r2, r3, r2
	movs r3, #8
	bl sub_08023048
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #2
	ble _08023BF2
_08023C24:
	mov r0, sl
	lsls r4, r0, #0x10
	asrs r7, r4, #0x10
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r5, _08023D04 @ =gUnknown_03006430
	adds r0, r7, r0
	adds r1, #0x28
	movs r3, #0
	mov sb, r3
	str r3, [sp]
	adds r6, r5, #0
	adds r6, #0x1c
	str r6, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #7
	bl sub_08003518
	mov r8, r4
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _08023C82
	mov r1, sb
	str r1, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	adds r0, r7, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #0
	bl sub_08003518
_08023C82:
	bl WaitFrame
	bl sub_080075AC
	cmp r0, #0
	beq _08023C90
	b _08023E0C
_08023C90:
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	beq _08023CD8
	bl sub_080077C0
	cmp r0, #0
	beq _08023CA0
	b _08023E0C
_08023CA0:
	bl sub_08007510
	cmp r0, #0
	beq _08023CAA
	b _08023E0C
_08023CAA:
	ldr r4, _08023D08 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08023CBE
	b _08023E0C
_08023CBE:
	bl sub_08007544
	cmp r0, #0
	bne _08023CD8
	ldr r0, _08023D0C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08023CD8
	b _08023E0C
_08023CD8:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	ldr r3, _08023D10 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	lsls r1, r1, #0x10
	mov r0, sl
	lsls r0, r0, #0x10
	mov r8, r0
	cmp r1, #0
	bgt _08023CF2
	b _08023E0C
_08023CF2:
	bl sub_080074CC
	adds r6, r0, #0
	cmp r6, #0
	bne _08023CFE
	b _08023AF4
_08023CFE:
	b _08023E0C
	.align 2, 0
_08023D00: .4byte gPlayerStats
_08023D04: .4byte gUnknown_03006430
_08023D08: .4byte gPlayers
_08023D0C: .4byte gUnknown_030063D8
_08023D10: .4byte 0xFFFF0000
_08023D14:
	bl sub_08007544
	cmp r0, #0
	bne _08023D2E
	ldr r0, _08023E5C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08023D2E
	b _08023E42
_08023D2E:
	bl sub_080075AC
	cmp r0, #0
	beq _08023D38
	b _08023E42
_08023D38:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r5, #0x1c
	rsbs r5, r5, #0
	subs r0, r5, r4
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _08023D54
	ldr r1, _08023E60 @ =0x0000FFFF
_08023D54:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	cmp r0, r5
	bge _08023D6A
	ldr r3, _08023E64 @ =0x0000FFE4
	mov sl, r3
_08023D6A:
	movs r0, #0
	ldr r1, _08023E68 @ =gPlayerStats
	adds r1, #0x6c
	mov sb, r1
	mov r2, sl
	lsls r2, r2, #0x10
	mov r8, r2
	mov r5, sp
	adds r5, #0x12
	asrs r6, r2, #0x10
_08023D7E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r6, r0
	adds r1, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	adds r2, #0x70
	ldr r3, _08023E68 @ =gPlayerStats
	adds r2, r3, r2
	movs r3, #8
	bl sub_08023048
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #2
	ble _08023D7E
	mov r0, r8
	asrs r6, r0, #0x10
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r4, _08023E6C @ =gUnknown_03006430
	adds r0, r6, r0
	adds r1, #0x28
	movs r7, #0
	str r7, [sp]
	adds r5, r4, #0
	adds r5, #0x1c
	str r5, [sp, #4]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08003518
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	beq _08023E08
	str r7, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #0
	bl sub_08003518
_08023E08:
	bl WaitFrame
_08023E0C:
	mov r0, r8
	asrs r1, r0, #0x10
	movs r0, #0x1c
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08023E42
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _08023D2E
	bl sub_080077C0
	cmp r0, #0
	bne _08023E42
	bl sub_08007510
	cmp r0, #0
	bne _08023E42
	ldr r4, _08023E70 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08023E42
	b _08023D14
_08023E42:
	bl sub_080074CC
	cmp r0, #0
	bne _08023E4C
	b _08023AB4
_08023E4C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023E5C: .4byte gUnknown_030063D8
_08023E60: .4byte 0x0000FFFF
_08023E64: .4byte 0x0000FFE4
_08023E68: .4byte gPlayerStats
_08023E6C: .4byte gUnknown_03006430
_08023E70: .4byte gPlayers
