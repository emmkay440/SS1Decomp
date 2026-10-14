	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08005278
sub_08005278: @ 0x08005278
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r1, _08005294 @ =gMapLayer_03003910
	movs r0, #1
	str r0, [r1, #0x78]
	movs r0, #0xa
	add r0, sp
	mov r8, r0
	b _0800529C
	.align 2, 0
_08005294: .4byte gMapLayer_03003910
_08005298:
	bl WaitFrame
_0800529C:
	ldr r0, _080052EC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080052B4
	bl sub_08007544
	cmp r0, #0
	beq _08005298
_080052B4:
	bl GetMultiplayerId
	str r0, [sp, #0xc]
	bl sub_08007544
	cmp r0, #0
	beq _080052F4
	ldr r3, _080052F0 @ =gPlayers
	movs r0, #0xd4
	ldr r1, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x58
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	add r1, sp, #8
	strh r0, [r1]
	adds r3, #0x5c
	adds r2, r2, r3
	ldr r0, [r2]
	asrs r0, r0, #0xf
	subs r0, #0xb
	mov r2, r8
	strh r0, [r2]
	b _080052FC
	.align 2, 0
_080052EC: .4byte gUnknown_030063D8
_080052F0: .4byte gPlayers
_080052F4:
	add r0, sp, #8
	mov r1, r8
	bl sub_080216E0
_080052FC:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0]
	subs r0, #0xf
	strh r0, [r1]
	mov r3, r8
	ldrh r0, [r3]
	subs r0, #0xb
	strh r0, [r3]
	bl WaitFrame
	bl WaitFrame
	ldr r4, _0800537C @ =gMapLayer_03003910
	ldr r1, [r4, #0x50]
	add r0, sp, #8
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	add r0, sp, #8
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	add r0, sp, #8
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_080046E4
	bl sub_08001F98
	cmp r0, #0
	bne _0800539E
	ldr r1, _08005380 @ =0x080FB0F8
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	cmp r0, r1
	bne _0800538C
	cmp r2, #8
	beq _08005384
	movs r0, #0xb
	bl PlayBGM
	b _0800539E
	.align 2, 0
_0800537C: .4byte gMapLayer_03003910
_08005380: .4byte 0x080FB0F8
_08005384:
	movs r0, #0xc
	bl PlayBGM
	b _0800539E
_0800538C:
	cmp r2, #8
	bhi _08005398
	adds r0, r2, #0
	bl PlayBGM
	b _0800539E
_08005398:
	movs r0, #8
	bl PlayBGM
_0800539E:
	ldr r1, _080053AC @ =gMapLayer_03003910
	mov sb, r1
	add r7, sp, #8
	ldr r2, _080053B0 @ =gPlayers
	str r2, [sp, #0x10]
	b _08005566
	.align 2, 0
_080053AC: .4byte gMapLayer_03003910
_080053B0: .4byte gPlayers
_080053B4:
	mov r3, sb
	ldr r0, [r3, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080053C2
	b _0800553C
_080053C2:
	bl sub_08001F98
	cmp r0, #0
	bne _080053D0
	movs r0, #2
	bl FadeOutBGM
_080053D0:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	ldr r0, _0800543C @ =0x000514C8
	bl _08000400
	mov r1, sb
	ldr r0, [r1, #0x78]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080053F4
	b _0800557E
_080053F4:
	bl sub_080074CC
	cmp r0, #0
	beq _080053FE
	b _0800557E
_080053FE:
	bl sub_08001F98
	cmp r0, #0
	bne _0800547A
	ldr r1, _08005440 @ =0x080FB0F8
	mov r0, sb
	adds r0, #0x68
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #1
	mov r1, sb
	adds r1, #0x6c
	ldrh r1, [r1]

_08005420:
	cmp r0, r1
	bne _08005468
	cmp r2, #8
	beq _08005448
	ldr r0, _08005444 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #1
	beq _0800546C
	movs r0, #0xb
	bl PlayBGM
	b _0800547A
	.align 2, 0
_0800543C: .4byte 0x000514C8
_08005440: .4byte 0x080FB0F8
_08005444: .4byte gUnknown_030063D8
_08005448:
	ldr r0, _0800545C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #1
	bne _08005460
	movs r0, #0xd
	bl PlayBGM
	b _0800547A
	.align 2, 0
_0800545C: .4byte gUnknown_030063D8
_08005460:
	movs r0, #0xc
	bl PlayBGM
	b _0800547A
_08005468:
	cmp r2, #8
	bhi _08005474
_0800546C:
	adds r0, r2, #0
	bl PlayBGM
	b _0800547A
_08005474:
	movs r0, #8
	bl PlayBGM
_0800547A:
	movs r0, #0xd4
	ldr r3, [sp, #0xc]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [sp, #0x10]
	adds r0, #0x58
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	strh r0, [r7]
	mov r2, r8
	ldr r0, _080055E8 @ =0x030045DC
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #0xf
	subs r0, #0xb
	strh r0, [r2]
	ldrh r1, [r7]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080054B0
	movs r0, #0
	strh r0, [r7]
_080054B0:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080054BE
	movs r0, #0
	strh r0, [r2]
_080054BE:
	ldrh r0, [r7]
	ldr r4, _080055EC @ =gMapLayer_03003910
	adds r1, r4, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	cmp r0, r1
	ble _080054D0
	strh r1, [r7]
_080054D0:
	adds r1, r4, #0
	adds r1, #0x5e
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080054E0
	movs r0, #0
	strh r0, [r1]
_080054E0:
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrh r0, [r0]
	subs r0, #0x14
	cmp r1, r0
	ble _080054F0
	strh r0, [r2]
_080054F0:
	ldr r1, [r4, #0x50]
	ldrh r2, [r7]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	ldrh r2, [r7]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	ldrh r2, [r7]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_080046E4
	movs r1, #1
	mov sl, r1
	ldr r0, [r4, #0x78]
	subs r1, #0xe
	ands r0, r1
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r1, [r1]
	bl sub_080045C8
	movs r0, #6
	bl sub_0800F308
_0800553C:
	movs r6, #1
	ldr r4, _080055F0 @ =0x0300396E
	subs r5, r4, #2
_08005542:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	mov r3, sl
	bl sub_08004AE4
	adds r6, #1
	cmp r6, #3
	bls _08005542
	movs r0, #0
	mov sl, r0
	bl sub_08004FB4
	bl WaitFrame
_08005566:
	mov r1, sb
	ldr r0, [r1, #0x78]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	bne _0800557E
	bl sub_080074CC
	adds r4, r0, #0
	cmp r4, #0
	bne _0800557E
	b _080053B4
_0800557E:
	movs r6, #1
	ldr r2, _080055EC @ =gMapLayer_03003910
	movs r7, #0
_08005584:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0800559E
	strh r7, [r1, #0xe]
	strh r7, [r1, #0xc]
	strh r7, [r1, #2]
	strh r7, [r1]
_0800559E:
	ldr r4, [r2, #0x78]
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _080055BE
	ldr r1, _080055F4 @ =gUnknown_03003C90
	lsls r0, r6, #2
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _080055BE
	str r2, [sp, #0x14]
	bl Free
	str r4, [r5]
	ldr r2, [sp, #0x14]
_080055BE:
	adds r6, #1
	cmp r6, #3
	bls _08005584
	ldr r4, _080055EC @ =gMapLayer_03003910
	ldr r0, [r4, #0x50]
	bl Free
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r4, #0x78]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080055E8: .4byte 0x030045DC
_080055EC: .4byte gMapLayer_03003910
_080055F0: .4byte 0x0300396E
_080055F4: .4byte gUnknown_03003C90

	thumb_func_start sub_080055F8
sub_080055F8: @ 0x080055F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08005614 @ =gMapLayer_03003C00
	movs r0, #1
	str r0, [r1, #0x78]
	movs r0, #2
	add r0, sp
	mov r8, r0
	b _0800561C
	.align 2, 0
_08005614: .4byte gMapLayer_03003C00
_08005618:
	bl WaitFrame
_0800561C:
	ldr r0, _0800566C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08005634
	bl sub_08007544
	cmp r0, #0
	beq _08005618
_08005634:
	bl GetMultiplayerId
	str r0, [sp, #4]
	bl sub_08007544
	cmp r0, #0
	beq _08005674
	ldr r3, _08005670 @ =gPlayers
	movs r0, #0xd4
	ldr r1, [sp, #4]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x58
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	mov r1, sp
	strh r0, [r1]
	adds r3, #0x5c
	adds r2, r2, r3
	ldr r0, [r2]
	asrs r0, r0, #0xf
	subs r0, #0xa
	mov r2, r8
	strh r0, [r2]
	b _0800567C
	.align 2, 0
_0800566C: .4byte gUnknown_030063D8
_08005670: .4byte gPlayers
_08005674:
	mov r0, sp
	mov r1, r8
	bl sub_080216E0
_0800567C:
	ldr r4, _080056C4 @ =gMapLayer_03003C00
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_0800481C
	bl sub_08001F98
	cmp r0, #0
	bne _080056BC
	movs r0, #0xa
	bl PlayBGM
_080056BC:
	ldr r1, _080056C8 @ =0x03003F88
	mov sb, r1
	b _080057EE
	.align 2, 0
_080056C4: .4byte gMapLayer_03003C00
_080056C8: .4byte 0x03003F88
_080056CC:
	ldr r0, [r4, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080057C4
	bl sub_08001F98
	cmp r0, #0
	bne _080056E4
	movs r0, #2
	bl FadeOutBGM
_080056E4:
	ldr r0, _0800586C @ =0x000514C9
	bl _08000400
	ldr r0, [r4, #0x78]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080056F6
	b _08005802
_080056F6:
	bl sub_080074CC
	adds r5, r0, #0
	cmp r5, #0
	beq _08005702
	b _08005802
_08005702:
	ldr r0, _08005870 @ =0x00120002
	bl GetDataRecord
	adds r1, r0, #0
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	mov r0, sb
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	mov r2, sb
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	lsls r0, r0, #0xa
	orrs r1, r0
	ldr r3, _08005874 @ =0x03002B32
	strh r1, [r3]
	movs r0, #0xd4
	ldr r2, [sp, #4]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r3, _08005878 @ =gPlayers
	adds r0, r1, r3
	strh r5, [r0, #0x16]
	mov r2, sp
	adds r0, r3, #0
	adds r0, #0x58
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	strh r0, [r2]
	ldr r0, _0800587C @ =0x030045DC
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #0xf
	subs r0, #0xa
	mov r1, r8
	strh r0, [r1]
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_0800481C
	movs r1, #1
	mov sl, r1
	bl sub_08001F98
	cmp r0, #0
	bne _080057A8
	movs r0, #0xa
	bl PlayBGM
_080057A8:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0
	bl sub_080045C8
	ldr r0, [r4, #0x78]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x78]
	movs r0, #6
	bl sub_0800F308
_080057C4:
	movs r6, #1
	ldr r5, _08005880 @ =0x03003C5E
	subs r7, r5, #2
_080057CA:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r5, r3]
	mov r3, sl
	bl sub_08004AE4
	adds r6, #1
	cmp r6, #3
	bls _080057CA
	movs r0, #0
	mov sl, r0
	bl sub_08004FB4
	bl WaitFrame
_080057EE:
	ldr r0, [r4, #0x78]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08005802
	bl sub_080074CC
	cmp r0, #0
	bne _08005802
	b _080056CC
_08005802:
	movs r6, #1
	ldr r2, _08005884 @ =gMapLayer_03003C00
	movs r7, #0
_08005808:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08005822
	strh r7, [r1, #0xe]
	strh r7, [r1, #0xc]
	strh r7, [r1, #2]
	strh r7, [r1]
_08005822:
	ldr r4, [r2, #0x78]
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _08005842
	ldr r1, _08005888 @ =gUnknown_03003C90
	lsls r0, r6, #2
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _08005842
	str r2, [sp, #8]
	bl Free
	str r4, [r5]
	ldr r2, [sp, #8]
_08005842:
	adds r6, #1
	cmp r6, #3
	bls _08005808
	ldr r4, _08005884 @ =gMapLayer_03003C00
	ldr r0, [r4, #0x50]
	bl Free
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r4, #0x78]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800586C: .4byte 0x000514C9
_08005870: .4byte 0x00120002
_08005874: .4byte 0x03002B32
_08005878: .4byte gPlayers
_0800587C: .4byte 0x030045DC
_08005880: .4byte 0x03003C5E
_08005884: .4byte gMapLayer_03003C00
_08005888: .4byte gUnknown_03003C90
