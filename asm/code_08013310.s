	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start UseItem
UseItem: @ 0x08013310
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08013394 @ =gPlayers
	adds r6, r1, r0
	cmp r4, #0
	bne _0801332A
	b _0801381C
_0801332A:
	ldrh r0, [r6, #0xc]
	cmp r0, #8
	bne _08013332
	b _0801381C
_08013332:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _0801333E
	b _0801381C
_0801333E:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r7, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _080133D8
	movs r2, #0xa9
	lsls r2, r2, #1
	adds r5, r7, r2
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _080133A2
	bl GetPlayerClass
	cmp r0, #0
	bne _0801339C
	ldr r0, _08013398 @ =gPlayerStats
	adds r0, #0x54
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r0, #0
	adds r4, #0x64
	movs r1, #0
	ldrsh r0, [r5, r1]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r0, #0
	b _080133A6
	.align 2, 0
_08013394: .4byte gPlayers
_08013398: .4byte gPlayerStats
_0801339C:
	movs r2, #0
	ldrsh r4, [r5, r2]
	b _080133A6
_080133A2:
	movs r3, #0
	ldrsh r4, [r5, r3]
_080133A6:
	adds r3, r6, #0
	adds r3, #0x7a
	adds r2, r6, #0
	adds r2, #0x50
	ldrh r5, [r3]
	mov ip, r5
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r1, r0
	blt _080133C0
	b _08013816
_080133C0:
	mov r1, ip
	adds r0, r1, r4
	strh r0, [r3]
	ldrh r4, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080133D6
	b _0801379A
_080133D6:
	b _0801379E
_080133D8:
	mov r3, r8
	cmp r3, #1
	bne _08013426
	adds r4, r6, #0
	adds r4, #0x78
	adds r5, r6, #0
	adds r5, #0x4e
	ldrh r2, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r1, r0
	blt _080133F6
	b _08013816
_080133F6:
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	adds r0, r2, r0
	strh r0, [r4]
	ldrh r0, [r6]
	bl sub_0802C904
	ldrh r2, [r5]
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r5, #0
	ldrsh r1, [r4, r5]
	cmp r0, r1
	bge _0801341A
	strh r2, [r4]
	b _08013820
_0801341A:
	cmp r1, #0
	blt _08013420
	b _08013820
_08013420:
	movs r0, #0
	strh r0, [r4]
	b _08013820
_08013426:
	mov r0, r8
	cmp r0, #2
	bne _080134A4
	bl GetPlayerClass
	cmp r0, #1
	beq _08013468
	cmp r0, #1
	bgt _08013444
	cmp r0, #0
	beq _08013454
	ldr r2, _08013440 @ =gPlayerStats
	b _08013496
	.align 2, 0
_08013440: .4byte gPlayerStats
_08013444:
	cmp r0, #2
	beq _0801347C
	cmp r0, #3
	beq _08013488
	ldr r2, _08013450 @ =gPlayerStats
	b _08013496
	.align 2, 0
_08013450: .4byte gPlayerStats
_08013454:
	ldr r0, _08013464 @ =gPlayerStats
	movs r2, #0x24
	ldrsh r1, [r0, r2]
_0801345A:
	adds r2, r0, #0
	cmp r1, #0xc7
	ble _08013496
	b _08013816
	.align 2, 0
_08013464: .4byte gPlayerStats
_08013468:
	ldr r0, _08013478 @ =gPlayerStats
	movs r3, #0x24
	ldrsh r1, [r0, r3]
	adds r2, r0, #0
	cmp r1, #0x31
	ble _08013496
	b _08013816
	.align 2, 0
_08013478: .4byte gPlayerStats
_0801347C:
	ldr r0, _08013484 @ =gPlayerStats
	movs r5, #0x24
	ldrsh r1, [r0, r5]
	b _0801345A
	.align 2, 0
_08013484: .4byte gPlayerStats
_08013488:
	ldr r0, _080134A0 @ =gPlayerStats
	movs r2, #0x24
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0xe5
	ble _08013496
	b _08013816
_08013496:
	ldrh r0, [r2, #0x24]
	adds r0, #1
	strh r0, [r2, #0x24]
	b _08013820
	.align 2, 0
_080134A0: .4byte gPlayerStats
_080134A4:
	mov r3, r8
	cmp r3, #3
	bne _08013524
	bl GetPlayerClass
	cmp r0, #1
	beq _080134E8
	cmp r0, #1
	bgt _080134C4
	cmp r0, #0
	beq _080134D4
	ldr r2, _080134C0 @ =gPlayerStats
	b _0801351C
	.align 2, 0
_080134C0: .4byte gPlayerStats
_080134C4:
	cmp r0, #2
	beq _080134FC
	cmp r0, #3
	beq _08013510
	ldr r2, _080134D0 @ =gPlayerStats
	b _0801351C
	.align 2, 0
_080134D0: .4byte gPlayerStats
_080134D4:
	ldr r0, _080134E4 @ =gPlayerStats
	movs r5, #0x26
	ldrsh r1, [r0, r5]
	adds r2, r0, #0
	cmp r1, #0xc7
	ble _0801351C
	b _08013816
	.align 2, 0
_080134E4: .4byte gPlayerStats
_080134E8:
	ldr r0, _080134F8 @ =gPlayerStats
	movs r2, #0x26
	ldrsh r1, [r0, r2]
_080134EE:
	adds r2, r0, #0
	cmp r1, #0x95
	ble _0801351C
	b _08013816
	.align 2, 0
_080134F8: .4byte gPlayerStats
_080134FC:
	ldr r0, _0801350C @ =gPlayerStats
	movs r3, #0x26
	ldrsh r1, [r0, r3]
	adds r2, r0, #0
	cmp r1, #0xf9
	ble _0801351C
	b _08013816
	.align 2, 0
_0801350C: .4byte gPlayerStats
_08013510:
	ldr r0, _08013518 @ =gPlayerStats
	movs r5, #0x26
	ldrsh r1, [r0, r5]
	b _080134EE
	.align 2, 0
_08013518: .4byte gPlayerStats
_0801351C:
	ldrh r0, [r2, #0x26]
	adds r0, #1
	strh r0, [r2, #0x26]
	b _08013820
_08013524:
	mov r0, r8
	cmp r0, #4
	bne _080135AC
	bl GetPlayerClass
	cmp r0, #1
	beq _08013568
	cmp r0, #1
	bgt _08013544
	cmp r0, #0
	beq _08013554
	ldr r2, _08013540 @ =gPlayerStats
	b _0801359E
	.align 2, 0
_08013540: .4byte gPlayerStats
_08013544:
	cmp r0, #2
	beq _0801357C
	cmp r0, #3
	beq _08013590
	ldr r2, _08013550 @ =gPlayerStats
	b _0801359E
	.align 2, 0
_08013550: .4byte gPlayerStats
_08013554:
	ldr r0, _08013564 @ =gPlayerStats
	movs r2, #0x2a
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0xc7
	ble _0801359E
	b _08013816
	.align 2, 0
_08013564: .4byte gPlayerStats
_08013568:
	ldr r0, _08013578 @ =gPlayerStats
	movs r3, #0x2a
	ldrsh r1, [r0, r3]
	adds r2, r0, #0
	cmp r1, #0x63
	ble _0801359E
	b _08013816
	.align 2, 0
_08013578: .4byte gPlayerStats
_0801357C:
	ldr r0, _0801358C @ =gPlayerStats
	movs r5, #0x2a
	ldrsh r1, [r0, r5]
	adds r2, r0, #0
	cmp r1, #0x95
	ble _0801359E
	b _08013816
	.align 2, 0
_0801358C: .4byte gPlayerStats
_08013590:
	ldr r0, _080135A8 @ =gPlayerStats
	movs r2, #0x2a
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0xdb
	ble _0801359E
	b _08013816
_0801359E:
	ldrh r0, [r2, #0x2a]
	adds r0, #1
	strh r0, [r2, #0x2a]
	b _08013820
	.align 2, 0
_080135A8: .4byte gPlayerStats
_080135AC:
	mov r3, r8
	cmp r3, #5
	bne _080135DC
	bl GetPlayerClass
	cmp r0, #1
	beq _080135BC
	b _08013816
_080135BC:
	ldr r2, _080135D4 @ =gPlayerStats
	ldrh r3, [r2, #0x28]
	movs r5, #0x28
	ldrsh r1, [r2, r5]
	ldr r0, _080135D8 @ =0x0000012B
	cmp r1, r0
	ble _080135CC
	b _08013816
_080135CC:
	adds r0, r3, #1
	strh r0, [r2, #0x28]
	b _08013820
	.align 2, 0
_080135D4: .4byte gPlayerStats
_080135D8: .4byte 0x0000012B
_080135DC:
	mov r0, r8
	cmp r0, #6
	bne _0801360E
	movs r4, #0
	movs r1, #0
	ldr r0, [r6, #0x1c]
	movs r5, #2
_080135EA:
	ldrh r2, [r0]
	cmp r2, #2
	bgt _080135F8
	cmp r2, #1
	blt _080135F8
	strh r1, [r0]
	adds r4, #1
_080135F8:
	adds r0, #2
	subs r5, #1
	cmp r5, #0
	bge _080135EA
	cmp r4, #0
	bne _08013606
	b _08013816
_08013606:
	movs r0, #0x73
	bl StopSE
	b _08013820
_0801360E:
	mov r1, r8
	cmp r1, #7
	bne _080136A0
	movs r4, #0
	movs r5, #0
	ldr r7, _0801361C @ =0x03004650
	b _08013690
	.align 2, 0
_0801361C: .4byte 0x03004650
_08013620:
	bl GetMultiplayerId
	cmp r5, r0
	beq _0801368E
	movs r0, #0xd4
	muls r0, r5, r0
	adds r0, r0, r7
	ldr r2, [r0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _08013648
	cmp r0, #9
	bne _0801368E
	ldrb r0, [r2, #5]
	lsrs r0, r0, #4
	cmp r0, #0xb
	beq _08013648
	b _08013816
_08013648:
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	ble _0801368E
	ldr r1, [r6, #0x58]
	asrs r1, r1, #0xc
	ldrh r0, [r2]
	lsrs r0, r0, #4
	subs r1, r1, r0
	cmp r1, #0
	bge _08013662
	rsbs r1, r1, #0
_08013662:
	asrs r3, r1, #3
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #0xc
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	subs r0, r1, r0
	cmp r0, #0
	bge _08013676
	rsbs r0, r0, #0
_08013676:
	asrs r0, r0, #3
	cmp r3, #0x13
	bgt _0801368E
	cmp r0, #0x13
	bgt _0801368E
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08027790
	adds r4, #1
_0801368E:
	adds r5, #1
_08013690:
	bl sub_08001EC4
	cmp r5, r0
	blo _08013620
_08013698:
	cmp r4, #0
	beq _0801369E
	b _08013820
_0801369E:
	b _08013816
_080136A0:
	mov r2, r8
	cmp r2, #8
	bne _080136F2
	movs r4, #0
	movs r5, #0
	movs r3, #5
	rsbs r3, r3, #0
	ldr r6, _080136CC @ =gPlayerStats
_080136B0:
	lsls r0, r5, #2
	adds r1, r0, r6
	adds r0, r1, #0
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080136D4
	cmp r0, #3
	bgt _080136D0
	cmp r0, #2
	beq _080136D4
	b _080136EA
	.align 2, 0
_080136CC: .4byte gPlayerStats
_080136D0:
	cmp r0, #4
	bne _080136EA
_080136D4:
	adds r2, r1, #0
	adds r2, #0x8b
	ldrb r1, [r2]
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge _080136EA
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	movs r5, #0x19
	adds r4, #1
_080136EA:
	adds r5, #1
	cmp r5, #0x18
	ble _080136B0
	b _08013698
_080136F2:
	mov r3, r8
	cmp r3, #9
	bne _08013724
	bl sub_08007544
	cmp r0, #0
	beq _08013702
	b _08013816
_08013702:
	ldrh r0, [r6, #0xc]
	cmp r0, #5
	bne _0801370A
	b _08013816
_0801370A:
	bl sub_08007638
	cmp r0, #0
	beq _08013714
	b _08013816
_08013714:
	movs r0, #0x75
	bl PlaySE
	mov r5, r8
	strh r5, [r6, #0xc]
	movs r0, #2
	strh r0, [r6, #0xe]
	b _08013820
_08013724:
	mov r0, r8
	cmp r0, #0xa
	bne _080137C2
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r5, r7, r1
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0801376A
	bl GetPlayerClass
	cmp r0, #0
	bne _08013764
	ldr r0, _08013760 @ =gPlayerStats
	adds r0, #0x54
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r0, #0
	adds r4, #0x64
	movs r3, #0
	ldrsh r0, [r5, r3]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r0, #0
	b _0801376E
	.align 2, 0
_08013760: .4byte gPlayerStats
_08013764:
	movs r0, #0
	ldrsh r4, [r5, r0]
	b _0801376E
_0801376A:
	movs r1, #0
	ldrsh r4, [r5, r1]
_0801376E:
	adds r3, r6, #0
	adds r3, #0x7a
	adds r2, r6, #0
	adds r2, #0x50
	ldrh r5, [r3]
	mov ip, r5
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _08013816
	mov r1, ip
	adds r0, r1, r4
	strh r0, [r3]
	ldrh r4, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0801379E
_0801379A:
	strh r4, [r3]
	b _080137A6
_0801379E:
	cmp r0, #0
	bge _080137A6
	movs r0, #0
	strh r0, [r3]
_080137A6:
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _080137BA
	ldrh r0, [r6]
	bl StartItemUseEffect
_080137BA:
	movs r0, #0x91
	bl PlaySE
	b _08013820
_080137C2:
	mov r3, r8
	cmp r3, #0xb
	bne _08013816
	movs r5, #0
_080137CA:
	ldr r0, [r6, #0x1c]
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801380E
	movs r0, #0x73
	bl PlaySE
	ldr r0, [r6, #0x1c]
	adds r0, r4, r0
	movs r1, #2
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	adds r4, r0, r4
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080137FE
	rsbs r0, r0, #0
_080137FE:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r5, [r4]
	adds r0, r0, r5
	strh r0, [r4]
	movs r5, #3
_0801380E:
	adds r5, #1
	cmp r5, #2
	ble _080137CA
	b _08013820
_08013816:
	movs r0, #0x61
	bl PlaySE
_0801381C:
	movs r0, #0
	b _0801382E
_08013820:
	mov r0, r8
	cmp r0, #0
	beq _0801382C
	movs r0, #0x20
	bl PlaySE
_0801382C:
	movs r0, #1
_0801382E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
