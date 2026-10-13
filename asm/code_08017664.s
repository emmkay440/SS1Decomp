	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08017664
sub_08017664: @ 0x08017664
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	bl GetPlayerClass
	cmp r0, #2
	bne _080176F2
	ldrh r0, [r6, #0xc]
	cmp r0, #2
	beq _08017684
	cmp r0, #5
	beq _08017684
	b _08017A34
_08017684:
	bl sub_08010B48
	cmp r0, #0
	beq _0801768E
	b _08017A34
_0801768E:
	bl sub_08012230
	cmp r0, #0
	bne _08017698
	b _08017A34
_08017698:
	adds r0, r6, #0
	adds r0, #0x94
	ldr r2, [r0]
	ldr r1, [r6, #0x7c]
	adds r5, r0, #0
	cmp r2, r1
	bne _080176A8
	b _08017A34
_080176A8:
	movs r0, #0x9d
	bl PlaySE
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x14
	bl __divsi3
	adds r4, r6, #0
	adds r4, #0x56
	strh r0, [r4]
	bl sub_080102C4
	cmp r0, #1
	bne _080176DA
	ldrh r0, [r6, #0xc]
	cmp r0, #5
	bne _080176DA
	ldrh r0, [r4]
	ldrh r1, [r6, #0x14]
	bl __udivsi3
	strh r0, [r4]
_080176DA:
	ldrh r0, [r4]
	cmp r0, #0
	bne _080176E4
	movs r0, #1
	strh r0, [r4]
_080176E4:
	ldr r0, [r5]
	ldr r1, [r6, #0x7c]
	cmp r0, r1
	bne _080176EE
	b _08017A34
_080176EE:
	str r1, [r5]
	b _08017A34
_080176F2:
	ldrh r0, [r6, #0xc]
	cmp r0, #5
	beq _08017764
	cmp r0, #5
	bgt _08017702
	cmp r0, #2
	beq _08017708
	b _08017A34
_08017702:
	cmp r0, #6
	beq _08017708
	b _08017A34
_08017708:
	bl GetPlayerClass
	adds r5, r0, #0
	cmp r5, #1
	bne _08017764
	bl sub_08010B48
	cmp r0, #0
	beq _0801771C
	b _08017A34
_0801771C:
	bl sub_08012230
	cmp r0, #0
	bne _08017726
	b _08017A34
_08017726:
	adds r4, r6, #0
	adds r4, #0x94
	ldr r1, [r4]
	ldr r0, [r6, #0x7c]
	cmp r1, r0
	bne _08017734
	b _08017A34
_08017734:
	movs r0, #0x46
	bl PlaySE
	adds r0, r6, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0x14
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x56
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017756
	strh r5, [r1]
_08017756:
	ldr r0, [r4]
	ldr r1, [r6, #0x7c]
	cmp r0, r1
	bne _08017760
	b _08017A34
_08017760:
	str r1, [r4]
	b _08017A34
_08017764:
	ldrh r0, [r6, #0xc]
	cmp r0, #2
	bne _08017778
	adds r5, r6, #0
	adds r5, #0x72
	ldr r4, _08017774 @ =0x080FBA0C
	b _080177AE
	.align 2, 0
_08017774: .4byte 0x080FBA0C
_08017778:
	cmp r0, #5
	bne _080177CC
	bl GetPlayerClass
	cmp r0, #3
	bne _080177A8
	bl sub_080102C4
	cmp r0, #1
	beq _0801779A
	adds r0, r6, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #7
	bhi _08017798
	b _08017A34
_08017798:
	b _080177C0
_0801779A:
	adds r0, r6, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #1
	bhi _080177A6
	b _08017A34
_080177A6:
	b _080177C0
_080177A8:
	adds r5, r6, #0
	adds r5, #0x72
	ldr r4, _080177FC @ =0x080FBA14
_080177AE:
	bl GetPlayerClass
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r5]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _080177C0
	b _08017A34
_080177C0:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _080177CC
	b _08017A34
_080177CC:
	bl sub_08010B48
	cmp r0, #0
	bne _0801782E
	bl sub_08012230
	cmp r0, #0
	beq _0801782E
	adds r0, r6, #0
	adds r0, #0x94
	ldr r2, [r0]
	ldr r1, [r6, #0x7c]
	adds r5, r0, #0
	cmp r2, r1
	beq _0801782E
	bl GetPlayerClass
	cmp r0, #3
	bne _08017800
	movs r0, #0x9e
	bl PlaySE
	b _08017806
	.align 2, 0
_080177FC: .4byte 0x080FBA14
_08017800:
	movs r0, #0x45
	bl PlaySE
_08017806:
	adds r0, r6, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x14
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x56
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017824
	movs r0, #1
	strh r0, [r1]
_08017824:
	ldr r0, [r5]
	ldr r1, [r6, #0x7c]
	cmp r0, r1
	beq _0801782E
	str r1, [r5]
_0801782E:
	movs r5, #0
	mov r8, r5
_08017832:
	ldr r0, _080178B8 @ =gActiveEnemyMask
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	movs r3, #1
	add r3, r8
	mov sb, r3
	cmp r0, #0
	bne _0801784A
	b _08017A2A
_0801784A:
	ldr r2, _080178BC @ =gEnemies
	movs r0, #0x94
	mov r1, r8
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	ldrh r0, [r4, #0xa]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08017864
	b _08017A2A
_08017864:
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	bne _0801786C
	b _08017A2A
_0801786C:
	ldr r1, [r6, #0x7c]
	ldr r0, [r4, #0x30]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
	ldrh r0, [r4, #0x38]
	ldrh r1, [r4, #0x28]
	subs r0, r0, r1
	cmp r0, #0
	bgt _08017884
	movs r2, #0
_08017884:
	cmp r2, #0
	bne _0801788A
	b _08017A2A
_0801788A:
	bl sub_080101F0
	adds r5, r0, #0
	ldr r7, _080178C0 @ =0x0000FFFF
	ands r7, r5
	lsrs r5, r5, #0x10
	ldrh r0, [r6, #0xc]
	cmp r0, #5
	bne _080178CE
	bl GetPlayerClass
	cmp r0, #0
	beq _080178C4
	cmp r0, #3
	bne _080178CE
	bl sub_080102C4
	cmp r0, #1
	beq _080178CC
	movs r7, #2
	movs r5, #0x28
	b _080178CE
	.align 2, 0
_080178B8: .4byte gActiveEnemyMask
_080178BC: .4byte gEnemies
_080178C0: .4byte 0x0000FFFF
_080178C4:
	bl sub_080102C4
	cmp r0, #2
	bne _080178CE
_080178CC:
	movs r7, #0x10
_080178CE:
	ldr r1, _080179FC @ =0x080FB4B8
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r5, r8
	lsls r2, r5, #1
	adds r1, r6, #0
	adds r1, #0xae
	adds r1, r1, r2
	movs r3, #1
	add r3, r8
	mov sb, r3
	ldrh r1, [r1]
	cmp r0, r1
	bhs _080178FA
	b _08017A2A
_080178FA:
	adds r1, r6, #0
	adds r1, #0xb8
	adds r1, r1, r2
	ldr r2, _08017A00 @ =0x080FB9FC
	movs r5, #0xa
	ldrsh r0, [r6, r5]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #8
	ble _08017920
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017920:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08017934
	adds r0, r1, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017934:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801793E
	rsbs r0, r0, #0
_0801793E:
	cmp r0, r7
	bhi _08017A2A
	adds r3, r4, #0
	adds r3, #0x6a
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	adds r2, r1, #0
	adds r2, #0xa
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r5, #0
	ldrsh r2, [r3, r5]
	adds r1, r1, r2
	adds r1, #0x14
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017974
	rsbs r0, r0, #0
_08017974:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	cmp r1, r0
	blt _0801798E
	movs r2, #1
_0801798E:
	cmp r2, #0
	beq _08017A18
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _080179A4
	adds r1, r4, #0
	adds r1, #0x48
	ldr r0, _08017A04 @ =0x0000FFFE
	strh r0, [r1]
_080179A4:
	movs r0, #7
	strh r0, [r4, #0xa]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08017150
	strh r0, [r4, #0x2a]
	ldrh r1, [r4, #0x28]
	adds r0, r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r6, #0x7c]
	str r0, [r4, #0x30]
	movs r0, #1
	strh r0, [r4, #0x36]
	bl GetMultiplayerId
	strh r0, [r4, #0x34]
	movs r5, #0
	movs r2, #0xa2
	adds r2, r2, r6
	mov r8, r2
	adds r0, r6, #0
	adds r0, #0xc8
	ldr r7, [r0]
	ldr r2, _08017A08 @ =0x0000FFFF
_080179D6:
	mov r3, r8
	ldrh r0, [r3]
	adds r0, r0, r5
	movs r1, #5
	str r2, [sp]
	bl __umodsi3
	movs r1, #0x94
	muls r0, r1, r0
	adds r1, r0, r7
	ldrh r0, [r1]
	ldr r2, [sp]
	cmp r0, r2
	beq _08017A0C
	adds r5, #1
	cmp r5, #4
	bls _080179D6
	b _08017A2A
	.align 2, 0
_080179FC: .4byte 0x080FB4B8
_08017A00: .4byte 0x080FB9FC
_08017A04: .4byte 0x0000FFFE
_08017A08: .4byte 0x0000FFFF
_08017A0C:
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0x94
	bl memcpy
	b _08017A2A
_08017A18:
	movs r0, #0x55
	bl PlaySE
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl sub_08018474
	ldr r0, [r6, #0x7c]
	str r0, [r4, #0x30]
_08017A2A:
	mov r8, sb
	mov r5, r8
	cmp r5, #4
	bhi _08017A34
	b _08017832
_08017A34:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017A44
sub_08017A44: @ 0x08017A44
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_08007670
	cmp r0, #0
	beq _08017A52
	b _08017D82
_08017A52:
	bl sub_080077C0
	cmp r0, #0
	beq _08017A5C
	b _08017D82
_08017A5C:
	bl sub_0800F430
	cmp r0, #0
	bne _08017A66
	b _08017D82
_08017A66:
	bl sub_080271D0
	cmp r0, #0
	beq _08017A70
	b _08017D82
_08017A70:
	ldrh r4, [r6, #0xa]
	cmp r4, #2
	beq _08017A78
	b _08017D82
_08017A78:
	adds r0, r6, #0
	adds r0, #0x4a
	adds r1, r6, #0
	adds r1, #0x8a
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _08017A8A
	b _08017D82
_08017A8A:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08017B18 @ =gPlayers
	adds r5, r1, r0
	ldrh r0, [r5, #0x10]
	ands r4, r0
	cmp r4, #0
	beq _08017AA0
	b _08017D82
_08017AA0:
	ldrh r0, [r5, #0x16]
	ldrh r1, [r6, #0x26]
	cmp r0, r1
	beq _08017AAA
	b _08017D82
_08017AAA:
	adds r0, r5, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08017AB8
	b _08017D82
_08017AB8:
	ldrh r1, [r5, #0xc]
	subs r0, r1, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08017AC6
	b _08017D82
_08017AC6:
	adds r0, r1, #0
	cmp r0, #0xa
	bne _08017ACE
	b _08017D82
_08017ACE:
	cmp r0, #9
	bne _08017AD4
	b _08017D82
_08017AD4:
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r2, r5, #0
	adds r2, #0x80
	adds r0, r2, r0
	ldr r1, [r0]
	ldr r0, [r6, #0x2c]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	adds r7, r2, #0
	cmp r0, #0
	blt _08017AF0
	b _08017D82
_08017AF0:
	bl sub_08007638
	cmp r0, #0
	beq _08017B02
	ldr r0, _08017B1C @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _08017B24
_08017B02:
	ldr r2, _08017B20 @ =0x080FB4C0
	adds r0, r6, #0
	adds r0, #0x84
	ldrh r1, [r0]
	lsls r1, r1, #2
	adds r0, r2, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	adds r1, r1, r2
	ldrh r3, [r1]
	b _08017B28
	.align 2, 0
_08017B18: .4byte gPlayers
_08017B1C: .4byte gMapLayer_03003910
_08017B20: .4byte 0x080FB4C0
_08017B24:
	movs r0, #0x30
	movs r3, #8
_08017B28:
	adds r1, r0, #0
	adds r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r6]
	lsls r2, r0, #1
	adds r0, r5, #0
	adds r0, #0xae
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08017B42
	b _08017D82
_08017B42:
	adds r0, r5, #0
	adds r0, #0xb8
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _08017B5E
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017B5E:
	ldr r0, _08017C30 @ =0x080FB9FC
	movs r4, #8
	ldrsh r1, [r6, r4]
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08017B82
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017B82:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08017B96
	adds r0, r1, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017B96:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017BA0
	rsbs r0, r0, #0
_08017BA0:
	cmp r0, r3
	bls _08017BA6
	b _08017D82
_08017BA6:
	adds r0, r6, #0
	adds r0, #0x6a
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r2, r1, #0
	adds r2, #0xa
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0x2e
	ldrsh r2, [r5, r4]
	adds r1, r1, r2
	adds r1, #0x14
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017BD8
	rsbs r0, r0, #0
_08017BD8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	cmp r1, r0
	blt _08017BF2
	movs r2, #1
_08017BF2:
	cmp r2, #0
	bne _08017BF8
	b _08017D78
_08017BF8:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017C06
	rsbs r0, r0, #0
_08017C06:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x65
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_0801036C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r4, r0
	blt _08017C38
	movs r0, #7
	strh r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x70
	ldr r0, _08017C34 @ =0x0000FFFE
	strh r0, [r1]
	b _08017C40
	.align 2, 0
_08017C30: .4byte 0x080FB9FC
_08017C34: .4byte 0x0000FFFE
_08017C38:
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x5c]
	bl sub_0801857C
_08017C40:
	adds r0, r6, #0
	adds r1, r5, #0
	bl CalcDamageToPlayer
	adds r1, r5, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, [r6, #0x2c]
	str r1, [r0]
	adds r1, r5, #0
	adds r1, #0x9c
	ldrh r0, [r6]
	adds r0, #1
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xa6
	ldrh r0, [r0]
	cmp r0, #2
	bne _08017CC2
	movs r3, #1
	movs r1, #0
	ldr r2, [r5, #0x1c]
_08017C76:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #4
	bne _08017C84
	movs r3, #0
	movs r1, #3
_08017C84:
	adds r1, #1
	cmp r1, #2
	bls _08017C76
	cmp r3, #0
	beq _08017CC2
	movs r1, #0
	movs r3, #4
	mov ip, r3
	adds r4, r5, #0
	adds r4, #0x24
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r0, #0
_08017C9E:
	ldr r0, [r5, #0x1c]
	lsls r3, r1, #1
	adds r2, r3, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _08017CAE
	cmp r0, #4
	bne _08017CBC
_08017CAE:
	mov r1, ip
	strh r1, [r2]
	adds r1, r4, r3
	ldrh r0, [r5, #0x38]
	subs r0, r7, r0
	strh r0, [r1]
	movs r1, #3
_08017CBC:
	adds r1, #1
	cmp r1, #2
	bls _08017C9E
_08017CC2:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08017CD0
	rsbs r1, r1, #0
_08017CD0:
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08017D82
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #3
	bls _08017D82
	movs r1, #0
_08017CE6:
	ldr r0, [r5, #0x1c]
	lsls r4, r1, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #2
	bgt _08017D70
	cmp r0, #0
	blt _08017D70
	ldrb r0, [r6]
	cmp r0, #4
	beq _08017D02
	cmp r0, #5
	beq _08017D38
	b _08017D70
_08017D02:
	movs r0, #0x73
	bl PlaySE
	ldr r0, [r5, #0x1c]
	adds r0, r4, r0
	movs r1, #1
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x24
	adds r4, r0, r4
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017D2A
	rsbs r0, r0, #0
_08017D2A:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r2, [r4]
	adds r0, r0, r2
	b _08017D6C
_08017D38:
	movs r0, #0x73
	bl PlaySE
	ldr r0, [r5, #0x1c]
	adds r0, r4, r0
	movs r1, #2
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x24
	adds r4, r0, r4
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017D60
	rsbs r0, r0, #0
_08017D60:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r3, [r4]
	adds r0, r0, r3
_08017D6C:
	strh r0, [r4]
	movs r1, #3
_08017D70:
	adds r1, #1
	cmp r1, #2
	bls _08017CE6
	b _08017D82
_08017D78:
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, [r6, #0x2c]
	str r1, [r0]
_08017D82:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
