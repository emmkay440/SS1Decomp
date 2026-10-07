	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800B4B4
sub_0800B4B4: @ 0x0800B4B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0800B550 @ =gEnemies
	ldr r0, [r0]
	mov r8, r0
	movs r0, #0
	mov sb, r0
	movs r1, #1
	mov sl, r1
_0800B4CE:
	ldr r0, _0800B554 @ =gFrameCounter
	ldr r1, [r0]
	mov r2, sl
	ands r1, r2
	mov r0, sb
	ands r0, r2
	cmp r1, r0
	bne _0800B570
	ldr r0, _0800B558 @ =gActiveEnemyMask
	mov r1, sl
	mov r2, sb
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0800B570
	mov r0, r8
	ldr r2, [r0, #0x10]
	ldr r0, [r7, #0x58]
	subs r2, r2, r0
	asrs r2, r2, #0xc
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	ldr r1, [r0, #0x14]
	ldr r0, [r7, #0x5c]
	subs r1, r1, r0
	asrs r1, r1, #0xc
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	mov r1, sb
	lsls r6, r1, #1
	adds r1, r7, #0
	adds r1, #0xae
	adds r1, r1, r6
	strh r0, [r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl ArcTan2
	lsls r3, r0, #0x10
	lsls r0, r3, #4
	lsrs r0, r0, #0x14
	movs r2, #0x80
	lsls r2, r2, #4
	cmp r0, r2
	bls _0800B55C
	adds r2, r7, #0
	adds r2, #0xb8
	adds r1, r2, r6
	lsrs r0, r3, #0x1c
	adds r0, #1
	b _0800B564
	.align 2, 0
_0800B550: .4byte gEnemies
_0800B554: .4byte gFrameCounter
_0800B558: .4byte gActiveEnemyMask
_0800B55C:
	adds r2, r7, #0
	adds r2, #0xb8
	adds r1, r2, r6
	lsrs r0, r3, #0x1c
_0800B564:
	strh r0, [r1]
	adds r2, r2, r6
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r2]
_0800B570:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0x94
	add r8, r0
	mov r1, sb
	cmp r1, #4
	bls _0800B4CE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B594
sub_0800B594: @ 0x0800B594
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0800B5FC @ =gEnemies
	ldr r0, [r0]
	mov sb, r0
	movs r0, #0
	mov sl, r0
_0800B5AA:
	ldr r0, _0800B600 @ =gFrameCounter
	ldr r1, [r0]
	movs r2, #1
	ands r1, r2
	mov r0, sl
	ands r0, r2
	cmp r1, r0
	beq _0800B5BC
	b _0800B758
_0800B5BC:
	ldr r0, _0800B604 @ =gActiveEnemyMask
	adds r1, r2, #0
	mov r2, sl
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0800B5CE
	b _0800B758
_0800B5CE:
	mov r0, sb
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0800B5E2
	ldr r0, _0800B608 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _0800B60C
_0800B5E2:
	mov r0, sb
	ldrh r1, [r0, #0xa]
	cmp r1, #8
	beq _0800B5F6
	ldrh r0, [r0, #0x26]
	ldrh r2, [r7, #0x16]
	cmp r0, r2
	bne _0800B5F6
	cmp r1, #9
	bne _0800B630
_0800B5F6:
	mov r1, sl
	lsls r0, r1, #1
	b _0800B620
	.align 2, 0
_0800B5FC: .4byte gEnemies
_0800B600: .4byte gFrameCounter
_0800B604: .4byte gActiveEnemyMask
_0800B608: .4byte 0x03003910
_0800B60C:
	mov r2, sb
	ldrh r0, [r2, #0xa]
	cmp r0, #0
	beq _0800B61C
	ldrh r0, [r2, #0x26]
	ldrh r1, [r7, #0x16]
	cmp r0, r1
	beq _0800B630
_0800B61C:
	mov r2, sl
	lsls r0, r2, #1
_0800B620:
	adds r1, r7, #0
	adds r1, #0xae
	adds r1, r1, r0
	ldr r0, _0800B62C @ =0x00007FFF
	strh r0, [r1]
	b _0800B758
	.align 2, 0
_0800B62C: .4byte 0x00007FFF
_0800B630:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, [r7, #0x58]
	subs r0, r0, r1
	asrs r3, r0, #0xc
	lsls r5, r3, #0x10
	lsrs r5, r5, #0x10
	mov r2, sb
	ldr r0, [r2, #0x14]
	ldr r1, [r7, #0x5c]
	subs r0, r0, r1
	asrs r2, r0, #0xc
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	adds r0, r3, #0
	muls r0, r3, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	mov r1, sl
	lsls r6, r1, #1
	adds r2, r7, #0
	adds r2, #0xae
	adds r2, r2, r6
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	strh r0, [r2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl ArcTan2
	lsls r3, r0, #0x10
	ldr r1, _0800B6A8 @ =0x080FB4B8
	mov r0, sb
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #8
	lsrs r4, r0, #1
	lsls r1, r3, #4
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _0800B6AC
	adds r2, r7, #0
	adds r2, #0xb8
	adds r1, r2, r6
	lsrs r0, r3, #0x1c
	adds r0, #1
	b _0800B6B4
	.align 2, 0
_0800B6A8: .4byte 0x080FB4B8
_0800B6AC:
	adds r2, r7, #0
	adds r2, #0xb8
	adds r1, r2, r6
	lsrs r0, r3, #0x1c
_0800B6B4:
	strh r0, [r1]
	adds r0, r2, r6
	ldrh r2, [r0]
	movs r1, #0xf
	ands r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	cmp r8, r4
	bhs _0800B758
	mov r1, r8
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r5, _0800B77C @ =0x0805289C
	ldr r0, _0800B780 @ =0x080FB730
	adds r0, r2, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	lsls r0, r1, #5
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, r8
	muls r2, r0, r2
	ldr r0, [r7, #0x58]
	adds r3, r3, r0
	ldr r0, [r7, #0x5c]
	adds r2, r2, r0
	ldr r0, _0800B784 @ =0x080FB720
	adds r1, r1, r0
	ldrb r6, [r1]
	movs r4, #0
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800B714
	movs r4, #1
_0800B714:
	adds r0, r6, #0
	adds r1, r3, #0
	adds r3, r4, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800B758
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0800B788 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r2, r8
	muls r2, r0, r2
	ldr r0, [r7, #0x58]
	adds r0, r0, r3
	str r0, [r7, #0x58]
	ldr r0, [r7, #0x5c]
	adds r0, r0, r2
	str r0, [r7, #0x5c]
_0800B758:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0x94
	add sb, r0
	mov r1, sl
	cmp r1, #4
	bhi _0800B76E
	b _0800B5AA
_0800B76E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B77C: .4byte 0x0805289C
_0800B780: .4byte 0x080FB730
_0800B784: .4byte 0x080FB720
_0800B788: .4byte 0x080FB9FC

	thumb_func_start sub_0800B78C
sub_0800B78C: @ 0x0800B78C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0800B89C @ =gPlayers
	adds r4, r1, r0
	ldr r5, [r4, #0x58]
	ldr r6, [r4, #0x5c]
	ldr r2, _0800B8A0 @ =0x080FB5D0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	mov ip, r0
	lsls r1, r0, #3
	adds r0, r1, r2
	ldr r0, [r0]
	muls r0, r7, r0
	adds r5, r5, r0
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	muls r0, r7, r0
	adds r6, r6, r0
	ldrh r0, [r4, #0xa]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r1, [r4, #0x10]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0800B7F8
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800B7E6
	movs r3, #1
_0800B7E6:
	mov r0, ip
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0800B890
_0800B7F8:
	cmp r3, #0
	beq _0800B800
	subs r0, r3, #1
	strh r0, [r4, #0xa]
_0800B800:
	ldr r5, [r4, #0x58]
	ldr r6, [r4, #0x5c]
	ldr r2, _0800B8A0 @ =0x080FB5D0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	mov ip, r0
	lsls r1, r0, #3
	adds r0, r1, r2
	ldr r0, [r0]
	muls r0, r7, r0
	adds r5, r5, r0
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	muls r0, r7, r0
	adds r6, r6, r0
	ldrh r1, [r4, #0x10]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	bne _0800B85C
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800B840
	movs r3, #1
_0800B840:
	mov r0, ip
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0800B860
	ldrh r1, [r4, #0x10]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0800B890
_0800B85C:
	cmp r3, #0
	beq _0800B864
_0800B860:
	subs r0, r3, #1
	strh r0, [r4, #0xa]
_0800B864:
	ldr r2, _0800B8A0 @ =0x080FB5D0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, #0
	muls r1, r7, r1
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, #0
	muls r1, r7, r1
	ldr r0, [r4, #0x5c]
	adds r0, r0, r1
	str r0, [r4, #0x5c]
_0800B890:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B89C: .4byte gPlayers
_0800B8A0: .4byte 0x080FB5D0

	thumb_func_start HudThread
HudThread: @ 0x0800B8A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	str r0, [sp, #0x70]
	bl GetPlayerClass
	cmp r0, #1
	beq _0800B8EC
	cmp r0, #1
	bgt _0800B8CA
	cmp r0, #0
	beq _0800B8D4
	mov r0, sp
	adds r0, #0x34
	str r0, [sp, #0x98]
	b _0800B900
_0800B8CA:
	mov r1, sp
	adds r1, #0x34
	str r1, [sp, #0x98]
	cmp r0, #3
	bgt _0800B900
_0800B8D4:
	movs r2, #0
	str r2, [sp, #0x78]
	add r4, sp, #0x34
	ldr r1, _0800B8E8 @ =0x00100040
	adds r0, r4, #0
	movs r3, #0
	bl sub_08026ADC
	b _0800B8FE
	.align 2, 0
_0800B8E8: .4byte 0x00100040
_0800B8EC:
	movs r3, #1
	str r3, [sp, #0x78]
	add r4, sp, #0x34
	ldr r1, _0800B934 @ =0x0010003F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08026ADC
_0800B8FE:
	str r4, [sp, #0x98]
_0800B900:
	bl sub_08026C78
	str r0, [sp, #0x74]
	movs r0, #0xa0
	lsls r0, r0, #3
	bl Alloc
	mov r8, r0
	ldr r0, [sp, #0x34]
	movs r2, #0xa0
	lsls r2, r2, #1
	mov r1, r8
	bl CpuFastSet
	mov r4, r8
	str r4, [sp, #0x34]
	ldr r6, _0800B938 @ =0x0000FFFF
	str r6, [sp, #0x80]
	str r6, [sp, #0x7c]
	str r6, [sp, #0x88]
	str r6, [sp, #0x84]
	mov r7, sp
	adds r7, #0x10
	str r7, [sp, #0x8c]
	b _0800BDFE
	.align 2, 0
_0800B934: .4byte 0x0010003F
_0800B938: .4byte 0x0000FFFF
_0800B93C:
	ldr r0, [sp, #0x70]
	adds r0, #0x7a
	str r0, [sp, #0xac]
	ldr r1, [sp, #0x7c]
	lsls r4, r1, #0x10
	ldr r2, [sp, #0x70]
	adds r2, #0x50
	str r2, [sp, #0xa8]
	ldr r3, [sp, #0x84]
	lsls r6, r3, #0x10
	b _0800B956
_0800B952:
	bl WaitFrame
_0800B956:
	bl sub_080075AC
	cmp r0, #0
	bne _0800B966
	bl sub_08007604
	cmp r0, #0
	beq _0800B976
_0800B966:
	bl sub_080074CC
	cmp r0, #0
	bne _0800B976
	bl sub_08007578
	cmp r0, #0
	beq _0800B952
_0800B976:
	asrs r5, r4, #0x10
	ldr r4, [sp, #0xac]
	movs r7, #0
	ldrsh r3, [r4, r7]
	adds r0, r5, #0
	eors r0, r3
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r2, r1, #0x1f
	asrs r0, r6, #0x10
	ldr r1, [sp, #0xa8]
	ldrh r4, [r1]
	movs r6, #0
	ldrsh r1, [r1, r6]
	cmp r0, r1
	beq _0800B998
	movs r2, #1
_0800B998:
	cmp r2, #0
	bne _0800B99E
	b _0800BB50
_0800B99E:
	cmp r3, r1
	ble _0800B9AE
	ldr r7, [sp, #0xac]
	strh r4, [r7]
	cmp r1, r5
	bge _0800B9AE
	ldrh r0, [r7]
	str r0, [sp, #0x7c]
_0800B9AE:
	ldr r1, [sp, #0xa8]
	ldrh r1, [r1]
	str r1, [sp, #0x84]
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _0800BA0C
	ldr r3, [sp, #0xac]
	ldrh r2, [r3]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bge _0800B9E8
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	cmp r3, #1
	ble _0800B9E0
	lsrs r0, r2, #0x1f
	adds r0, r3, r0
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
_0800B9E0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _0800BA04
_0800B9E8:
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	cmp r3, #1
	ble _0800B9FE
	lsrs r0, r2, #0x1f
	adds r0, r3, r0
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
_0800B9FE:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
_0800BA04:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	b _0800BA12
_0800BA0C:
	ldr r6, [sp, #0xac]
	ldrh r6, [r6]
	str r6, [sp, #0x7c]
_0800BA12:
	ldr r7, [sp, #0xac]
	movs r0, #0
	ldrsh r4, [r7, r0]
	ldr r2, [sp, #0x7c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, [sp, #0xa8]
	movs r6, #0
	ldrsh r1, [r3, r6]
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #0
	ble _0800BA3C
	cmp r3, #0
	bne _0800BA3C
	movs r3, #1
_0800BA3C:
	movs r2, #0
	lsrs r0, r3, #3
	cmp r2, r0
	bhs _0800BA78
	ldr r4, _0800BD70 @ =0x99999999
	adds r7, r0, #0
	mov r6, r8
	adds r6, #4
	mov r5, r8
	adds r5, #8
_0800BA50:
	adds r1, r2, #0
	adds r1, #9
	lsls r1, r1, #5
	adds r0, r6, r1
	str r4, [r0]
	adds r0, r5, r1
	str r4, [r0]
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r1
	str r4, [r0]
	mov r0, r8
	adds r0, #0x10
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r7
	blo _0800BA50
_0800BA78:
	movs r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0800BB1A
	ldr r4, [sp, #0x8c]
	str r0, [r4, #8]
	movs r0, #9
	ldr r7, [sp, #0x8c]
	str r0, [r7, #4]
	add r1, sp, #0x1c
	ldr r0, _0800BD74 @ =0x33333330
	str r0, [r1, #4]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	movs r5, #0
	ldr r0, [r7, #8]
	adds r6, r2, #0
	adds r6, #9
	movs r3, #4
	add r3, r8
	mov ip, r3
	movs r7, #8
	add r7, r8
	mov sl, r7
	mov r3, r8
	adds r3, #0xc
	str r3, [sp, #0x90]
	mov r7, r8
	adds r7, #0x10
	str r7, [sp, #0x94]
	adds r2, #1
	mov sb, r2
	cmp r5, r0
	bhs _0800BAE2
	adds r7, r1, #0
_0800BAC2:
	adds r3, r4, #0
	lsls r2, r5, #2
	ldr r1, [r4, #4]
	lsls r1, r2
	ldr r0, [sp, #0x10]
	orrs r0, r1
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	lsls r0, r2
	str r0, [sp, #0x1c]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r3, #8]
	cmp r5, r0
	blo _0800BAC2
_0800BAE2:
	lsls r2, r6, #5
	mov r0, ip
	adds r3, r0, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	mov r1, sl
	adds r3, r1, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	ldr r4, [sp, #0x90]
	adds r3, r4, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	ldr r6, [sp, #0x94]
	adds r2, r6, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r2]
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r2, r0, #0x10
_0800BB1A:
	cmp r2, #5
	bhi _0800BB50
	mov r7, r8
	adds r7, #4
	ldr r3, _0800BD78 @ =0x33333333
	mov r6, r8
	adds r6, #8
	mov r5, r8
	adds r5, #0xc
	mov r4, r8
	adds r4, #0x10
_0800BB30:
	adds r0, r2, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r1, r7, r0
	str r3, [r1]
	adds r1, r6, r0
	str r3, [r1]
	adds r1, r5, r0
	str r3, [r1]
	adds r0, r4, r0
	str r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #5
	bls _0800BB30
_0800BB50:
	ldr r0, [sp, #0x78]
	cmp r0, #0
	bne _0800BB58
	b _0800BCEA
_0800BB58:
	ldr r3, [sp, #0x70]
	adds r3, #0x78
	ldr r1, [sp, #0x80]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r5, [r3, r2]
	eors r0, r5
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r2, r1, #0x1f
	ldr r4, [sp, #0x70]
	adds r4, #0x4e
	ldr r6, [sp, #0x88]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r7, [r4]
	movs r6, #0
	ldrsh r1, [r4, r6]
	adds r6, r4, #0
	cmp r0, r1
	beq _0800BB86
	movs r2, #1
_0800BB86:
	cmp r2, #0
	bne _0800BB8C
	b _0800BCEA
_0800BB8C:
	cmp r5, r1
	ble _0800BB92
	strh r7, [r3]
_0800BB92:
	ldrh r0, [r3]
	str r0, [sp, #0x80]
	ldrh r6, [r6]
	str r6, [sp, #0x88]
	lsls r0, r0, #0x10
	ldr r3, [sp, #0x80]
	cmp r0, #0
	bgt _0800BBA4
	movs r3, #0
_0800BBA4:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	movs r7, #0
	ldrsh r1, [r4, r7]
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, [sp, #0xac]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0800BBC6
	cmp r3, #0
	bne _0800BBC6
	movs r3, #1
_0800BBC6:
	movs r2, #0
	lsrs r0, r3, #3
	cmp r2, r0
	bhs _0800BC08
	ldr r4, _0800BD7C @ =0xAAAAAAAA
	adds r6, r0, #0
	mov r5, r8
	adds r5, #0x18
_0800BBD6:
	adds r1, r2, #0
	adds r1, #9
	lsls r1, r1, #5
	adds r0, r5, r1
	str r4, [r0]
	mov r0, r8
	adds r0, #0x1c
	adds r0, r0, r1
	str r4, [r0]
	adds r1, r2, #0
	adds r1, #0x10
	lsls r1, r1, #5
	mov r0, r8
	adds r0, #0x20
	adds r0, r0, r1
	str r4, [r0]
	mov r0, r8
	adds r0, #0x24
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r6
	blo _0800BBD6
_0800BC08:
	movs r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0800BCAE
	ldr r4, [sp, #0x8c]
	str r0, [r4, #8]
	movs r0, #0xa
	str r0, [r4, #4]
	add r1, sp, #0x1c
	ldr r0, _0800BD74 @ =0x33333330
	str r0, [r1, #4]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	movs r5, #0
	ldr r0, [r4, #8]
	adds r6, r2, #0
	adds r6, #9
	adds r3, r2, #1
	mov sb, r3
	movs r7, #0x18
	add r7, r8
	mov ip, r7
	mov r3, r8
	adds r3, #0x1c
	str r3, [sp, #0x9c]
	adds r2, #0x10
	mov sl, r2
	mov r7, r8
	adds r7, #0x20
	str r7, [sp, #0xa0]
	mov r2, r8
	adds r2, #0x24
	str r2, [sp, #0xa4]
	cmp r5, r0
	bhs _0800BC72
	adds r7, r1, #0
_0800BC52:
	adds r3, r4, #0
	lsls r2, r5, #2
	ldr r1, [r4, #4]
	lsls r1, r2
	ldr r0, [sp, #0x10]
	orrs r0, r1
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	lsls r0, r2
	str r0, [sp, #0x1c]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r3, #8]
	cmp r5, r0
	blo _0800BC52
_0800BC72:
	lsls r2, r6, #5
	mov r4, ip
	adds r3, r4, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	ldr r6, [sp, #0x9c]
	adds r2, r6, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r2]
	mov r7, sl
	lsls r2, r7, #5
	ldr r0, [sp, #0xa0]
	adds r3, r0, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	ldr r1, [sp, #0xa4]
	adds r2, r1, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r2]
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
_0800BCAE:
	cmp r2, #5
	bhi _0800BCEA
	mov r7, r8
	adds r7, #0x18
	ldr r3, _0800BD78 @ =0x33333333
	mov r6, r8
	adds r6, #0x1c
	mov r5, r8
	adds r5, #0x20
	mov r4, r8
	adds r4, #0x24
_0800BCC4:
	adds r0, r2, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r1, r7, r0
	str r3, [r1]
	adds r0, r6, r0
	str r3, [r0]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #5
	adds r1, r5, r0
	str r3, [r1]
	adds r0, r4, r0
	str r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #5
	bls _0800BCC4
_0800BCEA:
	bl sub_08007510
	adds r3, r0, #0
	cmp r3, #0
	bne _0800BDBC
	ldr r4, [sp, #0x70]
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	beq _0800BDBC
	ldr r0, [r4, #0x58]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x5c]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x68
	mov r6, sp
	adds r6, #0x6a
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	bl sub_08016D4C
	ldrh r2, [r4, #0x14]
	cmp r0, r2
	bgt _0800BD80
	cmp r2, #0xf
	bhi _0800BDBC
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	beq _0800BDBC
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r0, #2
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #0x1c
	movs r3, #0
	bl sub_08026E70
	add r4, sp, #0x6c
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x74]
	movs r1, #0xc
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x6e
	bl sub_08026C40
	movs r7, #0
	ldrsh r1, [r5, r7]
	movs r0, #0
	ldrsh r2, [r6, r0]
	subs r2, #0x20
	ldrh r0, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x74]
	movs r3, #0xc
	bl sub_08026B90
	b _0800BDBC
	.align 2, 0
_0800BD70: .4byte 0x99999999
_0800BD74: .4byte 0x33333330
_0800BD78: .4byte 0x33333333
_0800BD7C: .4byte 0xAAAAAAAA
_0800BD80:
	ldr r1, [sp, #0x70]
	ldrh r0, [r1, #0xc]
	cmp r0, #5
	beq _0800BDBC
	cmp r2, #0
	bne _0800BD92
	ldrh r0, [r1, #0x12]
	cmp r0, #6
	bls _0800BDBC
_0800BD92:
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r0, #2
	movs r4, #0
	ldrsh r1, [r6, r4]
	subs r1, #0x1c
	movs r3, #0
	bl sub_08026E70
	movs r7, #0
	ldrsh r1, [r5, r7]
	movs r0, #0
	ldrsh r2, [r6, r0]
	subs r2, #0x20
	ldr r3, [sp, #0x70]
	ldrh r0, [r3, #0x12]
	str r0, [sp]
	ldr r0, [sp, #0x74]
	movs r3, #8
	bl sub_08026B90
_0800BDBC:
	ldr r4, [sp, #0x70]
	ldrh r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0800BDFA
	str r0, [sp]
	ldr r0, [sp, #0x98]
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_08026B90
	ldr r6, [sp, #0xa8]
	movs r7, #0
	ldrsh r2, [r6, r7]
	movs r0, #0x2e
	movs r1, #0xa
	movs r3, #0
	bl sub_08026E70
	ldr r0, [sp, #0xac]
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x18
	movs r1, #0xa
	movs r3, #0
	bl sub_08026E70
_0800BDFA:
	bl WaitFrame
_0800BDFE:
	bl sub_080074CC
	cmp r0, #0
	bne _0800BE10
	bl sub_08007578
	cmp r0, #0
	bne _0800BE10
	b _0800B93C
_0800BE10:
	ldr r0, [sp, #0x98]
	bl sub_08026B64
	mov r0, r8
	bl Free
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800BE2C
sub_0800BE2C: @ 0x0800BE2C
	push {r4, r5, r6, lr}
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0800BE88 @ =gPlayers
	adds r4, r1, r0
	movs r6, #0x50
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800BE7A
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	bne _0800BE7A
	adds r5, r4, #0
	adds r5, #0x72
_0800BE50:
	ldrh r1, [r5]
	cmp r6, r1
	beq _0800BE66
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800BE66
	ldrh r6, [r5]
	ldr r0, [r4, #0x7c]
	adds r0, #1
	str r0, [r4, #0x7c]
_0800BE66:
	bl WaitFrame
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800BE7A
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	beq _0800BE50
_0800BE7A:
	movs r0, #0
	strh r0, [r4, #0xc]
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800BE88: .4byte gPlayers

	thumb_func_start sub_0800BE8C
sub_0800BE8C: @ 0x0800BE8C
	push {r4, r5, r6, lr}
	bl GetMultiplayerId
	adds r6, r0, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r4, r0, #3
	ldr r5, _0800BEB4 @ =0x030044E0
	adds r0, r4, r5
	bl IsThreadInList
	cmp r0, #0
	beq _0800BEBC
	ldr r1, _0800BEB8 @ =gPlayers
	movs r0, #0xd4
	muls r0, r6, r0
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0xc]
	b _0800BF40
	.align 2, 0
_0800BEB4: .4byte 0x030044E0
_0800BEB8: .4byte gPlayers
_0800BEBC:
	bl sub_080102C4
	cmp r0, #2
	beq _0800BEE4
	cmp r0, #2
	bhi _0800BECE
	cmp r0, #1
	beq _0800BED4
	b _0800BF40
_0800BECE:
	cmp r0, #3
	beq _0800BEF4
	b _0800BF40
_0800BED4:
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _0800BEE0 @ =sub_0800C304
	b _0800BEFC
	.align 2, 0
_0800BEE0: .4byte sub_0800C304
_0800BEE4:
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _0800BEF0 @ =sub_0800C374
	b _0800BEFC
	.align 2, 0
_0800BEF0: .4byte sub_0800C374
_0800BEF4:
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _0800BF48 @ =sub_0800BE2C
_0800BEFC:
	str r1, [r0]
	ldr r5, _0800BF4C @ =0x030044E0
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x34
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0x10
	adds r1, r4, r1
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	adds r4, r4, r5
	adds r0, r4, #0
	bl CreateThread
_0800BF40:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF48: .4byte sub_0800BE2C
_0800BF4C: .4byte 0x030044E0

	thumb_func_start sub_0800BF50
sub_0800BF50: @ 0x0800BF50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _0800BFA4 @ =gPlayers
	adds r4, r1, r0
	adds r5, r4, #0
	adds r5, #0xd0
	ldr r1, [r5]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	mov r8, r0
	movs r0, #1
	add r8, r0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bne _0800BF8E
	ldrh r0, [r4]
	adds r1, r7, #0
	bl sub_0802D49C
_0800BF8E:
	movs r0, #0
	mov sl, r0
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r6, r5, #0
	adds r5, r4, #0
	adds r5, #0x76
	b _0800C020
	.align 2, 0
_0800BFA4: .4byte gPlayers
_0800BFA8:
	bl GetMultiplayerId
	cmp r0, sb
	bne _0800BFEE
	bl sub_080102C4
	ldr r3, [r6]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	movs r0, #2
	bl sub_0802C174
	ldr r3, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r3, #4]
	ldr r2, _0800C030 @ =0xFF807FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	movs r0, #5
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x7c]
	adds r0, #1
	str r0, [r4, #0x7c]
_0800BFEE:
	bl WaitFrame
	bl WaitFrame
	adds r1, r4, #0
	adds r1, #0x72
	movs r0, #0
	strh r0, [r1]
	strh r0, [r5]
	adds r1, #2
	strh r0, [r1]
	ldrh r0, [r4]

	non_word_aligned_thumb_func_start sub_0800C006
sub_0800C006: @ 0x0800C006
	adds r1, r7, #0
	bl sub_0802D49C
	movs r0, #1
	add sl, r0
	cmp sl, r8
	bhs _0800C044
_0800C014:
	bl WaitFrame
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
_0800C020:
	cmp r0, #5
	bne _0800C044
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800C014
	cmp r7, #2
	bne _0800BFA8
	b _0800C044
	.align 2, 0
_0800C030: .4byte 0xFF807FFF
_0800C034:
	bl GetMultiplayerId
	cmp r0, sb
	bne _0800C040
	movs r0, #5
	strh r0, [r4, #0xc]
_0800C040:
	bl WaitFrame
_0800C044:
	ldrh r0, [r5]
	cmp r0, #0
	bne _0800C056
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _0800C034
_0800C056:
	movs r5, #0
	b _0800C064
_0800C05A:
	bl WaitFrame
	adds r5, #1
	cmp r5, #9
	bhi _0800C070
_0800C064:
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _0800C05A
_0800C070:
	bl GetMultiplayerId
	cmp r0, sb
	bne _0800C088
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #7
	beq _0800C088
	movs r0, #0
	strh r0, [r4, #0xc]
_0800C088:
	movs r0, #0
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C09C
sub_0800C09C: @ 0x0800C09C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r4, r0, #3
	ldr r5, _0800C134 @ =0x030044E0
	adds r0, r4, r5
	bl IsThreadInList
	cmp r0, #0
	bne _0800C12C
	ldr r1, _0800C138 @ =gPlayers
	movs r0, #0xd4
	muls r0, r6, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800C0CC
	cmp r0, #2
	bne _0800C12C
_0800C0CC:
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _0800C13C @ =sub_0800BF50
	str r1, [r0]
	ldr r5, _0800C134 @ =0x030044E0
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x34
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0x10
	adds r1, r4, r1
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	adds r4, r4, r5
	ldr r1, _0800C138 @ =gPlayers
	movs r0, #0xd4
	muls r0, r6, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r2, [r0, #5]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1e
	adds r0, r4, #0
	adds r1, r6, #0
	bl CreateThread
_0800C12C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C134: .4byte 0x030044E0
_0800C138: .4byte gPlayers
_0800C13C: .4byte sub_0800BF50

	thumb_func_start sub_0800C140
sub_0800C140: @ 0x0800C140
	push {r4, r5, r6, lr}
	bl GetMultiplayerId
	adds r6, r0, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r4, r0, #3
	ldr r5, _0800C168 @ =0x030044E0
	adds r0, r4, r5
	bl IsThreadInList
	cmp r0, #0
	beq _0800C170
	ldr r1, _0800C16C @ =gPlayers
	movs r0, #0xd4
	muls r0, r6, r0
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0xc]
	b _0800C1D8
	.align 2, 0
_0800C168: .4byte 0x030044E0
_0800C16C: .4byte gPlayers
_0800C170:
	bl sub_080102C4
	cmp r0, #1
	beq _0800C17E
	cmp r0, #2
	beq _0800C18C
	b _0800C1D8
_0800C17E:
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _0800C188 @ =sub_0800C304
	b _0800C194
	.align 2, 0
_0800C188: .4byte sub_0800C304
_0800C18C:
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _0800C1E0 @ =sub_0800C374
_0800C194:
	str r1, [r0]
	ldr r5, _0800C1E4 @ =0x030044E0
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x34
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0x10
	adds r1, r4, r1
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	adds r4, r4, r5
	adds r0, r4, #0
	bl CreateThread
_0800C1D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C1E0: .4byte sub_0800C374
_0800C1E4: .4byte 0x030044E0

	thumb_func_start SpawnPlayer
SpawnPlayer: @ 0x0800C1E8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #1
	bl sub_080191FC
	movs r4, #0
	strh r4, [r6, #0x16]
	ldrh r1, [r5, #0x18]
	lsls r1, r1, #0xf
	str r1, [r6, #0x58]
	ldrh r0, [r5, #0x1a]
	adds r0, #2
	lsls r0, r0, #0xf
	str r0, [r6, #0x5c]
	adds r5, r6, #0
	adds r5, #0xd0
	ldr r3, [r5]
	lsrs r1, r1, #8
	ldrh r2, [r3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r3, [r5]
	ldr r1, [r6, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _0800C2B4 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	strh r4, [r6, #0xc]
	adds r0, r6, #0
	adds r0, #0x54
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r0, #4
	strh r0, [r6, #0xa]
	ldr r1, _0800C2B8 @ =0x03003C00
	adds r0, r1, #0
	adds r0, #0x5c
	strh r4, [r0]
	ldr r0, [r5]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	adds r1, #0x5e
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x4e
	ldrh r1, [r0]
	adds r0, #0x2a
	strh r1, [r0]
	movs r3, #0
	ldr r0, _0800C2BC @ =gPlayerStats
	subs r4, #0x71
	adds r2, r0, #0
	adds r2, #0x88
_0800C26E:
	ldrb r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0800C27E
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
_0800C27E:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x18
	bls _0800C26E
	movs r3, #0
	movs r1, #0
	ldr r0, [r6, #0x1c]
_0800C28C:
	strh r1, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #2
	bls _0800C28C
	bl sub_08021000
	ldr r2, _0800C2C0 @ =0x03003910
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r0, _0800C2C4 @ =0x000514C9
	bl SignalEvent
	bl sub_08007554
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C2B4: .4byte 0xFFFFF000
_0800C2B8: .4byte 0x03003C00
_0800C2BC: .4byte gPlayerStats
_0800C2C0: .4byte 0x03003910
_0800C2C4: .4byte 0x000514C9

	thumb_func_start sub_0800C2C8
sub_0800C2C8: @ 0x0800C2C8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800C2FC @ =0x030044B0
	movs r0, #0x34
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	ldr r1, _0800C300 @ =HudThread
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C2FC: .4byte 0x030044B0
_0800C300: .4byte HudThread

	thumb_func_start sub_0800C304
sub_0800C304: @ 0x0800C304
	push {r4, r5, lr}
	sub sp, #0x18
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0800C36C @ =gPlayers
	adds r4, r1, r0
	mov r1, sp
	ldr r0, _0800C370 @ =0x08052BC4
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldrh r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C352
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	bne _0800C352
	lsls r0, r1, #2
	mov r1, sp
	adds r5, r1, r0
_0800C338:
	ldr r0, [r5]
	bl sub_0800B78C
	bl WaitFrame
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C352
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	beq _0800C338
_0800C352:
	ldrh r0, [r4, #0xc]
	cmp r0, #7
	beq _0800C35C
	movs r0, #0
	strh r0, [r4, #0xc]
_0800C35C:
	movs r0, #0
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C36C: .4byte gPlayers
_0800C370: .4byte 0x08052BC4

	thumb_func_start sub_0800C374
sub_0800C374: @ 0x0800C374
	push {r4, r5, lr}
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0800C3BC @ =gPlayers
	adds r4, r1, r0
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800C3A4
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	bne _0800C3A4
	adds r5, r1, #0
_0800C394:
	bl WaitFrame
	ldrh r0, [r5]
	cmp r0, #0
	bne _0800C3A4
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	beq _0800C394
_0800C3A4:
	ldrh r0, [r4, #0xc]
	cmp r0, #7
	beq _0800C3AE
	movs r0, #0
	strh r0, [r4, #0xc]
_0800C3AE:
	movs r0, #0
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C3BC: .4byte gPlayers

	thumb_func_start sub_0800C3C0
sub_0800C3C0: @ 0x0800C3C0
	push {r4, r5, r6, r7, lr}
	ldr r5, _0800C450 @ =gEnemies
	movs r0, #0xb9
	lsls r0, r0, #2
	bl Alloc
	str r0, [r5]
	ldr r0, _0800C454 @ =gActiveEnemyMask
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800C458 @ =0x03005DD8
	strh r1, [r0]
	ldr r0, _0800C45C @ =gUnknown_03005DD4
	strh r1, [r0]
	ldr r4, _0800C460 @ =gUnknown_03004998
	movs r0, #0x80
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
	ldr r4, _0800C464 @ =0x03005DA0
	movs r0, #0xa0
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4]
	ldr r6, [r5]
	movs r7, #0
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0x64
_0800C3FE:
	adds r0, r7, #0
	bl sub_0802F0B8
	strh r5, [r6]
	strh r5, [r6, #8]
	strh r5, [r6, #0xa]
	strh r5, [r6, #0xc]
	str r5, [r6, #0x10]
	str r5, [r6, #0x14]
	strh r5, [r6, #0x28]
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	str r5, [r4, #0x28]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	adds r7, #1
	adds r4, #0x94
	adds r6, #0x94
	cmp r7, #4
	bls _0800C3FE
	movs r7, #0
	movs r1, #0
	ldr r0, _0800C468 @ =0x03005DB0
_0800C43C:
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0]
	adds r0, #0xc
	adds r7, #1
	cmp r7, #2
	bls _0800C43C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C450: .4byte gEnemies
_0800C454: .4byte gActiveEnemyMask
_0800C458: .4byte 0x03005DD8
_0800C45C: .4byte gUnknown_03005DD4
_0800C460: .4byte gUnknown_03004998
_0800C464: .4byte 0x03005DA0
_0800C468: .4byte 0x03005DB0

	thumb_func_start sub_0800C46C
sub_0800C46C: @ 0x0800C46C
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r5, _0800C4EC @ =0x03005DA0
_0800C472:
	ldr r0, _0800C4F0 @ =gUnknown_03005DD4
	ldrh r0, [r0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C48E
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r0, [r5]
	adds r0, r0, r1
	bl KillThread
_0800C48E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0800C472
	movs r4, #0
	ldr r5, _0800C4F4 @ =gActiveEnemyMask
_0800C49C:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r5]
	ands r0, r1
	cmp r0, #0
	beq _0800C4B6
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0800C4F8 @ =0x030048D0
	adds r0, r0, r1
	bl KillThread
_0800C4B6:
	adds r0, r4, #0
	bl sub_0802F100
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0800C49C
	ldr r6, _0800C4EC @ =0x03005DA0
	ldr r0, [r6]
	bl Free
	ldr r5, _0800C4FC @ =gEnemies
	ldr r0, [r5]
	bl Free
	ldr r4, _0800C500 @ =gUnknown_03004998
	ldr r0, [r4]
	bl Free
	movs r0, #0
	str r0, [r6]
	str r0, [r5]
	str r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C4EC: .4byte 0x03005DA0
_0800C4F0: .4byte gUnknown_03005DD4
_0800C4F4: .4byte gActiveEnemyMask
_0800C4F8: .4byte 0x030048D0
_0800C4FC: .4byte gEnemies
_0800C500: .4byte gUnknown_03004998

	thumb_func_start SpawnEnemy
SpawnEnemy: @ 0x0800C504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	movs r1, #0
	ldr r3, _0800C53C @ =gActiveEnemyMask
	movs r4, #1
	ldr r2, [r3]
_0800C51A:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0800C540
	adds r1, #1
	cmp r1, #4
	ble _0800C51A
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
_0800C530:
	ldr r1, [sp]
	cmp r1, #0
	bge _0800C544
	movs r0, #0
	b _0800C6FA
	.align 2, 0
_0800C53C: .4byte gActiveEnemyMask
_0800C540:
	str r1, [sp]
	b _0800C530
_0800C544:
	movs r1, #1
	ldr r2, [sp]
	lsls r1, r2
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	ldr r2, _0800C62C @ =gEnemies
	movs r0, #0x94
	ldr r3, [sp]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	mov r4, sb
	ldrb r5, [r4, #8]
	subs r4, r5, #1
	bl sub_080076A8
	cmp r0, #0
	beq _0800C56E
	adds r4, #0x47
_0800C56E:
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	movs r1, #0
	mov sl, r1
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r7]
	mov r3, sb
	ldr r1, [r3, #0xc]
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x18
	strh r1, [r7, #2]
	ldr r1, [r3, #8]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	lsls r1, r1, #0xc
	str r1, [r7, #0x10]
	ldrh r1, [r3, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	str r1, [r7, #0x14]
	ldr r1, [r3, #8]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	lsls r1, r1, #0xc
	str r1, [r7, #0x18]
	ldrh r1, [r3, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	str r1, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x64
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r4}
	stm r1!, {r2, r4}
	bl sub_08001EC4
	adds r4, r0, #0
	subs r4, #1
	lsls r4, r4, #0x10
	adds r6, r7, #0
	adds r6, #0x6e
	ldrh r5, [r6]
	ldr r3, _0800C630 @ =0x080FB740
	mov r8, r3
	lsrs r4, r4, #0xe
	mov r0, r8
	adds r0, #2
	adds r0, r4, r0
	ldrh r0, [r0]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r5, r0
	strh r5, [r6]
	adds r6, #4
	ldrh r5, [r6]
	add r4, r8
	ldrh r0, [r4]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r5, r0
	strh r5, [r6]
	mov r4, sb
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	cmp r0, #0x14
	ble _0800C638
	mov r0, sl
	strh r0, [r7, #0x28]
	mov r1, sl
	str r1, [r7, #0x30]
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x17
	strh r0, [r7, #0x28]
	ldr r0, _0800C634 @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	b _0800C648
	.align 2, 0
_0800C62C: .4byte gEnemies
_0800C630: .4byte 0x080FB740
_0800C634: .4byte 0x03003910
_0800C638:
	strh r0, [r7, #0x26]
	mov r2, sl
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	strh r2, [r7, #0x2a]
	mov r3, sl
	str r3, [r7, #0x30]
_0800C648:
	mov r4, sb
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	movs r4, #0
	strh r0, [r7, #8]
	strh r4, [r7, #0x36]
	strh r4, [r7, #0x3e]
	adds r0, r7, #0
	adds r0, #0x40
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldrh r0, [r6]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	ldr r1, [sp]
	lsls r0, r1, #0x18
	str r0, [r7, #0x2c]
	str r4, [r7, #0x54]
	str r4, [r7, #0x58]
	str r4, [r7, #0x5c]
	str r4, [r7, #0x60]
	strh r4, [r7, #0x3c]
	strh r4, [r7, #0x20]
	ldrh r0, [r7]
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x50
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r3, _0800C70C @ =gPlayers
	ldrh r1, [r7]
	lsls r1, r1, #1
	movs r2, #0xd4
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0xae
	adds r1, r1, r3
	ldr r0, _0800C710 @ =0x0000FFFF
	strh r0, [r1]
	ldr r5, _0800C714 @ =0x030048D0
	ldr r2, [sp]
	lsls r3, r2, #2
	adds r3, r3, r2
	lsls r3, r3, #3
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, _0800C718 @ =EnemyThread
	str r1, [r0]
	adds r2, r5, #0
	adds r2, #0x10
	adds r2, r3, r2
	ldr r1, [sp]
	lsls r0, r1, #0xa
	ldr r1, _0800C71C @ =0x03004D9C
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r5, #0
	adds r0, #0x20
	adds r0, r3, r0
	str r4, [r0]
	adds r0, r5, #0
	adds r0, #8
	adds r0, r3, r0
	movs r1, #0x3c
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x18
	adds r0, r3, r0
	str r4, [r0]
	adds r0, r3, r5
	str r4, [r0]
	adds r1, r5, #0
	adds r1, #0x24
	adds r3, r3, r1
	str r4, [r3]
	adds r1, r7, #0
	bl CreateThread
	movs r0, #1
_0800C6FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C70C: .4byte gPlayers
_0800C710: .4byte 0x0000FFFF
_0800C714: .4byte 0x030048D0
_0800C718: .4byte EnemyThread
_0800C71C: .4byte 0x03004D9C

	thumb_func_start sub_0800C720
sub_0800C720: @ 0x0800C720
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r4, #0
	ldr r3, _0800C7B8 @ =gActiveEnemyMask
	movs r2, #1
	ldr r1, [r3]
_0800C72C:
	adds r0, r2, #0
	lsls r0, r4
	ands r0, r1
	cmp r0, #0
	beq _0800C7C8
	adds r4, #1
	cmp r4, #4
	ble _0800C72C
	movs r2, #1
	rsbs r2, r2, #0
_0800C740:
	cmp r2, #0
	blt _0800C7CC
	movs r1, #1
	lsls r1, r2
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0800C7BC @ =gEnemies
	movs r0, #0x94
	muls r0, r2, r0
	ldr r5, [r1]
	adds r5, r5, r0
	movs r6, #0
	strh r2, [r5]
	lsls r0, r2, #0x18
	str r0, [r5, #0x2c]
	ldr r7, _0800C7C0 @ =0x030048D0
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r0, r7, #0
	adds r0, #0xc
	adds r0, r4, r0
	mov r1, ip
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	bl Alloc
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r0, [r1]
	adds r1, r7, #0
	adds r1, #0x10
	adds r1, r4, r1
	ldr r2, _0800C7C4 @ =0x000007FC
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x3c
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x18
	adds r0, r4, r0
	str r6, [r0]
	adds r0, r4, r7
	str r6, [r0]
	adds r1, r7, #0
	adds r1, #0x24
	adds r4, r4, r1
	str r6, [r4]
	adds r1, r5, #0
	bl CreateThread
	movs r0, #1
	b _0800C7CE
	.align 2, 0
_0800C7B8: .4byte gActiveEnemyMask
_0800C7BC: .4byte gEnemies
_0800C7C0: .4byte 0x030048D0
_0800C7C4: .4byte 0x000007FC
_0800C7C8:
	adds r2, r4, #0
	b _0800C740
_0800C7CC:
	movs r0, #0
_0800C7CE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C7D4
sub_0800C7D4: @ 0x0800C7D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0
	ldr r2, _0800C7E8 @ =gUnknown_03005DD4
	ldrh r0, [r2]
	movs r1, #1
	b _0800C7FA
	.align 2, 0
_0800C7E8: .4byte gUnknown_03005DD4
_0800C7EC:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bhi _0800C804
	ldrh r0, [r2]
	asrs r0, r6
_0800C7FA:
	ands r0, r1
	cmp r0, #0
	bne _0800C7EC
	cmp r6, #0xf
	bls _0800C80A
_0800C804:
	movs r0, #1
	rsbs r0, r0, #0
	b _0800C8E2
_0800C80A:
	ldr r3, _0800C87C @ =gUnknown_03004998
	ldr r1, [r3]
	lsls r2, r6, #4
	adds r1, r2, r1
	mov r0, r8
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r3]
	adds r2, r2, r0
	ldr r0, [r2, #0xc]
	lsrs r0, r0, #0xe
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _0800C892
	ldr r0, _0800C880 @ =gEnemies
	ldr r1, [r0]
	movs r2, #0
	ldr r0, _0800C884 @ =gActiveEnemyMask
	movs r5, #1
	ldr r4, [r0]
_0800C838:
	adds r0, r5, #0
	lsls r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0800C848
	ldrh r0, [r1, #2]
	cmp r0, r3
	beq _0800C88C
_0800C848:
	adds r2, #1
	adds r1, #0x94
	cmp r2, #4
	bls _0800C838
	movs r2, #0
	ldr r0, _0800C888 @ =gUnknown_03005DD4
	ldrh r4, [r0]
	movs r7, #1
	ldr r5, _0800C87C @ =gUnknown_03004998
_0800C85A:
	adds r0, r4, #0
	asrs r0, r2
	ands r0, r7
	cmp r0, #0
	beq _0800C874
	ldr r0, [r5]
	lsls r1, r2, #4
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	cmp r0, r3
	beq _0800C88C
_0800C874:
	adds r2, #1
	cmp r2, #0xf
	bls _0800C85A
	b _0800C892
	.align 2, 0
_0800C87C: .4byte gUnknown_03004998
_0800C880: .4byte gEnemies
_0800C884: .4byte gActiveEnemyMask
_0800C888: .4byte gUnknown_03005DD4
_0800C88C:
	movs r0, #2
	rsbs r0, r0, #0
	b _0800C8E2
_0800C892:
	ldr r5, _0800C8EC @ =0x03005DA0
	ldr r1, [r5]
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r1, r4, r1
	ldr r0, _0800C8F0 @ =sub_0800EAD8
	str r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	mov r5, r8
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	adds r0, #0x96
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x18]
	str r0, [r4]
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl CreateThread
	ldr r2, _0800C8F4 @ =gUnknown_03005DD4
	movs r0, #1
	lsls r0, r6
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
_0800C8E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C8EC: .4byte 0x03005DA0
_0800C8F0: .4byte sub_0800EAD8
_0800C8F4: .4byte gUnknown_03005DD4

	thumb_func_start sub_0800C8F8
sub_0800C8F8: @ 0x0800C8F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	str r1, [sp, #0x20]
	bl sub_08001EC4
	mov ip, r0
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	mov sl, r0
	ldr r0, [r7, #0x14]
	asrs r0, r0, #0xc
	mov sb, r0
	movs r3, #0
	cmp r3, ip
	bhs _0800C97E
	mov r8, r3
	mov r6, sp
_0800C924:
	movs r0, #0xd4
	muls r0, r3, r0
	ldr r1, _0800C964 @ =0x03004650
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _0800C968
	ldrh r1, [r7, #0x26]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0800C968
	ldrh r0, [r2]
	lsrs r0, r0, #4
	mov r1, sl
	subs r4, r1, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r1, sb
	subs r5, r1, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	b _0800C96A
	.align 2, 0
_0800C964: .4byte 0x03004650
_0800C968:
	ldr r0, _0800C9D4 @ =0x7FFFFFFF
_0800C96A:
	str r0, [r6]
	add r0, sp, #4
	add r0, r8
	str r3, [r0]
	movs r0, #8
	add r8, r0
	adds r6, #8
	adds r3, #1
	cmp r3, ip
	blo _0800C924
_0800C97E:
	movs r3, #0
	cmp r3, ip
	bhs _0800C9BE
_0800C984:
	adds r7, r3, #1
	adds r5, r7, #0
	cmp r7, ip
	bhs _0800C9B8
	lsls r0, r3, #3
	mov r1, sp
	adds r6, r1, r0
	add r1, sp, #4
	adds r4, r1, r0
	lsls r0, r7, #3
	mov r1, sp
	adds r2, r0, r1
_0800C99C:
	ldr r3, [r6]
	ldr r0, [r2]
	cmp r3, r0
	ble _0800C9B0
	ldr r1, [r4]
	str r0, [r6]
	ldr r0, [r2, #4]
	str r0, [r4]
	str r3, [r2]
	str r1, [r2, #4]
_0800C9B0:
	adds r2, #8
	adds r5, #1
	cmp r5, ip
	blo _0800C99C
_0800C9B8:
	adds r3, r7, #0
	cmp r3, ip
	blo _0800C984
_0800C9BE:
	ldr r0, [sp]
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x20]
	cmp r0, r1
	bgt _0800C9D8
	ldr r0, [sp, #4]
	b _0800C9DA
	.align 2, 0
_0800C9D4: .4byte 0x7FFFFFFF
_0800C9D8:
	movs r0, #0xa
_0800C9DA:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800C9EC
sub_0800C9EC: @ 0x0800C9EC
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #4
	lsls r1, r1, #4
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r1, r3, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r3, r0, #0x10
	mov ip, r3
	asrs r0, r0, #0x10
	subs r2, r2, r0
	cmp r2, #0
	bge _0800CA12
	rsbs r2, r2, #0
_0800CA12:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	lsls r5, r1, #0x10
	lsls r3, r6, #0x10
	cmp r2, r4
	bgt _0800CA2E
	asrs r1, r5, #0x10
	asrs r0, r3, #0x10
	subs r1, r1, r0
	cmp r1, #0
	bge _0800CA2A
	rsbs r1, r1, #0
_0800CA2A:
	cmp r1, r4
	ble _0800CAB8
_0800CA2E:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r5, #0x10
	asrs r2, r3, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _0800CA64
	cmp r2, #6
	bhi _0800CA62
	adds r2, #1
	b _0800CA64
_0800CA62:
	movs r2, #0
_0800CA64:
	cmp r2, #7
	bhi _0800CAB8
	lsls r0, r2, #2
	ldr r1, _0800CA74 @ =_0800CA78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CA74: .4byte _0800CA78
_0800CA78: @ jump table
	.4byte _0800CA98 @ case 0
	.4byte _0800CA9C @ case 1
	.4byte _0800CAA0 @ case 2
	.4byte _0800CAA4 @ case 3
	.4byte _0800CAA8 @ case 4
	.4byte _0800CAAC @ case 5
	.4byte _0800CAB0 @ case 6
	.4byte _0800CAB4 @ case 7
_0800CA98:
	movs r0, #0x10
	b _0800CABA
_0800CA9C:
	movs r0, #0x90
	b _0800CABA
_0800CAA0:
	movs r0, #0x80
	b _0800CABA
_0800CAA4:
	movs r0, #0xa0
	b _0800CABA
_0800CAA8:
	movs r0, #0x20
	b _0800CABA
_0800CAAC:
	movs r0, #0x60
	b _0800CABA
_0800CAB0:
	movs r0, #0x40
	b _0800CABA
_0800CAB4:
	movs r0, #0x50
	b _0800CABA
_0800CAB8:
	movs r0, #0
_0800CABA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800CAC0
sub_0800CAC0: @ 0x0800CAC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r4, #0
	ldr r0, _0800CB10 @ =0x03005DA8
	mov sl, r0
	mov r3, sl
	movs r2, #0
_0800CADE:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0800CB18
	ldr r1, _0800CB14 @ =0x03005DB0
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, ip
	bne _0800CB18
	adds r0, r1, #4
	adds r0, r2, r0
	ldr r0, [r0]
	ldr r5, [sp]
	cmp r0, r5
	bne _0800CB18
	adds r0, r1, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	b _0800CB54
	.align 2, 0
_0800CB10: .4byte 0x03005DA8
_0800CB14: .4byte 0x03005DB0
_0800CB18:
	adds r2, #0xc
	adds r4, #1
	cmp r4, #2
	bls _0800CADE
	movs r4, #0
	ldr r7, _0800CB5C @ =0x03005DA8
	mov sb, r7
	movs r6, #1
	ldr r3, _0800CB60 @ =0x03005DB0
	movs r5, #0
	adds r0, r3, #4
	mov r8, r0
_0800CB30:
	adds r1, r6, #0
	lsls r1, r4
	mov r7, sb
	ldr r2, [r7]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0800CB64
	mov r0, ip
	str r0, [r3]
	mov r7, r8
	adds r0, r5, r7
	ldr r5, [sp]
	str r5, [r0]
	str r6, [r3, #8]
	orrs r2, r1
	mov r7, sl
	str r2, [r7]
_0800CB54:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	b _0800CB70
	.align 2, 0
_0800CB5C: .4byte 0x03005DA8
_0800CB60: .4byte 0x03005DB0
_0800CB64:
	adds r3, #0xc
	adds r5, #0xc
	adds r4, #1
	cmp r4, #2
	bls _0800CB30
	ldr r0, _0800CB80 @ =0x0000FFFF
_0800CB70:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800CB80: .4byte 0x0000FFFF

	thumb_func_start sub_0800CB84
sub_0800CB84: @ 0x0800CB84
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r7, _0800CBC4 @ =0x03005DA8
	movs r6, #1
	lsls r6, r1
	ldr r4, [r7]
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _0800CBD0
	ldr r5, _0800CBC8 @ =0x03005DB0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #2
	adds r0, r5, #0
	adds r0, #8
	adds r3, r2, r0
	ldr r0, [r3]
	cmp r0, #1
	bhi _0800CBCC
	adds r0, r2, r5
	movs r1, #0
	str r1, [r0]
	adds r0, r5, #4
	adds r0, r2, r0
	str r1, [r0]
	str r1, [r3]
	bics r4, r6
	str r4, [r7]
	b _0800CBD0
	.align 2, 0
_0800CBC4: .4byte 0x03005DA8
_0800CBC8: .4byte 0x03005DB0
_0800CBCC:
	subs r0, #1
	str r0, [r3]
_0800CBD0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyThread
EnemyThread: @ 0x0800CBD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x104
	adds r7, r0, #0
	ldrh r0, [r7, #0x38]
	ldrh r1, [r7, #0x28]
	cmp r0, r1
	bhi _0800CBF4
	movs r0, #8
	strh r0, [r7, #0xa]
	b _0800CC58
_0800CBF4:
	add r5, sp, #0x14
	ldr r1, _0800CC34 @ =0x00100005
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r5, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_08026ADC
	add r4, sp, #0x48
	ldr r1, _0800CC38 @ =0x00100004
	adds r0, r4, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_08026ADC
	ldr r1, [r5, #0xc]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r0, sp
	adds r0, #0x35
	movs r1, #8
	strb r1, [r0]
	adds r0, #0x34
	strb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x64
	str r2, [sp, #0xb0]
	b _0800CC78
	.align 2, 0
_0800CC34: .4byte 0x00100005
_0800CC38: .4byte 0x00100004
_0800CC3C:
	movs r0, #8
	strh r0, [r7, #0xa]
	bl sub_080074CC
	cmp r0, #0
	bne _0800CC58
	ldr r0, _0800CC6C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800CC74
_0800CC58:
	ldr r2, _0800CC70 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	bl _0800E2D2
	.align 2, 0
_0800CC6C: .4byte 0x030063D8
_0800CC70: .4byte gActiveEnemyMask
_0800CC74:
	bl WaitFrame
_0800CC78:
	ldr r3, [sp, #0xb0]
	ldr r0, [r3, #0x28]
	ldrh r1, [r3, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	ldr r1, _0800CD38 @ =0x0000FFFF
	cmp r0, r1
	beq _0800CC3C
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r4, #0x4c
	adds r4, r4, r7
	mov r8, r4
	strh r0, [r4]
	adds r5, r7, #0
	adds r5, #0x4a
	strh r0, [r5]
	adds r4, r7, #0
	adds r4, #0x48
	strh r0, [r4]
	str r1, [sp, #0x94]
	ldr r6, [sp, #0xb0]
	ldr r0, [r6, #0x28]
	bl GetDataRecord
	str r0, [sp, #0xac]
	ldr r0, [r6, #0x28]
	ldr r1, [sp, #0x94]
	ands r0, r1
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xa8]
	ldr r0, [r6, #0x28]
	ldr r2, [sp, #0x94]
	ands r0, r2
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xb4]
	movs r3, #0x1e
	str r3, [sp, #0xb8]
	movs r6, #0
	str r6, [sp, #0xbc]
	movs r0, #1
	str r0, [sp, #0xc4]
	ldr r1, [sp, #0x94]
	str r1, [sp, #0xc8]
	ldr r2, _0800CD3C @ =0x0000FFC4
	str r2, [sp, #0x9c]
	movs r3, #0
	str r3, [sp, #0xc0]
	ldr r2, [sp, #0xb0]
	adds r2, #0x22
	ldrb r0, [r2]
	strh r0, [r7, #0x22]
	strh r6, [r7, #0x24]
	add r0, sp, #0xbc
	ldrh r0, [r0]
	strh r0, [r7, #6]
	add r1, sp, #0xbc
	ldrh r1, [r1]
	strh r1, [r7, #4]
	ldr r3, [r7, #0x10]
	str r3, [sp, #0x88]
	ldr r6, [r7, #0x14]
	str r6, [sp, #0x8c]
	mov r1, sp
	adds r1, #0x82
	add r0, sp, #0xbc
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, sp, #0x80
	add r3, sp, #0xbc
	ldrh r3, [r3]
	strh r3, [r0]
	add r6, sp, #0x9c
	ldrh r6, [r6]
	strh r6, [r7, #0x3c]
	movs r3, #1
	str r3, [sp, #0xcc]
	mov r6, r8
	str r6, [sp, #0xf4]
	str r5, [sp, #0xf0]
	str r4, [sp, #0xec]
	str r2, [sp, #0xe0]
	bl _0800E0F6
	.align 2, 0
_0800CD38: .4byte 0x0000FFFF
_0800CD3C: .4byte 0x0000FFC4

	thumb_func_start sub_0800CD40
sub_0800CD40: @ 0x0800CD40
	movs r0, #0
	str r0, [sp, #0x90]
	movs r1, #0
	str r1, [sp, #0xd8]
	adds r2, r7, #0
	adds r2, #0x40
	str r2, [sp, #0xe4]
	adds r3, r7, #0
	adds r3, #0x42
	str r3, [sp, #0xe8]
	ldr r6, [sp, #0xc0]
	adds r6, #1
	adds r4, r7, #0
	adds r4, #0x4e
	str r4, [sp, #0xf8]
	ldr r5, [sp, #0xa4]
	adds r5, #5
	str r5, [sp, #0xdc]
	mov r0, sp
	adds r0, #0x7c
	str r0, [sp, #0xfc]
	mov r1, sp
	adds r1, #0x7e
	str r1, [sp, #0x100]
	adds r3, r2, #0
	movs r4, #1
	movs r5, #0x80
	lsls r5, r5, #8
_0800CD78:
	ldrh r0, [r3]
	ldr r2, [sp, #0xd8]
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	asrs r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0800CDB2
	lsls r1, r2, #1
	ldr r0, [sp, #0xe8]
	adds r1, r0, r1
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ands r0, r5
	cmp r0, #0
	beq _0800CDA6
	adds r1, r4, #0
	lsls r1, r2
	ldrh r0, [r3]
	bics r0, r1
	strh r0, [r3]
	b _0800CDB2
_0800CDA6:
	cmp r2, #0
	beq _0800CDB2
	cmp r2, #1
	bne _0800CDB2
	movs r1, #1
	str r1, [sp, #0x90]
_0800CDB2:
	ldr r2, [sp, #0xd8]
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xd8]
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0800CD78
	ldrh r0, [r7, #0x3e]
	cmp r0, #0
	beq _0800CE2C
	subs r0, #1
	strh r0, [r7, #0x3e]
	ldrh r0, [r7, #0x3e]
	cmp r0, #3
	beq _0800CE0C
	cmp r0, #3
	bgt _0800CDE0
	cmp r0, #0
	beq _0800CDEA
	b _0800CE28
_0800CDE0:
	cmp r0, #4
	beq _0800CE16
	cmp r0, #5
	beq _0800CE20
	b _0800CE28
_0800CDEA:
	adds r0, r7, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r1
	ldr r4, [sp, #0xe8]
	strh r0, [r4]
	movs r0, #1
	ldrh r5, [r7, #0x3e]
	lsls r0, r5
	ldr r2, [sp, #0xe4]
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	b _0800CE28
_0800CE0C:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	bl sub_08018290
	b _0800CE28
_0800CE16:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	bl sub_08018314
	b _0800CE28
_0800CE20:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	bl sub_08018398
_0800CE28:
	movs r0, #0
	strh r0, [r7, #0x3e]
_0800CE2C:
	bl sub_08007544
	cmp r0, #0
	bne _0800CE3A
	adds r0, r7, #0
	bl sub_08017A44
_0800CE3A:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc0]
	bl sub_08001F98
	cmp r0, #0
	beq _0800CE72
	bl sub_08001F64
	cmp r0, #0
	bne _0800CE72
	ldrh r0, [r7, #0x3c]
	adds r0, #1
	strh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _0800CE72
	ldrh r0, [r7, #0xa]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0800CE72
	ldrh r0, [r7, #0x38]
	strh r0, [r7, #0x28]
	movs r0, #7
	strh r0, [r7, #0xa]
_0800CE72:
	bl sub_080271D0
	adds r1, r0, #0
	cmp r1, #0
	beq _0800CE80
	bl sub_0800D73A
_0800CE80:
	ldrh r0, [r7, #0xa]
	adds r2, r0, #0
	cmp r2, #1
	bne _0800CED8
	ldrh r3, [r7, #0x22]
	cmp r3, #5
	beq _0800CEDA
	ldrh r0, [r7, #0x20]
	adds r0, #1
	strh r0, [r7, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _0800CEDA
	ldr r0, [r7, #0x10]
	ldr r4, [sp, #0x88]
	subs r0, r4, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _0800CEAA
	rsbs r0, r0, #0
_0800CEAA:
	cmp r0, #3
	bgt _0800CECA
	ldr r0, [r7, #0x14]
	ldr r5, [sp, #0x8c]
	subs r0, r5, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _0800CEBC
	rsbs r0, r0, #0
_0800CEBC:
	cmp r0, #3
	bgt _0800CECA
	cmp r3, #1
	beq _0800CECA
	movs r0, #5
	strh r0, [r7, #0x22]
	str r1, [r7, #0x54]
_0800CECA:
	movs r0, #0
	strh r0, [r7, #0x20]
	ldr r6, [r7, #0x10]
	str r6, [sp, #0x88]
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x8c]
	b _0800CEDA
_0800CED8:
	strh r1, [r7, #0x20]
_0800CEDA:
	ldrh r0, [r7, #0x22]
	cmp r0, #5
	bls _0800CEE4
	bl _0800D740
_0800CEE4:
	lsls r0, r0, #2
	ldr r1, _0800CEF0 @ =_0800CEF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CEF0: .4byte _0800CEF4
_0800CEF4: @ jump table
	.4byte _0800CF0C @ case 0
	.4byte _0800D04C @ case 1
	.4byte _0800D174 @ case 2
	.4byte _0800D2A6 @ case 3
	.4byte _0800D418 @ case 4
	.4byte _0800D55C @ case 5
_0800CF0C:
	ldr r1, [r7, #0x54]
	mov r8, r1
	cmp r1, #1
	beq _0800CF54
	cmp r1, #1
	blo _0800CF20
	cmp r1, #2
	beq _0800CFF4
	bl _0800D740
_0800CF20:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800CF2C
	bl _0800D740
_0800CF2C:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bls _0800CF40
	b _0800D478
_0800CF40:
	ldr r2, [sp, #0xcc]
	cmp r2, #0
	beq _0800CF50
	movs r0, #2
	str r0, [r7, #0x54]
	movs r3, #0
	str r3, [sp, #0xcc]
	b _0800D478
_0800CF50:
	movs r0, #1
	b _0800D476
_0800CF54:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bls _0800CF68
	b _0800D478
_0800CF68:
	ldr r1, _0800CFEC @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r4, r0, r1
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	bne _0800CF84
	b _0800D478
_0800CF84:
	bl sub_08007604
	adds r6, r0, #0
	cmp r6, #0
	beq _0800CF90
	b _0800D478
_0800CF90:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, [r4]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	ldr r5, _0800CFF0 @ =0x080FB4C0
	adds r4, r7, #0
	adds r4, #0x84
	ldrh r4, [r4]
	lsls r4, r4, #2
	adds r5, #2
	adds r4, r4, r5
	ldrh r4, [r4]
	adds r4, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CFC6
	b _0800D128
_0800CFC6:
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800CFCE
	b _0800D740
_0800CFCE:
	ldr r5, [sp, #0xb0]
	ldrh r0, [r5, #8]
	ldr r1, [sp, #0xc0]
	cmp r0, r1
	blo _0800CFDA
	b _0800D128
_0800CFDA:
	movs r2, #0
	str r2, [sp, #0xc0]
	mov r3, r8
	strh r3, [r7, #6]
	movs r0, #2
	str r0, [r7, #0x54]
	str r2, [r7, #0x5c]
	b _0800D740
	.align 2, 0
_0800CFEC: .4byte gPlayers
_0800CFF0: .4byte 0x080FB4C0
_0800CFF4:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]

	non_word_aligned_thumb_func_start sub_0800D006
sub_0800D006: @ 0x0800D006
	ldr r1, [r7, #0x14]
	ldr r3, _0800D048 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #0
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D036
	b _0800D740
_0800D036:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #2
	bhi _0800D044
	b _0800D740
_0800D044:
	str r4, [r7, #0x54]
	b _0800D740
	.align 2, 0
_0800D048: .4byte gPlayers
_0800D04C:
	movs r6, #0
	strh r6, [r7, #6]
	strh r6, [r7, #4]
	ldr r5, [r7, #0x54]
	cmp r5, #1
	beq _0800D094
	cmp r5, #1
	blo _0800D062
	cmp r5, #2
	beq _0800D12C
	b _0800D740
_0800D062:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D08C
	ldr r5, [sp, #0xcc]
	cmp r5, #0
	beq _0800D088
	movs r0, #2
	str r0, [r7, #0x54]
	movs r0, #0x38
	str r0, [r7, #0x5c]
	movs r6, #0
	str r6, [sp, #0xcc]
	b _0800D478
_0800D088:
	movs r0, #1
	b _0800D476
_0800D08C:
	movs r0, #2
	str r0, [r7, #0x54]
	str r6, [r7, #0x5c]
	b _0800D478
_0800D094:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bls _0800D0A8
	b _0800D478
_0800D0A8:
	ldr r1, _0800D118 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r4, r0, r1
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	bne _0800D0C4
	b _0800D478
_0800D0C4:
	bl sub_08007604
	cmp r0, #0
	beq _0800D0CE
	b _0800D478
_0800D0CE:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, [r4]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #0xb4
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D128
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	beq _0800D128
	ldr r3, [sp, #0xb0]
	ldrh r0, [r3, #8]
	ldr r4, [sp, #0xc0]
	cmp r0, r4
	bhs _0800D128
	movs r6, #0
	str r6, [sp, #0xc0]
	movs r1, #2
	str r1, [r7, #0x54]
	movs r0, #0x3a
	str r0, [r7, #0x5c]
	ldrh r0, [r3, #0x24]
	cmp r0, #0
	blt _0800D124
	cmp r0, #1
	bgt _0800D11C
	strh r5, [r7, #6]
	b _0800D740
	.align 2, 0
_0800D118: .4byte gPlayers
_0800D11C:
	cmp r0, #0x25
	bgt _0800D124
	strh r1, [r7, #6]
	b _0800D740
_0800D124:
	movs r0, #1
	b _0800D73E
_0800D128:
	strh r6, [r7, #6]
	b _0800D740
_0800D12C:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D170 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r6, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r6, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D16C
	b _0800D740
_0800D16C:
	b _0800D540
	.align 2, 0
_0800D170: .4byte gPlayers
_0800D174:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	ldr r1, [r7, #0x54]
	cmp r1, #1
	beq _0800D1D2
	cmp r1, #1
	blo _0800D18E
	cmp r1, #2
	beq _0800D1F4
	cmp r1, #3
	beq _0800D220
	b _0800D740
_0800D18E:
	str r0, [r7, #0x5c]
	adds r0, r7, #0
	movs r1, #0x28
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D1B8
	ldr r5, [sp, #0xcc]
	cmp r5, #0
	beq _0800D1B2
	movs r0, #3
	str r0, [r7, #0x54]
	movs r6, #0
	str r6, [sp, #0xcc]
	b _0800D740
_0800D1B2:
	movs r0, #1
	str r0, [r7, #0x54]
	b _0800D740
_0800D1B8:
	adds r0, r7, #0
	movs r1, #0x3c
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bls _0800D1CC
	b _0800D3AE
_0800D1CC:
	movs r0, #2
	str r0, [r7, #0x54]
	b _0800D740
_0800D1D2:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800D1DC
	b _0800D740
_0800D1DC:
	cmp r0, #6
	bne _0800D1E2
	b _0800D740
_0800D1E2:
	ldr r2, [sp, #0xb0]
	ldrh r0, [r2, #8]
	ldr r3, [sp, #0xc0]
	cmp r0, r3
	blo _0800D1EE
	b _0800D740
_0800D1EE:
	movs r4, #0
	str r4, [sp, #0xc0]
	b _0800D214
_0800D1F4:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800D1FE
	b _0800D740
_0800D1FE:
	cmp r0, #6
	bne _0800D204
	b _0800D740
_0800D204:
	ldr r5, [sp, #0xb0]

	non_word_aligned_thumb_func_start sub_0800D206
sub_0800D206: @ 0x0800D206
	ldrh r0, [r5, #8]
	ldr r6, [sp, #0xc0]
	cmp r0, r6
	blo _0800D210
	b _0800D740
_0800D210:
	movs r0, #0
	str r0, [sp, #0xc0]
_0800D214:
	strh r1, [r7, #6]
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x73
	str r0, [r7, #0x5c]
	b _0800D740
_0800D220:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800D22A
	b _0800D740
_0800D22A:
	cmp r0, #6
	bne _0800D230
	b _0800D740
_0800D230:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D290
	ldr r1, _0800D288 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r5, r0, r1
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _0800D290
	bl sub_08007604
	adds r4, r0, #0
	cmp r4, #0
	bne _0800D290
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, [r5]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D28C
	str r4, [r7, #0x54]
	b _0800D296
	.align 2, 0
_0800D288: .4byte gPlayers
_0800D28C:
	strh r4, [r7, #6]
	b _0800D296
_0800D290:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
_0800D296:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x78
	bhi _0800D2A4
	b _0800D740
_0800D2A4:
	b _0800D4DA
_0800D2A6:
	movs r6, #0
	movs r5, #0
	strh r5, [r7, #6]
	strh r5, [r7, #4]
	ldr r4, [r7, #0x54]
	cmp r4, #1
	beq _0800D2DE
	cmp r4, #1
	blo _0800D2C4
	cmp r4, #2
	beq _0800D37C
	cmp r4, #3
	bne _0800D2C2
	b _0800D3BC
_0800D2C2:
	b _0800D740
_0800D2C4:
	adds r0, r7, #0
	movs r1, #0x3c
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D2DA
	movs r0, #1
	b _0800D3B6
_0800D2DA:
	movs r0, #2
	b _0800D3B6
_0800D2DE:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D31C @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D324
	ldr r0, _0800D320 @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _0800D332
	.align 2, 0
_0800D31C: .4byte gPlayers
_0800D320: .4byte 0x0000FFBF
_0800D324:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800D334
	ldr r0, _0800D34C @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_0800D332:
	strh r0, [r7, #4]
_0800D334:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D354
	ldr r0, _0800D350 @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0800D362
	.align 2, 0
_0800D34C: .4byte 0x0000FF7F
_0800D350: .4byte 0x0000FFDF
_0800D354:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D364
	ldr r0, _0800D378 @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_0800D362:
	strh r0, [r7, #4]
_0800D364:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _0800D372
	b _0800D740
_0800D372:
	movs r0, #3
	b _0800D4A6
	.align 2, 0
_0800D378: .4byte 0x0000FFEF
_0800D37C:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D3B4
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D396
	b _0800D740
_0800D396:
	cmp r0, #6
	bne _0800D39C
	b _0800D740
_0800D39C:
	ldr r5, [sp, #0xb0]
	ldrh r0, [r5, #8]
	ldr r6, [sp, #0xc0]
	cmp r0, r6
	blo _0800D3A8
	b _0800D740
_0800D3A8:
	movs r0, #0
	str r0, [sp, #0xc0]
	strh r4, [r7, #6]
_0800D3AE:
	movs r0, #3
	str r0, [r7, #0x54]
	b _0800D740
_0800D3B4:
	movs r0, #3
_0800D3B6:
	str r0, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _0800D740
_0800D3BC:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D414 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r5, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D3FC
	b _0800D740
_0800D3FC:
	cmp r0, #6
	bne _0800D402
	b _0800D740
_0800D402:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _0800D410
	b _0800D740
_0800D410:
	str r5, [r7, #0x54]
	b _0800D740
	.align 2, 0
_0800D414: .4byte gPlayers
_0800D418:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	ldr r0, [r7, #0x54]
	cmp r0, #4
	bls _0800D426
	b _0800D740
_0800D426:
	lsls r0, r0, #2
	ldr r1, _0800D430 @ =_0800D434
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D430: .4byte _0800D434
_0800D434: @ jump table
	.4byte _0800D448 @ case 0
	.4byte _0800D480 @ case 1
	.4byte _0800D4AE @ case 2
	.4byte _0800D4CC @ case 3
	.4byte _0800D4E0 @ case 4
_0800D448:
	ldr r1, _0800D470 @ =0x080FB4C0
	adds r0, r7, #0
	adds r0, #0x84
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #8
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D474
	movs r0, #1
	b _0800D476
	.align 2, 0
_0800D470: .4byte 0x080FB4C0
_0800D474:
	movs r0, #2
_0800D476:
	str r0, [r7, #0x54]
_0800D478:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	b _0800D740
_0800D480:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800D48A
	b _0800D740
_0800D48A:
	cmp r0, #6
	bne _0800D490
	b _0800D740
_0800D490:
	ldr r5, [sp, #0xb0]
	ldrh r0, [r5, #8]
	ldr r6, [sp, #0xc0]
	cmp r0, r6
	blo _0800D49C
	b _0800D740
_0800D49C:
	movs r0, #0
	str r0, [sp, #0xc0]
	movs r0, #1
	strh r0, [r7, #6]
	movs r0, #4
_0800D4A6:
	str r0, [r7, #0x54]
	movs r0, #0x37
	str r0, [r7, #0x5c]
	b _0800D740
_0800D4AE:
	ldr r0, [r7, #0x58]
	cmp r0, #0
	beq _0800D4C0
	movs r1, #0
	str r1, [r7, #0x5c]
	movs r0, #3
	str r0, [r7, #0x54]
	str r1, [r7, #0x58]
	b _0800D740
_0800D4C0:
	str r0, [r7, #0x5c]
	movs r0, #4
	str r0, [r7, #0x54]
	movs r0, #1
	str r0, [r7, #0x58]
	b _0800D740
_0800D4CC:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _0800D4DA
	b _0800D740
_0800D4DA:
	movs r0, #0
	str r0, [r7, #0x54]
	b _0800D740
_0800D4E0:
	movs r6, #0
	strh r6, [r7, #6]
	adds r0, r7, #0
	movs r1, #0xf0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D532
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D554 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	ldr r5, _0800D558 @ =0x080FB4C0
	adds r4, r7, #0
	adds r4, #0x84
	ldrh r4, [r4]
	lsls r4, r4, #2
	adds r5, #2
	adds r4, r4, r5
	ldrh r4, [r4]
	adds r4, #6
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
_0800D532:
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D53A
	b _0800D740
_0800D53A:
	cmp r0, #6
	bne _0800D540
	b _0800D740
_0800D540:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _0800D54E
	b _0800D740
_0800D54E:
	str r6, [r7, #0x54]
	b _0800D740
	.align 2, 0
_0800D554: .4byte gPlayers
_0800D558: .4byte 0x080FB4C0
_0800D55C:
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #6]
	strh r4, [r7, #4]
	ldr r0, [r7, #0x54]
	cmp r0, #1
	beq _0800D57E
	cmp r0, #1
	blo _0800D574
	cmp r0, #2
	beq _0800D620
	b _0800D740
_0800D574:
	str r4, [r7, #0x5c]
	movs r0, #1
	str r0, [r7, #0x54]
	str r4, [r7, #0x58]
	b _0800D740
_0800D57E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D5BC @ =gPlayers
	movs r2, #0xd4
	mov r6, sl
	muls r6, r2, r6
	adds r2, r6, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r4, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D5C4
	ldr r0, _0800D5C0 @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _0800D5D2
	.align 2, 0
_0800D5BC: .4byte gPlayers
_0800D5C0: .4byte 0x0000FFBF
_0800D5C4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800D5D4
	ldr r0, _0800D5EC @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_0800D5D2:
	strh r0, [r7, #4]
_0800D5D4:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D5F4
	ldr r0, _0800D5F0 @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0800D602
	.align 2, 0
_0800D5EC: .4byte 0x0000FF7F
_0800D5F0: .4byte 0x0000FFDF
_0800D5F4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D604
	ldr r0, _0800D61C @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_0800D602:
	strh r0, [r7, #4]
_0800D604:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x1e
	bhi _0800D612
	b _0800D740
_0800D612:
	movs r0, #2
	str r0, [r7, #0x54]
	movs r0, #0
	str r0, [r7, #0x5c]
	b _0800D740
	.align 2, 0
_0800D61C: .4byte 0x0000FFEF
_0800D620:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D674 @ =gPlayers
	movs r2, #0xd4
	mov r5, sl
	muls r5, r2, r5
	adds r2, r5, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	ldrh r0, [r7, #0x24]
	cmp r0, #2
	bhi _0800D6B2
	ldrh r0, [r7, #4]
	cmp r0, #0x50
	beq _0800D6AA
	cmp r0, #0x50
	bgt _0800D67E
	cmp r0, #0x20
	beq _0800D69A
	cmp r0, #0x20
	bgt _0800D678
	cmp r0, #0x10
	beq _0800D6A2
	b _0800D708
	.align 2, 0
_0800D674: .4byte gPlayers
_0800D678:
	cmp r0, #0x40
	beq _0800D69E
	b _0800D708
_0800D67E:
	cmp r0, #0x80
	beq _0800D696
	cmp r0, #0x80
	bgt _0800D68C
	cmp r0, #0x60
	beq _0800D704
	b _0800D708
_0800D68C:
	cmp r0, #0x90
	beq _0800D6AE
	cmp r0, #0xa0
	beq _0800D6A6
	b _0800D708
_0800D696:
	movs r0, #0x10
	b _0800D706
_0800D69A:
	movs r0, #0x80
	b _0800D706
_0800D69E:
	movs r0, #0x20
	b _0800D706
_0800D6A2:
	movs r0, #0x40
	b _0800D706
_0800D6A6:
	movs r0, #0x90
	b _0800D706
_0800D6AA:
	movs r0, #0x60
	b _0800D706
_0800D6AE:
	movs r0, #0x50
	b _0800D706
_0800D6B2:
	ldrh r0, [r7, #4]
	cmp r0, #0x50
	beq _0800D700
	cmp r0, #0x50
	bgt _0800D6D0
	cmp r0, #0x20
	beq _0800D6EC
	cmp r0, #0x20
	bgt _0800D6CA
	cmp r0, #0x10
	beq _0800D6F4
	b _0800D708
_0800D6CA:
	cmp r0, #0x40
	beq _0800D6F0
	b _0800D708
_0800D6D0:
	cmp r0, #0x80
	beq _0800D6E8
	cmp r0, #0x80
	bgt _0800D6DE
	cmp r0, #0x60
	beq _0800D6FC
	b _0800D708
_0800D6DE:
	cmp r0, #0x90
	beq _0800D704
	cmp r0, #0xa0
	beq _0800D6F8
	b _0800D708
_0800D6E8:
	movs r0, #0x20
	b _0800D706
_0800D6EC:
	movs r0, #0x40
	b _0800D706
_0800D6F0:
	movs r0, #0x10
	b _0800D706
_0800D6F4:
	movs r0, #0x80
	b _0800D706
_0800D6F8:
	movs r0, #0x60
	b _0800D706
_0800D6FC:
	movs r0, #0x50
	b _0800D706
_0800D700:
	movs r0, #0x90
	b _0800D706
_0800D704:
	movs r0, #0xa0
_0800D706:
	strh r0, [r7, #4]
_0800D708:
	ldr r2, [r7, #0x5c]
	ldrh r0, [r7, #0x24]
	adds r0, #1
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r2, #1
	str r2, [r7, #0x5c]
	cmp r0, r1
	bls _0800D740
	ldrh r1, [r7, #0x24]
	adds r1, #1
	movs r2, #0
	movs r0, #3
	ands r1, r0
	strh r1, [r7, #0x24]
	str r2, [r7, #0x54]
	ldr r6, [sp, #0xe0]
	ldrb r0, [r6]
	strh r0, [r7, #0x22]
	str r2, [r7, #0x5c]
	str r2, [r7, #0x60]
	strh r2, [r7, #0x20]
	b _0800D740

	non_word_aligned_thumb_func_start sub_0800D73A
sub_0800D73A: @ 0x0800D73A
	movs r0, #0
	strh r0, [r7, #4]
_0800D73E:
	strh r0, [r7, #6]
_0800D740:
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0xf
	ldr r2, [sp, #0xe8]
	adds r0, r2, r0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0800D76A
	ldr r3, [sp, #0xe4]
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D76A
	strh r2, [r7, #4]
	strh r2, [r7, #6]
_0800D76A:
	ldrh r0, [r7, #0xa]
	cmp r0, #0xa
	bls _0800D772
	b _0800DA14
_0800D772:
	lsls r0, r0, #2
	ldr r1, _0800D77C @ =_0800D780
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D77C: .4byte _0800D780
_0800D780: @ jump table
	.4byte _0800D7AC @ case 0
	.4byte _0800D838 @ case 1
	.4byte _0800D9A8 @ case 2
	.4byte _0800DA14 @ case 3
	.4byte _0800DA14 @ case 4
	.4byte _0800DA14 @ case 5
	.4byte _0800D9C4 @ case 6
	.4byte _0800D9E0 @ case 7
	.4byte _0800DA14 @ case 8
	.4byte _0800DA10 @ case 9
	.4byte _0800DA14 @ case 10
_0800D7AC:
	movs r2, #0
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D7BC
	movs r2, #5
	b _0800D7C6
_0800D7BC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800D7C6
	movs r2, #1
_0800D7C6:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D7E2
	cmp r2, #5
	bne _0800D7D6
	movs r2, #4
	b _0800D7FC
_0800D7D6:
	cmp r2, #1
	bne _0800D7DE
	movs r2, #2
	b _0800D7FC
_0800D7DE:
	movs r2, #3
	b _0800D7FC
_0800D7E2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D7FC
	cmp r2, #5
	bne _0800D7F2
	movs r2, #6
	b _0800D7FC
_0800D7F2:
	cmp r2, #1
	bne _0800D7FA
	movs r2, #8
	b _0800D7FC
_0800D7FA:
	movs r2, #7
_0800D7FC:
	ldrh r3, [r7, #6]
	movs r4, #1
	adds r1, r4, #0
	ands r1, r3
	cmp r1, #0
	beq _0800D818
	movs r1, #0
	movs r0, #2
	strh r0, [r7, #0xa]
	ldr r4, [sp, #0xf4]
	strh r1, [r4]
	ldr r5, [sp, #0xf0]
	strh r1, [r5]
	b _0800DA14
_0800D818:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0800D82E
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r6, [sp, #0xf4]
	strh r1, [r6]
	ldr r0, [sp, #0xf0]
	strh r1, [r0]
	b _0800DA14
_0800D82E:
	cmp r2, #0
	bne _0800D834
	b _0800DA14
_0800D834:
	strh r4, [r7, #0xa]
	b _0800DA14
_0800D838:
	movs r2, #0
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D848
	movs r2, #5
	b _0800D852
_0800D848:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800D852
	movs r2, #1
_0800D852:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D86E
	cmp r2, #5
	bne _0800D862
	movs r2, #4
	b _0800D888
_0800D862:
	cmp r2, #1
	bne _0800D86A
	movs r2, #2
	b _0800D888
_0800D86A:
	movs r2, #3
	b _0800D888
_0800D86E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D888
	cmp r2, #5
	bne _0800D87E
	movs r2, #6
	b _0800D888
_0800D87E:
	cmp r2, #1
	bne _0800D886
	movs r2, #8
	b _0800D888
_0800D886:
	movs r2, #7
_0800D888:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D8AE
	cmp r2, #0
	beq _0800D89A
	subs r0, r2, #1
	b _0800D89C
_0800D89A:
	ldrh r0, [r7, #8]
_0800D89C:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #2
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0xf4]
	strh r1, [r2]
	ldr r3, [sp, #0xf0]
	strh r1, [r3]
	b _0800DA14
_0800D8AE:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800D8B8
	b _0800DA14
_0800D8B8:
	cmp r2, #0
	bne _0800D8C0
	strh r2, [r7, #0xa]
	b _0800DA14
_0800D8C0:
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	str r5, [r7, #0x18]
	ldr r6, [r7, #0x14]
	str r6, [r7, #0x1c]
	ldr r4, _0800D99C @ =0x080FB5D0
	mov r8, r4
	movs r1, #8
	ldrsh r0, [r7, r1]
	lsls r3, r0, #3
	adds r2, r3, r4
	ldr r4, _0800D9A0 @ =0x080FB5AC
	mov sb, r4
	ldr r4, [sp, #0xb0]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	add r1, sb
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	ldr r2, [sp, #0x90]
	asrs r1, r2
	adds r5, r5, r1
	ldr r1, _0800D9A4 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	asrs r1, r2
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0800D912
	b _0800DA14
_0800D912:
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	movs r2, #8
	ldrsh r0, [r7, r2]
	lsls r3, r0, #3
	mov r4, r8
	adds r2, r3, r4
	ldr r4, [sp, #0xb0]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	add r1, sb
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	ldr r2, [sp, #0x90]
	asrs r1, r2
	adds r5, r5, r1
	ldr r1, _0800D9A4 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	asrs r1, r2
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0800DA14
	subs r0, r2, #1
	strh r0, [r7, #8]
	movs r2, #8
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, r8
	ldr r3, [sp, #0xb0]
	ldrh r0, [r3, #4]
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r4, [sp, #0x90]
	asrs r1, r4
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r5, #8
	ldrsh r1, [r7, r5]
	lsls r1, r1, #3
	ldr r6, _0800D9A4 @ =0x080FB5D4
	adds r1, r1, r6
	ldrh r0, [r3, #4]
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	asrs r1, r4
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	b _0800DA14
	.align 2, 0
_0800D99C: .4byte 0x080FB5D0
_0800D9A0: .4byte 0x080FB5AC
_0800D9A4: .4byte 0x080FB5D4
_0800D9A8:
	ldr r1, [sp, #0xec]
	ldrh r0, [r1]
	ldr r2, [sp, #0x94]
	cmp r0, r2
	bne _0800DA14
	ldr r3, [sp, #0xf8]
	ldrh r0, [r3]
	cmp r0, #0
	beq _0800DA14
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r4, #0
	str r4, [sp, #0xc0]
	b _0800DA14
_0800D9C4:
	ldr r5, [sp, #0xec]
	ldrh r0, [r5]
	ldr r6, [sp, #0x94]
	cmp r0, r6
	bne _0800DA14
	ldr r1, [sp, #0xf8]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800DA14
	ldr r2, [sp, #0x98]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	bne _0800DA14
	b _0800DA10
_0800D9E0:
	ldr r4, [sp, #0xec]
	ldrh r0, [r4]
	ldr r5, [sp, #0x94]
	cmp r0, r5
	bne _0800DA14
	ldr r6, [sp, #0xf8]
	ldrh r0, [r6]
	cmp r0, #0
	beq _0800DA14
	ldr r0, [sp, #0x98]
	ldrh r1, [r7, #0xa]
	cmp r0, r1
	bne _0800DA14
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
	cmp r0, #0
	beq _0800DA12
	movs r3, #0x1e
	str r3, [sp, #0xb8]
	b _0800DA14
_0800DA10:
	movs r0, #0
_0800DA12:
	strh r0, [r7, #0xa]
_0800DA14:
	bl sub_08007510
	cmp r0, #0
	bne _0800DA3A
	bl sub_08007604
	cmp r0, #0
	bne _0800DA3A
	bl sub_080074F0
	cmp r0, #0
	beq _0800DA34
	adds r0, r7, #0
	bl sub_0800E300
	b _0800DA3A
_0800DA34:
	adds r0, r7, #0
	bl sub_0800E49C
_0800DA3A:
	bl sub_08001F64
	cmp r0, #0
	beq _0800DAA4
	ldrh r0, [r7, #0xa]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0800DA6E
	ldr r4, [sp, #0xbc]
	cmp r4, #0
	bne _0800DA6E
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	beq _0800DA6E
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
	cmp r0, #0
	beq _0800DA6E
	movs r5, #0x1e
	str r5, [sp, #0xb8]
_0800DA6E:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0800DAA4
	ldr r6, [sp, #0xbc]
	cmp r6, #0
	bne _0800DAA4
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	beq _0800DAA4
	ldr r1, [sp, #0x9c]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x1e
	ble _0800DAA4
	adds r0, r7, #0
	bl sub_080273DC
	cmp r0, #0
	beq _0800DAA4
	movs r3, #0
	str r3, [sp, #0x9c]
_0800DAA4:
	ldrh r2, [r7, #0xa]
	cmp r2, #9
	bls _0800DAAC
	b _0800DDA6
_0800DAAC:
	lsls r0, r2, #2
	ldr r1, _0800DAB8 @ =_0800DABC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DAB8: .4byte _0800DABC
_0800DABC: @ jump table
	.4byte _0800DAE4 @ case 0
	.4byte _0800DAFC @ case 1
	.4byte _0800DB14 @ case 2
	.4byte _0800DDA6 @ case 3
	.4byte _0800DDA6 @ case 4
	.4byte _0800DDA6 @ case 5
	.4byte _0800DC16 @ case 6
	.4byte _0800DD2A @ case 7
	.4byte _0800DD5E @ case 8
	.4byte _0800DDA6 @ case 9
_0800DAE4:
	str r2, [sp, #0x98]
	ldr r4, _0800DAF8 @ =0x0000FFFF
	str r4, [sp, #0x94]
	ldrh r0, [r7, #8]
	ldr r5, [sp, #0xec]
	strh r0, [r5]
	movs r6, #1
	str r6, [sp, #0xa0]
	b _0800DDA6
	.align 2, 0
_0800DAF8: .4byte 0x0000FFFF
_0800DAFC:
	str r2, [sp, #0x98]
	ldr r0, _0800DB10 @ =0x0000FFFF
	str r0, [sp, #0x94]
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r1, [sp, #0xec]
	strh r0, [r1]
	movs r2, #1
	b _0800DDA4
	.align 2, 0
_0800DB10: .4byte 0x0000FFFF
_0800DB14:
	ldr r3, [sp, #0xec]
	ldrh r0, [r3]
	ldr r4, [sp, #0x94]
	cmp r0, r4
	bne _0800DB28
	ldr r5, [sp, #0x98]
	ldrh r6, [r7, #0xa]
	cmp r5, r6
	bne _0800DB28
	b _0800DD24
_0800DB28:
	str r2, [sp, #0x98]
	ldrh r2, [r7, #8]
	ldr r0, [sp, #0xec]
	strh r2, [r0]
	ldr r3, [sp, #0xb0]
	ldr r1, [r3, #0x28]
	ldr r0, _0800DB44 @ =0x0010001A
	cmp r1, r0
	bne _0800DB48
	adds r0, r2, #0
	adds r0, #0x20
	ldr r4, [sp, #0xec]
	strh r0, [r4]
	b _0800DB50
	.align 2, 0
_0800DB44: .4byte 0x0010001A
_0800DB48:
	adds r0, r2, #0
	adds r0, #0x18
	ldr r5, [sp, #0xec]
	strh r0, [r5]
_0800DB50:
	ldr r6, [sp, #0xb0]
	ldrh r0, [r6, #0x24]
	cmp r0, #0x25
	bhi _0800DC08
	lsls r0, r0, #2
	ldr r1, _0800DB64 @ =_0800DB68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DB64: .4byte _0800DB68
_0800DB68: @ jump table
	.4byte _0800DC08 @ case 0
	.4byte _0800DC00 @ case 1
	.4byte _0800DC08 @ case 2
	.4byte _0800DC08 @ case 3
	.4byte _0800DC08 @ case 4
	.4byte _0800DC08 @ case 5
	.4byte _0800DC08 @ case 6
	.4byte _0800DC08 @ case 7
	.4byte _0800DC08 @ case 8
	.4byte _0800DC08 @ case 9
	.4byte _0800DC08 @ case 10
	.4byte _0800DC08 @ case 11
	.4byte _0800DC08 @ case 12
	.4byte _0800DC08 @ case 13
	.4byte _0800DC08 @ case 14
	.4byte _0800DC08 @ case 15
	.4byte _0800DC08 @ case 16
	.4byte _0800DC08 @ case 17
	.4byte _0800DC08 @ case 18
	.4byte _0800DC08 @ case 19
	.4byte _0800DC08 @ case 20
	.4byte _0800DC08 @ case 21
	.4byte _0800DC08 @ case 22
	.4byte _0800DC08 @ case 23
	.4byte _0800DC08 @ case 24
	.4byte _0800DC08 @ case 25
	.4byte _0800DC08 @ case 26
	.4byte _0800DC08 @ case 27
	.4byte _0800DC08 @ case 28
	.4byte _0800DC08 @ case 29
	.4byte _0800DC08 @ case 30
	.4byte _0800DC08 @ case 31
	.4byte _0800DC08 @ case 32
	.4byte _0800DC08 @ case 33
	.4byte _0800DC08 @ case 34
	.4byte _0800DC08 @ case 35
	.4byte _0800DC08 @ case 36
	.4byte _0800DC08 @ case 37
_0800DC00:
	ldrh r0, [r7]
	mov r1, sl
	bl sub_0802D98C
_0800DC08:
	ldr r0, [sp, #0xec]
	ldrh r0, [r0]
	str r0, [sp, #0x94]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	b _0800DD24
_0800DC16:
	ldr r3, [sp, #0xec]
	ldrh r0, [r3]
	ldr r4, [sp, #0x94]
	cmp r0, r4
	bne _0800DC2A
	ldr r5, [sp, #0x98]
	ldrh r6, [r7, #0xa]
	cmp r5, r6
	bne _0800DC2A
	b _0800DD24
_0800DC2A:
	str r2, [sp, #0x98]
	ldrh r2, [r7, #8]
	ldr r0, [sp, #0xec]
	strh r2, [r0]
	ldr r3, [sp, #0xb0]
	ldr r1, [r3, #0x28]
	ldr r0, _0800DC48 @ =0x0010001F
	cmp r1, r0
	bne _0800DC4C
	adds r0, r2, #0
	adds r0, #0x20
	ldr r4, [sp, #0xec]
	strh r0, [r4]
	b _0800DC54
	.align 2, 0
_0800DC48: .4byte 0x0010001F
_0800DC4C:
	adds r0, r2, #0
	adds r0, #0x18
	ldr r5, [sp, #0xec]
	strh r0, [r5]
_0800DC54:
	ldr r6, [sp, #0xb0]
	ldrh r0, [r6, #0x24]
	subs r0, #2
	cmp r0, #0x23
	bhi _0800DD18
	lsls r0, r0, #2
	ldr r1, _0800DC68 @ =_0800DC6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DC68: .4byte _0800DC6C
_0800DC6C: @ jump table
	.4byte _0800DCFC @ case 0
	.4byte _0800DCFC @ case 1
	.4byte _0800DCFC @ case 2
	.4byte _0800DCFC @ case 3
	.4byte _0800DCFC @ case 4
	.4byte _0800DCFC @ case 5
	.4byte _0800DD02 @ case 6
	.4byte _0800DD02 @ case 7
	.4byte _0800DD02 @ case 8
	.4byte _0800DD02 @ case 9
	.4byte _0800DD02 @ case 10
	.4byte _0800DD02 @ case 11
	.4byte _0800DD0E @ case 12
	.4byte _0800DD0E @ case 13
	.4byte _0800DD0E @ case 14
	.4byte _0800DD0E @ case 15
	.4byte _0800DD0E @ case 16
	.4byte _0800DD0E @ case 17
	.4byte _0800DCFC @ case 18
	.4byte _0800DCFC @ case 19
	.4byte _0800DCFC @ case 20
	.4byte _0800DCFC @ case 21
	.4byte _0800DCFC @ case 22
	.4byte _0800DCFC @ case 23
	.4byte _0800DD02 @ case 24
	.4byte _0800DD02 @ case 25
	.4byte _0800DD02 @ case 26
	.4byte _0800DD02 @ case 27
	.4byte _0800DD02 @ case 28
	.4byte _0800DD02 @ case 29
	.4byte _0800DD0E @ case 30
	.4byte _0800DD0E @ case 31
	.4byte _0800DD0E @ case 32
	.4byte _0800DD0E @ case 33
	.4byte _0800DD0E @ case 34
	.4byte _0800DD0E @ case 35
_0800DCFC:
	ldrh r0, [r7]
	movs r1, #0
	b _0800DD06
_0800DD02:
	ldrh r0, [r7]
	movs r1, #1
_0800DD06:
	mov r2, sl
	bl sub_0802EEA8
	b _0800DD18
_0800DD0E:
	ldrh r0, [r7]
	movs r1, #2
	mov r2, sl
	bl sub_0802EEA8
_0800DD18:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	ldr r0, [sp, #0xec]
	ldrh r0, [r0]
	str r0, [sp, #0x94]
_0800DD24:
	movs r1, #0
	str r1, [sp, #0xa0]
	b _0800DDA6
_0800DD2A:
	ldr r3, [sp, #0xec]
	ldrh r0, [r3]
	ldr r4, [sp, #0x94]
	cmp r0, r4
	bne _0800DD3C
	ldr r5, [sp, #0x98]
	ldrh r6, [r7, #0xa]
	cmp r5, r6
	beq _0800DD58
_0800DD3C:
	str r2, [sp, #0x98]
	movs r0, #0
	ldr r1, [sp, #0xf4]
	strh r0, [r1]
	ldr r2, [sp, #0xf0]
	strh r0, [r2]
	movs r0, #0x10
	ldr r3, [sp, #0xec]
	strh r0, [r3]
	ldrh r0, [r7, #8]
	adds r0, #0x10
	strh r0, [r3]
	ldrh r4, [r3]
	str r4, [sp, #0x94]
_0800DD58:
	movs r5, #0
	str r5, [sp, #0xa0]
	b _0800DDA6
_0800DD5E:
	ldr r6, [sp, #0xb8]
	cmp r6, #0x1e
	bne _0800DD72
	bl sub_08007544
	cmp r0, #0
	bne _0800DD72
	movs r0, #0x3f
	bl PlaySE
_0800DD72:
	ldr r1, [sp, #0xec]
	ldrh r0, [r1]
	ldr r2, [sp, #0x94]
	cmp r0, r2
	bne _0800DD84
	ldr r3, [sp, #0x98]
	ldrh r4, [r7, #0xa]
	cmp r3, r4
	beq _0800DDA2
_0800DD84:
	ldr r5, [sp, #0xb0]
	ldr r1, [r5, #0x28]
	ldr r0, _0800DE68 @ =0x0010001A
	cmp r1, r0
	bne _0800DDA2
	movs r0, #0x18
	ldr r6, [sp, #0xec]
	strh r0, [r6]
	ldrh r0, [r7, #8]
	adds r0, #0x18
	strh r0, [r6]
	ldrh r0, [r7, #0xa]
	str r0, [sp, #0x98]
	ldrh r1, [r6]
	str r1, [sp, #0x94]
_0800DDA2:
	movs r2, #0
_0800DDA4:
	str r2, [sp, #0xa0]
_0800DDA6:
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	add r0, sp, #0x10
	movs r4, #0
	add r3, sp, #0xdc
	ldrb r3, [r3]
	strb r3, [r0]
	add r5, sp, #0xdc
	ldrb r5, [r5]
	strb r5, [r0, #1]
	adds r1, r0, #0
	adds r0, r3, #0
	strb r0, [r1, #2]
	adds r0, r1, #0
	ldrb r0, [r0]
	strb r0, [r1, #3]
	ldr r5, [sp, #0xec]
	ldrh r0, [r5]
	ldr r6, [sp, #0xf0]
	ldr r1, [sp, #0xa0]
	str r1, [sp]
	adds r1, r6, #0
	ldr r2, [sp, #0xf4]
	ldr r3, [sp, #0xac]
	bl sub_08004214
	ldr r2, [sp, #0xf8]
	strh r0, [r2]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0xfc]
	ldr r3, [sp, #0x100]
	bl sub_08005FC4
	ldr r3, [sp, #0xbc]
	cmp r3, #0
	beq _0800DE6C
	ldr r0, [sp, #0xb8]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xb8]
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0800DE5C
	bl sub_08007510
	cmp r0, #0
	bne _0800DE5C
	bl sub_08007544
	cmp r0, #0
	bne _0800DE5C
	bl sub_080075AC
	cmp r0, #0
	bne _0800DE5C
	ldr r4, [sp, #0xfc]
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r5]
	ldrh r3, [r6]
	mov r4, sb
	str r4, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r6, [sp, #0xac]
	str r6, [sp, #8]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #0xc]
	bl sub_08004344
_0800DE5C:
	ldr r5, [sp, #0xb8]
	cmp r5, #0
	bne _0800DE64
	b _0800E112
_0800DE64:
	b _0800E03A
	.align 2, 0
_0800DE68: .4byte 0x0010001A
_0800DE6C:
	ldr r0, [sp, #0xc4]
	cmp r0, #0
	beq _0800DECE
	ldr r0, [sp, #0xb8]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xb8]
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0800DEC0
	bl sub_08007510
	cmp r0, #0
	bne _0800DEC0
	bl sub_08007544
	cmp r0, #0
	bne _0800DEC0
	bl sub_080075AC
	cmp r0, #0
	bne _0800DEC0
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x100]
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldrh r2, [r5]
	ldrh r3, [r6]
	mov r5, sb
	str r5, [sp]
	add r6, sp, #0x10
	str r6, [sp, #4]
	ldr r4, [sp, #0xac]
	str r4, [sp, #8]
	ldr r5, [sp, #0xa8]
	str r5, [sp, #0xc]
	bl sub_08004344
_0800DEC0:
	ldr r6, [sp, #0xb8]
	cmp r6, #0
	beq _0800DEC8
	b _0800E03A
_0800DEC8:
	movs r0, #0
	str r0, [sp, #0xc4]
	b _0800E03A
_0800DECE:
	bl sub_08007510
	cmp r0, #0
	beq _0800DED8
	b _0800E03A
_0800DED8:
	bl sub_08007544
	cmp r0, #0
	beq _0800DEE2
	b _0800E03A
_0800DEE2:
	bl sub_080075AC
	cmp r0, #0
	beq _0800DEEC
	b _0800E03A
_0800DEEC:
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0xf
	ldr r2, [sp, #0xe8]
	adds r0, r2, r0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800DF8A
	ldr r3, [sp, #0xe4]
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800DF34
	ldr r4, [sp, #0xfc]
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r5]
	ldrh r3, [r6]
	mov r4, sb
	str r4, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r6, [sp, #0xac]
	str r6, [sp, #8]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #0xc]
	bl sub_08004344
	b _0800DFB2
_0800DF34:
	ldr r5, [sp, #0xb0]
	ldr r1, [r5, #0x28]
	ldr r0, _0800DF60 @ =0x0010002A
	cmp r1, r0
	bne _0800DF64
	ldr r6, [sp, #0xfc]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sb
	str r4, [sp]
	add r2, sp, #0x30
	str r2, [sp, #4]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x14]
	str r2, [sp, #0xc]
	movs r2, #6
	b _0800DF82
	.align 2, 0
_0800DF60: .4byte 0x0010002A
_0800DF64:
	ldr r5, [sp, #0xfc]
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sb
	str r4, [sp]
	add r2, sp, #0x30
	str r2, [sp, #4]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x14]
	str r2, [sp, #0xc]
	movs r2, #1
_0800DF82:
	movs r3, #0
	bl sub_08004344
	b _0800DFB2
_0800DF8A:
	ldr r5, [sp, #0xfc]
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xec]
	ldrh r2, [r4]
	ldr r5, [sp, #0xf0]
	ldrh r3, [r5]
	mov r6, sb
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r5, [sp, #0xac]
	str r5, [sp, #8]
	ldr r6, [sp, #0xa8]
	str r6, [sp, #0xc]
	bl sub_08004344
_0800DFB2:
	movs r0, #0
	str r0, [sp, #0xd8]
	mov r6, sp
	adds r6, #0x82
	add r4, sp, #0x80
	add r5, sp, #0x48
_0800DFBE:
	movs r0, #0
	strh r0, [r6]
	strh r0, [r4]
	ldr r2, [sp, #0xe4]
	ldrh r1, [r2]
	ldr r3, [sp, #0xd8]
	lsls r2, r3, #0x10
	asrs r3, r2, #0x10
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _0800E02A
	lsls r0, r3, #1
	ldr r1, [sp, #0xe8]
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0800E02A
	cmp r3, #0
	beq _0800E02A
	cmp r3, #1
	bne _0800E02A
	str r3, [sp]
	adds r0, r5, #0
	movs r1, #0x16
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08026C40
	ldr r3, [sp, #0xfc]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	add r2, sp, #0x64
	str r2, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x48]
	str r2, [sp, #0xc]
	movs r2, #0x16
	bl sub_08004344
_0800E02A:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r3, r0, #0x10
	str r3, [sp, #0xd8]
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0800DFBE
_0800E03A:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _0800E054
	ldr r4, [sp, #0xd0]
	ldrh r5, [r7, #0x2a]
	cmp r4, r5
	beq _0800E054
	ldrh r6, [r7, #0x2a]
	str r6, [sp, #0xd0]
	movs r0, #0xa
	str r0, [sp, #0xc8]
	movs r1, #0
	str r1, [sp, #0xd4]
_0800E054:
	ldr r0, [sp, #0xc8]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0800E0BC
	ldr r2, [sp, #0xd0]
	cmp r2, #0
	bne _0800E078
	ldr r3, _0800E074 @ =0x0000FFFF
	str r3, [sp, #0xc8]
	b _0800E0C6
	.align 2, 0
_0800E074: .4byte 0x0000FFFF
_0800E078:
	bl sub_08007510
	cmp r0, #0
	bne _0800E09E
	bl sub_08007544
	cmp r0, #0
	bne _0800E09E
	bl sub_080075AC
	cmp r0, #0
	bne _0800E09E
	ldr r4, [sp, #0xd4]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xd0]
	bl sub_0800EA74
_0800E09E:
	movs r0, #2
	ldr r5, [sp, #0xc8]
	ands r0, r5
	cmp r0, #0
	beq _0800E0C6
	ldr r6, [sp, #0xd4]
	lsls r0, r6, #0x10
	ldr r1, _0800E0B8 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	b _0800E0C6
	.align 2, 0
_0800E0B8: .4byte 0xFFFF0000
_0800E0BC:
	ldr r2, _0800E130 @ =0x0000FFFF
	str r2, [sp, #0xc8]
	movs r3, #0
	str r3, [sp, #0xd0]
	strh r3, [r7, #0x2a]
_0800E0C6:
	bl sub_08007544
	cmp r0, #0
	bne _0800E0F2
	ldr r0, _0800E134 @ =gFrameCounter
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r7]
	ands r0, r2
	cmp r1, r0
	bne _0800E0F2
	ldr r0, [sp, #0xa4]
	adds r0, #0x15
	ldr r5, [sp, #0xb0]
	ldrh r1, [r5, #0x1a]
	lsls r1, r1, #5
	ldr r6, [sp, #0xb4]
	adds r1, r6, r1
	movs r2, #1
	bl LoadPalette
_0800E0F2:
	bl WaitFrame
_0800E0F6:
	bl sub_080074CC
	cmp r0, #0
	bne _0800E112
	ldr r0, _0800E138 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800E112
	bl sub_0800CD40
_0800E112:
	ldr r0, _0800E138 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800E124
	b _0800E2BA
_0800E124:
	bl sub_08001F64
	cmp r0, #0
	beq _0800E194
	add r5, sp, #0x84
	b _0800E140
	.align 2, 0
_0800E130: .4byte 0x0000FFFF
_0800E134: .4byte gFrameCounter
_0800E138: .4byte 0x030063D8
_0800E13C:
	bl WaitFrame
_0800E140:
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	cmp r0, #0
	beq _0800E13C
	adds r0, r7, #0
	bl sub_08012AD0
	str r0, [sp, #0x84]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldrh r2, [r7, #0x26]
	adds r3, r5, #0
	bl sub_0800FA74
	adds r4, r0, #0
	cmp r4, #0
	beq _0800E194
	b _0800E178
_0800E174:
	bl WaitFrame
_0800E178:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r1, [r4]
	asrs r1, r1, #0xc
	ldr r2, [r4, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
	cmp r0, #0
	beq _0800E174
_0800E194:
	bl sub_080074CC
	cmp r0, #0
	beq _0800E19E
	b _0800E2BA
_0800E19E:
	ldr r4, _0800E2E4 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	bne _0800E1B2
	b _0800E2BA
_0800E1B2:
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	bne _0800E1BA
	b _0800E2BA
_0800E1BA:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xb0]
	bl CalcExpGain
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xa0]
	bl AddExp
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #7
	str r0, [sp, #0xb8]
	ldr r4, _0800E2E8 @ =0x0000FFFF
_0800E1EC:
	ldr r0, [r7, #0x14]
	ldr r1, _0800E2EC @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r0, _0800E2F0 @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0800E208
	adds r0, r7, #0
	ldr r1, [sp, #0xa0]
	bl sub_08024320
_0800E208:
	bl WaitFrame
	ldr r0, [sp, #0xb8]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
	cmp r0, r4
	bne _0800E1EC
	ldr r4, _0800E2F4 @ =0x03003D94
	adds r0, r4, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _0800E248
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E248
	ldr r3, _0800E2F8 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0800E248
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_0800E248:
	movs r4, #7
	str r4, [sp, #0xb8]
	ldr r4, _0800E2E8 @ =0x0000FFFF
_0800E24E:
	ldr r0, [r7, #0x14]
	ldr r6, _0800E2EC @ =0xFFFFFE00
	adds r0, r0, r6
	str r0, [r7, #0x14]
	movs r0, #1
	ldr r1, [sp, #0xb8]
	ands r0, r1
	cmp r0, #0
	beq _0800E274
	ldr r0, _0800E2F0 @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0800E274
	adds r0, r7, #0
	ldr r1, [sp, #0xa0]
	bl sub_08024320
_0800E274:
	bl WaitFrame
	ldr r0, [sp, #0xb8]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
	cmp r0, r4
	bne _0800E24E
	cmp r5, #0
	beq _0800E2BA
	bl sub_08007544
	cmp r0, #0
	bne _0800E298
	movs r0, #0x25
	bl PlaySE
_0800E298:
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _0800E2E4 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_0800E2BA:
	ldr r2, _0800E2FC @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0xa4]
	bl sub_0800CB84
	bl ThreadExit
_0800E2D2:
	add sp, #0x104
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E2E4: .4byte gPlayers
_0800E2E8: .4byte 0x0000FFFF
_0800E2EC: .4byte 0xFFFFFE00
_0800E2F0: .4byte 0x03003910
_0800E2F4: .4byte 0x03003D94
_0800E2F8: .4byte 0x00000157
_0800E2FC: .4byte gActiveEnemyMask

	thumb_func_start sub_0800E300
sub_0800E300: @ 0x0800E300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	ldr r0, _0800E480 @ =gFrameCounter
	ldr r1, [r0]
	movs r5, #1
	ands r1, r5
	ldrh r2, [r7]
	adds r0, r5, #0
	ands r0, r2
	cmp r1, r0
	bne _0800E322
	b _0800E46E
_0800E322:
	ldr r0, [r7, #0x10]
	mov sb, r0
	ldr r1, [r7, #0x14]
	mov sl, r1
	adds r0, r7, #0
	adds r0, #0x50
	ldrh r3, [r0]
	str r0, [sp, #0x1c]
	cmp r3, #5
	bls _0800E338
	b _0800E46E
_0800E338:
	ldr r6, _0800E484 @ =0x080FB4B8
	adds r0, #0x32
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r4, r0, #1
	ldr r2, _0800E488 @ =gEnemies
	movs r0, #0x94
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r2, r0, r1
	ldr r0, _0800E48C @ =gActiveEnemyMask
	adds r1, r5, #0
	lsls r1, r3
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0800E458
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0800E458
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r0, r0, #1
	adds r4, r4, r0
	mov r8, r4
	ldr r1, [r2, #0x10]
	mov r3, sb
	subs r1, r3, r1
	lsls r1, r1, #4
	ldr r0, [r2, #0x14]
	mov r5, sl
	subs r0, r5, r0
	lsls r0, r0, #4
	lsrs r2, r0, #0x10
	asrs r6, r1, #0x10
	adds r0, r6, #0
	cmp r6, #0
	bge _0800E394
	rsbs r0, r6, #0
_0800E394:
	asrs r0, r0, #3
	cmp r0, #0
	bgt _0800E458
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E3A6
	rsbs r0, r5, #0
_0800E3A6:
	asrs r0, r0, #3
	cmp r0, #0
	bgt _0800E458
	adds r0, r6, #0
	muls r0, r6, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl Sqrt
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r1, r8
	subs r4, r1, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	ldr r4, _0800E490 @ =0x0805289C
	adds r1, r2, #0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r3, #0
	ldrsh r1, [r1, r3]
	mov r5, r8
	muls r5, r1, r5
	adds r1, r5, #0
	mov r5, sb
	adds r3, r5, r1
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r5, #0
	ldrsh r1, [r2, r5]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	mov r5, sl
	adds r2, r5, r1
	ldr r1, _0800E494 @ =0x080FB720
	lsrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800E458
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0800E498 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	mov r5, sb
	adds r3, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	mov r1, sl
	adds r2, r1, r0
	str r3, [r7, #0x10]
	str r2, [r7, #0x14]
_0800E458:
	ldr r2, [sp, #0x1c]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _0800E46E
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r2]
_0800E46E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E480: .4byte gFrameCounter
_0800E484: .4byte 0x080FB4B8
_0800E488: .4byte gEnemies
_0800E48C: .4byte gActiveEnemyMask
_0800E490: .4byte 0x0805289C
_0800E494: .4byte 0x080FB720
_0800E498: .4byte 0x080FB9FC

	thumb_func_start sub_0800E49C
sub_0800E49C: @ 0x0800E49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	ldr r0, _0800E618 @ =gFrameCounter
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	mov r3, sl
	ldrh r2, [r3]
	ands r0, r2
	cmp r1, r0
	bne _0800E4BE
	b _0800E606
_0800E4BE:
	ldr r5, [r3, #0x10]
	str r5, [sp, #0x20]
	ldr r0, [r3, #0x14]
	str r0, [sp, #0x24]
	ldr r1, _0800E61C @ =0x080FB4B8
	mov r0, sl
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, _0800E620 @ =gEnemies
	ldrh r2, [r3]
	movs r0, #0x94
	muls r0, r2, r0
	adds r0, #0x94
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	cmp r2, #4
	bls _0800E4F6
	b _0800E606
_0800E4F6:
	ldr r0, _0800E624 @ =gActiveEnemyMask
	movs r1, #1
	mov r2, sb
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0800E5F2
	mov r3, sl
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _0800E5F2
	ldr r1, _0800E61C @ =0x080FB4B8
	mov r0, r8
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ldr r5, [sp, #0x1c]
	adds r7, r5, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r2, [sp, #0x20]
	subs r1, r2, r1
	lsls r1, r1, #4
	ldr r0, [r0, #0x14]
	ldr r3, [sp, #0x24]
	subs r0, r3, r0
	lsls r0, r0, #4
	lsrs r2, r0, #0x10
	asrs r6, r1, #0x10
	adds r0, r6, #0
	cmp r6, #0
	bge _0800E540
	rsbs r0, r6, #0
_0800E540:
	asrs r0, r0, #3
	cmp r0, #0
	bgt _0800E5F2
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E552
	rsbs r0, r5, #0
_0800E552:
	asrs r0, r0, #3
	cmp r0, #0
	bgt _0800E5F2
	adds r0, r6, #0
	muls r0, r6, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl Sqrt
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	subs r4, r7, r4
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	ldr r4, _0800E628 @ =0x0805289C
	adds r1, r2, #0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r5, #0
	ldrsh r1, [r1, r5]
	muls r1, r7, r1
	ldr r5, [sp, #0x20]
	adds r3, r5, r1
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r5, #0
	ldrsh r1, [r2, r5]
	muls r1, r7, r1
	ldr r5, [sp, #0x24]
	adds r2, r5, r1
	ldr r1, _0800E62C @ =0x080FB720
	lsrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800E5F2
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0800E630 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r7, r0
	ldr r5, [sp, #0x20]
	adds r3, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r7, r0
	ldr r5, [sp, #0x24]
	adds r2, r5, r0
	mov r0, sl
	str r3, [r0, #0x10]
	str r2, [r0, #0x14]
_0800E5F2:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r1, #0x94
	add r8, r1
	cmp r0, #4
	bhi _0800E606
	b _0800E4F6
_0800E606:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E618: .4byte gFrameCounter
_0800E61C: .4byte 0x080FB4B8
_0800E620: .4byte gEnemies
_0800E624: .4byte gActiveEnemyMask
_0800E628: .4byte 0x0805289C
_0800E62C: .4byte 0x080FB720
_0800E630: .4byte 0x080FB9FC

	thumb_func_start sub_0800E634
sub_0800E634: @ 0x0800E634
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r5, #0
	ldr r3, _0800E6A4 @ =gEnemies
	ldr r4, [r3]
	ldr r2, _0800E6A8 @ =gActiveEnemyMask
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	mov ip, r3
	adds r7, r2, #0
	cmp r0, #0
	beq _0800E65E
	ldrh r2, [r4, #2]
	ldrh r1, [r6, #0xc]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x18
	adds r3, r1, #0
	cmp r2, r0
	beq _0800E688
_0800E65E:
	adds r5, #1
	ldrh r3, [r6, #0xc]
	cmp r5, #4
	bhi _0800E68C
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	mov r2, ip
	ldr r0, [r2]
	adds r4, r0, r1
	movs r1, #1
	lsls r1, r5
	ldr r0, [r7]
	ands r0, r1
	cmp r0, #0
	beq _0800E65E
	ldrh r1, [r4, #2]
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0800E65E
_0800E688:
	cmp r5, #4
	bls _0800E6FC
_0800E68C:
	movs r5, #0
	ldr r0, _0800E6AC @ =gUnknown_03005DD4
	ldrh r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0800E6B4
	ldr r0, _0800E6B0 @ =gUnknown_03004998
	ldr r0, [r0]
	b _0800E6CE
	.align 2, 0
_0800E6A4: .4byte gEnemies
_0800E6A8: .4byte gActiveEnemyMask
_0800E6AC: .4byte gUnknown_03005DD4
_0800E6B0: .4byte gUnknown_03004998
_0800E6B4:
	adds r5, #1
	cmp r5, #0xf
	bhi _0800E6E0
	ldrh r0, [r2]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E6B4
	ldr r0, _0800E6F8 @ =gUnknown_03004998
	ldr r1, [r0]
	lsls r0, r5, #4
	adds r0, r0, r1
_0800E6CE:
	ldr r1, [r0, #0xc]
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x18
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0800E6B4
	cmp r5, #0xf
	bls _0800E744
_0800E6E0:
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x18
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	b _0800E744
	.align 2, 0
_0800E6F8: .4byte gUnknown_03004998
_0800E6FC:
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	asrs r3, r0, #0x14
	lsls r2, r1, #0x10
	asrs r2, r2, #0x14
	ldrb r0, [r6, #0xd]
	lsrs r0, r0, #4
	movs r1, #0
	strh r0, [r4, #8]
	lsls r0, r3, #0xc
	str r0, [r4, #0x10]
	lsls r0, r2, #0xc
	str r0, [r4, #0x14]
	ldrb r0, [r6, #0xe]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [r4, #0x54]
	ldrh r0, [r6, #0xe]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	str r0, [r4, #0x5c]
	strh r1, [r4, #0x3c]
	ldrb r0, [r6, #0xf]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800E736
	movs r0, #5
	b _0800E73C
_0800E736:
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
_0800E73C:
	strh r0, [r4, #0x22]
	ldrb r0, [r6, #0xf]
	lsrs r0, r0, #5
	strh r0, [r4, #0x24]
_0800E744:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E74C
sub_0800E74C: @ 0x0800E74C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	ldr r3, _0800E77C @ =gEnemies
	ldr r5, [r3]
	ldr r2, _0800E780 @ =gActiveEnemyMask
	movs r1, #1
	b _0800E798
	.align 2, 0
_0800E77C: .4byte gEnemies
_0800E780: .4byte gActiveEnemyMask
_0800E784:
	adds r4, #1
	cmp r4, #4
	bhi _0800E7AA
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r3]
	adds r5, r0, r1
	movs r1, #1
	lsls r1, r4
_0800E798:
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0800E784
	ldrh r0, [r5, #2]
	cmp r0, r7
	bne _0800E784
	cmp r4, #4
	bls _0800E834
_0800E7AA:
	movs r4, #0
	ldr r0, _0800E824 @ =gUnknown_03005DD4
	ldrh r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _0800E7CA
	ldr r1, _0800E828 @ =gUnknown_03004998
	ldr r0, [r1]
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, r7
	beq _0800E7F2
_0800E7CA:
	adds r4, #1
	cmp r4, #0xf
	bls _0800E7D2
	b _0800E914
_0800E7D2:
	ldrh r0, [r3]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E7CA
	ldr r2, _0800E828 @ =gUnknown_03004998
	ldr r1, [r2]
	lsls r0, r4, #4
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	adds r5, r2, #0
	cmp r0, r7
	bne _0800E7CA
_0800E7F2:
	cmp r4, #0xf
	bls _0800E7F8
	b _0800E914
_0800E7F8:
	ldr r2, [r5]
	lsls r3, r4, #4
	adds r2, r3, r2
	ldrb r0, [r2, #0xd]
	movs r1, #0x3f
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r0, [r5]
	adds r3, r3, r0
	ldrh r2, [r3, #0xe]
	lsls r1, r2, #0x11
	lsrs r1, r1, #0x17
	add r1, sb
	ldr r4, _0800E82C @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	lsls r1, r1, #6
	ldr r0, _0800E830 @ =0xFFFF803F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0xe]
	b _0800E914
	.align 2, 0
_0800E824: .4byte gUnknown_03005DD4
_0800E828: .4byte gUnknown_03004998
_0800E82C: .4byte 0x000001FF
_0800E830: .4byte 0xFFFF803F
_0800E834:
	mov r0, ip
	cmp r0, #0
	beq _0800E84E
	ldrh r0, [r5, #0xa]
	cmp r0, #8
	beq _0800E866
	ldrh r0, [r5, #0x38]
	strh r0, [r5, #0x28]
	movs r0, #7
	strh r0, [r5, #0xa]
	mov r4, r8
	strh r4, [r5, #0x34]
	b _0800E866
_0800E84E:
	ldrh r0, [r5, #0x28]
	add r0, sb
	strh r0, [r5, #0x28]
	movs r0, #7
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #0x38]
	ldrh r1, [r5, #0x28]
	subs r0, r0, r1
	cmp r0, #0
	bgt _0800E866
	mov r0, r8
	strh r0, [r5, #0x34]
_0800E866:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _0800E87C
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
_0800E87C:
	cmp r6, #0
	beq _0800E914
	bl sub_08007638
	cmp r0, #0
	bne _0800E914
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #5
	bhi _0800E914
	lsls r0, r6, #2
	ldr r1, _0800E89C @ =_0800E8A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E89C: .4byte _0800E8A0
_0800E8A0: @ jump table
	.4byte _0800E8B8 @ case 0
	.4byte _0800E8E8 @ case 1
	.4byte _0800E914 @ case 2
	.4byte _0800E8F8 @ case 3
	.4byte _0800E902 @ case 4
	.4byte _0800E90C @ case 5
_0800E8B8:
	lsls r0, r6, #1
	adds r4, r5, #0
	adds r4, #0x42
	adds r4, r4, r0
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r0, #0x78
	subs r0, r0, r1
	movs r1, #9
	bl __divsi3
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r4]
	adds r2, r5, #0
	adds r2, #0x40
	movs r0, #1
	lsls r0, r6
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	b _0800E914
_0800E8E8:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #1
	lsls r1, r6
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	b _0800E914
_0800E8F8:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	bl sub_08018290
	b _0800E914
_0800E902:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	bl sub_08018314
	b _0800E914
_0800E90C:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	bl sub_08018398
_0800E914:
	movs r0, #1
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800E924:
	.byte 0x02, 0x48, 0x00, 0x68, 0x00, 0x28, 0x00, 0xD0, 0x01, 0x20, 0x70, 0x47
	.byte 0xAC, 0x5D, 0x00, 0x03

	thumb_func_start sub_0800E934
sub_0800E934: @ 0x0800E934
	movs r1, #0
	ldr r0, _0800E94C @ =gActiveEnemyMask
	movs r3, #1
	ldr r2, [r0]
_0800E93C:
	adds r0, r3, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _0800E950
	adds r0, r1, #0
	b _0800E95A
	.align 2, 0
_0800E94C: .4byte gActiveEnemyMask
_0800E950:
	adds r1, #1
	cmp r1, #4
	ble _0800E93C
	movs r0, #1
	rsbs r0, r0, #0
_0800E95A:
	bx lr
