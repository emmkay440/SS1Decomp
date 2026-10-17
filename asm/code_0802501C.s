	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start CharacterMenuThread
CharacterMenuThread: @ 0x0802501C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa8
	add r2, sp, #0x6c
	adds r1, r2, #0
	ldr r0, _08025048 @ =0x080548DC
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802504C @ =gUnknown_030064D8
	ldr r0, [r0]
	adds r5, r2, #0
	cmp r0, #0
	beq _08025050
	bl sub_080076CC
	bl _08025928
	.align 2, 0
_08025048: .4byte 0x080548DC
_0802504C: .4byte gUnknown_030064D8
_08025050:
	bl sub_080076B8
	ldr r0, _08025068 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08025120
	lsls r0, r0, #2
	ldr r1, _0802506C @ =_08025070
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025068: .4byte gLanguage
_0802506C: .4byte _08025070
_08025070: @ jump table
	.4byte _08025120 @ case 0
	.4byte _08025088 @ case 1
	.4byte _080250A8 @ case 2
	.4byte _080250C8 @ case 3
	.4byte _080250E8 @ case 4
	.4byte _08025108 @ case 5
_08025088:
	ldr r0, _0802509C @ =0x0010006A
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _080250A0 @ =0x0011006A
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _080250A4 @ =0x0013006A
	b _0802511A
	.align 2, 0
_0802509C: .4byte 0x0010006A
_080250A0: .4byte 0x0011006A
_080250A4: .4byte 0x0013006A
_080250A8:
	ldr r0, _080250BC @ =0x00100073
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _080250C0 @ =0x00110073
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _080250C4 @ =0x00130073
	b _0802511A
	.align 2, 0
_080250BC: .4byte 0x00100073
_080250C0: .4byte 0x00110073
_080250C4: .4byte 0x00130073
_080250C8:
	ldr r0, _080250DC @ =0x0010007B
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _080250E0 @ =0x0011007B
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _080250E4 @ =0x0013007B
	b _0802511A
	.align 2, 0
_080250DC: .4byte 0x0010007B
_080250E0: .4byte 0x0011007B
_080250E4: .4byte 0x0013007B
_080250E8:
	ldr r0, _080250FC @ =0x00100083
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _08025100 @ =0x00110083
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _08025104 @ =0x00130083
	b _0802511A
	.align 2, 0
_080250FC: .4byte 0x00100083
_08025100: .4byte 0x00110083
_08025104: .4byte 0x00130083
_08025108:
	ldr r0, _08025194 @ =0x0010008D
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _08025198 @ =0x0011008D
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _0802519C @ =0x0013008D
_0802511A:
	bl GetDataRecord
	adds r4, r0, #0
