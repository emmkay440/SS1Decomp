	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080463F0
sub_080463F0: @ 0x080463F0
	push {r4, r5, r6, lr}
	ldr r1, _08046444 @ =gUnknown_03000604
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08046448 @ =gKeysRepeat
	ldrh r2, [r0]
	movs r3, #0x10
	adds r0, r3, #0
	ands r0, r2
	adds r6, r1, #0
	cmp r0, #0
	beq _0804640A
	strh r3, [r6]
_0804640A:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	adds r1, r2, #0
	cmp r0, #0
	beq _08046418
	strh r3, [r6]
_08046418:
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08046424
	strh r3, [r6]
_08046424:
	movs r1, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08046430
	strh r1, [r6]
_08046430:
	ldr r0, _0804644C @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #8
	bls _0804643A
	b _080466A0
_0804643A:
	lsls r0, r0, #2
	ldr r1, _08046450 @ =_08046454
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046444: .4byte gUnknown_03000604
_08046448: .4byte gKeysRepeat
_0804644C: .4byte gUnknown_030005F0
_08046450: .4byte _08046454
_08046454: @ jump table
	.4byte _08046478 @ case 0
	.4byte _08046674 @ case 1
	.4byte _08046674 @ case 2
	.4byte _080465C0 @ case 3
	.4byte _0804660C @ case 4
	.4byte _0804664C @ case 5
	.4byte _08046674 @ case 6
	.4byte _08046674 @ case 7
	.4byte _08046564 @ case 8
_08046478:
	ldr r2, _08046494 @ =gUnknown_030005F5
	ldrb r4, [r2]
	ldr r0, _08046498 @ =gUnknown_030005F1
	ldrb r5, [r0]
	ldrh r1, [r6]
	adds r3, r0, #0
	cmp r1, #0x20
	beq _080464DC
	cmp r1, #0x20
	bgt _0804649C
	cmp r1, #0x10
	beq _080464A6
	b _0804653C
	.align 2, 0
_08046494: .4byte gUnknown_030005F5
_08046498: .4byte gUnknown_030005F1
_0804649C:
	cmp r1, #0x40
	beq _08046530
	cmp r1, #0x80
	beq _08046524
	b _0804653C
_080464A6:
	adds r1, r5, #0
	cmp r1, #0
	bne _080464C4
	cmp r4, #1
	bls _080464C4
	adds r0, r5, #1
	strb r0, [r3]
	ldrb r0, [r2]
	adds r0, #2
	strb r0, [r2]
	ldr r0, _080464C0 @ =gUnknown_030005F6
	strb r1, [r0]
	b _080464F4
	.align 2, 0
_080464C0: .4byte gUnknown_030005F6
_080464C4:
	ldr r2, _080464D8 @ =gUnknown_030005F5
	ldrb r1, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #2
	subs r0, r1, r0
	cmp r0, #1
	bgt _0804653C
	adds r0, r1, #2
	b _0804653A
	.align 2, 0
_080464D8: .4byte gUnknown_030005F5
_080464DC:
	cmp r5, #0
	beq _0804650C
	cmp r4, #5
	bhi _0804650C
	subs r0, r5, #1
	strb r0, [r3]
	ldrb r0, [r2]
	subs r0, #2
	strb r0, [r2]
	ldr r1, _08046504 @ =gUnknown_030005F6
	movs r0, #0
	strb r0, [r1]
_080464F4:
	ldr r1, _08046508 @ =gUnknown_030005F8
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	bl sub_08046F6C
	b _0804653C
	.align 2, 0
_08046504: .4byte gUnknown_030005F6
_08046508: .4byte gUnknown_030005F8
_0804650C:
	ldr r2, _08046520 @ =gUnknown_030005F5
	ldrb r1, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #2
	subs r0, r1, r0
	cmp r0, #1
	ble _0804653C
	subs r0, r1, #2
	b _0804653A
	.align 2, 0
_08046520: .4byte gUnknown_030005F5
_08046524:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0804653C
	adds r0, r4, #1
	b _0804653A
_08046530:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0804653C
	subs r0, r4, #1
_0804653A:
	strb r0, [r2]
_0804653C:
	ldr r0, _08046558 @ =gUnknown_030005F5
	ldrb r0, [r0]
	cmp r0, r4
	bne _08046546
	b _080466A0
_08046546:
	ldr r0, _0804655C @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r5, r0
	beq _08046550
	b _08046662
_08046550:
	ldr r1, _08046560 @ =gUnknown_030005F6
	movs r0, #0
	strb r0, [r1]
	b _08046662
	.align 2, 0
