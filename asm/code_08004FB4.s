	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08004FB4
sub_08004FB4: @ 0x08004FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	beq _08005078
	ldr r0, _0800506C @ =gMapLayer_03003C00
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r0, [r0]
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _08005070 @ =0x080FB0F8
	ldr r2, _08005074 @ =0x06007000
	mov sb, r2
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r6, r1, r2
	adds r7, r0, #4
	movs r5, #0
_08004FEC:
	ldrh r0, [r7]
	cmp r0, #0
	beq _0800503A
	ldr r2, _0800506C @ =gMapLayer_03003C00
	adds r0, r2, #0
	adds r0, #0x84
	adds r3, r5, r0
	ldrh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3]
	ldrh r0, [r7]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _08005024
	movs r4, #0
	strh r4, [r3]
	adds r0, r2, #0
	adds r0, #0x7c
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08005024
	strh r4, [r1]
_08005024:
	adds r0, r2, #0
	adds r0, #0x7c
	adds r0, r5, r0
	ldrh r0, [r0]
	lsls r0, r0, #8
	adds r0, r6, r0
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl QueueCopy
_0800503A:
	movs r0, #0x80
	lsls r0, r0, #3
	add sb, r0
	adds r6, r6, r0
	adds r7, #2
	adds r5, #2
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #3
	bls _08004FEC
	bl sub_0800F298
	cmp r0, #0
	bne _0800505A
	b _08005198
_0800505A:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	b _08005198
	.align 2, 0
_0800506C: .4byte gMapLayer_03003C00
_08005070: .4byte 0x080FB0F8
_08005074: .4byte 0x06007000
_08005078:
	ldr r0, _080050B8 @ =gMapLayer_03003910
	adds r5, r0, #0
	adds r5, #0x68
	ldrh r0, [r5]
	cmp r0, #0
	bne _08005086
	b _08005198
_08005086:
	cmp r0, #8
	bne _08005094
	bl sub_08007638
	cmp r0, #0
	beq _08005094
	b _08005198
_08005094:
	ldrh r0, [r5]
	cmp r0, #4
	bne _080050BC
	bl sub_08007510
	cmp r0, #0
	bne _080050DC
	movs r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #0x10
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	b _080050FE
	.align 2, 0
_080050B8: .4byte gMapLayer_03003910
_080050BC:
	cmp r0, #6
	bne _080050EE
	bl sub_08007510
	cmp r0, #0
	bne _080050DC
	movs r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #7
	bl sub_080044E4
	b _080050FE
_080050DC:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	b _080050FE
_080050EE:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
_080050FE:
	ldr r4, _080051A8 @ =gMapLayer_03003910
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r0, [r0]
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	mov r8, r0
	adds r7, r4, #0
	mov sl, r7
	ldr r2, _080051AC @ =0x06007000
	mov sb, r2
	adds r4, #0x7c
	movs r0, #0xe0
	lsls r0, r0, #7
	adds r6, r1, r0
	movs r5, #0
_08005124:
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r5, r0
	ldr r1, _080051B0 @ =0x080FB0FC
	adds r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #0
	beq _08005182
	adds r0, r7, #0
	adds r0, #0x84
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _08005166
	movs r1, #0
	strh r1, [r2]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08005166
	strh r1, [r4]
_08005166:
	mov r0, sl
	adds r0, #0x84
	adds r0, r5, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005182
	ldrh r0, [r4]
	lsls r0, r0, #8
	adds r0, r6, r0
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl QueueCopy
_08005182:
	movs r2, #0x80
	lsls r2, r2, #3
	add sb, r2
	adds r4, #2
	adds r6, r6, r2
	adds r5, #2
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	bls _08005124
_08005198:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080051A8: .4byte gMapLayer_03003910
_080051AC: .4byte 0x06007000
_080051B0: .4byte 0x080FB0FC

	thumb_func_start sub_080051B4
