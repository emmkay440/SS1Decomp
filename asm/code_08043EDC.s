	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08043EDC
sub_08043EDC: @ 0x08043EDC
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08041294
	cmp r0, #0
	beq _08043EEA
	b _08044580
_08043EEA:
	ldr r1, _08043F64 @ =gUnknown_030005C2
	strh r0, [r1]
	ldr r0, _08043F68 @ =gKeysRepeat
	ldrh r2, [r0]
	movs r6, #0x10
	adds r0, r6, #0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08043F00
	strh r6, [r5]
_08043F00:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	adds r1, r2, #0
	cmp r0, #0
	beq _08043F0E
	strh r3, [r5]
_08043F0E:
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08043F1A
	strh r3, [r5]
_08043F1A:
	movs r1, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08043F26
	strh r1, [r5]
_08043F26:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08043F32
	ldr r1, _08043F6C @ =gUnknown_030005C1
	movs r0, #0
	strb r0, [r1]
_08043F32:
	ldr r0, _08043F70 @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r4, r0, #0x1f
	ands r4, r6
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08043F4E
	movs r4, #0x20
_08043F4E:
	ldr r0, _08043F74 @ =gUnknown_030005B8
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x10
	bls _08043F5A
	b _08044580
_08043F5A:
	lsls r0, r1, #2
	ldr r1, _08043F78 @ =_08043F7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043F64: .4byte gUnknown_030005C2
_08043F68: .4byte gKeysRepeat
_08043F6C: .4byte gUnknown_030005C1
_08043F70: .4byte gKeysNew
_08043F74: .4byte gUnknown_030005B8
_08043F78: .4byte _08043F7C
_08043F7C: @ jump table
	.4byte _080440E8 @ case 0
	.4byte _080440E8 @ case 1
	.4byte _08044198 @ case 2
	.4byte _0804424C @ case 3
	.4byte _0804424C @ case 4
	.4byte _0804424C @ case 5
	.4byte _08044288 @ case 6
	.4byte _0804424C @ case 7
	.4byte _08044328 @ case 8
	.4byte _0804424C @ case 9
	.4byte _080443C8 @ case 10
	.4byte _08043FC0 @ case 11
	.4byte _08044580 @ case 12
	.4byte _0804456C @ case 13
	.4byte _08043FF8 @ case 14
	.4byte _0804407C @ case 15
	.4byte _0804424C @ case 16
_08043FC0:
	ldr r2, _08043FEC @ =gUnknown_030005C8
	ldr r3, _08043FF0 @ =gUnknown_030005BA
	ldrb r0, [r2]
	ldrb r1, [r3]
	subs r0, r0, r1
	strb r0, [r2]
	subs r1, #2
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x88
	bls _08043FDA
	b _08044580
