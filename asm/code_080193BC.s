	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start EnemySpawnerThread
EnemySpawnerThread: @ 0x080193BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x18]
	ldr r3, _0801940C @ =gUnknown_030063D8
	ldr r1, [r3]
	lsls r2, r0, #2
	adds r0, r1, #0
	adds r0, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	mov sl, r0
	ldr r4, [sp, #0x18]
	lsls r0, r4, #1
	adds r1, #0x7a
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	str r5, [sp, #0x1c]
	adds r0, r2, r4
	str r2, [sp, #0x28]
	lsls r1, r0, #1
	movs r2, #0
_080193F2:
	ldr r0, [r3]
	adds r0, #0x48
	adds r0, r0, r1
	strh r2, [r0]
	adds r1, #2
	adds r5, #1
	cmp r5, #4
	bls _080193F2
	ldr r0, [sp, #0x18]
	lsls r0, r0, #1
	str r0, [sp, #0x24]
	b _08019704
	.align 2, 0
_0801940C: .4byte gUnknown_030063D8
_08019410:
	add r0, sp, #8
	adds r5, #1
	strb r5, [r0, #8]
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #3
	ldr r0, _080194B0 @ =0x00000FFF
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, [sp, #0x10]
	ldr r2, _080194B4 @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x10]
	add r4, sp, #8
	mov r3, sl
	ldrh r2, [r3, #2]
	lsls r2, r2, #7
	ldrh r3, [r4, #0xa]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #0xa]
	adds r2, r4, #0
	ldrb r0, [r2, #0xc]
	ands r1, r0
	strb r1, [r2, #0xc]
	adds r3, r2, #0
	ldr r0, _080194B8 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #0x3f
	ands r1, r0
	ldrb r2, [r3, #0xd]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
	movs r2, #0xff
	ands r2, r6
	lsls r2, r2, #0xe
	ldr r0, [sp, #0x14]
	ldr r1, _080194BC @ =0xFFC03FFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x14]
	adds r2, r3, #0
	ldrb r1, [r2, #0xc]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldr r7, [sp, #0x1c]
	adds r7, #1
_08019484:
	add r0, sp, #8
	bl SpawnEnemy
	cmp r0, #0
	bne _080194C4
	bl sub_080074CC
	cmp r0, #0
	bne _080194A6
	ldr r0, _080194C0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080194AA
_080194A6:
	bl ThreadExit
_080194AA:
	bl WaitFrame
	b _08019484
	.align 2, 0
_080194B0: .4byte 0x00000FFF
_080194B4: .4byte 0xFFF000FF
_080194B8: .4byte gMapLayer_03003910
_080194BC: .4byte 0xFFC03FFF
_080194C0: .4byte gUnknown_030063D8
_080194C4:
	ldr r4, _080194C8 @ =gUnknown_0300397C
	b _080194EC
	.align 2, 0
_080194C8: .4byte gUnknown_0300397C
_080194CC:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _080194E8
	ldr r0, _0801954C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080194EC
_080194E8:
	bl ThreadExit
_080194EC:
	mov r0, sl
	ldrh r1, [r0]
	lsls r1, r1, #3
	ldrh r2, [r0, #2]
	lsls r2, r2, #3
	ldrh r0, [r4]
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08027318
	cmp r0, #0
	beq _080194CC
	ldr r0, _0801954C @ =gUnknown_030063D8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xa0
	mov r2, r8
	strh r2, [r0]
	adds r2, r1, #0
	adds r2, #0x7a
	ldr r3, [sp, #0x24]
	adds r2, r2, r3
	ldr r4, [sp, #0x28]
	ldr r5, [sp, #0x18]
	adds r0, r4, r5
	ldrh r3, [r2]
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r1, #0x48
	adds r1, r1, r0
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	str r7, [sp, #0x1c]
	mov r4, sl
	ldrh r5, [r4, #0x2e]
	cmp r5, #0
	beq _08019624
	subs r0, r5, #1
	cmp r0, r8
	bne _08019624
	b _08019570
	.align 2, 0
_0801954C: .4byte gUnknown_030063D8
_08019550:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _0801956C
	ldr r0, _08019584 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019570
_0801956C:
	bl ThreadExit
_08019570:
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	bl IsEnemyTypeActive
	cmp r0, #0
	beq _08019550
	bl WaitFrame
	b _080195B8
	.align 2, 0
_08019584: .4byte gUnknown_030063D8
_08019588:
	movs r5, #1
	ldr r4, [sp, #0x18]
	ands r4, r5
	ldr r6, _080195DC @ =gFrameCounter
_08019590:
	bl WaitFrame
	ldr r0, [r6]
	ands r0, r5
	cmp r4, r0
	beq _08019590
	bl sub_080074CC
	cmp r0, #0
	bne _080195B4
	ldr r0, _080195E0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080195B8
_080195B4:
	bl ThreadExit
_080195B8:
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	bl IsEnemyTypeActive
	cmp r0, #0
	bne _08019588
	ldr r0, _080195E0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019612
	ldr r0, _080195E4 @ =0x00000BB8
	bl SignalEvent
	b _08019608
	.align 2, 0
_080195DC: .4byte gFrameCounter
_080195E0: .4byte gUnknown_030063D8
_080195E4: .4byte 0x00000BB8
_080195E8:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _08019604
	ldr r0, _08019620 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019608
_08019604:
	bl ThreadExit
_08019608:
	movs r0, #1
	bl sub_08029068
	cmp r0, #0
	beq _080195E8
_08019612:
	ldr r0, _08019620 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xab
	movs r1, #1
	strb r1, [r0]
	b _080196F2
	.align 2, 0
_08019620: .4byte gUnknown_030063D8
_08019624:
	bl WaitFrame
	movs r5, #0
	ldr r0, [sp, #0x20]
	cmp r5, r0
	bhs _080196F2
_08019630:
	movs r6, #0
	movs r7, #0
	ldr r1, [sp, #0x1c]
	cmp r6, r1
	bhs _08019698
	ldr r2, _08019688 @ =gUnknown_030063D8
	mov sb, r2
	ldr r3, [sp, #0x28]
	ldr r4, [sp, #0x18]
	adds r0, r3, r4
	lsls r4, r0, #1
_08019646:
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x48
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801968C
	bl IsEnemyTypeActive
	adds r3, r0, #0
	cmp r3, #0
	bne _0801968E
	mov r2, sb
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x48
	adds r0, r0, r4
	strh r3, [r0]
	adds r1, #0x7a
	ldr r0, [sp, #0x24]
	adds r2, r1, r0
	ldrh r1, [r2]
	subs r1, #1
	strh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	mov ip, r0
	mov r0, ip
	ands r1, r0
	cmp r1, #0
	beq _0801968E
	strh r3, [r2]
	b _0801968E
	.align 2, 0
_08019688: .4byte gUnknown_030063D8
_0801968C:
	adds r6, #1
_0801968E:
	adds r4, #2
	adds r7, #1
	ldr r1, [sp, #0x1c]
	cmp r7, r1
	blo _08019646
_08019698:
	ldr r0, _080196B4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x7a
	ldr r2, [sp, #0x24]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _080196AE
	ldr r3, [sp, #0x1c]
	cmp r6, r3
	blo _080196B8
_080196AE:
	movs r0, #0
	strh r0, [r1]
	b _080196F2
	.align 2, 0
_080196B4: .4byte gUnknown_030063D8
_080196B8:
	adds r7, r5, #1
	movs r5, #1
	ldr r4, [sp, #0x18]
	ands r4, r5
	ldr r6, _08019718 @ =gFrameCounter
_080196C2:
	bl WaitFrame
	ldr r0, [r6]
	ands r0, r5
	cmp r4, r0
	beq _080196C2
	bl sub_080074CC
	cmp r0, #0
	bne _080196E6
	ldr r0, _0801971C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080196EA
_080196E6:
	bl ThreadExit
_080196EA:
	adds r5, r7, #0
	ldr r4, [sp, #0x20]
	cmp r5, r4
	blo _08019630
_080196F2:
	mov r5, sl
	ldrh r0, [r5, #0xa]
	ldrh r1, [r5, #0xc]
	adds r0, r0, r1
	ldrh r1, [r5, #0xe]
	adds r6, r0, r1
	cmp r6, #0
	bne _08019704
	b _08019830
_08019704:
	mov r2, sl
	ldrh r0, [r2, #0x2c]
	cmp r0, #1
	beq _08019782
	cmp r0, #1
	bgt _08019720
	cmp r0, #0
	beq _08019726
	b _080197EA
	.align 2, 0
_08019718: .4byte gFrameCounter
_0801971C: .4byte gUnknown_030063D8
_08019720:
	cmp r0, #2
	beq _080197B8
	b _080197EA
_08019726:
	movs r4, #0
	mov r6, sl
	adds r6, #0xa
_0801972C:
	adds r4, #1
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801976A
	cmp r4, #5
	bls _0801972C
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	movs r5, #0
	adds r1, r6, #0
_0801975A:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08019762
	mov r8, r5
_08019762:
	adds r1, #2
	adds r5, #1
	cmp r5, #2
	bls _0801975A
_0801976A:
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x3c
	str r0, [sp, #0x20]
	b _080197EA
_08019782:
	movs r4, #0
	mov r8, r4
	mov r1, sl
	adds r1, #0xa
	mov r5, sl
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	bne _080197A4
_08019792:
	adds r1, #2
	movs r0, #1
	add r8, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080197A4
	mov r2, r8
	cmp r2, #2
	bls _08019792
_080197A4:
	mov r3, r8
	cmp r3, #3
	bne _080197B0
	movs r4, #1
	rsbs r4, r4, #0
	mov r8, r4
_080197B0:
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [sp, #0x20]
	b _080197EA
_080197B8:
	movs r0, #0
	mov r8, r0
	mov r1, sl
	adds r1, #0xa
	mov r2, sl
	ldrh r0, [r2, #0xa]
	cmp r0, #0
	bne _080197DA
_080197C8:
	adds r1, #2
	movs r3, #1
	add r8, r3
	ldrh r0, [r1]
	cmp r0, #0
	bne _080197DA
	mov r4, r8
	cmp r4, #2
	bls _080197C8
_080197DA:
	mov r5, r8
	cmp r5, #3
	bne _080197E6
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
_080197E6:
	movs r1, #1
	str r1, [sp, #0x20]
_080197EA:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq _08019830
	mov r3, r8
	lsls r2, r3, #1
	mov r0, sl
	adds r0, #4
	adds r0, r0, r2
	ldrh r5, [r0]
	mov r1, sl
	adds r1, #0xa
	adds r1, r1, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r3, _0801982C @ =gUnknown_030063D8
	ldr r1, [r3]
	adds r1, #0xaa
	ldrb r2, [r1]
	adds r6, r2, #0
	adds r6, #8
	adds r0, r2, #1
	strb r0, [r1]
	adds r0, r3, #0
	cmp r2, #0xf7
	bhi _08019822
	b _08019410
_08019822:
	ldr r0, [r0]
	adds r0, #0xaa
	movs r1, #1
	strb r1, [r0]
	b _08019410
	.align 2, 0
_0801982C: .4byte gUnknown_030063D8
_08019830:
	movs r6, #0
	movs r7, #0
	ldr r4, [sp, #0x1c]
	cmp r6, r4
	bhs _0801989C
	ldr r5, _0801988C @ =gUnknown_030063D8
	mov r8, r5
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x18]
	adds r0, r1, r2
	lsls r4, r0, #1
_08019846:
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0x48
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0
	beq _08019890
	bl IsEnemyTypeActive
	adds r3, r0, #0
	cmp r3, #0
	bne _08019892
	mov r5, r8
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x48
	adds r0, r0, r4
	strh r3, [r0]
	adds r1, #0x7a
	ldr r0, [sp, #0x24]
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	cmp r0, #0
	beq _08019888
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r2, r0
	cmp r2, #0
	beq _08019892
_08019888:
	strh r3, [r1]
	b _0801989C
	.align 2, 0
_0801988C: .4byte gUnknown_030063D8
_08019890:
	adds r6, #1
_08019892:
	adds r4, #2
	adds r7, #1
	ldr r0, [sp, #0x1c]
	cmp r7, r0
	blo _08019846
_0801989C:
	ldr r0, _080198E4 @ =gUnknown_030063D8
	ldr r1, [r0]
	adds r1, #0x7a
	ldr r2, [sp, #0x24]
	adds r1, r1, r2
	ldrh r1, [r1]
	cmp r1, #0
	beq _080198EC
	ldr r3, [sp, #0x1c]
	cmp r6, r3
	bhs _080198EC
	movs r5, #1
	ldr r4, [sp, #0x18]
	ands r4, r5
	ldr r6, _080198E8 @ =gFrameCounter
_080198BA:
	bl WaitFrame
	ldr r0, [r6]
	ands r0, r5
	cmp r4, r0
	beq _080198BA
	bl sub_080074CC
	cmp r0, #0
	bne _080198DE
	ldr r0, _080198E4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019830
_080198DE:
	bl ThreadExit
	b _08019830
	.align 2, 0
_080198E4: .4byte gUnknown_030063D8
_080198E8: .4byte gFrameCounter
_080198EC:
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x7a
	ldr r4, [sp, #0x24]
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08019930 @ =0x0000FFFF
	mov r5, sl
	strh r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r5, #2]
	adds r0, r2, #0
	adds r0, #0xc
	ldr r3, [sp, #0x28]
	adds r0, r0, r3
	str r1, [r0]
	adds r2, #0x84
	movs r1, #1
	ldr r4, [sp, #0x18]
	lsls r1, r4
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019930: .4byte 0x0000FFFF
