	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08040120
sub_08040120: @ 0x08040120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #0
	mov sl, r0
	ldrb r0, [r6, #2]
	cmp r0, #2
	beq _08040158
	cmp r0, #2
	bgt _08040140
	cmp r0, #1
	beq _0804014A
	b _08040174
_08040140:
	cmp r0, #3
	beq _08040168
	cmp r0, #6
	beq _08040170
	b _08040174
_0804014A:
	ldr r0, _08040154 @ =gMenuWeapons
	ldr r7, [r0]
	movs r1, #1
	mov sl, r1
	b _08040174
	.align 2, 0
_08040154: .4byte gMenuWeapons
_08040158:
	ldr r0, _08040164 @ =gMenuEquipment
	ldr r7, [r0]
	movs r0, #1
	mov sl, r0
	b _08040174
	.align 2, 0
_08040164: .4byte gMenuEquipment
_08040168:
	ldr r0, _0804016C @ =gMenuInventory
	b _08040172
	.align 2, 0
_0804016C: .4byte gMenuInventory
_08040170:
	ldr r0, _080401DC @ =gUnknown_030004A4
_08040172:
	ldr r7, [r0]
_08040174:
	ldrb r2, [r6, #2]
	cmp r2, #5
	bne _0804017C
	b _080402A0
_0804017C:
	ldrh r1, [r6, #2]
	ldr r0, _080401E0 @ =0x00000302
	cmp r1, r0
	bne _08040186
	b _080402A0
_08040186:
	cmp r2, #4
	bne _0804018C
	b _08040288
_0804018C:
	cmp r2, #6
	bne _0804023C
	ldr r0, _080401E4 @ =gMenuPage
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #5
	beq _0804023C
	movs r5, #0
	ldr r0, _080401E8 @ =gMenuInventory
	ldr r2, [r0]
	movs r0, #0
	ldrb r1, [r6, #3]
	mov r8, r1
_080401A6:
	movs r3, #0
	adds r4, r0, #1
_080401AA:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080401B8
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_080401B8:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _080401AA
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080401A6
	mov ip, r5
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #5
	beq _080401F0
	ldr r0, _080401EC @ =gUnknown_030004A8
	b _080401F2
	.align 2, 0
_080401DC: .4byte gUnknown_030004A4
_080401E0: .4byte 0x00000302
_080401E4: .4byte gMenuPage
_080401E8: .4byte gMenuInventory
_080401EC: .4byte gUnknown_030004A8
_080401F0:
	ldr r0, _08040238 @ =gUnknown_030004A4
_080401F2:
	ldr r2, [r0]
	movs r5, #0
	movs r0, #0
_080401F8:
	movs r3, #0
	adds r4, r0, #1
_080401FC:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0804020A
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_0804020A:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080401FC
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080401F8
	mov r0, ip
	adds r4, r0, r5
	mov r1, r8
	lsls r0, r1, #2
	adds r0, r7, r0
	bl sub_08040DB0
	cmp r4, r0
	bhs _0804023C
	movs r0, #0x61
	bl PlaySE
	b _080402A0
	.align 2, 0
_08040238: .4byte gUnknown_030004A4
_0804023C:
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	adds r2, r0, r7
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080402A0
	ldr r1, _08040268 @ =gMenuSelectedSlot
	ldr r0, [r6]
	str r0, [r1]
	ldr r0, _0804026C @ =gMenuSelectedItem
	str r2, [r0]
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08040270
	movs r0, #0x63
	bl PlaySE
	b _08040284
	.align 2, 0
_08040268: .4byte gMenuSelectedSlot
_0804026C: .4byte gMenuSelectedItem
_08040270:
	mov r0, sl
	cmp r0, #0
	bne _0804027E
	movs r0, #0x5e
	bl PlaySE
	b _08040284
_0804027E:
	movs r0, #0x80
	bl PlaySE
_08040284:
	movs r0, #1
	b _080402A2
_08040288:
	ldrb r0, [r6, #3]
	ldr r1, _080402B0 @ =gUnknown_03000494
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	beq _080402A0
	movs r0, #0
	strh r0, [r1]
	bl ApplyMenuChanges
_080402A0:
	movs r0, #0
_080402A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080402B0: .4byte gUnknown_03000494

	thumb_func_start sub_080402B4
sub_080402B4: @ 0x080402B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	mov sb, r1
	movs r0, #1
	mov r8, r0
	ldr r1, _080402EC @ =gMenuSelectedSlot
	ldrh r0, [r6, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	bne _080402F4
	bl sub_08040C54
	ldrb r0, [r6, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080402F0
	movs r0, #0x80
	bl PlaySE
	b _08040860
	.align 2, 0
_080402EC: .4byte gMenuSelectedSlot
_080402F0:
	movs r0, #0x5e
	b _0804085C
_080402F4:
	movs r7, #0
	movs r1, #0
	str r1, [sp, #0x1c]
	ldrb r0, [r6, #2]
	cmp r0, #2
	beq _08040324
	cmp r0, #2
	bgt _0804030A
	cmp r0, #1
	beq _08040314
	b _08040340
_0804030A:
	cmp r0, #3
	beq _08040334
	cmp r0, #6
	beq _0804033C
	b _08040340
_08040314:
	ldr r0, _08040320 @ =gMenuWeapons
	ldr r7, [r0]
	movs r2, #1
	str r2, [sp, #0x1c]
	b _08040340
	.align 2, 0
_08040320: .4byte gMenuWeapons
_08040324:
	ldr r0, _08040330 @ =gMenuEquipment
	ldr r7, [r0]
	movs r3, #1
	str r3, [sp, #0x1c]
	b _08040340
	.align 2, 0
_08040330: .4byte gMenuEquipment
_08040334:
	ldr r0, _08040338 @ =gMenuInventory
	b _0804033E
	.align 2, 0
_08040338: .4byte gMenuInventory
_0804033C:
	ldr r0, _0804039C @ =gUnknown_030004A4
_0804033E:
	ldr r7, [r0]
_08040340:
	ldrb r0, [r6, #2]
	cmp r0, #4
	bne _08040348
	b _080406D6
_08040348:
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _0804035A
	b _080404C2
_0804035A:
	adds r0, r6, #0
	adds r1, r7, #0
	bl CanSwapItems
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804036A
	b _08040864
_0804036A:
	movs r4, #0
	ldr r0, _080403A0 @ =gMenuSelectedSlot
	mov sl, r0
	ldr r1, _080403A4 @ =gMenuPage
	mov ip, r1
	mov r5, sl
_08040376:
	ldrb r0, [r5, #2]
	cmp r0, #3
	bne _080403B6
	ldrb r0, [r6, #2]
	cmp r0, #3
	bne _080403B6
	ldr r0, _080403A8 @ =gUnknown_03000494
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r1, r0, r1
	ldrh r2, [r1]
	ldrb r0, [r5, #3]
	adds r3, r0, #1
	cmp r2, r3
	bne _080403AC
	ldrb r0, [r6, #3]
	adds r0, #1
	strh r0, [r1]
	b _080403B6
	.align 2, 0
_0804039C: .4byte gUnknown_030004A4
_080403A0: .4byte gMenuSelectedSlot
_080403A4: .4byte gMenuPage
_080403A8: .4byte gUnknown_03000494
_080403AC:
	ldrb r0, [r6, #3]
	adds r0, #1
	cmp r2, r0
	bne _080403B6
	strh r3, [r1]
_080403B6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08040376
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #5
	bne _080403DE
	mov r3, sl
	ldrb r0, [r3, #2]
	cmp r0, #6
	beq _080403DE
	ldrb r0, [r6, #2]
	cmp r0, #6
	bne _080403DE
	bl sub_0804096C
	bl ApplyMenuChanges
_080403DE:
	ldr r4, _08040410 @ =gMenuSelectedItem
	ldr r0, [r4]
	ldrh r1, [r0]
	ldr r0, _08040414 @ =0x00003FF0
	ands r0, r1
	movs r1, #0xc2
	lsls r1, r1, #3
	cmp r0, r1
	bne _08040418
	adds r0, r7, #0
	bl sub_0804134C
	cmp r0, #0
	beq _08040418
	adds r0, r7, #0
	bl AppraiseItem
	ldr r0, [r4]
	movs r1, #4
	bl bzero
	movs r4, #0xa
	mov r8, r4
	b _08040776
	.align 2, 0
_08040410: .4byte gMenuSelectedItem
_08040414: .4byte 0x00003FF0
_08040418:
	ldr r1, _0804046C @ =gMenuSelectedItem
	ldr r5, [r1]
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	ldr r4, [r7]
	adds r2, r1, #0
	cmp r0, #7
	bne _080404B8
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080404B8
	lsrs r3, r4, #0xf
	mov r1, sb
	ldr r0, [r1, #0xc]
	adds r1, r3, r0
	ldr r0, _08040470 @ =0x000186A0
	cmp r1, r0
	bls _08040480
	subs r3, r0, r3
	ldr r1, _08040474 @ =0x00007FFF
	adds r0, r1, #0
	ands r0, r4
	ldr r2, _08040478 @ =0xC3500000
	orrs r0, r2
	str r0, [r7]
	ldr r2, [r5]
	lsrs r0, r2, #0xf
	subs r0, r0, r3
	lsls r0, r0, #0xf
	ands r1, r2
	orrs r1, r0
	str r1, [r5]
	mov r2, sb
	ldr r0, [r2, #0xc]
	subs r0, r0, r3
	str r0, [r2, #0xc]
	ldr r1, _0804047C @ =gMenuHeldCount
	str r0, [r1]
	b _08040864
	.align 2, 0
_0804046C: .4byte gMenuSelectedItem
_08040470: .4byte 0x000186A0
_08040474: .4byte 0x00007FFF
_08040478: .4byte 0xC3500000
_0804047C: .4byte gMenuHeldCount
_08040480:
	lsls r1, r1, #0xf
	ldr r3, _080404AC @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r4
	orrs r0, r1
	str r0, [r7]
	ldr r0, _080404B0 @ =gUnknown_03000479
	ldrb r0, [r0]
	cmp r0, #0
	beq _080404B4
	ldr r2, [r5]
	lsrs r1, r2, #0xf
	mov r4, sb
	ldr r0, [r4, #0xc]
	subs r1, r1, r0
	lsls r1, r1, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	str r0, [r5]
	b _08040776
	.align 2, 0
_080404AC: .4byte 0x00007FFF
_080404B0: .4byte gUnknown_03000479
_080404B4:
	adds r0, r5, #0
	b _08040606
_080404B8:
	ldr r0, [r2]
	ldr r2, [r0]
	str r4, [r0]
	str r2, [r7]
	b _08040776
_080404C2:
	ldr r0, _08040570 @ =gMenuSelectedItem
	ldr r1, [r0]
	adds r0, r6, #0
	bl CanPutItemInSlot
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080404D4
	b _08040864
_080404D4:
	movs r4, #0
	ldr r0, _08040574 @ =gMenuSelectedSlot
	mov sl, r0
	mov r3, sl
_080404DC:
	ldrb r0, [r3, #2]
	cmp r0, #3
	bne _08040500
	ldrb r0, [r6, #2]
	cmp r0, #3
	bne _08040500
	ldr r0, _08040578 @ =gUnknown_03000494
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r2, r0, r1
	ldrh r1, [r2]
	ldrb r0, [r3, #3]
	adds r0, #1
	cmp r1, r0
	bne _08040500
	ldrb r0, [r6, #3]
	adds r0, #1
	strh r0, [r2]
_08040500:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080404DC
	ldr r0, _0804057C @ =gMenuPage
	ldrb r0, [r0]
	cmp r0, #5
	bne _08040528
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #6
	beq _08040528
	ldrb r0, [r6, #2]
	cmp r0, #6
	bne _08040528
	bl sub_0804096C
	bl ApplyMenuChanges
_08040528:
	ldr r1, _0804057C @ =gMenuPage
	ldrb r0, [r1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r1
	cmp r0, #2
	bhi _08040580
	ldrb r0, [r6, #2]
	cmp r0, #3
	beq _08040546
	cmp r0, #1
	beq _08040546
	cmp r0, #2
	bne _08040580
_08040546:
	ldr r1, _08040574 @ =gMenuSelectedSlot
	ldrb r0, [r1, #2]
	cmp r0, #6
	bne _08040580
	movs r2, #3
	mov r8, r2
	ldrb r0, [r1, #3]
	cmp r0, #8
	bhi _0804055A
	b _08040860
_0804055A:
	mov r3, ip
	ldrb r0, [r3]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0804056A
	b _08040860
_0804056A:
	movs r4, #9
	mov r8, r4
	b _08040860
	.align 2, 0
_08040570: .4byte gMenuSelectedItem
_08040574: .4byte gMenuSelectedSlot
_08040578: .4byte gUnknown_03000494
_0804057C: .4byte gMenuPage
_08040580:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #5
	beq _080405B8
	ldrh r1, [r6, #2]
	ldr r0, _080405B0 @ =0x00000C06
	cmp r1, r0
	bne _080405B8
	ldr r1, _080405B4 @ =gMenuSelectedSlot
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _080405A2
	cmp r0, #2
	bne _080405AC
	ldrb r0, [r1, #3]
	cmp r0, #2
	bhi _080405AC
_080405A2:
	bl sub_080414C8
	cmp r0, #0
	bne _080405AC
	b _08040864
_080405AC:
	movs r0, #2
	b _0804086C
	.align 2, 0
_080405B0: .4byte 0x00000C06
_080405B4: .4byte gMenuSelectedSlot
_080405B8:
	ldr r1, _08040610 @ =gMenuSelectedItem
	ldr r4, [r1]
	ldr r3, [r4]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1d
	adds r2, r1, #0
	cmp r0, #7
	bne _0804061C
	ldr r0, _08040614 @ =gUnknown_03000479
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804061C
	lsrs r1, r3, #0xf
	mov r2, sb
	ldr r0, [r2, #0xc]
	subs r1, r1, r0
	lsls r1, r1, #0xf
	ldr r2, _08040618 @ =0x00007FFF
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	str r0, [r4]
	str r0, [r7]
	mov r3, sb
	ldr r1, [r3, #0xc]
	lsls r1, r1, #0xf
	ands r2, r0
	orrs r2, r1
	str r2, [r7]
	ldrb r0, [r6, #2]
	cmp r0, #5
	beq _080405FA
	b _08040776
_080405FA:
	adds r0, r2, #0
	bl DropItem
	movs r4, #5
	mov r8, r4
	adds r0, r7, #0
_08040606:
	movs r1, #4
	bl bzero
	b _08040776
	.align 2, 0
_08040610: .4byte gMenuSelectedItem
_08040614: .4byte gUnknown_03000479
_08040618: .4byte 0x00007FFF
_0804061C:
	ldrb r0, [r6, #2]
	cmp r0, #5
	bne _08040658
	ldr r4, _08040654 @ =gMenuSelectedItem
	ldr r0, [r4]
	bl GetCategory5Record
	cmp r0, #0
	beq _08040640
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040640
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #2]
_08040640:
	ldr r0, _08040654 @ =gMenuSelectedItem
	ldr r0, [r0]
	ldr r0, [r0]
	bl DropItem
	movs r2, #5
	mov r8, r2
	bl sub_08040EC0
	b _08040776
	.align 2, 0
_08040654: .4byte gMenuSelectedItem
_08040658:
	ldrh r1, [r6, #2]
	ldr r0, _0804066C @ =0x00000302
	cmp r1, r0
	beq _08040670
	ldr r1, [r2]
	ldr r2, [r1]
	ldr r0, [r7]
	str r0, [r1]
	str r2, [r7]
	b _08040776
	.align 2, 0
_0804066C: .4byte 0x00000302
_08040670:
	bl sub_08007544
	cmp r0, #0
	beq _08040686
	ldr r0, _080406C8 @ =gMenuSelectedItem
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #6
	beq _080406CC
_08040686:
	ldr r4, _080406C8 @ =gMenuSelectedItem
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #6
	bne _0804069C
	bl sub_08007638
	cmp r0, #0
	bne _080406CC
_0804069C:
	ldr r0, [r4]
	bl UseItem
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r3, #7
	mov r8, r3
	cmp r0, #6
	beq _080406BA
	movs r4, #6
	mov r8, r4
_080406BA:
	cmp r1, #0
	beq _08040776
	bl sub_0804096C
	bl sub_08040EC0
	b _08040776
	.align 2, 0
_080406C8: .4byte gMenuSelectedItem
_080406CC:
	movs r0, #0x61
	bl PlaySE
	movs r0, #1
	b _0804086C
_080406D6:
	movs r4, #0
	ldr r5, _0804074C @ =gUnknown_03000494
	ldr r2, [r5]
_080406DC:
	lsls r0, r4, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08040706
	ldr r1, _08040750 @ =gMenuInventory
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x19
	ldr r0, _08040754 @ =gMenuSelectedItem
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r1, r0
	bne _08040706
	b _08040864
_08040706:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080406DC
	ldrb r0, [r6, #3]
	adds r4, r5, #0
	ldr r1, [r4]
	lsls r0, r0, #1
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #0
	beq _08040758
	ldr r1, _08040750 @ =gMenuInventory
	lsls r0, r0, #2
	subs r0, #4
	ldr r1, [r1]
	adds r7, r1, r0
	ldr r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _08040776
	adds r0, r6, #0
	adds r1, r7, #0
	bl CanSwapItems
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040744
	b _08040864
_08040744:
	ldrb r1, [r6, #3]
	ldr r0, [r4]
	b _0804076A
	.align 2, 0
_0804074C: .4byte gUnknown_03000494
_08040750: .4byte gMenuInventory
_08040754: .4byte gMenuSelectedItem
_08040758:
	ldr r0, _080407C8 @ =gMenuSelectedItem
	ldr r0, [r0]
	bl sub_08014EB4
	cmp r0, #0
	bne _08040766
	b _08040864
_08040766:
	ldrb r1, [r6, #3]
	ldr r0, [r5]
_0804076A:
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, _080407CC @ =gMenuSelectedSlot
	ldrb r0, [r0, #3]
	adds r0, #1
	strh r0, [r1]
_08040776:
	bl ApplyMenuChanges
	bl sub_08016DC0
	ldr r4, _080407C8 @ =gMenuSelectedItem
	ldr r0, [r4]
	bl GetCategory5Record
	cmp r0, #0
	beq _0804079C
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804079C
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #2]
_0804079C:
	mov r2, r8
	cmp r2, #1
	bne _080407B8
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _080407B8
	ldr r0, _080407D0 @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	ldrb r6, [r6, #3]
	cmp r0, r6
	beq _080407B8
	movs r3, #0xd
	mov r8, r3
_080407B8:
	bl sub_08040C54
	ldr r0, _080407D4 @ =gMenuPage
	ldrb r0, [r0]
	cmp r0, #5
	beq _080407DC
	ldr r0, _080407D8 @ =gUnknown_030004A8
	b _080407DE
	.align 2, 0
_080407C8: .4byte gMenuSelectedItem
_080407CC: .4byte gMenuSelectedSlot
_080407D0: .4byte gPlayerStats
_080407D4: .4byte gMenuPage
_080407D8: .4byte gUnknown_030004A8
_080407DC:
	ldr r0, _0804082C @ =gUnknown_030004A4
_080407DE:
	ldr r2, [r0]
	movs r5, #0
	movs r0, #0
	ldr r6, _08040830 @ =gUnknown_03000488
_080407E6:
	movs r3, #0
	adds r4, r0, #1
_080407EA:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080407F8
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_080407F8:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080407EA
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080407E6
	str r5, [r6]
	mov r4, r8
	cmp r4, #1
	beq _0804081C
	cmp r4, #0xb
	beq _0804081C
	cmp r4, #0xd
	bne _08040846
_0804081C:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _08040834
	movs r0, #0x5e
	bl PlaySE
	b _08040860
	.align 2, 0
_0804082C: .4byte gUnknown_030004A4
_08040830: .4byte gUnknown_03000488
_08040834:
	movs r0, #0x80
	bl PlaySE
	mov r1, r8
	cmp r1, #0xd
	beq _08040860
	movs r2, #0xb
	mov r8, r2
	b _08040860
_08040846:
	mov r3, r8
	cmp r3, #5
	bne _08040854
	movs r0, #0x60
	bl PlaySE
	b _08040860
_08040854:
	mov r4, r8
	cmp r4, #0xa
	bne _08040860
	movs r0, #0x80
_0804085C:
	bl PlaySE
_08040860:
	mov r0, r8
	b _0804086C
_08040864:
	movs r0, #0x61
	bl PlaySE
	movs r0, #0
_0804086C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