_08046558: .4byte gUnknown_030005F5
_0804655C: .4byte gUnknown_030005F1
_08046560: .4byte gUnknown_030005F6
_08046564:
	ldr r4, _08046584 @ =gUnknown_030005F5
	ldrb r1, [r4]
	ldr r3, _08046588 @ =gUnknown_03000764
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, r2
	ldrb r5, [r2, #4]
	ldrh r1, [r6]
	cmp r1, #0x10
	beq _0804658C
	cmp r1, #0x20
	beq _0804659C
	b _080465A6
	.align 2, 0
_08046584: .4byte gUnknown_030005F5
_08046588: .4byte gUnknown_03000764
_0804658C:
	movs r1, #1
	strb r1, [r2, #4]
	ldr r0, _08046598 @ =gUnknown_030005F8
	strb r1, [r0]
	b _080465A6
	.align 2, 0
_08046598: .4byte gUnknown_030005F8
_0804659C:
	movs r0, #0
	strb r0, [r2, #4]
	ldr r1, _080465BC @ =gUnknown_030005F8
	movs r0, #1
	strb r0, [r1]
_080465A6:
	ldrb r0, [r4]
	ldr r2, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #4]
	cmp r5, r1
	beq _080466A0
	b _08046662
	.align 2, 0
_080465BC: .4byte gUnknown_030005F8
_080465C0:
	ldr r2, _080465E0 @ =gUnknown_03000764
	ldr r0, _080465E4 @ =gUnknown_030005F5
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2]
	adds r2, r1, r0
	ldrb r5, [r2, #1]
	ldrh r1, [r6]
	cmp r1, #0x10
	beq _080465E8
	cmp r1, #0x20
	beq _080465F0
	b _080465F8
	.align 2, 0
_080465E0: .4byte gUnknown_03000764
_080465E4: .4byte gUnknown_030005F5
_080465E8:
	cmp r5, #2
	bhi _080465F8
	adds r0, r5, #1
	b _080465F6
_080465F0:
	cmp r5, #0
	beq _080465F8
	subs r0, r5, #1
_080465F6:
	strb r0, [r2, #1]
_080465F8:
	ldr r1, _08046608 @ =gUnknown_030005F8
	movs r0, #1
	strb r0, [r1]
	ldrb r2, [r2, #1]
	cmp r5, r2
	beq _080466A0
	b _08046662
	.align 2, 0
_08046608: .4byte gUnknown_030005F8
_0804660C:
	ldr r2, _0804662C @ =gUnknown_03000764
	ldr r0, _08046630 @ =gUnknown_030005F5
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2]
	adds r2, r1, r0
	ldrb r5, [r2, #2]
	ldrh r1, [r6]
	cmp r1, #0x10
	beq _08046634
	cmp r1, #0x20
	beq _0804663C
	b _08046644
	.align 2, 0
_0804662C: .4byte gUnknown_03000764
_08046630: .4byte gUnknown_030005F5
_08046634:
	cmp r5, #2
	bhi _08046644
	adds r0, r5, #1
	b _08046642
_0804663C:
	cmp r5, #0
	beq _08046644
	subs r0, r5, #1
_08046642:
	strb r0, [r2, #2]
_08046644:
	ldrb r2, [r2, #2]
	cmp r5, r2
	beq _080466A0
	b _08046662
_0804664C:
	ldr r5, _0804666C @ =gUnknown_03000600
	ldr r4, [r5]
	bl sub_08047F6C
	bl sub_08047E78
	ldr r0, _08046670 @ =0x0000FFFF
	ands r4, r0
	ldrh r5, [r5]
	cmp r4, r5
	beq _080466A0
_08046662:
	movs r0, #0x62
	bl PlaySE
	b _080466A0
	.align 2, 0
_0804666C: .4byte gUnknown_03000600
_08046670: .4byte 0x0000FFFF
_08046674:
	ldr r0, _08046688 @ =gUnknown_030005F7
	ldrb r5, [r0]
	ldrh r1, [r6]
	adds r2, r0, #0
	cmp r1, #0x10
	beq _0804668C
	cmp r1, #0x20
	beq _08046690
	b _08046694
	.align 2, 0
_08046688: .4byte gUnknown_030005F7
_0804668C:
	movs r0, #0
	b _08046692
_08046690:
	movs r0, #1
_08046692:
	strb r0, [r2]
_08046694:
	ldrb r2, [r2]
	cmp r5, r2
	beq _080466A0
	movs r0, #0x62
	bl PlaySE
_080466A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080466A8
sub_080466A8: @ 0x080466A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r1, _08046734 @ =gUnknown_03000606
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08046738 @ =gKeysNew
	ldrh r3, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	beq _080466C4
	strh r4, [r2]
_080466C4:
	movs r4, #2
	adds r0, r4, #0
	ands r0, r3
	adds r1, r3, #0
	cmp r0, #0
	beq _080466D2
	strh r4, [r2]
_080466D2:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080466E0
	strh r4, [r2]
_080466E0:
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080466EE
	strh r4, [r2]
_080466EE:
	movs r4, #8
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080466FA
	strh r4, [r2]
_080466FA:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _0804670A
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
_0804670A:
	ldrh r0, [r2]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0804671C
	ldr r1, _0804673C @ =gUnknown_030005F8
	movs r0, #1
	strb r0, [r1]
_0804671C:
	ldr r0, _08046740 @ =gUnknown_030005F0
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0xb
	bls _08046728
	b _08046D82
_08046728:
	lsls r0, r1, #2
	ldr r1, _08046744 @ =_08046748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046734: .4byte gUnknown_03000606
_08046738: .4byte gKeysNew
_0804673C: .4byte gUnknown_030005F8
_08046740: .4byte gUnknown_030005F0
_08046744: .4byte _08046748
_08046748: @ jump table
	.4byte _08046778 @ case 0
	.4byte _080468E8 @ case 1
	.4byte _0804690E @ case 2
	.4byte _08046962 @ case 3
	.4byte _080469A4 @ case 4
	.4byte _080469F4 @ case 5
	.4byte _08046856 @ case 6
	.4byte _08046C70 @ case 7
	.4byte _08046834 @ case 8
	.4byte _08046D62 @ case 9
	.4byte _08046D82 @ case 10
	.4byte _08046D74 @ case 11
_08046778:
	ldrh r4, [r2]
	cmp r4, #1
	beq _08046784
	cmp r4, #2
	beq _08046820
	b _08046D82
_08046784:
	movs r0, #0xf
	bl PlaySE
	ldr r0, _080467B8 @ =gKeysHeld
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080467CC
	ldr r0, _080467BC @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _080467C0 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080467AE
	b _08046D82
_080467AE:
	ldr r0, _080467C4 @ =gUnknown_030005F0
	strb r4, [r0]
	ldr r1, _080467C8 @ =gUnknown_030005F7
	movs r0, #0
	b _08046D80
	.align 2, 0
_080467B8: .4byte gKeysHeld
_080467BC: .4byte gUnknown_030005F5
_080467C0: .4byte gUnknown_03000764
_080467C4: .4byte gUnknown_030005F0
_080467C8: .4byte gUnknown_030005F7
_080467CC:
	ldr r0, _080467F0 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _080467F4 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _080467FC
	ldr r1, _080467F8 @ =gUnknown_030005F0
	movs r0, #3
	strb r0, [r1]
	movs r0, #0
	bl sub_08046F6C
	b _08046D82
	.align 2, 0
_080467F0: .4byte gUnknown_030005F5
_080467F4: .4byte gUnknown_03000764
_080467F8: .4byte gUnknown_030005F0
_080467FC:
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _0804680A
	bl sub_08001F64
	cmp r0, #0
	bne _08046814
_0804680A:
	ldr r1, _08046810 @ =gUnknown_030005F0
	movs r0, #6
	b _08046D80
	.align 2, 0
_08046810: .4byte gUnknown_030005F0
_08046814:
	ldr r1, _0804681C @ =gUnknown_030005F0
	movs r0, #8
	b _08046D80
	.align 2, 0
_0804681C: .4byte gUnknown_030005F0
_08046820:
	movs r0, #6
	bl sub_0800F244
	ldr r1, _08046830 @ =gUnknown_030005F0
	movs r0, #0xb
	strb r0, [r1]
	b _08046D5A
	.align 2, 0
_08046830: .4byte gUnknown_030005F0
_08046834:
	ldrh r1, [r2]
	cmp r1, #1
	beq _08046840
	cmp r1, #2
	beq _08046850
	b _08046D82
_08046840:
	movs r0, #6
	strb r0, [r3]
	ldr r0, _0804684C @ =gUnknown_030005F7
	strb r1, [r0]
	b _08046D32
	.align 2, 0
_0804684C: .4byte gUnknown_030005F7
_08046850:
	movs r0, #0
_08046852:
	strb r0, [r3]
	b _08046D82
_08046856:
	ldrh r0, [r2]
	cmp r0, #1
	beq _08046862
	cmp r0, #2
	beq _080468AC
	b _08046D82
_08046862:
	ldr r0, _08046890 @ =gUnknown_030005F7
	ldrb r4, [r0]
	cmp r4, #0
	beq _0804686C
	b _08046D26
_0804686C:
	ldr r0, _08046894 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08046898 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _0804688A
	bl sub_08001F64
	cmp r0, #0
	bne _080468A0
_0804688A:
	ldr r0, _0804689C @ =gUnknown_030005F0
	strb r4, [r0]
	b _08046D5A
	.align 2, 0
_08046890: .4byte gUnknown_030005F7
_08046894: .4byte gUnknown_030005F5
_08046898: .4byte gUnknown_03000764
_0804689C: .4byte gUnknown_030005F0
_080468A0:
	ldr r1, _080468A8 @ =gUnknown_030005F0
	movs r0, #8
	strb r0, [r1]
	b _08046D5A
	.align 2, 0
_080468A8: .4byte gUnknown_030005F0
_080468AC:
	ldr r0, _080468D0 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _080468D4 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080468CA
	bl sub_08001F64
	cmp r0, #0
	bne _080468DC
_080468CA:
	ldr r1, _080468D8 @ =gUnknown_030005F0
	movs r0, #0
	b _080468E0
	.align 2, 0
_080468D0: .4byte gUnknown_030005F5
_080468D4: .4byte gUnknown_03000764
_080468D8: .4byte gUnknown_030005F0
_080468DC:
	ldr r1, _080468E4 @ =gUnknown_030005F0
	movs r0, #8
_080468E0:
	strb r0, [r1]
	b _08046D5A
	.align 2, 0
_080468E4: .4byte gUnknown_030005F0
_080468E8:
	ldrh r0, [r2]
	cmp r0, #1
	beq _080468F4
	cmp r0, #2
	beq _08046908
	b _08046D82
_080468F4:
	ldr r1, _08046904 @ =gUnknown_030005F7
	ldrb r0, [r1]
	cmp r0, #0
	beq _08046852
	movs r0, #2
	strb r0, [r3]
	movs r0, #0
	b _08046D30
	.align 2, 0
_08046904: .4byte gUnknown_030005F7
_08046908:
	movs r0, #0
	strb r0, [r3]
	b _08046D5A
_0804690E:
	ldrh r5, [r2]
	cmp r5, #1
	beq _0804691A
	cmp r5, #2
	beq _0804695C
	b _08046D82
_0804691A:
	ldr r6, _0804694C @ =gUnknown_030005F7
	ldrb r0, [r6]
	cmp r0, #0
	beq _08046946
	ldr r4, _08046950 @ =gUnknown_030005F5
	ldrb r0, [r4]
	bl EraseSaveSlot
	ldr r2, _08046954 @ =gUnknown_03000764
	ldrb r0, [r4]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0x38
	bl bzero
	strb r5, [r6]
	movs r0, #0xf
	bl PlaySE
_08046946:
	ldr r1, _08046958 @ =gUnknown_030005F0
	movs r0, #0
	b _08046D80
	.align 2, 0
_0804694C: .4byte gUnknown_030005F7
_08046950: .4byte gUnknown_030005F5
_08046954: .4byte gUnknown_03000764
_08046958: .4byte gUnknown_030005F0
_0804695C:
	movs r0, #0
	strb r0, [r3]
	b _08046D5A
_08046962:
	ldrh r0, [r2]
	cmp r0, #1
	beq _0804696E
	cmp r0, #2
	beq _0804697A
	b _08046D82
_0804696E:
	movs r0, #4
	strb r0, [r3]
	movs r0, #0
	bl sub_08046F6C
	b _08046D32
_0804697A:
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0804699C @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _080469A0 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0, #1]
	movs r0, #0
	bl sub_08046F6C
	b _08046D5A
	.align 2, 0
_0804699C: .4byte gUnknown_030005F5
_080469A0: .4byte gUnknown_03000764
_080469A4:
	ldrh r0, [r2]
	cmp r0, #1
	beq _080469B0
	cmp r0, #2
	beq _080469CC
	b _08046D82
_080469B0:
	movs r0, #5
	strb r0, [r3]
	ldr r1, _080469C8 @ =gUnknown_030005F4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	bl sub_08046F6C
	bl sub_08047E78
	b _08046D32
	.align 2, 0
_080469C8: .4byte gUnknown_030005F4
_080469CC:
	movs r0, #3
	strb r0, [r3]
	ldr r0, _080469EC @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _080469F0 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0, #2]
	movs r0, #1
	bl sub_08046F6C
	b _08046D5A
	.align 2, 0
_080469EC: .4byte gUnknown_030005F5
_080469F0: .4byte gUnknown_03000764
_080469F4:
	ldrh r4, [r2]
	cmp r4, #4
	bne _080469FC
	b _08046BD0
_080469FC:
	cmp r4, #4
	bgt _08046A0C
	cmp r4, #1
	beq _08046A2E
	cmp r4, #2
	bne _08046A0A
	b _08046B34
_08046A0A:
	b _08046D82
_08046A0C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r4, r0
	bne _08046A16
	b _08046BA8
_08046A16:
	cmp r4, r0
	bgt _08046A22
	cmp r4, #8
	bne _08046A20
	b _08046C58
_08046A20:
	b _08046D82
_08046A22:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _08046A2C
	b _08046BBC
_08046A2C:
	b _08046D82
_08046A2E:
	ldr r0, _08046A5C @ =gUnknown_03000600
	ldrh r2, [r0]
	ldr r1, _08046A60 @ =0x0000060C
	adds r3, r0, #0
	cmp r2, r1
	bne _08046A74
	bl sub_0804851C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046A6C
	bl sub_08047EFC
	ldr r0, _08046A64 @ =gUnknown_030005F0
	movs r1, #7
	strb r1, [r0]
	movs r0, #1
	bl sub_08046F6C
	ldr r0, _08046A68 @ =gUnknown_030005F7
	strb r4, [r0]
	b _08046D32
	.align 2, 0
_08046A5C: .4byte gUnknown_03000600
_08046A60: .4byte 0x0000060C
_08046A64: .4byte gUnknown_030005F0
_08046A68: .4byte gUnknown_030005F7
_08046A6C:
	movs r0, #0x61
	bl PlaySE
	b _08046D82
_08046A74:
	ldr r0, _08046AB8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #0
	bne _08046ADC
	ldrb r2, [r3]
	cmp r2, #9
	bls _08046A8C
	ldr r0, _08046ABC @ =gUnknown_030005F2
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	bls _08046A9A
_08046A8C:
	cmp r2, #0xa
	bls _08046ADC
	ldr r0, _08046ABC @ =gUnknown_030005F2
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #2
	bne _08046ADC
_08046A9A:
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _08046ADC
	ldrb r0, [r4]
	cmp r0, #1
	bhi _08046AC0
	ldrb r0, [r3]
	subs r0, #0xa
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08046AD4
	movs r0, #0xd
	b _08046AD2
	.align 2, 0
_08046AB8: .4byte gLanguage
_08046ABC: .4byte gUnknown_030005F2
_08046AC0:
	ldrb r1, [r3]
	adds r0, r1, #0
	subs r0, #0xb
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _08046AD4
	subs r0, r1, #1
_08046AD2:
	strb r0, [r3]
_08046AD4:
	movs r0, #1
	bl sub_08046F6C
	b _08046D32
_08046ADC:
	ldr r4, _08046B24 @ =gUnknown_030005F4
	ldrb r0, [r4]
	cmp r0, #0xa
	bls _08046AE6
	b _08046D32
_08046AE6:
	bl sub_08048240
	ldr r1, _08046B28 @ =gUnknown_030005F5
	ldrb r2, [r1]
	ldr r1, _08046B2C @ =gUnknown_03000764
	ldr r3, [r1]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r2, [r4]
	lsls r2, r2, #1
	adds r1, #0x14
	adds r1, r1, r2
	strh r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _08046B14
	ldr r0, _08046B30 @ =gUnknown_03000600
	movs r1, #0xc
	strb r1, [r0]
	movs r1, #6
	strb r1, [r0, #1]
_08046B14:
	ldrb r0, [r4]
	cmp r0, #0xa
	bls _08046B1C
	b _08046D32
_08046B1C:
	adds r0, #1
	strb r0, [r4]
	b _08046D32
	.align 2, 0
_08046B24: .4byte gUnknown_030005F4
_08046B28: .4byte gUnknown_030005F5
_08046B2C: .4byte gUnknown_03000764
_08046B30: .4byte gUnknown_03000600
_08046B34:
	ldr r3, _08046B60 @ =gUnknown_030005F4
	ldrb r0, [r3]
	adds r1, r0, #0
	cmp r1, #0
	beq _08046B6C
	subs r0, #1
	strb r0, [r3]
	ldr r0, _08046B64 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08046B68 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r3]
	lsls r1, r1, #1
	adds r0, #0x14
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	b _08046D5A
	.align 2, 0
_08046B60: .4byte gUnknown_030005F4
_08046B64: .4byte gUnknown_030005F5
_08046B68: .4byte gUnknown_03000764
_08046B6C:
	ldr r0, _08046B98 @ =gUnknown_03000600
	strb r1, [r0]
	strb r1, [r0, #1]
	ldr r2, _08046B9C @ =gUnknown_03000764
	ldr r0, _08046BA0 @ =gUnknown_030005F5
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r2]
	adds r0, r0, r1
	adds r0, #0x14
	movs r1, #0xc
	bl bzero
	ldr r1, _08046BA4 @ =gUnknown_030005F0
	movs r0, #4
	strb r0, [r1]
	movs r0, #1
	bl sub_08046F6C
	b _08046D5A
	.align 2, 0
_08046B98: .4byte gUnknown_03000600
_08046B9C: .4byte gUnknown_03000764
_08046BA0: .4byte gUnknown_030005F5
_08046BA4: .4byte gUnknown_030005F0
_08046BA8:
	ldr r1, _08046BB8 @ =gUnknown_030005F4
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08046BB2
	b _08046D82
_08046BB2:
	adds r0, #1
	strb r0, [r1]
	b _08046C62
	.align 2, 0
_08046BB8: .4byte gUnknown_030005F4
_08046BBC:
	ldr r1, _08046BCC @ =gUnknown_030005F4
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046BC6
	b _08046D82
_08046BC6:
	subs r0, #1
	strb r0, [r1]
	b _08046C62
	.align 2, 0
_08046BCC: .4byte gUnknown_030005F4
_08046BD0:
	ldr r0, _08046C24 @ =gLanguage
	ldrh r0, [r0]
	ldr r4, _08046C28 @ =gUnknown_030005F2
	cmp r0, #0
	bne _08046BE0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08046BE0:
	ldrb r0, [r4]
	cmp r0, #2
	bls _08046BEA
	movs r0, #0
	strb r0, [r4]
_08046BEA:
	ldrb r0, [r4]
	ldr r3, _08046C2C @ =gUnknown_03000600
	cmp r0, #0
	bne _08046C02
	ldrb r0, [r3]
	cmp r0, #0xc
	bls _08046C02
	ldrb r0, [r3, #1]
	cmp r0, #5
	beq _08046C02
	movs r0, #0xc
	strb r0, [r3]
_08046C02:
	ldrb r0, [r4]
	cmp r0, #2
	bne _08046C30
	ldrb r1, [r3, #1]
	cmp r1, #5
	bne _08046C14
	ldrb r0, [r3]
	cmp r0, #9
	bls _08046C1E
_08046C14:
	cmp r1, #5
	bls _08046C30
	ldrb r0, [r3]
	cmp r0, #0xb
	bhi _08046C30
_08046C1E:
	movs r0, #4
	strb r0, [r3, #1]
	b _08046C50
	.align 2, 0
_08046C24: .4byte gLanguage
_08046C28: .4byte gUnknown_030005F2
_08046C2C: .4byte gUnknown_03000600
_08046C30:
	adds r1, r3, #0
	ldrb r0, [r1, #1]
	cmp r0, #5
	bne _08046C50
	ldrb r0, [r4]
	cmp r0, #2
	bne _08046C46
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08046C50
_08046C46:
	cmp r0, #0
	bne _08046C50
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_08046C50:
	movs r0, #1
	bl sub_08046F6C
	b _08046C62
_08046C58:
	ldr r0, _08046C6C @ =gUnknown_03000600
	movs r1, #0xc
	strb r1, [r0]
	movs r1, #6
	strb r1, [r0, #1]
_08046C62:
	movs r0, #0x62
	bl PlaySE
	b _08046D82
	.align 2, 0
_08046C6C: .4byte gUnknown_03000600
_08046C70:
	ldrh r7, [r2]
	cmp r7, #1
	beq _08046C7C
	cmp r7, #2
	beq _08046D4C
	b _08046D82
_08046C7C:
	ldr r0, _08046D3C @ =gUnknown_030005F7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046D4C
	ldr r4, _08046D40 @ =gUnknown_030005F5
	ldrb r1, [r4]
	ldr r6, _08046D44 @ =gUnknown_03000764
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	add r5, sp, #0x1c
	mov r1, sp
	adds r2, r5, #0
	bl sub_08016FF8
	ldrb r1, [r4]
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r5]
	strh r1, [r0, #0x10]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r5, #2]
	strh r1, [r0, #0x12]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r1, sp
	ldrh r1, [r1, #2]
	strh r1, [r0, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r1, sp
	ldrh r1, [r1, #6]
	strh r1, [r0, #0xe]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0, #0xc]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	strb r7, [r0, #3]
	ldrb r1, [r4]
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	strb r7, [r0, #6]
	ldrb r1, [r4]
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	strb r7, [r0]
_08046D26:
	movs r0, #6
	bl sub_0800F3A0
	ldr r1, _08046D48 @ =gUnknown_030005F0
	movs r0, #9
_08046D30:
	strb r0, [r1]
_08046D32:
	movs r0, #0xf
	bl PlaySE
	b _08046D82
	.align 2, 0
_08046D3C: .4byte gUnknown_030005F7
_08046D40: .4byte gUnknown_030005F5
_08046D44: .4byte gUnknown_03000764
_08046D48: .4byte gUnknown_030005F0
_08046D4C:
	movs r0, #5
	strb r0, [r3]
	movs r0, #1
	bl sub_08046F6C
	bl sub_08047E78
_08046D5A:
	movs r0, #0x10
	bl PlaySE
	b _08046D82
_08046D62:
	bl sub_0800F298
	cmp r0, #0
	beq _08046D82
	ldr r1, _08046D70 @ =gUnknown_030005F0
	movs r0, #0xa
	b _08046D80
	.align 2, 0
_08046D70: .4byte gUnknown_030005F0
_08046D74:
	bl sub_0800F298
	cmp r0, #0
	beq _08046D82
	ldr r1, _08046D8C @ =gUnknown_030005F0
	movs r0, #0xc
_08046D80:
	strb r0, [r1]
_08046D82:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046D8C: .4byte gUnknown_030005F0

	thumb_func_start sub_08046D90
sub_08046D90: @ 0x08046D90
	push {r4, lr}
	sub sp, #8
	bl DisplayOff
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _08046E50 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _08046E54 @ =0x00001F03
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08046E58 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	movs r1, #0xe0
	lsls r1, r1, #5
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	bl sub_0800EC74
	movs r0, #0
	bl sub_0800EE44
	bl sub_0800ED08
	ldr r1, _08046E5C @ =gUnknown_030005F8
	movs r0, #2
	strb r0, [r1]
	movs r0, #0
	bl sub_08046F6C
	ldr r4, _08046E60 @ =0x03000628
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	adds r0, r4, #0
	adds r0, #0x34
	ldr r1, _08046E64 @ =0x00100002
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, _08046E68 @ =0x00100001
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	adds r4, #0x9c
	ldr r1, _08046E6C @ =0x00100003
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	ldr r0, _08046E70 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _08046E46
	b _08046F3C
_08046E46:
	lsls r0, r0, #2
	ldr r1, _08046E74 @ =_08046E78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046E50: .4byte 0xFFFF0000
_08046E54: .4byte 0x00001F03
_08046E58: .4byte 0x00001E02
_08046E5C: .4byte gUnknown_030005F8
_08046E60: .4byte 0x03000628
_08046E64: .4byte 0x00100002
_08046E68: .4byte 0x00100001
_08046E6C: .4byte 0x00100003
_08046E70: .4byte gLanguage
_08046E74: .4byte _08046E78
_08046E78: @ jump table
	.4byte _08046E8C @ case 0
	.4byte _08046EB0 @ case 1
	.4byte _08046ED4 @ case 2
	.4byte _08046EF8 @ case 3
	.4byte _08046F24 @ case 4
_08046E8C:
	ldr r0, _08046EA0 @ =gUnknown_030006F8
	ldr r1, _08046EA4 @ =0x00100069
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046EA8 @ =gUnknown_03000730
	ldr r1, _08046EAC @ =0x0010006A
	b _08046F08
	.align 2, 0
_08046EA0: .4byte gUnknown_030006F8
_08046EA4: .4byte 0x00100069
_08046EA8: .4byte gUnknown_03000730
_08046EAC: .4byte 0x0010006A
_08046EB0:
	ldr r0, _08046EC4 @ =gUnknown_030006F8
	ldr r1, _08046EC8 @ =0x00100072
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046ECC @ =gUnknown_03000730
	ldr r1, _08046ED0 @ =0x00100073
	b _08046F08
	.align 2, 0
_08046EC4: .4byte gUnknown_030006F8
_08046EC8: .4byte 0x00100072
_08046ECC: .4byte gUnknown_03000730
_08046ED0: .4byte 0x00100073
_08046ED4:
	ldr r0, _08046EE8 @ =gUnknown_030006F8
	ldr r1, _08046EEC @ =0x00100071
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046EF0 @ =gUnknown_03000730
	ldr r1, _08046EF4 @ =0x0010007B
	b _08046F08
	.align 2, 0
_08046EE8: .4byte gUnknown_030006F8
_08046EEC: .4byte 0x00100071
_08046EF0: .4byte gUnknown_03000730
_08046EF4: .4byte 0x0010007B
_08046EF8:
	ldr r0, _08046F14 @ =gUnknown_030006F8
	ldr r1, _08046F18 @ =0x00100084
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046F1C @ =gUnknown_03000730
	ldr r1, _08046F20 @ =0x00100083
_08046F08:
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	b _08046F3C
	.align 2, 0
_08046F14: .4byte gUnknown_030006F8
_08046F18: .4byte 0x00100084
_08046F1C: .4byte gUnknown_03000730
_08046F20: .4byte 0x00100083
_08046F24:
	ldr r0, _08046F58 @ =gUnknown_030006F8
	ldr r1, _08046F5C @ =0x0010008E
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046F60 @ =gUnknown_03000730
	ldr r1, _08046F64 @ =0x0010008D
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
_08046F3C:
	bl DisplayOn
	movs r0, #6
	bl sub_0800F1EC
	bl WaitFrame
	ldr r1, _08046F68 @ =gUnknown_030005F8
	movs r0, #2
	strb r0, [r1]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046F58: .4byte gUnknown_030006F8
_08046F5C: .4byte 0x0010008E
_08046F60: .4byte gUnknown_03000730
_08046F64: .4byte 0x0010008D
_08046F68: .4byte gUnknown_030005F8

	thumb_func_start sub_08046F6C
sub_08046F6C: @ 0x08046F6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _08046F98 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #5
	beq _0804701C
	ldr r0, _08046F9C @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08047064
	lsls r0, r0, #2
	ldr r1, _08046FA0 @ =_08046FA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046F98: .4byte gUnknown_030005F0
_08046F9C: .4byte gLanguage
_08046FA0: .4byte _08046FA4
_08046FA4: @ jump table
	.4byte _08046FB8 @ case 0
	.4byte _08046FCC @ case 1
	.4byte _08046FE0 @ case 2
	.4byte _08046FF4 @ case 3
	.4byte _08047008 @ case 4
_08046FB8:
	ldr r0, _08046FC4 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FC8
	movs r0, #0x5d
	b _0804705E
	.align 2, 0
_08046FC4: .4byte gUnknown_030005F1
_08046FC8:
	movs r0, #0x5e
	b _0804705E
_08046FCC:
	ldr r0, _08046FD8 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FDC
	movs r0, #0x82
	b _0804705E
	.align 2, 0
_08046FD8: .4byte gUnknown_030005F1
_08046FDC:
	movs r0, #0x81
	b _0804705E
_08046FE0:
	ldr r0, _08046FEC @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FF0
	movs r0, #0x83
	b _0804705E
	.align 2, 0
_08046FEC: .4byte gUnknown_030005F1
_08046FF0:
	movs r0, #0x85
	b _0804705E
_08046FF4:
	ldr r0, _08047000 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047004
	movs r0, #0x88
	b _0804705E
	.align 2, 0
_08047000: .4byte gUnknown_030005F1
_08047004:
	movs r0, #0x86
	b _0804705E
_08047008:
	ldr r0, _08047014 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047018
	movs r0, #0x87
	b _0804705E
	.align 2, 0
_08047014: .4byte gUnknown_030005F1
_08047018:
	movs r0, #0x84
	b _0804705E
_0804701C:
	ldr r0, _08047030 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08047064
	lsls r0, r0, #2
	ldr r1, _08047034 @ =_08047038
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047030: .4byte gLanguage
_08047034: .4byte _08047038
_08047038: @ jump table
	.4byte _0804704C @ case 0
	.4byte _08047050 @ case 1
	.4byte _08047054 @ case 2
	.4byte _08047058 @ case 3
	.4byte _0804705C @ case 4
_0804704C:
	movs r0, #0x5c
	b _0804705E
_08047050:
	movs r0, #0x80
	b _0804705E
_08047054:
	movs r0, #0x7e
	b _0804705E
_08047058:
	movs r0, #0x7f
	b _0804705E
_0804705C:
	movs r0, #0x7d
_0804705E:
	bl GetDataRecord
	adds r5, r0, #0
_08047064:
	movs r6, #0
	ldr r0, _08047078 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #8
	bhi _08047124
	lsls r0, r0, #2
	ldr r1, _0804707C @ =_08047080
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047078: .4byte gUnknown_030005F0
_0804707C: .4byte _08047080
_08047080: @ jump table
	.4byte _080470A4 @ case 0
	.4byte _080470A4 @ case 1
	.4byte _080470A4 @ case 2
	.4byte _080470AE @ case 3
	.4byte _080470AE @ case 4
	.4byte _080470D0 @ case 5
	.4byte _080470A4 @ case 6
	.4byte _080470A4 @ case 7
	.4byte _080470A4 @ case 8
_080470A4:
	movs r0, #8
	bl GetDataRecord
	adds r6, r0, #0
	b _080470C2
_080470AE:
	movs r0, #9
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
_080470C2:
	movs r0, #0xe8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _08047124
_080470D0:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r0, _080470F0 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08047124
	lsls r0, r0, #2
	ldr r1, _080470F4 @ =_080470F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080470F0: .4byte gLanguage
_080470F4: .4byte _080470F8
_080470F8: @ jump table
	.4byte _0804710C @ case 0
	.4byte _08047110 @ case 1
	.4byte _08047114 @ case 2
	.4byte _08047118 @ case 3
	.4byte _0804711C @ case 4
_0804710C:
	movs r0, #0x5c
	b _0804711E
_08047110:
	movs r0, #0x80
	b _0804711E
_08047114:
	movs r0, #0x7e
	b _0804711E
_08047118:
	movs r0, #0x7f
	b _0804711E
_0804711C:
	movs r0, #0x7d
_0804711E:
	bl GetDataRecord
	adds r6, r0, #0
_08047124:
	ldr r4, _08047188 @ =gUnknown_03000608
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _0804718C @ =0x0600F800
	movs r7, #0x80
	lsls r7, r7, #4
	adds r2, r7, #0
	bl QueueCopy
	cmp r6, #0
	beq _08047150
	ldr r4, _08047190 @ =gUnknown_0300060C
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _08047194 @ =0x0600F000
	adds r2, r7, #0
	bl QueueCopy
_08047150:
	ldr r0, _08047198 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #5
	bne _08047208
	ldr r1, _0804719C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080471A0 @ =0x00001D01
	orrs r0, r1
	str r0, [sp]
	movs r0, #1
	mov r1, sp
	bl SetBgCnt
	ldr r0, _080471A4 @ =gUnknown_030005F2
	ldrb r0, [r0]
	cmp r0, #2
	bne _080471DC
	ldr r0, _080471A8 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080471DC
	lsls r0, r0, #2
	ldr r1, _080471AC @ =_080471B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047188: .4byte gUnknown_03000608
_0804718C: .4byte 0x0600F800
_08047190: .4byte gUnknown_0300060C
_08047194: .4byte 0x0600F000
_08047198: .4byte gUnknown_030005F0
_0804719C: .4byte 0xFFFF0000
_080471A0: .4byte 0x00001D01
_080471A4: .4byte gUnknown_030005F2
_080471A8: .4byte gLanguage
_080471AC: .4byte _080471B0
_080471B0: @ jump table
	.4byte _080471C4 @ case 0
	.4byte _080471C8 @ case 1
	.4byte _080471CC @ case 2
	.4byte _080471D0 @ case 3
	.4byte _080471D4 @ case 4
_080471C4:
	movs r0, #0x5a
	b _080471D6
_080471C8:
	movs r0, #0x7c
	b _080471D6
_080471CC:
	movs r0, #0x7a
	b _080471D6
_080471D0:
	movs r0, #0x7b
	b _080471D6
_080471D4:
	movs r0, #0x79
_080471D6:
	bl GetDataRecord
	mov r8, r0
_080471DC:
	ldr r4, _08047200 @ =gUnknown_03000610
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _08047204 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _08047224
	.align 2, 0
_08047200: .4byte gUnknown_03000610
_08047204: .4byte 0x0600E800
_08047208:
	cmp r0, #7
	bne _08047224
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0xe0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
_08047224:
	mov r0, sb
	cmp r0, #0
	beq _0804726E
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804725E
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08047254
	ldr r1, _08047250 @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #7
	b _08047266
	.align 2, 0
_08047250: .4byte 0x06004000
_08047254:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #7
	b _08047266
_0804725E:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
_08047266:
	adds r0, r3, #0
	bl QueueCopy
	b _080472B2
_0804726E:
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _080472A4
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08047294
	ldr r1, _08047290 @ =0x06004000
	b _08047298
	.align 2, 0
_08047290: .4byte 0x06004000
_08047294:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08047298:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	bl sub_08048484
	b _080472B2
_080472A4:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	bl sub_08048484
_080472B2:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	movs r2, #0
	ldr r5, _080472F4 @ =gUnknown_03000614
	movs r3, #0
	ldr r4, _080472F8 @ =gUnknown_0300061C
_080472D0:
	lsls r1, r2, #1
	adds r0, r1, r5
	strh r3, [r0]
	adds r1, r1, r4
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _080472D0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080472F4: .4byte gUnknown_03000614
_080472F8: .4byte gUnknown_0300061C