sub_080051B4: @ 0x080051B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08005214 @ =gMapLayer_03003910
	movs r1, #0x6c
	adds r1, r1, r7
	mov r8, r1
	strh r0, [r1]
	ldr r4, _08005218 @ =0x080FB0F8
	lsls r0, r0, #2
	adds r5, r7, #0
	adds r5, #0x68
	ldrh r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	adds r4, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetDataRecord
	adds r6, r7, #0
	adds r6, #0x8c
	str r0, [r6]
	ldr r0, [r7, #0x50]
	bl Free
	mov r3, r8
	ldrh r1, [r3]
	lsls r1, r1, #2
	ldrh r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r4
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _0800521C
	ldr r0, [r6]
	adds r0, #0x10
	str r0, [r7, #0x50]
	b _08005234
	.align 2, 0
_08005214: .4byte gMapLayer_03003910
_08005218: .4byte 0x080FB0F8
_0800521C:
	adds r4, r7, #0
	adds r5, r6, #0
_08005220:
	ldr r0, [r5]
	adds r0, #0x10
	bl LZ77DecompressAlloc
	str r0, [r4, #0x50]
	bl WaitFrame
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08005220
_08005234:
	ldr r4, _08005274 @ =gMapLayer_03003910
	ldr r2, [r4, #0x50]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r2, r0
	str r0, [r4, #0x54]
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	movs r3, #0
	strh r1, [r0]
	ldrh r0, [r2, #2]
	adds r1, r4, #0
	adds r1, #0x5a
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x5e
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005274: .4byte gMapLayer_03003910

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

	thumb_func_start sub_08005420
sub_08005420: @ 0x08005420
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

	thumb_func_start sub_0800588C
sub_0800588C: @ 0x0800588C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	ldr r1, [r0]
	lsls r1, r1, #4
	lsrs r5, r1, #0x10
	mov r2, sl
	ldr r1, [r2]
	lsls r1, r1, #4
	lsrs r4, r1, #0x10
	cmp r6, #0
	beq _08005930
	ldr r3, _0800592C @ =gMapLayer_03003C00
	ldr r2, [r3, #0x78]
	movs r1, #0x10
	ands r2, r1
	lsls r7, r5, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r2, #0
	bne _080058E2
	adds r2, r3, #0
	adds r2, #0x60
	asrs r1, r7, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x78
	adds r2, r3, #0
	adds r2, #0x5c
	strh r1, [r2]
	adds r2, #6
	asrs r1, r4, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x58
	adds r2, r3, #0
	adds r2, #0x5e
	strh r1, [r2]
_080058E2:
	adds r4, r3, #0
	adds r4, #0x5c
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080058F2
	movs r1, #0
	strh r1, [r4]
_080058F2:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _08005906
	strh r1, [r4]
_08005906:
	adds r4, r3, #0
	adds r4, #0x5e
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08005916
	movs r1, #0
	strh r1, [r4]
_08005916:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #3
	cmp r2, r1
	ble _080059FC
	b _080059FA
	.align 2, 0
_0800592C: .4byte gMapLayer_03003C00
_08005930:
	ldr r3, _080059D4 @ =gMapLayer_03003910
	ldr r1, [r3, #0x78]
	movs r2, #0x10
	mov ip, r2
	ands r1, r2
	lsls r7, r5, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r1, #0
	bne _08005966
	adds r2, r3, #0
	adds r2, #0x60
	asrs r1, r7, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x78
	adds r2, r3, #0
	adds r2, #0x5c
	strh r1, [r2]
	adds r2, #6
	asrs r1, r4, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x58
	adds r2, r3, #0
	adds r2, #0x5e
	strh r1, [r2]
_08005966:
	adds r5, r3, #0
	adds r5, #0x5c
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _08005974
	strh r6, [r5]
_08005974:
	movs r1, #0
	ldrsh r2, [r5, r1]
	adds r1, r3, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _08005988
	strh r1, [r5]
_08005988:
	adds r4, r3, #0
	adds r4, #0x5e
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08005996
	strh r6, [r4]
_08005996:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #3
	cmp r2, r1
	ble _080059AA
	strh r1, [r4]
_080059AA:
	ldr r1, [r3, #0x78]
	mov r2, ip
	ands r1, r2
	cmp r1, #0
	bne _080059D8
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r5]
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x64
	strh r1, [r2]
	subs r2, #2
	ldrh r1, [r4]
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x66
	strh r1, [r2]
	b _080059FC
	.align 2, 0
_080059D4: .4byte gMapLayer_03003910
_080059D8:
	adds r2, r3, #0
	adds r2, #0x60
	adds r1, r3, #0
	adds r1, #0x64
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	strh r1, [r5]
	movs r1, #0x62
	adds r1, r1, r3
	mov ip, r1
	adds r1, r3, #0
	adds r1, #0x66
	ldrh r1, [r1]
	mov r2, ip
	ldrh r2, [r2]
	adds r1, r1, r2
_080059FA:
	strh r1, [r4]
_080059FC:
	mov r3, sb
	ldr r2, [r3]
	ldr r1, _08005A28 @ =0x00000FFF
	ands r2, r1
	mov r4, sl
	ldr r3, [r4]
	ands r3, r1
	asrs r1, r7, #4
	adds r2, r2, r1
	mov r1, sb
	str r2, [r1]
	mov r2, r8
	asrs r1, r2, #4
	adds r3, r3, r1
	str r3, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005A28: .4byte 0x00000FFF

	thumb_func_start sub_08005A2C
sub_08005A2C: @ 0x08005A2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	asrs r1, r1, #0xf
	mov r8, r1
	asrs r2, r2, #0xf
	mov ip, r2
	cmp r3, #0
	beq _08005A90
	ldr r0, _08005A8C @ =gMapLayer_03003C00
	ldr r6, [r0, #0x54]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, #0x58
	ldrh r0, [r0]
	mov sb, r0
_08005A54:
	movs r1, #2
	rsbs r1, r1, #0
	adds r2, r3, #1
	mov r0, r8
	adds r4, r0, r3
	mov r7, sp
	adds r0, r7, r3
	adds r3, r0, #2
_08005A64:
	mov r7, ip
	adds r0, r7, r1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	strb r0, [r3]
	adds r3, #5
	adds r1, #1
	cmp r1, #2
	ble _08005A64
	adds r3, r2, #0
	cmp r3, #2
	ble _08005A54
	b _08005AD4
	.align 2, 0
_08005A8C: .4byte gMapLayer_03003C00
_08005A90:
	ldr r0, _08005AE8 @ =gMapLayer_03003910
	ldr r6, [r0, #0x54]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, #0x58
	ldrh r0, [r0]
	mov sb, r0
_08005A9E:
	movs r1, #2
	rsbs r1, r1, #0
	adds r2, r3, #1
	mov r0, r8
	adds r4, r0, r3
	mov r7, sp
	adds r0, r7, r3
	adds r3, r0, #2
_08005AAE:
	mov r7, ip
	adds r0, r7, r1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	strb r0, [r3]
	adds r3, #5
	adds r1, #1
	cmp r1, #2
	ble _08005AAE
	adds r3, r2, #0
	cmp r3, #2
	ble _08005A9E
_08005AD4:
	mov r0, sp
	ldrb r0, [r0, #0xc]
	cmp r0, #0xd
	bls _08005ADE
	b _08005ED8
_08005ADE:
	lsls r0, r0, #2
	ldr r1, _08005AEC @ =_08005AF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005AE8: .4byte gMapLayer_03003910
_08005AEC: .4byte _08005AF0
_08005AF0: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005B28 @ case 1
	.4byte _08005D1E @ case 2
	.4byte _08005D1E @ case 3
	.4byte _08005D54 @ case 4
	.4byte _08005D54 @ case 5
	.4byte _08005D88 @ case 6
	.4byte _08005D88 @ case 7
	.4byte _08005DC0 @ case 8
	.4byte _08005DC0 @ case 9
	.4byte _08005DF4 @ case 10
	.4byte _08005E28 @ case 11
	.4byte _08005E60 @ case 12
	.4byte _08005E98 @ case 13
_08005B28:
	cmp r5, #7
	bls _08005B2E
	b _08005ED8
_08005B2E:
	lsls r0, r5, #2
	ldr r1, _08005B38 @ =_08005B3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005B38: .4byte _08005B3C
_08005B3C: @ jump table
	.4byte _08005B5C @ case 0
	.4byte _08005C94 @ case 1
	.4byte _08005B98 @ case 2
	.4byte _08005CBE @ case 3
	.4byte _08005BEC @ case 4
	.4byte _08005CDE @ case 5
	.4byte _08005C44 @ case 6
	.4byte _08005CFE @ case 7
_08005B5C:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #1
	beq _08005B66
	b _08005ED0
_08005B66:
	mov r0, sp
	ldrb r0, [r0, #7]
	subs r0, #6
	cmp r0, #5
	bls _08005B72
	b _08005ED4
_08005B72:
	lsls r0, r0, #2
	ldr r1, _08005B7C @ =_08005B80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005B7C: .4byte _08005B80
_08005B80: @ jump table
	.4byte _08005D88 @ case 0
	.4byte _08005D88 @ case 1
	.4byte _08005DC0 @ case 2
	.4byte _08005DC0 @ case 3
	.4byte _08005DF4 @ case 4
	.4byte _08005E28 @ case 5
_08005B98:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	beq _08005BA4
_08005BA0:
	movs r0, #3
	b _08005EDA
_08005BA4:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	subs r0, #2
	cmp r0, #0xa
	bls _08005BB0
	b _08005ED4
_08005BB0:
	lsls r0, r0, #2
	ldr r1, _08005BBC @ =_08005BC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005BBC: .4byte _08005BC0
_08005BC0: @ jump table
	.4byte _08005D1E @ case 0
	.4byte _08005D1E @ case 1
	.4byte _08005ED4 @ case 2
	.4byte _08005ED4 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005DC0 @ case 6
	.4byte _08005DC0 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005E28 @ case 9
	.4byte _08005E60 @ case 10
_08005BEC:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #1
	beq _08005BF8
_08005BF4:
	movs r0, #5
	b _08005EDA
_08005BF8:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	subs r0, #2
	cmp r0, #0xb
	bls _08005C04
	b _08005ED4
_08005C04:
	lsls r0, r0, #2
	ldr r1, _08005C10 @ =_08005C14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005C10: .4byte _08005C14
_08005C14: @ jump table
	.4byte _08005D1E @ case 0
	.4byte _08005D1E @ case 1
	.4byte _08005D54 @ case 2
	.4byte _08005D54 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005ED4 @ case 6
	.4byte _08005ED4 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005ED4 @ case 9
	.4byte _08005E60 @ case 10
	.4byte _08005E98 @ case 11
_08005C44:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	beq _08005C50
_08005C4C:
	movs r0, #7
	b _08005EDA
_08005C50:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	subs r0, #4
	cmp r0, #9
	bls _08005C5C
	b _08005ED4
_08005C5C:
	lsls r0, r0, #2
	ldr r1, _08005C68 @ =_08005C6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005C68: .4byte _08005C6C
_08005C6C: @ jump table
	.4byte _08005D54 @ case 0
	.4byte _08005D54 @ case 1
	.4byte _08005D88 @ case 2
	.4byte _08005D88 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005DF4 @ case 6
	.4byte _08005ED4 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005E98 @ case 9
_08005C94:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08005C9E
	b _08005DBC
_08005C9E:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _08005CB2
	mov r0, sp
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08005CB0
	b _08005ED4
_08005CB0:
	b _08005DBC
_08005CB2:
	mov r0, sp
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08005CBC
	b _08005ED0
_08005CBC:
	b _08005DBC
_08005CBE:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08005CC8
	b _08005ECC
_08005CC8:
	mov r0, sp
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08005CD2
	b _08005ECC
_08005CD2:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08005CDC
	b _08005ED4
_08005CDC:
	b _08005BF4
_08005CDE:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08005CE8
	b _08005E94
_08005CE8:
	mov r0, sp
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _08005CF2
	b _08005E94
_08005CF2:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08005CFC
	b _08005ED4
_08005CFC:
	b _08005C4C
_08005CFE:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	bne _08005D08
	b _08005E5C
_08005D08:
	mov r0, sp
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _08005D12
	b _08005E5C
_08005D12:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08005D1C
	b _08005ED4
_08005D1C:
	b _08005C4C
_08005D1E:
	cmp r5, #7
	bls _08005D24
	b _08005ED8
_08005D24:
	lsls r0, r5, #2
	ldr r1, _08005D30 @ =_08005D34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D30: .4byte _08005D34
_08005D34: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005DBC @ case 2
	.4byte _08005DBC @ case 3
	.4byte _08005E94 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005D54:
	cmp r5, #7
	bls _08005D5A
	b _08005ED8
_08005D5A:
	lsls r0, r5, #2
	ldr r1, _08005D64 @ =_08005D68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D64: .4byte _08005D68
_08005D68: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ECC @ case 4
	.4byte _08005E5C @ case 5
	.4byte _08005E5C @ case 6
	.4byte _08005ED8 @ case 7
_08005D88:
	cmp r5, #7
	bls _08005D8E
	b _08005ED8
_08005D8E:
	lsls r0, r5, #2
	ldr r1, _08005D98 @ =_08005D9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D98: .4byte _08005D9C
_08005D9C: @ jump table
	.4byte _08005DBC @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005E94 @ case 6
	.4byte _08005E94 @ case 7
_08005DBC:
	movs r0, #2
	b _08005EDA
_08005DC0:
	cmp r5, #7
	bls _08005DC6
	b _08005ED8
_08005DC6:
	lsls r0, r5, #2
	ldr r1, _08005DD0 @ =_08005DD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005DD0: .4byte _08005DD4
_08005DD4: @ jump table
	.4byte _08005E5C @ case 0
	.4byte _08005ECC @ case 1
	.4byte _08005ECC @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005DF4:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E04 @ =_08005E08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E04: .4byte _08005E08
_08005E08: @ jump table
	.4byte _08005BA0 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005BF4 @ case 5
	.4byte _08005BF4 @ case 6
	.4byte _08005ED4 @ case 7
_08005E28:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E38 @ =_08005E3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E38: .4byte _08005E3C
_08005E3C: @ jump table
	.4byte _08005E5C @ case 0
	.4byte _08005ED4 @ case 1
	.4byte _08005BF4 @ case 2
	.4byte _08005BF4 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005E5C:
	movs r0, #8
	b _08005EDA
_08005E60:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E70 @ =_08005E74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E70: .4byte _08005E74
_08005E74: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED0 @ case 1
	.4byte _08005ED0 @ case 2
	.4byte _08005ED4 @ case 3
	.4byte _08005E94 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005E94:
	movs r0, #6
	b _08005EDA
_08005E98:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005EA8 @ =_08005EAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005EA8: .4byte _08005EAC
_08005EAC: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ECC @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005ED0 @ case 6
	.4byte _08005ED0 @ case 7
_08005ECC:
	movs r0, #4
	b _08005EDA
_08005ED0:
	movs r0, #1
	b _08005EDA
_08005ED4:
	movs r0, #0
	b _08005EDA
_08005ED8:
	adds r0, r5, #1
_08005EDA:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08005EE8:
	.byte 0x00, 0x04, 0x00, 0x0C, 0x81, 0x00, 0x09, 0x18
	.byte 0x89, 0x00, 0x05, 0x48, 0x09, 0x18, 0x88, 0x68, 0x00, 0x28, 0x04, 0xD0, 0x00, 0x20, 0xC8, 0x81
	.byte 0x88, 0x81, 0x48, 0x80, 0x08, 0x80, 0x70, 0x47, 0x10, 0x39, 0x00, 0x03, 0x00, 0x04, 0x00, 0x0C
	.byte 0x81, 0x00, 0x09, 0x18, 0x89, 0x00, 0x05, 0x48, 0x09, 0x18, 0x88, 0x68, 0x00, 0x28, 0x04, 0xD0
	.byte 0x00, 0x20, 0xC8, 0x81, 0x88, 0x81, 0x48, 0x80, 0x08, 0x80, 0x70, 0x47, 0x00, 0x3C, 0x00, 0x03
	.byte 0x06, 0x4A, 0x53, 0x6D, 0x00, 0x04, 0x09, 0x04, 0xC0, 0x14, 0xC9, 0x14, 0x58, 0x32, 0x12, 0x88
	.byte 0x51, 0x43, 0x40, 0x18, 0x40, 0x00, 0x1B, 0x18, 0x18, 0x1C, 0x70, 0x47, 0x10, 0x39, 0x00, 0x03
