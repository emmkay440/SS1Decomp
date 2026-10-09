	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start DropItem
DropItem: @ 0x0800F470
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	str r0, [sp, #4]
	bl sub_08001F64
	mov r8, r0
	cmp r0, #0
	beq _0800F4FA
	ldr r5, _0800F4D8 @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r6, [r0]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r2, [r0, #0x16]
	mov r0, r8
	adds r1, r6, #0
	add r3, sp, #4
	bl sub_0800FA74
	adds r7, r0, #0
	cmp r7, #0
	beq _0800F4F6
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0800F4DC
	ldr r0, [r7, #0x10]
	ldr r1, [r7]
	asrs r1, r1, #0xc
	ldr r2, [r7, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	b _0800F524
	.align 2, 0
_0800F4D8: .4byte gPlayers
_0800F4DC:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r1, [r7]
	asrs r1, r1, #0xc
	ldr r2, [r7, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	add r3, sp, #4
	bl SpawnFieldItem
	b _0800F52A
_0800F4F6:
	movs r0, #0
	b _0800F52C
_0800F4FA:
	bl GetMultiplayerId
	ldr r4, _0800F538 @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r5, [r0]
	asrs r5, r5, #0xc
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r4, #0x5c
	adds r0, r0, r4
	ldr r2, [r0]
	asrs r2, r2, #0xc
	ldr r0, [r7, #0x10]
	mov r1, r8
	str r1, [sp]
	adds r1, r5, #0
_0800F524:
	add r3, sp, #4
	bl SpawnFieldItem
_0800F52A:
	movs r0, #1
_0800F52C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800F538: .4byte gPlayers

	thumb_func_start sub_0800F53C
sub_0800F53C: @ 0x0800F53C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	bl GetPlayerClass
	lsls r4, r0, #3
	movs r0, #0
	str r0, [sp, #0xc]
	bl sub_080076A8
	cmp r0, #0
	bne _0800F580
	movs r6, #2
	ldr r0, _0800F57C @ =gUnknown_03003D08
	movs r2, #1
	ldr r1, [r0]
_0800F562:
	adds r0, r2, #0
	lsls r0, r6
	ands r0, r1
	cmp r0, #0
	beq _0800F572
	ldr r0, [sp, #0xc]
	adds r0, #1
	str r0, [sp, #0xc]
_0800F572:
	adds r6, #1
	cmp r6, #8
	bls _0800F562
	b _0800F584
	.align 2, 0
_0800F57C: .4byte gUnknown_03003D08
_0800F580:
	movs r1, #7
	str r1, [sp, #0xc]
_0800F584:
	ldr r2, [sp, #0xc]
	adds r4, r4, r2
	movs r0, #0xe0
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	mov r8, r0
	movs r4, #0
_0800F598:
	cmp r4, #1
	beq _0800F5CC
	cmp r4, #1
	blo _0800F5A6
	cmp r4, #2
	beq _0800F5F4
	b _0800F618
_0800F5A6:
	mov r1, r8
	ldr r0, [r1, #4]
	add r0, r8
	mov sb, r0
	ldrb r2, [r1]
	str r2, [sp, #0xc]
	bl sub_080074F0
	cmp r0, #0
	beq _0800F5C4
	ldr r0, _0800F5C0 @ =gUnknown_030063AC
	ldr r0, [r0]
	b _0800F616
	.align 2, 0
_0800F5C0: .4byte gUnknown_030063AC
_0800F5C4:
	ldr r0, _0800F5C8 @ =0x03003EEC
	b _0800F616
	.align 2, 0
_0800F5C8: .4byte 0x03003EEC
_0800F5CC:
	mov r1, r8
	ldr r0, [r1, #8]
	add r0, r8
	mov sb, r0
	ldrb r2, [r1, #1]
	str r2, [sp, #0xc]
	bl sub_080074F0
	cmp r0, #0
	beq _0800F5EC
	ldr r0, _0800F5E8 @ =gUnknown_030063B8
	ldr r0, [r0]
	b _0800F616
	.align 2, 0
_0800F5E8: .4byte gUnknown_030063B8
_0800F5EC:
	ldr r0, _0800F5F0 @ =0x03003F1C
	b _0800F616
	.align 2, 0
_0800F5F0: .4byte 0x03003F1C
_0800F5F4:
	mov r1, r8
	ldr r0, [r1, #0xc]
	add r0, r8
	mov sb, r0
	ldrb r2, [r1, #2]
	str r2, [sp, #0xc]
	bl sub_080074F0
	cmp r0, #0
	beq _0800F614
	ldr r0, _0800F610 @ =gUnknown_030063A8
	ldr r0, [r0]
	b _0800F616
	.align 2, 0
_0800F610: .4byte gUnknown_030063A8
_0800F614:
	ldr r0, _0800F620 @ =0x03003F4C
_0800F616:
	mov sl, r0
_0800F618:
	cmp r4, #2
	bne _0800F624
	movs r5, #0
	b _0800F64A
	.align 2, 0
_0800F620: .4byte 0x03003F4C
_0800F624:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0800F632
	rsbs r1, r1, #0
_0800F632:
	movs r0, #0xff
	ands r0, r1
	movs r5, #3
	cmp r0, #7
	bls _0800F64A
	movs r5, #2
	cmp r0, #0x18
	bhi _0800F64A
	movs r5, #0
	cmp r0, #0x38
	bls _0800F64A
	movs r5, #1
_0800F64A:
	movs r6, #0
	adds r4, #1
	str r4, [sp, #0x10]
	movs r4, #0
	ldr r7, _0800F724 @ =0xFFFF8000
	ldr r3, _0800F728 @ =0x00007FFF
	mov r2, sl
_0800F658:
	mov r1, sp
	adds r0, r1, r6
	strb r4, [r0]
	ldrh r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r2]
	ands r0, r3
	stm r2!, {r0}
	adds r6, #1
	cmp r6, #0xb
	bls _0800F658
	movs r6, #0
	cmp r6, r5
	bhs _0800F6A2
_0800F678:
	adds r4, r6, #1
_0800F67A:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F688
	rsbs r0, r0, #0
_0800F688:
	movs r1, #0xc
	bl __modsi3
	mov r2, sp
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #1
	beq _0800F67A
	movs r0, #1
	strb r0, [r1]
	adds r6, r4, #0
	cmp r6, r5
	blo _0800F678
_0800F6A2:
	movs r6, #0
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bhs _0800F76E
	movs r3, #0x71
	rsbs r3, r3, #0
	mov r5, sl
	adds r4, r5, #0
	adds r4, #0x24
	adds r7, r5, #0
_0800F6B6:
	ldrh r0, [r5]
	ldr r2, _0800F724 @ =0xFFFF8000
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
	ldr r0, [r5]
	ldr r1, _0800F728 @ =0x00007FFF
	ands r0, r1
	str r0, [r5]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r5]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	mov r1, sb
	ldrb r2, [r1, #1]
	movs r0, #0x7f
	ands r2, r0
	lsls r2, r2, #7
	mov ip, r2
	ldrh r0, [r5]
	ldr r2, _0800F72C @ =0xFFFFC07F
	adds r1, r2, #0
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strh r0, [r5]
	mov r2, sp
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F760
	ldr r0, [r5]
	str r0, [r4]
	adds r0, r4, #0
	movs r1, #3
	str r3, [sp, #0x14]
	bl sub_080124E8
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	ldr r3, [sp, #0x14]
	cmp r0, #3
	beq _0800F736
	cmp r0, #3
	bgt _0800F730
	cmp r0, #2
	beq _0800F740
	b _0800F75C
	.align 2, 0
_0800F724: .4byte 0xFFFF8000
_0800F728: .4byte 0x00007FFF
_0800F72C: .4byte 0xFFFFC07F
_0800F730:
	cmp r0, #4
	beq _0800F740
	b _0800F75C
_0800F736:
	ldrb r0, [r4, #3]
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	b _0800F748
_0800F740:
	ldrb r0, [r4, #3]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
_0800F748:
	strb r0, [r4, #3]
	ldr r0, [r7, #0x24]
	ldr r1, _0800F788 @ =0x03FF8000
	ands r0, r1
	cmp r0, #0
	bne _0800F75C
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r4]
_0800F75C:
	adds r4, #4
	adds r7, #4
_0800F760:
	adds r5, #4
	adds r6, #1
	movs r2, #2
	add sb, r2
	ldr r0, [sp, #0xc]
	cmp r6, r0
	blo _0800F6B6
_0800F76E:
	ldr r4, [sp, #0x10]
	cmp r4, #2
	bhi _0800F776
	b _0800F598
_0800F776:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F788: .4byte 0x03FF8000

	thumb_func_start sub_0800F78C
sub_0800F78C: @ 0x0800F78C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _0800F830
	cmp r0, #3
	bgt _0800F7A6
	cmp r0, #2
	beq _0800F7B2
	b _0800F93A
_0800F7A6:
	cmp r0, #4
	beq _0800F89A
	cmp r0, #5
	bne _0800F7B0
	b _0800F904
_0800F7B0:
	b _0800F93A
_0800F7B2:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r7, r0, #0
	movs r2, #0
	ldr r0, _0800F828 @ =0x00000153
	adds r3, r7, r0
	movs r5, #1
_0800F7CA:
	adds r1, r3, r2
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	orrs r4, r0
	adds r2, #1
	cmp r2, #2
	bls _0800F7CA
	ldr r0, [r6]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _0800F80A
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	movs r2, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r0, r1
	movs r5, #1
_0800F7FA:
	adds r1, r3, r2
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	orrs r4, r0
	adds r2, #1
	cmp r2, #2
	bls _0800F7FA
_0800F80A:
	ldr r1, _0800F82C @ =0x00000159
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _0800F816
	b _0800F934
_0800F816:
	ldr r0, [r6]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800F822
	b _0800F93A
_0800F822:
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800F938
	.align 2, 0
_0800F828: .4byte 0x00000153
_0800F82C: .4byte 0x00000159
_0800F830:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	movs r2, #0
	adds r3, r0, #0
	adds r3, #0xf2
	movs r5, #1
_0800F846:
	adds r1, r3, r2
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	orrs r4, r0
	adds r2, #1
	cmp r2, #2
	bls _0800F846
	ldr r0, [r6]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _0800F886
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	movs r2, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r0, r1
	movs r5, #1
_0800F876:
	adds r1, r3, r2
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	orrs r4, r0
	adds r2, #1
	cmp r2, #2
	bls _0800F876
_0800F886:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800F894
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r4, r0
_0800F894:
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800F938
_0800F89A:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	movs r2, #0
	adds r3, r0, #0
	adds r3, #0xf2
	movs r5, #1
_0800F8B0:
	adds r1, r3, r2
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	orrs r4, r0
	adds r2, #1
	cmp r2, #2
	bls _0800F8B0
	ldr r0, [r6]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _0800F8F0
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	movs r2, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r0, r1
	movs r5, #1
_0800F8E0:
	adds r1, r3, r2
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	orrs r4, r0
	adds r2, #1
	cmp r2, #2
	bls _0800F8E0
_0800F8F0:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800F8FE
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r4, r0
_0800F8FE:
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800F938
_0800F904:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	movs r2, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r0, r1
	movs r5, #1
_0800F91C:
	adds r1, r3, r2
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	orrs r4, r0
	adds r2, #1
	cmp r2, #2
	bls _0800F91C
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800F93A
_0800F934:
	movs r0, #0x80
	lsls r0, r0, #2
_0800F938:
	orrs r4, r0
_0800F93A:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start AddItemToInventory
AddItemToInventory: @ 0x0800F944
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0800F9EA
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, r0
	ldr r1, _0800F964 @ =0x03003D98
	mov r8, r1
	b _0800F99E
	.align 2, 0
_0800F964: .4byte 0x03003D98
_0800F968:
	mov ip, r0
	cmp r0, #0x18
	bgt _0800F9EA
	lsls r0, r0, #2
	mov r1, r8
	adds r5, r0, r1
	ldr r4, [r5]
	lsrs r1, r4, #0xf
	ldr r0, [r7]
	lsrs r0, r0, #0xf
	adds r3, r1, r0
	ldr r0, _0800FA10 @ =0x000186A0
	cmp r3, r0
	bls _0800FA3E
	ldr r2, _0800FA14 @ =0x00007FFF
	adds r0, r2, #0
	ands r0, r4
	ldr r1, _0800FA18 @ =0xC3500000
	orrs r0, r1
	str r0, [r5]
	ldr r0, _0800FA1C @ =0xFFFE7960
	adds r1, r3, r0
	lsls r1, r1, #0xf
	ldr r0, [r7]
	ands r0, r2
	orrs r0, r1
	str r0, [r7]
_0800F99E:
	mov r3, ip
	cmp r3, #0
	bge _0800F9A6
	movs r3, #0
_0800F9A6:
	lsls r0, r3, #2
	mov r1, r8
	adds r4, r0, r1
	movs r5, #1
	rsbs r5, r5, #0
	adds r2, r3, #0
	cmp r3, #0x18
	bgt _0800F9D8
	ldr r6, _0800FA10 @ =0x000186A0
_0800F9B8:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0800F9D0
	lsrs r0, r1, #0xf
	cmp r5, r0
	bge _0800F9D0
	cmp r0, r6
	beq _0800F9D0
	adds r3, r2, #0
	adds r5, r0, #0
_0800F9D0:
	adds r2, #1
	adds r4, #4
	cmp r2, #0x18
	ble _0800F9B8
_0800F9D8:
	adds r0, r3, #0
	cmp r5, #0
	bge _0800F9E2
	movs r0, #1
	rsbs r0, r0, #0
_0800F9E2:
	cmp ip, r0
	beq _0800F9EA
	cmp r0, #0
	bge _0800F968
_0800F9EA:
	movs r1, #0
	ldr r3, _0800FA20 @ =gPlayerStats
	adds r2, r3, #0
	adds r2, #0x88
_0800F9F2:
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0800FA24
	adds r2, #4
	adds r1, #1
	cmp r1, #0x18
	bls _0800F9F2
	movs r0, #1
	rsbs r0, r0, #0
_0800FA08:
	cmp r0, #0
	bge _0800FA28
	movs r0, #0
	b _0800FA68
	.align 2, 0
_0800FA10: .4byte 0x000186A0
_0800FA14: .4byte 0x00007FFF
_0800FA18: .4byte 0xC3500000
_0800FA1C: .4byte 0xFFFE7960
_0800FA20: .4byte gPlayerStats
_0800FA24:
	adds r0, r1, #0
	b _0800FA08
_0800FA28:
	lsls r1, r0, #2
	adds r2, r1, r3
	adds r0, r2, #0
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0800FA50
	movs r0, #0
	b _0800FA68
_0800FA3E:
	lsls r1, r3, #0xf
	ldr r0, _0800FA4C @ =0x00007FFF
	ands r0, r4
	orrs r0, r1
	str r0, [r5]
	movs r0, #1
	b _0800FA68
	.align 2, 0
_0800FA4C: .4byte 0x00007FFF
_0800FA50:
	adds r0, r3, #0
	adds r0, #0x88
	adds r0, r1, r0
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #0x89
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
_0800FA68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FA74
sub_0800FA74: @ 0x0800FA74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, _0800FAA0 @ =0x000001B9
	bl sub_08001430
	str r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _0800FAB8
	b _0800FC50
	.align 2, 0
_0800FAA0: .4byte 0x000001B9
_0800FAA4:
	mov r2, sl
	str r2, [r4]
	str r6, [r4, #4]
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x14]
	bl Free
	adds r0, r4, #0
	b _0800FC58
_0800FAB8:
	ldr r0, _0800FB94 @ =gFieldItems
	ldr r4, [r0]
	movs r1, #0
	movs r6, #0
	str r6, [sp, #0x10]
	adds r3, r0, #0
	movs r2, #1
_0800FAC6:
	ldr r0, [r4, #0xc]
	ands r0, r2
	cmp r0, #0
	beq _0800FAD0
	adds r1, #1
_0800FAD0:
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
	adds r4, #0x1c
	cmp r0, #0xe
	bls _0800FAC6
	cmp r1, #0xe
	bls _0800FAFC
	ldr r4, [r3]
	ldr r2, _0800FB98 @ =gUnknown_030063BC
	ldr r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r3, #0
	str r3, [r0, #0xc]
	adds r1, #1
	str r1, [r2]
	cmp r1, #0xe
	bls _0800FAFC
	str r3, [r2]
_0800FAFC:
	movs r7, #0
_0800FAFE:
	adds r0, r7, #0
	subs r0, #0xa
	lsls r0, r0, #0xe
	ldr r1, [sp]
	adds r1, r1, r0
	mov sl, r1
	movs r5, #0
	adds r2, r7, #1
	mov sb, r2
_0800FB10:
	adds r0, r5, #0
	subs r0, #0xa
	lsls r0, r0, #0xe
	ldr r1, [sp, #4]
	adds r6, r1, r0
	movs r2, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0800FB24
	movs r2, #1
_0800FB24:
	mov r0, sl
	adds r1, r6, #0
	bl GetMapTileAttributes
	movs r1, #7
	ands r1, r0
	lsls r4, r5, #2
	adds r2, r5, #1
	mov r8, r2
	cmp r1, #0
	bne _0800FBA0
	ldr r0, _0800FB94 @ =gFieldItems
	ldr r2, [r0]
	movs r3, #0
_0800FB40:
	ldr r1, [r2, #0xc]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0800FB74
	ldr r0, [r2]
	mov r1, sl
	subs r0, r1, r0
	asrs r1, r0, #0xc
	cmp r1, #0
	bge _0800FB58
	rsbs r1, r1, #0
_0800FB58:
	ldr r0, [r2, #4]
	subs r0, r6, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _0800FB64
	rsbs r0, r0, #0
_0800FB64:
	cmp r1, #7
	bgt _0800FB74
	cmp r0, #7
	bgt _0800FB74
	ldr r0, [r2, #8]
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _0800FB9C
_0800FB74:
	adds r3, #1
	adds r2, #0x1c
	cmp r3, #0xe
	bls _0800FB40
	movs r0, #0
_0800FB7E:
	cmp r0, #0
	bne _0800FBA0
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r7
	ldr r2, [sp, #0x14]
	adds r0, r2, r0
	movs r1, #1
	b _0800FBAE
	.align 2, 0
_0800FB94: .4byte gFieldItems
_0800FB98: .4byte gUnknown_030063BC
_0800FB9C:
	adds r0, r2, #0
	b _0800FB7E
_0800FBA0:
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r7
	ldr r6, [sp, #0x14]
	adds r0, r6, r0
	movs r1, #0
_0800FBAE:
	strb r1, [r0]
	mov r5, r8
	cmp r5, #0x14
	ble _0800FB10
	mov r7, sb
	cmp r7, #0x14
	ble _0800FAFE
	ldr r0, _0800FC68 @ =gFieldItems
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp, #0x10]
_0800FBC4:
	ldr r0, [r4, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800FC44
	ldr r2, [sp]
	str r2, [r4]
	ldr r6, [sp, #4]
	str r6, [r4, #4]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	str r0, [r4, #0x18]
	ldr r1, _0800FC6C @ =gUnknown_030063B4
	ldr r0, [r1]
	str r0, [r4, #0x10]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _0800FBEE
	movs r2, #1
	str r2, [r1]
_0800FBEE:
	movs r0, #5
	str r0, [r4, #0x14]
	ldr r6, [sp, #8]
	str r6, [r4, #8]
	movs r3, #0
	mov sb, r3
_0800FBFA:
	rsbs r7, r3, #0
	mov r8, r7
	cmp r7, r3
	bge _0800FC38
	mov ip, sb
_0800FC04:
	lsls r1, r7, #0xe
	ldr r0, [r4]
	adds r0, r0, r1
	mov sl, r0
	mov r5, r8
	cmp r5, r3
	bge _0800FC32
	ldr r2, [r4, #4]
	ldr r0, [sp, #0x14]
	adds r0, #0xdc
	adds r0, r7, r0
	mov r6, ip
	adds r1, r6, r0
_0800FC1E:
	lsls r0, r5, #0xe
	adds r6, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800FC2A
	b _0800FAA4
_0800FC2A:
	adds r1, #0x15
	adds r5, #1
	cmp r5, r3
	blt _0800FC1E
_0800FC32:
	adds r7, #1
	cmp r7, r3
	blt _0800FC04
_0800FC38:
	movs r0, #0x15
	rsbs r0, r0, #0
	add sb, r0
	adds r3, #1
	cmp r3, #9
	ble _0800FBFA
_0800FC44:
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r4, #0x1c
	cmp r1, #0xe
	bls _0800FBC4
_0800FC50:
	ldr r0, [sp, #0x14]
	bl Free
	movs r0, #0
_0800FC58:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800FC68: .4byte gFieldItems
_0800FC6C: .4byte gUnknown_030063B4

	thumb_func_start sub_0800FC70
sub_0800FC70: @ 0x0800FC70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, _0800FC9C @ =0x000001B9
	bl sub_08001430
	str r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _0800FCB4
	b _0800FE3E
	.align 2, 0
_0800FC9C: .4byte 0x000001B9
_0800FCA0:
	mov r2, sl
	str r2, [r4]
	str r6, [r4, #4]
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x14]
	bl Free
	adds r0, r4, #0
	b _0800FE46
_0800FCB4:
	ldr r0, _0800FD90 @ =gFieldItems
	ldr r4, [r0]
	movs r1, #0
	movs r6, #0
	str r6, [sp, #0x10]
	adds r3, r0, #0
	movs r2, #1
_0800FCC2:
	ldr r0, [r4, #0xc]
	ands r0, r2
	cmp r0, #0
	beq _0800FCCC
	adds r1, #1
_0800FCCC:
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
	adds r4, #0x1c
	cmp r0, #0xe
	bls _0800FCC2
	cmp r1, #0xe
	bls _0800FCF8
	ldr r4, [r3]
	ldr r2, _0800FD94 @ =gUnknown_030063BC
	ldr r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r3, #0
	str r3, [r0, #0xc]
	adds r1, #1
	str r1, [r2]
	cmp r1, #0xe
	bls _0800FCF8
	str r3, [r2]
_0800FCF8:
	movs r7, #0
_0800FCFA:
	adds r0, r7, #0
	subs r0, #0xa
	lsls r0, r0, #0xe
	ldr r1, [sp]
	adds r1, r1, r0
	mov sl, r1
	movs r5, #0
	adds r2, r7, #1
	mov sb, r2
_0800FD0C:
	adds r0, r5, #0
	subs r0, #0xa
	lsls r0, r0, #0xe
	ldr r1, [sp, #4]
	adds r6, r1, r0
	movs r2, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0800FD20
	movs r2, #1
_0800FD20:
	mov r0, sl
	adds r1, r6, #0
	bl GetMapTileAttributes
	movs r1, #7
	ands r1, r0
	lsls r4, r5, #2
	adds r2, r5, #1
	mov r8, r2
	cmp r1, #0
	bne _0800FD9C
	ldr r0, _0800FD90 @ =gFieldItems
	ldr r2, [r0]
	movs r3, #0
_0800FD3C:
	ldr r1, [r2, #0xc]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0800FD70
	ldr r0, [r2]
	mov r1, sl
	subs r0, r1, r0
	asrs r1, r0, #0xc
	cmp r1, #0
	bge _0800FD54
	rsbs r1, r1, #0
_0800FD54:
	ldr r0, [r2, #4]
	subs r0, r6, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _0800FD60
	rsbs r0, r0, #0
_0800FD60:
	cmp r1, #7
	bgt _0800FD70
	cmp r0, #7
	bgt _0800FD70
	ldr r0, [r2, #8]
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _0800FD98
_0800FD70:
	adds r3, #1
	adds r2, #0x1c
	cmp r3, #0xe
	bls _0800FD3C
	movs r0, #0
_0800FD7A:
	cmp r0, #0
	bne _0800FD9C
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r7
	ldr r2, [sp, #0x14]
	adds r0, r2, r0
	movs r1, #1
	b _0800FDAA
	.align 2, 0
_0800FD90: .4byte gFieldItems
_0800FD94: .4byte gUnknown_030063BC
_0800FD98:
	adds r0, r2, #0
	b _0800FD7A
_0800FD9C:
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r7
	ldr r6, [sp, #0x14]
	adds r0, r6, r0
	movs r1, #0
_0800FDAA:
	strb r1, [r0]
	mov r5, r8
	cmp r5, #0x14
	ble _0800FD0C
	mov r7, sb
	cmp r7, #0x14
	ble _0800FCFA
	ldr r0, _0800FE58 @ =gFieldItems
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp, #0x10]
_0800FDC0:
	ldr r0, [r4, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800FE32
	ldr r1, [sp]
	str r1, [r4]
	ldr r2, [sp, #4]
	str r2, [r4, #4]
	ldr r6, [sp, #0xc]
	ldr r0, [r6]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x38]
	str r0, [r4, #0x10]
	movs r0, #5
	str r0, [r4, #0x14]
	ldr r1, [sp, #8]
	str r1, [r4, #8]
	movs r3, #0
	mov sb, r3
_0800FDE8:
	rsbs r7, r3, #0
	mov r8, r7
	cmp r7, r3
	bge _0800FE26
	mov ip, sb
_0800FDF2:
	lsls r1, r7, #0xe
	ldr r0, [r4]
	adds r0, r0, r1
	mov sl, r0
	mov r5, r8
	cmp r5, r3
	bge _0800FE20
	ldr r2, [r4, #4]
	ldr r0, [sp, #0x14]
	adds r0, #0xdc
	adds r0, r7, r0
	mov r6, ip
	adds r1, r6, r0
_0800FE0C:
	lsls r0, r5, #0xe
	adds r6, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800FE18
	b _0800FCA0
_0800FE18:
	adds r1, #0x15
	adds r5, #1
	cmp r5, r3
	blt _0800FE0C
_0800FE20:
	adds r7, #1
	cmp r7, r3
	blt _0800FDF2
_0800FE26:
	movs r0, #0x15
	rsbs r0, r0, #0
	add sb, r0
	adds r3, #1
	cmp r3, #9
	ble _0800FDE8
_0800FE32:
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r4, #0x1c
	cmp r1, #0xe
	bls _0800FDC0
_0800FE3E:
	ldr r0, [sp, #0x14]
	bl Free
	movs r0, #0
_0800FE46:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800FE58: .4byte gFieldItems

	thumb_func_start sub_0800FE5C
sub_0800FE5C: @ 0x0800FE5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r6, r0, #0
	mov sb, r1
	ldr r1, _0800FEA0 @ =0x0805485C
	mov r0, sp
	movs r2, #0x40
	bl memcpy
	add r2, sp, #0x40
	adds r1, r2, #0
	ldr r0, _0800FEA4 @ =0x0805489C
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	subs r0, #1
	mov r8, r2
	cmp r0, #6
	bls _0800FE94
	b _0800FF9E
_0800FE94:
	lsls r0, r0, #2
	ldr r1, _0800FEA8 @ =_0800FEAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FEA0: .4byte 0x0805485C
_0800FEA4: .4byte 0x0805489C
_0800FEA8: .4byte _0800FEAC
_0800FEAC: @ jump table
	.4byte _0800FF28 @ case 0
	.4byte _0800FEC8 @ case 1
	.4byte _0800FEEE @ case 2
	.4byte _0800FF04 @ case 3
	.4byte _0800FF4E @ case 4
	.4byte _0800FF74 @ case 5
	.4byte _0800FF9A @ case 6
_0800FEC8:
	movs r2, #0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _0800FEE4
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0800FEE4:
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r5, [r0]
	b _0800FF9E
_0800FEEE:
	movs r2, #0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _0800FF20
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	b _0800FF18
_0800FF04:
	movs r2, #0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _0800FF20
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
_0800FF18:
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0800FF20:
	adds r0, r2, #0
	adds r0, #0xfc
	ldr r5, [r0]
	b _0800FF9E
_0800FF28:
	movs r2, #0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _0800FF44
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0800FF44:
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	b _08010054
_0800FF4E:
	movs r2, #0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _0800FF6A
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0800FF6A:
	movs r4, #0xae
	lsls r4, r4, #1
	adds r0, r2, r4
	ldr r0, [r0]
	b _08010054
_0800FF74:
	movs r2, #0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bne _0800FF90
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0800FF90:
	movs r7, #0xce
	lsls r7, r7, #1
	adds r0, r2, r7
	ldr r0, [r0]
	b _08010054
_0800FF9A:
	movs r0, #0
	b _08010054
_0800FF9E:
	mov r0, sb
	cmp r0, #0
	beq _0800FFA8
	adds r0, r5, #0
	b _08010054
_0800FFA8:
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	adds r4, r1, #0
	cmp r0, #3
	beq _0800FFC8
	cmp r0, #3
	bgt _0800FFBE
	cmp r0, #2
	beq _0800FFC8
	b _0800FFCE
_0800FFBE:
	cmp r0, #4
	beq _0800FFC8
	cmp r0, #5
	beq _0800FFFE
	b _0800FFCE
_0800FFC8:
	lsls r0, r4, #0xc
	lsrs r0, r0, #0x1b
	mov sl, r0
_0800FFCE:
	mov r1, sl
	cmp r1, #0
	beq _0800FFE4
	mov r0, sl
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _0800FFE6
_0800FFE4:
	movs r0, #0
_0800FFE6:
	ldr r4, [r6]
	cmp r0, #0
	beq _0800FFFE
	movs r3, #0xad
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	muls r0, r5, r0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
_0800FFFE:
	movs r2, #0
	movs r6, #0
	adds r1, r4, #0
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08010024
	cmp r0, #3
	bgt _08010016
	cmp r0, #2
	beq _0801001C
	b _08010034
_08010016:
	cmp r0, #4
	beq _0801002C
	b _08010034
_0801001C:
	lsls r0, r1, #8
	lsrs r2, r0, #0x1c
	lsls r0, r1, #6
	b _08010032
_08010024:
	lsls r0, r1, #8
	lsrs r2, r0, #0x1c
	lsls r0, r1, #6
	b _08010032
_0801002C:
	lsls r0, r4, #8
	lsrs r2, r0, #0x1c
	lsls r0, r4, #6
_08010032:
	lsrs r6, r0, #0x1e
_08010034:
	lsls r0, r2, #2
	add r0, sp
	ldr r0, [r0]
	muls r0, r5, r0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	lsls r0, r6, #2
	add r0, r8
	ldr r0, [r0]
	muls r0, r5, r0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
_08010054:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start CanEquipItem
CanEquipItem: @ 0x08010064
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08010088 @ =gPlayerStats
	cmp r0, #0
	bne _08010072
	b _080101E4
_08010072:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _0801007E
	b _08010180
_0801007E:
	cmp r0, #3
	bgt _0801008C
	cmp r0, #2
	beq _0801009A
	b _080101D2
	.align 2, 0
_08010088: .4byte gPlayerStats
_0801008C:
	cmp r0, #4
	bne _08010092
	b _080101B8
_08010092:
	cmp r0, #5
	bne _08010098
	b _080101C8
_08010098:
	b _080101D2
_0801009A:
	lsls r0, r1, #5
	cmp r0, #0
	bge _080100A2
	b _080101E4
_080100A2:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r6, [r0]
	subs r1, #8
	adds r0, r4, r1
	ldrb r0, [r0]
	mov r8, r0
	bl GetPlayerClass
	cmp r0, #1
	beq _0801012C
	cmp r0, #1
	bgt _080100D4
	cmp r0, #0
	beq _080100DE
	b _08010176
_080100D4:
	cmp r0, #2
	beq _08010134
	cmp r0, #3
	beq _08010152
	b _08010176
_080100DE:
	ldr r1, _080100F4 @ =0x00000159
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #5
	bhi _08010176
	lsls r0, r0, #2
	ldr r1, _080100F8 @ =_080100FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080100F4: .4byte 0x00000159
_080100F8: .4byte _080100FC
_080100FC: @ jump table
	.4byte _08010170 @ case 0
	.4byte _08010170 @ case 1
	.4byte _08010114 @ case 2
	.4byte _08010114 @ case 3
	.4byte _08010120 @ case 4
	.4byte _08010120 @ case 5
_08010114:
	ldr r0, _0801011C @ =gPlayerStats
	adds r0, #0x4c
	b _08010174
	.align 2, 0
_0801011C: .4byte gPlayerStats
_08010120:
	ldr r0, _08010128 @ =gPlayerStats
	adds r0, #0x48
	b _08010174
	.align 2, 0
_08010128: .4byte gPlayerStats
_0801012C:
	movs r0, #0
	mov r8, r0
	movs r5, #0
	b _08010176
_08010134:
	ldr r1, _08010148 @ =0x00000159
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #3
	blt _08010176
	cmp r0, #4
	ble _0801014C
	cmp r0, #9
	beq _08010170
	b _08010176
	.align 2, 0
_08010148: .4byte 0x00000159
_0801014C:
	adds r0, r7, #0
	adds r0, #0x48
	b _08010174
_08010152:
	ldr r1, _0801016C @ =0x00000159
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #5
	blt _08010176
	cmp r0, #6
	ble _08010170
	cmp r0, #7
	bne _08010176
	adds r0, r7, #0
	adds r0, #0x48
	b _08010174
	.align 2, 0
_0801016C: .4byte 0x00000159
_08010170:
	ldr r0, _0801017C @ =gPlayerStats
	adds r0, #0x44
_08010174:
	ldrb r5, [r0]
_08010176:
	cmp r5, r8
	bhs _080101D6
	b _080101E4
	.align 2, 0
_0801017C: .4byte gPlayerStats
_08010180:
	lsls r0, r1, #5
	cmp r0, #0
	blt _080101E4
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
_0801018E:
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xf8
	ldrb r6, [r1]
	adds r0, #0xf1
	ldrb r5, [r0]
	ldr r4, _080101B4 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	cmp r5, r0
	ble _080101D6
	b _080101E4
	.align 2, 0
_080101B4: .4byte gPlayers
_080101B8:
	lsls r0, r1, #5
	cmp r0, #0
	blt _080101E4
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	b _0801018E
_080101C8:
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _080101E4
	movs r6, #0xf
	b _080101D6
_080101D2:
	movs r0, #1
	b _080101E6
_080101D6:
	ldrh r0, [r7, #0x20]
	lsrs r0, r0, #2
	asrs r6, r0
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	bne _080101E6
_080101E4:
	movs r0, #0
_080101E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080101F0
sub_080101F0: @ 0x080101F0
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _0801020C @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x70
	adds r0, r1, r0
	movs r2, #0
	cmp r0, #0
	bne _08010210
	movs r5, #0
	b _0801022C
	.align 2, 0
_0801020C: .4byte gPlayerStats
_08010210:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _0801022A
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0801022A:
	adds r5, r2, #0
_0801022C:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08010278 @ =gPlayers
	adds r4, r1, r0
	ldr r1, _0801027C @ =0x080548AC
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	cmp r5, #0
	beq _080102B8
	ldrh r0, [r4, #0xc]
	cmp r0, #2
	beq _08010250
	cmp r0, #5
	bne _08010290
_08010250:
	bl GetPlayerClass
	cmp r0, #0
	beq _0801025C
	cmp r0, #3
	bne _08010290
_0801025C:
	bl sub_080102C4
	cmp r0, #2
	bne _08010290
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _08010280
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r1, #4
	orrs r0, r1
	b _080102BA
	.align 2, 0
_08010278: .4byte gPlayers
_0801027C: .4byte 0x080548AC
_08010280:
	ldr r2, _08010288 @ =0x080FB4D6
	ldr r1, _0801028C @ =0x00000159
	adds r0, r5, r1
	b _08010296
	.align 2, 0
_08010288: .4byte 0x080FB4D6
_0801028C: .4byte 0x00000159
_08010290:
	ldr r2, _080102B0 @ =0x080FB4D6
	ldr r3, _080102B4 @ =0x00000159
	adds r0, r5, r3
_08010296:
	ldrb r1, [r0]
	lsls r1, r1, #2
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #0x10
	orrs r0, r1
	b _080102BA
	.align 2, 0
_080102B0: .4byte 0x080FB4D6
_080102B4: .4byte 0x00000159
_080102B8:
	movs r0, #0
_080102BA:
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080102C4
sub_080102C4: @ 0x080102C4
	push {r4, r5, lr}
	ldr r4, _08010300 @ =gPlayerStats
	adds r5, r4, #0
	adds r5, #0x6c
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, #0x70
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	cmp r1, #0
	beq _08010364
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08010304
_080102FA:
	movs r0, #0
	b _08010366
	.align 2, 0
_08010300: .4byte gPlayerStats
_08010304:
	ldr r0, _08010324 @ =0x00000159
	adds r5, r1, r0
	ldrb r0, [r5]
	subs r4, r0, #1
	lsrs r4, r4, #1
	bl GetPlayerClass
	adds r1, r0, #0
	cmp r1, #1
	beq _080102FA
	cmp r1, #1
	bgt _08010328
	cmp r1, #0
	beq _08010332
	b _08010366
	.align 2, 0
_08010324: .4byte 0x00000159
_08010328:
	cmp r1, #2
	beq _08010348
	cmp r1, #3
	beq _08010350
	b _08010366
_08010332:
	cmp r4, #1
	bne _0801033A
	movs r4, #2
	b _08010344
_0801033A:
	cmp r4, #2
	bne _08010342
	movs r4, #1
	b _08010344
_08010342:
	movs r4, #0
_08010344:
	adds r0, r4, #1
	b _08010366
_08010348:
	cmp r4, #1
	bne _08010360
_0801034C:
	movs r0, #2
	b _08010366
_08010350:
	ldrb r0, [r5]
	cmp r0, #5
	blt _080102FA
	cmp r0, #6
	ble _08010360
	cmp r0, #7
	beq _0801034C
	b _080102FA
_08010360:
	movs r0, #1
	b _08010366
_08010364:
	movs r0, #0
_08010366:
	pop {r4, r5}
	pop {r1}
	bx r1