_08025120:
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x1b
	movs r2, #1
	bl LoadPalette
	movs r7, #0
	mov r1, sp
	adds r1, #0x5c
	str r1, [sp, #0xa4]
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x3c
	str r3, [sp, #0x98]
	mov r6, sp
	adds r6, #0x4c
	str r6, [sp, #0x9c]
	mov r0, sp
	adds r0, #0x54
	str r0, [sp, #0xa0]
_0802514E:
	mov r0, sp
	adds r0, r0, r7
	adds r0, #0x1c
	strb r7, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xf
	bls _0802514E
	movs r7, #0
_08025162:
	lsls r4, r7, #2
	adds r0, r5, r4
	ldr r0, [r0]
	bl GetDataRecord
	ldr r1, [sp, #0xa4]
	adds r4, r1, r4
	str r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08025162
	bl GetMultiplayerId
	ldr r2, _080251A0 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	b _080251A8
	.align 2, 0
_08025194: .4byte 0x0010008D
_08025198: .4byte 0x0011008D
_0802519C: .4byte 0x0013008D
_080251A0: .4byte gPlayers
_080251A4:
	bl WaitFrame
_080251A8:
	bl sub_0800F430
	cmp r0, #0
	beq _080251A4
	movs r2, #0
	mov r8, r2
	movs r0, #0x12
	bl PlaySE
	ldr r3, _0802528C @ =0x080FBAE4
	mov sl, r3
_080251BE:
	movs r7, #0
	movs r5, #0x80
	add r5, r8
	mov sb, r5
_080251C6:
	lsls r4, r7, #3
	ldr r6, _08025290 @ =0x080FBAC4
	adds r0, r4, r6
	mov r2, sl
	adds r1, r4, r2
	lsls r6, r7, #2
	adds r3, r6, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x10
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _080251EA
	ldr r5, _08025294 @ =0x000003FF
	adds r0, r0, r5
_080251EA:
	asrs r1, r0, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	mov r5, r8
	subs r5, r0, r5
	mov ip, r5
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025202
	ldr r2, _08025294 @ =0x000003FF
	adds r0, r0, r2
_08025202:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, _08025298 @ =0x080FBAC8
	adds r0, r4, r3
	ldr r5, _0802529C @ =0x080FBAE8
	adds r1, r4, r5
	adds r3, r6, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x20
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _08025228
	ldr r1, _08025294 @ =0x000003FF
	adds r0, r0, r1
_08025228:
	asrs r1, r0, #0xa
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025236
	ldr r2, _08025294 @ =0x000003FF
	adds r0, r0, r2
_08025236:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, [sp, #0x94]
	adds r0, r3, r6
	ldr r0, [r0]
	asrs r0, r0, #0xc
	ldr r5, [sp, #0x98]
	adds r1, r5, r6
	ldr r1, [r1]
	asrs r1, r1, #0xc
	movs r2, #0
	str r2, [sp]
	add r6, sp, #0x1c
	str r6, [sp, #4]
	ldr r2, [sp, #0x80]
	str r2, [sp, #8]
	ldr r3, [sp, #0x7c]
	str r3, [sp, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_08003518
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _080251C6
	mov r8, sb
	bl WaitFrame
	ldr r0, _08025294 @ =0x000003FF
	cmp r8, r0
	ble _080251BE
	ldr r0, _080252A0 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #3
	bne _080252A4
	movs r0, #9
	movs r1, #0xf
	movs r2, #9
	b _080252AA
	.align 2, 0
_0802528C: .4byte 0x080FBAE4
_08025290: .4byte 0x080FBAC4
_08025294: .4byte 0x000003FF
_08025298: .4byte 0x080FBAC8
_0802529C: .4byte 0x080FBAE8
_080252A0: .4byte gLanguage
_080252A4:
	movs r0, #0xa
	movs r1, #0xf
	movs r2, #7
_080252AA:
	movs r3, #1
	bl sub_08021874
	str r0, [sp, #0x90]
	movs r5, #0
	str r5, [sp, #0x84]
	movs r6, #8
	str r6, [sp, #0x8c]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x88]
_080252C0:
	ldr r1, [sp, #0x88]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x8c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	cmp r1, #0
	ble _080252E6
	lsls r1, r0, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080252E6
	ldr r3, _08025364 @ =0x0000FFF8
	str r3, [sp, #0x8c]
_080252E6:
	ldr r5, [sp, #0x8c]
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _080252FC
	ldr r6, [sp, #0x88]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xdf
	bgt _080252FC
	movs r0, #8
	str r0, [sp, #0x8c]
_080252FC:
	movs r7, #0
	ldr r1, [sp, #0x84]
	lsls r1, r1, #2
	mov sl, r1
	ldr r2, _08025368 @ =0x080FBAE4
	mov r8, r2
	movs r3, #4
	add r3, r8
	mov sb, r3
	movs r6, #0
	ldr r5, [sp, #0x88]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
_08025316:
	lsls r2, r7, #1
	ldr r0, [sp, #0x9c]
	adds r4, r0, r2
	ldr r1, [sp, #0xa0]
	adds r2, r1, r2
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x80]
	bl sub_08004214
	ldr r2, [sp, #0x84]
	cmp r2, r7
	bne _0802536C
	lsls r1, r7, #3
	mov r3, r8
	adds r0, r1, r3
	ldr r0, [r0]
	asrs r0, r0, #0xc
	add r1, sb
	ldr r1, [r1]
	asrs r1, r1, #0xc
	ldrh r3, [r4]
	str r6, [sp]
	add r2, sp, #0x1c
	str r2, [sp, #4]
	ldr r2, [sp, #0x80]
	str r2, [sp, #8]
	ldr r2, [sp, #0x7c]
	str r2, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r6, [sp, #0x18]
	adds r2, r7, #0
	bl sub_08003724
	b _08025392
	.align 2, 0
_08025364: .4byte 0x0000FFF8
_08025368: .4byte 0x080FBAE4
_0802536C:
	lsls r1, r7, #3
	mov r3, r8
	adds r0, r1, r3
	ldr r0, [r0]
	asrs r0, r0, #0xc
	add r1, sb
	ldr r1, [r1]
	asrs r1, r1, #0xc
	ldrh r3, [r4]
	str r6, [sp]
	add r2, sp, #0x1c
	str r2, [sp, #4]
	ldr r2, [sp, #0x80]
	str r2, [sp, #8]
	ldr r2, [sp, #0x7c]
	str r2, [sp, #0xc]
	adds r2, r7, #0
	bl sub_08003518
_08025392:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08025316
	ldr r4, [sp, #0xa4]
	add r4, sl
	ldr r0, [r4]
	adds r0, #0xa
	bl sub_0800ED80
	ldr r1, _08025404 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r1, r0, r1
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldr r0, [r4]
	adds r0, #0xa
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x78
	movs r2, #0x7f
	bl sub_0800EB30
	bl WaitFrame
	bl sub_080077C0
	cmp r0, #0
	bne _080253DC
	bl sub_08016FA0
	cmp r0, #0
	beq _080253EE
_080253DC:
	ldr r5, _08025408 @ =gKeysNew
	ldr r4, _0802540C @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #8]
	strh r0, [r5]
_080253EE:
	ldr r0, _08025408 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025410
	movs r0, #0xf
	bl PlaySE
	b _080255F0
	.align 2, 0
_08025404: .4byte gUnknown_03003CA0
_08025408: .4byte gKeysNew
_0802540C: .4byte gPlayers
_08025410:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0802541A
	b _0802554C
_0802541A:
	movs r0, #0x10
	bl PlaySE
	movs r3, #0x80
	lsls r3, r3, #3
	mov r8, r3
	ldr r5, _080254EC @ =0x080FBAE4
	mov sl, r5
_0802542A:
	movs r7, #0
	movs r6, #0x80
	rsbs r6, r6, #0
	add r6, r8
	mov sb, r6
_08025434:
	lsls r4, r7, #3
	ldr r1, _080254F0 @ =0x080FBAC4
	adds r0, r4, r1
	mov r2, sl
	adds r1, r4, r2
	lsls r5, r7, #2
	adds r3, r5, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x10
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _08025458
	ldr r6, _080254F4 @ =0x000003FF
	adds r0, r0, r6
_08025458:
	asrs r1, r0, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	mov r6, r8
	subs r6, r0, r6
	mov ip, r6
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025470
	ldr r2, _080254F4 @ =0x000003FF
	adds r0, r0, r2
_08025470:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, _080254F8 @ =0x080FBAC8
	adds r0, r4, r3
	ldr r6, _080254FC @ =0x080FBAE8
	adds r1, r4, r6
	adds r3, r5, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x20
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _08025496
	ldr r1, _080254F4 @ =0x000003FF
	adds r0, r0, r1
_08025496:
	asrs r1, r0, #0xa
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _080254A4
	ldr r2, _080254F4 @ =0x000003FF
	adds r0, r0, r2
_080254A4:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, [sp, #0x94]
	adds r0, r3, r5
	ldr r0, [r0]
	asrs r0, r0, #0xc
	ldr r6, [sp, #0x98]
	adds r1, r6, r5
	ldr r1, [r1]
	asrs r1, r1, #0xc
	movs r2, #0
	str r2, [sp]
	add r2, sp, #0x1c
	str r2, [sp, #4]
	ldr r3, [sp, #0x80]
	str r3, [sp, #8]
	ldr r5, [sp, #0x7c]
	str r5, [sp, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_08003518
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08025434
	mov r8, sb
	bl WaitFrame
	mov r6, r8
	cmp r6, #0
	bgt _0802542A
	b _08025504
	.align 2, 0
_080254EC: .4byte 0x080FBAE4
_080254F0: .4byte 0x080FBAC4
_080254F4: .4byte 0x000003FF
_080254F8: .4byte 0x080FBAC8
_080254FC: .4byte 0x080FBAE8
_08025500:
	bl WaitFrame
_08025504:
	ldr r0, [sp, #0x90]
	bl sub_0802292C
	cmp r0, #0
	beq _08025500
	ldr r0, [sp, #0x90]
	bl sub_08022A0C
	b _0802551A
_08025516:
	bl WaitFrame
_0802551A:
	ldr r0, [sp, #0x90]
	bl sub_0802293C
	cmp r0, #0
	beq _08025516
	bl GetMultiplayerId
	ldr r3, _08025544 @ =gPlayers
	movs r1, #0xd4
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, r2, r3
	ldrh r0, [r2, #0x10]
	ldr r3, _08025548 @ =0x0000FFFE
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x10]
	bl sub_080076CC
	b _08025928
	.align 2, 0
_08025544: .4byte gPlayers
_08025548: .4byte 0x0000FFFE
_0802554C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08025566
	ldr r5, [sp, #0x84]
	cmp r5, #0
	beq _08025560
	movs r0, #0x62
	bl PlaySE
_08025560:
	movs r6, #0
	str r6, [sp, #0x84]
	b _080252C0
_08025566:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08025580
	ldr r0, [sp, #0x84]
	cmp r0, #1
	beq _0802557A
	movs r0, #0x62
	bl PlaySE
_0802557A:
	movs r1, #1
	str r1, [sp, #0x84]
	b _080252C0
_08025580:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080255D0
	bl sub_08007638
	cmp r0, #0
	beq _0802559A
	bl sub_08007544
	cmp r0, #0
	bne _0802559A
	b _080252C0
_0802559A:
	bl sub_080074F0
	cmp r0, #0
	beq _080255BE
	bl sub_08001F64
	cmp r0, #0
	bne _080255AC
	b _080252C0
_080255AC:
	ldr r2, [sp, #0x84]
	cmp r2, #2
	beq _080255B8
	movs r0, #0x62
	bl PlaySE
_080255B8:
	movs r3, #2
	str r3, [sp, #0x84]
	b _080252C0
_080255BE:
	ldr r5, [sp, #0x84]
	cmp r5, #2
	beq _080255CA
	movs r0, #0x62
	bl PlaySE
_080255CA:
	movs r6, #2
	str r6, [sp, #0x84]
	b _080252C0
_080255D0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080255DA
	b _080252C0
_080255DA:
	ldr r0, [sp, #0x84]
	cmp r0, #3
	beq _080255E6
	movs r0, #0x62
	bl PlaySE
_080255E6:
	movs r1, #3
	str r1, [sp, #0x84]
	b _080252C0
_080255EC:
	bl WaitFrame
_080255F0:
	ldr r0, [sp, #0x90]
	bl sub_0802292C
	cmp r0, #0
	beq _080255EC
	bl WaitFrame
	bl WaitFrame
	ldr r0, [sp, #0x90]
	bl sub_08022A0C
	ldr r2, [sp, #0x84]
	cmp r2, #2
	beq _08025614
	movs r0, #6
	bl sub_0800F3A0
_08025614:
	movs r3, #0x80
	lsls r3, r3, #3
	mov r8, r3
	ldr r5, _080256E8 @ =0x080FBAE4
	mov sl, r5
_0802561E:
	movs r7, #0
	movs r6, #0x80
	rsbs r6, r6, #0
	add r6, r8
	mov sb, r6
_08025628:
	lsls r4, r7, #3
	ldr r1, _080256EC @ =0x080FBAC4
	adds r0, r4, r1
	mov r2, sl
	adds r1, r4, r2
	lsls r6, r7, #2
	adds r3, r6, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x10
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _0802564C
	ldr r5, _080256F0 @ =0x000003FF
	adds r0, r0, r5
_0802564C:
	asrs r1, r0, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	mov r5, r8
	subs r5, r0, r5
	mov ip, r5
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025664
	ldr r2, _080256F0 @ =0x000003FF
	adds r0, r0, r2
_08025664:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, _080256F4 @ =0x080FBAC8
	adds r0, r4, r3
	ldr r5, _080256F8 @ =0x080FBAE8
	adds r1, r4, r5
	adds r3, r6, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x20
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _0802568A
	ldr r1, _080256F0 @ =0x000003FF
	adds r0, r0, r1
_0802568A:
	asrs r1, r0, #0xa
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025698
	ldr r2, _080256F0 @ =0x000003FF
	adds r0, r0, r2
_08025698:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, [sp, #0x94]
	adds r0, r3, r6
	ldr r0, [r0]
	asrs r0, r0, #0xc
	ldr r5, [sp, #0x98]
	adds r1, r5, r6
	ldr r1, [r1]
	asrs r1, r1, #0xc
	movs r2, #0
	str r2, [sp]
	add r6, sp, #0x1c
	str r6, [sp, #4]
	ldr r2, [sp, #0x80]
	str r2, [sp, #8]
	ldr r3, [sp, #0x7c]
	str r3, [sp, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_08003518
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08025628
	mov r8, sb
	bl WaitFrame
	mov r5, r8
	cmp r5, #0
	bgt _0802561E
	bl sub_0800F298
	cmp r0, #0
	beq _0802561E
	b _08025700
	.align 2, 0
_080256E8: .4byte 0x080FBAE4
_080256EC: .4byte 0x080FBAC4
_080256F0: .4byte 0x000003FF
_080256F4: .4byte 0x080FBAC8
_080256F8: .4byte 0x080FBAE8
_080256FC:
	bl WaitFrame
_08025700:
	ldr r0, [sp, #0x90]
	bl sub_0802293C
	cmp r0, #0
	beq _080256FC
	ldr r6, [sp, #0x84]
	cmp r6, #1
	beq _080257C4
	cmp r6, #1
	bgt _0802571A
	cmp r6, #0
	beq _0802572A
	b _080258EE
_0802571A:
	ldr r0, [sp, #0x84]
	cmp r0, #2
	bne _08025722
	b _08025860
_08025722:
	cmp r0, #3
	bne _08025728
	b _08025868
_08025728:
	b _080258EE
_0802572A:
	bl sub_08007544
	cmp r0, #0
	beq _0802573C
	ldr r0, _08025738 @ =gMapLayer_03003C00
	b _0802573E
	.align 2, 0
_08025738: .4byte gMapLayer_03003C00
_0802573C:
	ldr r0, _080257B4 @ =gMapLayer_03003910
_0802573E:
	ldr r1, [r0, #0x78]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0x78]
	bl WaitFrame
	bl WaitFrame
	ldr r1, _080257B8 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	ldr r4, _080257B4 @ =gMapLayer_03003910
	adds r5, r4, #0
	adds r5, #0x5c
	movs r1, #0
	ldrsh r7, [r5, r1]
	adds r4, #0x5e
	movs r2, #0
	ldrsh r6, [r4, r2]
	movs r0, #1
	bl StartMenuScreen
	bl sub_08007520
	ldr r0, _080257BC @ =0x11201100
	bl _08000400
	strh r7, [r5]
	strh r6, [r4]
	movs r7, #0
	ldr r3, _080257C0 @ =gPlayerStats
	movs r2, #0
_0802578C:
	lsls r0, r7, #2
	adds r1, r0, r3
	adds r0, r1, #0
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _080257A4
	adds r0, r1, #0
	adds r0, #0x8a
	strb r2, [r0]
_080257A4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x18
	bls _0802578C
	bl sub_08007530
	b _08025836
	.align 2, 0
_080257B4: .4byte gMapLayer_03003910
_080257B8: .4byte gBgRegsBuffer
_080257BC: .4byte 0x11201100
_080257C0: .4byte gPlayerStats
_080257C4:
	bl sub_08007544
	cmp r0, #0
	beq _080257D4
	ldr r0, _080257D0 @ =gMapLayer_03003C00
	b _080257D6
	.align 2, 0
_080257D0: .4byte gMapLayer_03003C00
_080257D4:
	ldr r0, _08025848 @ =gMapLayer_03003910
_080257D6:
	ldr r1, [r0, #0x78]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0x78]
	bl WaitFrame
	bl WaitFrame
	ldr r1, _0802584C @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	movs r0, #8
	bl StartMenuScreen
	bl sub_08007520
	ldr r4, _08025848 @ =gMapLayer_03003910
	adds r5, r4, #0
	adds r5, #0x5c
	movs r3, #0
	ldrsh r7, [r5, r3]
	adds r4, #0x5e
	movs r0, #0
	ldrsh r6, [r4, r0]
	ldr r0, _08025850 @ =0x11201100
	bl _08000400
	strh r7, [r5]
	strh r6, [r4]
	bl sub_08007530
	bl GetMultiplayerId
	ldr r2, _08025854 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08025858 @ =0x0000FFF7
	ands r0, r2
	strh r0, [r1, #0x10]
_08025836:
	bl sub_08007544
	cmp r0, #0
	bne _080258CE
	ldr r0, _0802585C @ =0x000514C8
	bl SignalEvent
	b _080258EE
	.align 2, 0
_08025848: .4byte gMapLayer_03003910
_0802584C: .4byte gBgRegsBuffer
_08025850: .4byte 0x11201100
_08025854: .4byte gPlayers
_08025858: .4byte 0x0000FFF7
_0802585C: .4byte 0x000514C8
_08025860:
	movs r0, #0
	bl QuitToTitle
	b _080258EE
_08025868:
	bl sub_08007544
	cmp r0, #0
	beq _08025878
	ldr r0, _08025874 @ =gMapLayer_03003C00
	b _0802587A
	.align 2, 0
_08025874: .4byte gMapLayer_03003C00
_08025878:
	ldr r0, _080258D8 @ =gMapLayer_03003910
_0802587A:
	ldr r1, [r0, #0x78]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0x78]
	bl WaitFrame
	bl WaitFrame
	ldr r1, _080258DC @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	movs r0, #9
	bl StartMenuScreen
	bl sub_08007520
	ldr r4, _080258D8 @ =gMapLayer_03003910
	adds r5, r4, #0
	adds r5, #0x5c
	movs r1, #0
	ldrsh r7, [r5, r1]
	adds r4, #0x5e
	movs r2, #0
	ldrsh r6, [r4, r2]
	ldr r0, _080258E0 @ =0x11201100
	bl _08000400
	strh r7, [r5]
	strh r6, [r4]
	bl sub_08007530
	bl sub_08007544
	cmp r0, #0
	beq _080258E8
_080258CE:
	ldr r0, _080258E4 @ =0x000514C9
	bl SignalEvent
	b _080258EE
	.align 2, 0
_080258D8: .4byte gMapLayer_03003910
_080258DC: .4byte gBgRegsBuffer
_080258E0: .4byte 0x11201100
_080258E4: .4byte 0x000514C9
_080258E8:
	ldr r0, _08025900 @ =0x000514C8
	bl SignalEvent
_080258EE:
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	b _08025908
	.align 2, 0
_08025900: .4byte 0x000514C8
_08025904:
	bl WaitFrame
_08025908:
	bl sub_0800F298
	cmp r0, #0
	beq _08025904
	bl GetMultiplayerId
	ldr r2, _08025938 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0802593C @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	bl sub_080076CC
_08025928:
	add sp, #0xa8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025938: .4byte gPlayers
_0802593C: .4byte 0x0000FFFE
