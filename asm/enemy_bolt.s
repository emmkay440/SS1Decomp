	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08034F3C
sub_08034F3C: @ 0x08034F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	mov sl, r0
	str r1, [sp, #0x4c]
	ldr r1, _08035024 @ =0x00100004
	movs r6, #1
	rsbs r6, r6, #0
	add r0, sp, #0x10
	movs r2, #0
	adds r3, r6, #0
	bl sub_08026ADC
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	mov r0, sl
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x50]
	mov r1, sl
	ldr r1, [r1, #0x14]
	str r1, [sp, #0x54]
	ldr r0, [sp, #0x4c]
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	lsrs r0, r0, #5
	mov sb, r0
	movs r0, #0x1f
	ldr r1, [sp, #0x4c]
	ands r0, r1
	cmp r0, #0x10
	bls _08034F96
	movs r0, #1
	add sb, r0
_08034F96:
	mov r0, sb
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #8
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08034FB6
	mov r0, sb
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_08034FB6:
	mov r0, sb
	adds r0, #0x65
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r5, sp, #0x48
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x4a
	strh r2, [r4]
	bl sub_080076A8
	movs r2, #0x3c
	str r2, [sp, #0x58]
	cmp r0, #0
	beq _08034FDA
	movs r0, #0x5a
	str r0, [sp, #0x58]
_08034FDA:
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	ldr r2, _08035028 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	str r1, [sp, #0x58]
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _08034FEE
	b _0803520E
_08034FEE:
	bl sub_080076A8
	cmp r0, #0
	beq _08035030
	ldr r0, [sp, #0x4c]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _0803502C @ =0x0805289C
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #6
	ldr r2, [sp, #0x50]
	adds r2, r2, r0
	str r2, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #1
	ldr r2, _0803502C @ =0x0805289C
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #6
	ldr r2, [sp, #0x54]
	adds r2, r2, r0
	str r2, [sp, #0x54]
	b _0803505A
	.align 2, 0
_08035024: .4byte 0x00100004
_08035028: .4byte 0xFFFF0000
_0803502C: .4byte 0x0805289C
_08035030:
	ldr r0, [sp, #0x4c]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _080352AC @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	ldr r1, [sp, #0x50]
	adds r1, r1, r0
	str r1, [sp, #0x50]
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #1
	ldr r1, _080352AC @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	ldr r1, [sp, #0x54]
	adds r1, r1, r0
	str r1, [sp, #0x54]
_0803505A:
	ldr r2, [sp, #0x50]
	asrs r5, r2, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x44
	mov r7, sp
	adds r7, #0x46
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	mov r1, sb
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08026C40
	bl sub_080271D0
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	cmp r0, #0
	bne _080350E8
	bl sub_08007544
	cmp r0, #0
	bne _080350E8
	bl sub_08007510
	cmp r0, #0
	bne _080350E8
	bl sub_080075AC
	cmp r0, #0
	bne _080350E8
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	add r2, sp, #0x48
	ldrh r3, [r2]
	mov r2, r8
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sb
	bl sub_08004344
_080350E8:
	bl GetMultiplayerId
	ldr r6, _080352B0 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	ldr r0, [sp, #0x5c]
	subs r4, r0, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	ldr r2, [sp, #0x60]
	subs r1, r2, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _080351CA
	cmp r4, #7
	bhi _080351CA
	bl GetMultiplayerId
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r7, r6, #0
	adds r7, #0x80
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	beq _080351CA
	ldrh r0, [r2, #0xa]
	cmp r0, #8
	beq _080351CA
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080351CA
	bl sub_08007544
	cmp r0, #0
	bne _080351CA
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _080352B4 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	mov r0, sl
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_080351CA:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08035290
	bl sub_080074CC
	cmp r0, #0
	bne _08035290
	ldr r0, _080352B8 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035290
	bl sub_08007578
	cmp r0, #0
	bne _08035290
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	ldr r2, _080352BC @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	str r1, [sp, #0x58]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0803520E
	b _08034FEE
_0803520E:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0803521C
	rsbs r1, r1, #0
_0803521C:
	movs r0, #7
	ands r1, r0
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080352C0 @ =0x0000FFFF
	ldr r2, [sp, #0x50]
	asrs r2, r2, #0xc
	str r2, [sp, #0x5c]
	ldr r1, [sp, #0x54]
	asrs r1, r1, #0xc
	str r1, [sp, #0x60]
	cmp r4, r0
	beq _08035270
	adds r5, r0, #0
_0803523A:
	bl sub_08007750
	cmp r0, #0
	bne _08035270
	bl sub_080074CC
	cmp r0, #0
	bne _08035270
	ldr r0, _080352B8 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035270
	bl sub_08007578
	cmp r0, #0
	bne _08035270
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bne _0803523A
_08035270:
	bl sub_08007544
	cmp r0, #0
	bne _08035286
	bl sub_080075AC
	cmp r0, #0
	bne _08035286
	movs r0, #0x6a
	bl PlaySE
_08035286:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	movs r2, #7
	bl sub_08033E6C
_08035290:
	bl GetCurrentThread
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080352AC: .4byte 0x0805289C
_080352B0: .4byte gPlayers
_080352B4: .4byte 0x0000FFFE
_080352B8: .4byte gUnknown_030063D8
_080352BC: .4byte 0xFFFF0000
_080352C0: .4byte 0x0000FFFF
