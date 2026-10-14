	.include "asm/macros.inc"

	.syntax unified
	.text

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
