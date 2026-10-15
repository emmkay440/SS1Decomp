	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08015478
sub_08015478: @ 0x08015478
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _080154EC @ =gPlayers
	adds r5, r1, r0
	bl sub_08007670
	cmp r0, #0
	beq _08015494
	b _0801573A
_08015494:
	movs r0, #0
	mov r8, r0
_08015498:
	ldr r0, _080154F0 @ =gUnknown_03000054
	ldr r1, _080154F4 @ =gFrameCounter
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r8
	lsls r6, r1, #1
	cmp r2, r0
	beq _08015530
	adds r1, r5, #0
	adds r1, #0x24
	adds r2, r1, r6
	ldrh r0, [r2]
	subs r0, #1
	movs r4, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r7, r1, #0
	cmp r3, #0
	beq _080154C6
	ldrh r0, [r5, #0xc]
	cmp r0, #8
	bne _0801552A
_080154C6:
	ldr r0, [r5, #0x1c]
	adds r0, r6, r0
	ldrh r0, [r0]
	cmp r0, #1
	blt _080154F8
	cmp r0, #2
	ble _080154FE
	cmp r0, #6
	bgt _080154F8
	cmp r0, #5
	blt _080154F8
	bl sub_08007510
	cmp r0, #0
	beq _080154FE
	bl sub_08046104
	b _080154FE
	.align 2, 0
_080154EC: .4byte gPlayers
_080154F0: .4byte gUnknown_03000054
_080154F4: .4byte gFrameCounter
_080154F8:
	movs r0, #0x73
	bl StopSE
_080154FE:
	movs r0, #0x73
	bl StopSE
	movs r0, #0x74
	bl StopBGM
	adds r0, r7, r6
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r5, #0x1c]
	adds r0, r6, r0
	strh r1, [r0]
	mov r2, r8
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	movs r1, #0x1c
	bl bzero
	b _08015530
_0801552A:
	cmp r3, #0
	bge _08015530
	strh r4, [r2]
_08015530:
	ldr r0, [r5, #0x1c]
	adds r0, r6, r0
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #8
	bls _0801553E
	b _08015722
_0801553E:
	lsls r0, r0, #2
	ldr r1, _08015548 @ =_0801554C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015548: .4byte _0801554C
_0801554C: @ jump table
	.4byte _08015570 @ case 0
	.4byte _080155F8 @ case 1
	.4byte _080156BE @ case 2
	.4byte _080156CC @ case 3
	.4byte _080156DC @ case 4
	.4byte _080156DC @ case 5
	.4byte _08015722 @ case 6
	.4byte _08015722 @ case 7
	.4byte _08015710 @ case 8
_08015570:
	ldrh r0, [r5, #0xc]
	cmp r0, #9
	bne _08015578
	b _08015722
_08015578:
	bl sub_08007670
	cmp r0, #0
	beq _08015582
	b _08015722
_08015582:
	ldr r0, _080155F0 @ =gUnknown_03000054
	ldr r1, _080155F4 @ =gFrameCounter
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne _08015590
	b _08015722
_08015590:
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	beq _0801559C
	b _08015722
_0801559C:
	bl sub_080077C0
	cmp r0, #0
	bne _0801562C
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	ldrb r6, [r0]
	cmp r6, #0
	beq _080155B2
	b _08015722
_080155B2:
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080155CA
	movs r1, #1
_080155CA:
	adds r4, r5, #0
	adds r4, #0x56
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	bl sub_08007544
	cmp r0, #0
	bne _0801567E
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _080156A6
	cmp r0, #2
	ble _08015692
	b _08015698
	.align 2, 0
_080155F0: .4byte gUnknown_03000054
_080155F4: .4byte gFrameCounter
_080155F8:
	ldrh r0, [r5, #0xc]
	cmp r0, #9
	bne _08015600
	b _08015722
_08015600:
	bl sub_08007670
	cmp r0, #0
	beq _0801560A
	b _08015722
_0801560A:
	ldr r0, _0801563C @ =gUnknown_03000054
	ldr r1, _08015640 @ =gFrameCounter
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne _08015618
	b _08015722
_08015618:
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	beq _08015624
	b _08015722
_08015624:
	bl sub_080077C0
	cmp r0, #0
	beq _08015644
_0801562C:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	strh r4, [r0]
	ldr r0, [r5, #0x1c]
	adds r0, r6, r0
	strh r4, [r0]
	b _08015722
	.align 2, 0
_0801563C: .4byte gUnknown_03000054
_08015640: .4byte gFrameCounter
_08015644:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r6, #0x7f
	ands r6, r0
	cmp r6, #0
	bne _08015722
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0801566C
	movs r1, #2
_0801566C:
	adds r4, r5, #0
	adds r4, #0x56
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	bl sub_08007544
	cmp r0, #0
	beq _08015682
_0801567E:
	strh r6, [r4]
	b _08015722
_08015682:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _080156A6
	cmp r0, #2
	bgt _08015698
_08015692:
	cmp r0, #1
	beq _0801569E
	b _080156B6
_08015698:
	cmp r0, #3
	beq _080156AE
	b _080156B6
_0801569E:
	movs r0, #0x46
	bl PlaySE
	b _08015722
_080156A6:
	movs r0, #0x9d
	bl PlaySE
	b _08015722
_080156AE:
	movs r0, #0x9e
	bl PlaySE
	b _08015722
_080156B6:
	movs r0, #0x45
	bl PlaySE
	b _08015722
_080156BE:
	ldr r0, _080156C8 @ =gPlayerStats
	ldrh r0, [r0, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	b _08015720
	.align 2, 0
_080156C8: .4byte gPlayerStats
_080156CC:
	ldr r0, _080156D8 @ =gPlayerStats
	ldrh r0, [r0, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	b _08015720
	.align 2, 0
_080156D8: .4byte gPlayerStats
_080156DC:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08015722
	ldr r0, [r5, #0x20]
	mov r2, r8
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #0xa]
	ldrh r2, [r5, #0x36]
	adds r0, r0, r2
	strh r0, [r5, #0x36]
	ldrh r0, [r1, #0xc]
	ldrh r2, [r5, #0x38]
	adds r0, r0, r2
	strh r0, [r5, #0x38]
	ldrh r0, [r1, #0xe]
	ldrh r1, [r5, #0x3a]
	adds r0, r0, r1
	strh r0, [r5, #0x3a]
	b _08015722
_08015710:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08015722
	movs r0, #6
_08015720:
	strh r0, [r5, #0x34]
_08015722:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #2
	bhi _08015732
	b _08015498
_08015732:
	ldr r0, _08015744 @ =gUnknown_03000054
	ldr r1, _08015748 @ =gFrameCounter
	ldr r1, [r1]
	str r1, [r0]
_0801573A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015744: .4byte gUnknown_03000054
_08015748: .4byte gFrameCounter
