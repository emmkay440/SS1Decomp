	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080453DC
sub_080453DC: @ 0x080453DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08045414 @ =gUnknown_030005CC
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _080453F2
	bl _08045D6C
_080453F2:
	ldr r0, _08045418 @ =gUnknown_030005D4
	ldr r1, _0804541C @ =gUnknown_030005D0
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _08045402
	bl _08045D6C
_08045402:
	ldr r0, _08045420 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08045424
	bl sub_08040C98
	adds r4, r0, #0
	b _08045430
	.align 2, 0
_08045414: .4byte gUnknown_030005CC
_08045418: .4byte gUnknown_030005D4
_0804541C: .4byte gUnknown_030005D0
_08045420: .4byte gUnknown_030005B8
_08045424:
	movs r1, #0x71
	rsbs r1, r1, #0
	ldr r0, [sp]
	ands r0, r1
	str r0, [sp]
	mov r4, sp
_08045430:
	ldr r1, _08045450 @ =gUnknown_030005D4
	ldrb r0, [r1, #2]
	subs r0, #1
	adds r6, r1, #0
	ldr r1, _08045454 @ =gUnknown_030005C2
	mov sb, r1
	cmp r0, #5
	bls _08045444
	bl _08045D5E
_08045444:
	lsls r0, r0, #2
	ldr r1, _08045458 @ =_0804545C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045450: .4byte gUnknown_030005D4
_08045454: .4byte gUnknown_030005C2
_08045458: .4byte _0804545C
_0804545C: @ jump table
	.4byte _08045474 @ case 0
	.4byte _08045508 @ case 1
	.4byte _080456C8 @ case 2
	.4byte _08045ABC @ case 3
	.4byte _08045B28 @ case 4
	.4byte _08045B68 @ case 5
_08045474:
	ldr r0, _0804548C @ =gUnknown_030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	bne _08045480
	b _08045B14
_08045480:
	cmp r3, #0x20
	bgt _08045490
	cmp r3, #0x10
	beq _0804549E
	bl _08045D5E
	.align 2, 0
_0804548C: .4byte gUnknown_030005C2
_08045490:
	cmp r3, #0x40
	bne _08045496
	b _08045AF4
_08045496:
	cmp r3, #0x80
	beq _080454D0
	bl _08045D5E
_0804549E:
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080454A6
	b _08045AFC
_080454A6:
	ldr r1, _080454C8 @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r1, #2]
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	mov r8, r1
	cmp r0, #2
	bne _080454C0
	ldr r0, _080454CC @ =gUnknown_030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _080454FC
_080454C0:
	movs r0, #0
	bl _08045D5A
	.align 2, 0
_080454C8: .4byte gUnknown_030005D0
_080454CC: .4byte gUnknown_030005BE
_080454D0:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080454DE
	bl _08045D5E
_080454DE:
	ldrb r2, [r6, #3]
	cmp r2, #0
	bne _080454F0
	ldr r1, _080454EC @ =gUnknown_030005D0
	movs r0, #2
	b _08045584
	.align 2, 0
_080454EC: .4byte gUnknown_030005D0
_080454F0:
	cmp r2, #1
	bhi _080454F6
	b _08045B1C
_080454F6:
	ldr r1, _08045504 @ =gUnknown_030005D0
	movs r0, #2
	strb r0, [r1, #2]
_080454FC:
	strb r0, [r1, #3]
	bl _08045D5E
	.align 2, 0
_08045504: .4byte gUnknown_030005D0
_08045508:
	ldrb r2, [r6, #3]
	cmp r2, #0
	bne _08045590
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _08045544
	ldr r0, _08045538 @ =gUnknown_030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _08045526
	bl _08045D5E
_08045526:
	ldr r1, _0804553C @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r1, #2]
	ldr r0, _08045540 @ =gUnknown_030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _080454FC
	movs r0, #0xa
	b _080454FC
	.align 2, 0
_08045538: .4byte gUnknown_030005C2
_0804553C: .4byte gUnknown_030005D0
_08045540: .4byte gUnknown_030005BE
_08045544:
	ldr r0, _0804555C @ =gUnknown_030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	bne _08045550
	b _080456B0
_08045550:
	cmp r3, #0x20
	bgt _08045560
	cmp r3, #0x10
	beq _0804556C
	bl _08045D5E
	.align 2, 0
_0804555C: .4byte gUnknown_030005C2
_08045560:
	cmp r3, #0x40
	beq _08045580
	cmp r3, #0x80
	beq _080455E2
	bl _08045D5E
_0804556C:
	ldr r0, _0804557C @ =gUnknown_030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0xa
	strb r1, [r0, #3]
	bl _08045D5E
	.align 2, 0
_0804557C: .4byte gUnknown_030005D0
_08045580:
	ldr r1, _0804558C @ =gUnknown_030005D0
	movs r0, #1
_08045584:
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	bl _08045D5E
	.align 2, 0
_0804558C: .4byte gUnknown_030005D0
_08045590:
	cmp r2, #2
	bls _080455FC
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080455CC
	ldr r0, _080455C0 @ =gUnknown_030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _080455AC
	bl _08045D5E
_080455AC:
	ldr r1, _080455C4 @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r1, #2]
	ldr r0, _080455C8 @ =gUnknown_030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _080454FC
	movs r0, #0xf
	b _080454FC
	.align 2, 0
_080455C0: .4byte gUnknown_030005C2
_080455C4: .4byte gUnknown_030005D0
_080455C8: .4byte gUnknown_030005BE
_080455CC:
	ldr r0, _080455E8 @ =gUnknown_030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _080455F0
	cmp r3, #0x20
	bgt _08045632
	cmp r3, #0x10
	beq _080455E2
	bl _08045D5E
_080455E2:
	ldr r1, _080455EC @ =gUnknown_030005D0
	movs r0, #1
	b _080454FC
	.align 2, 0
_080455E8: .4byte gUnknown_030005C2
_080455EC: .4byte gUnknown_030005D0
_080455F0:
	ldr r1, _080455F8 @ =gUnknown_030005D0
	movs r0, #2
	b _080454FC
	.align 2, 0
_080455F8: .4byte gUnknown_030005D0
_080455FC:
	cmp r2, #1
	bls _0804564C
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _08045628
	ldr r0, _08045620 @ =gUnknown_030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _08045616
	b _08045D5E
_08045616:
	ldr r1, _08045624 @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r1, #2]
	b _08045666
	.align 2, 0
_08045620: .4byte gUnknown_030005C2
_08045624: .4byte gUnknown_030005D0
_08045628:
	ldr r0, _08045644 @ =gUnknown_030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x10
	beq _080456B0
_08045632:
	cmp r3, #0x40
	beq _08045638
	b _08045D5E
_08045638:
	ldr r0, _08045648 @ =gUnknown_030005D0
	movs r1, #1
	strb r1, [r0, #2]
	movs r1, #2
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045644: .4byte gUnknown_030005C2
_08045648: .4byte gUnknown_030005D0
_0804564C:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1d
	cmp r2, #3
	bne _08045680
	ldr r0, _08045674 @ =gUnknown_030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _08045662
	b _08045D5E
_08045662:
	ldr r1, _08045678 @ =gUnknown_030005D0
	strb r2, [r1, #2]
_08045666:
	ldr r0, _0804567C @ =gUnknown_030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bhi _08045670
	b _080454FC
_08045670:
	movs r0, #0x14
	b _080454FC
	.align 2, 0
_08045674: .4byte gUnknown_030005C2
_08045678: .4byte gUnknown_030005D0
_0804567C: .4byte gUnknown_030005BE
_08045680:
	ldr r0, _08045694 @ =gUnknown_030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _080456B0
	cmp r3, #0x20
	bgt _08045698
	cmp r3, #0x10
	beq _0804569E
	b _08045D5E
	.align 2, 0
_08045694: .4byte gUnknown_030005C2
_08045698:
	cmp r3, #0x40
	beq _080456BC
	b _08045D5E
_0804569E:
	ldr r0, _080456AC @ =gUnknown_030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0x14
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_080456AC: .4byte gUnknown_030005D0
_080456B0:
	ldr r1, _080456B8 @ =gUnknown_030005D0
	movs r0, #3
	b _080454FC
	.align 2, 0
_080456B8: .4byte gUnknown_030005D0
_080456BC:
	ldr r1, _080456C4 @ =gUnknown_030005D0
	movs r0, #0
	b _080454FC
	.align 2, 0
_080456C4: .4byte gUnknown_030005D0
_080456C8:
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080456E0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	ldr r1, _08045714 @ =gUnknown_030005C2
	mov sb, r1
	cmp r0, #0
	beq _080456E0
	b _080457F0
_080456E0:
	ldr r2, _08045714 @ =gUnknown_030005C2
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _080456F0
	b _080457F0
_080456F0:
	ldr r0, _08045718 @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #1
	bge _080456FA
	b _08045D5E
_080456FA:
	cmp r0, #5
	ble _08045700
	b _08045D5E
_08045700:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bhi _080457C0
	lsls r0, r0, #2
	ldr r1, _0804571C @ =_08045720
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045714: .4byte gUnknown_030005C2
_08045718: .4byte gUnknown_030005B9
_0804571C: .4byte _08045720
_08045720: @ jump table
	.4byte _08045790 @ case 0
	.4byte _08045738 @ case 1
	.4byte _08045796 @ case 2
	.4byte _08045770 @ case 3
	.4byte _08045764 @ case 4
	.4byte _08045780 @ case 5
_08045738:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0xc
	beq _080457C0
	subs r0, #0x15
	cmp r0, #5
	bls _080457C0
	bl sub_08040CA4
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	cmp r0, #6
	beq _080457C0
	ldr r0, _08045760 @ =gUnknown_030005D0
	movs r1, #2
	strb r1, [r0, #2]
	movs r1, #3
	strb r1, [r0, #3]
	b _080457C0
	.align 2, 0
_08045760: .4byte gUnknown_030005D0
_08045764:
	ldr r0, _0804576C @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #2
	b _0804579C
	.align 2, 0
_0804576C: .4byte gUnknown_030005D0
_08045770:
	ldr r0, _0804577C @ =gUnknown_030005D0
	movs r1, #2
	strb r1, [r0, #2]
	movs r1, #1
	strb r1, [r0, #3]
	b _080457C0
	.align 2, 0
_0804577C: .4byte gUnknown_030005D0
_08045780:
	ldr r1, _0804578C @ =gUnknown_030005D0
	movs r0, #2
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	b _080457C0
	.align 2, 0
_0804578C: .4byte gUnknown_030005D0
_08045790:
	ldrb r1, [r6, #3]
	cmp r1, #4
	bhi _080457A8
_08045796:
	ldr r0, _080457A4 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #1
_0804579C:
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	b _080457C0
	.align 2, 0
_080457A4: .4byte gUnknown_030005D0
_080457A8:
	ldr r2, _080457B8 @ =gUnknown_030005D0
	movs r0, #2
	strb r0, [r2, #2]
	cmp r1, #0xe
	bhi _080457BC
	movs r0, #0
	b _080457BE
	.align 2, 0
_080457B8: .4byte gUnknown_030005D0
_080457BC:
	movs r0, #1
_080457BE:
	strb r0, [r2, #3]
_080457C0:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080457E4
	ldr r0, _080457D8 @ =gUnknown_030005BE
	ldr r1, _080457DC @ =gUnknown_030005D4
	ldrb r1, [r1, #3]
	strb r1, [r0]
	ldr r2, _080457E0 @ =gUnknown_030005C2
	mov sb, r2
	b _08045D5E
	.align 2, 0
_080457D8: .4byte gUnknown_030005BE
_080457DC: .4byte gUnknown_030005D4
_080457E0: .4byte gUnknown_030005C2
_080457E4:
	ldr r1, _080457EC @ =gUnknown_030005BE
	movs r0, #0x19
	strb r0, [r1]
	b _08045A5E
	.align 2, 0
_080457EC: .4byte gUnknown_030005BE
_080457F0:
	ldrb r0, [r6, #3]
	adds r0, #1
	movs r1, #5
	bl __modsi3
	cmp r0, #0
	beq _08045800
	b _08045A78
_08045800:
	mov r2, sb
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0804580E
	b _08045A78
_0804580E:
	ldr r1, _08045828 @ =gUnknown_030005B9
	ldrb r0, [r1]
	subs r0, #1
	adds r2, r1, #0
	cmp r0, #7
	bls _0804581C
	b _08045D5E
_0804581C:
	lsls r0, r0, #2
	ldr r1, _0804582C @ =_08045830
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045828: .4byte gUnknown_030005B9
_0804582C: .4byte _08045830
_08045830: @ jump table
	.4byte _08045850 @ case 0
	.4byte _08045890 @ case 1
	.4byte _08045890 @ case 2
	.4byte _08045890 @ case 3
	.4byte _08045890 @ case 4
	.4byte _08045D5E @ case 5
	.4byte _08045D5E @ case 6
	.4byte _08045D5E @ case 7
_08045850:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bhi _08045884
	ldrb r0, [r6, #3]
	cmp r0, #0x12
	bhi _08045878
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0xc
	beq _0804586A
	b _08045B58
_0804586A:
	ldr r0, _08045874 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_08045874: .4byte gUnknown_030005D0
_08045878:
	ldr r0, _08045880 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_08045880: .4byte gUnknown_030005D0
_08045884:
	ldr r0, _0804588C @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_0804588C: .4byte gUnknown_030005D0
_08045890:
	ldr r0, _080458A4 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _080458A0
	cmp r0, #4
	beq _080458A0
	cmp r0, #5
	bne _080458A8
_080458A0:
	movs r0, #1
	b _080458AA
	.align 2, 0
_080458A4: .4byte gUnknown_030005B8
_080458A8:
	movs r0, #0
_080458AA:
	cmp r0, #0
	beq _08045988
	ldrb r0, [r2]
	cmp r0, #5
	beq _08045988
	bl sub_08040CA4
	adds r1, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080458C6
	b _08045A56
_080458C6:
	ldrb r0, [r1, #2]
	cmp r0, #6
	beq _080458D8
	ldr r1, _080458D4 @ =gUnknown_030005D0
	movs r0, #0xc
	b _0804597C
	.align 2, 0
_080458D4: .4byte gUnknown_030005D0
_080458D8:
	ldr r0, _080458F4 @ =gUnknown_030005D4
	ldrb r0, [r0, #3]
	subs r0, #4
	ldr r1, _080458F8 @ =gUnknown_030005D0
	mov r8, r1
	cmp r0, #0x14
	bls _080458E8
	b _08045A50
_080458E8:
	lsls r0, r0, #2
	ldr r1, _080458FC @ =_08045900
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080458F4: .4byte gUnknown_030005D4
_080458F8: .4byte gUnknown_030005D0
_080458FC: .4byte _08045900
_08045900: @ jump table
	.4byte _08045954 @ case 0
	.4byte _08045A50 @ case 1
	.4byte _08045A50 @ case 2
	.4byte _08045A50 @ case 3
	.4byte _08045A50 @ case 4
	.4byte _08045960 @ case 5
	.4byte _08045A50 @ case 6
	.4byte _08045A50 @ case 7
	.4byte _08045A50 @ case 8
	.4byte _08045A50 @ case 9
	.4byte _0804596C @ case 10
	.4byte _08045A50 @ case 11
	.4byte _08045A50 @ case 12
	.4byte _08045A50 @ case 13
	.4byte _08045A50 @ case 14
	.4byte _08045978 @ case 15
	.4byte _08045A50 @ case 16
	.4byte _08045A50 @ case 17
	.4byte _08045A50 @ case 18
	.4byte _08045A50 @ case 19
	.4byte _08045978 @ case 20
_08045954:
	ldr r1, _0804595C @ =gUnknown_030005D0
	movs r0, #0
	b _0804597C
	.align 2, 0
_0804595C: .4byte gUnknown_030005D0
_08045960:
	ldr r1, _08045968 @ =gUnknown_030005D0
	movs r0, #3
	b _0804597C
	.align 2, 0
_08045968: .4byte gUnknown_030005D0
_0804596C:
	ldr r1, _08045974 @ =gUnknown_030005D0
	movs r0, #6
	b _0804597C
	.align 2, 0
_08045974: .4byte gUnknown_030005D0
_08045978:
	ldr r1, _08045984 @ =gUnknown_030005D0
	movs r0, #9
_0804597C:
	strb r0, [r1, #3]
	mov r8, r1
	b _08045A50
	.align 2, 0
_08045984: .4byte gUnknown_030005D0
_08045988:
	ldr r0, _080459A0 @ =gUnknown_030005D4
	ldrb r0, [r0, #3]
	subs r0, #4
	ldr r1, _080459A4 @ =gUnknown_030005D0
	mov r8, r1
	cmp r0, #0x14
	bhi _08045A38
	lsls r0, r0, #2
	ldr r1, _080459A8 @ =_080459AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080459A0: .4byte gUnknown_030005D4
_080459A4: .4byte gUnknown_030005D0
_080459A8: .4byte _080459AC
_080459AC: @ jump table
	.4byte _08045A00 @ case 0
	.4byte _08045A38 @ case 1
	.4byte _08045A38 @ case 2
	.4byte _08045A38 @ case 3
	.4byte _08045A38 @ case 4
	.4byte _08045A0C @ case 5
	.4byte _08045A38 @ case 6
	.4byte _08045A38 @ case 7
	.4byte _08045A38 @ case 8
	.4byte _08045A38 @ case 9
	.4byte _08045A18 @ case 10
	.4byte _08045A38 @ case 11
	.4byte _08045A38 @ case 12
	.4byte _08045A38 @ case 13
	.4byte _08045A38 @ case 14
	.4byte _08045A24 @ case 15
	.4byte _08045A38 @ case 16
	.4byte _08045A38 @ case 17
	.4byte _08045A38 @ case 18
	.4byte _08045A38 @ case 19
	.4byte _08045A30 @ case 20
_08045A00:
	ldr r1, _08045A08 @ =gUnknown_030005D0
	movs r0, #0
	b _08045A34
	.align 2, 0
_08045A08: .4byte gUnknown_030005D0
_08045A0C:
	ldr r1, _08045A14 @ =gUnknown_030005D0
	movs r0, #3
	b _08045A34
	.align 2, 0
_08045A14: .4byte gUnknown_030005D0
_08045A18:
	ldr r1, _08045A20 @ =gUnknown_030005D0
	movs r0, #6
	b _08045A34
	.align 2, 0
_08045A20: .4byte gUnknown_030005D0
_08045A24:
	ldr r1, _08045A2C @ =gUnknown_030005D0
	movs r0, #9
	b _08045A34
	.align 2, 0
_08045A2C: .4byte gUnknown_030005D0
_08045A30:
	ldr r1, _08045A64 @ =gUnknown_030005D0
	movs r0, #0xc
_08045A34:
	strb r0, [r1, #3]
	mov r8, r1
_08045A38:
	ldrb r0, [r2]
	cmp r0, #5
	bne _08045A50
	ldr r0, _08045A68 @ =gUnknown_030005BB
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	mov r2, r8
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	mov r1, r8
	strb r0, [r1, #3]
_08045A50:
	movs r0, #6
	mov r2, r8
	strb r0, [r2, #2]
_08045A56:
	ldr r0, _08045A6C @ =gUnknown_030005BE
	ldr r1, _08045A70 @ =gUnknown_030005D4
	ldrb r1, [r1, #3]
	strb r1, [r0]
_08045A5E:
	ldr r0, _08045A74 @ =gUnknown_030005C2
	mov sb, r0
	b _08045D5E
	.align 2, 0
_08045A64: .4byte gUnknown_030005D0
_08045A68: .4byte gUnknown_030005BB
_08045A6C: .4byte gUnknown_030005BE
_08045A70: .4byte gUnknown_030005D4
_08045A74: .4byte gUnknown_030005C2
_08045A78:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0x20
	beq _08045AFC
	cmp r0, #0x20
	bgt _08045A8A
	cmp r0, #0x10
	beq _08045B1C
	b _08045D5E
_08045A8A:
	cmp r0, #0x40
	beq _08045A94
	cmp r0, #0x80
	beq _08045AA8
	b _08045D5E
_08045A94:
	ldrb r0, [r6, #3]
	cmp r0, #4
	bhi _08045A9C
	b _08045D5E
_08045A9C:
	ldr r1, _08045AA4 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	subs r0, #5
	b _080454FC
	.align 2, 0
_08045AA4: .4byte gUnknown_030005D0
_08045AA8:
	ldrb r0, [r6, #3]
	cmp r0, #0x13
	bls _08045AB0
	b _08045D5E
_08045AB0:
	ldr r1, _08045AB8 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	adds r0, #5
	b _080454FC
	.align 2, 0
_08045AB8: .4byte gUnknown_030005D0
_08045ABC:
	ldr r0, _08045AD0 @ =gUnknown_030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _08045ADE
	cmp r3, #0x20
	bgt _08045AD4
	cmp r3, #0x10
	beq _08045B14
	b _08045D5E
	.align 2, 0
_08045AD0: .4byte gUnknown_030005C2
_08045AD4:
	cmp r3, #0x40
	beq _08045AF4
	cmp r3, #0x80
	beq _08045B08
	b _08045D5E
_08045ADE:
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _08045AFC
	ldr r0, _08045AF0 @ =gUnknown_030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #4
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045AF0: .4byte gUnknown_030005D0
_08045AF4:
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _08045AFC
	b _08045D5E
_08045AFC:
	ldr r1, _08045B04 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	subs r0, #1
	b _080454FC
	.align 2, 0
_08045B04: .4byte gUnknown_030005D0
_08045B08:
	ldr r0, _08045B10 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_08045B10: .4byte gUnknown_030005D0
_08045B14:
	ldrb r0, [r6, #3]
	cmp r0, #1
	bls _08045B1C
	b _08045D5E
_08045B1C:
	ldr r1, _08045B24 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	adds r0, #1
	b _080454FC
	.align 2, 0
_08045B24: .4byte gUnknown_030005D0
_08045B28:
	ldr r0, _08045B38 @ =gUnknown_030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _08045B3C
	cmp r3, #0x40
	beq _08045B4C
	b _08045D5E
	.align 2, 0
_08045B38: .4byte gUnknown_030005C2
_08045B3C:
	ldr r0, _08045B48 @ =gUnknown_030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0x18
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045B48: .4byte gUnknown_030005D0
_08045B4C:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bls _08045B58
	b _08045D5E
_08045B58:
	ldr r0, _08045B64 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #4
_08045B5E:
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045B64: .4byte gUnknown_030005D0
_08045B68:
	ldrb r4, [r6, #3]
	cmp r4, #0
	beq _08045B80
	ldrb r0, [r6, #3]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	ldr r2, _08045BB4 @ =gUnknown_030005C2
	mov sb, r2
	cmp r0, #0
	bne _08045C0E
_08045B80:
	ldr r2, _08045BB4 @ =gUnknown_030005C2
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _08045C0E
	ldr r2, _08045BB8 @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r2, #2]
	ldr r0, _08045BBC @ =gUnknown_030005BB
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	subs r0, r4, r0
	strb r0, [r6, #3]
	ldrb r0, [r6, #3]
	mov r8, r2
	cmp r0, #0xc
	bls _08045BAA
	b _08045D5E
_08045BAA:
	lsls r0, r0, #2
	ldr r1, _08045BC0 @ =_08045BC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045BB4: .4byte gUnknown_030005C2
_08045BB8: .4byte gUnknown_030005D0
_08045BBC: .4byte gUnknown_030005BB
_08045BC0: .4byte _08045BC4
_08045BC4: @ jump table
	.4byte _08045BF8 @ case 0
	.4byte _08045D5E @ case 1
	.4byte _08045D5E @ case 2
	.4byte _08045BFC @ case 3
	.4byte _08045D5E @ case 4
	.4byte _08045D5E @ case 5
	.4byte _08045C00 @ case 6
	.4byte _08045D5E @ case 7
	.4byte _08045D5E @ case 8
	.4byte _08045C04 @ case 9
	.4byte _08045D5E @ case 10
	.4byte _08045D5E @ case 11
	.4byte _08045C08 @ case 12
_08045BF8:
	movs r0, #4
	b _08045C0A
_08045BFC:
	movs r0, #9
	b _08045D5A
_08045C00:
	movs r0, #0xe
	b _08045C0A
_08045C04:
	movs r0, #0x13
	b _08045D5A
_08045C08:
	movs r0, #0x18
_08045C0A:
	mov r1, r8
	b _080454FC
_08045C0E:
	ldrb r0, [r6, #3]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08045C68
	mov r2, sb
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045C68
	ldr r0, _08045C3C @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08045C36
	cmp r0, #4
	beq _08045C36
	cmp r0, #5
	bne _08045C40
_08045C36:
	movs r0, #1
	b _08045C42
	.align 2, 0
_08045C3C: .4byte gUnknown_030005B8
_08045C40:
	movs r0, #0
_08045C42:
	ldr r2, _08045C60 @ =gUnknown_030005B9
	cmp r0, #0
	beq _08045C50
	ldrb r0, [r2]
	cmp r0, #5
	beq _08045C50
	b _08045D5E
_08045C50:
	ldrb r0, [r2]
	cmp r0, #5
	bne _08045CA2
	ldr r1, _08045C64 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	adds r0, #3
	bl _080454FC
	.align 2, 0
_08045C60: .4byte gUnknown_030005B9
_08045C64: .4byte gUnknown_030005D0
_08045C68:
	ldrb r0, [r6, #3]
	cmp r0, #0xb
	bls _08045CB4
	mov r0, sb
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08045CB4
	ldr r0, _08045C90 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08045C8A
	cmp r0, #4
	beq _08045C8A
	cmp r0, #5
	bne _08045C94
_08045C8A:
	movs r0, #1
	b _08045C96
	.align 2, 0
_08045C90: .4byte gUnknown_030005B8
_08045C94:
	movs r0, #0
_08045C96:
	cmp r0, #0
	beq _08045CB4
	ldr r0, _08045CAC @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #5
	beq _08045CB4
_08045CA2:
	ldr r1, _08045CB0 @ =gUnknown_030005D0
	movs r0, #0xc
	bl _080454FC
	.align 2, 0
_08045CAC: .4byte gUnknown_030005B9
_08045CB0: .4byte gUnknown_030005D0
_08045CB4:
	ldr r3, _08045CE8 @ =gUnknown_030005BB
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r6, #3]
	subs r4, r1, r0
	strb r4, [r6, #3]
	ldr r2, _08045CEC @ =gUnknown_030005D0
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r2, #3]
	subs r5, r1, r0
	strb r5, [r2, #3]
	mov r1, sb
	ldrh r0, [r1]
	mov r8, r2
	adds r7, r3, #0
	cmp r0, #0x20
	beq _08045D20
	cmp r0, #0x20
	bgt _08045CF0
	cmp r0, #0x10
	beq _08045CFA
	b _08045D42
	.align 2, 0
_08045CE8: .4byte gUnknown_030005BB
_08045CEC: .4byte gUnknown_030005D0
_08045CF0:
	cmp r0, #0x40
	beq _08045D24
	cmp r0, #0x80
	beq _08045D34
	b _08045D42
_08045CFA:
	ldrb r0, [r6, #3]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	cmp r0, #0
	beq _08045D42
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bne _08045D18
	ldr r0, _08045D1C @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #5
	bne _08045D42
_08045D18:
	adds r0, r5, #1
	b _08045D2E
	.align 2, 0
_08045D1C: .4byte gUnknown_030005B9
_08045D20:
	subs r0, r5, #1
	b _08045D3E
_08045D24:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08045D42
	subs r0, r5, #3
_08045D2E:
	mov r2, r8
	strb r0, [r2, #3]
	b _08045D42
_08045D34:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _08045D42
	adds r0, r5, #3
_08045D3E:
	mov r1, r8
	strb r0, [r1, #3]
_08045D42:
	ldrb r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r2, [r6, #3]
	adds r0, r0, r2
	strb r0, [r6, #3]
	ldrb r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	mov r1, r8
	ldrb r1, [r1, #3]
	adds r0, r0, r1
_08045D5A:
	mov r2, r8
	strb r0, [r2, #3]
_08045D5E:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	beq _08045D6C
	ldr r0, _08045D7C @ =gUnknown_030005D0
	bl sub_08045304
_08045D6C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045D7C: .4byte gUnknown_030005D0
