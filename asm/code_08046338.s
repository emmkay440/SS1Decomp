	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08046338
sub_08046338: @ 0x08046338
	push {r4, r5, lr}
	ldr r0, _080463AC @ =gUnknown_030005F0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080463B0 @ =0x030005F1
	strb r1, [r0]
	ldr r2, _080463B4 @ =0x030005F2
	movs r0, #2
	strb r0, [r2]
	ldr r0, _080463B8 @ =0x030005F4
	strb r1, [r0]
	ldr r0, _080463BC @ =gUnknown_030005F5
	strb r1, [r0]
	ldr r0, _080463C0 @ =0x03000604
	movs r2, #0
	strh r2, [r0]
	ldr r0, _080463C4 @ =0x03000606
	strh r2, [r0]
	ldr r1, _080463C8 @ =0x030005F7
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080463CC @ =gUnknown_03000608
	movs r1, #0
	str r1, [r0]
	ldr r0, _080463D0 @ =gUnknown_0300060C
	str r1, [r0]
	ldr r0, _080463D4 @ =gUnknown_03000610
	str r1, [r0]
	ldr r0, _080463D8 @ =0x030005FC
	strb r2, [r0]
	strb r2, [r0, #1]
	ldr r0, _080463DC @ =0x03000600
	strb r2, [r0]
	strb r2, [r0, #1]
	ldr r0, _080463E0 @ =0x030005F6
	strb r2, [r0]
	ldr r0, _080463E4 @ =0x030005F3
	strb r2, [r0]
	ldr r0, _080463E8 @ =gUnknown_030005F8
	strb r2, [r0]
	bl sub_080484F0
	ldr r5, _080463EC @ =gUnknown_03000764
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	ldr r0, [r5]
	bl LoadSaveSlotInfo
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080463AC: .4byte gUnknown_030005F0
_080463B0: .4byte 0x030005F1
_080463B4: .4byte 0x030005F2
_080463B8: .4byte 0x030005F4
_080463BC: .4byte gUnknown_030005F5
_080463C0: .4byte 0x03000604
_080463C4: .4byte 0x03000606
_080463C8: .4byte 0x030005F7
_080463CC: .4byte gUnknown_03000608
_080463D0: .4byte gUnknown_0300060C
_080463D4: .4byte gUnknown_03000610
_080463D8: .4byte 0x030005FC
_080463DC: .4byte 0x03000600
_080463E0: .4byte 0x030005F6
_080463E4: .4byte 0x030005F3
_080463E8: .4byte gUnknown_030005F8
_080463EC: .4byte gUnknown_03000764

	thumb_func_start sub_080463F0
sub_080463F0: @ 0x080463F0
	push {r4, r5, r6, lr}
	ldr r1, _08046444 @ =0x03000604
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
_08046444: .4byte 0x03000604
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
	ldr r0, _08046498 @ =0x030005F1
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
_08046498: .4byte 0x030005F1
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
	ldr r0, _080464C0 @ =0x030005F6
	strb r1, [r0]
	b _080464F4
	.align 2, 0
_080464C0: .4byte 0x030005F6
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
	ldr r1, _08046504 @ =0x030005F6
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
_08046504: .4byte 0x030005F6
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
	ldr r0, _0804655C @ =0x030005F1
	ldrb r0, [r0]
	cmp r5, r0
	beq _08046550
	b _08046662
_08046550:
	ldr r1, _08046560 @ =0x030005F6
	movs r0, #0
	strb r0, [r1]
	b _08046662
	.align 2, 0
_08046558: .4byte gUnknown_030005F5
_0804655C: .4byte 0x030005F1
_08046560: .4byte 0x030005F6
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
	ldr r5, _0804666C @ =0x03000600
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
_0804666C: .4byte 0x03000600
_08046670: .4byte 0x0000FFFF
_08046674:
	ldr r0, _08046688 @ =0x030005F7
	ldrb r5, [r0]
	ldrh r1, [r6]
	adds r2, r0, #0
	cmp r1, #0x10
	beq _0804668C
	cmp r1, #0x20
	beq _08046690
	b _08046694
	.align 2, 0
_08046688: .4byte 0x030005F7
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
	ldr r1, _08046734 @ =0x03000606
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
_08046734: .4byte 0x03000606
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
	ldr r1, _080467C8 @ =0x030005F7
	movs r0, #0
	b _08046D80
	.align 2, 0
_080467B8: .4byte gKeysHeld
_080467BC: .4byte gUnknown_030005F5
_080467C0: .4byte gUnknown_03000764
_080467C4: .4byte gUnknown_030005F0
_080467C8: .4byte 0x030005F7
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
	ldr r0, _0804684C @ =0x030005F7
	strb r1, [r0]
	b _08046D32
	.align 2, 0
_0804684C: .4byte 0x030005F7
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
	ldr r0, _08046890 @ =0x030005F7
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
_08046890: .4byte 0x030005F7
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
	ldr r1, _08046904 @ =0x030005F7
	ldrb r0, [r1]
	cmp r0, #0
	beq _08046852
	movs r0, #2
	strb r0, [r3]
	movs r0, #0
	b _08046D30
	.align 2, 0
_08046904: .4byte 0x030005F7
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
	ldr r6, _0804694C @ =0x030005F7
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
_0804694C: .4byte 0x030005F7
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
	ldr r1, _080469C8 @ =0x030005F4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	bl sub_08046F6C
	bl sub_08047E78
	b _08046D32
	.align 2, 0
_080469C8: .4byte 0x030005F4
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
	ldr r0, _08046A5C @ =0x03000600
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
	ldr r0, _08046A68 @ =0x030005F7
	strb r4, [r0]
	b _08046D32
	.align 2, 0
_08046A5C: .4byte 0x03000600
_08046A60: .4byte 0x0000060C
_08046A64: .4byte gUnknown_030005F0
_08046A68: .4byte 0x030005F7
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
	ldr r0, _08046ABC @ =0x030005F2
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	bls _08046A9A
_08046A8C:
	cmp r2, #0xa
	bls _08046ADC
	ldr r0, _08046ABC @ =0x030005F2
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
_08046ABC: .4byte 0x030005F2
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
	ldr r4, _08046B24 @ =0x030005F4
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
	ldr r0, _08046B30 @ =0x03000600
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
_08046B24: .4byte 0x030005F4
_08046B28: .4byte gUnknown_030005F5
_08046B2C: .4byte gUnknown_03000764
_08046B30: .4byte 0x03000600
_08046B34:
	ldr r3, _08046B60 @ =0x030005F4
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
_08046B60: .4byte 0x030005F4
_08046B64: .4byte gUnknown_030005F5
_08046B68: .4byte gUnknown_03000764
_08046B6C:
	ldr r0, _08046B98 @ =0x03000600
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
_08046B98: .4byte 0x03000600
_08046B9C: .4byte gUnknown_03000764
_08046BA0: .4byte gUnknown_030005F5
_08046BA4: .4byte gUnknown_030005F0
_08046BA8:
	ldr r1, _08046BB8 @ =0x030005F4
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08046BB2
	b _08046D82
_08046BB2:
	adds r0, #1
	strb r0, [r1]
	b _08046C62
	.align 2, 0
_08046BB8: .4byte 0x030005F4
_08046BBC:
	ldr r1, _08046BCC @ =0x030005F4
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046BC6
	b _08046D82
_08046BC6:
	subs r0, #1
	strb r0, [r1]
	b _08046C62
	.align 2, 0
_08046BCC: .4byte 0x030005F4
_08046BD0:
	ldr r0, _08046C24 @ =gLanguage
	ldrh r0, [r0]
	ldr r4, _08046C28 @ =0x030005F2
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
	ldr r3, _08046C2C @ =0x03000600
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
_08046C28: .4byte 0x030005F2
_08046C2C: .4byte 0x03000600
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
	ldr r0, _08046C6C @ =0x03000600
	movs r1, #0xc
	strb r1, [r0]
	movs r1, #6
	strb r1, [r0, #1]
_08046C62:
	movs r0, #0x62
	bl PlaySE
	b _08046D82
	.align 2, 0
_08046C6C: .4byte 0x03000600
_08046C70:
	ldrh r7, [r2]
	cmp r7, #1
	beq _08046C7C
	cmp r7, #2
	beq _08046D4C
	b _08046D82
_08046C7C:
	ldr r0, _08046D3C @ =0x030005F7
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
_08046D3C: .4byte 0x030005F7
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
	ldr r0, _08046EA0 @ =0x030006F8
	ldr r1, _08046EA4 @ =0x00100069
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046EA8 @ =0x03000730
	ldr r1, _08046EAC @ =0x0010006A
	b _08046F08
	.align 2, 0
_08046EA0: .4byte 0x030006F8
_08046EA4: .4byte 0x00100069
_08046EA8: .4byte 0x03000730
_08046EAC: .4byte 0x0010006A
_08046EB0:
	ldr r0, _08046EC4 @ =0x030006F8
	ldr r1, _08046EC8 @ =0x00100072
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046ECC @ =0x03000730
	ldr r1, _08046ED0 @ =0x00100073
	b _08046F08
	.align 2, 0
_08046EC4: .4byte 0x030006F8
_08046EC8: .4byte 0x00100072
_08046ECC: .4byte 0x03000730
_08046ED0: .4byte 0x00100073
_08046ED4:
	ldr r0, _08046EE8 @ =0x030006F8
	ldr r1, _08046EEC @ =0x00100071
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046EF0 @ =0x03000730
	ldr r1, _08046EF4 @ =0x0010007B
	b _08046F08
	.align 2, 0
_08046EE8: .4byte 0x030006F8
_08046EEC: .4byte 0x00100071
_08046EF0: .4byte 0x03000730
_08046EF4: .4byte 0x0010007B
_08046EF8:
	ldr r0, _08046F14 @ =0x030006F8
	ldr r1, _08046F18 @ =0x00100084
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046F1C @ =0x03000730
	ldr r1, _08046F20 @ =0x00100083
_08046F08:
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	b _08046F3C
	.align 2, 0
_08046F14: .4byte 0x030006F8
_08046F18: .4byte 0x00100084
_08046F1C: .4byte 0x03000730
_08046F20: .4byte 0x00100083
_08046F24:
	ldr r0, _08046F58 @ =0x030006F8
	ldr r1, _08046F5C @ =0x0010008E
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046F60 @ =0x03000730
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
_08046F58: .4byte 0x030006F8
_08046F5C: .4byte 0x0010008E
_08046F60: .4byte 0x03000730
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
	ldr r0, _08046FC4 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FC8
	movs r0, #0x5d
	b _0804705E
	.align 2, 0
_08046FC4: .4byte 0x030005F1
_08046FC8:
	movs r0, #0x5e
	b _0804705E
_08046FCC:
	ldr r0, _08046FD8 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FDC
	movs r0, #0x82
	b _0804705E
	.align 2, 0
_08046FD8: .4byte 0x030005F1
_08046FDC:
	movs r0, #0x81
	b _0804705E
_08046FE0:
	ldr r0, _08046FEC @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FF0
	movs r0, #0x83
	b _0804705E
	.align 2, 0
_08046FEC: .4byte 0x030005F1
_08046FF0:
	movs r0, #0x85
	b _0804705E
_08046FF4:
	ldr r0, _08047000 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047004
	movs r0, #0x88
	b _0804705E
	.align 2, 0
_08047000: .4byte 0x030005F1
_08047004:
	movs r0, #0x86
	b _0804705E
_08047008:
	ldr r0, _08047014 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047018
	movs r0, #0x87
	b _0804705E
	.align 2, 0
_08047014: .4byte 0x030005F1
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
	ldr r0, _080471A4 @ =0x030005F2
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
_080471A4: .4byte 0x030005F2
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

	thumb_func_start sub_080472FC
sub_080472FC: @ 0x080472FC
	push {r4, lr}
	sub sp, #4
	bl sub_080473AC
	bl sub_08047570
	bl sub_08047780
	ldr r0, _08047328 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #5
	beq _0804737E
	ldr r1, _0804732C @ =0x030005F3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08047330
	ldrb r4, [r1]
	b _08047348
	.align 2, 0
_08047328: .4byte gUnknown_030005F0
_0804732C: .4byte 0x030005F3
_08047330:
	cmp r0, #0x13
	bhi _08047344
	ldrb r1, [r1]
	subs r1, #4
	asrs r1, r1, #2
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08047348
_08047344:
	movs r0, #0
	strb r0, [r1]
_08047348:
	ldr r0, _08047364 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804736C
	ldr r0, _08047368 @ =0x030006F8
	adds r1, r4, #0
	adds r1, #0xe7
	movs r2, #1
	str r2, [sp]
	movs r2, #0x49
	movs r3, #3
	bl sub_08026B90
	b _0804737E
	.align 2, 0
_08047364: .4byte 0x030005F1
_08047368: .4byte 0x030006F8
_0804736C:
	ldr r0, _080473A0 @ =0x030006F8
	movs r1, #4
	subs r1, r1, r4
	movs r2, #2
	str r2, [sp]
	movs r2, #0x49
	movs r3, #3
	bl sub_08026B90
_0804737E:
	ldr r1, _080473A4 @ =0x030005F6
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0804738A
	adds r0, #1
	strb r0, [r1]
_0804738A:
	ldr r1, _080473A8 @ =gUnknown_030005F8
	ldrb r0, [r1]
	cmp r0, #1
	bne _08047396
	movs r0, #0
	strb r0, [r1]
_08047396:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080473A0: .4byte 0x030006F8
_080473A4: .4byte 0x030005F6
_080473A8: .4byte gUnknown_030005F8

	thumb_func_start sub_080473AC
sub_080473AC: @ 0x080473AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	str r0, [sp, #0x14]
	mov sl, r0
	ldr r0, _080473EC @ =gUnknown_03000764
	ldr r7, [r0]
	ldr r0, _080473F0 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080473CC
	adds r7, #0xe0
_080473CC:
	movs r1, #0
	mov r8, r1
_080473D0:
	mov r2, r8
	cmp r2, #1
	bls _080473DA
	movs r3, #0x78
	str r3, [sp, #0x14]
_080473DA:
	mov r0, r8
	cmp r0, #0
	beq _080473E4
	cmp r0, #2
	bne _080473F4
_080473E4:
	movs r1, #0
	mov sl, r1
	b _08047402
	.align 2, 0
_080473EC: .4byte gUnknown_03000764
_080473F0: .4byte 0x030005F1
_080473F4:
	mov r2, sl
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xf
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov sl, r0
_08047402:
	ldr r0, _08047414 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi _0804746E
	lsls r0, r0, #2
	ldr r1, _08047418 @ =_0804741C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047414: .4byte gUnknown_030005F0
_08047418: .4byte _0804741C
_0804741C: @ jump table
	.4byte _08047450 @ case 0
	.4byte _08047450 @ case 1
	.4byte _08047450 @ case 2
	.4byte _08047458 @ case 3
	.4byte _08047458 @ case 4
	.4byte _08047548 @ case 5
	.4byte _08047450 @ case 6
	.4byte _08047458 @ case 7
	.4byte _08047450 @ case 8
	.4byte _08047458 @ case 9
	.4byte _08047458 @ case 10
	.4byte _08047450 @ case 11
	.4byte _08047450 @ case 12
_08047450:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08047548
	b _0804746E
_08047458:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0804746E
	ldr r0, _0804749C @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r1, _080474A0 @ =gUnknown_030005F5
	ldrb r1, [r1]
	cmp r0, r1
	bne _08047548
_0804746E:
	ldr r0, _080474A0 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _0804749C @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	cmp r1, r0
	bne _080474A8
	ldrb r1, [r7, #1]
	movs r0, #0x34
	muls r0, r1, r0
	ldr r1, _080474A4 @ =0x03000628
	adds r0, r0, r1
	adds r2, r7, #0
	adds r2, #0x34
	adds r3, r7, #0
	adds r3, #0x36
	movs r1, #1
	str r1, [sp]
	movs r1, #8
	bl sub_08026C40
	b _080474AE
	.align 2, 0
_0804749C: .4byte 0x030005F1
_080474A0: .4byte gUnknown_030005F5
_080474A4: .4byte 0x03000628
_080474A8:
	movs r0, #0
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
_080474AE:
	mov r0, r8
	adds r0, #0x10
	ldr r2, _080474E4 @ =0x03000628
	ldrb r3, [r7, #1]
	movs r1, #0x34
	muls r1, r3, r1
	adds r2, #0xc
	adds r1, r1, r2
	ldrb r2, [r7, #2]
	lsls r2, r2, #5
	ldr r1, [r1]
	adds r1, r1, r2
	movs r2, #1
	bl LoadPalette
	add r0, sp, #0x10
	mov r1, r8
	strb r1, [r0]
	ldrb r0, [r7, #1]
	cmp r0, #1
	beq _080474F8
	cmp r0, #1
	bgt _080474E8
	cmp r0, #0
	beq _080474F2
	b _08047508
	.align 2, 0
_080474E4: .4byte 0x03000628
_080474E8:
	cmp r0, #2
	beq _080474FE
	cmp r0, #3
	beq _08047504
	b _08047508
_080474F2:
	movs r2, #0
	mov sb, r2
	b _08047508
_080474F8:
	movs r3, #1
	mov sb, r3
	b _08047508
_080474FE:
	movs r0, #1
	mov sb, r0
	b _08047508
_08047504:
	movs r1, #3
	mov sb, r1
_08047508:
	ldr r0, [sp, #0x14]
	adds r0, #0x14
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x22
	adds r1, r1, r2
	ldrh r3, [r7, #0x34]
	movs r2, #0
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r6, _0804756C @ =0x03000628
	ldrb r2, [r7, #1]
	movs r5, #0x34
	muls r2, r5, r2
	adds r4, r6, #0
	adds r4, #8
	adds r2, r2, r4
	ldr r2, [r2]
	str r2, [sp, #8]
	ldrb r2, [r7, #1]
	muls r2, r5, r2
	adds r2, r2, r6
	ldr r2, [r2]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08003518
_08047548:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r7, #0x38
	cmp r0, #3
	bhi _0804755A
	b _080473D0
_0804755A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804756C: .4byte 0x03000628

	thumb_func_start sub_08047570
sub_08047570: @ 0x08047570
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r0, _08047588 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047590
	ldr r0, _0804758C @ =gUnknown_030005F5
	ldrb r1, [r0]
	movs r6, #0
	cmp r1, #1
	bls _0804759C
	b _0804759A
	.align 2, 0
_08047588: .4byte 0x030005F1
_0804758C: .4byte gUnknown_030005F5
_08047590:
	ldr r0, _080475C8 @ =gUnknown_030005F5
	ldrb r1, [r0]
	movs r6, #0
	cmp r1, #5
	bls _0804759C
_0804759A:
	movs r6, #0x78
_0804759C:
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r5, r0, #6
	ldr r0, _080475CC @ =0x030006F8
	ldr r2, _080475D0 @ =0x03000618
	ldr r3, _080475D4 @ =0x03000620
	str r1, [sp]
	movs r1, #0x15
	bl sub_08026C40
	ldr r0, _080475D8 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080475BC
	b _08047776
_080475BC:
	lsls r0, r0, #2
	ldr r1, _080475DC @ =_080475E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080475C8: .4byte gUnknown_030005F5
_080475CC: .4byte 0x030006F8
_080475D0: .4byte 0x03000618
_080475D4: .4byte 0x03000620
_080475D8: .4byte gUnknown_030005F0
_080475DC: .4byte _080475E0
_080475E0: @ jump table
	.4byte _08047614 @ case 0
	.4byte _08047772 @ case 1
	.4byte _08047772 @ case 2
	.4byte _08047658 @ case 3
	.4byte _08047690 @ case 4
	.4byte _080476E0 @ case 5
	.4byte _0804776C @ case 6
	.4byte _0804776C @ case 7
	.4byte _08047776 @ case 8
	.4byte _08047776 @ case 9
	.4byte _08047776 @ case 10
	.4byte _08047776 @ case 11
	.4byte _08047776 @ case 12
_08047614:
	bl sub_0800F298
	cmp r0, #0
	bne _0804761E
	b _08047776
_0804761E:
	adds r0, r6, #0
	adds r0, #0x3c
	adds r1, r5, #0
	adds r1, #0x1a
	ldr r2, _08047650 @ =gUnknown_03000614
	ldrh r3, [r2, #4]
	movs r5, #1
	str r5, [sp]
	ldr r4, _08047654 @ =0x030006F8
	ldr r2, [r4, #0xc]
	str r2, [sp, #4]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #0xff
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r2, #0x15
	bl sub_080039C8
	b _08047776
	.align 2, 0
_08047650: .4byte gUnknown_03000614
_08047654: .4byte 0x030006F8
_08047658:
	ldr r2, _08047684 @ =gUnknown_03000764
	ldr r0, _08047688 @ =gUnknown_030005F5
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2]
	adds r4, r1, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08047680
	ldr r0, _0804768C @ =0x030006F8
	adds r1, r6, #4
	adds r2, r5, #0
	adds r2, #0x1a
	movs r3, #2
	str r3, [sp]
	movs r3, #3
	bl sub_08026B90
_08047680:
	ldrb r0, [r4, #1]
	b _080476BA
	.align 2, 0
_08047684: .4byte gUnknown_03000764
_08047688: .4byte gUnknown_030005F5
_0804768C: .4byte 0x030006F8
_08047690:
	ldr r2, _080476D4 @ =gUnknown_03000764
	ldr r0, _080476D8 @ =gUnknown_030005F5
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2]
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080476B8
	ldr r0, _080476DC @ =0x030006F8
	adds r1, r6, #4
	adds r2, r5, #0
	adds r2, #0x1a
	movs r3, #2
	str r3, [sp]
	movs r3, #3
	bl sub_08026B90
_080476B8:
	ldrb r0, [r4, #2]
_080476BA:
	cmp r0, #3
	beq _08047776
	ldr r0, _080476DC @ =0x030006F8
	adds r1, r6, #0
	adds r1, #0x1e
	adds r2, r5, #0
	adds r2, #0x1a
	movs r3, #1
	str r3, [sp]
	movs r3, #3
	bl sub_08026B90
	b _08047776
	.align 2, 0
_080476D4: .4byte gUnknown_03000764
_080476D8: .4byte gUnknown_030005F5
_080476DC: .4byte 0x030006F8
_080476E0:
	ldr r0, _08047734 @ =0x030006F8
	ldr r2, _08047738 @ =0x030005FC
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	movs r3, #0
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
	bl sub_0804851C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804770C
	ldr r0, _0804773C @ =0x03000730
	ldr r2, _08047740 @ =gUnknown_03000614
	ldr r3, _08047744 @ =gUnknown_0300061C
	movs r1, #1
	str r1, [sp]
	movs r1, #4
	bl sub_08026C40
_0804770C:
	ldr r0, _08047748 @ =0x03000600
	ldrh r1, [r0]
	ldr r0, _0804774C @ =0x0000060C
	cmp r1, r0
	bne _08047750
	bl sub_0804851C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047750
	ldr r0, _0804773C @ =0x03000730
	ldr r1, _08047740 @ =gUnknown_03000614
	ldrh r1, [r1]
	str r1, [sp]
	movs r1, #0xe4
	movs r2, #0x94
	movs r3, #4
	bl sub_08026BC4
	b _08047776
	.align 2, 0
_08047734: .4byte 0x030006F8
_08047738: .4byte 0x030005FC
_0804773C: .4byte 0x03000730
_08047740: .4byte gUnknown_03000614
_08047744: .4byte gUnknown_0300061C
_08047748: .4byte 0x03000600
_0804774C: .4byte 0x0000060C
_08047750:
	ldr r0, _08047764 @ =0x03000730
	ldr r1, _08047768 @ =gUnknown_03000614
	ldrh r1, [r1]
	str r1, [sp]
	movs r1, #0xe4
	movs r2, #0x94
	movs r3, #4
	bl sub_08026B90
	b _08047776
	.align 2, 0
_08047764: .4byte 0x03000730
_08047768: .4byte gUnknown_03000614
_0804776C:
	bl sub_0804837C
	b _08047776
_08047772:
	bl sub_0804837C
_08047776:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08047780
sub_08047780: @ 0x08047780
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r0, _080477E8 @ =gUnknown_03000764
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _080477EC @ =gUnknown_030005F8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080477A8
	movs r0, #0
	bl sub_0800EE44
_080477A8:
	ldr r0, _080477F0 @ =gUnknown_030005F0
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #5
	bne _080477B4
	b _08047B42
_080477B4:
	cmp r1, #0xa
	bne _080477BA
	b _08047B42
_080477BA:
	ldr r0, _080477F4 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080477C6
	movs r2, #0xe0
	add sb, r2
_080477C6:
	movs r3, #0
	mov sl, r3
_080477CA:
	mov r0, sb
	adds r0, #0x14
	str r0, [sp, #0x18]
	mov r1, sl
	cmp r1, #1
	bls _080477DA
	movs r2, #0x78
	str r2, [sp, #0xc]
_080477DA:
	mov r3, sl
	cmp r3, #0
	beq _080477E4
	cmp r3, #2
	bne _080477F8
_080477E4:
	movs r0, #0
	b _08047804
	.align 2, 0
_080477E8: .4byte gUnknown_03000764
_080477EC: .4byte gUnknown_030005F8
_080477F0: .4byte gUnknown_030005F0
_080477F4: .4byte 0x030005F1
_080477F8:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r0, r0, #0x10
_08047804:
	str r0, [sp, #0x10]
	ldrb r0, [r4]
	cmp r0, #2
	bhi _08047848
	ldr r0, _08047834 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08047838 @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	cmp r1, r0
	bne _08047848
	ldr r0, _0804783C @ =0x030005F6
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bgt _08047840
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0804784A
	.align 2, 0
_08047834: .4byte gUnknown_030005F5
_08047838: .4byte 0x030005F1
_0804783C: .4byte 0x030005F6
_08047840:
	ldr r3, _08047844 @ =0x0000FFFD
	b _0804784A
	.align 2, 0
_08047844: .4byte 0x0000FFFD
_08047848:
	movs r3, #0
_0804784A:
	ldrb r0, [r4]
	cmp r0, #7
	beq _08047858
	cmp r0, #9
	beq _08047858
	cmp r0, #0xa
	bne _0804788C
_08047858:
	ldr r0, _08047884 @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, _08047888 @ =gUnknown_030005F5
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804788C
	ldr r1, [sp, #0xc]
	adds r1, #0x25
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	adds r2, #0x11
	ldr r0, [sp, #0x18]
	movs r3, #1
	bl sub_0800EDBC
	b _080478DE
	.align 2, 0
_08047884: .4byte 0x030005F1
_08047888: .4byte gUnknown_030005F5
_0804788C:
	mov r0, sb
	ldrb r4, [r0]
	cmp r4, #0
	bne _080478F8
	ldr r0, _080478C4 @ =gUnknown_030005F0
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080478CC
	ldr r1, [sp, #0xc]
	adds r1, #0x38
	ldr r0, [sp, #0x10]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x1c
	adds r2, r2, r0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _080478C8 @ =0x030006F8
	movs r3, #0x12
	bl sub_0802706C
	b _080479DA
	.align 2, 0
_080478C4: .4byte gUnknown_030005F0
_080478C8: .4byte 0x030006F8
_080478CC:
	ldr r0, _080478F0 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _080478F4 @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	cmp r1, r0
	beq _080478DE
	b _080479DA
_080478DE:
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	mov r0, sb
	bl sub_08047D40
	b _080479DA
	.align 2, 0
_080478F0: .4byte gUnknown_030005F5
_080478F4: .4byte 0x030005F1
_080478F8:
	ldr r0, _08047978 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #8
	beq _08047910
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x10
	mov r8, r1
	ldr r2, [sp, #0xc]
	lsls r6, r2, #0x10
	lsls r7, r3, #0x10
	cmp r0, #6
	bne _080479B6
_08047910:
	ldr r0, _0804797C @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08047980 @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r2, [sp, #0x10]
	lsls r2, r2, #0x10
	mov r8, r2
	ldr r2, [sp, #0xc]
	lsls r6, r2, #0x10
	lsls r7, r3, #0x10
	cmp r1, r0
	bne _080479B6
	mov r3, sb
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _080479B6
	bl sub_08001F64
	cmp r0, #0
	beq _080479B6
	mov r0, sb
	ldrb r2, [r0, #4]
	cmp r2, #0
	beq _08047988
	asrs r5, r6, #0x10
	adds r1, r5, #0
	adds r1, #0x26
	mov r2, r8
	asrs r0, r2, #0x10
	asrs r4, r7, #0x10
	adds r4, r4, r0
	adds r4, #0x10
	movs r0, #1
	str r0, [sp]
	ldr r0, _08047984 @ =0x030006F8
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	adds r5, #0x48
	movs r0, #2
	str r0, [sp]
	ldr r0, _08047984 @ =0x030006F8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	b _080479B6
	.align 2, 0
_08047978: .4byte gUnknown_030005F0
_0804797C: .4byte gUnknown_030005F5
_08047980: .4byte 0x030005F1
_08047984: .4byte 0x030006F8
_08047988:
	asrs r5, r6, #0x10
	adds r1, r5, #0
	adds r1, #0x26
	mov r3, r8
	asrs r0, r3, #0x10
	asrs r4, r7, #0x10
	adds r4, r4, r0
	adds r4, #0x10
	str r2, [sp]
	ldr r0, _08047A3C @ =0x030006F8
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	adds r5, #0x48
	movs r0, #3
	str r0, [sp]
	ldr r0, _08047A3C @ =0x030006F8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
_080479B6:
	asrs r1, r6, #0x10
	adds r1, #0x25
	mov r2, r8
	asrs r0, r2, #0x10
	asrs r2, r7, #0x10
	adds r2, r2, r0
	adds r2, #0x11
	ldr r0, [sp, #0x18]
	movs r3, #1
	bl sub_0800EDBC
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	mov r0, sb
	bl sub_08047D40
_080479DA:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #0x38
	add sb, r0
	ldr r4, _08047A40 @ =gUnknown_030005F0
	mov r1, sl
	cmp r1, #3
	bhi _080479F2
	b _080477CA
_080479F2:
	ldr r3, _08047A44 @ =gUnknown_030005F5
	ldr r0, _08047A48 @ =0x030005F1
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldrb r0, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	ldrb r0, [r4]
	cmp r0, #3
	bne _08047AB0
	movs r2, #0
	str r2, [sp, #0xc]
	cmp r1, #1
	bls _08047A16
	movs r0, #0x78
	str r0, [sp, #0xc]
_08047A16:
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #6
	str r0, [sp, #0x10]
	ldrb r1, [r3]
	ldr r0, _08047A4C @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _08047A64
	cmp r0, #1
	bgt _08047A50
	cmp r0, #0
	beq _08047A5A
	b _08047A7C
	.align 2, 0
_08047A3C: .4byte 0x030006F8
_08047A40: .4byte gUnknown_030005F0
_08047A44: .4byte gUnknown_030005F5
_08047A48: .4byte 0x030005F1
_08047A4C: .4byte gUnknown_03000764
_08047A50:
	cmp r0, #2
	beq _08047A6C
	cmp r0, #3
	beq _08047A74
	b _08047A7C
_08047A5A:
	ldr r0, _08047A60 @ =0x00090023
	b _08047A76
	.align 2, 0
_08047A60: .4byte 0x00090023
_08047A64:
	ldr r0, _08047A68 @ =0x00090024
	b _08047A76
	.align 2, 0
_08047A68: .4byte 0x00090024
_08047A6C:
	ldr r0, _08047A70 @ =0x00090025
	b _08047A76
	.align 2, 0
_08047A70: .4byte 0x00090025
_08047A74:
	ldr r0, _08047AA8 @ =0x00090026
_08047A76:
	bl GetDataRecord
	str r0, [sp, #0x14]
_08047A7C:
	ldr r4, [sp, #0x14]
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, [sp, #0xc]
	adds r1, #0x4c
	ldr r2, _08047AAC @ =gUnknown_03003CA0
	ldrh r2, [r2]
	muls r0, r2, r0
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	subs r1, r1, r0
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x10
	adds r0, r4, #0
	bl sub_0800EB30
	b _08047B42
	.align 2, 0
_08047AA8: .4byte 0x00090026
_08047AAC: .4byte gUnknown_03003CA0
_08047AB0:
	cmp r0, #4
	bne _08047B42
	movs r0, #0
	str r0, [sp, #0xc]
	cmp r1, #1
	bls _08047AC0
	movs r1, #0x78
	str r1, [sp, #0xc]
_08047AC0:
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #6
	str r2, [sp, #0x10]
	ldrb r1, [r3]
	ldr r0, _08047AE8 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _08047B00
	cmp r0, #1
	bgt _08047AEC
	cmp r0, #0
	beq _08047AF6
	b _08047B18
	.align 2, 0
_08047AE8: .4byte gUnknown_03000764
_08047AEC:
	cmp r0, #2
	beq _08047B08
	cmp r0, #3
	beq _08047B10
	b _08047B18
_08047AF6:
	ldr r0, _08047AFC @ =0x00090027
	b _08047B12
	.align 2, 0
_08047AFC: .4byte 0x00090027
_08047B00:
	ldr r0, _08047B04 @ =0x00090028
	b _08047B12
	.align 2, 0
_08047B04: .4byte 0x00090028
_08047B08:
	ldr r0, _08047B0C @ =0x00090029
	b _08047B12
	.align 2, 0
_08047B0C: .4byte 0x00090029
_08047B10:
	ldr r0, _08047B58 @ =0x0009002A
_08047B12:
	bl GetDataRecord
	str r0, [sp, #0x14]
_08047B18:
	ldr r4, [sp, #0x14]
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, [sp, #0xc]
	adds r1, #0x4c
	ldr r2, _08047B5C @ =gUnknown_03003CA0
	ldrh r2, [r2]
	muls r0, r2, r0
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	subs r1, r1, r0
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x10
	adds r0, r4, #0
	bl sub_0800EB30
_08047B42:
	ldr r0, _08047B60 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #8
	bls _08047B4C
	b _08047D28
_08047B4C:
	lsls r0, r0, #2
	ldr r1, _08047B64 @ =_08047B68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047B58: .4byte 0x0009002A
_08047B5C: .4byte gUnknown_03003CA0
_08047B60: .4byte gUnknown_030005F0
_08047B64: .4byte _08047B68
_08047B68: @ jump table
	.4byte _08047B8C @ case 0
	.4byte _08047CE8 @ case 1
	.4byte _08047D00 @ case 2
	.4byte _08047BE4 @ case 3
	.4byte _08047C10 @ case 4
	.4byte _08047C3C @ case 5
	.4byte _08047CBC @ case 6
	.4byte _08047CBC @ case 7
	.4byte _08047BB8 @ case 8
_08047B8C:
	ldr r0, _08047BB0 @ =0x00090007
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047BB4 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047BB0: .4byte 0x00090007
_08047BB4: .4byte gUnknown_03003CA0
_08047BB8:
	ldr r0, _08047BDC @ =0x00090014
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047BE0 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047BDC: .4byte 0x00090014
_08047BE0: .4byte gUnknown_03003CA0
_08047BE4:
	ldr r0, _08047C08 @ =0x00090008
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047C0C @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047C08: .4byte 0x00090008
_08047C0C: .4byte gUnknown_03003CA0
_08047C10:
	ldr r0, _08047C34 @ =0x00090009
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047C38 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047C34: .4byte 0x00090009
_08047C38: .4byte gUnknown_03003CA0
_08047C3C:
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1, #2]
	mov sl, r0
	adds r5, r1, #0
_08047C46:
	ldr r0, _08047CA8 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08047CAC @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r2, sl
	lsls r1, r2, #1
	adds r0, #0x14
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r4, _08047CB0 @ =gUnknown_03003CA0
	ldrh r0, [r4]
	mov r1, sl
	muls r1, r0, r1
	adds r1, #0x4f
	add r0, sp, #8
	movs r2, #0x12
	movs r3, #1
	bl sub_0800EDBC
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0xf
	bls _08047C46
	add r0, sp, #8
	ldr r1, _08047CB4 @ =0x00000201
	strh r1, [r0]
	ldr r1, _08047CB8 @ =0x030005F4
	ldrb r0, [r1]
	cmp r0, #0xa
	bhi _08047D28
	adds r1, r0, #0
	ldrh r0, [r4]
	muls r1, r0, r1
	adds r1, #0x50
	add r0, sp, #8
	movs r2, #0x14
	movs r3, #1
	bl sub_0800EDBC
	b _08047D28
	.align 2, 0
_08047CA8: .4byte gUnknown_030005F5
_08047CAC: .4byte gUnknown_03000764
_08047CB0: .4byte gUnknown_03003CA0
_08047CB4: .4byte 0x00000201
_08047CB8: .4byte 0x030005F4
_08047CBC:
	ldr r0, _08047CE0 @ =0x0009000D
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047CE4 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047CE0: .4byte 0x0009000D
_08047CE4: .4byte gUnknown_03003CA0
_08047CE8:
	ldr r0, _08047CFC @ =0x0009000B
	bl GetDataRecord
	adds r0, #0xa
	movs r1, #0x14
_08047CF2:
	movs r2, #0x8b
	bl sub_0800EB30
	b _08047D28
	.align 2, 0
_08047CFC: .4byte 0x0009000B
_08047D00:
	ldr r0, _08047D38 @ =0x0009000C
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047D3C @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
_08047D28:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047D38: .4byte 0x0009000C
_08047D3C: .4byte gUnknown_03003CA0

	thumb_func_start sub_08047D40
sub_08047D40: @ 0x08047D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	str r0, [sp, #0x60]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r1, _08047D7C @ =gUnknown_030005F8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08047D62
	b _08047E66
_08047D62:
	cmp r0, #2
	bne _08047D6A
	movs r0, #1
	strb r0, [r1]
_08047D6A:
	ldr r1, [sp, #0x60]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08047D80
	mov r0, sp
	movs r2, #0x38
	bl memcpy
	b _08047DB2
	.align 2, 0
_08047D7C: .4byte gUnknown_030005F8
_08047D80:
	ldr r1, [sp, #0x60]
	ldrb r0, [r1, #1]
	add r5, sp, #0x38
	add r4, sp, #0x54
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08016FF8
	mov r1, sp
	ldrh r0, [r4]
	strh r0, [r1, #0x10]
	ldrh r0, [r4, #2]
	strh r0, [r1, #0x12]
	ldrh r0, [r5, #2]
	strh r0, [r1, #0xa]
	ldrh r0, [r5]
	strh r0, [r1, #8]
	ldrh r0, [r5, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r5, #4]
	strh r0, [r1, #0xc]
	mov r0, sp
	movs r1, #1
	strb r1, [r0, #3]
	strb r1, [r0, #6]
_08047DB2:
	mov r0, sl
	adds r0, #0x48
	movs r1, #0x28
	adds r1, r1, r7
	mov sb, r1
	mov r1, sp
	ldrb r2, [r1, #3]
	mov r1, sb
	movs r3, #0
	bl sub_08022F60
	mov r4, sl
	adds r4, #0x34
	movs r0, #0x30
	adds r0, r0, r7
	mov r8, r0
	mov r0, sp
	movs r1, #0x10
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	mov r1, r8
	movs r3, #0
	bl sub_08022F60
	adds r6, r7, #0
	adds r6, #0x38
	mov r0, sp
	movs r1, #0x12
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_08022F60
	adds r5, r7, #0
	adds r5, #0x40
	mov r0, sp
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_08022F60
	adds r4, #0x38
	mov r0, sp
	movs r1, #8
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	mov r1, r8
	movs r3, #0
	bl sub_08022F60
	mov r0, sp
	movs r1, #0xe
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_08022F60
	mov r0, sp
	movs r1, #0xc
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_08022F60
	ldr r1, [sp, #0x60]
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _08047E56
	mov r0, sl
	adds r0, #0x7b
	mov r1, sp
	ldrb r2, [r1, #6]
	mov r1, sb
	movs r3, #0
	bl sub_08022F60
	b _08047E66
_08047E56:
	mov r0, sl
	adds r0, #0x7b
	mov r1, sp
	ldrb r2, [r1, #7]
	mov r1, sb
	movs r3, #2
	bl sub_08022F60
_08047E66:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08047E78
sub_08047E78: @ 0x08047E78
	ldr r0, _08047E98 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #5
	bne _08047EF6
	ldr r2, _08047E9C @ =0x03000600
	ldrh r1, [r2]
	ldr r0, _08047EA0 @ =0x0000060C
	adds r3, r2, #0
	cmp r1, r0
	bne _08047EA8
	ldr r0, _08047EA4 @ =0x030005FC
	movs r1, #0xe4
	strb r1, [r0]
	movs r1, #0x94
	b _08047EF4
	.align 2, 0
_08047E98: .4byte gUnknown_030005F0
_08047E9C: .4byte 0x03000600
_08047EA0: .4byte 0x0000060C
_08047EA4: .4byte 0x030005FC
_08047EA8:
	ldr r0, _08047EBC @ =0x030005F2
	ldrb r0, [r0]
	cmp r0, #0
	blt _08047EF6
	cmp r0, #1
	ble _08047EC0
	cmp r0, #2
	beq _08047EE4
	b _08047EF6
	.align 2, 0
_08047EBC: .4byte 0x030005F2
_08047EC0:
	ldrb r0, [r2]
	movs r2, #0x10
	cmp r0, #4
	bls _08047ED0
	movs r2, #0x20
	cmp r0, #9
	bhi _08047ED0
	movs r2, #0x18
_08047ED0:
	ldr r0, _08047EE0 @ =0x030005FC
	ldrb r1, [r3]
	lsls r1, r1, #4
	adds r1, r2, r1
	strb r1, [r0]
	ldrb r1, [r3, #1]
	b _08047EF0
	.align 2, 0
_08047EE0: .4byte 0x030005FC
_08047EE4:
	ldr r0, _08047EF8 @ =0x030005FC
	ldrb r1, [r2]
	lsls r1, r1, #4
	adds r1, #0x10
	strb r1, [r0]
	ldrb r1, [r2, #1]
_08047EF0:
	lsls r1, r1, #4
	adds r1, #0x30
_08047EF4:
	strb r1, [r0, #1]
_08047EF6:
	bx lr
	.align 2, 0
_08047EF8: .4byte 0x030005FC

	thumb_func_start sub_08047EFC
sub_08047EFC: @ 0x08047EFC
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	movs r3, #0
	ldr r0, _08047F64 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08047F68 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r1, r0, #0
	adds r1, #0x14
_08047F16:
	lsls r0, r3, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08047F22
	adds r4, r3, #0
_08047F22:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xa
	bls _08047F16
	movs r3, #0
	cmp r3, r4
	bhs _08047F5C
	ldr r7, _08047F64 @ =gUnknown_030005F5
	ldr r6, _08047F68 @ =gUnknown_03000764
	movs r5, #0xff
_08047F38:
	ldrb r1, [r7]
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r1, r3, #1
	adds r0, #0x14
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne _08047F52
	strh r5, [r1]
_08047F52:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r4
	blo _08047F38
_08047F5C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047F64: .4byte gUnknown_030005F5
_08047F68: .4byte gUnknown_03000764

	thumb_func_start sub_08047F6C
sub_08047F6C: @ 0x08047F6C
	push {r4, lr}
	ldr r0, _08047FF0 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #5
	beq _08047F78
	b _0804823A
_08047F78:
	ldr r0, _08047FF4 @ =0x03000600
	ldrh r2, [r0]
	ldr r1, _08047FF8 @ =0x0000060C
	adds r3, r0, #0
	cmp r2, r1
	bne _08048008
	ldr r0, _08047FFC @ =0x03000604
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r2, _08048000 @ =0x030005F2
	cmp r1, #0x40
	bne _08047FBE
	ldrb r1, [r3, #1]
	subs r0, r1, #1
	strb r0, [r3, #1]
	ldr r0, _08048004 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #0
	blt _08047FAE
	cmp r0, #1
	ble _08047FAA
	cmp r0, #5
	bgt _08047FAE
	cmp r0, #3
	blt _08047FAE
_08047FAA:
	subs r0, r1, #2
	strb r0, [r3, #1]
_08047FAE:
	ldr r0, _08048000 @ =0x030005F2
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bne _08047FBE
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08047FBE:
	ldrh r0, [r4]
	cmp r0, #0x80
	bne _08047FD4
	movs r0, #0
	strb r0, [r3, #1]
	ldrb r0, [r2]
	cmp r0, #2
	bne _08047FD4
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08047FD4:
	ldrb r0, [r2]
	cmp r0, #1
	bls _08047FDC
	b _0804823A
_08047FDC:
	ldrh r0, [r4]
	cmp r0, #0x20
	bne _08047FE6
	movs r0, #9
	strb r0, [r3]
_08047FE6:
	ldrh r0, [r4]
	cmp r0, #0x10
	beq _08047FEE
	b _0804823A
_08047FEE:
	b _0804811C
	.align 2, 0
_08047FF0: .4byte gUnknown_030005F0
_08047FF4: .4byte 0x03000600
_08047FF8: .4byte 0x0000060C
_08047FFC: .4byte 0x03000604
_08048000: .4byte 0x030005F2
_08048004: .4byte gLanguage
_08048008:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bls _0804801C
	ldrb r0, [r3]
	cmp r0, #9
	bls _0804801C
	ldr r0, _08048034 @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x80
	beq _0804802C
_0804801C:
	ldrh r1, [r3]
	ldr r0, _08048038 @ =0x00000609
	cmp r1, r0
	bne _0804803C
	ldr r0, _08048034 @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x10
	bne _0804803C
_0804802C:
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
	.align 2, 0
_08048034: .4byte 0x03000604
_08048038: .4byte 0x00000609
_0804803C:
	ldr r0, _08048050 @ =0x030005F2
	ldrb r0, [r0]
	cmp r0, #0
	bge _08048046
	b _0804823A
_08048046:
	cmp r0, #1
	ble _08048054
	cmp r0, #2
	beq _080480B8
	b _0804823A
	.align 2, 0
_08048050: .4byte 0x030005F2
_08048054:
	ldr r0, _08048068 @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _0804807E
	cmp r0, #0x20
	bgt _0804806C
	cmp r0, #0x10
	beq _08048076
	b _0804823A
	.align 2, 0
_08048068: .4byte 0x03000604
_0804806C:
	cmp r0, #0x40
	beq _08048098
	cmp r0, #0x80
	beq _0804808A
	b _0804823A
_08048076:
	ldrb r0, [r3]
	cmp r0, #0xb
	bls _08048102
	b _0804811C
_0804807E:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0804814E
	movs r0, #0xc
	strb r0, [r3]
	b _0804823A
_0804808A:
	ldrb r0, [r3, #1]
	cmp r0, #5
	bhi _08048094
	adds r0, #1
	b _08048238
_08048094:
	movs r0, #0
	b _08048238
_08048098:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080480A2
	subs r0, #1
	b _08048238
_080480A2:
	ldrb r0, [r3]
	cmp r0, #0xc
	bne _080480AC
	movs r0, #6
	b _08048238
_080480AC:
	cmp r0, #9
	bls _080480B4
	movs r0, #5
	b _08048238
_080480B4:
	movs r0, #6
	b _08048238
_080480B8:
	ldr r0, _080480CC @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _08048122
	cmp r0, #0x20
	bgt _080480D0
	cmp r0, #0x10
	beq _080480DC
	b _0804823A
	.align 2, 0
_080480CC: .4byte 0x03000604
_080480D0:
	cmp r0, #0x40
	bne _080480D6
	b _08048218
_080480D6:
	cmp r0, #0x80
	beq _0804815A
	b _0804823A
_080480DC:
	ldr r0, _080480F8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #0
	bge _080480E6
	b _0804823A
_080480E6:
	cmp r0, #1
	ble _080480FC
	cmp r0, #5
	ble _080480F0
	b _0804823A
_080480F0:
	ldrb r0, [r3]
	cmp r0, #0xc
	bhi _08048110
	b _08048102
	.align 2, 0
_080480F8: .4byte gLanguage
_080480FC:
	ldrb r0, [r3]
	cmp r0, #0xc
	bhi _08048108
_08048102:
	adds r0, #1
	strb r0, [r3]
	b _0804823A
_08048108:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bhi _08048116
	b _0804811C
_08048110:
	ldrb r0, [r3, #1]
	cmp r0, #6
	bls _0804811C
_08048116:
	movs r0, #0xb
	strb r0, [r3]
	b _0804823A
_0804811C:
	movs r0, #0
	strb r0, [r3]
	b _0804823A
_08048122:
	ldr r0, _0804813C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #1
	bgt _08048148
	cmp r0, #0
	blt _08048148
	ldrb r0, [r3, #1]
	cmp r0, #4
	bls _08048140
	ldrb r0, [r3]
	cmp r0, #0xb
	bhi _0804814E
	b _08048154
	.align 2, 0
_0804813C: .4byte gLanguage
_08048140:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0804814E
	b _08048154
_08048148:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08048154
_0804814E:
	subs r0, #1
	strb r0, [r3]
	b _0804823A
_08048154:
	movs r0, #0xd
	strb r0, [r3]
	b _0804823A
_0804815A:
	ldr r0, _0804816C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0804823A
	lsls r0, r0, #2
	ldr r1, _08048170 @ =_08048174
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804816C: .4byte gLanguage
_08048170: .4byte _08048174
_08048174: @ jump table
	.4byte _0804818C @ case 0
	.4byte _0804818C @ case 1
	.4byte _080481A8 @ case 2
	.4byte _080481C4 @ case 3
	.4byte _080481E0 @ case 4
	.4byte _080481FC @ case 5
_0804818C:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _08048196
	adds r0, #1
	b _08048238
_08048196:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _080481A4
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481A4:
	movs r0, #0
	b _08048238
_080481A8:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bhi _080481B2
	adds r0, #1
	b _08048238
_080481B2:
	ldrb r0, [r3]
	cmp r0, #0xd
	bls _080481C0
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481C0:
	movs r0, #0
	b _08048238
_080481C4:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _080481CE
	adds r0, #1
	b _08048238
_080481CE:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _080481DC
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481DC:
	movs r0, #0
	b _08048238
_080481E0:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _080481EA
	adds r0, #1
	b _08048238
_080481EA:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _080481F8
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481F8:
	movs r0, #0
	b _08048238
_080481FC:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _08048206
	adds r0, #1
	b _08048238
_08048206:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _08048214
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_08048214:
	movs r0, #0
	b _08048238
_08048218:
	adds r1, r3, #0
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08048226
	subs r0, #1
	strb r0, [r1, #1]
	b _0804823A
_08048226:
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08048236
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #6
	strb r0, [r1, #1]
	b _0804823A
_08048236:
	movs r0, #4
_08048238:
	strb r0, [r3, #1]
_0804823A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08048240
sub_08048240: @ 0x08048240
	ldr r1, _0804824C @ =gUnknown_030005F0
	ldrb r1, [r1]
	cmp r1, #5
	beq _08048250
	movs r0, #0
	b _08048372
	.align 2, 0
_0804824C: .4byte gUnknown_030005F0
_08048250:
	ldr r1, _08048264 @ =0x030005F2
	ldrb r1, [r1]
	cmp r1, #1
	beq _0804828C
	cmp r1, #1
	bgt _08048268
	cmp r1, #0
	beq _0804826E
	b _08048372
	.align 2, 0
_08048264: .4byte 0x030005F2
_08048268:
	cmp r1, #2
	beq _080482A8
	b _08048372
_0804826E:
	ldr r3, _08048284 @ =0x080FBE1C
	ldr r2, _08048288 @ =0x03000600
	ldrb r1, [r2, #1]
	movs r0, #0xd
	muls r0, r1, r0
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	b _08048372
	.align 2, 0
_08048284: .4byte 0x080FBE1C
_08048288: .4byte 0x03000600
_0804828C:
	ldr r3, _080482A0 @ =0x080FBE77
	ldr r2, _080482A4 @ =0x03000600
	ldrb r1, [r2, #1]
	movs r0, #0xd
	muls r0, r1, r0
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	b _08048372
	.align 2, 0
_080482A0: .4byte 0x080FBE77
_080482A4: .4byte 0x03000600
_080482A8:
	ldr r1, _080482BC @ =gLanguage
	ldrh r1, [r1]
	cmp r1, #5
	bhi _08048372
	lsls r0, r1, #2
	ldr r1, _080482C0 @ =_080482C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080482BC: .4byte gLanguage
_080482C0: .4byte _080482C4
_080482C4: @ jump table
	.4byte _080482DC @ case 0
	.4byte _080482DC @ case 1
	.4byte _080482FC @ case 2
	.4byte _0804831C @ case 3
	.4byte _0804833C @ case 4
	.4byte _0804835C @ case 5
_080482DC:
	ldr r3, _080482F4 @ =0x080FBED2
	ldr r0, _080482F8 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_080482F4: .4byte 0x080FBED2
_080482F8: .4byte 0x03000600
_080482FC:
	ldr r3, _08048314 @ =0x080FBF5E
	ldr r0, _08048318 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_08048314: .4byte 0x080FBF5E
_08048318: .4byte 0x03000600
_0804831C:
	ldr r3, _08048334 @ =0x080FC006
	ldr r0, _08048338 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_08048334: .4byte 0x080FC006
_08048338: .4byte 0x03000600
_0804833C:
	ldr r3, _08048354 @ =0x080FC0AE
	ldr r0, _08048358 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_08048354: .4byte 0x080FC0AE
_08048358: .4byte 0x03000600
_0804835C:
	ldr r3, _08048374 @ =0x080FC156
	ldr r0, _08048378 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
_08048372:
	bx lr
	.align 2, 0
_08048374: .4byte 0x080FC156
_08048378: .4byte 0x03000600

	thumb_func_start sub_0804837C
sub_0804837C: @ 0x0804837C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _080483E0 @ =0x03000730
	ldr r7, _080483E4 @ =gUnknown_03000614
	ldr r4, _080483E8 @ =gUnknown_0300061C
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #4
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08026C40
	adds r2, r7, #2
	adds r4, #2
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #5
	adds r3, r4, #0
	bl sub_08026C40
	ldr r0, _080483EC @ =0x030005F7
	ldrb r4, [r0]
	cmp r4, #0
	beq _080483F0
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x94
	movs r3, #4
	bl sub_08026BC4
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x94
	movs r3, #5
	bl sub_08026B90
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x94
	movs r3, #8
	bl sub_08026B90
	b _0804841E
	.align 2, 0
_080483E0: .4byte 0x03000730
_080483E4: .4byte gUnknown_03000614
_080483E8: .4byte gUnknown_0300061C
_080483EC: .4byte 0x030005F7
_080483F0:
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x94
	movs r3, #4
	bl sub_08026B90
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x94
	movs r3, #5
	bl sub_08026BC4
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x94
	movs r3, #9
	bl sub_08026B90
_0804841E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