_08043FDA:
	movs r0, #0xc
	strb r0, [r6]
	ldr r1, _08043FF4 @ =gUnknown_030005D4
	movs r0, #0x50
	strb r0, [r1]
	movs r0, #0x11
	strb r0, [r1, #3]
	b _08044580
	.align 2, 0
_08043FEC: .4byte gUnknown_030005C8
_08043FF0: .4byte gUnknown_030005BA
_08043FF4: .4byte gUnknown_030005D4
_08043FF8:
	ldr r0, _08044030 @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #7
	beq _08044040
	ldr r1, _08044034 @ =gUnknown_030005C8
	ldr r3, _08044038 @ =gUnknown_030005BA
	ldrb r0, [r3]
	ldrb r4, [r1]
	adds r2, r0, r4
	strb r2, [r1]
	adds r0, #2
	strb r0, [r3]
	ldr r4, _0804403C @ =gUnknown_030005D4
	ldrb r0, [r4]
	ldrb r1, [r4, #3]
	subs r0, r0, r1
	strb r0, [r4]
	subs r1, #2
	strb r1, [r4, #3]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0xd7
	bhi _08044028
	b _08044580
_08044028:
	movs r0, #0
	strb r0, [r6]
	b _0804404C
	.align 2, 0
_08044030: .4byte gUnknown_030005B9
_08044034: .4byte gUnknown_030005C8
_08044038: .4byte gUnknown_030005BA
_0804403C: .4byte gUnknown_030005D4
_08044040:
	ldr r1, _0804406C @ =gUnknown_030005C8
	movs r2, #0
	movs r0, #0xd8
	strb r0, [r1]
	strb r2, [r6]
	ldr r4, _08044070 @ =gUnknown_030005D4
_0804404C:
	movs r0, #3
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_08045304
	ldr r1, _08044074 @ =gUnknown_030005D0
	ldr r0, [r4]
	str r0, [r1]
	bl sub_08045E14
	ldr r1, _08044078 @ =gUnknown_030005BF
	movs r0, #1
	strb r0, [r1]
	b _08044580
	.align 2, 0
_0804406C: .4byte gUnknown_030005C8
_08044070: .4byte gUnknown_030005D4
_08044074: .4byte gUnknown_030005D0
_08044078: .4byte gUnknown_030005BF
_0804407C:
	ldr r0, _080440B8 @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #7
	beq _080440CC
	ldr r1, _080440BC @ =gUnknown_030005C8
	ldr r2, _080440C0 @ =gUnknown_030005BA
	ldrb r3, [r1]
	ldrb r0, [r2]
	subs r3, r3, r0
	strb r3, [r1]
	subs r0, #2
	strb r0, [r2]
	ldr r1, _080440C4 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	ldrb r4, [r1]
	adds r2, r0, r4
	strb r2, [r1]
	adds r0, #3
	strb r0, [r1, #3]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0x88
	bls _080440AC
	b _08044580
_080440AC:
	movs r0, #0xd
	strb r0, [r6]
	ldr r1, _080440C8 @ =gUnknown_030005D0
	movs r0, #0
	strb r0, [r1, #3]
	b _08044580
	.align 2, 0
_080440B8: .4byte gUnknown_030005B9
_080440BC: .4byte gUnknown_030005C8
_080440C0: .4byte gUnknown_030005BA
_080440C4: .4byte gUnknown_030005D4
_080440C8: .4byte gUnknown_030005D0
_080440CC:
	ldr r1, _080440E0 @ =gUnknown_030005C8
	movs r2, #0
	movs r0, #0x87
	strb r0, [r1]
	movs r0, #0xd
	strb r0, [r6]
	ldr r0, _080440E4 @ =gUnknown_030005D0
	strb r2, [r0, #3]
	b _08044580
	.align 2, 0
_080440E0: .4byte gUnknown_030005C8
_080440E4: .4byte gUnknown_030005D0
_080440E8:
	ldr r0, _0804410C @ =gUnknown_030005B9
	ldrb r4, [r0]
	cmp r4, #8
	bne _08044148
	ldr r3, _08044110 @ =gUnknown_030005D0
	ldrb r1, [r3, #2]
	lsls r1, r1, #0x10
	ldr r2, _08044114 @ =0xFF00FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r5]
	cmp r1, #0x10
	beq _08044118
	cmp r1, #0x20
	beq _08044124
	b _0804412C
	.align 2, 0
_0804410C: .4byte gUnknown_030005B9
_08044110: .4byte gUnknown_030005D0
_08044114: .4byte 0xFF00FFFF
_08044118:
	ldr r0, _08044120 @ =gUnknown_030005D4
	strb r4, [r0, #2]
	strb r4, [r3, #2]
	b _0804412C
	.align 2, 0
_08044120: .4byte gUnknown_030005D4
_08044124:
	ldr r1, _08044144 @ =gUnknown_030005D4
	movs r0, #7
	strb r0, [r1, #2]
	strb r0, [r3, #2]
_0804412C:
	ldr r0, [sp]
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r3, #2]
	cmp r0, r3
	bne _0804413C
	b _08044580
_0804413C:
	movs r0, #0x62
	bl PlaySE
	b _08044580
	.align 2, 0
_08044144: .4byte gUnknown_030005D4
_08044148:
	cmp r4, #9
	bne _0804416C
	ldr r4, _08044168 @ =gUnknown_030005D0
	ldr r0, [r4]
	str r0, [sp]
	bl sub_08045D80
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r4, [r4, #2]
	cmp r0, r4
	beq _0804418A
	bl sub_0803F3E0
	b _0804418A
	.align 2, 0
_08044168: .4byte gUnknown_030005D0
_0804416C:
	ldr r4, _08044190 @ =gUnknown_030005D0
	ldr r0, [r4]
	str r0, [sp]
	bl sub_080453DC
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r4, [r4, #2]
	cmp r0, r4
	beq _0804418A
	bl sub_0803F3E0
	ldr r1, _08044194 @ =gUnknown_030005C0
	movs r0, #0
	strb r0, [r1]
_0804418A:
	bl sub_08045E14
	b _08044580
	.align 2, 0
_08044190: .4byte gUnknown_030005D0
_08044194: .4byte gUnknown_030005C0
_08044198:
	ldrh r1, [r5]
	cmp r1, #0x20
	beq _080441C8
	cmp r1, #0x20
	bgt _080441A8
	cmp r1, #0x10
	beq _080441B2
	b _08044580
_080441A8:
	cmp r1, #0x40
	beq _0804420C
	cmp r1, #0x80
	beq _080441DC
	b _08044580
_080441B2:
	ldr r1, _080441C4 @ =gUnknown_030005E0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080441BC
	b _08044580
_080441BC:
	subs r0, #1
	strb r0, [r1]
	b _08044580
	.align 2, 0
_080441C4: .4byte gUnknown_030005E0
_080441C8:
	ldr r1, _080441D8 @ =gUnknown_030005E0
	ldrb r0, [r1]
	cmp r0, #4
	bls _080441D2
	b _08044580
_080441D2:
	adds r0, #1
	strb r0, [r1]
	b _08044580
	.align 2, 0
_080441D8: .4byte gUnknown_030005E0
_080441DC:
	ldr r1, _080441F0 @ =gUnknown_030005E0
	adds r0, r1, #1
	ldrb r1, [r1]
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _080441F4
	movs r0, #9
	b _080441F6
	.align 2, 0
_080441F0: .4byte gUnknown_030005E0
_080441F4:
	subs r0, #1
_080441F6:
	strb r0, [r1]
	bl sub_08045FD4
	ldr r4, _08044208 @ =gUnknown_030005E0
	ldr r1, [r4, #8]
	cmp r0, r1
	bhi _08044234
	b _08044244
	.align 2, 0
_08044208: .4byte gUnknown_030005E0
_0804420C:
	ldr r1, _08044220 @ =gUnknown_030005E0
	adds r0, r1, #1
	ldrb r1, [r1]
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #9
	bne _08044224
	movs r0, #0
	b _08044226
	.align 2, 0
_08044220: .4byte gUnknown_030005E0
_08044224:
	adds r0, #1
_08044226:
	strb r0, [r1]
	bl sub_08045FD4
	ldr r4, _08044240 @ =gUnknown_030005E0
	ldr r1, [r4, #8]
	cmp r0, r1
	bls _08044244
_08044234:
	str r1, [r4, #0xc]
	adds r0, r1, #0
	bl sub_08045EA8
	b _08044580
	.align 2, 0
_08044240: .4byte gUnknown_030005E0
_08044244:
	bl sub_08045FD4
	str r0, [r4, #0xc]
	b _08044580
_0804424C:
	ldrh r1, [r5]
	cmp r1, #0x10
	beq _08044258
	cmp r1, #0x20
	beq _08044270
	b _08044580
_08044258:
	ldr r4, _0804426C @ =gUnknown_030005BD
	ldrb r0, [r4]
	cmp r0, #0
	beq _08044266
	movs r0, #0x62
	bl PlaySE
_08044266:
	movs r0, #0
	strb r0, [r4]
	b _08044580
	.align 2, 0
_0804426C: .4byte gUnknown_030005BD
_08044270:
	ldr r4, _08044284 @ =gUnknown_030005BD
	ldrb r0, [r4]
	cmp r0, #0
	bne _0804427E
	movs r0, #0x62
	bl PlaySE
_0804427E:
	movs r0, #1
	strb r0, [r4]
	b _08044580
	.align 2, 0
_08044284: .4byte gUnknown_030005BD
_08044288:
	ldrh r1, [r5]
	cmp r1, #0x20
	beq _080442B4
	cmp r1, #0x20
	bgt _08044298
	cmp r1, #0x10
	beq _080442A2
	b _080443B6
_08044298:
	cmp r1, #0x40
	beq _080442FC
	cmp r1, #0x80
	beq _080442D0
	b _080443B6
_080442A2:
	ldr r0, _080442B0 @ =gUnknown_030005D4
	bl sub_0803FC00
	cmp r0, #0
	bne _080442BE
	b _08044370
	.align 2, 0
_080442B0: .4byte gUnknown_030005D4
_080442B4:
	ldr r0, _080442CC @ =gUnknown_030005D4
	bl sub_0803FD3C
	cmp r0, #0
	beq _08044370
_080442BE:
	movs r0, #0x62
	bl PlaySE
	bl sub_08041404
	b _080443B6
	.align 2, 0
_080442CC: .4byte gUnknown_030005D4
_080442D0:
	ldr r4, _080442E4 @ =gUnknown_030005D4
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080442E8
	movs r0, #0
	b _080442F8
	.align 2, 0
_080442E4: .4byte gUnknown_030005D4
_080442E8:
	bl GetPlayerClass
	cmp r0, #1
	beq _08044390
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _08044390
	adds r0, #1
_080442F8:
	strb r0, [r4, #3]
	b _08044390
_080442FC:
	ldr r1, _08044308 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0804430C
	subs r0, #1
	b _0804430E
	.align 2, 0
_08044308: .4byte gUnknown_030005D4
_0804430C:
	movs r0, #3
_0804430E:
	strb r0, [r1, #3]
	bl GetPlayerClass
	cmp r0, #1
	beq _080443B0
	ldr r1, _08044324 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	cmp r0, #2
	bne _080443B0
	subs r0, #1
	b _080443AE
	.align 2, 0
_08044324: .4byte gUnknown_030005D4
_08044328:
	ldrh r1, [r5]
	cmp r1, #0x20
	beq _08044354
	cmp r1, #0x20
	bgt _08044338
	cmp r1, #0x10
	beq _08044342
	b _080443B6
_08044338:
	cmp r1, #0x40
	beq _0804439C
	cmp r1, #0x80
	beq _0804437C
	b _080443B6
_08044342:
	ldr r0, _08044350 @ =gUnknown_030005D4
	bl sub_0803FC00
	cmp r0, #0
	bne _0804435E
	b _08044370
	.align 2, 0
_08044350: .4byte gUnknown_030005D4
_08044354:
	ldr r0, _0804436C @ =gUnknown_030005D4
	bl sub_0803FD3C
	cmp r0, #0
	beq _08044370
_0804435E:
	movs r0, #0x62
	bl PlaySE
	bl sub_0804142C
	b _080443B6
	.align 2, 0
_0804436C: .4byte gUnknown_030005D4
_08044370:
	cmp r4, #0
	beq _080443B6
	movs r0, #0x61
	bl PlaySE
	b _080443B6
_0804437C:
	ldr r1, _08044398 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08044390
	movs r0, #0
	strb r0, [r1, #3]
_08044390:
	movs r0, #0x62
	bl PlaySE
	b _080443B6
	.align 2, 0
_08044398: .4byte gUnknown_030005D4
_0804439C:
	ldr r1, _080443A8 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _080443AC
	subs r0, #1
	b _080443AE
	.align 2, 0
_080443A8: .4byte gUnknown_030005D4
_080443AC:
	movs r0, #7
_080443AE:
	strb r0, [r1, #3]
_080443B0:
	movs r0, #0x62
	bl PlaySE
_080443B6:
	ldr r0, _080443C0 @ =gUnknown_030005D0
	ldr r1, _080443C4 @ =gUnknown_030005D4
	ldrb r1, [r1, #3]
	strb r1, [r0, #3]
	b _08044580
	.align 2, 0
_080443C0: .4byte gUnknown_030005D0
_080443C4: .4byte gUnknown_030005D4
_080443C8:
	ldr r5, _080443EC @ =gUnknown_030005D0
	ldr r0, [r5]
	str r0, [sp]
	bl sub_0804152C
	adds r4, r0, #0
	ldr r3, [r4]
	ldr r0, _080443F0 @ =gUnknown_030005C2
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _0804444A
	cmp r0, #0x20
	bgt _080443F8
	cmp r0, #0x10
	beq _08044408
	ldr r6, _080443F4 @ =gUnknown_030005D4
	b _080444F8
	.align 2, 0
_080443EC: .4byte gUnknown_030005D0
_080443F0: .4byte gUnknown_030005C2
_080443F4: .4byte gUnknown_030005D4
_080443F8:
	cmp r0, #0x40
	beq _080444C8
	cmp r0, #0x80
	beq _080444E0
	ldr r6, _08044404 @ =gUnknown_030005D4
	b _080444F8
	.align 2, 0
_08044404: .4byte gUnknown_030005D4
_08044408:
	ldr r0, _0804441C @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xd
	beq _08044432
	cmp r1, #0xd
	bgt _08044420
	cmp r1, #0xc
	beq _08044426
	b _080444F8
	.align 2, 0
_0804441C: .4byte gUnknown_030005D4
_08044420:
	cmp r1, #0xe
	beq _0804443E
	b _080444F8
_08044426:
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _080444F8
	adds r1, r0, #1
	b _08044474
_08044432:
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _080444F8
	adds r1, r0, #1
	b _08044492
_0804443E:
	lsls r0, r3, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _080444F8
	adds r0, #1
	b _080444B2
_0804444A:
	ldr r0, _08044460 @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xd
	beq _08044488
	cmp r1, #0xd
	bgt _08044464
	cmp r1, #0xc
	beq _0804446A
	b _080444F8
	.align 2, 0
_08044460: .4byte gUnknown_030005D4
_08044464:
	cmp r1, #0xe
	beq _080444A8
	b _080444F8
_0804446A:
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _080444F8
	subs r1, r0, #1
_08044474:
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	b _080444F8
_08044488:
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _080444F8
	subs r1, r0, #1
_08044492:
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r4]
	ldr r0, _080444A4 @ =0xFFFFF07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	b _080444F8
	.align 2, 0
_080444A4: .4byte 0xFFFFF07F
_080444A8:
	lsls r0, r3, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _080444F8
	subs r0, #1
_080444B2:
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, _080444C4 @ =0xFFFE0FFF
	ands r1, r3
	orrs r1, r0
	str r1, [r4]
	b _080444F8
	.align 2, 0
_080444C4: .4byte 0xFFFE0FFF
_080444C8:
	ldr r0, _080444D8 @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xc
	beq _080444DC
	subs r0, r1, #1
	b _080444F6
	.align 2, 0
_080444D8: .4byte gUnknown_030005D4
_080444DC:
	movs r0, #0xf
	b _080444F6
_080444E0:
	ldr r0, _080444F0 @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xf
	beq _080444F4
	adds r0, r1, #1
	b _080444F6
	.align 2, 0
_080444F0: .4byte gUnknown_030005D4
_080444F4:
	movs r0, #0xc
_080444F6:
	strb r0, [r5, #2]
_080444F8:
	ldr r1, _08044510 @ =gUnknown_030005D0
	ldr r0, [r1]
	str r0, [r6]
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _08044514
	bl sub_0803F3E0
	b _08044524
	.align 2, 0
_08044510: .4byte gUnknown_030005D0
_08044514:
	ldr r0, [r4]
	ldr r1, _08044560 @ =0x0001FFFC
	ands r0, r1
	ands r3, r1
	cmp r0, r3
	beq _08044524
	bl sub_0803F3E0
_08044524:
	bl ApplyMenuChanges
	ldr r3, _08044564 @ =gPaletteBuffer
	ldr r2, [r4]
	lsls r1, r2, #0xf
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0xa
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	orrs r2, r1
	movs r1, #0xf1
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #0
	strh r2, [r0]
	ldr r0, _08044568 @ =gPaletteBufferQueued
	strh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	b _08044580
	.align 2, 0
_08044560: .4byte 0x0001FFFC
_08044564: .4byte gPaletteBuffer
_08044568: .4byte gPaletteBufferQueued
_0804456C:
	ldr r2, _08044588 @ =gUnknown_030005D0
	ldrb r0, [r2, #3]
	cmp r0, #0x32
	bne _0804457A
	ldr r1, _0804458C @ =gUnknown_030005BC
	movs r0, #1
	strb r0, [r1]
_0804457A:
	ldrb r0, [r2, #3]
	adds r0, #1
	strb r0, [r2, #3]
_08044580:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044588: .4byte gUnknown_030005D0
_0804458C: .4byte gUnknown_030005BC

	thumb_func_start sub_08044590
sub_08044590: @ 0x08044590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	bl sub_0803FCD8
	cmp r0, #0
	beq _080445A4
	bl _08045104
_080445A4:
	ldr r0, _0804464C @ =gUnknown_030005C2
	ldrh r3, [r0]
	cmp r3, #0
	beq _080445B0
	bl _08045104
_080445B0:
	ldr r0, _08044650 @ =gUnknown_030005B8
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	bhi _080445CA
	ldr r0, _08044654 @ =gUnknown_030005D4
	ldr r1, _08044658 @ =gUnknown_030005D0
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _080445CA
	bl _08045104
_080445CA:
	ldr r2, _0804465C @ =gUnknown_030005C4
	strh r3, [r2]
	ldr r3, _08044660 @ =gKeysNew
	ldrh r1, [r3]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080445E4
	strh r5, [r2]
	ldr r1, _08044664 @ =gUnknown_030005C1
	movs r0, #1
	strb r0, [r1]
_080445E4:
	ldrh r3, [r3]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r3
	adds r1, r3, #0
	cmp r0, #0
	beq _080445F4
	strh r4, [r2]
_080445F4:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08044602
	strh r4, [r2]
_08044602:
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08044610
	strh r4, [r2]
_08044610:
	ldr r0, _08044668 @ =gKeysHeld
	ldrh r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08044622
	ldr r1, _08044664 @ =gUnknown_030005C1
	movs r0, #0
	strb r0, [r1]
_08044622:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08044632
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
_08044632:
	ldrh r0, [r2]
	cmp r0, #1
	beq _0804463A
	b _08044C5E
_0804463A:
	ldrb r0, [r6]
	cmp r0, #0x10
	bls _08044642
	b _08044C5E
_08044642:
	lsls r0, r0, #2
	ldr r1, _0804466C @ =_08044670
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804464C: .4byte gUnknown_030005C2
_08044650: .4byte gUnknown_030005B8
_08044654: .4byte gUnknown_030005D4
_08044658: .4byte gUnknown_030005D0
_0804465C: .4byte gUnknown_030005C4
_08044660: .4byte gKeysNew
_08044664: .4byte gUnknown_030005C1
_08044668: .4byte gKeysHeld
_0804466C: .4byte _08044670
_08044670: @ jump table
	.4byte _080446C8 @ case 0
	.4byte _08044848 @ case 1
	.4byte _08044818 @ case 2
	.4byte _08044A9C @ case 3
	.4byte _08044A02 @ case 4
	.4byte _08044A4C @ case 5
	.4byte _08044BC4 @ case 6
	.4byte _08044B38 @ case 7
	.4byte _08044BE0 @ case 8
	.4byte _08044B38 @ case 9
	.4byte _08044C04 @ case 10
	.4byte _08044C5E @ case 11
	.4byte _080446B4 @ case 12
	.4byte _08044C5E @ case 13
	.4byte _08044C5E @ case 14
	.4byte _08044C5E @ case 15
	.4byte _08044B6A @ case 16
_080446B4:
	movs r0, #0xf
	bl PlaySE
	ldr r1, _080446C4 @ =gUnknown_030005B8
	movs r0, #0xe
	strb r0, [r1]
	b _08044C5E
	.align 2, 0
_080446C4: .4byte gUnknown_030005B8
_080446C8:
	ldr r0, _080446E0 @ =gUnknown_030005B9
	ldrb r2, [r0]
	cmp r2, #8
	bne _0804470C
	ldr r0, _080446E4 @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r3, r0, #0
	cmp r1, #7
	bne _080446E8
	movs r0, #6
	strb r0, [r6]
	b _080446EA
	.align 2, 0
_080446E0: .4byte gUnknown_030005B9
_080446E4: .4byte gUnknown_030005D4
_080446E8:
	strb r2, [r6]
_080446EA:
	movs r1, #0
	strb r1, [r3, #3]
	ldr r0, _08044708 @ =gUnknown_030005D0
	strb r1, [r0, #3]
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #1
	movs r3, #6
	bl sub_080044E4
	b _08044BF4
	.align 2, 0
_08044708: .4byte gUnknown_030005D0
_0804470C:
	cmp r2, #9
	bne _0804477C
	bl sub_0804152C
	adds r2, r0, #0
	ldr r3, _08044730 @ =gUnknown_030005D4
	ldrb r0, [r3, #2]
	cmp r0, #9
	bne _0804473A
	ldr r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08044734
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	b _0804474C
	.align 2, 0
_08044730: .4byte gUnknown_030005D4
_08044734:
	ldrb r0, [r2]
	movs r1, #1
	b _08044756
_0804473A:
	cmp r0, #0xa
	bne _0804475C
	ldr r0, [r2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08044752
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
_0804474C:
	ands r0, r1
	strb r0, [r2]
	b _0804476E
_08044752:
	ldrb r0, [r2]
	movs r1, #2
_08044756:
	orrs r0, r1
	strb r0, [r2]
	b _0804476E
_0804475C:
	cmp r0, #0xb
	bne _0804476E
	movs r1, #0xc
	strb r1, [r3, #2]
	ldr r0, _08044774 @ =gUnknown_030005D0
	strb r1, [r0, #2]
	ldr r1, _08044778 @ =gUnknown_030005B8
	movs r0, #0xa
	strb r0, [r1]
_0804476E:
	bl ApplyMenuChanges
	b _08044BF4
	.align 2, 0
_08044774: .4byte gUnknown_030005D0
_08044778: .4byte gUnknown_030005B8
_0804477C:
	cmp r2, #7
	bne _080447CC
	bl sub_08046004
	bl sub_0804087C
	adds r6, r0, #0
	bl sub_08040900
	adds r5, r0, #0
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	cmp r4, r5
	blo _080447C4
	adds r0, r6, #0
	bl IsItemUnappraised
	cmp r0, #0
	beq _080447C4
	movs r0, #0xf
	bl PlaySE
	ldr r1, _080447BC @ =gUnknown_030005B8
	movs r0, #3
	strb r0, [r1]
	ldr r1, _080447C0 @ =gUnknown_030005BD
	b _0804491A
	.align 2, 0
_080447BC: .4byte gUnknown_030005B8
_080447C0: .4byte gUnknown_030005BD
_080447C4:
	movs r0, #0x61
	bl PlaySE
	b _08044C5E
_080447CC:
	bl sub_08046004
	bl sub_08040120
	cmp r0, #0
	bne _080447DA
	b _08044C5E
_080447DA:
	bl sub_08040C98
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08044810
	ldr r1, _08044808 @ =gUnknown_030005B8
	movs r0, #2
	strb r0, [r1]
	ldr r4, _0804480C @ =gUnknown_030005E0
	ldr r0, [r6]
	lsrs r0, r0, #0xf
	str r0, [r4, #0xc]
	ldr r0, [r6]
	lsrs r0, r0, #0xf
	str r0, [r4, #8]
	bl sub_08045EA8
	movs r0, #0
	strb r0, [r4]
	b _08044C5E
	.align 2, 0
_08044808: .4byte gUnknown_030005B8
_0804480C: .4byte gUnknown_030005E0
_08044810:
	ldr r1, _08044814 @ =gUnknown_030005B8
	b _0804491A
	.align 2, 0
_08044814: .4byte gUnknown_030005B8
_08044818:
	ldr r0, _08044828 @ =gUnknown_030005E0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0804482C
	movs r0, #0
	bl sub_08040DA4
	b _08044A94
	.align 2, 0
_08044828: .4byte gUnknown_030005E0
_0804482C:
	ldr r0, [r0, #8]
	cmp r0, r1
	beq _0804483A
	movs r0, #1
	bl sub_08040DA4
	b _08044840
_0804483A:
	movs r0, #0
	bl sub_08040DA4
_08044840:
	ldr r1, _08044844 @ =gUnknown_030005B8
	b _0804491A
	.align 2, 0
_08044844: .4byte gUnknown_030005B8
_08044848:
	ldr r1, _08044870 @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	bl sub_08046004
	ldr r1, _08044874 @ =gUnknown_030005E0
	bl sub_080402B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	subs r0, #1
	cmp r0, #0xc
	bls _08044866
	b _08044C5E
_08044866:
	lsls r0, r0, #2
	ldr r1, _08044878 @ =_0804487C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044870: .4byte gUnknown_030005BD
_08044874: .4byte gUnknown_030005E0
_08044878: .4byte _0804487C
_0804487C: @ jump table
	.4byte _080448B8 @ case 0
	.4byte _080448D0 @ case 1
	.4byte _08044928 @ case 2
	.4byte _080449FC @ case 3
	.4byte _080448C4 @ case 4
	.4byte _080448C4 @ case 5
	.4byte _080448B0 @ case 6
	.4byte _080448B8 @ case 7
	.4byte _08044928 @ case 8
	.4byte _080448B8 @ case 9
	.4byte _080448C4 @ case 10
	.4byte _080448C4 @ case 11
	.4byte _080448B8 @ case 12
_080448B0:
	ldr r1, _080448B4 @ =gUnknown_030005BC
	b _0804491A
	.align 2, 0
_080448B4: .4byte gUnknown_030005BC
_080448B8:
	ldr r1, _080448C0 @ =gUnknown_030005BF
	movs r0, #1
	strb r0, [r1]
	b _08044B2C
	.align 2, 0
_080448C0: .4byte gUnknown_030005BF
_080448C4:
	ldr r1, _080448CC @ =gUnknown_030005BF
	movs r0, #2
	strb r0, [r1]
	b _08044B2C
	.align 2, 0
_080448CC: .4byte gUnknown_030005BF
_080448D0:
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040900
	adds r5, r0, #0
	cmp r5, #0
	bne _080448E2
	movs r5, #1
_080448E2:
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080412A0
	bl sub_08040EC0
	adds r0, r5, #0
	bl sub_08040E54
	bl ApplyMenuChanges
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _08044920 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x63
	bl PlaySE
	ldr r1, _08044924 @ =gUnknown_030005BF
_0804491A:
	movs r0, #1
	strb r0, [r1]
	b _08044C5E
	.align 2, 0
_08044920: .4byte gUnknown_030005B8
_08044924: .4byte gUnknown_030005BF
_08044928:
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_08040DB0
	cmp r4, r0
	blt _080449FC
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040CA4
	ldrb r7, [r0, #3]
	adds r0, r6, #0
	bl sub_08040DB0
	adds r5, r0, #0
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080412A0
	bl sub_08040D08
	cmp r0, r5
	bhs _08044986
	bl sub_08040D08
	subs r0, r5, r0
	bl sub_08040E10
	bl sub_08040D08
	bl sub_08040DBC
	b _0804498C
_08044986:
	adds r0, r5, #0
	bl sub_08040DBC
_0804498C:
	ldr r0, _080449D4 @ =gUnknown_030005D0
	bl sub_08040ED8
	bl ApplyMenuChanges
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _080449D8 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x63
	bl PlaySE
	ldr r1, _080449DC @ =gUnknown_030005BF
	movs r0, #2
	strb r0, [r1]
	mov r0, r8
	cmp r0, #9
	beq _080449BA
	b _08044C5E
_080449BA:
	adds r0, r7, #0
	bl sub_080413C4
	ldr r0, _080449E0 @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #3
	beq _080449EE
	cmp r0, #3
	bgt _080449E4
	cmp r0, #2
	beq _080449EA
	b _08044C5E
	.align 2, 0
_080449D4: .4byte gUnknown_030005D0
_080449D8: .4byte gUnknown_030005B8
_080449DC: .4byte gUnknown_030005BF
_080449E0: .4byte gUnknown_030005B9
_080449E4:
	cmp r0, #4
	beq _080449F2
	b _08044C5E
_080449EA:
	movs r0, #0
	b _080449F4
_080449EE:
	movs r0, #1
	b _080449F4
_080449F2:
	movs r0, #2
_080449F4:
	adds r1, r7, #0
	bl sub_08014E68
	b _08044C5E
_080449FC:
	bl sub_0803F3DC
	b _08044C5E
_08044A02:
	ldr r0, _08044A34 @ =gUnknown_030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044A90
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040DB0
	adds r5, r0, #0
	bl sub_08040D08
	cmp r0, r5
	bhs _08044A38
	bl sub_08040D08
	subs r0, r5, r0
	bl sub_08040E10
	bl sub_08040D08
	bl sub_08040DBC
	b _08044A3E
	.align 2, 0
_08044A34: .4byte gUnknown_030005BD
_08044A38:
	adds r0, r5, #0
	bl sub_08040DBC
_08044A3E:
	ldr r0, _08044A48 @ =gUnknown_030005D0
	bl sub_08040ED8
	b _08044A6C
	.align 2, 0
_08044A48: .4byte gUnknown_030005D0
_08044A4C:
	ldr r0, _08044A88 @ =gUnknown_030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044A90
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040DB0
	adds r5, r0, #0
	lsrs r5, r5, #2
	bl sub_08040EC0
	adds r0, r5, #0
	bl sub_08040E54
_08044A6C:
	bl ApplyMenuChanges
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _08044A8C @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x63
	bl PlaySE
	b _08044C5E
	.align 2, 0
_08044A88: .4byte gUnknown_030005BD
_08044A8C: .4byte gUnknown_030005B8
_08044A90:
	bl sub_0804604C
_08044A94:
	movs r0, #0x64
	bl PlaySE
	b _08044C5E
_08044A9C:
	ldr r0, _08044AC4 @ =gUnknown_030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044B2C
	bl sub_08046004
	bl sub_0804087C
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08044AD2
	cmp r0, #3
	bgt _08044AC8
	cmp r0, #2
	beq _08044AD2
	b _08044AE6
	.align 2, 0
_08044AC4: .4byte gUnknown_030005BD
_08044AC8:
	cmp r0, #4
	beq _08044AD2
	cmp r0, #5
	beq _08044ADE
	b _08044AE6
_08044AD2:
	ldrb r1, [r6, #3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #3]
	b _08044AE6
_08044ADE:
	ldrb r1, [r6, #1]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #1]
_08044AE6:
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080412A0
	adds r0, r6, #0
	bl sub_08040900
	adds r5, r0, #0
	bl sub_08040D08
	cmp r0, r5
	bhs _08044B1C
	bl sub_08040D08
	subs r0, r5, r0
	bl sub_08040E10
	bl sub_08040D08
	bl sub_08040DBC
	b _08044B22
_08044B1C:
	adds r0, r5, #0
	bl sub_08040DBC
_08044B22:
	movs r0, #0x63
	bl PlaySE
	bl ApplyMenuChanges
_08044B2C:
	ldr r1, _08044B34 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	b _08044C5E
	.align 2, 0
_08044B34: .4byte gUnknown_030005B8
_08044B38:
	ldr r0, _08044B54 @ =gUnknown_030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044B5C
	bl ApplyAllocatedPoints
	bl sub_08016DC0
	ldr r1, _08044B58 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	bl sub_080413F4
	b _08044BF4
	.align 2, 0
_08044B54: .4byte gUnknown_030005BD
_08044B58: .4byte gUnknown_030005B8
_08044B5C:
	ldrb r0, [r6]
	cmp r0, #9
	bne _08044B66
	movs r0, #8
	b _08044BBA
_08044B66:
	movs r0, #6
	b _08044BBA
_08044B6A:
	ldr r0, _08044B98 @ =gUnknown_030005BD
	ldrb r1, [r0]
	cmp r1, #1
	bne _08044BB8
	ldr r0, _08044B9C @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #9
	beq _08044BAC
	movs r0, #0xf
	strb r0, [r6]
	ldr r1, _08044BA0 @ =gUnknown_030005D4
	movs r0, #0
	strb r0, [r1]
	movs r0, #3
	strb r0, [r1, #3]
	ldr r1, _08044BA4 @ =gUnknown_030005C8
	movs r0, #0xd4
	strb r0, [r1]
	movs r0, #0x70
	strb r0, [r1, #1]
	ldr r1, _08044BA8 @ =gUnknown_030005BA
	movs r0, #0x11
	b _08044BF2
	.align 2, 0
_08044B98: .4byte gUnknown_030005BD
_08044B9C: .4byte gUnknown_030005B9
_08044BA0: .4byte gUnknown_030005D4
_08044BA4: .4byte gUnknown_030005C8
_08044BA8: .4byte gUnknown_030005BA
_08044BAC:
	ldr r0, _08044BB4 @ =gUnknown_030005BC
	strb r1, [r0]
	b _08044BF4
	.align 2, 0
_08044BB4: .4byte gUnknown_030005BC
_08044BB8:
	movs r0, #0
_08044BBA:
	strb r0, [r6]
	movs r0, #0x10
	bl PlaySE
	b _08044C5E
_08044BC4:
	bl sub_0803FA9C
	cmp r0, #0
	beq _08044C5E
	ldr r1, _08044BD8 @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044BDC @ =gUnknown_030005B8
	movs r0, #7
	b _08044BF2
	.align 2, 0
_08044BD8: .4byte gUnknown_030005BD
_08044BDC: .4byte gUnknown_030005B8
_08044BE0:
	bl HaveSkillsChanged
	cmp r0, #0
	beq _08044C5E
	ldr r1, _08044BFC @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044C00 @ =gUnknown_030005B8
	movs r0, #9
_08044BF2:
	strb r0, [r1]
_08044BF4:
	movs r0, #0xf
	bl PlaySE
	b _08044C5E
	.align 2, 0
_08044BFC: .4byte gUnknown_030005BD
_08044C00: .4byte gUnknown_030005B8
_08044C04:
	ldr r3, _08044C40 @ =gUnknown_030005D4
	ldrb r0, [r3, #2]
	cmp r0, #0xf
	bne _08044C4C
	bl sub_0804152C
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x1c
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08044C44 @ =0xFFFFF07F
	ands r0, r1
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r2]
	ldr r1, _08044C48 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r2]
	b _08044C5E
	.align 2, 0
_08044C40: .4byte gUnknown_030005D4
_08044C44: .4byte 0xFFFFF07F
_08044C48: .4byte 0xFFFE0FFF
_08044C4C:
	movs r2, #0
	movs r1, #0xb
	strb r1, [r3, #2]
	ldr r0, _08044C98 @ =gUnknown_030005D0
	strb r1, [r0, #2]
	strb r2, [r6]
	movs r0, #0xf
	bl PlaySE
_08044C5E:
	ldr r0, _08044C9C @ =gUnknown_030005C4
	ldrh r0, [r0]
	cmp r0, #2
	beq _08044C68
	b _08044E0E
_08044C68:
	ldr r0, _08044CA0 @ =gUnknown_030005B8
	ldrb r1, [r0]
	cmp r1, #0xb
	bne _08044C72
	b _08045104
_08044C72:
	cmp r1, #0xe
	bne _08044C78
	b _08045104
_08044C78:
	cmp r1, #0xf
	bne _08044C7E
	b _08045104
_08044C7E:
	cmp r1, #0xd
	bne _08044C84
	b _08045104
_08044C84:
	movs r4, #0x10
	adds r0, r1, #0
	cmp r0, #0x10
	bls _08044C8E
	b _08044DEC
_08044C8E:
	lsls r0, r0, #2
	ldr r1, _08044CA4 @ =_08044CA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044C98: .4byte gUnknown_030005D0
_08044C9C: .4byte gUnknown_030005C4
_08044CA0: .4byte gUnknown_030005B8
_08044CA4: .4byte _08044CA8
_08044CA8: @ jump table
	.4byte _08044CFC @ case 0
	.4byte _08044DEC @ case 1
	.4byte _08044DEC @ case 2
	.4byte _08044D5C @ case 3
	.4byte _08044DEC @ case 4
	.4byte _08044DEC @ case 5
	.4byte _08044D68 @ case 6
	.4byte _08044DB4 @ case 7
	.4byte _08044D88 @ case 8
	.4byte _08044DC0 @ case 9
	.4byte _08044DCC @ case 10
	.4byte _08044DEC @ case 11
	.4byte _08044CEC @ case 12
	.4byte _08044DEC @ case 13
	.4byte _08044DEC @ case 14
	.4byte _08044DEC @ case 15
	.4byte _08044D5C @ case 16
_08044CEC:
	ldr r1, _08044CF8 @ =gUnknown_030005B8
	movs r0, #0xe
	strb r0, [r1]
	movs r4, #0
	b _08044DF0
	.align 2, 0
_08044CF8: .4byte gUnknown_030005B8
_08044CFC:
	bl sub_08007604
	cmp r0, #0
	beq _08044D06
	b _08044DF0
_08044D06:
	ldr r0, _08044D34 @ =gUnknown_030005B9
	ldrb r1, [r0]
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08044D26
	adds r0, r1, #0
	cmp r0, #9
	beq _08044D26
	cmp r0, #4
	beq _08044D26
	cmp r0, #5
	beq _08044D26
	cmp r0, #7
	bne _08044D40
_08044D26:
	ldr r1, _08044D38 @ =gUnknown_030005B8
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08044D3C @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044D34: .4byte gUnknown_030005B9
_08044D38: .4byte gUnknown_030005B8
_08044D3C: .4byte gUnknown_030005BD
_08044D40:
	cmp r0, #1
	beq _08044D48
	cmp r0, #8
	bne _08044D4E
_08044D48:
	movs r0, #0x10
	bl PlaySE
_08044D4E:
	ldr r1, _08044D58 @ =gUnknown_030005BC
	movs r0, #1
	strb r0, [r1]
	b _08045104
	.align 2, 0
_08044D58: .4byte gUnknown_030005BC
_08044D5C:
	ldr r1, _08044D64 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044D64: .4byte gUnknown_030005B8
_08044D68:
	bl sub_0803FA9C
	adds r1, r0, #0
	cmp r1, #0
	beq _08044DA8
	ldr r1, _08044D80 @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044D84 @ =gUnknown_030005B8
	movs r0, #7
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044D80: .4byte gUnknown_030005BD
_08044D84: .4byte gUnknown_030005B8
_08044D88:
	bl HaveSkillsChanged
	adds r1, r0, #0
	cmp r1, #0
	beq _08044DA8
	ldr r1, _08044DA0 @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044DA4 @ =gUnknown_030005B8
	movs r0, #9
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044DA0: .4byte gUnknown_030005BD
_08044DA4: .4byte gUnknown_030005B8
_08044DA8:
	ldr r0, _08044DB0 @ =gUnknown_030005B8
	strb r1, [r0]
	b _08044DF0
	.align 2, 0
_08044DB0: .4byte gUnknown_030005B8
_08044DB4:
	ldr r1, _08044DBC @ =gUnknown_030005B8
	movs r0, #6
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044DBC: .4byte gUnknown_030005B8
_08044DC0:
	ldr r1, _08044DC8 @ =gUnknown_030005B8
	movs r0, #8
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044DC8: .4byte gUnknown_030005B8
_08044DCC:
	ldr r1, _08044DE0 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08044DE4 @ =gUnknown_030005D4
	movs r1, #0xb
	strb r1, [r0, #2]
	ldr r0, _08044DE8 @ =gUnknown_030005D0
	strb r1, [r0, #2]
	b _08044DF0
	.align 2, 0
_08044DE0: .4byte gUnknown_030005B8
_08044DE4: .4byte gUnknown_030005D4
_08044DE8: .4byte gUnknown_030005D0
_08044DEC:
	bl sub_0804604C
_08044DF0:
	ldr r0, _08044E00 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044E04
	movs r0, #0x64
	bl PlaySE
	b _08044E0E
	.align 2, 0
_08044E00: .4byte gUnknown_030005B8
_08044E04:
	cmp r4, #0
	beq _08044E0E
	adds r0, r4, #0
	bl PlaySE
_08044E0E:
	ldr r0, _08044E7C @ =gUnknown_030005C4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _08044E32
	ldr r0, _08044E80 @ =gUnknown_030005B9
	ldrb r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08044E32
	ldr r1, _08044E84 @ =gUnknown_030005BF
	movs r0, #1
	strb r0, [r1]
	bl CycleWeapon
_08044E32:
	ldr r0, _08044E7C @ =gUnknown_030005C4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08044E40
	b _080450AA
_08044E40:
	ldr r0, _08044E80 @ =gUnknown_030005B9
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	bne _08044EC4
	ldr r0, _08044E88 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #2
	beq _08044EC4
	ldr r1, _08044E8C @ =gUnknown_030005D4
	ldr r2, _08044E90 @ =gUnknown_030005D0
	ldrh r0, [r1, #2]
	ldrh r3, [r2, #2]
	cmp r0, r3
	beq _08044E60
	b _08045104
_08044E60:
	ldrb r0, [r1, #2]
	ldr r3, _08044E94 @ =gUnknown_030005BB
	cmp r0, #6
	bne _08044EA4
	ldrb r0, [r3]
	cmp r0, #3
	beq _08044E98
	ldrb r0, [r1, #3]
	adds r0, #0xf
	strb r0, [r1, #3]
	ldrb r0, [r2, #3]
	adds r0, #0xf
	b _08044EA2
	.align 2, 0
_08044E7C: .4byte gUnknown_030005C4
_08044E80: .4byte gUnknown_030005B9
_08044E84: .4byte gUnknown_030005BF
_08044E88: .4byte gUnknown_030005B8
_08044E8C: .4byte gUnknown_030005D4
_08044E90: .4byte gUnknown_030005D0
_08044E94: .4byte gUnknown_030005BB
_08044E98:
	ldrb r0, [r1, #3]
	subs r0, #0x2d
	strb r0, [r1, #3]
	ldrb r0, [r2, #3]
	subs r0, #0x2d
_08044EA2:
	strb r0, [r2, #3]
_08044EA4:
	ldrb r0, [r3]
	cmp r0, #3
	beq _08044EAE
	adds r0, #1
	b _08044EB0
_08044EAE:
	movs r0, #0
_08044EB0:
	strb r0, [r3]
	ldr r1, _08044EC0 @ =gUnknown_030005BF
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x80
	bl PlaySE
	b _080450AA
	.align 2, 0
_08044EC0: .4byte gUnknown_030005BF
_08044EC4:
	ldrb r0, [r2]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08044ED2
	b _080450AA
_08044ED2:
	ldr r6, _08044F04 @ =gUnknown_030005B8
	ldrb r0, [r6]
	cmp r0, #2
	bne _08044EDC
	b _080450AA
_08044EDC:
	ldr r5, _08044F08 @ =gUnknown_030005D4
	ldr r4, _08044F0C @ =gUnknown_030005D0
	ldrh r0, [r5, #2]
	ldrh r1, [r4, #2]
	cmp r0, r1
	beq _08044EEA
	b _08045104
_08044EEA:
	bl sub_0803F3E0
	ldrb r7, [r6]
	cmp r7, #1
	beq _08044F34
	ldrb r0, [r5, #2]
	cmp r0, #6
	bne _08044F18
	ldr r1, _08044F10 @ =gUnknown_030005DC
	ldr r0, [r4]
	str r0, [r1]
	ldr r0, _08044F14 @ =gUnknown_030005D8
	b _08044F20
	.align 2, 0
_08044F04: .4byte gUnknown_030005B8
_08044F08: .4byte gUnknown_030005D4
_08044F0C: .4byte gUnknown_030005D0
_08044F10: .4byte gUnknown_030005DC
_08044F14: .4byte gUnknown_030005D8
_08044F18:
	ldr r1, _08044F2C @ =gUnknown_030005D8
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, _08044F30 @ =gUnknown_030005DC
_08044F20:
	ldr r0, [r0]
	str r0, [r4]
	adds r0, r4, #0
	bl sub_08045304
	b _08045104
	.align 2, 0
_08044F2C: .4byte gUnknown_030005D8
_08044F30: .4byte gUnknown_030005DC
_08044F34:
	bl sub_08040C98
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1d
	cmp r1, #7
	bne _08044F46
	b _08045104
_08044F46:
	ldrb r0, [r5, #2]
	cmp r0, #6
	beq _08044F4E
	b _0804507C
_08044F4E:
	ldrb r0, [r5, #3]
	cmp r0, #0xc
	bne _08044F56
	b _0804505C
_08044F56:
	cmp r1, #3
	beq _08044FEC
	cmp r1, #3
	bgt _08044F64
	cmp r1, #2
	beq _08044F6E
	b _0804504A
_08044F64:
	cmp r1, #4
	beq _08044FC0
	cmp r1, #5
	beq _08045018
	b _0804504A
_08044F6E:
	ldr r6, _08044F94 @ =gUnknown_030005D8
	ldrb r0, [r6, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C24
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08044F98
	strb r7, [r6, #2]
	strb r5, [r6, #3]
	b _0804505C
	.align 2, 0
_08044F94: .4byte gUnknown_030005D8
_08044F98:
	bl sub_08046128
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #4
	cmp r5, #2
	bhi _0804505C
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08044F98
	ldr r1, _08044FBC @ =gUnknown_030005D8
	movs r0, #1
	strb r0, [r1, #2]
	strb r5, [r1, #3]
	b _0804505C
	.align 2, 0
_08044FBC: .4byte gUnknown_030005D8
_08044FC0:
	ldr r5, _08044FE8 @ =gUnknown_030005D8
	ldrb r0, [r5, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C3C
	adds r4, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1d
	cmp r1, #0
	bne _08045044
	movs r0, #2
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	b _0804505C
	.align 2, 0
_08044FE8: .4byte gUnknown_030005D8
_08044FEC:
	ldr r5, _08045014 @ =gUnknown_030005D8
	ldrb r0, [r5, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C3C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08045044
	movs r0, #2
	strb r0, [r5, #2]
	strb r7, [r5, #3]
	b _0804505C
	.align 2, 0
_08045014: .4byte gUnknown_030005D8
_08045018:
	ldr r5, _08045040 @ =gUnknown_030005D8
	ldrb r0, [r5, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C3C
	adds r4, r0, #0
	ldr r0, [r4, #8]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08045044
	movs r0, #2
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	b _0804505C
	.align 2, 0
_08045040: .4byte gUnknown_030005D8
_08045044:
	bl sub_08046128
	b _0804505C
_0804504A:
	ldr r0, _08045070 @ =gUnknown_030005D8
	ldrb r0, [r0, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08046128
_0804505C:
	ldr r2, _08045074 @ =gUnknown_030005DC
	ldr r0, _08045078 @ =gUnknown_030005D0
	ldr r1, [r0]
	str r1, [r2]
	ldr r1, _08045070 @ =gUnknown_030005D8
	ldr r1, [r1]
	str r1, [r0]
	bl sub_08045304
	b _080450AA
	.align 2, 0
_08045070: .4byte gUnknown_030005D8
_08045074: .4byte gUnknown_030005DC
_08045078: .4byte gUnknown_030005D0
_0804507C:
	ldr r0, _08045094 @ =gUnknown_030005D8
	ldr r1, [r5]
	str r1, [r0]
	bl sub_08040CA4
	ldrb r0, [r0, #2]
	cmp r0, #6
	bne _0804509C
	ldr r0, _08045098 @ =gUnknown_030005DC
	ldr r0, [r0]
	str r0, [r4]
	b _080450A4
	.align 2, 0
_08045094: .4byte gUnknown_030005D8
_08045098: .4byte gUnknown_030005DC
_0804509C:
	movs r0, #6
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
_080450A4:
	ldr r0, _080450D4 @ =gUnknown_030005D0
	bl sub_08045304
_080450AA:
	ldr r0, _080450D8 @ =gUnknown_030005C4
	ldrh r0, [r0]
	cmp r0, #4
	bne _08045104
	ldr r0, _080450DC @ =gUnknown_030005B9
	ldrb r0, [r0]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08045104
	bl sub_08045F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080450E0
	bl sub_08046004
	bl sub_0804087C
	b _080450E4
	.align 2, 0
_080450D4: .4byte gUnknown_030005D0
_080450D8: .4byte gUnknown_030005C4
_080450DC: .4byte gUnknown_030005B9
_080450E0:
	bl sub_08040C98
_080450E4:
	cmp r0, #0
	beq _08045104
	ldr r4, _08045110 @ =gUnknown_030005C0
	ldrb r0, [r4]
	adds r0, #0x9f
	bl PlaySE
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08045104
	movs r0, #0
	strb r0, [r4]
_08045104:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045110: .4byte gUnknown_030005C0
