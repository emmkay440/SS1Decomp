	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802F618
sub_0802F618: @ 0x0802F618
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	bl sub_080312E0
	ldr r0, _0802F650 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x90]
	cmp r2, r0
	bhs _0802F666
	adds r3, r0, #0
_0802F642:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _0802F654
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _0802F65E
	.align 2, 0
_0802F650: .4byte 0x030063D8
_0802F654:
	cmp r0, #3
	bne _0802F65E
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x20]
_0802F65E:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _0802F642
_0802F666:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x1c]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	strh r0, [r7, #2]
	ldrh r0, [r4]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _0802F7C0 @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x1c]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r4, r6}
	stm r1!, {r4, r6}
	adds r0, r7, #0
	adds r0, #0x48
	str r0, [sp, #0x78]
	strh r2, [r0]
	adds r1, r7, #0
	adds r1, #0x4a
	str r1, [sp, #0x7c]
	strh r2, [r1]
	movs r3, #0x4c
	adds r3, r3, r7
	mov sb, r3
	strh r2, [r3]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r4, #0x72
	adds r4, r4, r7
	mov r8, r4
	ldrh r4, [r4]
	ldr r6, _0802F7C4 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r0, r8
	strh r4, [r0]
	movs r1, #0x6e
	adds r1, r1, r7
	mov sl, r1
	ldrh r4, [r1]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r2, sl
	strh r4, [r2]
	mov r3, r8
	ldrh r0, [r3]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	ldr r4, [sp, #0x1c]
	ldr r0, [r4, #0x28]
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldrh r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x2c]
	ldrh r0, [r4, #0x28]
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x34]
	movs r6, #0x1e
	str r6, [sp, #0x3c]
	movs r0, #0
	str r0, [sp, #0x40]
	ldr r0, [r4, #0x28]
	ldrh r1, [r4, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x38]
	bl sub_08007544
	ldr r1, [sp, #0x78]
	str r1, [sp, #0x80]
	ldr r2, [sp, #0x7c]
	str r2, [sp, #0x84]
	mov r3, sb
	str r3, [sp, #0x88]
	mov r4, r8
	str r4, [sp, #0x8c]
	cmp r0, #0
	bne _0802F7B6
	ldr r5, _0802F7C8 @ =gPlayers
	movs r4, #0xd4
_0802F782:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _0802F782
	bl GetMultiplayerId
	ldr r5, _0802F7C8 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #4
	strh r1, [r0, #0xa]
_0802F7B6:
	ldr r0, [sp, #0x90]
	movs r1, #0xb
	bl sub_0802934C
	b _0802F7D0
	.align 2, 0
_0802F7C0: .4byte 0x03003910
_0802F7C4: .4byte 0x080FB740
_0802F7C8: .4byte gPlayers
_0802F7CC:
	bl WaitFrame
_0802F7D0:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0802F7CC
	bl sub_08033DF4
	ldr r6, _0802F808 @ =0x0000FFFF
	str r6, [sp, #0x54]
	movs r0, #0x78
	str r0, [sp, #0x6c]
	movs r1, #1
	str r1, [sp, #0x58]
	movs r2, #4
	str r2, [sp, #0x44]

	non_word_aligned_thumb_func_start sub_0802F7EA
sub_0802F7EA: @ 0x0802F7EA
	bl sub_080271D0
	cmp r0, #0
	beq _0802F7F4
	b _0802FE50
_0802F7F4:
	ldr r3, [sp, #0x44]
	cmp r3, #0x18
	bls _0802F7FC
	b _0802FE50
_0802F7FC:
	lsls r0, r3, #2
	ldr r1, _0802F80C @ =_0802F810
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802F808: .4byte 0x0000FFFF
_0802F80C: .4byte _0802F810
_0802F810: @ jump table
	.4byte _0802FE50 @ case 0
	.4byte _0802FE50 @ case 1
	.4byte _0802FE50 @ case 2
	.4byte _0802FE50 @ case 3
	.4byte _0802F874 @ case 4
	.4byte _0802F8A0 @ case 5
	.4byte _0802F8CC @ case 6
	.4byte _0802F90C @ case 7
	.4byte _0802F93A @ case 8
	.4byte _0802F952 @ case 9
	.4byte _0802F98A @ case 10
	.4byte _0802F9A2 @ case 11
	.4byte _0802FA00 @ case 12
	.4byte _0802FA14 @ case 13
	.4byte _0802FBB8 @ case 14
	.4byte _0802FBD4 @ case 15
	.4byte _0802FC48 @ case 16
	.4byte _0802FC66 @ case 17
	.4byte _0802FC78 @ case 18
	.4byte _0802FCB0 @ case 19
	.4byte _0802FD78 @ case 20
	.4byte _0802FD92 @ case 21
	.4byte _0802FDBC @ case 22
	.4byte _0802FDE0 @ case 23
	.4byte _0802FE42 @ case 24
_0802F874:
	bl sub_08007544
	cmp r0, #0
	bne _0802F890
	bl GetMultiplayerId
	ldr r2, _0802F89C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
_0802F890:
	movs r4, #5
	str r4, [sp, #0x44]
	movs r6, #0
	str r6, [sp, #0x5c]
	b _0802FE50
	.align 2, 0
_0802F89C: .4byte gPlayers
_0802F8A0:
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #0x10
	ldr r2, _0802F8C8 @ =0xFFFE0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x5c]
	asrs r0, r0, #0x10
	movs r1, #0xc8
	rsbs r1, r1, #0
	cmp r0, r1
	blt _0802F8B8
	b _0802FE50
_0802F8B8:
	movs r4, #6
	str r4, [sp, #0x44]
	ldr r0, [sp, #0x90]
	movs r1, #0xc
	bl sub_0802934C
	b _0802FE50
	.align 2, 0
_0802F8C8: .4byte 0xFFFE0000
_0802F8CC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0802F8D4
	b _0802FE50
_0802F8D4:
	bl sub_08007510
	cmp r0, #0
	bne _0802F902
	bl sub_08007544
	cmp r0, #0
	bne _0802F902
	bl sub_080075AC
	cmp r0, #0
	bne _0802F902
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0802F908 @ =0x0009006D
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x24]
_0802F902:
	movs r6, #7
	str r6, [sp, #0x44]
	b _0802FE50
	.align 2, 0
_0802F908: .4byte 0x0009006D
_0802F90C:
	bl sub_08007510
	cmp r0, #0
	bne _0802F934
	bl sub_08007544
	cmp r0, #0
	bne _0802F934
	bl sub_080075AC
	cmp r0, #0
	bne _0802F934
	ldr r0, [sp, #0x24]
	bl sub_0802294C
	cmp r0, #0
	bne _0802F930
	b _0802FE50
_0802F930:
	movs r0, #8
	b _0802FE4E
_0802F934:
	movs r1, #8
	str r1, [sp, #0x44]
	b _0802FE50
_0802F93A:
	movs r1, #0
	movs r0, #2
	ldr r2, [sp, #0x80]
	strh r0, [r2]
	ldr r3, [sp, #0x84]
	strh r1, [r3]
	ldr r4, [sp, #0x88]
	strh r1, [r4]
	movs r6, #0
	str r6, [sp, #0x58]
	movs r0, #9
	b _0802FE4E
_0802F952:
	ldr r1, [sp, #0x84]
	ldrh r0, [r1]
	cmp r0, #1
	bne _0802F978
	ldr r2, [sp, #0x88]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0802F978
	bl sub_08007544
	cmp r0, #0
	bne _0802F978
	bl sub_080075AC
	cmp r0, #0
	bne _0802F978
	movs r0, #0x56
	bl PlaySE
_0802F978:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #1
	beq _0802F984
	b _0802FE50
_0802F984:
	movs r3, #0xa
	str r3, [sp, #0x44]
	b _0802FE50
_0802F98A:
	movs r0, #0
	ldr r4, [sp, #0x80]
	strh r0, [r4]
	ldr r6, [sp, #0x84]
	strh r0, [r6]
	ldr r1, [sp, #0x88]
	strh r0, [r1]
	movs r2, #1
	str r2, [sp, #0x58]
	movs r3, #0xb
	str r3, [sp, #0x44]
	b _0802FE50
_0802F9A2:
	ldr r4, [sp, #0x5c]
	lsls r0, r4, #0x10
	movs r6, #0x80
	lsls r6, r6, #0xa
	adds r0, r0, r6
	lsrs r1, r0, #0x10
	str r1, [sp, #0x5c]
	cmp r0, #0
	bge _0802F9B6
	b _0802FE50
_0802F9B6:
	movs r0, #0
	movs r1, #3
	ldr r2, [sp, #0x80]
	strh r1, [r2]
	ldr r3, [sp, #0x84]
	strh r0, [r3]
	ldr r4, [sp, #0x88]
	strh r0, [r4]
	movs r6, #0
	str r6, [sp, #0x5c]
	movs r0, #0xc
	str r0, [sp, #0x44]
	bl sub_08027050
	cmp r0, #0
	beq _0802F9D8
	b _0802FE50
_0802F9D8:
	bl sub_08007544
	cmp r0, #0
	beq _0802F9E2
	b _0802FE50
_0802F9E2:
	bl GetMultiplayerId
	ldr r2, _0802F9F8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0802F9FC @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	b _0802FE50
	.align 2, 0
_0802F9F8: .4byte gPlayers
_0802F9FC: .4byte 0x0000FFFE
_0802FA00:
	ldr r1, [sp, #0x20]
	ldrh r0, [r1]
	lsls r0, r0, #3
	str r0, [sp, #0x60]
	ldrh r0, [r1, #2]
	lsls r0, r0, #3
	str r0, [sp, #0x64]
	movs r2, #0xd
	str r2, [sp, #0x44]
	b _0802FE50
_0802FA14:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	movs r2, #8
	str r2, [sp]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_0800C9EC
	adds r2, r0, #0
	strh r2, [r7, #4]
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0802FA4C
	movs r0, #1
	ldr r3, [sp, #0x80]
	strh r0, [r3]
	ldr r4, [sp, #0x84]
	strh r1, [r4]
	ldr r6, [sp, #0x88]
	strh r1, [r6]
	movs r0, #0
	str r0, [sp, #0x58]
	movs r1, #0x18
	str r1, [sp, #0x44]
	movs r2, #0xe
	str r2, [sp, #0x48]
	b _0802FE50
_0802FA4C:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0802FA5A
	movs r3, #5
	str r3, [sp, #0x4c]
	b _0802FA66
_0802FA5A:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0802FA66
	movs r4, #1
	str r4, [sp, #0x4c]
_0802FA66:
	ldrh r1, [r7, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802FA8C
	ldr r6, [sp, #0x4c]
	cmp r6, #5
	bne _0802FA7C
	movs r0, #4
	str r0, [sp, #0x4c]
	b _0802FAB0
_0802FA7C:
	ldr r1, [sp, #0x4c]
	cmp r1, #1
	bne _0802FA86
	movs r2, #2
	b _0802FAAE
_0802FA86:
	movs r3, #3
	str r3, [sp, #0x4c]
	b _0802FAB0
_0802FA8C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802FAB0
	ldr r4, [sp, #0x4c]
	cmp r4, #5
	bne _0802FAA0
	movs r6, #6
	str r6, [sp, #0x4c]
	b _0802FAB0
_0802FAA0:
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne _0802FAAC
	movs r1, #8
	str r1, [sp, #0x4c]
	b _0802FAB0
_0802FAAC:
	movs r2, #7
_0802FAAE:
	str r2, [sp, #0x4c]
_0802FAB0:
	ldr r3, [sp, #0x84]
	ldrh r0, [r3]
	cmp r0, #2
	beq _0802FABC
	cmp r0, #0
	bne _0802FAE0
_0802FABC:
	ldr r4, [sp, #0x88]
	ldrh r0, [r4]
	cmp r0, #1
	bne _0802FAE0
	movs r6, #4
	str r6, [sp, #0x5c]
	bl sub_08007544
	cmp r0, #0
	bne _0802FAE4
	bl sub_080075AC
	cmp r0, #0
	bne _0802FAE4
	movs r0, #0x81
	bl PlaySE
	b _0802FAE4
_0802FAE0:
	movs r0, #0
	str r0, [sp, #0x5c]
_0802FAE4:
	ldr r0, [sp, #0x4c]
	subs r0, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	ldr r1, _0802FBB0 @ =0x080FB5D0
	mov r8, r1
	movs r2, #8
	ldrsh r0, [r7, r2]
	lsls r3, r0, #3
	adds r2, r3, r1
	ldr r4, _0802FBB4 @ =0x080FB5AC
	mov sb, r4
	ldr r4, [sp, #0x1c]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	add r1, sb
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	movs r1, #4
	add r1, r8
	mov sl, r1
	add r3, sl
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	cmp r0, #0
	bne _0802FB34
	b _0802FE50
_0802FB34:
	subs r0, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	movs r2, #8
	ldrsh r0, [r7, r2]
	lsls r3, r0, #3
	mov r4, r8
	adds r2, r3, r4
	ldr r4, [sp, #0x1c]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	add r1, sb
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	add r3, sl
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	cmp r0, #0
	bne _0802FB76
	b _0802FE50
_0802FB76:
	movs r6, #8
	ldrsh r1, [r7, r6]
	lsls r1, r1, #3
	add r1, r8
	ldr r2, [sp, #0x1c]
	ldrh r0, [r2, #4]
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r3, #8
	ldrsh r1, [r7, r3]
	lsls r1, r1, #3
	add r1, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	b _0802FE50
	.align 2, 0
_0802FBB0: .4byte 0x080FB5D0
_0802FBB4: .4byte 0x080FB5AC
_0802FBB8:
	movs r1, #0
	movs r0, #9
	ldr r4, [sp, #0x80]
	strh r0, [r4]
	ldr r6, [sp, #0x84]
	strh r1, [r6]
	ldr r0, [sp, #0x88]
	strh r1, [r0]
	str r1, [sp, #0x58]
	movs r2, #0
	str r2, [sp, #0x28]
	movs r3, #0xf
	str r3, [sp, #0x44]
	b _0802FE50
_0802FBD4:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802FBF4
	ldr r4, [sp, #0x28]
	adds r4, #1
	str r4, [sp, #0x28]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r0, #0
	ldr r6, [sp, #0x84]
	strh r0, [r6]
	ldr r1, [sp, #0x88]
	strh r0, [r1]
_0802FBF4:
	ldr r2, [sp, #0x84]
	ldrh r0, [r2]
	cmp r0, #3
	bne _0802FC1A
	ldr r3, [sp, #0x88]
	ldrh r0, [r3]
	cmp r0, #0
	bne _0802FC1A
	bl sub_08007544
	cmp r0, #0
	bne _0802FC1A
	bl sub_080075AC
	cmp r0, #0
	bne _0802FC1A
	movs r0, #0x56
	bl PlaySE
_0802FC1A:
	ldr r4, [sp, #0x28]
	cmp r4, #3
	bhi _0802FC22
	b _0802FE50
_0802FC22:
	movs r1, #0
	movs r0, #1
	ldr r6, [sp, #0x80]
	strh r0, [r6]
	ldr r0, [sp, #0x84]
	strh r1, [r0]
	ldr r2, [sp, #0x88]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x58]
	movs r4, #0x18
	str r4, [sp, #0x44]
	movs r6, #0x10
	str r6, [sp, #0x48]
	ldr r0, [sp, #0x90]
	movs r1, #0xd
	bl sub_0802934C
	b _0802FE50
_0802FC48:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0802FC50
	b _0802FE50
_0802FC50:
	movs r0, #6
	ldr r2, [sp, #0x80]
	strh r0, [r2]
	ldr r3, [sp, #0x84]
	strh r1, [r3]
	ldr r4, [sp, #0x88]
	strh r1, [r4]
	movs r6, #0
	str r6, [sp, #0x58]
	movs r0, #0x11
	b _0802FE4E
_0802FC66:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802FC72
	b _0802FE50
_0802FC72:
	movs r1, #0x12
	str r1, [sp, #0x44]
	b _0802FE50
_0802FC78:
	movs r0, #0
	movs r1, #8
	ldr r2, [sp, #0x80]
	strh r1, [r2]
	ldr r3, [sp, #0x84]
	strh r0, [r3]
	ldr r4, [sp, #0x88]
	strh r0, [r4]
	movs r6, #1
	str r6, [sp, #0x58]
	movs r0, #1
	str r0, [sp, #0x28]
	movs r1, #0x13
	str r1, [sp, #0x44]
	bl sub_08007544
	cmp r0, #0
	beq _0802FC9E
	b _0802FE50
_0802FC9E:
	bl sub_080075AC
	cmp r0, #0
	beq _0802FCA8
	b _0802FE50
_0802FCA8:
	movs r0, #0x4b
	bl PlaySE
	b _0802FE50
_0802FCB0:
	bl sub_080076A8
	cmp r0, #0
	beq _0802FCE0
	ldr r2, [sp, #0x28]
	lsls r3, r2, #2
	ldr r4, [sp, #0x20]
	adds r2, r3, r4
	ldrh r0, [r2]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	asrs r0, r0, #3
	adds r1, r1, r0
	str r1, [r7, #0x10]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #3
	adds r1, r1, r0
	str r1, [r7, #0x14]
	adds r6, r3, #0
	b _0802FD0C
_0802FCE0:
	ldr r0, [sp, #0x28]
	lsls r6, r0, #2
	ldr r1, [sp, #0x20]
	adds r5, r6, r1
	ldrh r0, [r5]
	lsls r0, r0, #0xf
	ldr r4, [r7, #0x10]
	subs r0, r0, r4
	movs r1, #0x18
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x10]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0xf
	ldr r4, [r7, #0x14]
	subs r0, r0, r4
	movs r1, #0x18
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x14]
_0802FD0C:
	bl sub_08007544
	cmp r0, #0
	bne _0802FD1C
	bl sub_080075AC
	cmp r0, #0
	beq _0802FD24
_0802FD1C:
	movs r0, #0x4b
	bl StopSE
	b _0802FD2A
_0802FD24:
	movs r0, #0x4b
	bl PlaySEOrContinue
_0802FD2A:
	ldr r2, [sp, #0x20]
	adds r3, r6, r2
	ldrh r0, [r3]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bge _0802FD3C
	rsbs r0, r0, #0
_0802FD3C:
	ldr r2, _0802FD74 @ =0x00000FFF
	cmp r0, r2
	ble _0802FD44
	b _0802FE50
_0802FD44:
	ldrh r0, [r3, #2]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x14]
	subs r0, r0, r1
	cmp r0, #0
	bge _0802FD52
	rsbs r0, r0, #0
_0802FD52:
	cmp r0, r2
	bgt _0802FE50
	ldr r3, [sp, #0x28]
	adds r3, #1
	str r3, [sp, #0x28]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	cmp r3, #7
	bls _0802FE50
	movs r4, #0x14
	str r4, [sp, #0x44]
	movs r0, #0x4b
	bl StopSE
	b _0802FE50
	.align 2, 0
_0802FD74: .4byte 0x00000FFF
_0802FD78:
	movs r1, #0
	movs r0, #7
	ldr r6, [sp, #0x80]
	strh r0, [r6]
	ldr r0, [sp, #0x84]
	strh r1, [r0]
	ldr r2, [sp, #0x88]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x58]
	movs r4, #0x15
	str r4, [sp, #0x44]
	b _0802FE50
_0802FD92:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802FE50
	ldr r6, [sp, #0x8c]
	ldrh r0, [r6]
	ldrh r1, [r7, #0x38]
	lsrs r0, r0, #1
	cmp r1, r0
	bhs _0802FDB2
	movs r0, #0x16
	str r0, [sp, #0x44]
	movs r1, #0
	str r1, [sp, #0x28]
	b _0802FE50
_0802FDB2:
	movs r2, #0xa
	str r2, [sp, #0x44]
	movs r3, #0
	str r3, [sp, #0x28]
	b _0802FE50
_0802FDBC:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r4, #0x17
	str r4, [sp, #0x44]
	movs r1, #0
	movs r0, #0xa
	ldr r6, [sp, #0x80]
	strh r0, [r6]
	ldr r0, [sp, #0x84]
	strh r1, [r0]
	ldr r2, [sp, #0x88]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x58]
	movs r4, #0
	str r4, [sp, #0x6c]
	b _0802FE50
_0802FDE0:
	ldr r6, [sp, #0x84]
	ldrh r0, [r6]
	cmp r0, #6
	bne _0802FE10
	ldr r1, [sp, #0x88]
	ldrh r0, [r1]
	cmp r0, #1
	bne _0802FE10
	movs r0, #0
	adds r1, r7, #0
	bl sub_08031250
	movs r0, #1
	adds r1, r7, #0
	bl sub_08031250
	movs r0, #2
	adds r1, r7, #0
	bl sub_08031250
	movs r0, #3
	adds r1, r7, #0
	bl sub_08031250
_0802FE10:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802FE50
	ldr r1, [sp, #0x6c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	cmp r1, #0x78
	bls _0802FE50
	movs r2, #0
	str r2, [sp, #0x6c]
	ldr r0, [sp, #0x28]
	adds r3, r0, #0
	adds r3, #1
	str r3, [sp, #0x28]
	movs r4, #0x16
	str r4, [sp, #0x44]
	cmp r0, #3
	bls _0802FE50
	movs r6, #0xa
	str r6, [sp, #0x44]
	b _0802FE50
_0802FE42:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802FE50
	ldr r0, [sp, #0x48]
_0802FE4E:
	str r0, [sp, #0x44]
_0802FE50:
	ldr r1, [sp, #0x44]
	cmp r1, #0xf
	beq _0802FE5E
	cmp r1, #0x13
	bne _0802FE5C
	b _0802FF84
_0802FE5C:
	b _080300A2
_0802FE5E:
	bl sub_08007544
	cmp r0, #0
	beq _0802FE68
	b _080300A2
_0802FE68:
	bl sub_08007670
	cmp r0, #0
	beq _0802FE72
	b _080300A2
_0802FE72:
	ldr r6, _0802FF7C @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	bne _0802FE86
	b _080300A2
_0802FE86:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	bne _0802FE96
	b _080300A2
_0802FE96:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _0802FEA6
	b _080300A2
_0802FEA6:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _0802FEAE
	b _080300A2
_0802FEAE:
	bl GetMultiplayerId
	bl GetMultiplayerId
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	lsrs r1, r1, #0xc
	add r4, sp, #0x14
	strh r1, [r4]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r7, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x16
	strh r1, [r0]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0802FEF4
	rsbs r0, r0, #0
_0802FEF4:
	cmp r0, #0x37
	bgt _0802FF08
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802FF02
	rsbs r0, r0, #0
_0802FF02:
	movs r1, #1
	cmp r0, #0x22
	ble _0802FF0A
_0802FF08:
	movs r1, #0
_0802FF0A:
	ldr r3, [sp, #0x84]
	ldrh r0, [r3]
	cmp r0, #6
	beq _0802FF14
	b _080300A2
_0802FF14:
	cmp r1, #0
	bne _0802FF1A
	b _080300A2
_0802FF1A:
	ldr r6, _0802FF7C @ =gPlayers
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r1, r0
	movs r4, #0x80
	adds r4, r4, r6
	mov r8, r4
	add r1, r8
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	bne _0802FF3C
	b _080300A2
_0802FF3C:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _0802FF80 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r0, r7, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r6, [r1]
	adds r0, r0, r6
	b _0803008E
	.align 2, 0
_0802FF7C: .4byte gPlayers
_0802FF80: .4byte 0x0000FFFE
_0802FF84:
	bl sub_08007544
	cmp r0, #0
	beq _0802FF8E
	b _080300A2
_0802FF8E:
	bl sub_08007670
	cmp r0, #0
	beq _0802FF98
	b _080300A2
_0802FF98:
	ldr r6, _080300E0 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _080300A2
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	beq _080300A2
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080300A2
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _080300A2
	bl GetMultiplayerId
	ldr r2, [r7, #0x10]
	asrs r2, r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	add r4, sp, #0x14
	strh r2, [r4]
	bl GetMultiplayerId
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	muls r0, r5, r0
	adds r2, r6, #0
	adds r2, #0x5c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x16
	strh r1, [r0]
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x15
	bhi _080300A2
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	movs r0, #0x80
	adds r0, r0, r6
	mov r8, r0
	add r1, r8
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _080300A2
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080300A2
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _080300E4 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r0, r7, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
_0803008E:
	strh r0, [r1]
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, r8
	ldr r0, [r7, #0x2c]
	str r0, [r1]
_080300A2:
	bl sub_08007750
	cmp r0, #0
	beq _080300AC
	b _0803037E
_080300AC:
	bl sub_080074CC
	adds r4, r0, #0
	cmp r4, #0
	beq _080300B8
	b _0803037E
_080300B8:
	ldr r0, _080300E8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080300CA
	b _0803037E
_080300CA:
	bl sub_08007578
	cmp r0, #0
	beq _080300D4
	b _0803037E
_080300D4:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	beq _080300EC
	cmp r0, #8
	beq _080300FC
	b _08030124
	.align 2, 0
_080300E0: .4byte gPlayers
_080300E4: .4byte 0x0000FFFE
_080300E8: .4byte 0x030063D8
_080300EC:
	ldr r3, [sp, #0x40]
	cmp r3, #0
	bne _08030124
	movs r4, #1
	str r4, [sp, #0x40]
	movs r6, #8
	str r6, [sp, #0x3c]
	b _08030124
_080300FC:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _08030124
	movs r1, #1
	str r1, [sp, #0x40]
	movs r2, #0x14
	str r2, [sp, #0x3c]
	movs r0, #2
	bl FadeOutBGM
	ldrh r3, [r7, #2]
	str r4, [sp]
	ldr r6, [sp, #0x40]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
_08030124:
	ldr r1, [sp, #0x80]
	ldrh r0, [r1]
	ldr r2, [sp, #0x58]
	str r2, [sp]
	ldr r1, [sp, #0x84]
	ldr r2, [sp, #0x88]
	ldr r3, [sp, #0x30]
	bl sub_08004214
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	ldr r0, [sp, #0x38]
	adds r0, #0x15
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x1a]
	lsls r1, r1, #5
	ldr r4, [sp, #0x34]
	adds r1, r4, r1
	movs r2, #1
	bl LoadPalette
	bl sub_08007544
	cmp r0, #0
	bne _0803017C
	bl sub_08007510
	cmp r0, #0
	bne _0803017C
	bl sub_08007604
	cmp r0, #0
	bne _0803017C
	bl sub_080075AC
	cmp r0, #0
	bne _0803017C
	ldr r6, [sp, #0x5c]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
_0803017C:
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x50]
	add r1, sp, #0x10
	ldr r0, [sp, #0x38]
	adds r0, #5
	movs r3, #0
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x14
	mov r5, sp
	adds r5, #0x16
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _08030236
	movs r0, #1
	ldr r1, [sp, #0x3c]
	ands r0, r1
	cmp r0, #0
	beq _0803020E
	bl sub_08007544
	cmp r0, #0
	bne _0803020E
	bl sub_08007510
	cmp r0, #0
	bne _0803020E
	bl sub_08007604
	cmp r0, #0
	bne _0803020E
	bl sub_080075AC
	cmp r0, #0
	bne _0803020E
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r6, [sp, #0x80]
	ldrh r2, [r6]
	ldr r6, [sp, #0x84]
	ldrh r3, [r6]
	ldr r6, [sp, #0x50]
	str r6, [sp]
	add r6, sp, #0x10
	str r6, [sp, #4]
	ldr r6, [sp, #0x30]
	str r6, [sp, #8]
	ldr r6, [sp, #0x2c]
	str r6, [sp, #0xc]
	bl sub_08004344
_0803020E:
	ldr r0, [sp, #0x3c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x3c]
	cmp r0, #0
	bne _0803027A
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _08030224
	b _0803037E
_08030224:
	mov r0, sp
	ldrh r0, [r0, #0x3c]
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	movs r1, #0
	str r1, [sp, #0x40]
	b _0803027A
_08030236:
	bl sub_08007544
	cmp r0, #0
	bne _0803027A
	bl sub_08007510
	cmp r0, #0
	bne _0803027A
	bl sub_08007604
	cmp r0, #0
	bne _0803027A
	bl sub_080075AC
	cmp r0, #0
	bne _0803027A
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r6, [sp, #0x80]
	ldrh r2, [r6]
	ldr r6, [sp, #0x84]
	ldrh r3, [r6]
	ldr r6, [sp, #0x50]
	str r6, [sp]
	add r6, sp, #0x10
	str r6, [sp, #4]
	ldr r6, [sp, #0x30]
	str r6, [sp, #8]
	ldr r6, [sp, #0x2c]
	str r6, [sp, #0xc]
	bl sub_08004344
_0803027A:
	bl sub_08007544
	cmp r0, #0
	bne _080302CC
	bl sub_08007510
	cmp r0, #0
	bne _080302CC
	bl sub_08007604
	cmp r0, #0
	bne _080302CC
	bl sub_080075AC
	cmp r0, #0
	bne _080302CC
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1, #0x1c]
	cmp r0, #0
	beq _080302CC
	ldr r0, [sp, #0x30]
	bl sub_080044DC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r6, [sp, #0x50]
	str r6, [sp]
	add r3, sp, #0x10
	str r3, [sp, #4]
	ldr r4, [sp, #0x30]
	str r4, [sp, #8]
	ldr r6, [sp, #0x2c]
	str r6, [sp, #0xc]
	movs r3, #0
	bl sub_08004344
_080302CC:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _080302DE
	movs r0, #0x14
	str r0, [sp, #0x54]
	ldrh r1, [r7, #0x28]
	str r1, [sp, #0x68]
	movs r2, #0
	str r2, [sp, #0x74]
_080302DE:
	ldr r0, [sp, #0x54]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x54]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08030344
	ldr r3, [sp, #0x68]
	cmp r3, #0
	beq _08030344
	bl sub_08007544
	cmp r0, #0
	bne _08030326
	bl sub_08007510
	cmp r0, #0
	bne _08030326
	bl sub_08007604
	cmp r0, #0
	bne _08030326
	bl sub_080075AC
	cmp r0, #0
	bne _08030326
	ldr r6, [sp, #0x74]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x68]
	bl sub_0800EA74
_08030326:
	movs r0, #2
	ldr r1, [sp, #0x54]
	ands r0, r1
	cmp r0, #0
	beq _08030348
	ldr r2, [sp, #0x74]
	lsls r0, r2, #0x10
	ldr r3, _08030340 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	b _08030348
	.align 2, 0
_08030340: .4byte 0xFFFF0000
_08030344:
	ldr r4, _080303D8 @ =0x0000FFFF
	str r4, [sp, #0x54]
_08030348:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803037E
	bl sub_080074CC
	cmp r0, #0
	bne _0803037E
	ldr r0, _080303DC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803037E
	bl sub_08007578
	cmp r0, #0
	bne _0803037E
	ldr r6, [sp, #0x44]
	cmp r6, #0x19
	beq _0803037E
	bl sub_0802F7EA
_0803037E:
	movs r0, #0x4b
	bl StopSE
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08007750
	cmp r0, #0
	beq _080303A6
	b _080307A0
_080303A6:
	bl sub_080074CC
	cmp r0, #0
	beq _080303B0
	b _080307A0
_080303B0:
	ldr r0, _080303DC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080303C2
	b _080307A0
_080303C2:
	bl sub_08007578
	cmp r0, #0
	beq _080303CC
	b _080307A0
_080303CC:
	bl sub_08001F64
	cmp r0, #0
	beq _080303FC
	movs r4, #0
	b _080303E4
	.align 2, 0
_080303D8: .4byte 0x0000FFFF
_080303DC: .4byte 0x030063D8
_080303E0:
	bl WaitFrame
_080303E4:
	ldrh r3, [r7, #2]
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	cmp r0, #0
	beq _080303E0
_080303FC:
	bl sub_08016FA0
	cmp r0, #0
	beq _08030406
	b _0803063A
_08030406:
	bl sub_080271D0
	cmp r0, #0
	beq _08030410
	b _0803063A
_08030410:
	bl sub_08007544
	cmp r0, #0
	beq _0803041A
	b _0803063A
_0803041A:
	bl sub_08007510
	cmp r0, #0
	beq _08030424
	b _0803063A
_08030424:
	bl sub_080075AC
	cmp r0, #0
	beq _0803042E
	b _0803063A
_0803042E:
	bl sub_080076E0
	cmp r0, #0
	beq _08030438
	b _0803063A
_08030438:
	bl GetMultiplayerId
	ldr r2, _08030468 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803046C @ =0x0009006E
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x24]
	bl sub_08007798
	b _0803063A
	.align 2, 0
_08030468: .4byte gPlayers
_0803046C: .4byte 0x0009006E
_08030470:
	bl sub_080271D0
	cmp r0, #0
	beq _0803047A
	b _08030664
_0803047A:
	bl sub_08007544
	cmp r0, #0
	beq _08030484
	b _08030664
_08030484:
	bl sub_08007510
	cmp r0, #0
	beq _0803048E
	b _08030664
_0803048E:
	bl sub_080075AC
	cmp r0, #0
	beq _08030498
	b _08030664
_08030498:
	bl sub_080076E0
	cmp r0, #0
	beq _080304A2
	b _08030664
_080304A2:
	ldr r0, [sp, #0x70]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x70]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _080304B6
	b _080305EA
_080304B6:
	bl sub_08007544
	cmp r0, #0
	bne _080304C2
	bl sub_080075AC
_080304C2:
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080304D6
	adds r0, #0xf
_080304D6:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _080304F6
	adds r1, #0x1f
_080304F6:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08030520
	adds r0, #0xf
_08030520:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08030540
	adds r1, #0x1f
_08030540:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803056A
	adds r0, #0xf
_0803056A:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803058A
	adds r1, #0x1f
_0803058A:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080305B4
	adds r0, #0xf
_080305B4:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _080305D4
	adds r1, #0x1f
_080305D4:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
_080305EA:
	ldr r0, [sp, #0x3c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x3c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08030626
	add r0, sp, #0x14
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sp
	adds r1, #0x16
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r3, [sp, #0x80]
	ldrh r2, [r3]
	ldr r4, [sp, #0x84]
	ldrh r3, [r4]
	ldr r6, [sp, #0x50]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r6, [sp, #0x30]
	str r6, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	bl sub_08004344
_08030626:
	bl WaitFrame
	ldr r0, [sp, #0x24]
	bl sub_0802294C
	cmp r0, #0
	beq _0803063A
	bl sub_080077AC
	b _08030664
_0803063A:
	bl sub_08007750
	cmp r0, #0
	bne _08030664
	bl sub_080074CC
	cmp r0, #0
	bne _08030664
	ldr r0, _0803085C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08030664
	bl sub_08007578
	cmp r0, #0
	bne _08030664
	b _08030470
_08030664:
	bl sub_08016FA0
	cmp r0, #0
	bne _080306B2
	bl sub_08007544
	cmp r0, #0
	bne _080306B2
	bl sub_08007510
	cmp r0, #0
	bne _080306B2
	bl sub_080075AC
	cmp r0, #0
	bne _080306B2
	bl sub_080076E0
	cmp r0, #0
	bne _080306B2
	bl GetMultiplayerId
	ldr r2, _08030860 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08030864 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	bl sub_080074F0
	cmp r0, #0
	bne _080306B2
	ldr r0, _08030868 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_080306B2:
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _080307A0
	ldr r4, _0803086C @ =0x03003D94
	adds r0, r4, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _080306E6
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080306E6
	ldr r0, _08030870 @ =0x00000157
	adds r1, r1, r0
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080306E6
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_080306E6:
	ldr r4, _08030860 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x1c]
	bl CalcExpGain
	str r0, [sp, #0x58]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x58]
	bl AddExp
	adds r4, r0, #0
	movs r1, #0x13
	str r1, [sp, #0x3c]
	ldr r5, _08030874 @ =0x0000FFFF
_08030716:
	ldr r0, [r7, #0x14]
	ldr r2, _08030878 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r7, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _08030752
	bl sub_08007510
	cmp r0, #0
	bne _08030752
	bl sub_08007604
	cmp r0, #0
	bne _08030752
	bl sub_080075AC
	cmp r0, #0
	bne _08030752
	ldr r0, _08030868 @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08030752
	adds r0, r7, #0
	ldr r1, [sp, #0x58]
	bl sub_08024320
_08030752:
	bl WaitFrame
	ldr r0, [sp, #0x3c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x3c]
	cmp r0, r5
	bne _08030716
	cmp r4, #0
	beq _080307A0
	bl sub_08007544
	cmp r0, #0
	bne _0803077E
	bl sub_080075AC
	cmp r0, #0
	bne _0803077E
	movs r0, #0x25
	bl PlaySE
_0803077E:
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _08030860 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_080307A0:
	bl sub_08033E20
	bl sub_08031304
	ldr r2, _0803087C @ =gActiveEnemyMask
	movs r5, #1
	adds r1, r5, #0
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x38]
	bl sub_0800CB84
	bl sub_08007750
	cmp r0, #0
	bne _08030848
	bl sub_080074CC
	cmp r0, #0
	bne _08030848
	ldr r4, _0803085C @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08030848
	bl sub_08007578
	cmp r0, #0
	bne _08030848
	ldr r0, _08030880 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	strh r5, [r0]
	bl sub_080213CC
	ldr r3, _08030884 @ =0x03003D08
	ldr r1, [r3]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08030844
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08030844
	ldr r2, _08030888 @ =gPlayerStats
	ldr r4, _0803088C @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08030890 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08030844:
	bl sub_0800F53C
_08030848:
	bl ThreadExit
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803085C: .4byte 0x030063D8
_08030860: .4byte gPlayers
_08030864: .4byte 0x0000FFFE
_08030868: .4byte 0x03003910
_0803086C: .4byte 0x03003D94
_08030870: .4byte 0x00000157
_08030874: .4byte 0x0000FFFF
_08030878: .4byte 0xFFFFFE00
_0803087C: .4byte gActiveEnemyMask
_08030880: .4byte 0x00000BB8
_08030884: .4byte 0x03003D08
_08030888: .4byte gPlayerStats
_0803088C: .4byte 0x00000272
_08030890: .4byte 0x00000275

	thumb_func_start sub_08030894
sub_08030894: @ 0x08030894
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb4
	str r0, [sp, #0x70]
	mov sb, r1
	add r4, sp, #0x3c
	adds r1, r4, #0
	ldr r0, _080308F4 @ =0x08054918
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, _080308F8 @ =0x0010002B
	bl GetDataRecord
	str r0, [sp, #0x78]
	ldr r0, _080308FC @ =0x0011002B
	bl GetDataRecord
	str r0, [sp, #0x74]
	ldr r0, _08030900 @ =0x0013002B
	bl GetDataRecord
	adds r5, r0, #0
	bl sub_080076A8
	cmp r0, #0
	beq _08030908
	ldr r0, _08030904 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #1
	bne _08030908
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	b _08030912
	.align 2, 0
_080308F4: .4byte 0x08054918
_080308F8: .4byte 0x0010002B
_080308FC: .4byte 0x0011002B
_08030900: .4byte 0x0013002B
_08030904: .4byte 0x03003910
_08030908:
	movs r0, #0x1d
	adds r1, r5, #0
	movs r2, #1
	bl LoadPalette
_08030912:
	add r1, sp, #0x10
	movs r0, #0xd
	strb r0, [r1]
	ldr r1, [sp, #0x70]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	lsrs r1, r1, #0x10
	str r1, [sp, #0x70]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	lsls r0, r0, #0xc
	mov r3, sb
	ldr r1, [r3, #0x10]
	adds r1, r1, r0
	mov sl, r1
	add r0, sp, #0x40
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #0xc
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x80]
	movs r5, #0
	str r5, [sp, #0x8c]
	movs r3, #0
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0xa0]
	add r6, sp, #0x44
	mov r1, sp
	adds r1, #0x6c
	str r1, [sp, #0xac]
	mov r2, sp
	adds r2, #0x6e
	str r2, [sp, #0xb0]
	adds r5, r0, #0
	adds r4, r0, #0
	adds r4, #4
_08030966:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #3
	adds r1, r5, r2
	mov r3, sl
	str r3, [r1]
	adds r2, r4, r2
	ldr r1, [sp, #0x80]
	str r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08030966
	ldr r2, [sp, #0x70]
	cmp r2, #4
	bls _08030990
	movs r0, #3
	ands r2, r0
	str r2, [sp, #0x70]
_08030990:
	ldr r3, [sp, #0x70]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r6, r0
	ldrh r0, [r0]
	str r0, [sp, #0x84]
	bl sub_080076A8
	cmp r0, #0
	beq _08030A14
	ldr r0, _080309B8 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	movs r5, #0x46
	str r5, [sp, #0x90]
	cmp r0, #1
	bne _08030A26
	movs r0, #0x3c
	b _08030A24
	.align 2, 0
_080309B8: .4byte 0x03003910
_080309BC:
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r5
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r5
	adds r0, #0x70
	ldr r1, _08030A10 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r5
	mov r0, sb
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r5
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r3, #0x2c]
	str r0, [r1]
	b _08030F8E
	.align 2, 0
_08030A10: .4byte 0x0000FFFE
_08030A14:
	ldr r0, _08030D0C @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	movs r5, #0x28
	str r5, [sp, #0x90]
	cmp r0, #1
	bne _08030A26
	movs r0, #0x1e
_08030A24:
	str r0, [sp, #0x90]
_08030A26:
	bl sub_08001EC4
	subs r0, #1
	ldr r1, [sp, #0x84]
	lsls r1, r1, #0x10
	str r1, [sp, #0xa8]
	ldr r2, [sp, #0x90]
	asrs r2, r2, #1
	mov r8, r2
	ldr r3, [sp, #0x70]
	cmp r3, r0
	bls _08030A6A
	bl sub_08001EC4
	subs r0, #1
	str r0, [sp, #0x70]
	ldr r1, _08030D10 @ =gPlayers
	movs r0, #0xd4
	ldr r5, [sp, #0x70]
	muls r0, r5, r0
	adds r0, #0xd0
	adds r1, r0, r1
_08030A52:
	ldr r0, [r1]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _08030A6A
	subs r1, #0xd4
	ldr r0, [sp, #0x70]
	subs r0, #1
	str r0, [sp, #0x70]
	cmp r0, #0
	bne _08030A52
_08030A6A:
	movs r1, #0
	str r1, [sp, #0x88]
_08030A6E:
	ldr r2, [sp, #0x8c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #3
	ldr r3, [sp, #0xa0]
	adds r0, r3, r2
	mov r5, sl
	str r5, [r0]
	adds r0, r3, #0
	adds r0, #4
	adds r0, r0, r2
	ldr r2, [sp, #0x80]
	str r2, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	str r3, [sp, #0x8c]
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _08030A9A
	movs r5, #0
	str r5, [sp, #0x8c]
_08030A9A:
	ldr r0, [sp, #0xa8]
	asrs r1, r0, #0x10
	lsls r0, r1, #1
	ldr r2, _08030D14 @ =0x0805289C
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	add sl, r0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r5, [sp, #0x80]
	adds r5, r5, r0
	str r5, [sp, #0x80]
	ldr r1, [sp, #0x88]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	beq _08030B3E
	bl sub_08007544
	cmp r0, #0
	bne _08030B3E
	bl sub_08007510
	cmp r0, #0
	bne _08030B3E
	bl sub_08007604
	cmp r0, #0
	bne _08030B3E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08030B3E
	mov r5, sl
	lsls r0, r5, #4
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x80]
	lsls r1, r2, #4
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xac]
	ldr r3, [sp, #0xb0]
	bl sub_08005FC4
	ldr r3, [sp, #0xac]
	movs r5, #0
	ldrsh r0, [r3, r5]
	ldr r2, [sp, #0xb0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r4, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r2, [sp, #0x78]
	str r2, [sp, #8]
	ldr r3, [sp, #0x74]
	str r3, [sp, #0xc]
	movs r2, #0xb
	movs r3, #0
	bl sub_08004344
_08030B3E:
	bl GetMultiplayerId
	mov r5, sl
	asrs r2, r5, #0xc
	ldr r6, _08030D10 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r2, r0
	bl GetMultiplayerId
	ldr r1, [sp, #0x80]
	asrs r2, r1, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _08030C46
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r7, r6, #0
	adds r7, #0x80
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08030C46
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _08030C46
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08030C46
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r1, [r0, #0x16]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	bne _08030BD6
	movs r4, #0
_08030BD6:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08030BE6
	movs r4, #0
_08030BE6:
	mov r1, sb
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _08030BF0
	movs r4, #0
_08030BF0:
	cmp r4, #0
	beq _08030C46
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _08030D18 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	mov r0, sb
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r3, #0x2c]
	str r0, [r1]
_08030C46:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08030C7E
	bl sub_080074CC
	cmp r0, #0
	bne _08030C7E
	ldr r0, _08030D1C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08030C7E
	bl sub_08007578
	cmp r0, #0
	bne _08030C7E
	ldr r5, [sp, #0x88]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	bgt _08030C7E
	b _08030A6E
_08030C7E:
	movs r0, #0
	str r0, [sp, #0x88]
	ldr r1, [sp, #0xac]
	str r1, [sp, #0x94]
	ldr r2, [sp, #0xb0]
	str r2, [sp, #0x98]
_08030C8A:
	ldr r3, [sp, #0x8c]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #3
	ldr r5, [sp, #0xa0]
	adds r0, r5, r2
	mov r3, sl
	str r3, [r0]
	adds r0, r5, #0
	adds r0, #4
	adds r0, r0, r2
	ldr r5, [sp, #0x80]
	str r5, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	str r0, [sp, #0x8c]
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _08030CB6
	movs r1, #0
	str r1, [sp, #0x8c]
_08030CB6:
	ldr r1, _08030D10 @ =gPlayers
	movs r0, #0xd4
	ldr r2, [sp, #0x70]
	muls r0, r2, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	mov r3, sl
	subs r0, r0, r3
	asrs r0, r0, #0xc
	ldr r5, [sp, #0x94]
	strh r0, [r5]
	ldr r0, [sp, #0x80]
	subs r1, r1, r0
	asrs r1, r1, #0xc
	ldr r2, [sp, #0x98]
	strh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r2, r3, #0
	ldr r5, [sp, #0xa8]
	asrs r0, r5, #0x10
	subs r1, r2, r0
	cmp r1, #0x80
	ble _08030D24
	ldr r1, _08030D20 @ =0xFFFFFF00
	adds r0, r1, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08030D36
	.align 2, 0
_08030D0C: .4byte 0x03003910
_08030D10: .4byte gPlayers
_08030D14: .4byte 0x0805289C
_08030D18: .4byte 0x0000FFFE
_08030D1C: .4byte 0x030063D8
_08030D20: .4byte 0xFFFFFF00
_08030D24:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08030D36
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	adds r3, r0, #0
	orrs r3, r2
_08030D36:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r5, [sp, #0x84]
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	subs r0, r1, r2
	cmp r0, #0
	bge _08030D48
	adds r0, #3
_08030D48:
	asrs r0, r0, #2
	cmp r0, #0
	bne _08030D50
	b _08030F8E
_08030D50:
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0x84]
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08030D6A
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
_08030D6A:
	ldr r3, [sp, #0x84]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	cmp r0, r5
	ble _08030D82
	ldr r1, _080310FC @ =0xFFFFFF00
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
_08030D82:
	movs r0, #0xff
	ldr r2, [sp, #0x84]
	ands r2, r0
	str r2, [sp, #0x84]
	ldr r2, _08031100 @ =0x0805289C
	ldr r3, [sp, #0x84]
	lsls r5, r3, #0x10
	asrs r1, r5, #0x10
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, [sp, #0x90]
	muls r0, r3, r0
	add sl, r0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r3, r0
	ldr r3, [sp, #0x80]
	adds r3, r3, r0
	str r3, [sp, #0x80]
	ldr r1, _08031104 @ =0x03003910
	adds r0, r1, #0
	adds r0, #0x58
	ldrh r0, [r0]
	lsls r0, r0, #3
	mov r2, sl
	asrs r4, r2, #0xc
	cmp r0, r4
	bge _08030DC6
	b _08030F8E
_08030DC6:
	adds r0, r1, #0
	adds r0, #0x5a
	ldrh r0, [r0]
	lsls r0, r0, #3
	asrs r7, r3, #0xc
	cmp r0, r7
	bge _08030DD6
	b _08030F8E
_08030DD6:
	cmp r2, #0
	bge _08030DDC
	b _08030F8E
_08030DDC:
	cmp r3, #0
	bge _08030DE2
	b _08030F8E
_08030DE2:
	ldr r3, [sp, #0x88]
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	bl sub_08007544
	str r5, [sp, #0xa8]
	cmp r0, #0
	bne _08030EB0
	bl sub_08007510
	cmp r0, #0
	bne _08030EB0
	bl sub_08007604
	cmp r0, #0
	bne _08030EB0
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08030EB0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	bl sub_08005FC4
	ldr r2, [sp, #0x94]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r5, [sp, #0x98]
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r2, #1
	str r2, [sp]
	add r3, sp, #0x10
	str r3, [sp, #4]
	ldr r5, [sp, #0x78]
	str r5, [sp, #8]
	ldr r2, [sp, #0x74]
	str r2, [sp, #0xc]
	movs r2, #0xb
	movs r3, #0
	bl sub_08004344
	movs r3, #0
	ldr r5, [sp, #0xa0]
	mov r8, r5
	adds r6, r5, #0
	adds r6, #4
	ldr r5, [sp, #0xac]
_08030E5A:
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	mov r2, r8
	adds r0, r2, r1
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	adds r1, r6, r1
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r5, #0
	ldr r3, [sp, #0x98]
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r2, [sp, #0x98]
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r3, [sp, #0x78]
	str r3, [sp, #8]
	ldr r2, [sp, #0x74]
	str r2, [sp, #0xc]
	movs r2, #0xb
	movs r3, #0
	bl sub_08004344
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #4
	ble _08030E5A
_08030EB0:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08030F8E
	bl sub_080074CC
	cmp r0, #0
	bne _08030F8E
	ldr r0, _08031108 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08030F8E
	bl sub_08007578
	cmp r0, #0
	bne _08030F8E
	bl GetMultiplayerId
	mov r3, sl
	asrs r2, r3, #0xc
	ldr r5, _0803110C @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r5, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r2, r0
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r1, r5, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r7, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _08030F82
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r7, r5, #0
	adds r7, #0x80
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08030F82
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _08030F82
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r5
	ldrh r1, [r0, #0x16]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	bne _08030F62
	movs r4, #0
_08030F62:
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08030F72
	movs r4, #0
_08030F72:
	mov r1, sb
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _08030F7C
	movs r4, #0
_08030F7C:
	cmp r4, #0
	beq _08030F82
	b _080309BC
_08030F82:
	ldr r2, [sp, #0x88]
	lsls r1, r2, #0x10
	ldr r0, _08031110 @ =0x012B0000
	cmp r1, r0
	bgt _08030F8E
	b _08030C8A
_08030F8E:
	ldr r3, [sp, #0x84]
	lsls r3, r3, #0x10
	str r3, [sp, #0xa8]
	ldr r5, [sp, #0xb0]
	str r5, [sp, #0x9c]
_08030F98:
	ldr r1, [sp, #0x8c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #3
	ldr r3, [sp, #0xa0]
	adds r1, r3, r2
	mov r5, sl
	str r5, [r1]
	adds r5, r3, #0
	adds r5, #4
	adds r2, r5, r2
	ldr r1, [sp, #0x80]
	str r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	str r2, [sp, #0x8c]
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08030FC4
	movs r3, #0
	str r3, [sp, #0x8c]
_08030FC4:
	ldr r2, _08031100 @ =0x0805289C
	ldr r0, [sp, #0xa8]
	asrs r1, r0, #0x10
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, [sp, #0x90]
	muls r0, r3, r0
	add sl, r0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r3, r0
	ldr r3, [sp, #0x80]
	adds r3, r3, r0
	str r3, [sp, #0x80]
	ldr r1, _08031104 @ =0x03003910
	adds r0, r1, #0
	adds r0, #0x58
	ldrh r0, [r0]
	lsls r0, r0, #3
	mov r2, sl
	asrs r4, r2, #0xc
	cmp r0, r4
	bge _08030FFE
	b _08031224
_08030FFE:
	adds r0, r1, #0
	adds r0, #0x5a
	ldrh r0, [r0]
	lsls r0, r0, #3
	asrs r7, r3, #0xc
	cmp r0, r7
	bge _0803100E
	b _08031224
_0803100E:
	cmp r2, #0
	bge _08031014
	b _08031224
_08031014:
	cmp r3, #0
	bge _0803101A
	b _08031224
_0803101A:
	bl sub_08007544
	str r4, [sp, #0xa4]
	cmp r0, #0
	bne _080310D8
	bl sub_08007510
	cmp r0, #0
	bne _080310D8
	bl sub_08007604
	cmp r0, #0
	bne _080310D8
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _080310D8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xac]
	ldr r3, [sp, #0x9c]
	bl sub_08005FC4
	ldr r3, [sp, #0xac]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x9c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r3, [sp, #0x78]
	str r3, [sp, #8]
	ldr r2, [sp, #0x74]
	str r2, [sp, #0xc]
	movs r2, #0xb
	movs r3, #0
	bl sub_08004344
	movs r3, #0
	ldr r0, [sp, #0xa0]
	mov r8, r0
	adds r6, r5, #0
	ldr r5, [sp, #0xac]
_08031082:
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	mov r2, r8
	adds r0, r2, r1
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	adds r1, r6, r1
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r2, r5, #0
	ldr r3, [sp, #0x9c]
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x9c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r3, [sp, #0x78]
	str r3, [sp, #8]
	ldr r2, [sp, #0x74]
	str r2, [sp, #0xc]
	movs r2, #0xb
	movs r3, #0
	bl sub_08004344
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #4
	ble _08031082
_080310D8:
	bl GetMultiplayerId
	ldr r6, _0803110C @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	ldr r3, [sp, #0xa4]
	subs r4, r3, r0
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r1, r6, #0
	b _08031114
	.align 2, 0
_080310FC: .4byte 0xFFFFFF00
_08031100: .4byte 0x0805289C
_08031104: .4byte 0x03003910
_08031108: .4byte 0x030063D8
_0803110C: .4byte gPlayers
_08031110: .4byte 0x012B0000
_08031114:
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r7, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _080311F6
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r7, r6, #0
	adds r7, #0x80
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _080311F6
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _080311F6
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080311F6
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r1, [r0, #0x16]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	bne _08031186
	movs r4, #0
_08031186:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08031196
	movs r4, #0
_08031196:
	mov r1, sb
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _080311A0
	movs r4, #0
_080311A0:
	cmp r4, #0
	beq _080311F6
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _08031244 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	mov r0, sb
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r3, #0x2c]
	str r0, [r1]
_080311F6:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08031224
	bl sub_080074CC
	cmp r0, #0
	bne _08031224
	ldr r0, _08031248 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08031224
	bl sub_08007578
	cmp r0, #0
	bne _08031224
	b _08030F98
_08031224:
	ldr r2, _0803124C @ =0x0300680C
	movs r1, #1
	ldr r5, [sp, #0x7c]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0xb4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031244: .4byte 0x0000FFFE
_08031248: .4byte 0x030063D8
_0803124C: .4byte 0x0300680C

	thumb_func_start sub_08031250
sub_08031250: @ 0x08031250
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	movs r6, #0
	ldr r2, _080312D4 @ =0x0300680C
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0803127C
	movs r3, #1
_0803126A:
	adds r6, #1
	cmp r6, #0xf
	bhi _080312CA
	adds r1, r3, #0
	lsls r1, r6
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0803126A
_0803127C:
	cmp r6, #0xf
	bhi _080312CA
	ldr r5, _080312D8 @ =0x03000058
	ldr r1, [r5]
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r1, r4, r1
	ldr r0, _080312DC @ =sub_08030894
	str r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x3d
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x18]
	str r0, [r4]
	str r0, [r4, #0x24]
	lsls r1, r7, #0x10
	orrs r1, r6
	adds r0, r4, #0
	mov r2, r8
	bl CreateThread
	ldr r2, _080312D4 @ =0x0300680C
	movs r1, #1
	lsls r1, r6
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_080312CA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080312D4: .4byte 0x0300680C
_080312D8: .4byte 0x03000058
_080312DC: .4byte sub_08030894

	thumb_func_start sub_080312E0
sub_080312E0: @ 0x080312E0
	push {r4, lr}
	ldr r4, _080312FC @ =0x03000058
	movs r0, #0xa0
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4]
	ldr r1, _08031300 @ =0x0300680C
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080312FC: .4byte 0x03000058
_08031300: .4byte 0x0300680C

	thumb_func_start sub_08031304
sub_08031304: @ 0x08031304
	push {r4, lr}
	ldr r1, _0803132C @ =0x0300680C
	ldr r0, [r1]
	cmp r0, #0
	beq _0803131A
	adds r4, r1, #0
_08031310:
	bl WaitFrame
	ldr r0, [r4]
	cmp r0, #0
	bne _08031310
_0803131A:
	ldr r4, _08031330 @ =0x03000058
	ldr r0, [r4]
	bl Free
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803132C: .4byte 0x0300680C
_08031330: .4byte 0x03000058

	thumb_func_start sub_08031334
sub_08031334: @ 0x08031334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	adds r7, r0, #0
	ldr r4, _080313B0 @ =0x03006814
	movs r0, #0xa0
	bl Alloc
	str r0, [r4]
	movs r2, #0
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0xd4]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xdc]
	movs r3, #0
	movs r1, #0
_0803135E:
	ldr r0, [r4]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #3
	bls _0803135E
	ldr r0, _080313B4 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	adds r4, r7, #0
	adds r4, #0x64
	adds r6, r7, #0
	adds r6, #0x48
	movs r3, #0x4a
	adds r3, r3, r7
	mov sl, r3
	adds r3, r7, #0
	adds r3, #0x4c
	str r3, [sp, #0xd8]
	adds r3, #0x26
	str r3, [sp, #0xe0]
	movs r3, #0x6e
	adds r3, r3, r7
	mov sb, r3
	adds r3, r7, #0
	adds r3, #0x74
	str r3, [sp, #0xe4]
	cmp r2, r0
	bhs _080313CA
	adds r3, r0, #0
_080313A2:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _080313B8
	ldr r0, [r1, #4]
	adds r5, r1, r0
	b _080313C2
	.align 2, 0
_080313B0: .4byte 0x03006814
_080313B4: .4byte 0x030063D8
_080313B8:
	cmp r0, #3
	bne _080313C2
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x88]
_080313C2:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _080313A2
_080313CA:
	ldrh r0, [r5, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x84]
	bl sub_08001EC4
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	movs r2, #0
	movs r0, #0xfe
	strh r0, [r7, #2]
	ldr r1, [sp, #0x88]
	ldrh r0, [r1, #0x28]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #0x2a]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _0803153C @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r4, #0
	ldr r0, [sp, #0x84]
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	strh r2, [r6]
	mov r5, sl
	strh r2, [r5]
	ldr r0, [sp, #0xd8]
	strh r2, [r0]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	ldr r1, [sp, #0xe0]
	ldrh r4, [r1]
	ldr r6, _08031540 @ =0x080FB740
	mov r2, r8
	subs r2, #1
	lsls r2, r2, #2
	mov r8, r2
	adds r0, r2, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	ldr r3, [sp, #0xe0]
	strh r4, [r3]
	mov r5, sb
	ldrh r4, [r5]
	adds r6, #2
	add r6, r8
	ldrh r0, [r6]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r5]
	ldr r1, [sp, #0xe0]
	ldrh r0, [r1]
	strh r0, [r7, #0x38]
	ldr r2, [sp, #0xe4]
	ldrh r0, [r2]
	strh r0, [r7, #0x3a]
	ldr r3, [sp, #0x84]
	ldr r0, [r3, #0x28]
	ldrh r1, [r3, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
	ldr r4, [sp, #0x84]
	ldr r1, [r4, #0x28]
	movs r4, #1
	rsbs r4, r4, #0
	add r0, sp, #0x10
	movs r2, #5
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r0, [sp, #0x90]
	adds r0, #0x15
	ldr r5, [sp, #0x84]
	ldrh r2, [r5, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x90]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x90]
	adds r0, #6
	strb r0, [r1, #0x1d]
	ldr r1, _08031544 @ =0x00100018
	ldr r0, [sp, #0xd4]
	movs r2, #7
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r0, [sp, #0xd4]
	ldr r1, [r0, #0xc]
	movs r0, #0x17
	movs r2, #1
	bl LoadPalette
	movs r0, #7
	ldr r1, [sp, #0xd4]
	strb r0, [r1, #0x1c]
	bl sub_08033DF4
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
	ldr r4, _08031548 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _08031532
	adds r5, r4, #0
	movs r4, #0xd4
_080314FE:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _080314FE
	bl GetMultiplayerId
	ldr r6, _08031548 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r6
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r6
	movs r1, #5
	strh r1, [r0, #0xa]
_08031532:
	ldr r0, [sp, #0xdc]
	movs r1, #0x15
	bl sub_0802934C
	b _08031550
	.align 2, 0
_0803153C: .4byte 0x03003910
_08031540: .4byte 0x080FB740
_08031544: .4byte 0x00100018
_08031548: .4byte gPlayers
_0803154C:
	bl WaitFrame
_08031550:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0803154C
	movs r2, #0
	str r2, [sp, #0x9c]
	ldr r3, _080315A8 @ =0x0000FFFF
	str r3, [sp, #0x94]
	movs r4, #0
	str r4, [sp, #0xbc]
	mov sl, r4
	movs r5, #1
	str r5, [sp, #0x98]
	ldr r0, _080315AC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x92
	strh r4, [r0]
	str r2, [sp, #0xc0]

	non_word_aligned_thumb_func_start sub_08031572
sub_08031572: @ 0x08031572
	bl sub_080271D0
	cmp r0, #0
	beq _0803157E
	bl _080321F4
_0803157E:
	ldr r0, [sp, #0x90]
	adds r0, #0x15
	ldr r3, [sp, #0x84]
	ldrh r2, [r3, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	mov r4, sl
	cmp r4, #0x16
	bls _0803159C
	bl _080321F4
_0803159C:
	lsls r0, r4, #2
	ldr r1, _080315B0 @ =_080315B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080315A8: .4byte 0x0000FFFF
_080315AC: .4byte 0x030063D8
_080315B0: .4byte _080315B4
_080315B4: @ jump table
	.4byte _08031610 @ case 0
	.4byte _0803164C @ case 1
	.4byte _08031700 @ case 2
	.4byte _0803167A @ case 3
	.4byte _080316B4 @ case 4
	.4byte _080317CE @ case 5
	.4byte _080317E4 @ case 6
	.4byte _0803181C @ case 7
	.4byte _08031844 @ case 8
	.4byte _0803186C @ case 9
	.4byte _08031894 @ case 10
	.4byte _080318BC @ case 11
	.4byte _080318F6 @ case 12
	.4byte _08031932 @ case 13
	.4byte _0803196E @ case 14
	.4byte _080319A4 @ case 15
	.4byte _08031B80 @ case 16
	.4byte _08031C1C @ case 17
	.4byte _08031FA0 @ case 18
	.4byte _08031FFC @ case 19
	.4byte _080320DA @ case 20
	.4byte _08032142 @ case 21
	.4byte _08032148 @ case 22
_08031610:
	bl sub_08007510
	cmp r0, #0
	bne _0803163E
	bl sub_08007544
	cmp r0, #0
	bne _0803163E
	bl sub_080075AC
	cmp r0, #0
	bne _0803163E
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08031648 @ =0x0009006F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x8c]
_0803163E:
	movs r5, #1
	mov sl, r5
	bl _080321F4
	.align 2, 0
_08031648: .4byte 0x0009006F
_0803164C:
	bl sub_08007544
	cmp r0, #0
	bne _08031672
	bl sub_080075AC
	cmp r0, #0
	bne _08031672
	ldr r0, [sp, #0x8c]
	bl sub_0802294C
	cmp r0, #0
	bne _0803166A
	bl _080321F4
_0803166A:
	movs r0, #3
	mov sl, r0
	bl _080321F4
_08031672:
	movs r1, #3
	mov sl, r1
	bl _080321F4
_0803167A:
	bl sub_08007510
	cmp r0, #0
	bne _080316A8
	bl sub_08007544
	cmp r0, #0
	bne _080316A8
	bl sub_080075AC
	cmp r0, #0
	bne _080316A8
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080316B0 @ =0x00090070
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x8c]
_080316A8:
	movs r2, #4
	mov sl, r2
	bl _080321F4
	.align 2, 0
_080316B0: .4byte 0x00090070
_080316B4:
	bl sub_08007544
	cmp r0, #0
	bne _080316DA
	bl sub_080075AC
	cmp r0, #0
	bne _080316DA
	ldr r0, [sp, #0x8c]
	bl sub_0802294C
	cmp r0, #0
	bne _080316D2
	bl _080321F4
_080316D2:
	movs r3, #2
	mov sl, r3
	bl _080321F4
_080316DA:
	bl GetMultiplayerId
	ldr r2, _080316F8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080316FC @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r4, #2
	mov sl, r4
	bl _080321F4
	.align 2, 0
_080316F8: .4byte gPlayers
_080316FC: .4byte 0x0000FFFE
_08031700:
	ldr r2, _080317A4 @ =0x03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r0, _080317A8 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0803172C
	bl sub_08007544
	cmp r0, #0
	bne _0803172C
	bl sub_080075AC
	cmp r0, #0
	bne _0803172C
	movs r0, #0x6a
	bl PlaySE
_0803172C:
	bl sub_08007544
	cmp r0, #0
	bne _080317B4
	bl sub_080075AC
	cmp r0, #0
	bne _080317B4
	ldr r5, [sp, #0x9c]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
	ldr r2, [sp, #0x9c]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc7
	bgt _08031774
	bl _080321F4
_08031774:
	movs r3, #5
	mov sl, r3
	ldr r0, [sp, #0xdc]
	movs r1, #0x16
	bl sub_0802934C
	movs r0, #0x17
	str r0, [r7, #0x5c]
	bl GetMultiplayerId
	ldr r2, _080317AC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080317B0 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x6a
	bl StopSE
	bl _080321F4
	.align 2, 0
_080317A4: .4byte 0x03003910
_080317A8: .4byte gFrameCounter
_080317AC: .4byte gPlayers
_080317B0: .4byte 0x0000FFFE
_080317B4:
	movs r0, #0x6a
	bl StopSE
	movs r4, #5
	mov sl, r4
	ldr r0, [sp, #0xdc]
	movs r1, #0x16
	bl sub_0802934C
	movs r0, #0x17
	str r0, [r7, #0x5c]
	bl sub_080321E0
_080317CE:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _080317D8
	bl _080321F4
_080317D8:
	movs r5, #6
	mov sl, r5
	movs r0, #0
	str r0, [sp, #0xb8]
	bl _080321F4
_080317E4:
	bl sub_08007544
	cmp r0, #0
	bne _080317F6
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_080317F6:
	ldr r1, _08031818 @ =0x080FBC04
	ldr r2, [sp, #0xc0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sl, r0
	adds r2, #1
	str r2, [sp, #0xc0]
	cmp r2, #5
	bhi _0803180E
	bl _080321F4
_0803180E:
	movs r3, #0
	str r3, [sp, #0xc0]
	bl _080321F4
	.align 2, 0
_08031818: .4byte 0x080FBC04
_0803181C:
	bl sub_08007544
	cmp r0, #0
	bne _0803182E
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_0803182E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08033EE0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r4, #0xb
	mov sl, r4
	bl _080321F4
_08031844:
	bl sub_08007544
	cmp r0, #0
	bne _08031856
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_08031856:
	adds r0, r7, #0
	movs r1, #2
	bl sub_08033EE0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r5, #0xb
	mov sl, r5
	bl _080321F4
_0803186C:
	bl sub_08007544
	cmp r0, #0
	bne _0803187E
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_0803187E:
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_08033EE0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r0, #0xb
	mov sl, r0
	bl _080321F4
_08031894:
	bl sub_08007544
	cmp r0, #0
	bne _080318A6
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_080318A6:
	adds r0, r7, #0
	movs r1, #0x12
	bl sub_08033EE0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r1, #0xb
	mov sl, r1
	bl _080321F4
_080318BC:
	bl sub_08007544
	cmp r0, #0
	bne _080318CE
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_080318CE:
	ldr r0, [sp, #0xb8]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xb8]
	cmp r0, #0xb4
	bhi _080318DE
	bl _080321F4
_080318DE:
	movs r0, #0x17
	str r0, [r7, #0x5c]
	ldr r0, [sp, #0xdc]
	movs r1, #0x16
	bl sub_0802934C
	movs r3, #5
	mov sl, r3
	movs r4, #0
	str r4, [sp, #0xb8]
	bl _080321F4
_080318F6:
	bl sub_08007544
	cmp r0, #0
	bne _08031908
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_08031908:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08033F48
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r5, #0xe
	mov sl, r5
	bl sub_080076A8
	movs r1, #0x3c
	str r1, [sp, #0xb8]
	cmp r0, #0
	bne _0803192A
	bl _080321F4
_0803192A:
	movs r2, #0x78
	str r2, [sp, #0xb8]
	bl _080321F4
_08031932:
	bl sub_08007544
	cmp r0, #0
	bne _08031944
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_08031944:
	adds r0, r7, #0
	movs r1, #1
	bl sub_08033F48
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r3, #0xe
	mov sl, r3
	bl sub_080076A8
	movs r4, #0x3c
	str r4, [sp, #0xb8]
	cmp r0, #0
	bne _08031966
	bl _080321F4
_08031966:
	movs r5, #0x78
	str r5, [sp, #0xb8]
	bl _080321F4
_0803196E:
	bl sub_08007544
	cmp r0, #0
	bne _08031980
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_08031980:
	ldr r0, [sp, #0xb8]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xb8]
	cmp r0, #0xf0
	bhi _08031990
	bl _080321F4
_08031990:
	movs r0, #0x17
	str r0, [r7, #0x5c]
	ldr r0, [sp, #0xdc]
	movs r1, #0x16
	bl sub_0802934C
	movs r2, #5
	mov sl, r2
	bl _080321F4
_080319A4:
	ldr r1, _08031B40 @ =0x0000012B
	ldr r0, [sp, #0xb8]
	adds r3, r0, #0
	adds r3, #1
	str r3, [sp, #0xb8]
	cmp r0, r1
	bls _080319B4
	b _08031B50
_080319B4:
	bl sub_08007544
	cmp r0, #0
	bne _080319E0
	bl sub_080075AC
	cmp r0, #0
	bne _080319E0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
_080319E0:
	movs r0, #7
	ldr r4, [sp, #0xb8]
	ands r0, r4
	cmp r0, #0
	beq _080319EE
	bl _080321F4
_080319EE:
	bl sub_08007544
	cmp r0, #0
	bne _08031A04
	bl sub_080075AC
	cmp r0, #0
	bne _08031A04
	movs r0, #0x28
	bl PlaySE
_08031A04:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08031A14
	adds r0, #0xf
_08031A14:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #0
	adds r4, #0xa1
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08031A32
	adds r1, #0xf
_08031A32:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r5, _08031B44 @ =0x00000115
	adds r1, r1, r5
	ldr r0, _08031B48 @ =0x03003910
	adds r6, r0, #0
	adds r6, #0x5e
	movs r0, #0
	ldrsh r2, [r6, r0]
	ldr r3, [sp, #0x9c]
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	adds r2, r2, r5
	subs r1, r1, r2
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08031A6C
	adds r0, #0xf
_08031A6C:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #0
	adds r4, #0xb8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08031A8A
	adds r1, #0xf
_08031A8A:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x9f
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, r0, r5
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08031ABA
	adds r0, #0xf
_08031ABA:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #0
	adds r4, #0xca
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08031AD8
	adds r1, #0xf
_08031AD8:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08031B4C @ =0x0000012F
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, r0, r5
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08031B06
	adds r0, #0xf
_08031B06:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #0
	adds r4, #0x90
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08031B24
	adds r1, #0xf
_08031B24:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x93
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, r0, r5
	subs r1, r1, r0
	b _080320BA
	.align 2, 0
_08031B40: .4byte 0x0000012B
_08031B44: .4byte 0x00000115
_08031B48: .4byte 0x03003910
_08031B4C: .4byte 0x0000012F
_08031B50:
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r3, #0x10
	mov sl, r3
	ldr r4, [sp, #0xbc]
	adds r4, #1
	str r4, [sp, #0xbc]
	movs r5, #0
	str r5, [sp, #0xa4]
	ldr r0, _08031B74 @ =0xFFFFE000
	str r0, [sp, #0xa0]
	movs r1, #0
	str r1, [sp, #0xb4]
	ldr r0, _08031B78 @ =0x0009E200
	str r0, [r7, #0x10]
	ldr r0, _08031B7C @ =0x0005C700
	str r0, [r7, #0x14]
	b _080321F4
	.align 2, 0
_08031B74: .4byte 0xFFFFE000
_08031B78: .4byte 0x0009E200
_08031B7C: .4byte 0x0005C700
_08031B80:
	ldr r2, _08031C0C @ =0x080FB5D0
	ldr r0, [r2, #8]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r2, #0xc]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r2, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	adds r2, r2, r3
	str r2, [sp, #0xa0]
	adds r3, #0x10
	str r3, [sp, #0xa4]
	cmp r2, #0
	bgt _08031BB0
	b _080321F4
_08031BB0:
	bl sub_08007544
	cmp r0, #0
	bne _08031BC6
	bl sub_080075AC
	cmp r0, #0
	bne _08031BC6
	movs r0, #0x81
	bl PlaySE
_08031BC6:
	movs r4, #0
	str r4, [sp, #0xa0]
	ldr r5, _08031C10 @ =0xFFFFFE80
	ldr r0, [sp, #0xb4]
	asrs r5, r0
	str r5, [sp, #0xa4]
	adds r0, #1
	str r0, [sp, #0xb4]
	adds r0, r5, #0
	cmp r0, #0
	bge _08031BDE
	rsbs r0, r0, #0
_08031BDE:
	cmp r0, #1
	ble _08031BE4
	b _080321F4
_08031BE4:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	bl sub_08007544
	cmp r0, #0
	bne _08031C14
	bl sub_080075AC
	cmp r0, #0
	bne _08031C14
	movs r0, #0x87
	bl PlaySE
	b _080321F4
	.align 2, 0
_08031C0C: .4byte 0x080FB5D0
_08031C10: .4byte 0xFFFFFE80
_08031C14:
	movs r0, #0x87
	bl StopSE
	b _080321F4
_08031C1C:
	bl GetMultiplayerId
	ldr r2, [r7, #0x10]
	asrs r2, r2, #0xc
	ldr r6, _08031D4C @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	add r4, sp, #0x78
	strh r2, [r4]
	bl GetMultiplayerId
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	muls r0, r5, r0
	adds r2, r6, #0
	adds r2, #0x5c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x7a
	strh r1, [r0]
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08031D0A
	bl sub_08007544
	cmp r0, #0
	bne _08031D0A
	cmp r4, #0xf
	bhi _08031D0A
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	movs r0, #0x80
	adds r0, r0, r6
	mov r8, r0
	add r1, r8
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _08031D0A
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08031D0A
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _08031D50 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r0, r7, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, r8
	ldr r0, [r7, #0x2c]
	str r0, [r1]
	movs r3, #0
	str r3, [sp, #0xb0]
_08031D0A:
	ldr r0, [sp, #0xb0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r0, #0x3d
	bne _08031D1E

	thumb_func_start sub_08031D18
sub_08031D18: @ 0x08031D18
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
_08031D1E:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x14]
	str r0, [r7, #0x1c]
	bl sub_080076A8
	cmp r0, #0
	beq _08031D58
	ldr r2, _08031D54 @ =0x080FB5D0
	movs r4, #8
	ldrsh r0, [r7, r4]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r3, #0x96
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r5, #8
	ldrsh r0, [r7, r5]
	b _08031D74
	.align 2, 0
_08031D4C: .4byte gPlayers
_08031D50: .4byte 0x0000FFFE
_08031D54: .4byte 0x080FB5D0
_08031D58:
	ldr r2, _08031DC4 @ =0x080FB5D0
	movs r1, #8
	ldrsh r0, [r7, r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r3, #0x64
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r0, [r7, r4]
_08031D74:
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r5, #8
	ldrsh r0, [r7, r5]
	ldr r1, [r7, #0x10]
	ldr r2, [r7, #0x14]
	movs r3, #0
	bl sub_08005A2C
	str r0, [sp, #0xb4]
	cmp r0, #0
	bne _08031D9C
	b _08031EB0
_08031D9C:
	bl sub_08007544
	cmp r0, #0
	bne _08031DAC
	bl sub_080075AC
	cmp r0, #0
	beq _08031DB2
_08031DAC:
	movs r0, #0x87
	bl StopSE
_08031DB2:
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #2
	beq _08031E00
	cmp r0, #2
	bgt _08031DC8
	cmp r0, #0
	beq _08031DD2
	b _080321F4
	.align 2, 0
_08031DC4: .4byte 0x080FB5D0
_08031DC8:
	cmp r0, #4
	beq _08031E2A
	cmp r0, #6
	beq _08031E7C
	b _080321F4
_08031DD2:
	ldr r0, [sp, #0xb4]
	subs r0, #1
	cmp r0, #1
	bne _08031DF8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031DF2
	rsbs r0, r0, #0
_08031DF2:
	adds r0, #2
_08031DF4:
	strh r0, [r7, #8]
	b _080321F4
_08031DF8:
	cmp r0, #7
	beq _08031DFE
	b _080321F4
_08031DFE:
	b _08031E0E
_08031E00:
	ldr r0, [sp, #0xb4]
	subs r0, #1
	cmp r0, #1
	beq _08031E52
	cmp r0, #3
	beq _08031E0E
	b _080321F4
_08031E0E:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031E26
	rsbs r0, r0, #0
_08031E26:
	adds r0, #4
	b _08031DF4
_08031E2A:
	ldr r0, [sp, #0xb4]
	subs r0, #1
	cmp r0, #3
	bne _08031E4C
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031DF4
	rsbs r0, r0, #0
	b _08031DF4
_08031E4C:
	cmp r0, #5
	beq _08031E52
	b _080321F4
_08031E52:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08031E6A
	rsbs r1, r1, #0
_08031E6A:
	adds r0, r1, #6
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _08031E78
	b _080321F4
_08031E78:
	subs r0, r1, #2
	b _08031DF4
_08031E7C:
	ldr r0, [sp, #0xb4]
	subs r0, #1
	cmp r0, #5
	bne _08031E9E
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031DF4
	rsbs r0, r0, #0
	b _08031DF4
_08031E9E:
	cmp r0, #7
	beq _08031EA4
	b _080321F4
_08031EA4:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	b _08031EF4
_08031EB0:
	bl sub_08007544
	cmp r0, #0
	bne _08031EC8
	bl sub_080075AC
	cmp r0, #0
	bne _08031EC8
	movs r0, #0x87
	bl PlaySEOrContinue
	b _08031ECE
_08031EC8:
	movs r0, #0x87
	bl StopSE
_08031ECE:
	movs r2, #8
	ldrsh r0, [r7, r2]
	cmp r0, #3
	beq _08031F06
	cmp r0, #3
	bgt _08031EE0
	cmp r0, #1
	beq _08031EEA
	b _08031F74
_08031EE0:
	cmp r0, #5
	beq _08031F30
	cmp r0, #7
	beq _08031F58
	b _08031F74
_08031EEA:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
_08031EF4:
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031F02
	rsbs r0, r0, #0
_08031F02:
	adds r0, #3
	b _08031DF4
_08031F06:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08031F1E
	rsbs r1, r1, #0
_08031F1E:
	adds r0, r1, #5
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _08031F2C
	b _080321F4
_08031F2C:
	subs r0, r1, #3
	b _08031DF4
_08031F30:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031F48
	rsbs r0, r0, #0
_08031F48:
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08031F54
	b _080321F4
_08031F54:
	movs r0, #7
	b _08031DF4
_08031F58:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031F70
	rsbs r0, r0, #0
_08031F70:
	adds r0, #1
	b _08031DF4
_08031F74:
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x1c]
	str r0, [r7, #0x14]
	ldr r2, _08031F98 @ =0x080FB720
	ldr r1, _08031F9C @ =0x080FB730
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r7, #8]
	movs r4, #0x12
	mov sl, r4
	b _080321F4
	.align 2, 0
_08031F98: .4byte 0x080FB720
_08031F9C: .4byte 0x080FB730
_08031FA0:
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
	ldr r5, [sp, #0x88]
	ldrh r0, [r5, #0x3c]
	lsls r0, r0, #0xf
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	asrs r0, r0, #4
	adds r2, r2, r0
	str r2, [r7, #0x10]
	ldrh r0, [r5, #0x3e]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #4
	adds r1, r1, r0
	str r1, [r7, #0x14]
	ldrh r0, [r5, #0x3c]
	lsls r0, r0, #0xf
	subs r0, r0, r2
	cmp r0, #0
	bge _08031FD4
	rsbs r0, r0, #0
_08031FD4:
	ldr r2, _08031FF8 @ =0x00000FFF
	cmp r0, r2
	ble _08031FDC
	b _080321F4
_08031FDC:
	ldr r3, [sp, #0x88]
	ldrh r0, [r3, #0x3e]
	lsls r0, r0, #0xf
	subs r0, r0, r1
	cmp r0, #0
	bge _08031FEA
	rsbs r0, r0, #0
_08031FEA:
	cmp r0, r2
	ble _08031FF0
	b _080321F4
_08031FF0:
	movs r4, #0x11
	mov sl, r4
	b _080321F4
	.align 2, 0
_08031FF8: .4byte 0x00000FFF
_08031FFC:
	ldr r1, _080320C4 @ =0x0000012B
	ldr r0, [sp, #0xb8]
	adds r5, r0, #0
	adds r5, #1
	str r5, [sp, #0xb8]
	cmp r0, r1
	bhi _080320C8
	bl sub_08007544
	cmp r0, #0
	bne _08032036
	bl sub_080075AC
	cmp r0, #0
	bne _08032036
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10

	non_word_aligned_thumb_func_start sub_0803202E
sub_0803202E: @ 0x0803202E
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
_08032036:
	movs r0, #7
	ldr r1, [sp, #0xb8]
	ands r0, r1
	cmp r0, #0
	beq _08032042
	b _080321F4
_08032042:
	bl sub_08007544
	cmp r0, #0
	bne _08032058
	bl sub_080075AC
	cmp r0, #0
	bne _08032058
	movs r0, #0x28
	bl PlaySE
_08032058:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	bl Random
	movs r3, #0
	ldrsh r2, [r4, r3]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0803208E
	adds r0, r1, #7
_0803208E:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r2, r0
	bl Random
	movs r1, #0
	ldrsh r3, [r5, r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _080320AE
	adds r1, r0, #3
_080320AE:
	asrs r1, r1, #2
	lsls r1, r1, #2
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r3, r1
_080320BA:
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
	b _080321F4
	.align 2, 0
_080320C4: .4byte 0x0000012B
_080320C8:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #2
	bl FadeOutBGM
	b _080321F4
_080320DA:
	ldr r4, _08032130 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08032138
	ldr r0, _08032134 @ =0x030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _08032138
	bl sub_08007544
	cmp r0, #0
	bne _08032138
	bl sub_08007510
	cmp r0, #0
	bne _08032138
	bl sub_08007604
	cmp r0, #0
	bne _08032138
	bl sub_080075AC
	cmp r0, #0
	bne _08032138
	bl sub_080076E0
	cmp r0, #0
	bne _08032138
	ldr r0, [sp, #0x8c]
	bl sub_0802294C
	cmp r0, #0
	beq _080321F4
	movs r2, #0x16
	mov sl, r2
	bl sub_080077AC
	b _080321F4
	.align 2, 0
_08032130: .4byte gPlayers
_08032134: .4byte 0x030064D8
_08032138:
	movs r3, #0x16
	mov sl, r3
	bl sub_080077AC
	b _080321F4
_08032142:
	movs r4, #0
	str r4, [sp, #0x98]
	b _080321F4
_08032148:
	ldr r0, _0803228C @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0803216A
	bl sub_08007544
	cmp r0, #0
	bne _0803216A
	bl sub_080075AC
	cmp r0, #0
	bne _0803216A
	movs r0, #0x6a
	bl PlaySE
_0803216A:
	ldr r2, _08032290 @ =0x03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r5, [sp, #0x9c]
	lsls r0, r5, #0x10
	ldr r1, _08032294 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	bl sub_08007544
	cmp r0, #0
	bne _080321AC
	bl sub_080075AC
	cmp r0, #0
	bne _080321AC
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
_080321AC:
	ldr r2, [sp, #0x9c]
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _080321F4
	movs r3, #0x15
	mov sl, r3
	bl sub_08016FA0
	cmp r0, #0
	bne _080321F4
	bl sub_08007544
	cmp r0, #0
	bne _080321F4
	bl sub_08007510
	cmp r0, #0
	bne _080321F4
	bl sub_080075AC
	cmp r0, #0
	bne _080321F4
	bl sub_080076E0
	cmp r0, #0
	bne _080321F4

	thumb_func_start sub_080321E0
sub_080321E0: @ 0x080321E0
	bl GetMultiplayerId
	ldr r2, _08032298 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803229C @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_080321F4:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _080322DA
	movs r4, #0x14
	str r4, [sp, #0x94]
	ldrh r5, [r7, #0x28]
	str r5, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0xac]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080322D4
	ldr r1, [sp, #0xbc]
	cmp r1, #0
	beq _080322A4
	bl sub_08016FA0
	cmp r0, #0
	bne _08032276
	bl sub_080271D0
	cmp r0, #0
	bne _08032276
	bl sub_08007544
	cmp r0, #0
	bne _08032276
	bl sub_08007510
	cmp r0, #0
	bne _08032276
	bl sub_080075AC
	cmp r0, #0
	bne _08032276
	bl sub_080076E0
	cmp r0, #0
	bne _08032276
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080322A0 @ =0x00090072
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x8c]
	bl GetMultiplayerId
	ldr r2, _08032298 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007798
_08032276:
	movs r2, #0
	str r2, [sp, #0xb8]
	movs r3, #0x13
	mov sl, r3
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r0, #0x87
	bl StopSE
	b _080322BE
	.align 2, 0
_0803228C: .4byte gFrameCounter
_08032290: .4byte 0x03003910
_08032294: .4byte 0xFFFF0000
_08032298: .4byte gPlayers
_0803229C: .4byte 0x0000FFFE
_080322A0: .4byte 0x00090072
_080322A4:
	movs r4, #0
	str r4, [sp, #0xb8]
	movs r5, #0xf
	mov sl, r5
	ldr r1, [sp, #0xe0]
	ldrh r0, [r1]
	lsrs r0, r0, #2
	strh r0, [r7, #0x38]
	movs r1, #8
	strh r1, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_080322BE:
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	b _080322DA
_080322D4:
	add r2, sp, #0xac
	ldrh r2, [r2]
	strh r2, [r7, #0xa]
_080322DA:
	ldr r0, [sp, #0x94]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x94]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08032340
	ldr r3, [sp, #0xa8]
	cmp r3, #0
	beq _08032340
	bl sub_08007544
	cmp r0, #0
	bne _08032322
	bl sub_08007510
	cmp r0, #0
	bne _08032322
	bl sub_08007604
	cmp r0, #0
	bne _08032322
	bl sub_080075AC
	cmp r0, #0
	bne _08032322
	ldr r5, [sp, #0xac]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xa8]
	bl sub_0800EA74
_08032322:
	movs r0, #2
	ldr r1, [sp, #0x94]
	ands r0, r1
	cmp r0, #0
	beq _08032344
	ldr r2, [sp, #0xac]
	lsls r0, r2, #0x10
	ldr r3, _0803233C @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
	b _08032344
	.align 2, 0
_0803233C: .4byte 0xFFFF0000
_08032340:
	ldr r4, _0803240C @ =0x0000FFFF
	str r4, [sp, #0x94]
_08032344:
	ldr r5, [sp, #0x9c]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	movs r0, #2
	movs r1, #0
	adds r2, r5, #0
	bl sub_08005F94
	ldr r0, [sp, #0xbc]
	cmp r0, #0
	bne _0803241C
	bl sub_08007510
	cmp r0, #0
	beq _08032364
	b _080324C4
_08032364:
	bl sub_08007604
	cmp r0, #0
	beq _0803236E
	b _080324C4
_0803236E:
	bl sub_08007544
	cmp r0, #0
	beq _08032378
	b _080324C4
_08032378:
	bl sub_080075AC
	adds r6, r0, #0
	cmp r6, #0
	beq _08032384
	b _080324C4
_08032384:
	ldr r4, _08032410 @ =0x03003910
	adds r4, #0x5e
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	movs r2, #0x48
	subs r2, r2, r0
	str r6, [sp]
	ldr r0, [sp, #0xd4]
	movs r1, #0xa8
	movs r3, #1
	bl sub_08026B90
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r0, r0, r5
	ldr r2, _08032414 @ =0x00000101
	subs r2, r2, r0
	str r6, [sp]
	movs r3, #2
	mov r8, r3
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r1, #0xa1
	bl sub_0802706C
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	movs r2, #0x95
	lsls r2, r2, #1
	subs r2, r2, r0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r1, #0xb8
	movs r3, #3
	bl sub_0802706C
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	ldr r2, _08032418 @ =0x0000011B
	subs r2, r2, r0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r1, #0xca
	movs r3, #4
	bl sub_0802706C
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	movs r2, #0x88
	lsls r2, r2, #1
	subs r2, r2, r0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r1, #0x90
	movs r3, #5
	bl sub_0802706C
	b _080324C4
	.align 2, 0
_0803240C: .4byte 0x0000FFFF
_08032410: .4byte 0x03003910
_08032414: .4byte 0x00000101
_08032418: .4byte 0x0000011B
_0803241C:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _080324C4
	bl sub_08007510
	cmp r0, #0
	bne _080324C4
	bl sub_08007604
	cmp r0, #0
	bne _080324C4
	bl sub_08007544
	cmp r0, #0
	bne _080324C4
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _080324C4
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r6, sp, #0x78
	movs r4, #0x7a
	add r4, sp
	mov r8, r4
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_08005FC4
	add r4, sp, #0x7c
	mov r3, sp
	adds r3, #0x7e
	movs r5, #1
	mov sb, r5
	str r5, [sp]
	add r0, sp, #0x10
	movs r1, #9
	adds r2, r4, #0
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r5, [sp, #0xa0]
	asrs r2, r5, #8
	adds r1, r1, r2
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #9
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r6, r3]
	mov r5, r8
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sb
	str r3, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xb
	movs r3, #0
	bl sub_08004418
_080324C4:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080324E0
	bl sub_08007544
	cmp r0, #0
	bne _080324E0
	bl sub_080075AC
	cmp r0, #0
	beq _080324E6
_080324E0:
	movs r0, #0x87
	bl StopSE
_080324E6:
	bl sub_08007750
	cmp r0, #0
	bne _08032518
	bl sub_080074CC
	cmp r0, #0
	bne _08032518
	ldr r0, _0803275C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032518
	bl sub_08007578
	cmp r0, #0
	bne _08032518
	ldr r4, [sp, #0x98]
	cmp r4, #0
	beq _08032518
	bl sub_08031572
_08032518:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r6, #0
	str r6, [sp]
	movs r5, #1
	mov r8, r5
	str r5, [sp, #4]
	str r6, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	ldr r4, _08032760 @ =0x03006814
	ldr r0, [r4]
	bl Free
	str r6, [r4]
	ldr r2, _08032764 @ =gActiveEnemyMask
	mov r1, r8
	ldrh r0, [r7]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x90]
	bl sub_0800CB84
	bl sub_08007750
	cmp r0, #0
	beq _08032560
	b _080326A4
_08032560:
	bl sub_080074CC
	cmp r0, #0
	beq _0803256A
	b _080326A4
_0803256A:
	ldr r4, _0803275C @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803257C
	b _080326A4
_0803257C:
	bl sub_08007578
	cmp r0, #0
	beq _08032586
	b _080326A4
_08032586:
	ldr r0, [r4]
	adds r0, #0x9e
	mov r1, r8
	strh r1, [r0]
	bl sub_08001F98
	cmp r0, #0
	bne _080325D0
	ldr r0, _08032768 @ =0x030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _080325D0
	bl sub_08007544
	cmp r0, #0
	bne _080325D0
	bl sub_08007510
	cmp r0, #0
	bne _080325D0
	bl sub_08007604
	cmp r0, #0
	bne _080325D0
	bl sub_080075AC
	cmp r0, #0
	bne _080325D0
	bl sub_080076E0
	cmp r0, #0
	bne _080325D0
	ldr r0, _0803276C @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_080325D0:
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _080326A4
	ldr r4, _08032770 @ =0x03003D94
	adds r0, r4, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _08032604
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032604
	ldr r3, _08032774 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08032604
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08032604:
	ldr r4, _08032778 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	mov r8, r5
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x84]
	bl CalcExpGain
	adds r6, r0, #0
	bl GetMultiplayerId
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, r6, #0
	bl AddExp
	str r0, [sp, #0x98]
	movs r4, #0x13
	ldr r5, _0803277C @ =0x0000FFFF
_0803263C:
	ldr r0, [r7, #0x14]
	ldr r3, _08032780 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r7, #0x14]
	ldr r0, _0803276C @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08032658
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08024320
_08032658:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bne _0803263C
	ldr r4, [sp, #0x98]
	cmp r4, #0
	beq _080326A4
	bl sub_08007544
	cmp r0, #0
	bne _08032682
	bl sub_080075AC
	cmp r0, #0
	bne _08032682
	movs r0, #0x25
	bl PlaySE
_08032682:
	bl GetMultiplayerId
	movs r6, #0xd4
	muls r0, r6, r0
	ldr r4, _08032778 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_080326A4:
	bl sub_08007750
	cmp r0, #0
	bne _08032742
	bl sub_080074CC
	cmp r0, #0
	bne _08032742
	ldr r4, _0803275C @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032742
	bl sub_08007578
	cmp r0, #0
	bne _08032742
	ldr r0, _08032784 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08032788 @ =0x03003D08
	ldr r1, [r3]
	movs r2, #8
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0803272C
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _0803272C
	ldr r2, _0803278C @ =gPlayerStats
	ldr r5, _08032790 @ =0x00000272
	adds r3, r2, r5
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08032794 @ =0x00000275
	adds r2, r2, r1
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_0803272C:
	bl sub_0800F53C
	ldr r4, _08032798 @ =0x030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08032742
	ldr r0, [r4]
	bl KillThread
_08032742:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803275C: .4byte 0x030063D8
_08032760: .4byte 0x03006814
_08032764: .4byte gActiveEnemyMask
_08032768: .4byte 0x030064D8
_0803276C: .4byte 0x03003910
_08032770: .4byte 0x03003D94
_08032774: .4byte 0x00000157
_08032778: .4byte gPlayers
_0803277C: .4byte 0x0000FFFF
_08032780: .4byte 0xFFFFFE00
_08032784: .4byte 0x00000BB8
_08032788: .4byte 0x03003D08
_0803278C: .4byte gPlayerStats
_08032790: .4byte 0x00000272
_08032794: .4byte 0x00000275
_08032798: .4byte 0x030063E4

	thumb_func_start sub_0803279C
sub_0803279C: @ 0x0803279C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	str r0, [sp, #0x48]
	adds r5, r1, #0
	ldr r0, _08032960 @ =0x030063D8
	ldr r0, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	beq _080327D0
	adds r7, r0, #0
_080327BC:
	ldrh r0, [r2, #2]
	cmp r0, #3
	bne _080327C8
	ldr r0, [r2, #4]
	adds r0, r0, r2
	mov r8, r0
_080327C8:
	subs r7, #1
	adds r2, #8
	cmp r7, #0
	bne _080327BC
_080327D0:
	ldr r0, _08032964 @ =0x0000FFFF
	ands r5, r0
	lsrs r0, r5, #1
	str r0, [sp, #0x7c]
	movs r0, #1
	ldr r1, [sp, #0x7c]
	ands r1, r0
	str r1, [sp, #0x7c]
	movs r0, #0x78
	bl Alloc
	str r0, [sp, #0x4c]
	movs r0, #0x78
	bl Alloc
	str r0, [sp, #0x50]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x54]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x60]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x5c]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x68]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x58]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x64]
	movs r0, #0x18
	bl Alloc
	str r0, [sp, #0x74]
	movs r0, #0x18
	bl Alloc
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x48]
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r2, #0xb8
	mov sb, r2
	ldr r4, _08032968 @ =0x0300396E
	movs r3, #0x62
	ldr r2, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	movs r7, #0x1d
_0803285A:
	mov r6, sb
	stm r1!, {r6}
	movs r6, #0
	ldrsh r0, [r4, r6]
	subs r0, r3, r0
	stm r2!, {r0}
	subs r7, #1
	cmp r7, #0
	bge _0803285A
	lsls r1, r5, #2
	movs r3, #0
	ldr r2, [sp, #0x58]
	ldr r0, [sp, #0x54]
	movs r7, #5
_08032876:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, #2
	adds r0, #2
	subs r7, #1
	cmp r7, #0
	bge _08032876
	movs r3, #0
	ldr r2, [sp, #0x64]
	ldr r0, [sp, #0x60]
	movs r7, #5
_0803288C:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, #2
	adds r0, #2
	subs r7, #1
	cmp r7, #0
	bge _0803288C
	mov r7, r8
	adds r5, r1, r7
	ldrh r0, [r5, #4]
	ldrh r1, [r5]
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	ldrh r0, [r5, #6]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r2, [sp, #0x50]
	str r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x4c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x18
	ldr r6, [sp, #0x4c]
	ldr r0, [r6]
	adds r7, r0, #0
	muls r7, r0, r7
	adds r0, r7, #0
	ldr r2, [sp, #0x50]
	ldr r1, [r2]
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #6
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r5]
	lsls r0, r0, #0xb
	ldr r7, [sp, #0x74]
	str r0, [r7]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0xb
	ldr r1, [sp, #0x78]
	str r0, [r1]
	ldr r1, _0803296C @ =0x0805289C
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r5, r0, #0
	muls r5, r6, r5
	adds r4, #0x40
	lsls r4, r4, #1
	adds r4, r4, r1
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r3, r0, #0
	muls r3, r6, r3
	ldr r2, [sp, #0x78]
	ldr r1, [sp, #0x74]
	movs r7, #4
_08032924:
	ldr r0, [r1]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, [r2]
	adds r0, r0, r3
	str r0, [r2, #4]
	adds r2, #4
	adds r1, #4
	subs r7, #1
	cmp r7, #0
	bge _08032924
	movs r4, #0
	str r4, [sp, #0x6c]
	bl sub_08007544
	cmp r0, #0
	bne _08032954
	bl sub_080075AC
	cmp r0, #0
	bne _08032954
	movs r0, #0x86
	bl PlaySE
_08032954:
	ldr r5, _08032970 @ =0x080FBC10
	ldr r6, [sp, #0x7c]
	lsls r4, r6, #3
	adds r0, r5, #4
	adds r6, r4, r0
	b _08032A02
	.align 2, 0
_08032960: .4byte 0x030063D8
_08032964: .4byte 0x0000FFFF
_08032968: .4byte 0x0300396E
_0803296C: .4byte 0x0805289C
_08032970: .4byte 0x080FBC10
_08032974:
	bl WaitFrame
_08032978:
	bl sub_08007604
	cmp r0, #0
	bne _08032974
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #6
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	ldr r7, [sp, #0x60]
	strh r0, [r7, #2]
	bl sub_08007510
	cmp r0, #0
	bne _080329D6
	bl sub_08007604
	cmp r0, #0
	bne _080329D6
	bl sub_08007544
	cmp r0, #0
	bne _080329D6
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _080329D6
	adds r0, r4, r5
	ldr r1, [r0]
	ldr r2, [r6]
	subs r2, #0xc8
	ldr r0, _080329EC @ =0x03003910
	adds r0, #0x5e
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r2, r2, r0
	ldr r7, [sp, #0x60]
	ldrh r0, [r7]
	str r0, [sp]
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r3, #6
	bl sub_0802706C
_080329D6:
	bl sub_080076A8
	cmp r0, #0
	beq _080329F0
	ldr r1, [sp, #0x60]
	ldrh r0, [r1]
	cmp r0, #6
	bne _080329FE
	movs r2, #5
	str r2, [sp, #0x6c]
	b _080329FE
	.align 2, 0
_080329EC: .4byte 0x03003910
_080329F0:
	ldr r3, [sp, #0x60]
	ldrh r0, [r3, #2]
	cmp r0, #1
	bne _080329FE
	ldr r7, [sp, #0x6c]
	adds r7, #1
	str r7, [sp, #0x6c]
_080329FE:
	bl WaitFrame
_08032A02:
	ldr r0, [sp, #0x6c]
	cmp r0, #4
	bgt _08032A30
	bl sub_08007750
	cmp r0, #0
	bne _08032A30
	bl sub_080074CC
	cmp r0, #0
	bne _08032A30
	ldr r0, _08032A60 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032A30
	bl sub_08007578
	cmp r0, #0
	beq _08032978
_08032A30:
	bl sub_080076A8
	cmp r0, #0
	bne _08032A40
	bl WaitFrame
	bl WaitFrame
_08032A40:
	movs r1, #0
	str r1, [sp, #0x6c]
	bl sub_08007544
	cmp r0, #0
	beq _08032A4E
	b _08032C54
_08032A4E:
	bl sub_080075AC
	cmp r0, #0
	beq _08032A58
	b _08032C54
_08032A58:
	movs r0, #0x82
	bl PlaySE
	b _08032C54
	.align 2, 0
_08032A60: .4byte 0x030063D8
_08032A64:
	movs r7, #0
	ldr r2, [sp, #0x7c]
	lsls r1, r2, #3
	ldr r3, [sp, #0x6c]
	adds r3, #1
	str r3, [sp, #0x98]
	ldr r4, [sp, #0x6c]
	lsls r0, r4, #2
	str r1, [sp, #0x80]
	mov sl, r0
	ldr r0, _08032C8C @ =0x080FBC10
	adds r0, #4
	adds r0, r1, r0
	str r0, [sp, #0x84]
	ldr r6, [sp, #0x78]
	add r6, sl
	str r6, [sp, #0x88]
	ldr r0, [sp, #0x50]
	mov sb, r0
	ldr r1, [sp, #0x4c]
	mov r8, r1
_08032A8E:
	ldr r2, [sp, #0x80]
	ldr r3, _08032C8C @ =0x080FBC10
	adds r0, r2, r3
	ldr r4, [r0]
	lsls r4, r4, #8
	ldr r0, [sp, #0x74]
	add r0, sl
	ldr r6, [r0]
	lsls r0, r7, #0xa
	movs r1, #0x1e
	bl __divsi3
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_080270A4
	ldr r4, [sp, #0x84]
	ldr r1, [r4]
	subs r1, #0xc8
	ldr r6, _08032C90 @ =0x0300396E
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r3, [sp, #0x88]
	ldr r2, [r3]
	mov r0, sb
	adds r3, r5, #0
	bl sub_080270A4
	movs r4, #4
	add sb, r4
	add r8, r4
	adds r7, #1
	cmp r7, #0x1d
	ble _08032A8E
	bl sub_08007604
	cmp r0, #0
	beq _08032AE6
	b _08032C4C
_08032AE6:
	bl sub_08007544
	cmp r0, #0
	beq _08032AF0
	b _08032C4C
_08032AF0:
	bl sub_080075AC
	cmp r0, #0
	beq _08032AFA
	b _08032C4C
_08032AFA:
	mov r6, sp
	adds r6, #0x44
	str r6, [sp, #0x8c]
	mov r7, sp
	adds r7, #0x46
	str r7, [sp, #0x90]
	ldr r0, [sp, #0x50]
	mov sl, r0
	ldr r1, [sp, #0x4c]
	mov sb, r1
	movs r7, #0x1d
_08032B10:
	bl sub_08007510
	cmp r0, #0
	bne _08032B30
	mov r2, sb
	ldr r1, [r2]
	asrs r1, r1, #8
	mov r3, sl
	ldr r2, [r3]
	asrs r2, r2, #8
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x10
	movs r3, #7
	bl sub_0802706C
_08032B30:
	bl GetMultiplayerId
	ldr r4, _08032C94 @ =gPlayers
	mov r8, r4
	movs r5, #0xd4
	muls r0, r5, r0
	mov r1, r8
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r5, r0
	mov r1, r8
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r0, r4, #0
	ldr r2, [sp, #0x8c]
	ldr r3, [sp, #0x90]
	bl sub_08005FC4
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r2, [sp, #0x8c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r2, r0, r1
	mov r4, sl
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #0x1e
	ldr r6, _08032C98 @ =0x03003972
	movs r3, #0
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x90]
	movs r6, #0
	ldrsh r1, [r4, r6]
	subs r1, r0, r1
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08032C3E
	bl sub_08007670
	cmp r0, #0
	bne _08032C3E
	bl sub_08007544
	cmp r0, #0
	bne _08032C3E
	cmp r6, #7
	bhi _08032C3E
	bl GetMultiplayerId
	ldr r3, [sp, #0x48]
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	mov r6, r8
	adds r6, #0x80
	adds r1, r1, r6
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08032C3E
	bl GetMultiplayerId
	muls r0, r5, r0
	add r0, r8
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08032C3E
	bl GetMultiplayerId
	muls r0, r5, r0
	add r0, r8
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	add r0, r8
	adds r0, #0x70
	ldr r1, _08032C9C @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	add r1, r8
	ldr r0, [sp, #0x48]
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	add r1, r8
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r2, [sp, #0x48]
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r6
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_08032C3E:
	movs r3, #4
	add sl, r3
	add sb, r3
	subs r7, #1
	cmp r7, #0
	blt _08032C4C
	b _08032B10
_08032C4C:
	ldr r4, [sp, #0x98]
	str r4, [sp, #0x6c]
	bl WaitFrame
_08032C54:
	ldr r6, [sp, #0x6c]
	cmp r6, #5
	bgt _08032C84
	bl sub_08007750
	cmp r0, #0
	bne _08032C84
	bl sub_080074CC
	cmp r0, #0
	bne _08032C84
	ldr r0, _08032CA0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032C84
	bl sub_08007578
	cmp r0, #0
	bne _08032C84
	b _08032A64
_08032C84:
	movs r7, #0
	str r7, [sp, #0x6c]
	b _08032CC0
	.align 2, 0
_08032C8C: .4byte 0x080FBC10
_08032C90: .4byte 0x0300396E
_08032C94: .4byte gPlayers
_08032C98: .4byte 0x03003972
_08032C9C: .4byte 0x0000FFFE
_08032CA0: .4byte 0x030063D8
_08032CA4:
	ldr r0, [sp, #0x6c]
	adds r0, #1
	str r0, [sp, #0x98]
	b _08032CB0
_08032CAC:
	bl WaitFrame
_08032CB0:
	bl sub_08007604
	cmp r0, #0
	bne _08032CAC
	bl WaitFrame
	ldr r1, [sp, #0x98]
	str r1, [sp, #0x6c]
_08032CC0:
	ldr r2, [sp, #0x6c]
	cmp r2, #4
	bgt _08032CEE
	bl sub_08007750
	cmp r0, #0
	bne _08032CEE
	bl sub_080074CC
	cmp r0, #0
	bne _08032CEE
	ldr r0, _08032D30 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032CEE
	bl sub_08007578
	cmp r0, #0
	beq _08032CA4
_08032CEE:
	movs r3, #0
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x54]
	movs r7, #5
_08032CF8:
	strh r3, [r0]
	strh r3, [r1]
	strh r3, [r2]
	adds r2, #2
	adds r1, #2
	adds r0, #2
	subs r7, #1
	cmp r7, #0
	bge _08032CF8
	movs r3, #0
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x64]
	ldr r0, [sp, #0x60]
	movs r7, #5
_08032D14:
	strh r3, [r0]
	strh r3, [r1]
	strh r3, [r2]
	adds r2, #2
	adds r1, #2
	adds r0, #2
	subs r7, #1
	cmp r7, #0
	bge _08032D14
	movs r3, #0
	str r3, [sp, #0x6c]
	movs r4, #0
	str r4, [sp, #0x70]
	b _0803304C
	.align 2, 0
_08032D30: .4byte 0x030063D8
_08032D34:
	bl WaitFrame
_08032D38:
	bl sub_08007604
	cmp r0, #0
	bne _08032D34
	movs r6, #0
	str r6, [sp, #0x6c]
	movs r7, #5
	mov r0, sp
	adds r0, #0x46
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x5c]
	adds r1, #0xa
	str r1, [sp, #0x9c]
	ldr r2, [sp, #0x54]
	adds r2, #0xa
	mov sl, r2
	movs r3, #0xa
	str r3, [sp, #0xa0]
	ldr r4, [sp, #0x78]
	adds r4, #0x14
	str r4, [sp, #0xa4]
	ldr r6, [sp, #0x74]
	adds r6, #0x14
	str r6, [sp, #0xa8]
_08032D68:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08032D72
	b _08032F2A
_08032D72:
	ldr r2, [sp, #0x70]
	cmp r7, r2
	ble _08032D7A
	b _08032F2A
_08032D7A:
	bl sub_08007510
	cmp r0, #0
	bne _08032DE6
	bl sub_08007604
	cmp r0, #0
	bne _08032DE6
	bl sub_08007544
	cmp r0, #0
	bne _08032DE6
	bl sub_080075AC
	cmp r0, #0
	bne _08032DE6
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
	ldr r3, [sp, #0xa8]
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r4, [sp, #0xa4]
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r1, #0x1e
	ldr r6, _080330D0 @ =0x03003972
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	mov r4, sl
	ldrh r3, [r4]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08004344
_08032DE6:
	ldr r6, [sp, #0x58]
	ldr r0, [sp, #0xa0]
	adds r3, r6, r0
	movs r1, #0
	str r1, [sp]
	add r0, sp, #0x10
	movs r1, #0xa
	mov r2, sl
	bl sub_08026C40
	ldr r2, [sp, #0x9c]
	strh r0, [r2]
	bl GetMultiplayerId
	ldr r3, _080330D4 @ =gPlayers
	mov sb, r3
	movs r4, #0xd4
	mov r8, r4
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	mov r1, sb
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, sb
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0x94]
	bl sub_08005FC4
	ldr r3, [sp, #0xa8]
	ldr r0, [r3]
	asrs r0, r0, #8
	movs r4, #0
	ldrsh r1, [r5, r4]
	subs r2, r0, r1
	ldr r6, [sp, #0xa4]
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, #0x1e
	ldr r3, _080330D0 @ =0x03003972
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r6, [sp, #0x94]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, r0, r1
	adds r0, r2, #0
	muls r0, r2, r0
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08032F2A
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #6
	bhi _08032F2A
	bl sub_08007544
	cmp r0, #0
	bne _08032F2A
	cmp r6, #0xf
	bhi _08032F2A
	bl GetMultiplayerId
	ldr r2, [sp, #0x48]
	ldrh r1, [r2]
	lsls r1, r1, #2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	mov r5, sb
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	beq _08032F2A
	bl GetMultiplayerId
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	add r0, sb
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08032F2A
	bl GetMultiplayerId
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	add r0, sb
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sb
	adds r0, #0x70
	ldr r1, _080330D8 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	add r1, sb
	ldr r0, [sp, #0x48]
	bl CalcDamageToPlayer
	mov r1, r8
	muls r1, r4, r1
	add r1, sb
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r3, [sp, #0x48]
	ldrh r1, [r3]
	lsls r1, r1, #2
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x2c]
	str r0, [r1]
_08032F2A:
	ldr r6, [sp, #0x9c]
	subs r6, #2
	str r6, [sp, #0x9c]
	movs r0, #2
	rsbs r0, r0, #0
	add sl, r0
	ldr r1, [sp, #0xa0]
	subs r1, #2
	str r1, [sp, #0xa0]
	ldr r2, [sp, #0xa4]
	subs r2, #4
	str r2, [sp, #0xa4]
	ldr r3, [sp, #0xa8]
	subs r3, #4
	str r3, [sp, #0xa8]
	subs r7, #1
	cmp r7, #0
	blt _08032F50
	b _08032D68
_08032F50:
	movs r7, #5
	ldr r4, _080330D4 @ =gPlayers
	mov sl, r4
	movs r6, #0xa
	mov sb, r6
	ldr r0, [sp, #0x64]
	adds r0, #0xa
	mov r8, r0
	ldr r6, [sp, #0x60]
	adds r6, #0xa
	ldr r5, [sp, #0x68]
	adds r5, #0xa
_08032F68:
	ldr r0, [sp, #0x5c]
	add r0, sb
	ldrh r4, [r0]
	cmp r4, #1
	bne _08033018
	ldrh r0, [r5]
	cmp r0, #0
	bne _0803301E
	bl sub_08007510
	cmp r0, #0
	bne _08032FCC
	bl sub_08007604
	cmp r0, #0
	bne _08032FCC
	bl sub_08007544
	cmp r0, #0
	bne _08032FCC
	bl sub_080075AC
	cmp r0, #0
	bne _08032FCC
	lsls r1, r7, #2
	ldr r2, [sp, #0x74]
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r3, [sp, #0x78]
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	adds r1, #0x1e
	ldr r2, _080330D0 @ =0x03003972
	movs r3, #0
	ldrsh r2, [r2, r3]
	mov ip, r2
	add r1, ip
	ldrh r3, [r6]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08004344
_08032FCC:
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #8
	adds r2, r6, #0
	mov r3, r8
	bl sub_08026C40
	strh r0, [r5]
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	mov r1, sl
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	movs r2, #0xd4
	muls r0, r2, r0
	ldr r3, _080330DC @ =0x030045DC
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08005FC4
_08033018:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08033024
_0803301E:
	ldr r1, [sp, #0x6c]
	adds r1, #1
	str r1, [sp, #0x6c]
_08033024:
	movs r2, #2
	rsbs r2, r2, #0
	add sb, r2
	add r8, r2
	subs r6, #2
	subs r5, #2
	subs r7, #1
	cmp r7, #0
	bge _08032F68
	ldr r0, _080330E0 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08033048
	ldr r3, [sp, #0x70]
	adds r3, #1
	str r3, [sp, #0x70]
_08033048:
	bl WaitFrame
_0803304C:
	ldr r4, [sp, #0x6c]
	cmp r4, #5
	bgt _0803307C
	bl sub_08007750
	cmp r0, #0
	bne _0803307C
	bl sub_080074CC
	cmp r0, #0
	bne _0803307C
	ldr r0, _080330E4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803307C
	bl sub_08007578
	cmp r0, #0
	bne _0803307C
	b _08032D38
_0803307C:
	ldr r0, [sp, #0x4c]
	bl Free
	ldr r0, [sp, #0x50]
	bl Free
	ldr r0, [sp, #0x54]
	bl Free
	ldr r0, [sp, #0x58]
	bl Free
	ldr r0, [sp, #0x60]
	bl Free
	ldr r0, [sp, #0x64]
	bl Free
	ldr r0, [sp, #0x5c]
	bl Free
	ldr r0, [sp, #0x68]
	bl Free
	ldr r0, [sp, #0x74]
	bl Free
	ldr r0, [sp, #0x78]
	bl Free
	movs r6, #0
	bl GetCurrentThread
	str r6, [r0, #8]
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330D0: .4byte 0x03003972
_080330D4: .4byte gPlayers
_080330D8: .4byte 0x0000FFFE
_080330DC: .4byte 0x030045DC
_080330E0: .4byte gFrameCounter
_080330E4: .4byte 0x030063D8

	thumb_func_start sub_080330E8
sub_080330E8: @ 0x080330E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	str r0, [sp, #0x5c]
	ldr r0, _08033168 @ =0x0000FFFF
	ands r1, r0
	str r1, [sp, #0x60]
	ldr r0, _0803316C @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	str r2, [sp, #0x68]
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x80]
	cmp r2, r0
	bge _08033132
	str r0, [sp, #0x68]
	adds r2, r0, #0
_08033118:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08033124
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x64]
_08033124:
	ldr r4, [sp, #0x68]
	subs r4, #1
	str r4, [sp, #0x68]
	adds r1, #8
	cmp r4, #0
	bne _08033118
	str r2, [sp, #0x68]
_08033132:
	ldr r0, [sp, #0x5c]
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	bl sub_080076A8
	cmp r0, #0
	beq _08033170
	movs r0, #0x1e
	ldr r1, [sp, #0x80]
	strh r0, [r1]
	movs r0, #0xf
	strh r0, [r1, #2]
	movs r0, #0x14
	strh r0, [r1, #4]
	b _0803317E
	.align 2, 0
_08033168: .4byte 0x0000FFFF
_0803316C: .4byte 0x030063D8
_08033170:
	movs r0, #0x3c
	ldr r2, [sp, #0x80]
	strh r0, [r2]
	movs r0, #0x1e
	strh r0, [r2, #2]
	movs r0, #0x28
	strh r0, [r2, #4]
_0803317E:
	ldr r3, [sp, #0x60]
	lsls r6, r3, #0x10
	b _08033224
_08033184:
	bl WaitFrame
_08033188:
	bl sub_08007604
	cmp r0, #0
	bne _08033184
	ldr r4, [sp, #0x5c]
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	bne _0803319C
	bl _08033BF6
_0803319C:
	ldr r1, [sp, #0x60]
	lsls r0, r1, #2
	ldr r2, [sp, #0x64]
	adds r0, r0, r2
	adds r5, r0, #0
	adds r5, #0x20
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #3
	ldr r3, [sp, #0x60]
	lsls r0, r3, #3
	adds r0, r0, r2
	adds r4, r0, #0
	adds r4, #0x10
	ldrh r2, [r0, #0x10]
	lsls r2, r2, #3
	add r0, sp, #0x54
	movs r3, #0
	bl sub_080270A4
	ldrh r1, [r5, #2]
	lsls r1, r1, #3
	ldrh r2, [r4, #2]
	lsls r2, r2, #3
	add r0, sp, #0x58
	movs r3, #0
	bl sub_080270A4
	bl sub_08007510
	cmp r0, #0
	bne _0803321A
	bl sub_08007604
	cmp r0, #0
	bne _0803321A
	bl sub_08007544
	cmp r0, #0
	bne _0803321A
	bl sub_080075AC
	cmp r0, #0
	bne _0803321A
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _08033278 @ =0x03003910
	adds r2, #0x62
	movs r4, #0
	ldrsh r2, [r2, r4]
	adds r1, r1, r2
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	lsrs r2, r6, #0x10
	movs r3, #0
	bl sub_08004344
_0803321A:
	ldr r0, [sp, #0x68]
	adds r0, #1
	str r0, [sp, #0x68]
	bl WaitFrame
_08033224:
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x80]
	ldrh r1, [r1]
	cmp r2, r1
	bge _08033256
	bl sub_08007750
	cmp r0, #0
	bne _08033256
	bl sub_080074CC
	cmp r0, #0
	bne _08033256
	ldr r0, _0803327C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033256
	bl sub_08007578
	cmp r0, #0
	beq _08033188
_08033256:
	movs r2, #0
	str r2, [sp, #0x68]
	bl sub_08007544
	cmp r0, #0
	bne _08033270
	bl sub_080075AC
	cmp r0, #0
	bne _08033270
	movs r0, #0x83
	bl PlaySE
_08033270:
	mov r3, sp
	adds r3, #0x52
	str r3, [sp, #0x6c]
	b _08033464
	.align 2, 0
_08033278: .4byte 0x03003910
_0803327C: .4byte 0x030063D8
_08033280:
	bl WaitFrame
_08033284:
	bl sub_08007604
	cmp r0, #0
	bne _08033280
	ldr r4, [sp, #0x5c]
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	bne _08033298
	bl _08033BF6
_08033298:
	add r6, sp, #0x54
	ldr r1, [sp, #0x60]
	lsls r0, r1, #2
	ldr r2, [sp, #0x64]
	adds r0, r0, r2
	movs r3, #0x20
	adds r3, r3, r0
	mov sl, r3
	ldrh r5, [r0, #0x20]
	lsls r5, r5, #3
	lsls r0, r1, #3
	adds r0, r0, r2
	movs r4, #0x10
	adds r4, r4, r0
	mov sb, r4
	ldrh r4, [r0, #0x10]
	lsls r4, r4, #3
	ldr r0, [sp, #0x68]
	lsls r0, r0, #0xa
	mov r8, r0
	ldr r2, [sp, #0x80]
	ldrh r1, [r2]
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080270A4
	add r6, sp, #0x58
	mov r3, sl
	ldrh r5, [r3, #2]
	lsls r5, r5, #3
	mov r0, sb
	ldrh r4, [r0, #2]
	lsls r4, r4, #3
	ldr r2, [sp, #0x80]
	ldrh r1, [r2]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080270A4
	bl sub_08007510
	cmp r0, #0
	bne _08033344
	bl sub_08007604
	cmp r0, #0
	bne _08033344
	bl sub_08007544
	cmp r0, #0
	bne _08033344
	bl sub_080075AC
	cmp r0, #0
	bne _08033344
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _080334B0 @ =0x03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x60]
	lsls r2, r4, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033344:
	ldr r1, [sp, #0x80]
	ldrh r0, [r1]
	ldr r2, [sp, #0x68]
	subs r0, r0, r2
	movs r1, #3
	bl __divsi3
	cmp r0, #0
	bne _08033358
	movs r0, #1
_08033358:
	ldr r3, [sp, #0x68]
	adds r3, r3, r0
	str r3, [sp, #0x68]
	bl GetMultiplayerId
	ldr r7, _080334B4 @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x50
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0x6c]
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x54]
	subs r2, r2, r0
	str r2, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r0, _080334B0 @ =0x03003910
	adds r0, #0x62
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	ldr r4, [sp, #0x6c]
	movs r3, #0
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	str r1, [sp, #0x58]
	adds r0, r2, #0
	muls r0, r2, r0
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08033460
	bl sub_08007544
	cmp r0, #0
	bne _08033460
	cmp r4, #0x1f
	bhi _08033460
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	beq _08033460
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08033460
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _080334B8 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldr r0, [sp, #0x5c]
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r4, [sp, #0x5c]
	ldrh r1, [r4]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r4, #0x2c]
	str r0, [r1]
_08033460:
	bl WaitFrame
_08033464:
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #0x80]
	ldrh r0, [r0]
	cmp r1, r0
	bge _08033498
	bl sub_08007750
	cmp r0, #0
	bne _08033498
	bl sub_080074CC
	cmp r0, #0
	bne _08033498
	ldr r0, _080334BC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033498
	bl sub_08007578
	cmp r0, #0
	bne _08033498
	b _08033284
_08033498:
	movs r1, #0
	str r1, [sp, #0x68]
	ldr r2, [sp, #0x60]
	lsls r0, r2, #3
	ldr r3, [sp, #0x64]
	adds r4, r0, r3
	adds r6, r4, #0
	adds r6, #0x10
	adds r5, r4, #0
	adds r5, #0x14
	b _0803354C
	.align 2, 0
_080334B0: .4byte 0x03003910
_080334B4: .4byte gPlayers
_080334B8: .4byte 0x0000FFFE
_080334BC: .4byte 0x030063D8
_080334C0:
	bl WaitFrame
_080334C4:
	bl sub_08007604
	cmp r0, #0
	bne _080334C0
	ldr r1, [sp, #0x5c]
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _080334D6
	b _08033BF6
_080334D6:
	ldrh r1, [r4, #0x10]
	lsls r1, r1, #3
	ldrh r2, [r4, #0x14]
	lsls r2, r2, #3
	add r0, sp, #0x54
	movs r3, #0
	bl sub_080270A4
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	ldrh r2, [r5, #2]
	lsls r2, r2, #3
	add r0, sp, #0x58
	movs r3, #0
	bl sub_080270A4
	bl sub_08007510
	cmp r0, #0
	bne _08033542
	bl sub_08007604
	cmp r0, #0
	bne _08033542
	bl sub_08007544
	cmp r0, #0
	bne _08033542
	bl sub_080075AC
	cmp r0, #0
	bne _08033542
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _080335A0 @ =0x03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r3, [sp, #0x60]
	lsls r2, r3, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033542:
	ldr r0, [sp, #0x68]
	adds r0, #1
	str r0, [sp, #0x68]
	bl WaitFrame
_0803354C:
	ldr r1, [sp, #0x80]
	ldrh r0, [r1, #2]
	ldr r2, [sp, #0x68]
	cmp r2, r0
	bge _0803357E
	bl sub_08007750
	cmp r0, #0
	bne _0803357E
	bl sub_080074CC
	cmp r0, #0
	bne _0803357E
	ldr r0, _080335A4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803357E
	bl sub_08007578
	cmp r0, #0
	beq _080334C4
_0803357E:
	movs r3, #0
	str r3, [sp, #0x68]
	bl sub_08007544
	cmp r0, #0
	bne _08033598
	bl sub_080075AC
	cmp r0, #0
	bne _08033598
	movs r0, #0x84
	bl PlaySE
_08033598:
	mov r4, sp
	adds r4, #0x52
	str r4, [sp, #0x70]
	b _08033774
	.align 2, 0
_080335A0: .4byte 0x03003910
_080335A4: .4byte 0x030063D8
_080335A8:
	bl WaitFrame
_080335AC:
	bl sub_08007604
	cmp r0, #0
	bne _080335A8
	ldr r1, [sp, #0x5c]
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _080335BE
	b _08033BF6
_080335BE:
	add r6, sp, #0x54
	ldr r2, [sp, #0x60]
	lsls r0, r2, #3
	ldr r3, [sp, #0x64]
	adds r0, r0, r3
	movs r4, #0x10
	adds r4, r4, r0
	mov sl, r4
	ldrh r5, [r0, #0x10]
	lsls r5, r5, #3
	movs r1, #0x14
	adds r1, r1, r0
	mov sb, r1
	ldrh r4, [r0, #0x14]
	lsls r4, r4, #3
	ldr r2, [sp, #0x68]
	lsls r2, r2, #0xa
	mov r8, r2
	ldr r3, [sp, #0x80]
	ldrh r1, [r3]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080270A4
	add r6, sp, #0x58
	mov r4, sl
	ldrh r5, [r4, #2]
	lsls r5, r5, #3
	mov r0, sb
	ldrh r4, [r0, #2]
	lsls r4, r4, #3
	ldr r2, [sp, #0x80]
	ldrh r1, [r2]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080270A4
	bl sub_08007510
	cmp r0, #0
	bne _08033668
	bl sub_08007604
	cmp r0, #0
	bne _08033668
	bl sub_08007544
	cmp r0, #0
	bne _08033668
	bl sub_080075AC
	cmp r0, #0
	bne _08033668
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _080337C8 @ =0x03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x60]
	lsls r2, r4, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033668:
	ldr r0, [sp, #0x68]
	adds r0, #2
	str r0, [sp, #0x68]
	bl GetMultiplayerId
	ldr r7, _080337CC @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x50
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0x70]
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r2, [sp, #0x54]
	subs r2, r2, r0
	str r2, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r0, _080337C8 @ =0x03003910
	adds r0, #0x62
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	ldr r3, [sp, #0x70]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r1, r1, r0
	str r1, [sp, #0x58]
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08033770
	bl sub_08007544
	cmp r0, #0
	bne _08033770
	cmp r4, #0x1f
	bhi _08033770
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08033770
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08033770
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _080337D0 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldr r0, [sp, #0x5c]
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_08033770:
	bl WaitFrame
_08033774:
	ldr r4, [sp, #0x68]
	ldr r3, [sp, #0x80]
	ldrh r3, [r3]
	cmp r4, r3
	bge _080337A8
	bl sub_08007750
	cmp r0, #0
	bne _080337A8
	bl sub_080074CC
	cmp r0, #0
	bne _080337A8
	ldr r0, _080337D4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080337A8
	bl sub_08007578
	cmp r0, #0
	bne _080337A8
	b _080335AC
_080337A8:
	bl sub_08007544
	cmp r0, #0
	bne _080337BE
	bl sub_080075AC
	cmp r0, #0
	bne _080337BE
	movs r0, #0x84
	bl PlaySE
_080337BE:
	mov r4, sp
	adds r4, #0x52
	str r4, [sp, #0x74]
	b _080339A4
	.align 2, 0
_080337C8: .4byte 0x03003910
_080337CC: .4byte gPlayers
_080337D0: .4byte 0x0000FFFE
_080337D4: .4byte 0x030063D8
_080337D8:
	bl WaitFrame
_080337DC:
	bl sub_08007604
	cmp r0, #0
	bne _080337D8
	ldr r1, [sp, #0x5c]
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _080337EE
	b _08033BF6
_080337EE:
	add r6, sp, #0x54
	ldr r2, [sp, #0x60]
	lsls r0, r2, #3
	ldr r3, [sp, #0x64]
	adds r0, r0, r3
	movs r4, #0x10
	adds r4, r4, r0
	mov sl, r4
	ldrh r5, [r0, #0x10]
	lsls r5, r5, #3
	movs r1, #0x14
	adds r1, r1, r0
	mov sb, r1
	ldrh r4, [r0, #0x14]
	lsls r4, r4, #3
	ldr r2, [sp, #0x68]
	lsls r2, r2, #0xa
	mov r8, r2
	ldr r3, [sp, #0x80]
	ldrh r1, [r3]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080270A4
	add r6, sp, #0x58
	mov r4, sl
	ldrh r5, [r4, #2]
	lsls r5, r5, #3
	mov r0, sb
	ldrh r4, [r0, #2]
	lsls r4, r4, #3
	ldr r2, [sp, #0x80]
	ldrh r1, [r2]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080270A4
	bl sub_08007510
	cmp r0, #0
	bne _08033898
	bl sub_08007604
	cmp r0, #0
	bne _08033898
	bl sub_08007544
	cmp r0, #0
	bne _08033898
	bl sub_080075AC
	cmp r0, #0
	bne _08033898
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _080339EC @ =0x03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x60]
	lsls r2, r4, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033898:
	ldr r0, [sp, #0x68]
	subs r0, #2
	str r0, [sp, #0x68]
	bl GetMultiplayerId
	ldr r7, _080339F0 @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x50
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0x74]
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r2, [sp, #0x54]
	subs r2, r2, r0
	str r2, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r0, _080339EC @ =0x03003910
	adds r0, #0x62
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	ldr r3, [sp, #0x74]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r1, r1, r0
	str r1, [sp, #0x58]
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _080339A0
	bl sub_08007544
	cmp r0, #0
	bne _080339A0
	cmp r4, #0x1f
	bhi _080339A0
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _080339A0
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080339A0
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _080339F4 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldr r0, [sp, #0x5c]
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_080339A0:
	bl WaitFrame
_080339A4:
	ldr r3, [sp, #0x68]
	cmp r3, #0
	ble _080339D4
	bl sub_08007750
	cmp r0, #0
	bne _080339D4
	bl sub_080074CC
	cmp r0, #0
	bne _080339D4
	ldr r0, _080339F8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080339D4
	bl sub_08007578
	cmp r0, #0
	bne _080339D4
	b _080337DC
_080339D4:
	movs r4, #0
	str r4, [sp, #0x68]
	ldr r1, [sp, #0x60]
	lsls r0, r1, #3
	ldr r2, [sp, #0x64]
	adds r4, r0, r2
	adds r6, r4, #0
	adds r6, #0x10
	adds r5, r4, #0
	adds r5, #0x14
	b _08033A88
	.align 2, 0
_080339EC: .4byte 0x03003910
_080339F0: .4byte gPlayers
_080339F4: .4byte 0x0000FFFE
_080339F8: .4byte 0x030063D8
_080339FC:
	bl WaitFrame
_08033A00:
	bl sub_08007604
	cmp r0, #0
	bne _080339FC
	ldr r3, [sp, #0x5c]
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	bne _08033A12
	b _08033BF6
_08033A12:
	ldrh r1, [r4, #0x10]
	lsls r1, r1, #3
	ldrh r2, [r4, #0x14]
	lsls r2, r2, #3
	add r0, sp, #0x54
	movs r3, #0
	bl sub_080270A4
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	ldrh r2, [r5, #2]
	lsls r2, r2, #3
	add r0, sp, #0x58
	movs r3, #0
	bl sub_080270A4
	bl sub_08007510
	cmp r0, #0
	bne _08033A7E
	bl sub_08007604
	cmp r0, #0
	bne _08033A7E
	bl sub_08007544
	cmp r0, #0
	bne _08033A7E
	bl sub_080075AC
	cmp r0, #0
	bne _08033A7E
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _08033AEC @ =0x03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r3, [sp, #0x60]
	lsls r2, r3, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033A7E:
	ldr r0, [sp, #0x68]
	adds r0, #1
	str r0, [sp, #0x68]
	bl WaitFrame
_08033A88:
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x80]
	ldrh r1, [r1, #4]
	cmp r2, r1
	bge _08033ABA
	bl sub_08007750
	cmp r0, #0
	bne _08033ABA
	bl sub_080074CC
	cmp r0, #0
	bne _08033ABA
	ldr r0, _08033AF0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033ABA
	bl sub_08007578
	cmp r0, #0
	beq _08033A00
_08033ABA:
	ldr r2, [sp, #0x80]
	ldrh r2, [r2]
	str r2, [sp, #0x68]
	bl sub_08007544
	cmp r0, #0
	bne _08033AD6
	bl sub_080075AC
	cmp r0, #0
	bne _08033AD6
	movs r0, #0x83
	bl PlaySE
_08033AD6:
	mov r3, sp
	adds r3, #0x54
	str r3, [sp, #0x78]
	ldr r7, [sp, #0x80]
	mov r4, sp
	adds r4, #0x58
	str r4, [sp, #0x7c]
	ldr r0, [sp, #0x60]
	lsls r0, r0, #0x10
	mov sl, r0
	b _08033BBA
	.align 2, 0
_08033AEC: .4byte 0x03003910
_08033AF0: .4byte 0x030063D8
_08033AF4:
	ldr r1, [sp, #0x5c]
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	beq _08033BF6
	ldr r2, [sp, #0x60]
	lsls r0, r2, #2
	ldr r3, [sp, #0x64]
	adds r0, r0, r3
	movs r4, #0x20
	adds r4, r4, r0
	mov sb, r4
	ldrh r5, [r0, #0x20]
	lsls r5, r5, #3
	lsls r0, r2, #3
	adds r0, r0, r3
	movs r1, #0x10
	adds r1, r1, r0
	mov r8, r1
	ldrh r4, [r0, #0x10]
	lsls r4, r4, #3
	ldr r2, [sp, #0x68]
	lsls r6, r2, #0xa
	ldrh r1, [r7]
	adds r0, r6, #0
	bl __divsi3
	adds r3, r0, #0
	ldr r0, [sp, #0x78]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080270A4
	mov r3, sb
	ldrh r5, [r3, #2]
	lsls r5, r5, #3
	mov r0, r8
	ldrh r4, [r0, #2]
	lsls r4, r4, #3
	ldrh r1, [r7]
	adds r0, r6, #0
	bl __divsi3
	adds r3, r0, #0
	ldr r0, [sp, #0x7c]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080270A4
	bl sub_08007510
	cmp r0, #0
	bne _08033B9E
	bl sub_08007604
	cmp r0, #0
	bne _08033B9E
	bl sub_08007544
	cmp r0, #0
	bne _08033B9E
	bl sub_080075AC
	cmp r0, #0
	bne _08033B9E
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _08033BFC @ =0x03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r4, sl
	lsrs r2, r4, #0x10
	movs r3, #0
	bl sub_08004344
_08033B9E:
	ldr r1, [sp, #0x68]
	rsbs r0, r1, #0
	movs r1, #3
	bl __divsi3
	cmp r0, #0
	bne _08033BB0
	movs r0, #1
	rsbs r0, r0, #0
_08033BB0:
	ldr r2, [sp, #0x68]
	adds r2, r2, r0
	str r2, [sp, #0x68]
	bl WaitFrame
_08033BBA:
	ldr r3, [sp, #0x68]
	cmp r3, #0
	ble _08033BE8
	bl sub_08007750
	cmp r0, #0
	bne _08033BE8
	bl sub_080074CC
	cmp r0, #0
	bne _08033BE8
	ldr r0, _08033C00 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033BE8
	bl sub_08007578
	cmp r0, #0
	beq _08033AF4
_08033BE8:
	bl GetCurrentThread
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	bl ThreadExit
_08033BF6:
	movs r4, #0
	str r4, [sp, #0x68]
	b _08033C76
	.align 2, 0
_08033BFC: .4byte 0x03003910
_08033C00: .4byte 0x030063D8
_08033C04:
	ldr r5, [sp, #0x68]
	adds r5, #1
	b _08033C0E
_08033C0A:
	bl WaitFrame
_08033C0E:
	bl sub_08007604
	cmp r0, #0
	bne _08033C0A
	movs r0, #7
	ldr r1, [sp, #0x68]
	ands r0, r1
	cmp r0, #0
	bne _08033C70
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08033C30
	adds r0, #0xf
_08033C30:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	adds r4, r1, r0
	bl Random
	ldr r2, [sp, #0x58]
	adds r2, #0x1e
	ldr r1, _08033CC0 @ =0x03003910
	adds r1, #0x62
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08033C5C
	adds r1, #0xf
_08033C5C:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
_08033C70:
	str r5, [sp, #0x68]
	bl WaitFrame
_08033C76:
	ldr r4, [sp, #0x68]
	cmp r4, #0x3b
	bgt _08033CA4
	bl sub_08007750
	cmp r0, #0
	bne _08033CA4
	bl sub_080074CC
	cmp r0, #0
	bne _08033CA4
	ldr r0, _08033CC4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033CA4
	bl sub_08007578
	cmp r0, #0
	beq _08033C04
_08033CA4:
	bl GetCurrentThread
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033CC0: .4byte 0x03003910
_08033CC4: .4byte 0x030063D8

	thumb_func_start sub_08033CC8
sub_08033CC8: @ 0x08033CC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	lsrs r4, r1, #0x10
	ldr r1, _08033DEC @ =0x0010002C
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #8
	movs r2, #5
	bl sub_08026ADC
	bl sub_08007510
	cmp r0, #0
	bne _08033D14
	bl sub_08007604
	cmp r0, #0
	bne _08033D14
	bl sub_08007544
	cmp r0, #0
	bne _08033D14
	bl sub_080075AC
	cmp r0, #0
	bne _08033D14
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [sp, #0x14]
	adds r1, #0x20
	movs r2, #1
	bl LoadPalette
_08033D14:
	add r1, sp, #8
	movs r2, #0
	movs r0, #5
	strb r0, [r1, #0x1c]
	adds r0, r1, #0
	strb r4, [r0, #0x1d]
	lsrs r0, r7, #0x10
	mov sl, r0
	add r1, sp, #0x40
	strh r2, [r1]
	mov r0, sp
	adds r0, #0x42
	strh r2, [r0]
	add r6, sp, #0x3c
	mov r5, sp
	adds r5, #0x3e
	mov r8, r1
	lsls r7, r7, #0x10
	mov sb, r7
	movs r7, #0
_08033D3C:
	mov r2, sl
	lsls r1, r2, #0x10
	movs r0, #0x30
	str r0, [sp]
	str r7, [sp, #4]
	mov r3, sb
	asrs r0, r3, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	str r7, [sp]
	add r0, sp, #8
	movs r1, #0xa
	mov r2, r8
	mov r3, sp
	adds r3, #0x42
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08033DA2
	bl sub_08007604
	cmp r0, #0
	bne _08033DA2
	bl sub_08007544
	cmp r0, #0
	bne _08033DA2
	bl sub_080075AC
	cmp r0, #0
	bne _08033DA2
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r3, #0
	ldrsh r2, [r5, r3]
	mov r3, r8
	ldrh r0, [r3]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	add r0, sp, #8
	movs r3, #0xa
	bl sub_0802706C
_08033DA2:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08033DD2
	bl sub_080074CC
	cmp r0, #0
	bne _08033DD2
	ldr r0, _08033DF0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033DD2
	bl sub_08007578
	cmp r0, #0
	bne _08033DD2
	cmp r4, #0
	beq _08033D3C
_08033DD2:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033DEC: .4byte 0x0010002C
_08033DF0: .4byte 0x030063D8

	thumb_func_start sub_08033DF4
sub_08033DF4: @ 0x08033DF4
	push {r4, lr}
	ldr r4, _08033E1C @ =0x03006810
	movs r0, #0x96
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_08033E08:
	ldr r0, [r4]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #0x1d
	bls _08033E08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08033E1C: .4byte 0x03006810

	thumb_func_start sub_08033E20
sub_08033E20: @ 0x08033E20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08033E34 @ =0x03006810
	ldr r0, [r0]
	mov r8, r0
	movs r4, #0
_08033E2E:
	lsls r6, r4, #2
	adds r7, r4, #1
	b _08033E3C
	.align 2, 0
_08033E34: .4byte 0x03006810
_08033E38:
	bl WaitFrame
_08033E3C:
	adds r0, r6, r4
	lsls r0, r0, #3
	add r0, r8
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _08033E38
	adds r4, r7, #0
	cmp r4, #0x1d
	bls _08033E2E
	ldr r4, _08033E68 @ =0x03006810
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033E68: .4byte 0x03006810

	thumb_func_start sub_08033E6C
sub_08033E6C: @ 0x08033E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r7, r1, #0
	mov r8, r2
	ldr r0, _08033E84 @ =0x03006810
	ldr r4, [r0]
	movs r6, #0
	b _08033E8C
	.align 2, 0
_08033E84: .4byte 0x03006810
_08033E88:
	adds r6, #1
	adds r4, #0x28
_08033E8C:
	cmp r6, #0x1d
	bhi _08033ED0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _08033E88
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _08033E88
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	ldr r1, _08033EDC @ =sub_08033CC8
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	lsls r1, r7, #0x10
	mov r2, sb
	orrs r1, r2
	mov r2, r8
	lsls r0, r2, #0x10
	orrs r6, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CreateThread
_08033ED0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033EDC: .4byte sub_08033CC8

	thumb_func_start sub_08033EE0
sub_08033EE0: @ 0x08033EE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r0, _08033EF4 @ =0x03006814
	ldr r4, [r0]
	movs r6, #0
	b _08033EFC
	.align 2, 0
_08033EF4: .4byte 0x03006814
_08033EF8:
	adds r6, #1
	adds r4, #0x28
_08033EFC:
	cmp r6, #1
	bhi _08033F38
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _08033EF8
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _08033EF8
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	ldr r1, _08033F44 @ =sub_0803279C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	lsls r2, r6, #0x10
	orrs r2, r7
	adds r0, r4, #0
	mov r1, r8
	bl CreateThread
_08033F38:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033F44: .4byte sub_0803279C

	thumb_func_start sub_08033F48
sub_08033F48: @ 0x08033F48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r0, _08033F5C @ =0x03006814
	ldr r4, [r0]
	adds r4, #0x50
	movs r6, #2
	b _08033F64
	.align 2, 0
_08033F5C: .4byte 0x03006814
_08033F60:
	adds r6, #1
	adds r4, #0x28
_08033F64:
	cmp r6, #3
	bhi _08033FA0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _08033F60
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _08033F60
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	ldr r1, _08033FAC @ =sub_080330E8
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	lsls r2, r6, #0x10
	orrs r2, r7
	adds r0, r4, #0
	mov r1, r8
	bl CreateThread
_08033FA0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033FAC: .4byte sub_080330E8

	thumb_func_start sub_08033FB0
sub_08033FB0: @ 0x08033FB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf8
	adds r7, r0, #0
	ldr r0, _08033FF0 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r5, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r2, sp
	adds r2, #0x80
	str r2, [sp, #0xf4]
	mov r3, sp
	adds r3, #0x7e
	str r3, [sp, #0xf0]
	mov r6, sp
	adds r6, #0x7c
	str r6, [sp, #0xec]
	cmp r5, r0
	bhs _08034006
	adds r2, r0, #0
_08033FE2:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _08033FF4
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _08033FFE
	.align 2, 0
_08033FF0: .4byte 0x030063D8
_08033FF4:
	cmp r0, #3
	bne _08033FFE
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x90]
_08033FFE:
	adds r5, #1
	adds r1, #8
	cmp r5, r2
	blo _08033FE2
_08034006:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x8c]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	strh r0, [r7, #2]
	ldrh r0, [r4]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _0803417C @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x8c]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0xd8]
	strh r2, [r6]
	movs r0, #0x4a
	adds r0, r0, r7
	mov sb, r0
	strh r2, [r0]
	movs r1, #0x4c
	adds r1, r1, r7
	mov r8, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r2, #0x72
	adds r2, r2, r7
	mov sl, r2
	ldrh r4, [r2]
	ldr r6, _08034180 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r3, sl
	strh r4, [r3]
	adds r4, r7, #0
	adds r4, #0x6e
	str r4, [sp, #0xdc]
	ldrh r4, [r4]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	ldr r6, [sp, #0xdc]
	strh r4, [r6]
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #0x28]
	ldrh r1, [r2, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
	ldr r3, [sp, #0x8c]
	ldr r1, [r3, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x98]
	adds r0, #0x15
	ldr r4, [sp, #0x8c]
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x98]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x98]
	adds r0, #6
	strb r0, [r1, #0x1d]
	bl sub_08033DF4
	bl sub_08035678
	bl sub_08035740
	bl sub_080312E0
	bl sub_08007544
	ldr r6, [sp, #0xd8]
	str r6, [sp, #0xe0]
	mov r1, sb
	str r1, [sp, #0xe4]
	mov r2, r8
	str r2, [sp, #0xe8]
	cmp r0, #0
	bne _08034170
	bl sub_080075AC
	cmp r0, #0
	bne _08034170
	ldr r5, _08034184 @ =gPlayers
	movs r4, #0xd4
_0803413C:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _0803413C
	bl GetMultiplayerId
	ldr r5, _08034184 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	strh r1, [r0, #0xa]
_08034170:
	ldr r0, [sp, #0xf4]
	movs r1, #0x1f
	bl sub_0802934C
	b _0803418C
	.align 2, 0
_0803417C: .4byte 0x03003910
_08034180: .4byte 0x080FB740
_08034184: .4byte gPlayers
_08034188:
	bl WaitFrame
_0803418C:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _08034188
	ldr r3, _080341D4 @ =0x0000FFFF
	str r3, [sp, #0xa0]
	movs r4, #1
	str r4, [sp, #0xac]
	movs r6, #0
	mov sb, r6
	mov sl, r6
	movs r0, #0
	str r0, [sp, #0xc4]
	mov r2, sb
	ldr r1, [sp, #0xf0]
	strh r2, [r1]
	ldr r3, [sp, #0xec]
	strh r2, [r3]
	movs r4, #0
	str r4, [sp, #0xc0]
	str r6, [sp, #0xcc]
	str r0, [sp, #0xd0]

	non_word_aligned_thumb_func_start sub_080341B6
sub_080341B6: @ 0x080341B6
	bl sub_080271D0
	cmp r0, #0
	beq _080341C0
	b _0803497A
_080341C0:
	mov r1, sb
	cmp r1, #0x1a
	bls _080341C8
	b _0803497A
_080341C8:
	lsls r0, r1, #2
	ldr r1, _080341D8 @ =_080341DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080341D4: .4byte 0x0000FFFF
_080341D8: .4byte _080341DC
_080341DC: @ jump table
	.4byte _08034248 @ case 0
	.4byte _08034258 @ case 1
	.4byte _08034288 @ case 2
	.4byte _080342C0 @ case 3
	.4byte _080342E8 @ case 4
	.4byte _080342EE @ case 5
	.4byte _080342F4 @ case 6
	.4byte _080342FA @ case 7
	.4byte _08034300 @ case 8
	.4byte _08034314 @ case 9
	.4byte _08034360 @ case 10
	.4byte _08034384 @ case 11
	.4byte _080343A6 @ case 12
	.4byte _080343C0 @ case 13
	.4byte _08034448 @ case 14
	.4byte _08034498 @ case 15
	.4byte _08034534 @ case 16
	.4byte _08034584 @ case 17
	.4byte _080345D4 @ case 18
	.4byte _08034624 @ case 19
	.4byte _080346A6 @ case 20
	.4byte _080347F0 @ case 21
	.4byte _080346BE @ case 22
	.4byte _0803472C @ case 23
	.4byte _080347B0 @ case 24
	.4byte _080347E0 @ case 25
	.4byte _080347FA @ case 26
_08034248:
	movs r2, #1
	mov sb, r2
	movs r0, #0
	str r0, [sp, #0x84]
	str r0, [sp, #0x88]
	movs r3, #0
	str r3, [sp, #0xd4]
	b _0803497A
_08034258:
	add r0, sp, #0x84
	movs r2, #0x5a
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0xd4]
	bl sub_080270A4
	add r0, sp, #0x88
	movs r1, #0
	movs r2, #0x64
	ldr r3, [sp, #0xd4]
	bl sub_080270A4
	ldr r4, [sp, #0xd4]
	adds r4, #8
	str r4, [sp, #0xd4]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bgt _08034282
	b _0803497A
_08034282:
	movs r6, #2
	mov sb, r6
	b _0803497A
_08034288:
	bl sub_08007510
	cmp r0, #0
	bne _080342B6
	bl sub_08007544
	cmp r0, #0
	bne _080342B6
	bl sub_080075AC
	cmp r0, #0
	bne _080342B6
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080342BC @ =0x00090073
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x94]
_080342B6:
	movs r0, #3
	mov sb, r0
	b _0803497A
	.align 2, 0
_080342BC: .4byte 0x00090073
_080342C0:
	bl sub_08007544
	cmp r0, #0
	bne _080342E2
	bl sub_080075AC
	cmp r0, #0
	bne _080342E2
	ldr r0, [sp, #0x94]
	bl sub_0802294C
	cmp r0, #0
	bne _080342DC
	b _0803497A
_080342DC:
	movs r1, #7
	mov sb, r1
	b _0803497A
_080342E2:
	movs r2, #7
	mov sb, r2
	b _0803497A
_080342E8:
	movs r3, #6
	mov sb, r3
	b _0803497A
_080342EE:
	movs r4, #6
	mov sb, r4
	b _0803497A
_080342F4:
	movs r6, #7
	mov sb, r6
	b _0803497A
_080342FA:
	movs r0, #8
	mov sb, r0
	b _0803497A
_08034300:
	movs r1, #9
	mov sb, r1
	movs r0, #0x5a
	rsbs r0, r0, #0
	str r0, [sp, #0x84]
	movs r0, #0x64
	str r0, [sp, #0x88]
	movs r2, #0
	str r2, [sp, #0xd4]
	b _0803497A
_08034314:
	add r0, sp, #0x84
	movs r1, #0x5a
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0xd4]
	bl sub_080270A4
	add r0, sp, #0x88
	movs r1, #0x64
	movs r2, #0
	ldr r3, [sp, #0xd4]
	bl sub_080270A4
	ldr r3, [sp, #0xd4]
	adds r3, #8
	str r3, [sp, #0xd4]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bgt _0803433E
	b _0803497A
_0803433E:
	bl GetMultiplayerId
	ldr r2, _08034358 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803435C @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r4, #0xa
	mov sb, r4
	b _0803497A
	.align 2, 0
_08034358: .4byte gPlayers
_0803435C: .4byte 0x0000FFFE
_08034360:
	movs r6, #0x3c
	mov sl, r6
	movs r0, #0xb
	mov sb, r0
	bl sub_08007544
	cmp r0, #0
	beq _08034372
	b _0803497A
_08034372:
	bl sub_080075AC
	cmp r0, #0
	beq _0803437C
	b _0803497A
_0803437C:
	movs r0, #0x89
	bl PlaySE
	b _0803497A
_08034384:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #1
	bls _08034394
	b _0803497A
_08034394:
	movs r1, #0xc
	mov sb, r1
	ldr r0, [sp, #0xf4]
	movs r1, #0x20
	bl sub_0802934C
	movs r2, #1
	mov sl, r2
	b _0803497A
_080343A6:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _080343AE
	b _0803497A
_080343AE:
	movs r3, #0xd
	mov sb, r3
	movs r0, #0x1c
	str r0, [r7, #0x5c]
	movs r4, #1
	mov sl, r4
	movs r6, #0
	str r6, [sp, #0xbc]
	b _0803497A
_080343C0:
	ldr r1, _080343F8 @ =0x080FBC20
	ldr r2, [sp, #0xcc]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	ldr r2, _080343FC @ =0x080FBC2E
	ldr r3, [sp, #0xd0]
	lsls r1, r3, #1
	ldr r4, [sp, #0xcc]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1]
	str r1, [sp, #0xc8]
	mov r6, sb
	cmp r6, #0x12
	bne _08034400
	lsls r0, r1, #2
	ldr r1, [sp, #0x90]
	adds r0, r0, r1
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #0x22]
	b _08034410
	.align 2, 0
_080343F8: .4byte 0x080FBC20
_080343FC: .4byte 0x080FBC2E
_08034400:
	ldr r2, [sp, #0xc8]
	lsls r0, r2, #2
	ldr r3, [sp, #0x90]
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #2]
_08034410:
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	movs r4, #0
	mov sl, r4
	movs r0, #0x88
	bl StopSE
	ldr r0, [sp, #0xcc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xcc]
	cmp r0, #6
	bhi _0803442E
	b _0803497A
_0803442E:
	movs r6, #0
	str r6, [sp, #0xcc]
	ldr r0, [sp, #0xd0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	cmp r0, #0xa
	bhi _08034442
	b _0803497A
_08034442:
	movs r0, #0
	str r0, [sp, #0xd0]
	b _0803497A
_08034448:
	ldr r1, [sp, #0xc8]
	lsls r2, r1, #2
	ldr r3, [sp, #0x90]
	adds r1, r2, r3
	ldrh r0, [r1]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	movs r4, #0xf
	mov sb, r4
	ldr r0, _08034494 @ =0x080FBCBC
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	ldr r6, [sp, #0xe0]
	strh r0, [r6]
	ldr r0, [sp, #0xe4]
	strh r1, [r0]
	ldr r2, [sp, #0xe8]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0xac]
	movs r4, #0
	str r4, [sp, #0xb0]
	movs r6, #0xc
	str r6, [sp, #0xc0]
	ldr r0, [sp, #0xec]
	strh r4, [r0]
	add r1, sp, #0xb0
	ldrh r2, [r1]
	ldr r1, [sp, #0xf0]
	strh r2, [r1]
	movs r2, #0
	str r2, [sp, #0xc4]
	b _0803497A
	.align 2, 0
_08034494: .4byte 0x080FBCBC
_08034498:
	ldr r3, [sp, #0xc8]
	lsls r0, r3, #2
	ldr r4, [sp, #0x90]
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r6, [sp, #0xc4]
	cmp r6, #0
	bne _080344B4
	b _0803497A
_080344B4:
	ldr r0, [sp, #0xc0]
	cmp r0, #0xc
	bne _080344C2
	movs r1, #0xd
	str r1, [sp, #0xc0]
	movs r2, #0
	str r2, [sp, #0xc4]
_080344C2:
	ldr r3, [sp, #0xc4]
	cmp r3, #0
	bne _080344CA
	b _0803497A
_080344CA:
	ldr r4, [sp, #0xb0]
	cmp r4, #0
	bne _080344D2
	b _0803497A
_080344D2:
	movs r6, #0x10
	mov sb, r6
	movs r5, #0
	ldr r0, [sp, #0xc8]
	lsls r1, r0, #1
	ldr r0, _08034530 @ =0x080FBCDC
	adds r6, r1, r0
_080344E0:
	ldrh r0, [r6]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #7
	movs r1, #7
	bl __udivsi3
	adds r0, r4, r0
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r4, r1, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08035610
	adds r5, #1
	cmp r5, #7
	bls _080344E0
	movs r1, #0
	str r1, [sp, #0xbc]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	bl sub_08007544
	cmp r0, #0
	beq _0803451E
	b _0803497A
_0803451E:
	bl sub_080075AC
	cmp r0, #0
	beq _08034528
	b _0803497A
_08034528:
	movs r0, #0x85
	bl PlaySE
	b _0803497A
	.align 2, 0
_08034530: .4byte 0x080FBCDC
_08034534:
	ldr r0, [sp, #0xbc]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xbc]
	cmp r0, #0x3b
	bhi _08034542
	b _0803497A
_08034542:
	movs r5, #0
	ldr r3, [sp, #0xc8]
	lsls r1, r3, #1
	ldr r0, _08034580 @ =0x080FBCDC
	adds r6, r1, r0
_0803454C:
	ldrh r0, [r6]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #7
	movs r1, #7
	bl __udivsi3
	adds r0, r4, r0
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r4, r1, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08035610
	adds r5, #1
	cmp r5, #7
	bls _0803454C
	movs r4, #0x11
	mov sb, r4
	movs r6, #0
	str r6, [sp, #0xbc]
	b _080347D8
	.align 2, 0
_08034580: .4byte 0x080FBCDC
_08034584:
	ldr r0, [sp, #0xbc]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xbc]
	cmp r0, #0x3b
	bhi _08034592
	b _0803497A
_08034592:
	movs r5, #0
	ldr r2, [sp, #0xc8]
	lsls r1, r2, #1
	ldr r0, _080345D0 @ =0x080FBCDC
	adds r6, r1, r0
_0803459C:
	ldrh r0, [r6]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #7
	movs r1, #7
	bl __udivsi3
	adds r0, r4, r0
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r4, r1, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08035610
	adds r5, #1
	cmp r5, #7
	bls _0803459C
	movs r3, #0x78
	mov sl, r3
	movs r4, #0xb
	mov sb, r4
	b _080347D8
	.align 2, 0
_080345D0: .4byte 0x080FBCDC
_080345D4:
	ldr r6, [sp, #0xc8]
	lsls r1, r6, #2
	ldr r0, [sp, #0x90]
	adds r2, r1, r0
	ldrh r0, [r2, #0x20]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r2, #0x22]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _08034620 @ =0x080FBCEC
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	ldr r2, [sp, #0xe0]
	strh r0, [r2]
	ldr r3, [sp, #0xe4]
	strh r1, [r3]
	ldr r4, [sp, #0xe8]
	strh r1, [r4]
	movs r6, #0
	str r6, [sp, #0xac]
	movs r0, #0
	str r0, [sp, #0xb0]
	movs r1, #0xe
	str r1, [sp, #0xc0]
	ldr r2, [sp, #0xec]
	strh r0, [r2]
	add r3, sp, #0xb0
	ldrh r4, [r3]
	ldr r3, [sp, #0xf0]
	strh r4, [r3]
	movs r4, #0
	str r4, [sp, #0xc4]
	movs r6, #0x13
	mov sb, r6
	b _0803497A
	.align 2, 0
_08034620: .4byte 0x080FBCEC
_08034624:
	ldr r0, [sp, #0xc8]
	lsls r2, r0, #2
	ldr r1, [sp, #0x90]
	adds r0, r2, r1
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r3, [sp, #0xc4]
	cmp r3, #0
	bne _08034640
	b _0803497A
_08034640:
	ldr r4, [sp, #0xc0]
	cmp r4, #0xe
	bne _0803464E
	movs r6, #0xf
	str r6, [sp, #0xc0]
	movs r0, #0
	str r0, [sp, #0xc4]
_0803464E:
	ldr r1, [sp, #0xc4]
	cmp r1, #0
	bne _08034656
	b _0803497A
_08034656:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	bne _0803465E
	b _0803497A
_0803465E:
	ldr r4, [sp, #0xc8]
	cmp r4, #4
	bhi _08034696
	ldr r0, _0803466C @ =0x08034670
	adds r0, r2, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803466C: .4byte 0x08034670
_08034670:
	.byte 0x84, 0x46, 0x03, 0x08, 0x8E, 0x46, 0x03, 0x08, 0x84, 0x46, 0x03, 0x08, 0x8E, 0x46, 0x03, 0x08
	.byte 0x84, 0x46, 0x03, 0x08, 0x38, 0x1C, 0x00, 0x21, 0x01, 0xF0, 0x32, 0xF8, 0x03, 0xE0, 0x38, 0x1C
	.byte 0x01, 0x21, 0x01, 0xF0, 0x2D, 0xF8
_08034696:
	movs r6, #0x14
	mov sb, r6
	movs r0, #0
	str r0, [sp, #0xbc]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	b _08034794
_080346A6:
	ldr r0, [sp, #0xbc]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xbc]
	cmp r0, #0x78
	bhi _080346B4
	b _0803497A
_080346B4:
	movs r2, #0x15
	mov sb, r2
	movs r3, #0
	str r3, [sp, #0xbc]
	b _0803497A
_080346BE:
	ldr r0, [sp, #0xc8]
	lsls r2, r0, #2
	ldr r1, [sp, #0x90]
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r3, [sp, #0xc8]
	cmp r3, #7
	bls _080346F0
	ldr r0, _080346EC @ =0x080FBCEC
	adds r1, r3, #0
	subs r1, #8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r4, [sp, #0xe0]
	strh r0, [r4]
	b _080346FA
	.align 2, 0
_080346EC: .4byte 0x080FBCEC
_080346F0:
	ldr r0, _08034728 @ =0x080FBCBC
	adds r0, r2, r0
	ldr r0, [r0]
	ldr r6, [sp, #0xe0]
	strh r0, [r6]
_080346FA:
	movs r0, #0
	ldr r1, [sp, #0xe4]
	strh r0, [r1]
	ldr r2, [sp, #0xe8]
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0xac]
	movs r4, #0
	str r4, [sp, #0xb0]
	movs r6, #0xe
	str r6, [sp, #0xc0]
	ldr r0, [sp, #0xec]
	strh r4, [r0]
	add r1, sp, #0xb0
	ldrh r2, [r1]
	ldr r1, [sp, #0xf0]
	strh r2, [r1]
	movs r2, #0
	str r2, [sp, #0xc4]
	movs r3, #0x17
	mov sb, r3
	b _0803497A
	.align 2, 0
_08034728: .4byte 0x080FBCBC
_0803472C:
	ldr r4, [sp, #0xc8]
	lsls r0, r4, #2
	ldr r6, [sp, #0x90]
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, [sp, #0xc4]
	cmp r0, #0
	bne _08034748
	b _0803497A
_08034748:
	ldr r1, [sp, #0xc0]
	cmp r1, #0xe
	bne _08034756
	movs r2, #0xf
	str r2, [sp, #0xc0]
	movs r3, #0
	str r3, [sp, #0xc4]
_08034756:
	ldr r4, [sp, #0xc4]
	cmp r4, #0
	bne _0803475E
	b _0803497A
_0803475E:
	ldr r6, [sp, #0xb0]
	cmp r6, #0
	bne _08034766
	b _0803497A
_08034766:
	movs r5, #0
_08034768:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08031250
	adds r5, #1
	cmp r5, #3
	bls _08034768
	movs r0, #0
	str r0, [sp, #0xbc]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	bl sub_080076A8
	movs r1, #0xb4
	str r1, [sp, #0x9c]
	cmp r0, #0
	beq _08034790
	movs r2, #0x78
	str r2, [sp, #0x9c]
_08034790:
	movs r3, #0x18
	mov sb, r3
_08034794:
	bl sub_08007544
	cmp r0, #0
	beq _0803479E
	b _0803497A
_0803479E:
	bl sub_080075AC
	cmp r0, #0
	beq _080347A8
	b _0803497A
_080347A8:
	movs r0, #0x8a
	bl PlaySE
	b _0803497A
_080347B0:
	ldr r0, [sp, #0xbc]
	adds r4, r0, #0
	adds r4, #1
	str r4, [sp, #0xbc]
	ldr r6, [sp, #0x9c]
	cmp r0, r6
	bhi _080347C0
	b _0803497A
_080347C0:
	movs r5, #0
_080347C2:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08031250
	adds r5, #1
	cmp r5, #3
	bls _080347C2
	movs r0, #0x19
	mov sb, r0
	movs r1, #0
	str r1, [sp, #0xbc]
_080347D8:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	b _0803497A
_080347E0:
	ldr r0, [sp, #0xbc]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xbc]
	ldr r3, [sp, #0x9c]
	cmp r0, r3
	bhi _080347F0
	b _0803497A
_080347F0:
	movs r4, #0x3c
	mov sl, r4
	movs r6, #0xb
	mov sb, r6
	b _0803497A
_080347FA:
	ldr r1, _0803491C @ =0x0000012B
	ldr r0, [sp, #0xbc]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xbc]
	cmp r0, r1
	bls _0803480A
	b _08034920
_0803480A:
	bl sub_08007544
	cmp r0, #0
	bne _08034834
	bl sub_080075AC
	cmp r0, #0
	bne _08034834
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
_08034834:
	movs r0, #7
	ldr r3, [sp, #0xbc]
	ands r0, r3
	cmp r0, #0
	beq _08034840
	b _0803497A
_08034840:
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08034854
	adds r0, r2, #7
_08034854:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08034874
	adds r1, r0, #7
_08034874:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803489C
	adds r0, r2, #7
_0803489C:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _080348BC
	adds r1, r0, #7
_080348BC:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080348E4
	adds r0, r2, #7
_080348E4:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08034904
	adds r1, r0, #7
_08034904:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	b _0803497A
	.align 2, 0
_0803491C: .4byte 0x0000012B
_08034920:
	ldr r0, [sp, #0x94]
	bl sub_0802294C
	cmp r0, #0
	beq _0803497A
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #2
	bl FadeOutBGM
	bl sub_080077AC
	bl sub_08016FA0
	cmp r0, #0
	bne _0803497A
	bl sub_08007544
	cmp r0, #0
	bne _0803497A
	bl sub_08007510
	cmp r0, #0
	bne _0803497A
	bl sub_080075AC
	cmp r0, #0
	bne _0803497A
	bl sub_080076E0
	cmp r0, #0
	bne _0803497A
	bl GetMultiplayerId
	ldr r2, _08034A1C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08034A20 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_0803497A:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _08034A2E
	movs r4, #0x14
	str r4, [sp, #0xa0]
	ldrh r6, [r7, #0x28]
	str r6, [sp, #0xb4]
	movs r0, #0
	str r0, [sp, #0xb8]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08034A28
	bl sub_08016FA0
	cmp r0, #0
	bne _080349F2
	bl sub_080271D0
	cmp r0, #0
	bne _080349F2
	bl sub_08007544
	cmp r0, #0
	bne _080349F2
	bl sub_08007510
	cmp r0, #0
	bne _080349F2
	bl sub_080075AC
	cmp r0, #0
	bne _080349F2
	bl sub_080076E0
	cmp r0, #0
	bne _080349F2
	bl GetMultiplayerId
	ldr r2, _08034A1C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08034A24 @ =0x00090076
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x94]
_080349F2:
	bl sub_08007798
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	movs r1, #0x1a
	mov sb, r1
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r2, #0
	str r2, [sp, #0xbc]
	mov sl, r2
	b _08034A2E
	.align 2, 0
_08034A1C: .4byte gPlayers
_08034A20: .4byte 0x0000FFFE
_08034A24: .4byte 0x00090076
_08034A28:
	add r3, sp, #0xb8
	ldrh r3, [r3]
	strh r3, [r7, #0xa]
_08034A2E:
	ldr r0, [sp, #0xa0]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xa0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08034AA0
	ldr r4, [sp, #0xb4]
	cmp r4, #0
	bne _08034A54
	ldr r6, _08034A50 @ =0x0000FFFF
	str r6, [sp, #0xa0]
	b _08034AA4
	.align 2, 0
_08034A50: .4byte 0x0000FFFF
_08034A54:
	bl sub_08007544
	cmp r0, #0
	bne _08034A82
	bl sub_08007510
	cmp r0, #0
	bne _08034A82
	bl sub_08007604
	cmp r0, #0
	bne _08034A82
	bl sub_080075AC
	cmp r0, #0
	bne _08034A82
	ldr r0, [sp, #0xb8]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xb4]
	bl sub_0800EA74
_08034A82:
	movs r0, #2
	ldr r1, [sp, #0xa0]
	ands r0, r1
	cmp r0, #0
	beq _08034AA4
	ldr r2, [sp, #0xb8]
	lsls r0, r2, #0x10
	ldr r3, _08034A9C @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
	b _08034AA4
	.align 2, 0
_08034A9C: .4byte 0xFFFF0000
_08034AA0:
	ldr r4, _08034BC0 @ =0x0000FFFF
	str r4, [sp, #0xa0]
_08034AA4:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _08034AAC
	b _08034C6A
_08034AAC:
	ldr r0, [sp, #0x98]
	adds r0, #0x15
	ldr r6, [sp, #0x8c]
	ldrh r2, [r6, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x98]
	adds r0, #5
	movs r6, #0
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x98]
	adds r0, #6
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x84]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08005F60
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x30
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0xe0]
	ldrh r1, [r0]
	ldr r2, [sp, #0xac]
	str r2, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0xe4]
	ldr r3, [sp, #0xe8]
	bl sub_08026C40
	str r0, [sp, #0xb0]
	adds r6, r4, #0
	mov r3, sb
	cmp r3, #0xf
	beq _08034B38
	cmp r3, #0x13
	beq _08034B38
	cmp r3, #0x17
	bne _08034B4E
_08034B38:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	ldr r1, [sp, #0xc0]
	ldr r2, [sp, #0xec]
	ldr r3, [sp, #0xf0]
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc4]
_08034B4E:
	movs r0, #1
	mov r4, sl
	ands r0, r4
	cmp r0, #0
	beq _08034B5A
	b _08034C6A
_08034B5A:
	bl sub_08007510
	cmp r0, #0
	bne _08034B9E
	bl sub_08007604
	cmp r0, #0
	bne _08034B9E
	bl sub_08007544
	cmp r0, #0
	bne _08034B9E
	bl sub_080075AC
	cmp r0, #0
	bne _08034B9E
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xe0]
	ldrh r2, [r3]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4]
	mov r4, r8
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08034B9E:
	mov r0, sb
	cmp r0, #0xf
	beq _08034BAC
	cmp r0, #0x13
	beq _08034BAC
	cmp r0, #0x17
	bne _08034C6A
_08034BAC:
	ldr r1, [sp, #0xe0]
	ldrh r0, [r1]
	cmp r0, #0xa
	beq _08034C0C
	cmp r0, #0xa
	bgt _08034BC4
	cmp r0, #9
	beq _08034BCE
	b _08034C18
	.align 2, 0
_08034BC0: .4byte 0x0000FFFF
_08034BC4:
	cmp r0, #0xb
	beq _08034BE0
	cmp r0, #0x15
	beq _08034BF8
	b _08034C18
_08034BCE:
	ldr r2, _08034BDC @ =0x0000FFF8
	str r2, [sp, #0xa4]
	movs r3, #0
	mov r8, r3
	movs r4, #0
	str r4, [sp, #0xa8]
	b _08034C18
	.align 2, 0
_08034BDC: .4byte 0x0000FFF8
_08034BE0:
	ldr r0, _08034BF0 @ =0x0000FFF0
	str r0, [sp, #0xa4]
	movs r1, #0
	mov r8, r1
	ldr r2, _08034BF4 @ =0x0000FFF8
	str r2, [sp, #0xa8]
	b _08034C18
	.align 2, 0
_08034BF0: .4byte 0x0000FFF0
_08034BF4: .4byte 0x0000FFF8
_08034BF8:
	ldr r3, _08034C08 @ =0x0000FFF0
	str r3, [sp, #0xa4]
	movs r4, #0
	mov r8, r4
	movs r0, #8
	str r0, [sp, #0xa8]
	b _08034C18
	.align 2, 0
_08034C08: .4byte 0x0000FFF0
_08034C0C:
	ldr r1, _08034EFC @ =0x0000FFEC
	str r1, [sp, #0xa4]
	movs r2, #3
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0xa8]
_08034C18:
	bl sub_08007510
	cmp r0, #0
	bne _08034C6A
	bl sub_08007604
	cmp r0, #0
	bne _08034C6A
	bl sub_08007544
	cmp r0, #0
	bne _08034C6A
	bl sub_080075AC
	cmp r0, #0
	bne _08034C6A
	movs r4, #0
	ldrsh r0, [r6, r4]
	ldr r6, [sp, #0xa8]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xa4]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	ldr r4, [sp, #0xec]
	ldrh r3, [r4]
	mov r6, r8
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xc0]
	bl sub_08004344
_08034C6A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08034CA0
	bl sub_080074CC
	cmp r0, #0
	bne _08034CA0
	ldr r0, _08034F00 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08034CA0
	bl sub_08007578
	cmp r0, #0
	bne _08034CA0
	mov r0, sb
	cmp r0, #0x1b
	beq _08034CA0
	bl sub_080341B6
_08034CA0:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	bl sub_080356A4
	bl sub_0803575C
	bl sub_08031304
	ldr r1, _08034F04 @ =gActiveEnemyMask
	ldrh r2, [r7]
	lsls r4, r2
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	ldr r0, [sp, #0x98]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _08034D2E
	ldr r4, _08034F08 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08034D2E
	ldr r0, _08034F0C @ =0x030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _08034D2E
	bl sub_08007544
	cmp r0, #0
	bne _08034D2E
	bl sub_08007510
	cmp r0, #0
	bne _08034D2E
	bl sub_08007604
	cmp r0, #0
	bne _08034D2E
	bl sub_080075AC
	cmp r0, #0
	bne _08034D2E
	bl sub_080076E0
	cmp r0, #0
	bne _08034D2E
	ldr r0, _08034F10 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_08034D2E:
	bl sub_08007750
	cmp r0, #0
	beq _08034D38
	b _08034E44
_08034D38:
	bl sub_080074CC
	cmp r0, #0
	beq _08034D42
	b _08034E44
_08034D42:
	ldr r4, _08034F00 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08034E44
	bl sub_08007578
	cmp r0, #0
	bne _08034E44
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _08034E44
	ldr r4, _08034F14 @ =0x03003D94
	adds r0, r4, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _08034D96
	movs r3, #0xab
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034D96
	ldr r6, _08034F18 @ =0x00000157
	adds r1, r1, r6
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08034D96
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08034D96:
	ldr r4, _08034F08 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x8c]
	bl CalcExpGain
	str r0, [sp, #0xac]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xac]
	bl AddExp
	str r0, [sp, #0xb0]
	movs r4, #0x13
	ldr r5, _08034F1C @ =0x0000FFFF
_08034DC4:
	ldr r0, [r7, #0x14]
	ldr r1, _08034F20 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _08034DF8
	bl sub_08007510
	cmp r0, #0
	bne _08034DF8
	bl sub_080075AC
	cmp r0, #0
	bne _08034DF8
	ldr r0, _08034F10 @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08034DF8
	adds r0, r7, #0
	ldr r1, [sp, #0xac]
	bl sub_08024320
_08034DF8:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bne _08034DC4
	ldr r2, [sp, #0xb0]
	cmp r2, #0
	beq _08034E44
	bl sub_08007544
	cmp r0, #0
	bne _08034E22
	bl sub_080075AC
	cmp r0, #0
	bne _08034E22
	movs r0, #0x25
	bl PlaySE
_08034E22:
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _08034F08 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_08034E44:
	bl sub_08007750
	cmp r0, #0
	bne _08034EE2
	bl sub_080074CC
	cmp r0, #0
	bne _08034EE2
	ldr r4, _08034F00 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08034EE2
	bl sub_08007578
	cmp r0, #0
	bne _08034EE2
	ldr r0, _08034F24 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08034F28 @ =0x03003D08
	ldr r1, [r3]
	movs r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08034ECC
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08034ECC
	ldr r2, _08034F2C @ =gPlayerStats
	ldr r4, _08034F30 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08034F34 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08034ECC:
	bl sub_0800F53C
	ldr r4, _08034F38 @ =0x030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08034EE2
	ldr r0, [r4]
	bl KillThread
_08034EE2:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xf8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034EFC: .4byte 0x0000FFEC
_08034F00: .4byte 0x030063D8
_08034F04: .4byte gActiveEnemyMask
_08034F08: .4byte gPlayers
_08034F0C: .4byte 0x030064D8
_08034F10: .4byte 0x03003910
_08034F14: .4byte 0x03003D94
_08034F18: .4byte 0x00000157
_08034F1C: .4byte 0x0000FFFF
_08034F20: .4byte 0xFFFFFE00
_08034F24: .4byte 0x00000BB8
_08034F28: .4byte 0x03003D08
_08034F2C: .4byte gPlayerStats
_08034F30: .4byte 0x00000272
_08034F34: .4byte 0x00000275
_08034F38: .4byte 0x030063E4

	thumb_func_start sub_08034F3C
sub_08034F3C: @ 0x08034F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	mov sl, r0
	str r1, [sp, #0x4c]
	ldr r1, _08035024 @ =0x00100004
	movs r6, #1
	rsbs r6, r6, #0
	add r0, sp, #0x10
	movs r2, #0
	adds r3, r6, #0
	bl sub_08026ADC
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	mov r0, sl
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x50]
	mov r1, sl
	ldr r1, [r1, #0x14]
	str r1, [sp, #0x54]
	ldr r0, [sp, #0x4c]
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	lsrs r0, r0, #5
	mov sb, r0
	movs r0, #0x1f
	ldr r1, [sp, #0x4c]
	ands r0, r1
	cmp r0, #0x10
	bls _08034F96
	movs r0, #1
	add sb, r0
_08034F96:
	mov r0, sb
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #8
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08034FB6
	mov r0, sb
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_08034FB6:
	mov r0, sb
	adds r0, #0x65
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r5, sp, #0x48
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x4a
	strh r2, [r4]
	bl sub_080076A8
	movs r2, #0x3c
	str r2, [sp, #0x58]
	cmp r0, #0
	beq _08034FDA
	movs r0, #0x5a
	str r0, [sp, #0x58]
_08034FDA:
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	ldr r2, _08035028 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	str r1, [sp, #0x58]
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _08034FEE
	b _0803520E
_08034FEE:
	bl sub_080076A8
	cmp r0, #0
	beq _08035030
	ldr r0, [sp, #0x4c]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _0803502C @ =0x0805289C
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #6
	ldr r2, [sp, #0x50]
	adds r2, r2, r0
	str r2, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #1
	ldr r2, _0803502C @ =0x0805289C
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #6
	ldr r2, [sp, #0x54]
	adds r2, r2, r0
	str r2, [sp, #0x54]
	b _0803505A
	.align 2, 0
_08035024: .4byte 0x00100004
_08035028: .4byte 0xFFFF0000
_0803502C: .4byte 0x0805289C
_08035030:
	ldr r0, [sp, #0x4c]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _080352AC @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	ldr r1, [sp, #0x50]
	adds r1, r1, r0
	str r1, [sp, #0x50]
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #1
	ldr r1, _080352AC @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	ldr r1, [sp, #0x54]
	adds r1, r1, r0
	str r1, [sp, #0x54]
_0803505A:
	ldr r2, [sp, #0x50]
	asrs r5, r2, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x44
	mov r7, sp
	adds r7, #0x46
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	mov r1, sb
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08026C40
	bl sub_080271D0
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	cmp r0, #0
	bne _080350E8
	bl sub_08007544
	cmp r0, #0
	bne _080350E8
	bl sub_08007510
	cmp r0, #0
	bne _080350E8
	bl sub_080075AC
	cmp r0, #0
	bne _080350E8
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	add r2, sp, #0x48
	ldrh r3, [r2]
	mov r2, r8
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sb
	bl sub_08004344
_080350E8:
	bl GetMultiplayerId
	ldr r6, _080352B0 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	ldr r0, [sp, #0x5c]
	subs r4, r0, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	ldr r2, [sp, #0x60]
	subs r1, r2, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _080351CA
	cmp r4, #7
	bhi _080351CA
	bl GetMultiplayerId
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r7, r6, #0
	adds r7, #0x80
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	beq _080351CA
	ldrh r0, [r2, #0xa]
	cmp r0, #8
	beq _080351CA
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080351CA
	bl sub_08007544
	cmp r0, #0
	bne _080351CA
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _080352B4 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	mov r0, sl
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_080351CA:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08035290
	bl sub_080074CC
	cmp r0, #0
	bne _08035290
	ldr r0, _080352B8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035290
	bl sub_08007578
	cmp r0, #0
	bne _08035290
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	ldr r2, _080352BC @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	str r1, [sp, #0x58]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0803520E
	b _08034FEE
_0803520E:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0803521C
	rsbs r1, r1, #0
_0803521C:
	movs r0, #7
	ands r1, r0
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080352C0 @ =0x0000FFFF
	ldr r2, [sp, #0x50]
	asrs r2, r2, #0xc
	str r2, [sp, #0x5c]
	ldr r1, [sp, #0x54]
	asrs r1, r1, #0xc
	str r1, [sp, #0x60]
	cmp r4, r0
	beq _08035270
	adds r5, r0, #0
_0803523A:
	bl sub_08007750
	cmp r0, #0
	bne _08035270
	bl sub_080074CC
	cmp r0, #0
	bne _08035270
	ldr r0, _080352B8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035270
	bl sub_08007578
	cmp r0, #0
	bne _08035270
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bne _0803523A
_08035270:
	bl sub_08007544
	cmp r0, #0
	bne _08035286
	bl sub_080075AC
	cmp r0, #0
	bne _08035286
	movs r0, #0x6a
	bl PlaySE
_08035286:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	movs r2, #7
	bl sub_08033E6C
_08035290:
	bl GetCurrentThread
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080352AC: .4byte 0x0805289C
_080352B0: .4byte gPlayers
_080352B4: .4byte 0x0000FFFE
_080352B8: .4byte 0x030063D8
_080352BC: .4byte 0xFFFF0000
_080352C0: .4byte 0x0000FFFF

	thumb_func_start sub_080352C4
sub_080352C4: @ 0x080352C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	mov r0, sb
	ldr r6, [r0, #0x10]
	ldr r1, [r0, #0x14]
	mov sl, r1
	mov r2, r8
	cmp r2, #0
	beq _08035310
	movs r3, #0x80
	str r3, [sp, #0x50]
	ldr r0, _0803530C @ =0xFFFE8000
	adds r6, r6, r0
	b _0803531A
	.align 2, 0
_0803530C: .4byte 0xFFFE8000
_08035310:
	movs r1, #0
	str r1, [sp, #0x50]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r6, r6, r2
_0803531A:
	movs r3, #0x78
	str r3, [sp, #0x4c]
	movs r5, #0
	mov r1, sp
	adds r1, #0x4a
	strh r5, [r1]
	add r0, sp, #0x48
	strh r5, [r0]
	subs r0, #4
	str r0, [sp, #0x54]
	subs r1, #4
	str r1, [sp, #0x58]
	mov r2, sl
	asrs r7, r2, #0xc
_08035336:
	mov r3, r8
	cmp r3, #0
	beq _0803535C
	ldr r1, _08035504 @ =0x0805289C
	ldr r0, [sp, #0x50]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #4
	adds r6, r6, r0
_0803535C:
	asrs r4, r6, #0xc
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x58]
	bl sub_08005FC4
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0x10
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_080271D0
	cmp r0, #0
	bne _080353E0
	bl sub_08007544
	cmp r0, #0
	bne _080353E0
	bl sub_08007510
	cmp r0, #0
	bne _080353E0
	bl sub_080075AC
	cmp r0, #0
	bne _080353E0
	ldr r1, [sp, #0x54]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x58]
	movs r2, #0
	ldrsh r1, [r3, r2]
	subs r1, #0x10
	add r2, sp, #0x48
	ldrh r3, [r2]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x10
	bl sub_08004344
_080353E0:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08035410
	bl sub_080074CC
	cmp r0, #0
	bne _08035410
	ldr r0, _08035508 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035410
	bl sub_08007578
	cmp r0, #0
	bne _08035410
	cmp r5, #0
	beq _08035336
_08035410:
	ldr r3, [sp, #0x4c]
	lsls r0, r3, #0x10
	ldr r1, _0803550C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x4c]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08035428
	b _080355F6
_08035428:
	ldr r3, _08035510 @ =gPlayers
	mov r8, r3
	movs r7, #0xd4
_0803542E:
	ldr r0, [sp, #0x50]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08035504 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #6
	adds r6, r6, r0
	ldr r3, [sp, #0x50]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #6
	add sl, r0
	bl GetMultiplayerId
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	mov r2, sl
	subs r0, r2, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _08035468
	rsbs r0, r0, #0
_08035468:
	asrs r0, r0, #3
	cmp r0, #1
	bgt _08035542
	bl sub_08007670
	cmp r0, #0
	bne _08035542
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0x80
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08035542
	bl GetMultiplayerId
	muls r0, r7, r0
	mov r5, r8
	adds r5, #0x58
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r6, r0
	bge _08035542
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r4, r6, r0
	bl GetMultiplayerId
	muls r0, r7, r0
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r4, r0
	ble _08035542
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08035542
	bl sub_08007544
	cmp r0, #0
	bne _08035542
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	adds r0, #0x70
	ldr r1, _08035514 @ =0x0000FFFE
	strh r1, [r0]
	bl sub_080076A8
	cmp r0, #0
	beq _08035518
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x54
	ldrh r0, [r1]
	adds r0, #0x96
	b _08035528
	.align 2, 0
_08035504: .4byte 0x0805289C
_08035508: .4byte 0x030063D8
_0803550C: .4byte 0xFFFF0000
_08035510: .4byte gPlayers
_08035514: .4byte 0x0000FFFE
_08035518:
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x54
	ldrh r0, [r1]
	adds r0, #0x32
_08035528:
	strh r0, [r1]
	bl GetMultiplayerId
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0x80
	adds r1, r1, r0
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_08035542:
	asrs r5, r6, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r3, sl
	asrs r4, r3, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x58]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_080271D0
	cmp r0, #0
	bne _080355B2
	bl sub_08007544
	cmp r0, #0
	bne _080355B2
	bl sub_08007510
	cmp r0, #0
	bne _080355B2
	bl sub_080075AC
	cmp r0, #0
	bne _080355B2
	ldr r1, [sp, #0x54]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x58]
	movs r2, #0
	ldrsh r1, [r3, r2]
	subs r1, #0x10
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x11
	movs r3, #0
	bl sub_08004344
_080355B2:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080355F6
	bl sub_080074CC
	cmp r0, #0
	bne _080355F6
	ldr r0, _08035608 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080355F6
	bl sub_08007578
	cmp r0, #0
	bne _080355F6
	ldr r3, [sp, #0x4c]
	lsls r0, r3, #0x10
	ldr r1, _0803560C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x4c]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080355F6
	b _0803542E
_080355F6:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035608: .4byte 0x030063D8
_0803560C: .4byte 0xFFFF0000

	thumb_func_start sub_08035610
sub_08035610: @ 0x08035610
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _08035624 @ =0x0300005C
	ldr r4, [r0]
	movs r6, #0
	b _0803562C
	.align 2, 0
_08035624: .4byte 0x0300005C
_08035628:
	adds r6, #1
	adds r4, #0x28
_0803562C:
	cmp r6, #0x3f
	bhi _0803566A
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _08035628
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _08035628
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	ldr r1, _08035674 @ =sub_08034F3C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	lsls r0, r7, #0x10
	orrs r6, r0
	adds r0, r4, #0
	mov r1, r8
	adds r2, r6, #0
	bl CreateThread
_0803566A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035674: .4byte sub_08034F3C

	thumb_func_start sub_08035678
sub_08035678: @ 0x08035678
	push {r4, lr}
	ldr r4, _080356A0 @ =0x0300005C
	movs r0, #0xa0
	lsls r0, r0, #4
	bl Alloc
	str r0, [r4]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_0803568C:
	ldr r0, [r4]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #0x3f
	bls _0803568C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080356A0: .4byte 0x0300005C

	thumb_func_start sub_080356A4
sub_080356A4: @ 0x080356A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080356B8 @ =0x0300005C
	ldr r0, [r0]
	mov r8, r0
	movs r4, #0
_080356B2:
	lsls r6, r4, #2
	adds r7, r4, #1
	b _080356C0
	.align 2, 0
_080356B8: .4byte 0x0300005C
_080356BC:
	bl WaitFrame
_080356C0:
	adds r0, r6, r4
	lsls r0, r0, #3
	add r0, r8
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _080356BC
	adds r4, r7, #0
	cmp r4, #0x3f
	bls _080356B2
	ldr r4, _080356EC @ =0x0300005C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080356EC: .4byte 0x0300005C

	thumb_func_start sub_080356F0
sub_080356F0: @ 0x080356F0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r4, _08035738 @ =0x03000060
	ldr r0, [r4]
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _08035730
	ldr r1, [r4]
	movs r0, #0x3c
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r4]
	str r0, [r1, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _0803573C @ =sub_080352C4
	str r0, [r1, #0xc]
	str r5, [r1, #0x24]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl CreateThread
_08035730:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035738: .4byte 0x03000060
_0803573C: .4byte sub_080352C4

	thumb_func_start sub_08035740
sub_08035740: @ 0x08035740
	push {r4, lr}
	ldr r4, _08035758 @ =0x03000060
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	movs r1, #0
	str r1, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035758: .4byte 0x03000060

	thumb_func_start sub_0803575C
sub_0803575C: @ 0x0803575C
	push {r4, r5, lr}
	ldr r4, _08035764 @ =0x03000060
	b _0803576C
	.align 2, 0
_08035764: .4byte 0x03000060
_08035768:
	bl WaitFrame
_0803576C:
	ldr r0, [r4]
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _08035768
	ldr r4, _08035788 @ =0x03000060
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08035788: .4byte 0x03000060

	thumb_func_start sub_0803578C
sub_0803578C: @ 0x0803578C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	adds r7, r0, #0
	ldr r0, _0803593C @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r4, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0x98]
	cmp r4, r0
	bhs _080357C4
	adds r2, r0, #0
_080357B2:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _080357BC
	ldr r0, [r1, #4]
	adds r6, r1, r0
_080357BC:
	adds r4, #1
	adds r1, #8
	cmp r4, r2
	blo _080357B2
_080357C4:
	ldrh r0, [r6, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x54]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r3, #0
	mov r8, r3
	movs r0, #0xff
	strh r0, [r7, #2]
	ldrh r0, [r6]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r6, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _08035940 @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	mov r4, r8
	strh r4, [r7, #8]
	strh r4, [r7, #0xa]
	strh r4, [r7, #0xc]
	strh r4, [r7, #0x28]
	mov r6, r8
	str r6, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x54]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0x8c]
	mov r0, r8
	strh r0, [r6]
	adds r1, r7, #0
	adds r1, #0x4a
	str r1, [sp, #0x90]
	strh r0, [r1]
	movs r2, #0x4c
	adds r2, r2, r7
	mov sb, r2
	strh r0, [r2]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r3, #0x72
	adds r3, r3, r7
	mov sl, r3
	ldrh r4, [r3]
	ldr r6, _08035944 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r0, sl
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x6e
	str r1, [sp, #0x94]
	ldrh r4, [r1]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	ldr r2, [sp, #0x94]
	strh r4, [r2]
	mov r3, sl
	ldrh r0, [r3]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	ldr r4, [sp, #0x54]
	ldr r0, [r4, #0x28]
	ldrh r1, [r4, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r0, _08035948 @ =0x0300680C
	mov r5, r8
	str r5, [r0]
	ldr r1, [r4, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x5c]
	adds r0, #0x15
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x5c]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x5c]
	adds r0, #6
	strb r0, [r1, #0x1d]
	bl sub_08033DF4
	bl sub_08007544
	ldr r6, [sp, #0x8c]
	str r6, [sp, #0x9c]
	ldr r1, [sp, #0x90]
	str r1, [sp, #0xa0]
	mov r2, sb
	str r2, [sp, #0xa4]
	adds r3, r7, #0
	adds r3, #0x4e
	str r3, [sp, #0xa8]
	cmp r0, #0
	bne _08035932
	bl sub_080075AC
	cmp r0, #0
	bne _08035932
	ldr r5, _0803594C @ =gPlayers
	movs r4, #0xd4
_080358FE:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _080358FE
	bl GetMultiplayerId
	ldr r5, _0803594C @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #4
	strh r1, [r0, #0xa]
_08035932:
	ldr r0, [sp, #0x98]
	movs r1, #0x29
	bl sub_0802934C
	b _08035954
	.align 2, 0
_0803593C: .4byte 0x030063D8
_08035940: .4byte 0x03003910
_08035944: .4byte 0x080FB740
_08035948: .4byte 0x0300680C
_0803594C: .4byte gPlayers
_08035950:
	bl WaitFrame
_08035954:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _08035950
	movs r4, #0
	str r4, [sp, #0x68]
	ldr r5, _08035990 @ =0x0000FFFF
	str r5, [sp, #0x6c]
	movs r6, #1
	str r6, [sp, #0x70]
	movs r0, #0
	str r0, [sp, #0x64]
	str r0, [r7, #0x54]
	movs r1, #0xfa
	lsls r1, r1, #2
	str r1, [sp, #0x60]

	non_word_aligned_thumb_func_start sub_08035972
sub_08035972: @ 0x08035972
	bl sub_080271D0
	cmp r0, #0
	beq _0803597C
	b _08036020
_0803597C:
	ldr r2, [sp, #0x64]
	cmp r2, #0x14
	bls _08035984
	b _08035BD8
_08035984:
	lsls r0, r2, #2
	ldr r1, _08035994 @ =_08035998
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035990: .4byte 0x0000FFFF
_08035994: .4byte _08035998
_08035998: @ jump table
	.4byte _080359EC @ case 0
	.4byte _080359FC @ case 1
	.4byte _08035A2C @ case 2
	.4byte _08035A6C @ case 3
	.4byte _08035BD8 @ case 4
	.4byte _08035BD8 @ case 5
	.4byte _08035BD8 @ case 6
	.4byte _08035A9C @ case 7
	.4byte _08035AB0 @ case 8
	.4byte _08035BD8 @ case 9
	.4byte _08035BCC @ case 10
	.4byte _08035BD8 @ case 11
	.4byte _08035BD8 @ case 12
	.4byte _08035BD8 @ case 13
	.4byte _08035BD8 @ case 14
	.4byte _08035BD8 @ case 15
	.4byte _08035BD8 @ case 16
	.4byte _08035BD8 @ case 17
	.4byte _08035BD8 @ case 18
	.4byte _08035BD8 @ case 19
	.4byte _08035B0C @ case 20
_080359EC:
	movs r3, #1
	str r3, [sp, #0x64]
	movs r0, #0
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	movs r4, #0
	str r4, [sp, #0x88]
	b _08035BD8
_080359FC:
	add r0, sp, #0x4c
	movs r2, #0xa0
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0x88]
	bl sub_080270A4
	add r0, sp, #0x50
	movs r2, #0x5a
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0x88]
	bl sub_080270A4
	ldr r5, [sp, #0x88]
	adds r5, #0x10
	str r5, [sp, #0x88]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r5, r0
	bgt _08035A28
	b _08035BD8
_08035A28:
	movs r6, #2
	b _08035BD6
_08035A2C:
	bl sub_08007510
	cmp r0, #0
	bne _08035A5A
	bl sub_08007544
	cmp r0, #0
	bne _08035A5A
	bl sub_080075AC
	cmp r0, #0
	bne _08035A5A
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08035A68 @ =0x00090077
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
_08035A5A:
	ldr r0, [sp, #0x64]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	b _08035BD8
	.align 2, 0
_08035A68: .4byte 0x00090077
_08035A6C:
	bl sub_08007510
	cmp r0, #0
	bne _08035A96
	bl sub_08007544
	cmp r0, #0
	bne _08035A96
	bl sub_080075AC
	cmp r0, #0
	bne _08035A96
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	cmp r0, #0
	bne _08035A90
	b _08035BD8
_08035A90:
	movs r0, #7
	str r0, [sp, #0x64]
	b _08035BD8
_08035A96:
	movs r1, #7
	str r1, [sp, #0x64]
	b _08035BD8
_08035A9C:
	movs r2, #8
	str r2, [sp, #0x64]
	movs r0, #0xa0
	rsbs r0, r0, #0
	str r0, [sp, #0x4c]
	adds r0, #0x46
	str r0, [sp, #0x50]
	movs r3, #0
	str r3, [sp, #0x88]
	b _08035BD8
_08035AB0:
	add r0, sp, #0x4c
	movs r1, #0xa0
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x88]
	bl sub_080270A4
	add r0, sp, #0x50
	movs r1, #0x5a
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x88]
	bl sub_080270A4
	ldr r4, [sp, #0x88]
	adds r4, #0x10
	str r4, [sp, #0x88]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bgt _08035ADC
	b _08035BD8
_08035ADC:
	bl GetMultiplayerId
	ldr r2, _08035B04 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08035B08 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r4, #0
_08035AF2:
	bl sub_08036D28
	adds r4, #1
	cmp r4, #3
	bls _08035AF2
	movs r5, #0xb
	str r5, [sp, #0x64]
	b _08035BD8
	.align 2, 0
_08035B04: .4byte gPlayers
_08035B08: .4byte 0x0000FFFE
_08035B0C:
	bl sub_08016FA0
	cmp r0, #0
	bne _08035B6C
	bl sub_080271D0
	cmp r0, #0
	bne _08035B6C
	bl sub_08007544
	cmp r0, #0
	bne _08035B6C
	bl sub_08007510
	cmp r0, #0
	bne _08035B6C
	bl sub_080075AC
	cmp r0, #0
	bne _08035B6C
	bl sub_080076E0
	adds r4, r0, #0
	cmp r4, #0
	bne _08035B6C
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	cmp r0, #0
	beq _08035BD8
	ldr r6, [sp, #0xa8]
	ldrh r0, [r6]
	cmp r0, #0
	beq _08035BD8
	movs r0, #0x21
	ldr r1, [sp, #0x9c]
	strh r0, [r1]
	ldr r2, [sp, #0xa0]
	strh r4, [r2]
	ldr r3, [sp, #0xa4]
	strh r4, [r3]
	movs r4, #0
	str r4, [sp, #0x70]
	movs r5, #0xa
	str r5, [sp, #0x64]
	bl sub_080077AC
	b _08035BAC
_08035B6C:
	movs r0, #0
	movs r1, #0x21
	ldr r6, [sp, #0x9c]
	strh r1, [r6]
	ldr r1, [sp, #0xa0]
	strh r0, [r1]
	ldr r2, [sp, #0xa4]
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0x70]
	movs r4, #0xa
	str r4, [sp, #0x64]
	bl sub_08016FA0
	cmp r0, #0
	bne _08035BD8
	bl sub_08007544
	cmp r0, #0
	bne _08035BD8
	bl sub_08007510
	cmp r0, #0
	bne _08035BD8
	bl sub_080075AC
	cmp r0, #0
	bne _08035BD8
	bl sub_080076E0
	cmp r0, #0
	bne _08035BD8
_08035BAC:
	bl GetMultiplayerId
	ldr r2, _08035BC4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08035BC8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	b _08035BD8
	.align 2, 0
_08035BC4: .4byte gPlayers
_08035BC8: .4byte 0x0000FFFE
_08035BCC:
	ldr r5, [sp, #0xa8]
	ldrh r0, [r5]
	cmp r0, #0
	beq _08035BD8
	movs r6, #0x15
_08035BD6:
	str r6, [sp, #0x64]
_08035BD8:
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #6]
	strh r4, [r7, #4]
	ldr r0, [sp, #0x64]
	cmp r0, #0xb
	beq _08035BE8
	b _08035D3A
_08035BE8:
	ldr r0, [sp, #0x60]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	ldr r0, [r7, #0x54]
	cmp r0, #1
	beq _08035C1C
	cmp r0, #1
	blo _08035C06
	cmp r0, #2
	beq _08035CBC
	cmp r0, #3
	beq _08035CF4
	b _08035D3A
_08035C06:
	adds r0, r7, #0
	movs r1, #0x3c
	bl sub_0800C8F8
	str r0, [sp, #0x74]
	cmp r0, #3
	bhi _08035C18
	movs r0, #1
	b _08035CEE
_08035C18:
	movs r0, #2
	b _08035CEE
_08035C1C:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08035C58 @ =gPlayers
	movs r2, #0xd4
	ldr r6, [sp, #0x74]
	muls r2, r6, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r4, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08035C60
	ldr r0, _08035C5C @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _08035C6E
	.align 2, 0
_08035C58: .4byte gPlayers
_08035C5C: .4byte 0x0000FFBF
_08035C60:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08035C70
	ldr r0, _08035C88 @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_08035C6E:
	strh r0, [r7, #4]
_08035C70:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035C90
	ldr r0, _08035C8C @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _08035C9E
	.align 2, 0
_08035C88: .4byte 0x0000FF7F
_08035C8C: .4byte 0x0000FFDF
_08035C90:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035CA0
	ldr r0, _08035CB8 @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_08035C9E:
	strh r0, [r7, #4]
_08035CA0:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bls _08035D3A
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x37
	str r0, [r7, #0x5c]
	b _08035D3A
	.align 2, 0
_08035CB8: .4byte 0x0000FFEF
_08035CBC:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	str r0, [sp, #0x74]
	cmp r0, #3
	bhi _08035CEC
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _08035D3A
	ldr r1, [sp, #0x54]
	ldrh r0, [r1, #8]
	ldr r2, [sp, #0x60]
	cmp r0, r2
	bhs _08035D3A
	movs r3, #0
	str r3, [sp, #0x60]
	movs r0, #1
	strh r0, [r7, #6]
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x3c
	str r0, [r7, #0x5c]
	b _08035D3A
_08035CEC:
	movs r0, #3
_08035CEE:
	str r0, [r7, #0x54]
	str r4, [r7, #0x5c]
	b _08035D3A
_08035CF4:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	str r0, [sp, #0x74]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08035D4C @ =gPlayers
	movs r2, #0xd4
	ldr r5, [sp, #0x74]
	muls r2, r5, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _08035D3A
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bls _08035D3A
	str r4, [r7, #0x54]
_08035D3A:
	ldrh r0, [r7, #0xa]
	cmp r0, #1
	beq _08035D9C
	cmp r0, #1
	bgt _08035D50
	cmp r0, #0
	beq _08035D5E
	b _08036020
	.align 2, 0
_08035D4C: .4byte gPlayers
_08035D50:
	cmp r0, #6
	bne _08035D56
	b _08035F1C
_08035D56:
	cmp r0, #7
	bne _08035D5C
	b _08035FDA
_08035D5C:
	b _08036020
_08035D5E:
	ldrh r0, [r7, #8]
	ldr r6, [sp, #0x9c]
	strh r0, [r6]
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035D8A
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _08035D78
	subs r0, #1
	b _08035D7A
_08035D78:
	ldrh r0, [r7, #8]
_08035D7A:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0xa4]
	strh r1, [r2]
	ldr r3, [sp, #0xa0]
	strh r1, [r3]
_08035D8A:
	ldrh r1, [r7, #4]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _08035D96
	b _08036020
_08035D96:
	movs r0, #1
	strh r0, [r7, #0xa]
	b _08036020
_08035D9C:
	movs r4, #0
	str r4, [sp, #0x68]
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08035DB0
	movs r5, #5
	str r5, [sp, #0x68]
	b _08035DBC
_08035DB0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08035DBC
	movs r6, #1
	str r6, [sp, #0x68]
_08035DBC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035DE2
	ldr r0, [sp, #0x68]
	cmp r0, #5
	bne _08035DD0
	movs r1, #4
	str r1, [sp, #0x68]
	b _08035E06
_08035DD0:
	ldr r2, [sp, #0x68]
	cmp r2, #1
	bne _08035DDC
	movs r3, #2
	str r3, [sp, #0x68]
	b _08035E06
_08035DDC:
	movs r4, #3
	str r4, [sp, #0x68]
	b _08035E06
_08035DE2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035E06
	ldr r5, [sp, #0x68]
	cmp r5, #5
	bne _08035DF6
	movs r6, #6
	str r6, [sp, #0x68]
	b _08035E06
_08035DF6:
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne _08035E02
	movs r1, #8
	str r1, [sp, #0x68]
	b _08035E06
_08035E02:
	movs r2, #7
	str r2, [sp, #0x68]
_08035E06:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035E30
	ldr r3, [sp, #0x68]
	cmp r3, #0
	beq _08035E1C
	adds r0, r3, #0
	subs r0, #1
	b _08035E1E
_08035E1C:
	ldrh r0, [r7, #8]
_08035E1E:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r4, [sp, #0xa4]
	strh r1, [r4]
	ldr r5, [sp, #0xa0]
	strh r1, [r5]
	b _08035F06
_08035E30:
	ldr r6, [sp, #0x68]
	cmp r6, #0
	bne _08035E3A
	strh r6, [r7, #0xa]
	b _08035F06
_08035E3A:
	ldr r0, [sp, #0x68]
	subs r0, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	str r5, [r7, #0x18]
	ldr r6, [r7, #0x14]
	str r6, [r7, #0x1c]
	ldr r1, _08035F10 @ =0x080FB5D0
	mov sb, r1
	movs r2, #8
	ldrsh r0, [r7, r2]
	lsls r3, r0, #3
	adds r2, r3, r1
	ldr r4, _08035F14 @ =0x080FB5AC
	mov sl, r4
	movs r1, #0x68
	adds r1, r1, r7
	mov r8, r1
	ldrh r1, [r1]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r2, _08035F18 @ =0x080FB5D4
	adds r3, r3, r2
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08035F06
	subs r0, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r3, r0, #3
	mov r4, sb
	adds r2, r3, r4
	mov r4, r8
	ldrh r1, [r4]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r1, _08035F18 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08035F06
	movs r2, #8
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, sb
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #3
	ldr r5, _08035F18 @ =0x080FB5D4
	adds r1, r1, r5
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_08035F06:
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r6, [sp, #0x9c]
	strh r0, [r6]
	b _08036020
	.align 2, 0
_08035F10: .4byte 0x080FB5D0
_08035F14: .4byte 0x080FB5AC
_08035F18: .4byte 0x080FB5D4
_08035F1C:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1]
	ldr r2, [sp, #0x80]
	cmp r0, r2
	bne _08035F54
	ldr r3, [sp, #0xa8]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08035F42
	ldr r4, [sp, #0x84]
	cmp r4, #6
	bne _08035F42
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r5, #0
	str r5, [sp, #0x60]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
_08035F42:
	ldr r6, [sp, #0x9c]
	ldrh r0, [r6]
	ldr r1, [sp, #0x80]
	cmp r0, r1
	bne _08035F54
	ldr r2, [sp, #0x84]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	beq _0803601C
_08035F54:
	ldrh r4, [r7, #0xa]
	str r4, [sp, #0x84]
	ldrh r0, [r7, #8]
	adds r0, #0x18
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08035FA6
	bl sub_08007544
	cmp r0, #0
	bne _08035F82
	bl sub_080075AC
	cmp r0, #0
	bne _08035F82
	movs r0, #0x93
	bl PlaySE
_08035F82:
	bl sub_080076A8
	cmp r0, #0
	beq _08035F92
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1d
	b _08035F98
_08035F92:
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1b
_08035F98:
	strh r0, [r1]
	ldrh r0, [r7]
	movs r1, #1
	ldr r2, [sp, #0x74]
	bl sub_0802EEA8
	b _08035FD4
_08035FA6:
	bl sub_08007544
	cmp r0, #0
	bne _08035FBC
	bl sub_080075AC
	cmp r0, #0
	bne _08035FBC
	movs r0, #0x94
	bl PlaySE
_08035FBC:
	adds r0, r7, #0
	adds r0, #0x88
	movs r1, #0x23
	strh r1, [r0]
	ldrh r0, [r7]
	movs r1, #2
	ldr r2, [sp, #0x74]
	bl sub_0802EEA8
	movs r0, #0x77
	bl PlaySE
_08035FD4:
	ldr r6, [sp, #0x9c]
	ldrh r6, [r6]
	b _0803601A
_08035FDA:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1]
	ldr r2, [sp, #0x80]
	cmp r0, r2
	bne _0803600C
	ldr r3, [sp, #0xa8]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08035FFA
	ldr r4, [sp, #0x84]
	cmp r4, #7
	bne _08035FFA
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r5, #0
	str r5, [sp, #0x60]
_08035FFA:
	ldr r6, [sp, #0x9c]
	ldrh r0, [r6]
	ldr r1, [sp, #0x80]
	cmp r0, r1
	bne _0803600C
	ldr r2, [sp, #0x84]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	beq _0803601C
_0803600C:
	ldrh r4, [r7, #0xa]
	str r4, [sp, #0x84]
	ldrh r0, [r7, #8]
	adds r0, #0x10
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	ldrh r6, [r5]
_0803601A:
	str r6, [sp, #0x80]
_0803601C:
	movs r0, #0
	str r0, [sp, #0x70]
_08036020:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _080360EA
	movs r1, #0x14
	str r1, [sp, #0x6c]
	ldrh r2, [r7, #0x28]
	str r2, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x7c]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080360E4
	bl sub_08016FA0
	cmp r0, #0
	bne _0803609C
	bl sub_080271D0
	cmp r0, #0
	bne _0803609C
	bl sub_08007544
	cmp r0, #0
	bne _0803609C
	bl sub_08007510
	cmp r0, #0
	bne _0803609C
	bl sub_080075AC
	cmp r0, #0
	bne _0803609C
	bl sub_080076E0
	cmp r0, #0
	bne _0803609C
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080360D8 @ =0x00090078
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	bl GetMultiplayerId
	ldr r2, _080360DC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007798
_0803609C:
	movs r4, #0x14
	str r4, [sp, #0x64]
	movs r1, #0
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r0, #0x20
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	ldr r6, [sp, #0xa0]
	strh r1, [r6]
	ldr r0, [sp, #0xa4]
	strh r1, [r0]
	str r1, [sp, #0x70]
	ldr r0, _080360E0 @ =0x0300680C
	movs r4, #1
	str r4, [r0]
	movs r0, #2
	bl FadeOutBGM
	ldrh r3, [r7, #2]
	ldr r2, [sp, #0x70]
	str r2, [sp]
	str r4, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	b _080360EA
	.align 2, 0
_080360D8: .4byte 0x00090078
_080360DC: .4byte gPlayers
_080360E0: .4byte 0x0300680C
_080360E4:
	add r3, sp, #0x7c
	ldrh r3, [r3]
	strh r3, [r7, #0xa]
_080360EA:
	ldr r0, [sp, #0x6c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x6c]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803615C
	ldr r4, [sp, #0x78]
	cmp r4, #0
	bne _08036110
	ldr r5, _0803610C @ =0x0000FFFF
	str r5, [sp, #0x6c]
	b _08036160
	.align 2, 0
_0803610C: .4byte 0x0000FFFF
_08036110:
	bl sub_08007544
	cmp r0, #0
	bne _0803613E
	bl sub_08007510
	cmp r0, #0
	bne _0803613E
	bl sub_08007604
	cmp r0, #0
	bne _0803613E
	bl sub_080075AC
	cmp r0, #0
	bne _0803613E
	ldr r6, [sp, #0x7c]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x78]
	bl sub_0800EA74
_0803613E:
	movs r0, #2
	ldr r1, [sp, #0x6c]
	ands r0, r1
	cmp r0, #0
	beq _08036160
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #0x10
	ldr r3, _08036158 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	b _08036160
	.align 2, 0
_08036158: .4byte 0xFFFF0000
_0803615C:
	ldr r4, _08036484 @ =0x0000FFFF
	str r4, [sp, #0x6c]
_08036160:
	ldr r5, [sp, #0x9c]
	ldrh r1, [r5]
	ldr r6, [sp, #0x70]
	str r6, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	bl sub_08026C40
	ldr r1, [sp, #0xa8]
	strh r0, [r1]
	bl sub_08007510
	cmp r0, #0
	bne _08036200
	bl sub_080271D0
	cmp r0, #0
	bne _08036200
	bl sub_08007544
	cmp r0, #0
	bne _08036200
	bl sub_080075AC
	mov r8, r0
	cmp r0, #0
	bne _08036200
	ldr r0, [sp, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x4c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08005F60
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	movs r2, #0x30
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r5, #0
	ldrsh r1, [r6, r5]
	ldr r6, [sp, #0x9c]
	ldrh r2, [r6]
	ldr r5, [sp, #0xa0]
	ldrh r3, [r5]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08036200:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08036236
	bl sub_080074CC
	cmp r0, #0
	bne _08036236
	ldr r0, _08036488 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08036236
	bl sub_08007578
	cmp r0, #0
	bne _08036236
	ldr r6, [sp, #0x64]
	cmp r6, #0x15
	beq _08036236
	bl sub_08035972
_08036236:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	ldr r1, _0803648C @ =gActiveEnemyMask
	ldrh r0, [r7]
	lsls r4, r0
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	ldr r0, [sp, #0x5c]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _080362B8
	ldr r4, _08036490 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080362B8
	ldr r0, _08036494 @ =0x030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _080362B8
	bl sub_08007544
	cmp r0, #0
	bne _080362B8
	bl sub_08007510
	cmp r0, #0
	bne _080362B8
	bl sub_08007604
	cmp r0, #0
	bne _080362B8
	bl sub_080075AC
	cmp r0, #0
	bne _080362B8
	bl sub_080076E0
	cmp r0, #0
	bne _080362B8
	ldr r0, _08036498 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_080362B8:
	bl sub_08007750
	cmp r0, #0
	beq _080362C2
	b _080363CC
_080362C2:
	bl sub_080074CC
	cmp r0, #0
	beq _080362CC
	b _080363CC
_080362CC:
	ldr r4, _08036488 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080363CC
	bl sub_08007578
	cmp r0, #0
	bne _080363CC
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _080363CC
	ldr r4, _0803649C @ =0x03003D94
	adds r0, r4, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _08036320
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036320
	ldr r3, _080364A0 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08036320
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08036320:
	ldr r4, _08036490 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x54]
	bl CalcExpGain
	str r0, [sp, #0x70]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x70]
	bl AddExp
	adds r5, r0, #0
	movs r4, #0x13
	ldr r6, _08036484 @ =0x0000FFFF
_0803634E:
	ldr r0, [r7, #0x14]
	ldr r1, _080364A4 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _08036382
	bl sub_08007510
	cmp r0, #0
	bne _08036382
	bl sub_080075AC
	cmp r0, #0
	bne _08036382
	ldr r0, _08036498 @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08036382
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	bl sub_08024320
_08036382:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bne _0803634E
	cmp r5, #0
	beq _080363CC
	bl sub_08007544
	cmp r0, #0
	bne _080363AA
	bl sub_080075AC
	cmp r0, #0
	bne _080363AA
	movs r0, #0x25
	bl PlaySE
_080363AA:
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _08036490 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_080363CC:
	bl sub_08007750
	cmp r0, #0
	bne _0803646A
	bl sub_080074CC
	cmp r0, #0
	bne _0803646A
	ldr r4, _08036488 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803646A
	bl sub_08007578
	cmp r0, #0
	bne _0803646A
	ldr r0, _080364A8 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _080364AC @ =0x03003D08
	ldr r1, [r3]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08036454
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08036454
	ldr r2, _080364B0 @ =gPlayerStats
	ldr r4, _080364B4 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r5, #0x9d
	lsls r5, r5, #2
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
	ldr r6, _080364B8 @ =0x00000275
	adds r2, r2, r6
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08036454:
	bl sub_0800F53C
	ldr r4, _080364BC @ =0x030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0803646A
	ldr r0, [r4]
	bl KillThread
_0803646A:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036484: .4byte 0x0000FFFF
_08036488: .4byte 0x030063D8
_0803648C: .4byte gActiveEnemyMask
_08036490: .4byte gPlayers
_08036494: .4byte 0x030064D8
_08036498: .4byte 0x03003910
_0803649C: .4byte 0x03003D94
_080364A0: .4byte 0x00000157
_080364A4: .4byte 0xFFFFFE00
_080364A8: .4byte 0x00000BB8
_080364AC: .4byte 0x03003D08
_080364B0: .4byte gPlayerStats
_080364B4: .4byte 0x00000272
_080364B8: .4byte 0x00000275
_080364BC: .4byte 0x030063E4

	thumb_func_start sub_080364C0
sub_080364C0: @ 0x080364C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	ldr r0, _080364EC @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	cmp r2, r0
	bhs _08036502
	adds r3, r0, #0
_080364E0:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _080364F0
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _080364FA
	.align 2, 0
_080364EC: .4byte 0x030063D8
_080364F0:
	cmp r0, #3
	bne _080364FA
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x4c]
_080364FA:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _080364E0
_08036502:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x48]
	ldrh r0, [r7]
	adds r0, #0xf0
	movs r4, #0
	strh r0, [r7, #2]
	ldr r0, _08036664 @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r1, [sp, #0x4c]
	adds r0, r0, r1
	subs r0, #4
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r0, #4
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	strh r4, [r7, #8]
	strh r4, [r7, #0xa]
	strh r4, [r7, #0xc]
	strh r4, [r7, #0x28]
	str r4, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x48]
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r5, #0x72
	adds r5, r5, r7
	mov sl, r5
	ldrh r0, [r5]
	movs r1, #5
	bl __udivsi3
	strh r0, [r7, #0x38]
	movs r0, #0x74
	adds r0, r0, r7
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	movs r1, #0x48
	adds r1, r1, r7
	mov r8, r1
	movs r0, #0x2a
	strh r0, [r1]
	adds r6, r7, #0
	adds r6, #0x4a
	strh r4, [r6]
	adds r5, r7, #0
	adds r5, #0x4c
	strh r4, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	adds r2, r7, #0
	adds r2, #0x6c
	ldrh r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	ldrh r0, [r7]
	movs r1, #1
	ands r1, r0
	movs r0, #3
	mov r4, sl
	str r4, [sp, #0x84]
	mov r3, sb
	str r3, [sp, #0x88]
	mov r4, r8
	str r4, [sp, #0x74]
	str r6, [sp, #0x78]
	str r5, [sp, #0x7c]
	str r2, [sp, #0x80]
	cmp r1, #0
	beq _080365D0
	movs r0, #1
_080365D0:
	adds r4, r7, #0
	adds r4, #0x86
	strb r0, [r4]
	ldr r5, [sp, #0x48]
	ldr r0, [r5, #0x28]
	ldrh r1, [r5, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r1, [r5, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x50]
	adds r0, #0x15
	ldrh r2, [r5, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x50]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x50]
	adds r0, #6
	strb r0, [r1, #0x1d]
	movs r2, #0
	ldr r0, _08036668 @ =0x0000FFFF
	str r0, [sp, #0x58]
	movs r1, #1
	str r1, [sp, #0x5c]
	str r2, [r7, #0x54]
	movs r2, #0xfa
	lsls r2, r2, #2
	str r2, [sp, #0x54]
	ldr r0, _0803666C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r0, [r0]
	str r4, [sp, #0x8c]
	cmp r0, #0
	beq _08036636
	b _08036CF4
_08036636:
	bl sub_080271D0
	adds r5, r0, #0
	cmp r5, #0
	beq _08036642
	b _08036B78
_08036642:
	ldr r0, [sp, #0x54]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
	movs r6, #0
	strh r5, [r7, #6]
	strh r5, [r7, #4]
	ldr r3, [sp, #0x8c]
	ldrb r4, [r3]
	cmp r4, #1
	beq _08036670
	cmp r4, #3
	bne _08036660
	b _0803677A
_08036660:
	b _0803686E
	.align 2, 0
_08036664: .4byte 0x03003910
_08036668: .4byte 0x0000FFFF
_0803666C: .4byte 0x030063D8
_08036670:
	ldr r0, [r7, #0x54]
	cmp r0, #1
	beq _0803669E
	cmp r0, #1
	blo _08036686
	cmp r0, #2
	beq _08036740
	cmp r0, #3
	bne _08036684
	b _08036828
_08036684:
	b _0803686E
_08036686:
	adds r0, r7, #0
	movs r1, #0x1e
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _0803669A
	str r4, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _0803686E
_0803669A:
	movs r0, #2
	b _08036774
_0803669E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _080366DC @ =gPlayers
	movs r2, #0xd4
	ldr r4, [sp, #0x60]
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080366E4
	ldr r0, _080366E0 @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _080366F2
	.align 2, 0
_080366DC: .4byte gPlayers
_080366E0: .4byte 0x0000FFBF
_080366E4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080366F4
	ldr r0, _0803670C @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_080366F2:
	strh r0, [r7, #4]
_080366F4:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036714
	ldr r0, _08036710 @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _08036722
	.align 2, 0
_0803670C: .4byte 0x0000FF7F
_08036710: .4byte 0x0000FFDF
_08036714:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08036724
	ldr r0, _0803673C @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_08036722:
	strh r0, [r7, #4]
_08036724:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _08036732
	b _0803686E
_08036732:
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x37
	str r0, [r7, #0x5c]
	b _0803686E
	.align 2, 0
_0803673C: .4byte 0x0000FFEF
_08036740:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _08036772
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	bne _08036756
	b _0803686E
_08036756:
	ldr r5, [sp, #0x80]
	ldrh r0, [r5]
	ldr r1, [sp, #0x54]
	cmp r0, r1
	blo _08036762
	b _0803686E
_08036762:
	movs r2, #0
	str r2, [sp, #0x54]
	strh r4, [r7, #6]
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x3c
	str r0, [r7, #0x5c]
	b _0803686E
_08036772:
	movs r0, #3
_08036774:
	str r0, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _0803686E
_0803677A:
	strh r5, [r7, #6]
	strh r5, [r7, #4]
	ldr r6, [r7, #0x54]
	cmp r6, #1
	beq _080367AA
	cmp r6, #1
	blo _0803678E
	cmp r6, #2
	beq _08036828
	b _0803686E
_0803678E:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _080367A2
	movs r0, #1
	str r0, [r7, #0x54]
	b _08036820
_080367A2:
	movs r0, #2
	str r0, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _08036820
_080367AA:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _08036820
	ldr r1, _08036818 @ =gPlayers
	movs r0, #0xd4
	ldr r2, [sp, #0x60]
	muls r0, r2, r0
	adds r1, #0xd0
	adds r4, r0, r1
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _08036820
	bl sub_08007604
	cmp r0, #0
	bne _08036820
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, [r4]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #0xb4
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803681C
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _0803681C
	ldr r3, [sp, #0x80]
	ldrh r0, [r3]
	ldr r4, [sp, #0x54]
	cmp r0, r4
	bhs _0803681C
	movs r5, #0
	str r5, [sp, #0x54]
	movs r0, #2
	str r0, [r7, #0x54]
	movs r0, #0x3a
	str r0, [r7, #0x5c]
	strh r6, [r7, #6]
	b _0803686E
	.align 2, 0
_08036818: .4byte gPlayers
_0803681C:
	strh r5, [r7, #6]
	b _0803686E
_08036820:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	b _0803686E
_08036828:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08036880 @ =gPlayers
	movs r2, #0xd4
	ldr r4, [sp, #0x60]
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r5, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _0803686E
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bls _0803686E
	str r5, [r7, #0x54]
_0803686E:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bls _08036876
	b _08036B78
_08036876:
	lsls r0, r0, #2
	ldr r1, _08036884 @ =_08036888
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08036880: .4byte gPlayers
_08036884: .4byte _08036888
_08036888: @ jump table
	.4byte _080368AC @ case 0
	.4byte _080368DE @ case 1
	.4byte _08036B78 @ case 2
	.4byte _08036B78 @ case 3
	.4byte _08036B78 @ case 4
	.4byte _08036B78 @ case 5
	.4byte _08036A38 @ case 6
	.4byte _08036AAC @ case 7
	.4byte _08036AF8 @ case 8
_080368AC:
	ldrh r0, [r7, #8]
	adds r0, #0x2a
	movs r2, #0
	ldr r5, [sp, #0x74]
	strh r0, [r5]
	ldrh r1, [r7, #6]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080368CE
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r0, [sp, #0x7c]
	strh r2, [r0]
	ldr r1, [sp, #0x78]
	strh r2, [r1]
_080368CE:
	ldrh r1, [r7, #4]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _080368DA
	b _08036B78
_080368DA:
	strh r3, [r7, #0xa]
	b _08036B78
_080368DE:
	movs r2, #0
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080368EE
	movs r2, #5
	b _080368F8
_080368EE:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080368F8
	movs r2, #1
_080368F8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036914
	cmp r2, #5
	bne _08036908
	movs r2, #4
	b _0803692E
_08036908:
	cmp r2, #1
	bne _08036910
	movs r2, #2
	b _0803692E
_08036910:
	movs r2, #3
	b _0803692E
_08036914:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803692E
	cmp r2, #5
	bne _08036924
	movs r2, #6
	b _0803692E
_08036924:
	cmp r2, #1
	bne _0803692C
	movs r2, #8
	b _0803692E
_0803692C:
	movs r2, #7
_0803692E:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08036954
	cmp r2, #0
	beq _08036940
	subs r0, r2, #1
	b _08036942
_08036940:
	ldrh r0, [r7, #8]
_08036942:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0x7c]
	strh r1, [r2]
	ldr r3, [sp, #0x78]
	strh r1, [r3]
	b _08036A20
_08036954:
	cmp r2, #0
	bne _0803695C
	strh r2, [r7, #0xa]
	b _08036A20
_0803695C:
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	str r5, [r7, #0x18]
	ldr r6, [r7, #0x14]
	str r6, [r7, #0x1c]
	ldr r4, _08036A2C @ =0x080FB5D0
	mov sb, r4
	movs r1, #8
	ldrsh r0, [r7, r1]
	lsls r3, r0, #3
	adds r2, r3, r4
	ldr r4, _08036A30 @ =0x080FB5AC
	mov sl, r4
	movs r1, #0x68
	adds r1, r1, r7
	mov r8, r1
	ldrh r1, [r1]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r2, _08036A34 @ =0x080FB5D4
	adds r3, r3, r2
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08036A20
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r3, r0, #3
	mov r4, sb
	adds r2, r3, r4
	mov r4, r8
	ldrh r1, [r4]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r1, _08036A34 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08036A20
	movs r2, #8
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, sb
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #3
	ldr r5, _08036A34 @ =0x080FB5D4
	adds r1, r1, r5
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_08036A20:
	ldrh r0, [r7, #8]
	adds r0, #0x32
	ldr r1, [sp, #0x74]
	strh r0, [r1]
	b _08036B78
	.align 2, 0
_08036A2C: .4byte 0x080FB5D0
_08036A30: .4byte 0x080FB5AC
_08036A34: .4byte 0x080FB5D4
_08036A38:
	ldr r2, [sp, #0x74]
	ldrh r0, [r2]
	ldr r3, [sp, #0x6c]
	cmp r0, r3
	bne _08036A72
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08036A60
	ldr r4, [sp, #0x70]
	ldrh r5, [r7, #0xa]
	cmp r4, r5
	bne _08036A60
	movs r0, #0
	strh r0, [r7, #0xa]
	str r0, [sp, #0x54]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
_08036A60:
	ldr r1, [sp, #0x74]
	ldrh r0, [r1]
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bne _08036A72
	ldr r3, [sp, #0x70]
	ldrh r4, [r7, #0xa]
	cmp r3, r4
	beq _08036AA6
_08036A72:
	ldrh r5, [r7, #0xa]
	str r5, [sp, #0x70]
	ldrh r0, [r7, #8]
	adds r0, #0x3a
	ldr r1, [sp, #0x74]
	strh r0, [r1]
	bl sub_080076A8
	cmp r0, #0
	beq _08036A8E
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1d
	b _08036A94
_08036A8E:
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1b
_08036A94:
	strh r0, [r1]
	ldrh r0, [r7]
	movs r1, #1
	ldr r2, [sp, #0x60]
	bl sub_0802EEA8
	ldr r2, [sp, #0x74]
	ldrh r2, [r2]
	str r2, [sp, #0x6c]
_08036AA6:
	movs r3, #0
	str r3, [sp, #0x5c]
	b _08036B78
_08036AAC:
	ldr r4, [sp, #0x74]
	ldrh r0, [r4]
	ldr r5, [sp, #0x6c]
	cmp r0, r5
	bne _08036AE2
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08036AD0
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0xa]
	cmp r0, r1
	bne _08036AD0
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r2, #0
	str r2, [sp, #0x54]
_08036AD0:
	ldr r3, [sp, #0x74]
	ldrh r0, [r3]
	ldr r4, [sp, #0x6c]
	cmp r0, r4
	bne _08036AE2
	ldr r5, [sp, #0x70]
	ldrh r0, [r7, #0xa]
	cmp r5, r0
	beq _08036AF2
_08036AE2:
	ldrh r1, [r7, #0xa]
	str r1, [sp, #0x70]
	ldrh r0, [r7, #8]
	adds r0, #0x10
	ldr r2, [sp, #0x74]
	strh r0, [r2]
	ldrh r3, [r2]
	str r3, [sp, #0x6c]
_08036AF2:
	movs r4, #0
	str r4, [sp, #0x5c]
	b _08036B78
_08036AF8:
	ldr r5, [sp, #0x74]
	ldrh r0, [r5]
	ldr r1, [sp, #0x6c]
	cmp r0, r1
	bne _08036B64
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08036B52
	ldr r2, [sp, #0x70]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	bne _08036B52
	ldr r0, _08036BA8 @ =0x0300680C
	ldr r4, [r0]
	cmp r4, #0
	bne _08036B52
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r5, [sp, #0x4c]
	adds r0, r0, r5
	subs r0, #4
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r5
	subs r0, #4
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r1, [sp, #0x84]
	ldrh r0, [r1]
	movs r1, #5
	bl __udivsi3
	strh r0, [r7, #0x38]
	ldr r2, [sp, #0x88]
	ldrh r0, [r2]
	strh r0, [r7, #0x3a]
	strh r4, [r7, #0xa]
	movs r3, #0
	str r3, [sp, #0x54]
_08036B52:
	ldr r4, [sp, #0x74]
	ldrh r0, [r4]
	ldr r5, [sp, #0x6c]
	cmp r0, r5
	bne _08036B64
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0xa]
	cmp r0, r1
	beq _08036B74
_08036B64:
	ldrh r2, [r7, #0xa]
	str r2, [sp, #0x70]
	ldrh r0, [r7, #8]
	adds r0, #0x22
	ldr r3, [sp, #0x74]
	strh r0, [r3]
	ldrh r4, [r3]
	str r4, [sp, #0x6c]
_08036B74:
	movs r5, #0
	str r5, [sp, #0x5c]
_08036B78:
	ldr r0, _08036BA8 @ =0x0300680C
	ldr r0, [r0]
	cmp r0, #0
	beq _08036B84
	movs r0, #8
	strh r0, [r7, #0xa]
_08036B84:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _08036BB2
	movs r0, #0x14
	str r0, [sp, #0x58]
	ldrh r1, [r7, #0x28]
	str r1, [sp, #0x64]
	movs r2, #0
	str r2, [sp, #0x68]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08036BAC
	movs r0, #8
	strh r0, [r7, #0xa]
	b _08036BB2
	.align 2, 0
_08036BA8: .4byte 0x0300680C
_08036BAC:
	add r3, sp, #0x68
	ldrh r3, [r3]
	strh r3, [r7, #0xa]
_08036BB2:
	ldr r0, [sp, #0x58]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x58]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08036C24
	ldr r4, [sp, #0x64]
	cmp r4, #0
	bne _08036BD8
	ldr r5, _08036BD4 @ =0x0000FFFF
	str r5, [sp, #0x58]
	b _08036C28
	.align 2, 0
_08036BD4: .4byte 0x0000FFFF
_08036BD8:
	bl sub_08007544
	cmp r0, #0
	bne _08036C06
	bl sub_08007510
	cmp r0, #0
	bne _08036C06
	bl sub_08007604
	cmp r0, #0
	bne _08036C06
	bl sub_080075AC
	cmp r0, #0
	bne _08036C06
	ldr r0, [sp, #0x68]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x64]
	bl sub_0800EA74
_08036C06:
	movs r0, #2
	ldr r1, [sp, #0x58]
	ands r0, r1
	cmp r0, #0
	beq _08036C28
	ldr r2, [sp, #0x68]
	lsls r0, r2, #0x10
	ldr r3, _08036C20 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	b _08036C28
	.align 2, 0
_08036C20: .4byte 0xFFFF0000
_08036C24:
	ldr r4, _08036D1C @ =0x0000FFFF
	str r4, [sp, #0x58]
_08036C28:
	bl sub_08007510
	cmp r0, #0
	bne _08036CBC
	bl sub_08007604
	cmp r0, #0
	bne _08036CBC
	bl sub_08007544
	cmp r0, #0
	bne _08036CBC
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08036CBC
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	str r3, [sp, #0x90]
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	movs r2, #0x30
	str r2, [sp]
	ldr r3, [sp, #0x90]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x74]
	ldrh r1, [r0]
	ldr r2, [sp, #0x5c]
	str r2, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r5, #0
	ldrsh r1, [r6, r5]
	ldr r3, [sp, #0x74]
	ldrh r2, [r3]
	ldr r5, [sp, #0x78]
	ldrh r3, [r5]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08036CBC:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08036CF4
	bl sub_080074CC
	cmp r0, #0
	bne _08036CF4
	ldr r4, _08036D20 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08036CF4
	bl sub_08007578
	cmp r0, #0
	bne _08036CF4
	ldr r0, [r4]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08036CF4
	b _08036636
_08036CF4:
	ldr r2, _08036D24 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x50]
	bl sub_0800CB84
	bl ThreadExit
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036D1C: .4byte 0x0000FFFF
_08036D20: .4byte 0x030063D8
_08036D24: .4byte gActiveEnemyMask

	thumb_func_start sub_08036D28
sub_08036D28: @ 0x08036D28
	push {r4, r5, r6, r7, lr}
	bl sub_0800E934
	adds r3, r0, #0
	cmp r3, #0
	blt _08036DB8
	ldr r2, _08036DA4 @ =gActiveEnemyMask
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08036DA8 @ =gEnemies
	movs r0, #0x94
	muls r0, r3, r0
	ldr r5, [r1]
	adds r5, r5, r0
	movs r6, #0
	strh r3, [r5]
	lsls r0, r3, #0x18
	str r0, [r5, #0x2c]
	ldr r7, _08036DAC @ =0x030048D0
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #3
	adds r0, r7, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08036DB0 @ =sub_080364C0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	bl Alloc
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r0, [r1]
	adds r1, r7, #0
	adds r1, #0x10
	adds r1, r4, r1
	ldr r2, _08036DB4 @ =0x000007FC
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x3c
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x18
	adds r0, r4, r0
	str r6, [r0]
	adds r4, r4, r7
	str r6, [r4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	movs r0, #1
	b _08036DBA
	.align 2, 0
_08036DA4: .4byte gActiveEnemyMask
_08036DA8: .4byte gEnemies
_08036DAC: .4byte 0x030048D0
_08036DB0: .4byte sub_080364C0
_08036DB4: .4byte 0x000007FC
_08036DB8:
	movs r0, #0
_08036DBA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08036DC0
sub_08036DC0: @ 0x08036DC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe0
	mov sl, r0
	ldr r0, _08036FA4 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r3, sp
	adds r3, #0x31
	str r3, [sp, #0xc4]
	mov r6, sp
	adds r6, #0x80
	str r6, [sp, #0xdc]
	adds r3, #0x4d
	str r3, [sp, #0xd8]
	subs r6, #4
	str r6, [sp, #0xd4]
	cmp r2, r0
	bhs _08036E06
	adds r3, r0, #0
_08036DF4:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _08036DFE
	ldr r0, [r1, #4]
	adds r4, r1, r0
_08036DFE:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _08036DF4
_08036E06:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x8c]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	mov r1, sl
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsls r0, r0, #0xf
	str r0, [r1, #0x10]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xf
	str r0, [r1, #0x14]
	ldr r0, _08036FA8 @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r1, #0x26]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	strh r2, [r1, #0xc]
	strh r2, [r1, #0x28]
	str r2, [r1, #0x30]
	strh r2, [r1, #0x2a]
	adds r1, #0x64
	ldr r0, [sp, #0x8c]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r6, sl
	adds r6, #0x48
	str r6, [sp, #0xbc]
	strh r2, [r6]
	mov r0, sl
	adds r0, #0x4a
	str r0, [sp, #0xc0]
	strh r2, [r0]
	movs r1, #0x4c
	add r1, sl
	mov r8, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	str r0, [r2, #0x2c]
	mov r7, sl
	adds r7, #0x72
	ldrh r4, [r7]
	ldr r6, _08036FAC @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r7]
	movs r3, #0x6e
	add r3, sl
	mov sb, r3
	ldrh r4, [r3]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r6, sb
	strh r4, [r6]
	ldrh r0, [r7]
	mov r1, sl
	strh r0, [r1, #0x38]
	mov r0, sl
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r1, #0x3a]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #0x28]
	ldrh r1, [r2, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	ldr r3, [sp, #0x8c]
	ldr r1, [r3, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldr r4, [sp, #0x8c]
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x94]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x94]
	adds r0, #6
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #0x94]
	adds r0, #7
	strb r0, [r1, #0x1e]
	movs r0, #8
	ldr r1, [sp, #0xc4]
	strb r0, [r1]
	bl sub_08033DF4
	bl sub_08038924
	bl sub_08038980
	bl sub_08038A44
	bl sub_08007544
	ldr r2, [sp, #0xbc]
	str r2, [sp, #0xc8]
	ldr r3, [sp, #0xc0]
	str r3, [sp, #0xcc]
	mov r4, r8
	str r4, [sp, #0xd0]
	cmp r0, #0
	bne _08036F98
	bl sub_080075AC
	cmp r0, #0
	bne _08036F98
	ldr r5, _08036FB0 @ =gPlayers
	movs r4, #0xd4
_08036F64:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _08036F64
	bl GetMultiplayerId
	ldr r5, _08036FB0 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	strh r1, [r0, #0xa]
_08036F98:
	ldr r0, [sp, #0xdc]
	movs r1, #0x33
	bl sub_0802934C
	b _08036FB8
	.align 2, 0
_08036FA4: .4byte 0x030063D8
_08036FA8: .4byte 0x03003910
_08036FAC: .4byte 0x080FB740
_08036FB0: .4byte gPlayers
_08036FB4:
	bl WaitFrame
_08036FB8:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _08036FB4
	ldr r6, _08036FF8 @ =0x0000FFFF
	str r6, [sp, #0x98]
	movs r0, #1
	str r0, [sp, #0x9c]
	movs r1, #0
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xac]
	mov r4, r8
	ldr r3, [sp, #0xd8]
	strh r4, [r3]
	ldr r6, [sp, #0xd4]
	strh r4, [r6]
	movs r0, #0
	str r0, [sp, #0xb8]

	thumb_func_start sub_08036FDC
sub_08036FDC: @ 0x08036FDC
	bl sub_080271D0
	cmp r0, #0
	beq _08036FE6
	b _08037508
_08036FE6:
	mov r1, r8
	cmp r1, #0x10
	bls _08036FEE
	b _08037508
_08036FEE:
	lsls r0, r1, #2
	ldr r1, _08036FFC @ =_08037000
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08036FF8: .4byte 0x0000FFFF
_08036FFC: .4byte _08037000
_08037000: @ jump table
	.4byte _08037044 @ case 0
	.4byte _08037050 @ case 1
	.4byte _08037088 @ case 2
	.4byte _080370D0 @ case 3
	.4byte _08037106 @ case 4
	.4byte _08037110 @ case 5
	.4byte _08037174 @ case 6
	.4byte _08037188 @ case 7
	.4byte _080371BC @ case 8
	.4byte _080371D8 @ case 9
	.4byte _08037252 @ case 10
	.4byte _08037260 @ case 11
	.4byte _080372AE @ case 12
	.4byte _080372C8 @ case 13
	.4byte _08037302 @ case 14
	.4byte _08037322 @ case 15
	.4byte _0803734A @ case 16
_08037044:
	movs r2, #1
	mov r8, r2
	movs r0, #0
	str r0, [sp, #0x84]
	str r0, [sp, #0x88]
	b _0803710A
_08037050:
	add r0, sp, #0x84
	movs r2, #0x7d
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0xb4]
	bl sub_080270A4
	add r0, sp, #0x88
	movs r1, #0
	movs r2, #0xdc
	ldr r3, [sp, #0xb4]
	bl sub_080270A4
	ldr r4, [sp, #0xb4]
	adds r4, #8
	str r4, [sp, #0xb4]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bgt _0803707A
	b _08037508
_0803707A:
	movs r6, #2
	mov r8, r6
	ldr r0, [sp, #0xdc]
	movs r1, #0x34
	bl sub_0802934C
	b _08037508
_08037088:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _08037090
	b _08037508
_08037090:
	bl sub_08007510
	cmp r0, #0
	bne _080370BE
	bl sub_08007544
	cmp r0, #0
	bne _080370BE
	bl sub_080075AC
	cmp r0, #0
	bne _080370BE
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080370CC @ =0x00090079
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
_080370BE:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _08037508
	.align 2, 0
_080370CC: .4byte 0x00090079
_080370D0:
	bl sub_08007510
	cmp r0, #0
	bne _080370FA
	bl sub_08007544
	cmp r0, #0
	bne _080370FA
	bl sub_080075AC
	cmp r0, #0
	bne _080370FA
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	bne _080370F4
	b _08037508
_080370F4:
	movs r0, #4
	mov r8, r0
	b _080370FE
_080370FA:
	movs r1, #4
	mov r8, r1
_080370FE:
	mov r0, sl
	bl sub_080389DC
	b _08037508
_08037106:
	movs r2, #5
	mov r8, r2
_0803710A:
	movs r3, #0
	str r3, [sp, #0xb4]
	b _08037508
_08037110:
	add r0, sp, #0x84
	movs r1, #0x7d
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0xb4]
	bl sub_080270A4
	add r0, sp, #0x88
	movs r1, #0xdc
	movs r2, #0
	ldr r3, [sp, #0xb4]
	bl sub_080270A4
	ldr r4, [sp, #0xb4]
	adds r4, #8
	str r4, [sp, #0xb4]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _0803713E
	mov r0, sl
	bl sub_080389DC
_0803713E:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r6, [sp, #0xb4]
	cmp r6, r0
	bgt _0803714A
	b _08037508
_0803714A:
	bl GetMultiplayerId
	ldr r2, _0803716C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08037170 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
	movs r0, #6
	mov r8, r0
	b _08037508
	.align 2, 0
_0803716C: .4byte gPlayers
_08037170: .4byte 0x0000FFFE
_08037174:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _0803717C
	b _08037508
_0803717C:
	movs r1, #7
	mov r8, r1
	movs r0, #0x12
	mov r2, sl
	str r0, [r2, #0x5c]
	b _08037508
_08037188:
	ldr r1, _080371B8 @ =0x080FBD00
	ldr r3, [sp, #0xb8]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r8, r0
	movs r4, #0
	str r4, [sp, #0xac]
	ldr r6, [sp, #0xd8]
	strh r4, [r6]
	add r0, sp, #0xac
	ldrh r1, [r0]
	ldr r0, [sp, #0xd4]
	strh r1, [r0]
	adds r3, #1
	str r3, [sp, #0xb8]
	cmp r3, #6
	ble _080371B0
	movs r1, #0
	str r1, [sp, #0xb8]
_080371B0:
	movs r2, #0
	str r2, [sp, #0xa8]
	b _08037508
	.align 2, 0
_080371B8: .4byte 0x080FBD00
_080371BC:
	movs r1, #0
	movs r0, #1
	ldr r3, [sp, #0xc8]
	strh r0, [r3]
	ldr r4, [sp, #0xd0]
	strh r1, [r4]
	ldr r6, [sp, #0xcc]
	strh r1, [r6]
	mov r0, sl
	adds r0, #0x4e
	strh r1, [r0]
	movs r0, #9
	mov r8, r0
	b _08037508
_080371D8:
	mov r0, sl
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803722E
	bl sub_080076A8
	cmp r0, #0
	beq _0803721A
	ldr r0, [sp, #0xa8]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xa8]
	cmp r0, #3
	bls _08037204
	movs r2, #6
	mov r8, r2
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
	b _08037226
_08037204:
	movs r3, #8
	mov r8, r3
	movs r4, #0
	str r4, [sp, #0xac]
	ldr r6, [sp, #0xd8]
	strh r4, [r6]
	add r0, sp, #0xac
	ldrh r1, [r0]
	ldr r0, [sp, #0xd4]
	strh r1, [r0]
	b _08037226
_0803721A:
	movs r1, #6
	mov r8, r1
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
_08037226:
	mov r2, sl
	ldr r0, [r2, #0x2c]
	adds r0, #1
	str r0, [r2, #0x2c]
_0803722E:
	bl sub_08007544
	cmp r0, #0
	bne _0803724C
	ldr r3, [sp, #0xcc]
	ldrh r0, [r3]
	cmp r0, #1
	bne _0803724C
	bl sub_080075AC
	cmp r0, #0
	bne _0803724C
	movs r0, #0x2c
	bl PlaySE
_0803724C:
	movs r4, #0
	str r4, [sp, #0x9c]
	b _08037508
_08037252:
	ldr r6, [sp, #0xac]
	cmp r6, #0
	bne _0803725A
	b _08037508
_0803725A:
	movs r0, #0xb
	mov r8, r0
	b _080372BE
_08037260:
	mov r0, sl
	movs r1, #0
	bl sub_08038AA0
	mov r0, sl
	movs r1, #1
	bl sub_08038AA0
	mov r0, sl
	movs r1, #2
	bl sub_08038AA0
	bl sub_080076A8
	cmp r0, #0
	beq _080372A8
	ldr r0, [sp, #0xa8]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xa8]
	cmp r0, #3
	bls _08037292
	movs r3, #6
	mov r8, r3
	b _08037340
_08037292:
	movs r4, #0xa
	mov r8, r4
	movs r6, #0
	str r6, [sp, #0xac]
	ldr r0, [sp, #0xd8]
	strh r6, [r0]
	add r1, sp, #0xac
	ldrh r2, [r1]
	ldr r1, [sp, #0xd4]
	strh r2, [r1]
	b _08037508
_080372A8:
	movs r2, #6
	mov r8, r2
	b _08037340
_080372AE:
	ldr r3, [sp, #0xac]
	cmp r3, #0
	bne _080372B6
	b _08037508
_080372B6:
	movs r4, #0xd
	mov r8, r4
	movs r6, #0
	str r6, [sp, #0xb0]
_080372BE:
	mov r1, sl
	ldr r0, [r1, #0x2c]
	adds r0, #1
	str r0, [r1, #0x2c]
	b _08037508
_080372C8:
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xa
	bhi _080372D8
	b _08037508
_080372D8:
	movs r2, #0
	str r2, [sp, #0xb0]
	mov r0, sl
	bl sub_080388D0
	movs r3, #0xe
	mov r8, r3
	bl sub_08007544
	cmp r0, #0
	beq _080372F0
	b _08037508
_080372F0:
	bl sub_080075AC
	cmp r0, #0
	beq _080372FA
	b _08037508
_080372FA:
	movs r0, #0x39
	bl PlaySE
	b _08037508
_08037302:
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xa
	bhi _08037312
	b _08037508
_08037312:
	movs r4, #0
	str r4, [sp, #0xb0]
	mov r0, sl
	bl sub_080388D0
	movs r6, #0xf
	mov r8, r6
	b _08037508
_08037322:
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xa
	bhi _08037332
	b _08037508
_08037332:
	movs r0, #0
	str r0, [sp, #0xb0]
	mov r0, sl
	bl sub_080388D0
	movs r1, #6
	mov r8, r1
_08037340:
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
	b _08037508
_0803734A:
	bl sub_08016FA0
	cmp r0, #0
	beq _08037354
	b _080374BC
_08037354:
	bl sub_080271D0
	cmp r0, #0
	beq _0803735E
	b _080374BC
_0803735E:
	bl sub_08007544
	cmp r0, #0
	beq _08037368
	b _080374BC
_08037368:
	bl sub_08007510
	cmp r0, #0
	beq _08037372
	b _080374BC
_08037372:
	bl sub_080075AC
	cmp r0, #0
	beq _0803737C
	b _080374BC
_0803737C:
	bl sub_080076E0
	cmp r0, #0
	beq _08037386
	b _080374BC
_08037386:
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	beq _080373B8
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	bl FadeOutBGM
	bl GetMultiplayerId
	ldr r2, _080374B4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080374B8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	bl sub_080077AC
_080373B8:
	movs r0, #0xf
	ldr r2, [sp, #0xa8]
	ands r0, r2
	adds r2, #1
	str r2, [sp, #0xa8]
	cmp r0, #0
	beq _080373C8
	b _08037508
_080373C8:
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080373DE
	adds r0, #0xf
_080373DE:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08037400
	adds r1, #0x1f
_08037400:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803742C
	adds r0, #0xf
_0803742C:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803744E
	adds r1, #0x1f
_0803744E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803747A
	adds r0, #0xf
_0803747A:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803749C
	adds r1, #0x1f
_0803749C:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	b _08037508
	.align 2, 0
_080374B4: .4byte gPlayers
_080374B8: .4byte 0x0000FFFE
_080374BC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	bl FadeOutBGM
	bl sub_08016FA0
	cmp r0, #0
	bne _08037508
	bl sub_08007544
	cmp r0, #0
	bne _08037508
	bl sub_08007510
	cmp r0, #0
	bne _08037508
	bl sub_080075AC
	cmp r0, #0
	bne _08037508
	bl sub_080076E0
	cmp r0, #0
	bne _08037508
	bl GetMultiplayerId
	ldr r2, _080375A8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080375AC @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_08037508:
	mov r1, sl
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bne _080375BC
	movs r2, #0x14
	str r2, [sp, #0x98]
	ldrh r3, [r1, #0x28]
	str r3, [sp, #0xa0]
	movs r4, #0
	str r4, [sp, #0xa4]
	mov r0, sl
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080375B4
	bl sub_08016FA0
	cmp r0, #0
	bne _08037586
	bl sub_080271D0
	cmp r0, #0
	bne _08037586
	bl sub_08007544
	cmp r0, #0
	bne _08037586
	bl sub_08007510
	cmp r0, #0
	bne _08037586
	bl sub_080075AC
	cmp r0, #0
	bne _08037586
	bl sub_080076E0
	cmp r0, #0
	bne _08037586
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080375B0 @ =0x0009007A
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
	bl GetMultiplayerId
	ldr r2, _080375A8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007798
_08037586:
	mov r6, sl
	ldrh r3, [r6, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	movs r0, #0x10
	mov r8, r0
	movs r0, #8
	strh r0, [r6, #0xa]
	b _080375BC
	.align 2, 0
_080375A8: .4byte gPlayers
_080375AC: .4byte 0x0000FFFE
_080375B0: .4byte 0x0009007A
_080375B4:
	add r1, sp, #0xa4
	ldrh r2, [r1]
	mov r1, sl
	strh r2, [r1, #0xa]
_080375BC:
	ldr r0, [sp, #0x98]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x98]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08037620
	ldr r2, [sp, #0xa0]
	cmp r2, #0
	beq _08037620
	bl sub_08007544
	cmp r0, #0
	bne _08037604
	bl sub_08007510
	cmp r0, #0
	bne _08037604
	bl sub_08007604
	cmp r0, #0
	bne _08037604
	bl sub_080075AC
	cmp r0, #0
	bne _08037604
	ldr r4, [sp, #0xa4]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0xa0]
	bl sub_0800EA74
_08037604:
	movs r0, #2
	ldr r6, [sp, #0x98]
	ands r0, r6
	cmp r0, #0
	beq _08037624
	ldr r1, [sp, #0xa4]
	lsls r0, r1, #0x10
	ldr r2, _0803761C @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	b _08037624
	.align 2, 0
_0803761C: .4byte 0xFFFF0000
_08037620:
	ldr r3, _08037988 @ =0x0000FFFF
	str r3, [sp, #0x98]
_08037624:
	mov r4, r8
	cmp r4, #9
	bne _08037710
	bl GetMultiplayerId
	mov r6, sl
	ldr r4, [r6, #0x10]
	asrs r4, r4, #0xc
	ldr r6, _0803798C @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	mov r1, sl
	ldr r2, [r1, #0x14]
	asrs r2, r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08037710
	ldr r2, [sp, #0xcc]
	ldrh r0, [r2]
	cmp r0, #2
	bne _08037710
	cmp r4, #0x31
	bhi _08037710
	bl GetMultiplayerId
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r7, r6, #0
	adds r7, #0x80
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08037710
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	bne _080376A8
	b _0803787A
_080376A8:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08037710
	bl sub_08007544
	cmp r0, #0
	bne _08037710
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _08037990 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	mov r0, sl
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	mov r6, sl
	ldrh r1, [r6]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r6, #0x2c]
	str r0, [r1]
_08037710:
	mov r1, sl
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _0803771A
	b _0803787A
_0803771A:
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x84]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08005F60
	mov r2, sl
	ldr r0, [r2, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r2, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r3, sl
	ldr r0, [r3, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x30
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0xc8]
	ldrh r1, [r0]
	ldr r2, [sp, #0x9c]
	str r2, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0xcc]
	ldr r3, [sp, #0xd0]
	bl sub_08026C40
	mov r1, sl
	adds r1, #0x4e
	strh r0, [r1]
	mov r3, r8
	cmp r3, #0xc
	bne _08037796
	str r6, [sp]
	add r0, sp, #0x10
	movs r1, #0xb
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
_08037796:
	mov r4, r8
	cmp r4, #0xa
	bne _080377B0
	str r6, [sp]
	add r0, sp, #0x10
	movs r1, #0xa
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
_080377B0:
	bl sub_08007510
	cmp r0, #0
	bne _0803787A
	bl sub_08007604
	cmp r0, #0
	bne _0803787A
	bl sub_08007544
	cmp r0, #0
	bne _0803787A
	bl sub_080075AC
	cmp r0, #0
	bne _0803787A
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldr r6, [sp, #0x8c]
	ldrh r2, [r6, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	mov r0, r8
	cmp r0, #3
	beq _080377FE
	bl sub_080077C0
	cmp r0, #0
	bne _080377FE
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
_080377FE:
	add r7, sp, #0x78
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xc8]
	ldrh r2, [r3]
	ldr r4, [sp, #0xcc]
	ldrh r3, [r4]
	mov r6, sb
	str r6, [sp]
	add r6, sp, #0x2c
	str r6, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	mov r0, r8
	cmp r0, #0xc
	bne _0803784E
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp, #0xd4]
	ldrh r3, [r4]
	movs r2, #0
	str r2, [sp]
	str r6, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xb
	bl sub_08004344
_0803784E:
	mov r0, r8
	cmp r0, #0xa
	bne _0803787A
	add r2, sp, #0x78
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r4, #0x7a
	add r4, sp
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r2, [sp, #0xd4]
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	str r6, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08004344
_0803787A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080378B0
	bl sub_080074CC
	cmp r0, #0
	bne _080378B0
	ldr r0, _08037994 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080378B0
	bl sub_08007578
	cmp r0, #0
	bne _080378B0
	mov r3, r8
	cmp r3, #0x11
	beq _080378B0
	bl sub_08036FDC
_080378B0:
	bl sub_080292D0
	mov r4, sl
	ldrh r3, [r4, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	bl sub_08038948
	bl sub_080389A4
	bl sub_08038A68
	ldr r1, _08037998 @ =gActiveEnemyMask
	mov r6, sl
	ldrh r6, [r6]
	lsls r4, r6
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	ldr r0, [sp, #0x94]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _08037942
	ldr r4, _0803798C @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08037942
	ldr r0, _0803799C @ =0x030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _08037942
	bl sub_08007544
	cmp r0, #0
	bne _08037942
	bl sub_08007510
	cmp r0, #0
	bne _08037942
	bl sub_08007604
	cmp r0, #0
	bne _08037942
	bl sub_080075AC
	cmp r0, #0
	bne _08037942
	bl sub_080076E0
	cmp r0, #0
	bne _08037942
	ldr r0, _080379A0 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_08037942:
	bl sub_08007750
	cmp r0, #0
	beq _0803794C
	b _08037A72
_0803794C:
	bl sub_080074CC
	cmp r0, #0
	beq _08037956
	b _08037A72
_08037956:
	ldr r4, _08037994 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037968
	b _08037A72
_08037968:
	bl sub_08007578
	cmp r0, #0
	beq _08037972
	b _08037A72
_08037972:
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	mov r1, sl
	ldrh r0, [r1, #0x36]
	cmp r0, #0
	beq _08037A72
	ldr r4, _080379A4 @ =0x03003D94
	b _080379A8
	.align 2, 0
_08037988: .4byte 0x0000FFFF
_0803798C: .4byte gPlayers
_08037990: .4byte 0x0000FFFE
_08037994: .4byte 0x030063D8
_08037998: .4byte gActiveEnemyMask
_0803799C: .4byte 0x030064D8
_080379A0: .4byte 0x03003910
_080379A4: .4byte 0x03003D94
_080379A8:
	adds r0, r4, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _080379D4
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080379D4
	ldr r3, _08037B28 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080379D4
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_080379D4:
	ldr r4, _08037B2C @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x8c]
	bl CalcExpGain
	str r0, [sp, #0x9c]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x9c]
	bl AddExp
	adds r5, r0, #0
	movs r4, #0x13
	ldr r6, _08037B30 @ =0x0000FFFF
_08037A02:
	mov r1, sl
	ldr r0, [r1, #0x14]
	ldr r2, _08037B34 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r1, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _08037A38
	bl sub_08007510
	cmp r0, #0
	bne _08037A38
	bl sub_080075AC
	cmp r0, #0
	bne _08037A38
	ldr r0, _08037B38 @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08037A38
	mov r0, sl
	ldr r1, [sp, #0x9c]
	bl sub_08024320
_08037A38:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bne _08037A02
	cmp r5, #0
	beq _08037A72
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _08037B2C @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_08037A72:
	bl sub_08007750
	cmp r0, #0
	bne _08037B10
	bl sub_080074CC
	cmp r0, #0
	bne _08037B10
	ldr r4, _08037B3C @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037B10
	bl sub_08007578
	cmp r0, #0
	bne _08037B10
	ldr r0, _08037B40 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08037B44 @ =0x03003D08
	ldr r1, [r3]
	movs r2, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08037AFA
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08037AFA
	ldr r2, _08037B48 @ =gPlayerStats
	ldr r4, _08037B4C @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08037B50 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08037AFA:
	bl sub_0800F53C
	ldr r4, _08037B54 @ =0x030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08037B10
	ldr r0, [r4]
	bl KillThread
_08037B10:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xe0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037B28: .4byte 0x00000157
_08037B2C: .4byte gPlayers
_08037B30: .4byte 0x0000FFFF
_08037B34: .4byte 0xFFFFFE00
_08037B38: .4byte 0x03003910
_08037B3C: .4byte 0x030063D8
_08037B40: .4byte 0x00000BB8
_08037B44: .4byte 0x03003D08
_08037B48: .4byte gPlayerStats
_08037B4C: .4byte 0x00000272
_08037B50: .4byte 0x00000275
_08037B54: .4byte 0x030063E4

	thumb_func_start sub_08037B58
sub_08037B58: @ 0x08037B58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r7, r0, #0
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	adds r0, r7, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x15
	movs r2, #3
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r1, sp
	adds r1, #0x31
	movs r0, #8
	strb r0, [r1]
	ldr r1, [r7, #0x10]
	mov sb, r1
	ldr r2, [r7, #0x14]
	mov r8, r2
	movs r3, #0x78
	str r3, [sp, #0x48]
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0x4c]
	b _08037D46
_08037BB6:
	ldr r1, _08037D84 @ =0x0805289C
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #7
	add sb, r0
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #7
	add r8, r0
	bl GetMultiplayerId
	mov r3, sb
	asrs r4, r3, #0xc
	ldr r6, _08037D88 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	mov r1, r8
	asrs r2, r1, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08037CA6
	cmp r4, #0xb
	bhi _08037CA6
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	movs r2, #0x80
	adds r2, r2, r6
	mov sl, r2
	add r1, sl
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _08037CA6
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _08037CA6
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08037CA6
	bl sub_08007544
	cmp r0, #0
	bne _08037CA6
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _08037D8C @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r0, r7, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sl
	ldr r0, [r7, #0x2c]
	str r0, [r1]
_08037CA6:
	bl sub_08007510
	cmp r0, #0
	bne _08037D1A
	bl sub_08007604
	cmp r0, #0
	bne _08037D1A
	bl sub_08007544
	cmp r0, #0
	bne _08037D1A
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08037D1A
	mov r0, sb
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r6, sp
	adds r6, #0x46
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0x4c]
	adds r3, r6, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	ldr r3, [sp, #0x4c]
	movs r1, #0
	ldrsh r2, [r3, r1]
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0xc
	movs r3, #2
	bl sub_08004344
_08037D1A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08037D66
	bl sub_080074CC
	cmp r0, #0
	bne _08037D66
	ldr r0, _08037D90 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037D66
	bl sub_08007578
	cmp r0, #0
	bne _08037D66
_08037D46:
	ldr r1, [sp, #0x48]
	lsls r0, r1, #0x10
	ldr r2, _08037D94 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x48]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08037D66
	bl sub_08007544
	cmp r0, #0
	bne _08037D66
	b _08037BB6
_08037D66:
	movs r0, #0x39
	bl StopSE
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037D84: .4byte 0x0805289C
_08037D88: .4byte gPlayers
_08037D8C: .4byte 0x0000FFFE
_08037D90: .4byte 0x030063D8
_08037D94: .4byte 0xFFFF0000

	thumb_func_start sub_08037D98
sub_08037D98: @ 0x08037D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	str r0, [sp, #0x5c]
	adds r6, r1, #0
	ldr r0, _08037E9C @ =0x00040022
	movs r1, #0
	bl sub_0800CAC0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08037EA0 @ =0x00100023
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x20
	movs r2, #0
	bl sub_08026ADC
	adds r0, r4, #0
	adds r0, #0x15
	ldr r1, [sp, #0x5c]
	adds r1, #0x7e
	ldrh r2, [r1]
	lsls r2, r2, #5
	ldr r1, [sp, #0x2c]
	adds r1, r1, r2
	movs r2, #1
	bl LoadPalette
	add r0, sp, #0x20
	adds r4, #5
	movs r5, #0
	strb r4, [r0, #0x1c]
	ldr r0, [sp, #0x5c]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x5c]
	ldr r1, [r1, #0x14]
	mov sl, r1
	ldr r1, _08037EA4 @ =gEnemies
	movs r0, #0x94
	muls r0, r6, r0
	adds r0, #0x94
	ldr r1, [r1]
	adds r7, r1, r0
	ldr r2, _08037EA8 @ =gActiveEnemyMask
	adds r4, r6, #1
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r0, #0xfe
	subs r0, r0, r6
	strh r0, [r7, #2]
	ldr r2, [sp, #0x5c]
	ldr r0, [r2, #0x10]
	str r0, [r7, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r7, #0x14]
	ldr r0, _08037EAC @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r5, [r7, #8]
	strh r5, [r7, #0xa]
	strh r5, [r7, #0xc]
	strh r5, [r7, #0x28]
	strh r5, [r7, #0x2a]
	str r5, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	adds r0, r2, #0
	adds r0, #0x64
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r3, r6}
	stm r1!, {r3, r6}
	adds r1, r7, #0
	adds r1, #0x87
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x38]
	strh r5, [r7, #0x3a]
	adds r0, r7, #0
	adds r0, #0x48
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	strh r4, [r7]
	strh r5, [r7, #0xa]
	movs r0, #0
	str r0, [sp, #0x74]
	mov r2, sp
	adds r2, #0x56
	strh r0, [r2]
	add r1, sp, #0x54
	add r3, sp, #0x74
	ldrh r3, [r3]
	strh r3, [r1]
	movs r4, #2
	str r4, [sp, #0x68]
	movs r6, #1
	str r6, [sp, #0x78]
	str r0, [sp, #0x88]
	movs r3, #0
	str r3, [sp, #0x84]
	ldr r4, _08037EB0 @ =0x0000FFFF
	str r4, [sp, #0x7c]
	adds r6, #0xff
	str r6, [sp, #0x8c]
	b _080385D2
	.align 2, 0
_08037E9C: .4byte 0x00040022
_08037EA0: .4byte 0x00100023
_08037EA4: .4byte gEnemies
_08037EA8: .4byte gActiveEnemyMask
_08037EAC: .4byte 0x03003910
_08037EB0: .4byte 0x0000FFFF
_08037EB4:
	bl sub_08007510
	cmp r0, #0
	bne _08037ECA
	bl sub_08007604
	cmp r0, #0
	bne _08037ECA
	adds r0, r7, #0
	bl sub_0800E49C
_08037ECA:
	bl GetMultiplayerId
	ldr r5, [r7, #0x10]
	asrs r5, r5, #0xc
	ldr r4, _08037F20 @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r5, r5, r0
	bl GetMultiplayerId
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	muls r0, r6, r0
	adds r4, #0x5c
	adds r0, r0, r4
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	adds r0, r5, #0
	muls r0, r5, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bls _08037F14
	b _080382AC
_08037F14:
	lsls r0, r0, #2
	ldr r1, _08037F24 @ =_08037F28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08037F20: .4byte gPlayers
_08037F24: .4byte _08037F28
_08037F28: @ jump table
	.4byte _08037F4C @ case 0
	.4byte _08037FCE @ case 1
	.4byte _08038224 @ case 2
	.4byte _080382AC @ case 3
	.4byte _080382AC @ case 4
	.4byte _080382AC @ case 5
	.4byte _080382AC @ case 6
	.4byte _08038236 @ case 7
	.4byte _0803827E @ case 8
_08037F4C:
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	adds r4, r0, #0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08037F88 @ =gPlayers
	movs r2, #0xd4
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #8
	str r4, [sp]
	bl sub_0800C9EC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08037F8C
	movs r0, #1
	strh r0, [r7, #0xa]
	b _080382AC
	.align 2, 0
_08037F88: .4byte gPlayers
_08037F8C:
	cmp r5, #0x20
	bls _08037F92
	b _080382AC
_08037F92:
	ldr r1, [sp, #0x88]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	cmp r1, #0xb4
	bhi _08037FA2
	b _080382AC
_08037FA2:
	ldrh r0, [r7, #8]
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x78]
	movs r4, #0
	str r4, [sp, #0x74]
	movs r0, #2
	strh r0, [r7, #0xa]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r6, #0x56
	add r6, sp
	strh r4, [r6]
	add r0, sp, #0x74
	ldrh r0, [r0]
	add r1, sp, #0x54
	strh r0, [r1]
	b _080382AC
_08037FCE:
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	adds r4, r0, #0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08038010 @ =gPlayers
	movs r2, #0xd4
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #8
	str r4, [sp]
	bl sub_0800C9EC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08038014
	movs r2, #5
	str r2, [sp, #0x64]
	b _08038020
	.align 2, 0
_08038010: .4byte gPlayers
_08038014:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038020
	movs r3, #1
	str r3, [sp, #0x64]
_08038020:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08038042
	ldr r4, [sp, #0x64]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r6, #4
	str r6, [sp, #0x64]
	cmp r0, #5
	beq _08038064
	movs r2, #3
	str r2, [sp, #0x64]
	cmp r0, #1
	bne _08038064
	movs r3, #2
	b _08038062
_08038042:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08038064
	ldr r4, [sp, #0x64]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r6, #6
	str r6, [sp, #0x64]
	cmp r0, #5
	beq _08038064
	movs r2, #7
	str r2, [sp, #0x64]
	cmp r0, #1
	bne _08038064
	movs r3, #8
_08038062:
	str r3, [sp, #0x64]
_08038064:
	cmp r1, #0
	bne _0803806C
	strh r1, [r7, #0xa]
	b _080382AC
_0803806C:
	ldr r4, [sp, #0x64]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r0, #1
	strh r1, [r7, #8]
	adds r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	cmp r0, #0x17
	bls _08038084
	b _080381DE
_08038084:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r6, [sp, #0x8c]
	cmp r6, r0
	beq _08038090
	b _080381DE
_08038090:
	ldr r1, [r7, #0x10]
	str r1, [r7, #0x18]
	ldr r0, [r7, #0x14]
	str r0, [r7, #0x1c]
	str r1, [sp, #0x60]
	mov sl, r0
	bl sub_080076A8
	cmp r0, #0
	beq _080380C0
	ldr r3, _080380B8 @ =0x080FB5D0
	movs r0, #8
	ldrsh r1, [r7, r0]
	lsls r1, r1, #3
	adds r0, r1, r3
	ldr r2, _080380BC @ =0x080FB5AC
	ldr r0, [r0]
	ldr r2, [r2, #0x10]
	b _080380D0
	.align 2, 0
_080380B8: .4byte 0x080FB5D0
_080380BC: .4byte 0x080FB5AC
_080380C0:
	ldr r3, _0803812C @ =0x080FB5D0
	movs r6, #8
	ldrsh r1, [r7, r6]
	lsls r1, r1, #3
	adds r0, r1, r3
	ldr r2, _08038130 @ =0x080FB5AC
	ldr r0, [r0]
	ldr r2, [r2, #8]
_080380D0:
	muls r0, r2, r0
	ldr r4, [sp, #0x60]
	adds r4, r4, r0
	str r4, [sp, #0x60]
	adds r3, #4
	adds r1, r1, r3
	ldr r0, [r1]
	muls r0, r2, r0
	add sl, r0
	movs r6, #8
	ldrsh r0, [r7, r6]
	ldr r1, [sp, #0x60]
	mov r2, sl
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0x64]
	cmp r0, #0
	beq _080381DE
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r7, #8]
	ldr r2, [r7, #0x10]
	str r2, [sp, #0x60]
	ldr r3, [r7, #0x14]
	mov sl, r3
	bl sub_080076A8
	cmp r0, #0
	beq _08038134
	ldr r3, _0803812C @ =0x080FB5D0
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #3
	adds r0, r1, r3
	ldr r2, _08038130 @ =0x080FB5AC
	ldr r0, [r0]
	ldr r2, [r2, #0x10]
	muls r0, r2, r0
	ldr r6, [sp, #0x60]
	adds r6, r6, r0
	str r6, [sp, #0x60]
	b _0803814C
	.align 2, 0
_0803812C: .4byte 0x080FB5D0
_08038130: .4byte 0x080FB5AC
_08038134:
	ldr r3, _080381A8 @ =0x080FB5D0
	movs r0, #8
	ldrsh r1, [r7, r0]
	lsls r1, r1, #3
	adds r0, r1, r3
	ldr r2, _080381AC @ =0x080FB5AC
	ldr r0, [r0]
	ldr r2, [r2, #8]
	muls r0, r2, r0
	ldr r4, [sp, #0x60]
	adds r4, r4, r0
	str r4, [sp, #0x60]
_0803814C:
	adds r3, #4
	adds r1, r1, r3
	ldr r0, [r1]
	muls r0, r2, r0
	add sl, r0
	movs r6, #8
	ldrsh r0, [r7, r6]
	ldr r1, [sp, #0x60]
	mov r2, sl
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0x64]
	cmp r0, #0
	beq _080381DE
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r7, #8]
	bl sub_080076A8
	cmp r0, #0
	beq _080381B0
	ldr r2, _080381A8 @ =0x080FB5D0
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r3, _080381AC @ =0x080FB5AC
	ldr r1, [r0]
	ldr r0, [r3, #0x10]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r0, [r7, r4]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r3, #0x10]
	b _080381D6
	.align 2, 0
_080381A8: .4byte 0x080FB5D0
_080381AC: .4byte 0x080FB5AC
_080381B0:
	ldr r2, _0803821C @ =0x080FB5D0
	movs r6, #8
	ldrsh r0, [r7, r6]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r3, _08038220 @ =0x080FB5AC
	ldr r1, [r0]
	ldr r0, [r3, #8]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r1, #8
	ldrsh r0, [r7, r1]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r3, #8]
_080381D6:
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_080381DE:
	cmp r5, #0x20
	bhi _080382AC
	ldr r1, [sp, #0x88]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	cmp r1, #0xb4
	bls _080382AC
	ldrh r0, [r7, #8]
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	movs r2, #0
	str r2, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x74]
	movs r0, #2
	strh r0, [r7, #0xa]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r4, #0x56
	add r4, sp
	strh r3, [r4]
	add r6, sp, #0x74
	ldrh r6, [r6]
	add r0, sp, #0x54
	strh r6, [r0]
	b _080382AC
	.align 2, 0
_0803821C: .4byte 0x080FB5D0
_08038220: .4byte 0x080FB5AC
_08038224:
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne _080382AC
	strh r0, [r7, #0xa]
	movs r2, #1
	str r2, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x88]
	b _080382AC
_08038236:
	ldr r0, [sp, #0x68]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08038266
	ldrh r4, [r7, #8]
	adds r0, r4, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	movs r6, #0
	str r6, [sp, #0x74]
	movs r0, #0
	str r0, [sp, #0x78]
	add r1, sp, #0x54
	strh r6, [r1]
	add r2, sp, #0x74
	ldrh r2, [r2]
	movs r3, #0x56
	add r3, sp
	strh r2, [r3]
	b _080382AC
_08038266:
	movs r3, #0
	str r3, [sp, #0x78]
	ldr r4, [sp, #0x74]
	cmp r4, #0
	beq _080382AC
	strh r3, [r7, #0xa]
	add r0, sp, #0x78
	ldrh r0, [r0]
	strh r0, [r7, #0x28]
	movs r1, #1
	str r1, [sp, #0x78]
	b _080382AC
_0803827E:
	ldr r2, [sp, #0x74]
	cmp r2, #0
	beq _080382AC
	ldr r0, [sp, #0x84]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x84]
	movs r1, #0x96
	lsls r1, r1, #2
	cmp r0, r1
	bls _080382AC
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x38]
	movs r3, #0
	str r3, [sp, #0x84]
	strh r3, [r7, #0x2a]
	add r6, sp, #0x84
	ldrh r6, [r6]
	strh r6, [r7, #0x28]
_080382AC:
	bl sub_08001F64
	cmp r0, #0
	beq _080382DC
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _080382DC
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	beq _080382DC
	ldr r1, [sp, #0x80]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	cmp r1, #0x1e
	bls _080382DC
	adds r0, r7, #0
	bl sub_080273DC
	cmp r0, #0
	beq _080382DC
	movs r0, #0
	str r0, [sp, #0x80]
_080382DC:
	bl sub_08007670
	cmp r0, #0
	bne _0803838A
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0803838A
	add r1, sp, #0x54
	ldrh r0, [r1]
	cmp r0, #2
	bne _0803838A
	cmp r5, #0x17
	bhi _0803838A
	ldr r5, _08038428 @ =gPlayers
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	movs r4, #0xd4
	muls r0, r4, r0
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _0803838A
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0803838A
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0803838A
	bl sub_08007544
	cmp r0, #0
	bne _0803838A
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r4, r0, r5
	movs r0, #7
	strh r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x70
	ldr r0, _0803842C @ =0x0000FFFE
	strh r0, [r1]
	adds r0, r7, #0
	adds r1, r4, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r7, #0x2c]
	str r0, [r1]
	movs r3, #0
	movs r6, #3
	movs r5, #0x96
	lsls r5, r5, #1
	adds r2, r4, #0
	adds r2, #0x24
_0803836E:
	ldr r1, [r4, #0x1c]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0
	beq _0803837E
	cmp r1, #3
	bne _08038382
_0803837E:
	strh r6, [r0]
	strh r5, [r2]
_08038382:
	adds r2, #2
	adds r3, #1
	cmp r3, #2
	bls _0803836E
_0803838A:
	add r3, sp, #0x54
	mov sb, r3
	ldr r4, [sp, #0x78]
	str r4, [sp]
	add r0, sp, #0x20
	ldr r1, [sp, #0x68]
	mov r2, sb
	mov r3, sp
	adds r3, #0x56
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	bl sub_08007510
	cmp r0, #0
	beq _080383B0
	b _080384D0
_080383B0:
	bl sub_08007604
	cmp r0, #0
	beq _080383BA
	b _080384D0
_080383BA:
	bl sub_08007544
	cmp r0, #0
	beq _080383C4
	b _080384D0
_080383C4:
	bl sub_080075AC
	mov r8, r0
	cmp r0, #0
	beq _080383D0
	b _080384D0
_080383D0:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x58
	mov r5, sp
	adds r5, #0x5a
	movs r2, #0x30
	str r2, [sp]
	mov r6, r8
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r1, [sp, #0x60]
	asrs r0, r1, #0xc
	mov r2, sl
	asrs r1, r2, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r2, #0
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _0803845E
	ldr r0, [sp, #0x8c]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	ldr r0, _08038430 @ =0x000009FF
	ldr r3, [sp, #0x8c]
	cmp r3, r0
	bls _08038434
	movs r4, #0xa0
	lsls r4, r4, #4
	str r4, [sp, #0x8c]
	b _080384D0
	.align 2, 0
_08038428: .4byte gPlayers
_0803842C: .4byte 0x0000FFFE
_08038430: .4byte 0x000009FF
_08038434:
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r4, sb
	ldrh r3, [r4]
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	ldr r2, [sp, #0x20]
	str r2, [sp, #0xc]
	ldr r6, [sp, #0x8c]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r2, r8
	str r2, [sp, #0x18]
	b _080384A4
_0803845E:
	ldr r0, [sp, #0x8c]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	cmp r0, #0xff
	bhi _08038472
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x8c]
_08038472:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x8c]
	cmp r1, r0
	bls _080384B0
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r6, sb
	ldrh r3, [r6]
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	ldr r2, [sp, #0x20]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x8c]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r6, r8
	str r6, [sp, #0x18]
_080384A4:
	movs r2, #1
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x68]
	bl sub_080039C8
	b _080384D0
_080384B0:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	add r4, sp, #0x54
	ldrh r3, [r4]
	str r6, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	ldr r2, [sp, #0x20]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x68]
	bl sub_08004344
_080384D0:
	ldr r6, [sp, #0x5c]
	ldrh r0, [r6, #0x38]
	cmp r0, #0
	bne _080384DA
	strh r0, [r7, #0x38]
_080384DA:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _08038536
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0x2a]
	cmp r0, r1
	beq _080384F4
	movs r2, #0x14
	str r2, [sp, #0x7c]
	ldrh r3, [r7, #0x2a]
	str r3, [sp, #0x70]
	movs r4, #0
	str r4, [sp, #0x6c]
_080384F4:
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038536
	ldrh r3, [r7, #2]
	movs r4, #0
	str r4, [sp]
	movs r5, #1
	str r5, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_080076A8
	cmp r0, #0
	beq _08038524
	movs r6, #0x96
	lsls r6, r6, #1
	str r6, [sp, #0x84]
_08038524:
	movs r0, #8
	strh r0, [r7, #0xa]
	strh r5, [r7, #0x38]
	strh r4, [r7, #0x2a]
	strh r4, [r7, #0x28]
	movs r0, #0
	str r0, [sp, #0x78]
	movs r1, #0
	str r1, [sp, #0x74]
_08038536:
	ldr r0, [sp, #0x7c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x7c]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803859C
	ldr r2, [sp, #0x70]
	cmp r2, #0
	bne _0803855C
	ldr r3, _08038558 @ =0x0000FFFF
	str r3, [sp, #0x7c]
	b _080385A6
	.align 2, 0
_08038558: .4byte 0x0000FFFF
_0803855C:
	bl sub_08007544
	cmp r0, #0
	bne _08038586
	bl sub_08007510
	cmp r0, #0
	bne _08038586
	bl sub_08007604
	cmp r0, #0
	bne _08038586
	bl sub_080075AC
	cmp r0, #0
	bne _08038586
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	ldr r2, [sp, #0x6c]
	bl sub_0800EA74
_08038586:
	movs r0, #2
	ldr r4, [sp, #0x7c]
	ands r0, r4
	cmp r0, #0
	beq _080385A6
	ldr r0, [sp, #0x6c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	b _080385A6
_0803859C:
	ldr r6, _08038610 @ =0x0000FFFF
	str r6, [sp, #0x7c]
	movs r0, #0
	str r0, [sp, #0x70]
	strh r0, [r7, #0x2a]
_080385A6:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080385DA
	bl sub_080074CC
	cmp r0, #0
	bne _080385DA
	ldr r0, _08038614 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080385DA
	bl sub_08007578
	cmp r0, #0
	bne _080385DA
_080385D2:
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	beq _080385DA
	b _08037EB4
_080385DA:
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #7
	bl sub_08033E6C
	ldr r2, _08038618 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038610: .4byte 0x0000FFFF
_08038614: .4byte 0x030063D8
_08038618: .4byte gActiveEnemyMask

	thumb_func_start sub_0803861C
sub_0803861C: @ 0x0803861C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sb, r0
	str r1, [sp, #0x58]
	add r5, sp, #0x44
	ldr r1, _08038684 @ =0x08054948
	adds r0, r5, #0
	movs r2, #6
	bl memcpy
	add r4, sp, #0x4c
	ldr r1, _08038688 @ =0x0805494E
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	ldr r1, _0803868C @ =0x00100020
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #0xe
	strb r0, [r1, #0x1c]
	mov r0, sb
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x5c]
	mov r1, sb
	ldr r1, [r1, #0x14]
	mov sl, r1
	movs r2, #0x78
	str r2, [sp, #0x60]
	bl sub_08007544
	cmp r0, #0
	beq _08038672
	b _0803888A
_08038672:
	bl sub_080075AC
	cmp r0, #0
	beq _0803867C
	b _0803888A
_0803867C:
	movs r0, #0x56
	bl PlaySE
	b _0803888A
	.align 2, 0
_08038684: .4byte 0x08054948
_08038688: .4byte 0x0805494E
_0803868C: .4byte 0x00100020
_08038690:
	bl sub_080076A8
	cmp r0, #0
	beq _080386CC
	ldr r3, [sp, #0x58]
	lsls r2, r3, #1
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _080386C8 @ =0x0805289C
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #6
	ldr r3, [sp, #0x5c]
	adds r3, r3, r0
	str r3, [sp, #0x5c]
	lsls r1, r1, #1
	ldr r0, _080386C8 @ =0x0805289C
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #6
	b _080386FA
	.align 2, 0
_080386C8: .4byte 0x0805289C
_080386CC:
	ldr r0, [sp, #0x58]
	lsls r2, r0, #1
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _080388BC @ =0x0805289C
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	ldr r3, [sp, #0x5c]
	adds r3, r3, r0
	str r3, [sp, #0x5c]
	lsls r1, r1, #1
	ldr r0, _080388BC @ =0x0805289C
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #5
_080386FA:
	add sl, r0
	str r2, [sp, #0x6c]
	bl GetMultiplayerId
	ldr r1, [sp, #0x5c]
	asrs r6, r1, #0xc
	ldr r2, _080388C0 @ =gPlayers
	mov r8, r2
	movs r7, #0xd4
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r3, sl
	asrs r5, r3, #0xc
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x64]
	str r5, [sp, #0x68]
	cmp r0, #0
	bne _080387DE
	cmp r4, #0x11
	bhi _080387DE
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r5, r8
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _080387DE
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _080387DE
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080387DE
	bl sub_08007544
	cmp r0, #0
	bne _080387DE
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	adds r0, #0x70
	ldr r1, _080388C4 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	mov r0, sb
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x2c]
	str r0, [r1]
_080387DE:
	bl sub_08007510
	cmp r0, #0
	bne _0803885E
	bl sub_08007604
	cmp r0, #0
	bne _0803885E
	bl sub_08007544
	cmp r0, #0
	bne _0803885E
	bl sub_080075AC
	adds r6, r0, #0
	cmp r6, #0
	bne _0803885E
	ldr r1, [sp, #0x1c]
	movs r0, #0x1e
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x64]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x68]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x54
	mov r5, sp
	adds r5, #0x56
	movs r2, #0x30
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	movs r2, #0
	bl sub_08006008
	movs r1, #0
	ldrsh r3, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r2, [sp, #0x6c]
	add r2, sp
	adds r2, #0x4c
	ldrh r2, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r3, #0
	movs r3, #2
	bl sub_08004344
_0803885E:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080388A2
	bl sub_080074CC
	cmp r0, #0
	bne _080388A2
	ldr r0, _080388C8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080388A2
	bl sub_08007578
	cmp r0, #0
	bne _080388A2
_0803888A:
	ldr r3, [sp, #0x60]
	lsls r0, r3, #0x10
	ldr r1, _080388CC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x60]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080388A2
	b _08038690
_080388A2:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080388BC: .4byte 0x0805289C
_080388C0: .4byte gPlayers
_080388C4: .4byte 0x0000FFFE
_080388C8: .4byte 0x030063D8
_080388CC: .4byte 0xFFFF0000

	thumb_func_start sub_080388D0
sub_080388D0: @ 0x080388D0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080388DC @ =0x03000064
	ldr r4, [r0]
	movs r1, #0
	b _080388E8
	.align 2, 0
_080388DC: .4byte 0x03000064
_080388E0:
	adds r1, #1
	adds r4, #0x28
	cmp r1, #2
	bhi _08038918
_080388E8:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080388E0
	cmp r1, #2
	bhi _08038918
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08038920 @ =sub_08037B58
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
_08038918:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038920: .4byte sub_08037B58

	thumb_func_start sub_08038924
sub_08038924: @ 0x08038924
	push {r4, lr}
	ldr r4, _08038944 @ =0x03000064
	movs r0, #0x78
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_08038934:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #2
	bls _08038934
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08038944: .4byte 0x03000064

	thumb_func_start sub_08038948
sub_08038948: @ 0x08038948
	push {r4, r5, r6, lr}
	ldr r0, _0803897C @ =0x03000064
	ldr r4, [r0]
	movs r1, #0
_08038950:
	ldr r0, [r4, #8]
	adds r5, r1, #1
	adds r6, r4, #0
	adds r6, #0x28
	cmp r0, #0
	beq _08038966
_0803895C:
	bl WaitFrame
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0803895C
_08038966:
	adds r1, r5, #0
	adds r4, r6, #0
	cmp r1, #2
	bls _08038950
	ldr r0, _0803897C @ =0x03000064
	ldr r0, [r0]
	bl Free
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803897C: .4byte 0x03000064

	thumb_func_start sub_08038980
sub_08038980: @ 0x08038980
	push {r4, lr}
	ldr r4, _080389A0 @ =0x03000068
	movs r0, #0x50
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_08038990:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #1
	bls _08038990
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080389A0: .4byte 0x03000068

	thumb_func_start sub_080389A4
sub_080389A4: @ 0x080389A4
	push {r4, r5, r6, lr}
	ldr r0, _080389D8 @ =0x03000068
	ldr r4, [r0]
	movs r1, #0
_080389AC:
	ldr r0, [r4, #8]
	adds r5, r1, #1
	adds r6, r4, #0
	adds r6, #0x28
	cmp r0, #0
	beq _080389C2
_080389B8:
	bl WaitFrame
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080389B8
_080389C2:
	adds r1, r5, #0
	adds r4, r6, #0
	cmp r1, #1
	bls _080389AC
	ldr r0, _080389D8 @ =0x03000068
	ldr r0, [r0]
	bl Free
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080389D8: .4byte 0x03000068

	thumb_func_start sub_080389DC
sub_080389DC: @ 0x080389DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080389E8 @ =0x03000068
	ldr r4, [r0]
	movs r5, #0
	b _080389F4
	.align 2, 0
_080389E8: .4byte 0x03000068
_080389EC:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #1
	bhi _08038A34
_080389F4:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080389EC
	cmp r5, #1
	bhi _08038A34
	ldr r2, _08038A3C @ =gActiveEnemyMask
	adds r0, r5, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08038A40 @ =sub_08037D98
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl CreateThread
_08038A34:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038A3C: .4byte gActiveEnemyMask
_08038A40: .4byte sub_08037D98

	thumb_func_start sub_08038A44
sub_08038A44: @ 0x08038A44
	push {r4, lr}
	ldr r4, _08038A64 @ =0x0300006C
	movs r0, #0x78
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_08038A54:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #2
	bls _08038A54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08038A64: .4byte 0x0300006C

	thumb_func_start sub_08038A68
sub_08038A68: @ 0x08038A68
	push {r4, r5, r6, lr}
	ldr r0, _08038A9C @ =0x0300006C
	ldr r4, [r0]
	movs r1, #0
_08038A70:
	ldr r0, [r4, #8]
	adds r5, r1, #1
	adds r6, r4, #0
	adds r6, #0x28
	cmp r0, #0
	beq _08038A86
_08038A7C:
	bl WaitFrame
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08038A7C
_08038A86:
	adds r1, r5, #0
	adds r4, r6, #0
	cmp r1, #2
	bls _08038A70
	ldr r0, _08038A9C @ =0x0300006C
	ldr r0, [r0]
	bl Free
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038A9C: .4byte 0x0300006C

	thumb_func_start sub_08038AA0
sub_08038AA0: @ 0x08038AA0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08038AB0 @ =0x0300006C
	ldr r4, [r0]
	movs r1, #0
	b _08038ABC
	.align 2, 0
_08038AB0: .4byte 0x0300006C
_08038AB4:
	adds r1, #1
	adds r4, #0x28
	cmp r1, #2
	bhi _08038AEE
_08038ABC:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08038AB4
	cmp r1, #2
	bhi _08038AEE
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08038AF4 @ =sub_0803861C
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CreateThread
_08038AEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038AF4: .4byte sub_0803861C

	thumb_func_start sub_08038AF8
sub_08038AF8: @ 0x08038AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x12c
	adds r7, r0, #0
	ldr r0, _08038B38 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x114]
	mov r6, sp
	adds r6, #0xb4
	str r6, [sp, #0x128]
	adds r3, #0x6e
	str r3, [sp, #0x124]
	subs r6, #4
	str r6, [sp, #0x120]
	cmp r2, r0
	bhs _08038B4E
	adds r3, r0, #0
_08038B2C:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _08038B3C
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _08038B46
	.align 2, 0
_08038B38: .4byte 0x030063D8
_08038B3C:
	cmp r0, #3
	bne _08038B46
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0xc4]
_08038B46:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _08038B2C
_08038B4E:
	ldr r0, [sp, #0xc4]
	adds r0, #0x24
	str r0, [sp, #0xc8]
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xc0]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	strh r0, [r7, #2]
	ldr r1, [sp, #0xc4]
	ldrh r0, [r1, #0x10]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _08038D40 @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0xc0]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0x10c]
	strh r2, [r6]
	adds r0, r7, #0
	adds r0, #0x4a
	str r0, [sp, #0x110]
	strh r2, [r0]
	movs r1, #0x4c
	adds r1, r1, r7
	mov r8, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r2, #0x72
	adds r2, r2, r7
	mov sl, r2
	ldrh r4, [r2]
	ldr r6, _08038D44 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r3, sl
	strh r4, [r3]
	movs r4, #0x6e
	adds r4, r4, r7
	mov sb, r4
	ldrh r4, [r4]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r6, sb
	strh r4, [r6]
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	movs r2, #0x1e
	str r2, [sp, #0xd4]
	movs r3, #0
	str r3, [sp, #0xd8]
	ldr r4, [sp, #0xc0]
	ldr r0, [r4, #0x28]
	ldrh r1, [r4, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	ldr r1, [r4, #0x28]
	movs r4, #1
	rsbs r4, r4, #0
	add r0, sp, #0x10
	movs r2, #5
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r1, _08038D48 @ =0x00100067
	ldr r0, [sp, #0x114]
	movs r2, #5
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r0, [sp, #0xd0]
	adds r0, #0x15
	ldr r6, [sp, #0xc0]
	ldrh r2, [r6, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	add r0, sp, #0x10
	ldr r3, [sp, #0xd0]
	adds r3, #5
	strb r3, [r0, #0x1c]
	ldr r2, [sp, #0xd0]
	adds r2, #6
	strb r2, [r0, #0x1d]
	ldr r1, [sp, #0xd0]
	adds r1, #7
	strb r1, [r0, #0x1e]
	ldr r0, [sp, #0x114]
	strb r3, [r0, #0x1c]
	strb r2, [r0, #0x1d]
	strb r1, [r0, #0x1e]
	bl sub_08033DF4
	bl sub_0803A2B0
	bl sub_08007544
	ldr r1, [sp, #0x10c]
	mov sl, r1
	ldr r2, [sp, #0x110]
	str r2, [sp, #0x118]
	mov r3, r8
	str r3, [sp, #0x11c]
	cmp r0, #0
	bne _08038CDA
	bl sub_080075AC
	cmp r0, #0
	bne _08038CDA
	ldr r5, _08038D4C @ =gPlayers
	movs r4, #0xd4
_08038CA6:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _08038CA6
	bl GetMultiplayerId
	ldr r5, _08038D4C @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	strh r1, [r0, #0xa]
_08038CDA:
	ldr r0, [sp, #0x128]
	movs r1, #0x3d
	bl sub_0802934C
	add r0, sp, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _08038CF6
_08038CEA:
	bl WaitFrame
	ldr r4, [sp, #0x128]
	ldr r0, [r4]
	cmp r0, #0
	bne _08038CEA
_08038CF6:
	ldr r6, _08038D50 @ =0x0000FFFF
	str r6, [sp, #0xe0]
	movs r0, #1
	str r0, [sp, #0xe8]
	movs r1, #0
	mov r8, r1
	mov r3, r8
	ldr r2, [sp, #0x124]
	strh r3, [r2]
	ldr r4, [sp, #0x120]
	strh r3, [r4]
	movs r6, #0
	str r6, [sp, #0xe4]

	thumb_func_start sub_08038D10
sub_08038D10: @ 0x08038D10
	bl sub_080271D0
	cmp r0, #0
	beq _08038D1A
	b _080391AA
_08038D1A:
	ldr r0, [sp, #0xd0]
	adds r0, #0x15
	ldr r1, [sp, #0xc0]
	ldrh r2, [r1, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	mov r2, r8
	cmp r2, #0x12
	bls _08038D36
	b _08039164
_08038D36:
	lsls r0, r2, #2
	ldr r1, _08038D54 @ =_08038D58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038D40: .4byte 0x03003910
_08038D44: .4byte 0x080FB740
_08038D48: .4byte 0x00100067
_08038D4C: .4byte gPlayers
_08038D50: .4byte 0x0000FFFF
_08038D54: .4byte _08038D58
_08038D58: @ jump table
	.4byte _08038DA4 @ case 0
	.4byte _08038DB8 @ case 1
	.4byte _08038DE8 @ case 2
	.4byte _08038E18 @ case 3
	.4byte _08038E40 @ case 4
	.4byte _08038E58 @ case 5
	.4byte _08038EAC @ case 6
	.4byte _08038EC0 @ case 7
	.4byte _08038F44 @ case 8
	.4byte _08038F80 @ case 9
	.4byte _08039058 @ case 10
	.4byte _0803903C @ case 11
	.4byte _08039058 @ case 12
	.4byte _08039072 @ case 13
	.4byte _08039094 @ case 14
	.4byte _080390B2 @ case 15
	.4byte _080390D2 @ case 16
	.4byte _080390E0 @ case 17
	.4byte _08039160 @ case 18
_08038DA4:
	movs r3, #1
	mov r8, r3
	movs r0, #0
	add r1, sp, #0xb8
	str r0, [r1]
	add r1, sp, #0xbc
	str r0, [r1]
	movs r4, #0
	str r4, [sp, #0x108]
	b _08039164
_08038DB8:
	add r0, sp, #0xb8
	movs r2, #0x3c
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0x108]
	bl sub_080270A4
	add r0, sp, #0xbc
	movs r1, #0
	movs r2, #0x50
	ldr r3, [sp, #0x108]
	bl sub_080270A4
	ldr r6, [sp, #0x108]
	adds r6, #0x10
	str r6, [sp, #0x108]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bgt _08038DE2
	b _08039164
_08038DE2:
	movs r0, #2
	mov r8, r0
	b _08039164
_08038DE8:
	bl sub_08007544
	cmp r0, #0
	bne _08038E0E
	bl sub_080075AC
	cmp r0, #0
	bne _08038E0E
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08038E14 @ =0x0009007B
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xcc]
_08038E0E:
	movs r1, #3
	mov r8, r1
	b _08039164
	.align 2, 0
_08038E14: .4byte 0x0009007B
_08038E18:
	bl sub_08007544
	cmp r0, #0
	bne _08038E3A
	bl sub_080075AC
	cmp r0, #0
	bne _08038E3A
	ldr r0, [sp, #0xcc]
	bl sub_0802294C
	cmp r0, #0
	bne _08038E34
	b _08039164
_08038E34:
	movs r2, #4
	mov r8, r2
	b _08039164
_08038E3A:
	movs r3, #4
	mov r8, r3
	b _08039164
_08038E40:
	movs r4, #5
	mov r8, r4
	movs r1, #0x3c
	rsbs r1, r1, #0
	add r0, sp, #0xb8
	str r1, [r0]
	movs r1, #0x50
	add r0, sp, #0xbc
	str r1, [r0]
	movs r6, #0
	str r6, [sp, #0x108]
	b _08039164
_08038E58:
	add r0, sp, #0xb8
	movs r1, #0x3c
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x108]
	bl sub_080270A4
	add r0, sp, #0xbc
	movs r1, #0x50
	movs r2, #0
	ldr r3, [sp, #0x108]
	bl sub_080270A4
	ldr r0, [sp, #0x108]
	adds r0, #0x10
	str r0, [sp, #0x108]
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [sp, #0x108]
	cmp r1, r0
	bgt _08038E84
	b _08039164
_08038E84:
	bl GetMultiplayerId
	ldr r2, _08038EA4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08038EA8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x14
	str r0, [r7, #0x5c]
	movs r2, #0xe
	mov r8, r2
	b _08039164
	.align 2, 0
_08038EA4: .4byte gPlayers
_08038EA8: .4byte 0x0000FFFE
_08038EAC:
	ldr r3, [sp, #0x128]
	ldr r0, [r3]
	cmp r0, #0
	beq _08038EB6
	b _08039164
_08038EB6:
	movs r4, #7
	mov r8, r4
	movs r0, #0x14
	str r0, [r7, #0x5c]
	b _08039164
_08038EC0:
	ldr r1, _08038EF0 @ =0x080FBD1E
	ldr r6, [sp, #0xf8]
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [sp, #0xf0]
	adds r0, r6, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf8]
	ldr r0, [sp, #0xfc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xfc]
	cmp r0, #0x10
	bls _08038EF4
	movs r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0xfc]
	b _08038EF8
	.align 2, 0
_08038EF0: .4byte 0x080FBD1E
_08038EF4:
	movs r2, #8
	mov r8, r2
_08038EF8:
	mov r3, r8
	cmp r3, #8
	bne _08038F2E
	movs r1, #0
	movs r0, #1
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x118]
	strh r1, [r6]
	ldr r0, [sp, #0x11c]
	strh r1, [r0]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08038F1C
	rsbs r0, r0, #0
_08038F1C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	b _08039164
_08038F2E:
	movs r1, #0x10
	mov r8, r1
	movs r1, #0
	movs r0, #1
	mov r2, sl
	strh r0, [r2]
	ldr r3, [sp, #0x118]
	strh r1, [r3]
	ldr r4, [sp, #0x11c]
	strh r1, [r4]
	b _08039164
_08038F44:
	movs r1, #0
	movs r0, #1
	mov r6, sl
	strh r0, [r6]
	ldr r0, [sp, #0x118]
	strh r1, [r0]
	ldr r2, [sp, #0x11c]
	strh r1, [r2]
	adds r0, r7, #0
	adds r0, #0x4e
	strh r1, [r0]
	movs r3, #0
	str r3, [sp, #0xe8]
	movs r4, #0
	str r4, [sp, #0x104]
	movs r6, #9
	mov r8, r6
	movs r0, #0x14
	str r0, [r7, #0x5c]
	ldr r0, [sp, #0xf0]
	lsls r1, r0, #2
	ldr r2, [sp, #0xc4]
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	b _08039164
_08038F80:
	adds r4, r7, #0
	adds r4, #0x4e
	ldrh r0, [r4]
	cmp r0, #0
	bne _08038F8C
	b _08039164
_08038F8C:
	bl sub_080076A8
	movs r3, #0x30
	str r3, [sp, #0xe4]
	cmp r0, #0
	beq _08038F9C
	movs r6, #0x14
	str r6, [sp, #0xe4]
_08038F9C:
	ldr r1, _08038FB4 @ =0x080FBD10
	ldr r2, [sp, #0xf4]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #1
	beq _08038FD2
	cmp r0, #1
	bgt _08038FB8
	cmp r0, #0
	beq _08038FC2
	b _08039024
	.align 2, 0
_08038FB4: .4byte 0x080FBD10
_08038FB8:
	cmp r0, #2
	beq _08038FE2
	cmp r0, #3
	beq _08039000
	b _08039024
_08038FC2:
	movs r3, #0xa
	mov r8, r3
	mov r4, sl
	ldrh r1, [r4]
	adds r0, r7, #0
	bl sub_0803A318
	b _08039024
_08038FD2:
	movs r6, #0xb
	mov r8, r6
	mov r0, sl
	ldrh r1, [r0]
	adds r0, r7, #0
	bl sub_0803A37C
	b _08039024
_08038FE2:
	movs r1, #0xd
	mov r8, r1
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #9
	movs r1, #0
	strh r0, [r2]
	ldr r3, [sp, #0x118]
	strh r1, [r3]
	ldr r6, [sp, #0x11c]
	strh r1, [r6]
	strh r1, [r4]
	movs r0, #0
	str r0, [sp, #0xe8]
	b _08039024
_08039000:
	movs r1, #0xc
	mov r8, r1
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803A3E4
	adds r0, r7, #0
	movs r1, #2
	bl sub_0803A3E4
	adds r0, r7, #0
	movs r1, #4
	bl sub_0803A3E4
	adds r0, r7, #0
	movs r1, #6
	bl sub_0803A3E4
_08039024:
	ldr r0, [sp, #0xf4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf4]
	cmp r0, #6
	bls _08039036
	movs r2, #0
	str r2, [sp, #0xf4]
_08039036:
	movs r3, #0
	str r3, [sp, #0x104]
	b _08039164
_0803903C:
	ldr r0, [sp, #0x104]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x104]
	ldr r2, [sp, #0xe4]
	cmp r0, r2
	bhi _0803904C
	b _08039164
_0803904C:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r3, #0xe
	mov r8, r3
	b _08039164
_08039058:
	ldr r0, [sp, #0x104]
	adds r4, r0, #0
	adds r4, #1
	str r4, [sp, #0x104]
	ldr r6, [sp, #0xe4]
	cmp r0, r6
	bls _08039164
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r0, #0xe
	mov r8, r0
	b _08039164
_08039072:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08039164
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r1, #0xe
	mov r8, r1
	mov r2, sl
	ldrh r0, [r2]
	subs r0, #9
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0xe8]
	b _08039164
_08039094:
	movs r0, #0
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x118]
	strh r0, [r6]
	ldr r1, [sp, #0x11c]
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	movs r2, #0
	str r2, [sp, #0xe8]
	movs r3, #0xf
	mov r8, r3
	b _08039164
_080390B2:
	adds r1, r7, #0
	adds r1, #0x4e
	ldrh r0, [r1]
	cmp r0, #0
	beq _08039164
	movs r0, #0
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x118]
	strh r0, [r6]
	ldr r2, [sp, #0x11c]
	strh r0, [r2]
	strh r0, [r1]
	movs r3, #1
	str r3, [sp, #0xe8]
	b _08039152
_080390D2:
	movs r6, #0
	str r6, [sp, #0xf0]
	movs r0, #0x11
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x104]
	b _08039164
_080390E0:
	ldr r2, [sp, #0xf0]
	cmp r2, #3
	bhi _08039112
	adds r0, r7, #0
	adds r0, #0x10
	lsls r4, r2, #2
	ldr r3, [sp, #0xc8]
	adds r4, r4, r3
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r5, r4, #4
	ldrh r2, [r4, #4]
	lsls r2, r2, #3
	ldr r3, [sp, #0x104]
	bl sub_080270A4
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r4, #2]
	lsls r1, r1, #3
	ldrh r2, [r5, #2]
	lsls r2, r2, #3
	ldr r3, [sp, #0x104]
	bl sub_080270A4
_08039112:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #0xc
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #0xc
	str r0, [r7, #0x14]
	ldr r4, [sp, #0xf0]
	cmp r4, #1
	bhi _0803912C
	movs r0, #0
	mov r6, sl
	strh r0, [r6]
	b _08039132
_0803912C:
	movs r0, #1
	mov r1, sl
	strh r0, [r1]
_08039132:
	ldr r2, [sp, #0x104]
	adds r2, #8
	str r2, [sp, #0x104]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r2, r0
	bls _08039164
	movs r3, #0
	str r3, [sp, #0x104]
	ldr r0, [sp, #0xf0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	cmp r0, #4
	bls _08039164
_08039152:
	movs r4, #6
	mov r8, r4
	ldr r0, [sp, #0x128]
	movs r1, #0x41
	bl sub_0802934C
	b _08039164
_08039160:
	movs r6, #0x13
	mov r8, r6
_08039164:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	beq _08039170
	cmp r0, #8
	beq _08039180
	b _080391AA
_08039170:
	ldr r0, [sp, #0xd8]
	cmp r0, #0
	bne _080391AA
	movs r1, #1
	str r1, [sp, #0xd8]
	movs r2, #8
	str r2, [sp, #0xd4]
	b _080391AA
_08039180:
	ldr r3, [sp, #0xd8]
	cmp r3, #0
	bne _080391AA
	movs r4, #1
	str r4, [sp, #0xd8]
	movs r6, #0x14
	str r6, [sp, #0xd4]
	movs r0, #2
	bl FadeOutBGM
	movs r0, #0x12
	mov r8, r0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
_080391AA:
	mov r1, r8
	cmp r1, #0xd
	bne _0803928E
	bl GetMultiplayerId
	ldr r4, [r7, #0x10]
	asrs r4, r4, #0xc
	ldr r6, _080392C4 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	ldr r2, [r7, #0x14]
	asrs r2, r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _0803928E
	ldr r2, [sp, #0x118]
	ldrh r0, [r2]
	cmp r0, #3
	bne _0803928E
	cmp r4, #0x2c
	bhi _0803928E
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	movs r3, #0x80
	adds r3, r3, r6
	mov sb, r3
	add r1, sb
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _0803928E
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0803928E
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0803928E
	bl sub_08007544
	cmp r0, #0
	bne _0803928E
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _080392C8 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r0, r7, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldr r0, [r7, #0x2c]
	str r0, [r1]
_0803928E:
	ldrh r0, [r7, #0xa]
	adds r2, r0, #0
	cmp r2, #7
	bne _080392A2
	movs r6, #0x14
	str r6, [sp, #0xe0]
	ldrh r0, [r7, #0x28]
	str r0, [sp, #0xec]
	movs r1, #0
	str r1, [sp, #0x100]
_080392A2:
	ldr r0, [sp, #0xe0]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xe0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803931C
	ldr r3, [sp, #0xec]
	cmp r3, #0
	bne _080392D0
	ldr r4, _080392CC @ =0x0000FFFF
	str r4, [sp, #0xe0]
	b _08039320
	.align 2, 0
_080392C4: .4byte gPlayers
_080392C8: .4byte 0x0000FFFE
_080392CC: .4byte 0x0000FFFF
_080392D0:
	bl sub_08007544
	cmp r0, #0
	bne _080392FE
	bl sub_08007510
	cmp r0, #0
	bne _080392FE
	bl sub_08007604
	cmp r0, #0
	bne _080392FE
	bl sub_080075AC
	cmp r0, #0
	bne _080392FE
	ldr r6, [sp, #0x100]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xec]
	bl sub_0800EA74
_080392FE:
	movs r0, #2
	ldr r1, [sp, #0xe0]
	ands r0, r1
	ldrh r2, [r7, #0xa]
	cmp r0, #0
	beq _08039320
	ldr r3, [sp, #0x100]
	lsls r0, r3, #0x10
	ldr r4, _08039318 @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x100]
	b _08039320
	.align 2, 0
_08039318: .4byte 0xFFFF0000
_0803931C:
	ldr r6, _08039384 @ =0x0000FFFF
	str r6, [sp, #0xe0]
_08039320:
	cmp r2, #8
	bne _08039326
	b _08039610
_08039326:
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xdc]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0xac
	mov r5, sp
	adds r5, #0xae
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	mov r1, r8
	subs r1, #8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r6, r4, #0
	adds r4, r1, #0
	cmp r0, #1
	bls _08039376
	mov r0, r8
	cmp r0, #0xe
	beq _08039376
	cmp r0, #0xf
	bne _08039388
_08039376:
	mov r2, sl
	ldrh r1, [r2]
	ldr r3, [sp, #0xe8]
	str r3, [sp]
	ldr r0, [sp, #0x114]
	b _08039392
	.align 2, 0
_08039384: .4byte 0x0000FFFF
_08039388:
	mov r0, sl
	ldrh r1, [r0]
	ldr r2, [sp, #0xe8]
	str r2, [sp]
	add r0, sp, #0x10
_08039392:
	ldr r2, [sp, #0x118]
	ldr r3, [sp, #0x11c]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	bl sub_080271D0
	cmp r0, #0
	beq _080393AA
	b _08039610
_080393AA:
	bl sub_08007510
	cmp r0, #0
	beq _080393B4
	b _08039610
_080393B4:
	bl sub_080075AC
	cmp r0, #0
	beq _080393BE
	b _08039610
_080393BE:
	add r0, sp, #0xbc
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r1, sp, #0xb8
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_08005F60
	ldr r3, [sp, #0xd8]
	cmp r3, #0
	beq _08039484
	bl sub_08007544
	cmp r0, #0
	bne _0803945C
	movs r0, #1
	ldr r1, [sp, #0xd4]
	ands r0, r1
	cmp r0, #0
	beq _0803945C
	mov r0, r8
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0803945C
	mov r2, r8
	cmp r2, #7
	beq _0803945C
	cmp r2, #6
	beq _0803945C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0803940C
	cmp r2, #0xe
	beq _0803940C
	cmp r2, #0xf
	bne _08039438
_0803940C:
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r4, [r4]
	mov ip, r4
	ldr r3, [sp, #0xdc]
	str r3, [sp]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r4, [sp, #0x114]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	mov r3, ip
	bl sub_08004344
	b _0803945C
_08039438:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r3, [r4]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803945C:
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	cmp r0, #0
	bne _080394FE
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _08039472
	b _08039646
_08039472:
	add r0, sp, #0xd4
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	movs r1, #0
	str r1, [sp, #0xd8]
	b _080394FE
_08039484:
	bl sub_08007544
	cmp r0, #0
	bne _080394FE
	mov r2, r8
	cmp r2, #0x10
	beq _080394FE
	cmp r2, #0x11
	beq _08039506
	cmp r2, #7
	beq _080394FE
	cmp r2, #6
	beq _080394FE
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080394AE
	cmp r2, #0xe
	beq _080394AE
	cmp r2, #0xf
	bne _080394DA
_080394AE:
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r4, [r4]
	mov ip, r4
	ldr r3, [sp, #0xdc]
	str r3, [sp]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r4, [sp, #0x114]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	mov r3, ip
	bl sub_08004344
	b _080394FE
_080394DA:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r3, [r4]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_080394FE:
	mov r0, r8
	cmp r0, #0x11
	beq _08039506
	b _08039610
_08039506:
	ldr r1, [sp, #0xf0]
	cmp r1, #1
	beq _0803955E
	cmp r1, #1
	bgt _08039516
	cmp r1, #0
	beq _08039522
	b _08039610
_08039516:
	ldr r2, [sp, #0xf0]
	cmp r2, #2
	beq _0803959A
	cmp r2, #3
	beq _080395D6
	b _08039610
_08039522:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #5
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r6, [sp, #0x120]
	ldrh r3, [r6]
	ldr r2, [sp, #0xdc]
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #5
	bl sub_08004344
	b _08039610
_0803955E:
	ldr r3, [sp, #0xf0]
	str r3, [sp]
	add r0, sp, #0x10
	movs r1, #2
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r4, #0
	ldrsh r0, [r6, r4]
	movs r6, #0
	ldrsh r1, [r5, r6]
	ldr r2, [sp, #0x120]
	ldrh r3, [r2]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08004344
	b _08039610
_0803959A:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp, #0x120]
	ldrh r3, [r4]
	ldr r6, [sp, #0xdc]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	b _08039610
_080395D6:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #4
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp, #0x120]
	ldrh r3, [r4]
	ldr r6, [sp, #0xdc]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #4
	bl sub_08004344
_08039610:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08039646
	bl sub_080074CC
	cmp r0, #0
	bne _08039646
	ldr r0, _080396CC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039646
	bl sub_08007578
	cmp r0, #0
	bne _08039646
	mov r0, r8
	cmp r0, #0x13
	beq _08039646
	bl sub_08038D10
_08039646:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08016FA0
	cmp r0, #0
	beq _08039668
	b _080398C4
_08039668:
	bl sub_080271D0
	cmp r0, #0
	beq _08039672
	b _080398C4
_08039672:
	bl sub_08007544
	cmp r0, #0
	beq _0803967C
	b _080398C4
_0803967C:
	bl sub_08007510
	cmp r0, #0
	beq _08039686
	b _080398C4
_08039686:
	bl sub_080075AC
	cmp r0, #0
	beq _08039690
	b _080398C4
_08039690:
	bl sub_080076E0
	cmp r0, #0
	beq _0803969A
	b _080398C4
_0803969A:
	bl GetMultiplayerId
	ldr r2, _080396D0 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080396D4 @ =0x0009007C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xcc]
	bl sub_08007798
	b _08039882
	.align 2, 0
_080396CC: .4byte 0x030063D8
_080396D0: .4byte gPlayers
_080396D4: .4byte 0x0009007C
_080396D8:
	bl sub_08007544
	cmp r0, #0
	beq _080396E2
	b _08039874
_080396E2:
	bl sub_08007510
	cmp r0, #0
	beq _080396EC
	b _08039874
_080396EC:
	bl sub_080271D0
	cmp r0, #0
	beq _080396F6
	b _08039874
_080396F6:
	bl sub_080075AC
	cmp r0, #0
	beq _08039700
	b _08039874
_08039700:
	movs r0, #0xf
	ldr r1, [sp, #0x104]
	ands r0, r1
	adds r1, #1
	str r1, [sp, #0x104]
	cmp r0, #0
	beq _08039710
	b _08039838
_08039710:
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08039724
	adds r0, #0xf
_08039724:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08039744
	adds r1, #0x1f
_08039744:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803976E
	adds r0, #0xf
_0803976E:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803978E
	adds r1, #0x1f
_0803978E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080397B8
	adds r0, #0xf
_080397B8:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _080397D8
	adds r1, #0x1f
_080397D8:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08039802
	adds r0, #0xf
_08039802:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08039822
	adds r1, #0x1f
_08039822:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
_08039838:
	ldr r0, [sp, #0xd4]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xd4]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08039874
	add r0, sp, #0xac
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sp
	adds r1, #0xae
	movs r3, #0
	ldrsh r1, [r1, r3]
	mov r4, sl
	ldrh r2, [r4]
	ldr r6, [sp, #0x118]
	ldrh r3, [r6]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08039874:
	bl WaitFrame
	ldr r0, [sp, #0xcc]
	bl sub_0802294C
	cmp r0, #0
	bne _080398AC
_08039882:
	bl sub_08007750
	cmp r0, #0
	bne _080398AC
	bl sub_080074CC
	cmp r0, #0
	bne _080398AC
	ldr r0, _08039AFC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080398AC
	bl sub_08007578
	cmp r0, #0
	bne _080398AC
	b _080396D8
_080398AC:
	bl sub_080077AC
	bl GetMultiplayerId
	ldr r2, _08039B00 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08039B04 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_080398C4:
	bl sub_08033E20
	bl sub_0803A2D8
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	ldr r2, _08039B08 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r6, [r7]
	lsls r1, r6
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0xd0]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _0803992E
	ldr r0, _08039B0C @ =0x030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _0803992E
	bl sub_08007544
	cmp r0, #0
	bne _0803992E
	bl sub_08007510
	cmp r0, #0
	bne _0803992E
	bl sub_08007604
	cmp r0, #0
	bne _0803992E
	bl sub_080075AC
	cmp r0, #0
	bne _0803992E
	bl sub_080076E0
	cmp r0, #0
	bne _0803992E
	ldr r0, _08039B10 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_0803992E:
	bl sub_08007750
	cmp r0, #0
	beq _08039938
	b _08039A44
_08039938:
	bl sub_080074CC
	cmp r0, #0
	beq _08039942
	b _08039A44
_08039942:
	bl sub_08007578
	cmp r0, #0
	bne _08039A44
	ldr r0, _08039AFC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _08039A44
	ldr r4, _08039B14 @ =0x03003D94
	adds r0, r4, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _08039988
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039988
	ldr r3, _08039B18 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08039988
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08039988:
	ldr r4, _08039B00 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xc0]
	bl CalcExpGain
	str r0, [sp, #0xe8]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xe8]
	bl AddExp
	adds r4, r0, #0
	movs r6, #0x13
	str r6, [sp, #0xd4]
	ldr r5, _08039B1C @ =0x0000FFFF
_080399B8:
	ldr r0, [r7, #0x14]
	ldr r1, _08039B20 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _080399EC
	bl sub_08007510
	cmp r0, #0
	bne _080399EC
	bl sub_080075AC
	cmp r0, #0
	bne _080399EC
	ldr r0, _08039B10 @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080399EC
	adds r0, r7, #0
	ldr r1, [sp, #0xe8]
	bl sub_08024320
_080399EC:
	bl WaitFrame
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	cmp r0, r5
	bne _080399B8
	cmp r4, #0
	beq _08039A44
	bl sub_08007544
	cmp r0, #0
	bne _08039A30
	bl sub_08007510
	cmp r0, #0
	bne _08039A30
	bl sub_080075AC
	cmp r0, #0
	bne _08039A30
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	ldr r1, _08039B00 @ =gPlayers
	adds r0, r0, r1
	bl sub_08024420
_08039A30:
	bl GetMultiplayerId
	ldr r2, _08039B00 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_08039A44:
	bl sub_08007750
	cmp r0, #0
	bne _08039AE2
	bl sub_080074CC
	cmp r0, #0
	bne _08039AE2
	ldr r4, _08039AFC @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039AE2
	bl sub_08007578
	cmp r0, #0
	bne _08039AE2
	ldr r0, _08039B24 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08039B28 @ =0x03003D08
	ldr r1, [r3]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08039ACC
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08039ACC
	ldr r2, _08039B2C @ =gPlayerStats
	ldr r4, _08039B30 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08039B34 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08039ACC:
	bl sub_0800F53C
	ldr r4, _08039B38 @ =0x030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08039AE2
	ldr r0, [r4]
	bl KillThread
_08039AE2:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0x12c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039AFC: .4byte 0x030063D8
_08039B00: .4byte gPlayers
_08039B04: .4byte 0x0000FFFE
_08039B08: .4byte gActiveEnemyMask
_08039B0C: .4byte 0x030064D8
_08039B10: .4byte 0x03003910
_08039B14: .4byte 0x03003D94
_08039B18: .4byte 0x00000157
_08039B1C: .4byte 0x0000FFFF
_08039B20: .4byte 0xFFFFFE00
_08039B24: .4byte 0x00000BB8
_08039B28: .4byte 0x03003D08
_08039B2C: .4byte gPlayerStats
_08039B30: .4byte 0x00000272
_08039B34: .4byte 0x00000275
_08039B38: .4byte 0x030063E4

	thumb_func_start sub_08039B3C
sub_08039B3C: @ 0x08039B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	mov sb, r0
	str r1, [sp, #0x54]
	add r6, sp, #0x44
	ldr r1, _08039BB8 @ =0x08054954
	adds r0, r6, #0
	movs r2, #6
	bl memcpy
	mov r0, sb
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #7
	strb r0, [r1, #0x1e]
	mov r0, sb
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x58]
	mov r1, sb
	ldr r1, [r1, #0x14]
	mov sl, r1
	movs r0, #0
	mov r5, sp
	adds r5, #0x4e
	strh r0, [r5]
	add r4, sp, #0x4c
	strh r0, [r4]
	movs r2, #0xb4
	str r2, [sp, #0x5c]
	bl sub_08007544
	cmp r0, #0
	bne _08039BAA
	bl sub_080075AC
	cmp r0, #0
	bne _08039BAA
	movs r0, #0x56
	bl PlaySE
_08039BAA:
	ldr r3, [sp, #0x5c]
	lsls r0, r3, #0x10
	ldr r4, _08039BBC @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r1, r0, #0x10
	str r1, [sp, #0x5c]
	b _08039E96
	.align 2, 0
_08039BB8: .4byte 0x08054954
_08039BBC: .4byte 0xFFFF0000
_08039BC0:
	bl sub_080076A8
	cmp r0, #0
	beq _08039BF8
	ldr r2, [sp, #0x54]
	lsls r0, r2, #1
	add r0, sp
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08039BF4 @ =0x0805289C
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #5
	ldr r2, [sp, #0x58]
	adds r2, r2, r0
	str r2, [sp, #0x58]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #5
	b _08039C2C
	.align 2, 0
_08039BF4: .4byte 0x0805289C
_08039BF8:
	ldr r4, [sp, #0x54]
	lsls r0, r4, #1
	add r0, sp
	adds r0, #0x44
	ldrh r2, [r0]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08039D70 @ =0x0805289C
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, [sp, #0x58]
	adds r4, r4, r0
	str r4, [sp, #0x58]
	lsls r2, r2, #1
	ldr r0, _08039D70 @ =0x0805289C
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
_08039C2C:
	add sl, r0
	bl GetMultiplayerId
	ldr r4, [sp, #0x58]
	asrs r6, r4, #0xc
	ldr r7, _08039D74 @ =gPlayers
	movs r1, #0xd4
	mov r8, r1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r3, sl
	asrs r5, r3, #0xc
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x60]
	str r5, [sp, #0x64]
	cmp r0, #0
	beq _08039C8A
	b _08039DDA
_08039C8A:
	cmp r4, #0x18
	bls _08039C90
	b _08039DDA
_08039C90:
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	bne _08039CB2
	b _08039DDA
_08039CB2:
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	bne _08039CBA
	b _08039DDA
_08039CBA:
	bl sub_08007544
	cmp r0, #0
	beq _08039CC4
	b _08039DDA
_08039CC4:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08039CD8
	b _08039DDA
_08039CD8:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	movs r6, #0
	movs r0, #7
	strh r0, [r1, #0xc]
	bl GetMultiplayerId
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _08039D78 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	mov r0, sb
	bl CalcDamageToPlayer
	mov r1, r8
	muls r1, r4, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	bl GetMultiplayerId
	mov r4, sb
	ldrh r1, [r4]
	lsls r1, r1, #2
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r4, #0x2c]
	str r0, [r1]
	movs r5, #0
	movs r0, #0x73
	bl PlaySE
	bl sub_080076A8
	cmp r0, #0
	beq _08039D80
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	ldr r0, _08039D7C @ =0x000005DC
	b _08039DA8
	.align 2, 0
_08039D70: .4byte 0x0805289C
_08039D74: .4byte gPlayers
_08039D78: .4byte 0x0000FFFE
_08039D7C: .4byte 0x000005DC
_08039D80:
	bl GetMultiplayerId
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #2
_08039DA8:
	strh r0, [r1]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl Random
	ldr r3, _08039EBC @ =gPlayers
	lsls r2, r5, #1
	movs r1, #0xd4
	muls r1, r4, r1
	adds r2, r2, r1
	adds r3, #0x24
	adds r4, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08039DCC
	rsbs r0, r0, #0
_08039DCC:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_08039DDA:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #8
	add r2, sp, #0x4c
	mov r3, sp
	adds r3, #0x4e
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _08039E5E
	bl sub_080271D0
	cmp r0, #0
	bne _08039E5E
	bl sub_08007544
	cmp r0, #0
	bne _08039E5E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08039E5E
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x64]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x50
	mov r5, sp
	adds r5, #0x52
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	movs r2, #0
	bl sub_08006008
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r3, #0
	ldrsh r1, [r5, r3]
	add r4, sp, #0x4c
	ldrh r3, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #8
	bl sub_08004344
_08039E5E:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08039EA2
	bl sub_080074CC
	cmp r0, #0
	bne _08039EA2
	ldr r0, _08039EC0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039EA2
	bl sub_08007578
	cmp r0, #0
	bne _08039EA2
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #0x10
	ldr r2, _08039EC4 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x5c]
_08039E96:
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08039EA2
	b _08039BC0
_08039EA2:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039EBC: .4byte gPlayers
_08039EC0: .4byte 0x030063D8
_08039EC4: .4byte 0xFFFF0000

	thumb_func_start sub_08039EC8
sub_08039EC8: @ 0x08039EC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	str r0, [sp, #0x5c]
	adds r5, r1, #0
	add r4, sp, #0x44
	ldr r1, _08039F38 @ =0x0805495A
	adds r0, r4, #0
	movs r2, #0x10
	bl memcpy
	ldr r0, [sp, #0x5c]
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #7
	strb r0, [r1, #0x1e]
	ldr r0, [sp, #0x5c]
	ldr r0, [r0, #0x10]
	mov sl, r0
	ldr r1, [sp, #0x5c]
	ldr r0, [r1, #0x14]
	ldr r2, _08039F3C @ =0xFFFD0000
	adds r2, r2, r0
	mov sb, r2
	movs r6, #0
	mov r1, sp
	adds r1, #0x56
	strh r6, [r1]
	add r0, sp, #0x54
	strh r6, [r0]
	movs r3, #6
	str r3, [sp, #0x64]
	movs r2, #0
	str r2, [sp, #0x68]
	cmp r5, #1
	beq _08039F30
	cmp r5, #7
	bne _08039F40
_08039F30:
	movs r3, #0x3c
	str r3, [sp, #0x60]
	b _08039F44
	.align 2, 0
_08039F38: .4byte 0x0805495A
_08039F3C: .4byte 0xFFFD0000
_08039F40:
	movs r0, #0x1e
	str r0, [sp, #0x60]
_08039F44:
	bl sub_08007544
	cmp r0, #0
	bne _08039F5A
	bl sub_080075AC
	cmp r0, #0
	bne _08039F5A
	movs r0, #0x56
	bl PlaySE
_08039F5A:
	ldr r1, [sp, #0x60]
	lsls r2, r1, #0x10
	cmp r2, #0
	bne _08039F64
	b _0803A290
_08039F64:
	lsls r0, r5, #1
	adds r4, r4, r0
	str r4, [sp, #0x6c]
_08039F6A:
	ldr r3, [sp, #0x64]
	cmp r3, #6
	beq _08039FAC
	ldr r4, _08039FA4 @ =0xFFFF0000
	adds r0, r2, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	bl sub_080076A8
	cmp r0, #0
	beq _08039FF4
	ldr r0, [sp, #0x6c]
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _08039FA8 @ =0x0805289C
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #5
	b _0803A01E
	.align 2, 0
_08039FA4: .4byte 0xFFFF0000
_08039FA8: .4byte 0x0805289C
_08039FAC:
	cmp r6, #0
	beq _08039FC4
	movs r1, #7
	str r1, [sp, #0x64]
	movs r0, #0
	movs r2, #0x56
	add r2, sp
	strh r0, [r2]
	add r3, sp, #0x54
	strh r0, [r3]
	movs r4, #1
	str r4, [sp, #0x68]
_08039FC4:
	bl sub_080076A8
	cmp r0, #0
	beq _08039FF4
	ldr r0, [sp, #0x6c]
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _08039FF0 @ =0x0805289C
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #5
	b _0803A01E
	.align 2, 0
_08039FF0: .4byte 0x0805289C
_08039FF4:
	ldr r0, [sp, #0x6c]
	ldrh r2, [r0]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0803A160 @ =0x0805289C
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add sl, r0
	lsls r2, r2, #1
	ldr r4, _0803A160 @ =0x0805289C
	adds r2, r2, r4
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
_0803A01E:
	add sb, r0
	bl GetMultiplayerId
	mov r1, sl
	asrs r6, r1, #0xc
	ldr r7, _0803A164 @ =gPlayers
	movs r2, #0xd4
	mov r8, r2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r1, sb
	asrs r5, r1, #0xc
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x70]
	str r5, [sp, #0x74]
	cmp r0, #0
	beq _0803A07C
	b _0803A1CA
_0803A07C:
	cmp r4, #0xf
	bls _0803A082
	b _0803A1CA
_0803A082:
	bl GetMultiplayerId
	ldr r4, [sp, #0x5c]
	ldrh r1, [r4]
	lsls r1, r1, #2
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bne _0803A0A4
	b _0803A1CA
_0803A0A4:
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	bne _0803A0AC
	b _0803A1CA
_0803A0AC:
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _0803A0C0
	b _0803A1CA
_0803A0C0:
	bl sub_08007544
	cmp r0, #0
	beq _0803A0CA
	b _0803A1CA
_0803A0CA:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	movs r6, #0
	movs r0, #7
	strh r0, [r1, #0xc]
	bl GetMultiplayerId
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _0803A168 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	ldr r0, [sp, #0x5c]
	bl CalcDamageToPlayer
	mov r1, r8
	muls r1, r4, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	ldrh r1, [r3]
	lsls r1, r1, #2
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x2c]
	str r0, [r1]
	movs r5, #0
	movs r0, #0x73
	bl PlaySE
	bl sub_080076A8
	cmp r0, #0
	beq _0803A170
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	ldr r0, _0803A16C @ =0x000005DC
	b _0803A198
	.align 2, 0
_0803A160: .4byte 0x0805289C
_0803A164: .4byte gPlayers
_0803A168: .4byte 0x0000FFFE
_0803A16C: .4byte 0x000005DC
_0803A170:
	bl GetMultiplayerId
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #2
_0803A198:
	strh r0, [r1]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl Random
	ldr r3, _0803A2A8 @ =gPlayers
	lsls r2, r5, #1
	movs r1, #0xd4
	muls r1, r4, r1
	adds r2, r2, r1
	adds r3, #0x24
	adds r4, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0803A1BC
	rsbs r0, r0, #0
_0803A1BC:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
_0803A1CA:
	ldr r4, [sp, #0x68]
	str r4, [sp]
	add r0, sp, #0x10
	ldr r1, [sp, #0x64]
	add r2, sp, #0x54
	mov r3, sp
	adds r3, #0x56
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _0803A25A
	bl sub_08007604
	cmp r0, #0
	bne _0803A25A
	bl sub_08007544
	cmp r0, #0
	bne _0803A25A
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803A25A
	ldr r1, [sp, #0x70]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x74]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x58
	mov r5, sp
	adds r5, #0x5a
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	movs r2, #0
	bl sub_08006008
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	adds r1, #0x30
	add r4, sp, #0x54
	ldrh r3, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	ldr r2, [sp, #0x64]
	bl sub_08004344
	ldr r1, [r0, #0xc]
	subs r1, #0x30
	str r1, [r0, #0xc]
_0803A25A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803A290
	bl sub_080074CC
	cmp r0, #0
	bne _0803A290
	ldr r0, _0803A2AC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A290
	bl sub_08007578
	cmp r0, #0
	bne _0803A290
	ldr r0, [sp, #0x60]
	lsls r2, r0, #0x10
	cmp r2, #0
	beq _0803A290
	b _08039F6A
_0803A290:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2A8: .4byte gPlayers
_0803A2AC: .4byte 0x030063D8

	thumb_func_start sub_0803A2B0
sub_0803A2B0: @ 0x0803A2B0
	push {r4, lr}
	ldr r4, _0803A2D4 @ =0x03006818
	movs r0, #0xb4
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_0803A2C2:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #0x11
	bls _0803A2C2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2D4: .4byte 0x03006818

	thumb_func_start sub_0803A2D8
sub_0803A2D8: @ 0x0803A2D8
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803A2E8 @ =0x03006818
	ldr r4, [r0]
	movs r0, #0
_0803A2E0:
	adds r6, r0, #1
	adds r7, r4, #0
	adds r7, #0x28
	b _0803A2F0
	.align 2, 0
_0803A2E8: .4byte 0x03006818
_0803A2EC:
	bl WaitFrame
_0803A2F0:
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0803A2EC
	adds r0, r6, #0
	adds r4, r7, #0
	cmp r0, #0x11
	bls _0803A2E0
	ldr r4, _0803A314 @ =0x03006818
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A314: .4byte 0x03006818

	thumb_func_start sub_0803A318
sub_0803A318: @ 0x0803A318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, _0803A32C @ =0x03006818
	ldr r4, [r0]
	movs r6, #0
	b _0803A334
	.align 2, 0
_0803A32C: .4byte 0x03006818
_0803A330:
	adds r6, #1
	adds r4, #0x28
_0803A334:
	cmp r6, #0x11
	bhi _0803A36E
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803A330
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0803A330
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803A378 @ =sub_08039B3C
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl CreateThread
_0803A36E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A378: .4byte sub_08039B3C

	thumb_func_start sub_0803A37C
sub_0803A37C: @ 0x0803A37C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _0803A38C @ =0x03006818
	ldr r4, [r0]
	movs r5, #0
	b _0803A394
	.align 2, 0
_0803A38C: .4byte 0x03006818
_0803A390:
	adds r5, #1
	adds r4, #0x28
_0803A394:
	cmp r5, #0x11
	bhi _0803A3DA
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803A390
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0803A390
	cmp r6, #0
	bne _0803A3B0
	movs r6, #1
	b _0803A3B2
_0803A3B0:
	movs r6, #7
_0803A3B2:
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803A3E0 @ =sub_08039EC8
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl CreateThread
_0803A3DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A3E0: .4byte sub_08039EC8

	thumb_func_start sub_0803A3E4
sub_0803A3E4: @ 0x0803A3E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, _0803A3F8 @ =0x03006818
	ldr r4, [r0]
	movs r6, #0
	b _0803A400
	.align 2, 0
_0803A3F8: .4byte 0x03006818
_0803A3FC:
	adds r6, #1
	adds r4, #0x28
_0803A400:
	cmp r6, #0x11
	bhi _0803A43A
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803A3FC
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0803A3FC
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803A444 @ =sub_08039EC8
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl CreateThread
_0803A43A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A444: .4byte sub_08039EC8

	thumb_func_start sub_0803A448
sub_0803A448: @ 0x0803A448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	adds r7, r0, #0
	ldr r0, _0803A488 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r5, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r2, sp
	adds r2, #0x80
	str r2, [sp, #0xe0]
	mov r3, sp
	adds r3, #0x7a
	str r3, [sp, #0xdc]
	mov r6, sp
	adds r6, #0x78
	str r6, [sp, #0xd8]
	cmp r5, r0
	bhs _0803A4A2
	adds r2, r0, #0
_0803A47A:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _0803A48C
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _0803A49A
	.align 2, 0
_0803A488: .4byte 0x030063D8
_0803A48C:
	cmp r0, #3
	bne _0803A49A
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x88]
	ldrh r0, [r1]
	str r0, [sp, #0x8c]
_0803A49A:
	adds r5, #1
	adds r1, #8
	cmp r5, r2
	blo _0803A47A
_0803A4A2:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x84]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	strh r0, [r7, #2]
	ldrh r0, [r4]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _0803A614 @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x84]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0xc8]
	strh r2, [r6]
	adds r0, r7, #0
	adds r0, #0x4a
	str r0, [sp, #0xcc]
	strh r2, [r0]
	movs r1, #0x4c
	adds r1, r1, r7
	mov sb, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r2, #0x72
	adds r2, r2, r7
	mov r8, r2
	ldrh r4, [r2]
	ldr r6, _0803A618 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r3, r8
	strh r4, [r3]
	movs r4, #0x6e
	adds r4, r4, r7
	mov sl, r4
	ldrh r4, [r4]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r6, sl
	strh r4, [r6]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	movs r2, #0x1e
	str r2, [sp, #0x98]
	ldr r3, [sp, #0x84]
	ldr r0, [r3, #0x28]
	ldrh r1, [r3, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	ldr r4, [sp, #0x84]
	ldr r1, [r4, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x94]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x94]
	adds r0, #6
	strb r0, [r1, #0x1d]
	bl sub_08033DF4
	bl sub_0803BE84
	bl sub_08007544
	ldr r6, [sp, #0xc8]
	str r6, [sp, #0xd0]
	ldr r1, [sp, #0xcc]
	mov sl, r1
	mov r2, sb
	str r2, [sp, #0xd4]
	mov r3, r8
	str r3, [sp, #0xe4]
	cmp r0, #0
	bne _0803A60A
	bl sub_080075AC
	cmp r0, #0
	bne _0803A60A
	ldr r5, _0803A61C @ =gPlayers
	movs r4, #0xd4
_0803A5D6:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _0803A5D6
	bl GetMultiplayerId
	ldr r5, _0803A61C @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #4
	strh r1, [r0, #0xa]
_0803A60A:
	ldr r0, [sp, #0xe0]
	movs r1, #0x47
	bl sub_0802934C
	b _0803A624
	.align 2, 0
_0803A614: .4byte 0x03003910
_0803A618: .4byte 0x080FB740
_0803A61C: .4byte gPlayers
_0803A620:
	bl WaitFrame
_0803A624:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0803A620
	ldr r4, _0803A668 @ =0x0000FFFF
	str r4, [sp, #0xa4]
	movs r6, #1
	str r6, [sp, #0xa8]
	movs r0, #0
	mov sb, r0
	mov r2, sb
	ldr r1, [sp, #0xdc]
	strh r2, [r1]
	ldr r3, [sp, #0xd8]
	strh r2, [r3]
	movs r4, #0
	str r4, [sp, #0xc0]
	movs r6, #0
	str r6, [sp, #0xb8]
	str r0, [sp, #0xc4]
_0803A64A:
	bl sub_080271D0
	cmp r0, #0
	beq _0803A654
	b _0803AAC0
_0803A654:
	mov r1, sb
	cmp r1, #0xa
	bls _0803A65C
	b _0803AAC0
_0803A65C:
	lsls r0, r1, #2
	ldr r1, _0803A66C @ =_0803A670
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803A668: .4byte 0x0000FFFF
_0803A66C: .4byte _0803A670
_0803A670: @ jump table
	.4byte _0803A69C @ case 0
	.4byte _0803A6F0 @ case 1
	.4byte _0803A76E @ case 2
	.4byte _0803A798 @ case 3
	.4byte _0803A7AA @ case 4
	.4byte _0803A7F8 @ case 5
	.4byte _0803A83C @ case 6
	.4byte _0803A930 @ case 7
	.4byte _0803A95E @ case 8
	.4byte _0803A9A4 @ case 9
	.4byte _0803AAB6 @ case 10
_0803A69C:
	bl sub_08007544
	cmp r0, #0
	bne _0803A6E6
	bl sub_080075AC
	cmp r0, #0
	bne _0803A6E6
	bl sub_080076A8
	cmp r0, #0
	beq _0803A6D0
	ldr r0, _0803A6C8 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #9
	bne _0803A6D0
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803A6CC @ =0x00090102
	b _0803A6D6
	.align 2, 0
_0803A6C8: .4byte 0x03003910
_0803A6CC: .4byte 0x00090102
_0803A6D0:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803A6EC @ =0x0009007D
_0803A6D6:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
_0803A6E6:
	movs r2, #1
	mov sb, r2
	b _0803AAC0
	.align 2, 0
_0803A6EC: .4byte 0x0009007D
_0803A6F0:
	bl sub_08007544
	cmp r0, #0
	bne _0803A74C
	bl sub_080075AC
	cmp r0, #0
	bne _0803A74C
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	bne _0803A70C
	b _0803AAC0
_0803A70C:
	bl GetMultiplayerId
	ldr r2, _0803A744 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803A748 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	adds r0, r7, #0
	bl sub_0803BE28
	movs r3, #2
	mov sb, r3
	movs r1, #0
	movs r0, #1
	ldr r4, [sp, #0xd0]
	strh r0, [r4]
	mov r6, sl
	strh r1, [r6]
	ldr r0, [sp, #0xd4]
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x4e
	strh r1, [r0]
	str r1, [sp, #0xa8]
	b _0803AAC0
	.align 2, 0
_0803A744: .4byte gPlayers
_0803A748: .4byte 0x0000FFFE
_0803A74C:
	adds r0, r7, #0
	bl sub_0803BE28
	movs r2, #2
	mov sb, r2
	movs r1, #0
	movs r0, #1
	ldr r3, [sp, #0xd0]
	strh r0, [r3]
	mov r4, sl
	strh r1, [r4]
	ldr r6, [sp, #0xd4]
	strh r1, [r6]
	adds r0, r7, #0
	adds r0, #0x4e
	strh r1, [r0]
	b _0803A92A
_0803A76E:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803A77A
	b _0803AAC0
_0803A77A:
	movs r0, #0
	movs r1, #2
	ldr r2, [sp, #0xd0]
	strh r1, [r2]
	mov r3, sl
	strh r0, [r3]
	ldr r4, [sp, #0xd4]
	strh r0, [r4]
	movs r6, #1
	str r6, [sp, #0xa8]
	movs r0, #0xc
	str r0, [r7, #0x54]
	movs r0, #3
	mov sb, r0
	b _0803AAAC
_0803A798:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _0803A7A0
	b _0803AAC0
_0803A7A0:
	movs r1, #4
	mov sb, r1
	movs r0, #0xc
	str r0, [r7, #0x54]
	b _0803AAC0
_0803A7AA:
	ldr r2, [sp, #0xb8]
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	str r4, [sp, #0xb8]
	cmp r0, #0
	blt _0803A7C0
	movs r6, #0
	str r6, [sp, #0xb8]
_0803A7C0:
	ldr r0, _0803A7F0 @ =0x03000074
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803A7CA
	b _0803AAC0
_0803A7CA:
	movs r0, #5
	mov sb, r0
	ldr r0, _0803A7F4 @ =0x080FBD34
	ldr r2, [sp, #0xc4]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #1
	bl sub_0803BEE8
	ldr r3, [sp, #0xc4]
	adds r3, #1
	str r3, [sp, #0xc4]
	cmp r3, #8
	bhi _0803A7EA
	b _0803AAC0
_0803A7EA:
	movs r4, #0
	str r4, [sp, #0xc4]
	b _0803AAC0
	.align 2, 0
_0803A7F0: .4byte 0x03000074
_0803A7F4: .4byte 0x080FBD34
_0803A7F8:
	ldr r6, [sp, #0xb8]
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xb8]
	cmp r0, #0
	blt _0803A80E
	movs r3, #0
	str r3, [sp, #0xb8]
_0803A80E:
	ldr r0, _0803A838 @ =0x03000074
	ldrh r1, [r0]
	cmp r1, #3
	beq _0803A818
	b _0803AAC0
_0803A818:
	movs r0, #0
	ldr r4, [sp, #0xd0]
	strh r1, [r4]
	mov r6, sl
	strh r0, [r6]
	ldr r1, [sp, #0xd4]
	strh r0, [r1]
	movs r2, #0
	str r2, [sp, #0xa8]
	movs r3, #6
	mov sb, r3
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	b _0803AAC0
	.align 2, 0
_0803A838: .4byte 0x03000074
_0803A83C:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803A848
	b _0803AAC0
_0803A848:
	ldr r1, _0803A864 @ =0x03000076
	ldrh r0, [r1]
	cmp r0, #2
	bhi _0803A8F0
	cmp r0, #2
	beq _0803A8AC
	movs r5, #0
	ldr r4, _0803A868 @ =0x080FBD54
	mov r8, r4
	adds r6, r1, #0
	adds r4, r7, #0
	adds r4, #0x88
	b _0803A898
	.align 2, 0
_0803A864: .4byte 0x03000076
_0803A868: .4byte 0x080FBD54
_0803A86C:
	bl sub_080076A8
	cmp r0, #0
	beq _0803A87E
	ldrh r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	b _0803A888
_0803A87E:
	ldr r0, _0803A8A4 @ =0x080FBD48
	ldrh r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_0803A888:
	strh r0, [r4]
	ldr r1, _0803A8A8 @ =0x03000076
	ldrh r0, [r7]
	ldrh r1, [r1]
	adds r2, r5, #0
	bl sub_0802EEA8
	adds r5, #1
_0803A898:
	bl sub_08001EC4
	cmp r5, r0
	blo _0803A86C
	b _0803A8D2
	.align 2, 0
_0803A8A4: .4byte 0x080FBD48
_0803A8A8: .4byte 0x03000076
_0803A8AC:
	bl sub_080076A8
	cmp r0, #0
	beq _0803A8BC
	ldr r0, _0803A8B8 @ =0x080FBD54
	b _0803A8BE
	.align 2, 0
_0803A8B8: .4byte 0x080FBD54
_0803A8BC:
	ldr r0, _0803A8E8 @ =0x080FBD48
_0803A8BE:
	ldr r1, [r0, #8]
	adds r0, r7, #0
	adds r0, #0x88
	strh r1, [r0]
	ldrh r0, [r7]
	ldr r1, _0803A8EC @ =0x03000076
	ldrh r1, [r1]
	movs r2, #0
	bl sub_0802EEA8
_0803A8D2:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r6, #0xb
	str r6, [sp, #0xc0]
	movs r0, #0
	ldr r1, [sp, #0xd8]
	strh r0, [r1]
	ldr r2, [sp, #0xdc]
	strh r0, [r2]
	b _0803A916
	.align 2, 0
_0803A8E8: .4byte 0x080FBD48
_0803A8EC: .4byte 0x03000076
_0803A8F0:
	ldrh r0, [r7]
	adds r0, #4
	bl StartItemUseEffect
	ldr r3, [sp, #0xe4]
	ldrh r0, [r3]
	movs r1, #0xa
	bl __divsi3
	ldrh r1, [r7, #0x38]
	adds r1, r1, r0
	movs r0, #0
	strh r1, [r7, #0x38]
	movs r4, #0xa
	str r4, [sp, #0xc0]
	ldr r6, [sp, #0xd8]
	strh r0, [r6]
	ldr r1, [sp, #0xdc]
	strh r0, [r1]
_0803A916:
	movs r2, #7
	mov sb, r2
	movs r1, #0
	movs r0, #4
	ldr r3, [sp, #0xd0]
	strh r0, [r3]
	mov r4, sl
	strh r1, [r4]
	ldr r6, [sp, #0xd4]
	strh r1, [r6]
_0803A92A:
	movs r0, #0
	str r0, [sp, #0xa8]
	b _0803AAC0
_0803A930:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803A93C
	b _0803AAC0
_0803A93C:
	movs r0, #0
	movs r1, #0
	bl sub_0803BEE8
	movs r1, #8
	mov sb, r1
	movs r1, #0
	movs r0, #2
	ldr r2, [sp, #0xd0]
	strh r0, [r2]
	mov r3, sl
	strh r1, [r3]
	ldr r4, [sp, #0xd4]
	strh r1, [r4]
	movs r6, #1
	str r6, [sp, #0xa8]
	b _0803AAC0
_0803A95E:
	movs r1, #0
	movs r0, #9
	strh r0, [r7, #0xa]
	movs r0, #2
	ldr r2, [sp, #0xd0]
	strh r0, [r2]
	mov r3, sl
	strh r1, [r3]
	ldr r4, [sp, #0xd4]
	strh r1, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0803A980
	rsbs r0, r0, #0
_0803A980:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x8c]
	subs r1, #1
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	movs r6, #0
	str r6, [sp, #0xbc]
	movs r0, #0
	str r0, [sp, #0xa0]
	movs r1, #1
	str r1, [sp, #0xa8]
	movs r2, #9
	mov sb, r2
	b _0803AAC0
_0803A9A4:
	ldr r3, [sp, #0xb8]
	lsls r0, r3, #0x10
	ldr r4, _0803A9F8 @ =0xFFFC0000
	adds r0, r0, r4
	lsrs r6, r0, #0x10
	str r6, [sp, #0xb8]
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0803A9BE
	ldr r0, _0803A9FC @ =0x0000FFE0
	str r0, [sp, #0xb8]
_0803A9BE:
	bl sub_080076A8
	cmp r0, #0
	beq _0803AA00
	ldr r2, [sp, #0xbc]
	lsls r1, r2, #2
	ldr r4, [sp, #0x88]
	adds r3, r1, r4
	ldrh r0, [r3]
	lsls r0, r0, #0xf
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	cmp r0, #0
	bge _0803A9DC
	adds r0, #7
_0803A9DC:
	asrs r0, r0, #3
	adds r0, r2, r0
	str r0, [r7, #0x10]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0xf
	ldr r2, [r7, #0x14]
	subs r0, r0, r2
	cmp r0, #0
	bge _0803A9F0
	adds r0, #7
_0803A9F0:
	asrs r0, r0, #3
	adds r0, r2, r0
	str r0, [r7, #0x14]
	b _0803AA2E
	.align 2, 0
_0803A9F8: .4byte 0xFFFC0000
_0803A9FC: .4byte 0x0000FFE0
_0803AA00:
	ldr r0, [sp, #0xbc]
	lsls r6, r0, #2
	ldr r1, [sp, #0x88]
	adds r5, r6, r1
	ldrh r0, [r5]
	lsls r0, r0, #0xf
	ldr r4, [r7, #0x10]
	subs r0, r0, r4
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x10]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0xf
	ldr r4, [r7, #0x14]
	subs r0, r0, r4
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x14]
	adds r1, r6, #0
_0803AA2E:
	ldr r2, [sp, #0x88]
	adds r6, r1, r2
	ldrh r0, [r6]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bge _0803AA40
	rsbs r0, r0, #0
_0803AA40:
	ldr r2, _0803AA74 @ =0x00000FFF
	cmp r0, r2
	bgt _0803AAC0
	ldrh r0, [r6, #2]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x14]
	subs r0, r0, r1
	cmp r0, #0
	bge _0803AA54
	rsbs r0, r0, #0
_0803AA54:
	cmp r0, r2
	bgt _0803AAC0
	ldr r3, [sp, #0xbc]
	ldr r4, [sp, #0xb0]
	cmp r3, r4
	bne _0803AA78
	movs r6, #3
	mov sb, r6
	ldr r0, [sp, #0xe0]
	movs r1, #0x4c
	bl sub_0802934C
	movs r0, #0
	strh r0, [r7, #0xa]
	b _0803AAC0
	.align 2, 0
_0803AA74: .4byte 0x00000FFF
_0803AA78:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0803AA86
	rsbs r0, r0, #0
_0803AA86:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, [sp, #0x8c]
	subs r4, #1
	adds r1, r4, #0
	bl __modsi3
	str r0, [sp, #0xbc]
	ldr r0, [sp, #0xa0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	cmp r0, r4
	ble _0803AAC0
	movs r0, #3
	mov sb, r0
	movs r0, #0
	strh r0, [r7, #0xa]
_0803AAAC:
	ldr r0, [sp, #0xe0]
	movs r1, #0x4c
	bl sub_0802934C
	b _0803AAC0
_0803AAB6:
	movs r1, #0xb
	mov sb, r1
	movs r0, #2
	bl FadeOutBGM
_0803AAC0:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _0803AB0A
	movs r2, #0x14
	str r2, [sp, #0xa4]
	ldrh r3, [r7, #0x28]
	str r3, [sp, #0xac]
	movs r4, #0
	str r4, [sp, #0xb4]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803AB04
	movs r6, #0xa
	mov sb, r6
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r0, #5
	movs r1, #0
	bl sub_0803BEE8
	ldrh r3, [r7, #2]
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	b _0803AB0A
_0803AB04:
	add r0, sp, #0xb4
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
_0803AB0A:
	ldr r0, [sp, #0xa4]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xa4]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803AB70
	ldr r1, [sp, #0xac]
	cmp r1, #0
	beq _0803AB70
	bl sub_08007544
	cmp r0, #0
	bne _0803AB52
	bl sub_08007510
	cmp r0, #0
	bne _0803AB52
	bl sub_08007604
	cmp r0, #0
	bne _0803AB52
	bl sub_080075AC
	cmp r0, #0
	bne _0803AB52
	ldr r3, [sp, #0xb4]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xac]
	bl sub_0800EA74
_0803AB52:
	movs r0, #2
	ldr r4, [sp, #0xa4]
	ands r0, r4
	cmp r0, #0
	beq _0803AB74
	ldr r6, [sp, #0xb4]
	lsls r0, r6, #0x10
	ldr r1, _0803AB6C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb4]
	b _0803AB74
	.align 2, 0
_0803AB6C: .4byte 0xFFFF0000
_0803AB70:
	ldr r2, _0803ADA4 @ =0x0000FFFF
	str r2, [sp, #0xa4]
_0803AB74:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _0803AB7C
	b _0803AC96
_0803AB7C:
	ldr r3, [sp, #0xd0]
	ldrh r1, [r3]
	ldr r4, [sp, #0xa8]
	str r4, [sp]
	add r0, sp, #0x10
	mov r2, sl
	ldr r3, [sp, #0xd4]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	ldr r6, [sp, #0xd0]
	ldrh r0, [r6]
	cmp r0, #3
	bne _0803ABAC
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	ldr r1, [sp, #0xc0]
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0xdc]
	bl sub_08026C40
_0803ABAC:
	bl sub_08007510
	cmp r0, #0
	bne _0803AC96
	bl sub_08007604
	cmp r0, #0
	bne _0803AC96
	bl sub_08007544
	cmp r0, #0
	bne _0803AC96
	bl sub_080075AC
	adds r4, r0, #0
	cmp r4, #0
	bne _0803AC96
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldr r1, [sp, #0x84]
	ldrh r2, [r1, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x9c]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x7c
	mov r6, sp
	adds r6, #0x7e
	movs r2, #0x30
	str r2, [sp]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r4, [sp, #0xd0]
	ldrh r2, [r4]
	mov r4, sl
	ldrh r3, [r4]
	ldr r4, [sp, #0x9c]
	str r4, [sp]
	add r4, sp, #0x2c
	mov r8, r4
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	ldr r1, [sp, #0xb8]
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r0, #0xc]
	adds r1, r1, r2
	str r1, [r0, #0xc]
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #1
	ldr r4, [sp, #0x9c]
	str r4, [sp]
	mov r2, r8
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xd
	movs r3, #0
	bl sub_08004344
	ldr r3, [sp, #0xd0]
	ldrh r0, [r3]
	cmp r0, #3
	bne _0803AC96
	movs r4, #0
	ldrsh r0, [r5, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	ldr r4, [sp, #0xd8]
	ldrh r3, [r4]
	ldr r6, [sp, #0x9c]
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xc0]
	bl sub_08004344
_0803AC96:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803ACCA
	bl sub_080074CC
	cmp r0, #0
	bne _0803ACCA
	ldr r0, _0803ADA8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803ACCA
	bl sub_08007578
	cmp r0, #0
	bne _0803ACCA
	mov r3, sb
	cmp r3, #0xb
	beq _0803ACCA
	b _0803A64A
_0803ACCA:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	bl sub_0803BEA8
	ldr r2, _0803ADAC @ =gActiveEnemyMask
	adds r1, r4, #0
	ldrh r6, [r7]
	lsls r1, r6
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x94]
	bl sub_0800CB84
	bl sub_08007750
	cmp r0, #0
	beq _0803AD08
	b _0803B11A
_0803AD08:
	bl sub_080074CC
	cmp r0, #0
	beq _0803AD12
	b _0803B11A
_0803AD12:
	bl sub_08007578
	cmp r0, #0
	beq _0803AD1C
	b _0803B11A
_0803AD1C:
	bl sub_080076E0
	cmp r0, #0
	beq _0803AD26
	b _0803B11A
_0803AD26:
	bl sub_08007510
	cmp r0, #0
	beq _0803AD30
	b _0803B11A
_0803AD30:
	ldr r0, _0803ADA8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	strh r4, [r0]
	bl sub_08016FA0
	cmp r0, #0
	beq _0803AD42
	b _0803AE8A
_0803AD42:
	bl sub_080271D0
	cmp r0, #0
	beq _0803AD4C
	b _0803AE8A
_0803AD4C:
	bl sub_08007544
	cmp r0, #0
	beq _0803AD56
	b _0803AE8A
_0803AD56:
	bl sub_08007510
	cmp r0, #0
	beq _0803AD60
	b _0803AE8A
_0803AD60:
	bl sub_080075AC
	cmp r0, #0
	beq _0803AD6A
	b _0803AE8A
_0803AD6A:
	bl sub_080076E0
	cmp r0, #0
	beq _0803AD74
	b _0803AE8A
_0803AD74:
	bl GetMultiplayerId
	ldr r2, _0803ADB0 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r0, [r1, #0x10]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_080076A8
	cmp r0, #0
	beq _0803ADC2
	ldr r0, _0803ADB4 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #9
	bne _0803ADC2
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803ADB8 @ =0x00090103
	b _0803ADC8
	.align 2, 0
_0803ADA4: .4byte 0x0000FFFF
_0803ADA8: .4byte 0x030063D8
_0803ADAC: .4byte gActiveEnemyMask
_0803ADB0: .4byte gPlayers
_0803ADB4: .4byte 0x03003910
_0803ADB8: .4byte 0x00090103
_0803ADBC:
	bl sub_080077AC
	b _0803AE76
_0803ADC2:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803ADE0 @ =0x0009007E
_0803ADC8:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
	bl sub_08007798
	b _0803AE4E
	.align 2, 0
_0803ADE0: .4byte 0x0009007E
_0803ADE4:
	bl sub_08007544
	cmp r0, #0
	bne _0803AE40
	bl sub_08007510
	cmp r0, #0
	bne _0803AE40
	bl sub_080271D0
	cmp r0, #0
	bne _0803AE40
	bl sub_080075AC
	cmp r0, #0
	bne _0803AE40
	ldr r0, [sp, #0x98]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x98]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803AE40
	add r0, sp, #0x7c
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sp
	adds r1, #0x7e
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r3, [sp, #0xd0]
	ldrh r2, [r3]
	mov r4, sl
	ldrh r3, [r4]
	ldr r6, [sp, #0x9c]
	str r6, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803AE40:
	bl WaitFrame
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	bne _0803ADBC
_0803AE4E:
	bl sub_08007750
	cmp r0, #0
	bne _0803AE76
	bl sub_080074CC
	cmp r0, #0
	bne _0803AE76
	ldr r0, _0803AEF8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803AE76
	bl sub_08007578
	cmp r0, #0
	beq _0803ADE4
_0803AE76:
	bl GetMultiplayerId
	ldr r2, _0803AEFC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803AF00 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_0803AE8A:
	bl sub_08001F98
	cmp r0, #0
	bne _0803AE9C
	ldr r0, _0803AF04 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_0803AE9C:
	bl sub_08016FA0
	cmp r0, #0
	beq _0803AEA6
	b _0803B044
_0803AEA6:
	bl sub_080271D0
	cmp r0, #0
	beq _0803AEB0
	b _0803B044
_0803AEB0:
	bl sub_08007544
	cmp r0, #0
	beq _0803AEBA
	b _0803B044
_0803AEBA:
	bl sub_08007510
	cmp r0, #0
	beq _0803AEC4
	b _0803B044
_0803AEC4:
	bl sub_080075AC
	cmp r0, #0
	beq _0803AECE
	b _0803B044
_0803AECE:
	bl sub_080076E0
	cmp r0, #0
	beq _0803AED8
	b _0803B044
_0803AED8:
	bl GetMultiplayerId
	ldr r2, _0803AEFC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0xa
	bl sub_0800F244
	mov r4, sp
	adds r4, #0x39
	b _0803AF0C
	.align 2, 0
_0803AEF8: .4byte 0x030063D8
_0803AEFC: .4byte gPlayers
_0803AF00: .4byte 0x0000FFFE
_0803AF04: .4byte 0x03003910
_0803AF08:
	bl WaitFrame
_0803AF0C:
	bl sub_0800F298
	cmp r0, #0
	beq _0803AF08
	movs r0, #0x14
	bl sub_0800F1EC
	b _0803AF20
_0803AF1C:
	bl WaitFrame
_0803AF20:
	bl sub_0800F298
	cmp r0, #0
	beq _0803AF1C
	ldr r1, _0803AF54 @ =0x0010000E
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08026ADC
	movs r0, #6
	strb r0, [r4]
	bl sub_080076A8
	cmp r0, #0
	beq _0803AF60
	ldr r0, _0803AF58 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #9
	bne _0803AF60
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803AF5C @ =0x00090104
	b _0803AF66
	.align 2, 0
_0803AF54: .4byte 0x0010000E
_0803AF58: .4byte 0x03003910
_0803AF5C: .4byte 0x00090104
_0803AF60:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803AF94 @ =0x0009007F
_0803AF66:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
	ldr r1, [sp, #0x88]
	ldrh r0, [r1, #0x10]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	bl WaitFrame
	add r2, sp, #0x7c
	mov r8, r2
	mov r6, sp
	adds r6, #0x7e
	mov r5, sl
	b _0803AFFC
	.align 2, 0
_0803AF94: .4byte 0x0009007F
_0803AF98:
	ldr r1, [sp, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x16
	movs r2, #1
	bl LoadPalette
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r4, [sp, #4]
	mov r2, r8
	adds r3, r6, #0
	bl sub_08005FC4
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	adds r2, r5, #0
	ldr r3, [sp, #0xd4]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldrh r3, [r5]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	bl WaitFrame
_0803AFFC:
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	adds r4, r0, #0
	cmp r4, #0
	beq _0803AF98
	movs r0, #0xa
	bl sub_0800F244
	b _0803B014
_0803B010:
	bl WaitFrame
_0803B014:
	bl sub_0800F298
	cmp r0, #0
	beq _0803B010
	movs r0, #0x14
	bl sub_0800F1EC
	b _0803B028
_0803B024:
	bl WaitFrame
_0803B028:
	bl sub_0800F298
	cmp r0, #0
	beq _0803B024
	bl GetMultiplayerId
	ldr r2, _0803B1D4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803B1D8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_0803B044:
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _0803B11A
	ldr r4, _0803B1DC @ =0x03003D94
	adds r0, r4, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _0803B078
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B078
	ldr r0, _0803B1E0 @ =0x00000157
	adds r1, r1, r0
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0803B078
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_0803B078:
	ldr r4, _0803B1D4 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x84]
	bl CalcExpGain
	str r0, [sp, #0xa8]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xa8]
	bl AddExp
	adds r4, r0, #0
	movs r1, #0x13
	str r1, [sp, #0x98]
	ldr r5, _0803B1E4 @ =0x0000FFFF
_0803B0A8:
	ldr r0, [r7, #0x14]
	ldr r2, _0803B1E8 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r7, #0x14]
	bl sub_08007510
	cmp r0, #0
	bne _0803B0DC
	bl sub_08007544
	cmp r0, #0
	bne _0803B0DC
	bl sub_080075AC
	cmp r0, #0
	bne _0803B0DC
	ldr r0, _0803B1EC @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0803B0DC
	adds r0, r7, #0
	ldr r1, [sp, #0xa8]
	bl sub_08024320
_0803B0DC:
	bl WaitFrame
	ldr r0, [sp, #0x98]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
	cmp r0, r5
	bne _0803B0A8
	cmp r4, #0
	beq _0803B11A
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _0803B1D4 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_0803B11A:
	bl sub_08007750
	cmp r0, #0
	bne _0803B1BA
	bl sub_080074CC
	cmp r0, #0
	bne _0803B1BA
	ldr r4, _0803B1F0 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803B1BA
	bl sub_08007578
	cmp r0, #0
	bne _0803B1BA
	ldr r0, _0803B1F4 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _0803B1F8 @ =0x03003D08
	ldr r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0803B1A4
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _0803B1A4
	ldr r2, _0803B1FC @ =gPlayerStats
	ldr r4, _0803B200 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803B204 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_0803B1A4:
	bl sub_0800F53C
	ldr r4, _0803B208 @ =0x030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0803B1BA
	ldr r0, [r4]
	bl KillThread
_0803B1BA:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B1D4: .4byte gPlayers
_0803B1D8: .4byte 0x0000FFFE
_0803B1DC: .4byte 0x03003D94
_0803B1E0: .4byte 0x00000157
_0803B1E4: .4byte 0x0000FFFF
_0803B1E8: .4byte 0xFFFFFE00
_0803B1EC: .4byte 0x03003910
_0803B1F0: .4byte 0x030063D8
_0803B1F4: .4byte 0x00000BB8
_0803B1F8: .4byte 0x03003D08
_0803B1FC: .4byte gPlayerStats
_0803B200: .4byte 0x00000272
_0803B204: .4byte 0x00000275
_0803B208: .4byte 0x030063E4

	thumb_func_start sub_0803B20C
sub_0803B20C: @ 0x0803B20C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10c
	str r0, [sp, #0xa8]
	ldr r1, _0803B498 @ =0x00100031
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #0
	mov sb, r0
	adds r1, #0x34
	str r1, [sp, #0xec]
	mov r2, sp
	adds r2, #0x54
	str r2, [sp, #0xf0]
	mov r3, sp
	adds r3, #0x7c
	str r3, [sp, #0xfc]
	mov r4, sp
	adds r4, #0x84
	str r4, [sp, #0x100]
	mov r5, sp
	adds r5, #0x8c
	str r5, [sp, #0x104]
	mov r7, sp
	adds r7, #0x74
	str r7, [sp, #0xf8]
	add r6, sp, #0x94
	mov r0, sp
	adds r0, #0x9c
	str r0, [sp, #0x108]
	adds r1, #0x20
	str r1, [sp, #0xf4]
	ldr r2, [sp, #0xec]
	mov r8, r2
	mov sl, r3
	movs r5, #0
_0803B26C:
	mov r3, sb
	lsls r4, r3, #2
	mov r7, r8
	adds r1, r7, r4
	ldr r2, [sp, #0xa8]
	ldr r0, [r2, #0x10]
	str r0, [r1]
	ldr r3, [sp, #0xf0]
	adds r1, r3, r4
	ldr r0, [r2, #0x14]
	str r0, [r1]
	mov r7, sb
	lsls r1, r7, #1
	mov r0, sl
	adds r3, r0, r1
	ldr r7, [sp, #0x100]
	adds r2, r7, r1
	ldr r7, [sp, #0x104]
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r2]
	strh r5, [r3]
	ldr r0, [sp, #0xf8]
	adds r2, r0, r1
	mov r3, sb
	lsls r0, r3, #6
	subs r0, r0, r3
	strh r0, [r2]
	adds r0, r6, r1
	strh r5, [r0]
	ldr r7, [sp, #0x108]
	adds r1, r7, r1
	strh r5, [r1]
	ldr r0, [sp, #0xf4]
	adds r4, r0, r4
	movs r0, #0x20
	rsbs r0, r0, #0
	str r0, [r4]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bls _0803B26C
	ldr r0, _0803B49C @ =0x03000074
	movs r1, #4
	strh r1, [r0]
	ldr r1, _0803B4A0 @ =0xFFF60000
	str r1, [sp, #0xac]
	movs r2, #0
	str r2, [sp, #0xb0]
	movs r0, #9
	ldr r3, [sp, #0xa8]
	strh r0, [r3, #0xa]
	add r4, sp, #0xa4
	mov sl, r4
	movs r5, #0xa6
	add r5, sp
	mov r8, r5
	mov r7, sp
	adds r7, #0x2c
	str r7, [sp, #0xbc]
_0803B2EA:
	ldr r0, [sp, #0xac]
	ldr r1, [sp, #0xb0]
	adds r0, r0, r1
	str r0, [sp, #0xac]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [sp, #0xb0]
	movs r3, #0
	mov sb, r3
_0803B2FE:
	mov r4, sb
	lsls r7, r4, #2
	ldr r0, [sp, #0xec]
	adds r5, r0, r7
	lsls r6, r4, #1
	ldr r1, [sp, #0xf8]
	adds r2, r1, r6
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _0803B4A4 @ =0x0805289C
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #9
	ldr r3, [sp, #0xa8]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [sp, #0xf0]
	adds r4, r0, r7
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r1, _0803B4A4 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803B408
	bl sub_08007604
	cmp r0, #0
	bne _0803B408
	bl sub_08007544
	cmp r0, #0
	bne _0803B408
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803B408
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, sl
	mov r3, r8
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #0xfc]
	adds r4, r3, r6
	ldr r0, [sp, #0x100]
	adds r3, r0, r6
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #6
	adds r2, r4, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r6
	strh r0, [r1]
	mov r3, sl
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sb
	adds r2, #6
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4]
	str r5, [sp]
	ldr r4, [sp, #0xbc]
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	adds r2, r0, #0
	ldr r0, [sp, #0xac]
	asrs r1, r0, #0xc
	ldr r3, [sp, #0xf4]
	adds r0, r3, r7
	ldr r0, [r0]
	adds r1, r1, r0
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	mov r4, sl
	movs r7, #0
	ldrsh r0, [r4, r7]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	ldr r4, [sp, #0xbc]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
_0803B408:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803B418
	b _0803B2FE
_0803B418:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803B44C
	bl sub_080074CC
	cmp r0, #0
	bne _0803B44C
	ldr r0, _0803B4A8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803B44C
	bl sub_08007578
	cmp r0, #0
	bne _0803B44C
	ldr r5, [sp, #0xac]
	cmp r5, #0
	bge _0803B44C
	b _0803B2EA
_0803B44C:
	movs r7, #0
	str r7, [sp, #0xb4]
	movs r0, #0
	str r0, [sp, #0xb0]
_0803B454:
	ldr r1, [sp, #0xb4]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x14
	ble _0803B4B2
	ldr r3, [sp, #0xb0]
	lsls r0, r3, #1
	ldr r4, [sp, #0x108]
	adds r0, r4, r0
	movs r1, #1
	strh r1, [r0]
	adds r3, #1
	str r3, [sp, #0xb0]
	movs r5, #0
	str r5, [sp, #0xb4]
	bl sub_08007544
	cmp r0, #0
	bne _0803B4AC
	bl sub_080075AC
	cmp r0, #0
	bne _0803B4AC
	movs r0, #0x8f
	bl PlaySE
	b _0803B4B2
	.align 2, 0
_0803B498: .4byte 0x00100031
_0803B49C: .4byte 0x03000074
_0803B4A0: .4byte 0xFFF60000
_0803B4A4: .4byte 0x0805289C
_0803B4A8: .4byte 0x030063D8
_0803B4AC:
	movs r0, #0x8f
	bl StopSE
_0803B4B2:
	movs r7, #0
	mov sb, r7
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0xc0]
_0803B4BC:
	mov r1, sb
	lsls r1, r1, #2
	mov sl, r1
	ldr r5, [sp, #0xec]
	add r5, sl
	mov r2, sb
	lsls r6, r2, #1
	ldr r3, [sp, #0xf8]
	adds r2, r3, r6
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r4, _0803B66C @ =0x0805289C
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r1, r1, #9
	ldr r3, [sp, #0xa8]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r5]
	ldr r4, [sp, #0xf0]
	add r4, sl
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r7, _0803B66C @ =0x0805289C
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803B5D6
	bl sub_08007604
	cmp r0, #0
	bne _0803B5D6
	bl sub_08007544
	cmp r0, #0
	bne _0803B5D6
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803B5D6
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r7, sp, #0xa4
	movs r2, #0xa6
	add r2, sp
	mov r8, r2
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r7, #0
	mov r3, r8
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #0x108]
	adds r0, r3, r6
	ldrh r0, [r0]
	mov r4, sb
	adds r4, #6
	cmp r0, #1
	bne _0803B582
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [sp, #0xfc]
	adds r2, r3, r6
	ldr r3, [sp, #0x100]
	adds r3, r3, r6
	mov ip, r3
	str r0, [sp]
	add r0, sp, #0x10
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r6
	strh r0, [r1]
_0803B582:
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r2, r4, #0x10
	lsrs r2, r2, #0x10
	ldr r4, [sp, #0xfc]
	adds r3, r4, r6
	ldrh r3, [r3]
	str r5, [sp]
	ldr r4, [sp, #0xc0]
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	adds r2, r0, #0
	ldr r1, [sp, #0xf4]
	add r1, sl
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	ldr r4, [sp, #0xc0]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
_0803B5D6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803B5E6
	b _0803B4BC
_0803B5E6:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803B626
	bl sub_080074CC
	cmp r0, #0
	bne _0803B626
	ldr r0, _0803B670 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803B626
	bl sub_08007578
	cmp r0, #0
	bne _0803B626
	ldr r5, [sp, #0xb0]
	cmp r5, #3
	bgt _0803B61A
	b _0803B454
_0803B61A:
	ldr r7, [sp, #0xb4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	bgt _0803B626
	b _0803B454
_0803B626:
	ldr r0, _0803B674 @ =0x03000074
	movs r1, #0
	strh r1, [r0]
	bl sub_08007544
	cmp r0, #0
	bne _0803B642
	bl sub_080075AC
	cmp r0, #0
	bne _0803B642
	movs r0, #0x8e
	bl PlaySE
_0803B642:
	movs r0, #0
	ldr r1, [sp, #0xa8]
	strh r0, [r1, #0xa]
	ldr r1, _0803B674 @ =0x03000074
	ldrh r0, [r1]
	cmp r0, #5
	bne _0803B652
	b _0803BC78
_0803B652:
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0xcc]
_0803B658:
	ldrh r0, [r1]
	cmp r0, #1
	bne _0803B660
	b _0803B80C
_0803B660:
	cmp r0, #1
	bgt _0803B678
	cmp r0, #0
	beq _0803B686
	b _0803BC42
	.align 2, 0
_0803B66C: .4byte 0x0805289C
_0803B670: .4byte 0x030063D8
_0803B674: .4byte 0x03000074
_0803B678:
	cmp r0, #2
	bne _0803B67E
	b _0803B984
_0803B67E:
	cmp r0, #3
	bne _0803B684
	b _0803BB00
_0803B684:
	b _0803BC42
_0803B686:
	bl sub_08007544
	cmp r0, #0
	bne _0803B6A8
	bl sub_080075AC
	cmp r0, #0
	bne _0803B6A8
	ldr r3, [sp, #0xb8]
	cmp r3, #0
	beq _0803B6AE
	movs r0, #0x8e
	bl PlaySE
	movs r4, #0
	str r4, [sp, #0xb8]
	b _0803B6AE
_0803B6A8:
	movs r0, #0x8e
	bl StopSE
_0803B6AE:
	movs r5, #0
	mov sb, r5
	mov r7, sp
	adds r7, #0xa4
	str r7, [sp, #0xc4]
	mov r0, sp
	adds r0, #0xa6
	str r0, [sp, #0xc8]
_0803B6BE:
	mov r1, sb
	lsls r3, r1, #2
	ldr r2, [sp, #0xf4]
	adds r2, r2, r3
	mov sl, r2
	ldr r0, [r2]
	movs r2, #0x20
	rsbs r2, r2, #0
	adds r1, r0, #0
	subs r0, #1
	mov r4, sl
	str r0, [r4]
	cmp r1, r2
	bge _0803B6DC
	str r2, [r4]
_0803B6DC:
	mov r5, sb
	lsls r4, r5, #1
	ldr r7, [sp, #0xf8]
	adds r2, r7, r4
	ldrh r0, [r2]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, [sp, #0xec]
	adds r0, r0, r3
	mov r8, r0
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0803B808 @ =0x0805289C
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r1, r1, #9
	ldr r7, [sp, #0xa8]
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1]
	ldr r5, [sp, #0xf0]
	adds r7, r5, r3
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r1, _0803B808 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r3, [sp, #0xa8]
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r7]
	bl sub_08007510
	cmp r0, #0
	bne _0803B7F4
	bl sub_08007604
	cmp r0, #0
	bne _0803B7F4
	bl sub_08007544
	cmp r0, #0
	bne _0803B7F4
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803B7F4
	mov r5, r8
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xc4]
	ldr r3, [sp, #0xc8]
	bl sub_08005FC4
	mov r5, sb
	adds r5, #6
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, [sp, #0xfc]
	adds r6, r0, r4
	ldr r1, [sp, #0x100]
	adds r3, r1, r4
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r4
	strh r0, [r1]
	mov r3, r8
	ldr r0, [r3]
	asrs r0, r0, #0xc
	ldr r1, [r7]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	ldr r7, [sp, #0xc4]
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r2, [sp, #0xc8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	ldr r7, [sp, #0xcc]
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
	ldr r1, [sp, #0xc4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc8]
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldrh r3, [r6]
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	mov r3, sl
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r2, #0xc]
_0803B7F4:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803B804
	b _0803B6BE
_0803B804:
	b _0803BC42
	.align 2, 0
_0803B808: .4byte 0x0805289C
_0803B80C:
	movs r4, #0
	mov sb, r4
	mov r5, sp
	adds r5, #0xa4
	str r5, [sp, #0xd0]
	mov r7, sp
	adds r7, #0xa6
	str r7, [sp, #0xd4]
_0803B81C:
	mov r0, sb
	lsls r0, r0, #1
	mov r8, r0
	ldr r2, [sp, #0xf8]
	add r2, r8
	ldrh r0, [r2]
	adds r0, #4
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xfc
	ands r0, r1
	strh r0, [r2]
	mov r1, sb
	lsls r1, r1, #2
	mov sl, r1
	ldr r7, [sp, #0xec]
	add r7, sl
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _0803B978 @ =0x0805289C
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #9
	ldr r5, [sp, #0xa8]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r7]
	ldr r4, [sp, #0xf0]
	add r4, sl
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803B944
	bl sub_08007604
	cmp r0, #0
	bne _0803B944
	bl sub_08007544
	cmp r0, #0
	bne _0803B944
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803B944
	ldr r0, [r7]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xd0]
	ldr r3, [sp, #0xd4]
	bl sub_08005FC4
	ldr r0, [r7]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	mov r5, sb
	adds r5, #6
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r6, [sp, #0xfc]
	add r6, r8
	ldr r3, [sp, #0x100]
	add r3, r8
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08026C40
	ldr r1, [sp, #0x104]
	add r1, r8
	strh r0, [r1]
	ldr r0, [r7]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	ldr r3, [sp, #0xd0]
	movs r7, #0
	ldrsh r0, [r3, r7]
	ldr r2, [sp, #0xd4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	ldr r7, [sp, #0xcc]
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
	ldr r1, [sp, #0xd0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xd4]
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldrh r3, [r6]
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
	adds r2, r0, #0
	ldr r1, [sp, #0xf4]
	add r1, sl
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
_0803B944:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803B954
	b _0803B81C
_0803B954:
	ldr r0, _0803B97C @ =0x03000076
	ldrh r0, [r0]
	lsls r0, r0, #1
	ldr r3, [sp, #0xf8]
	adds r0, r3, r0
	ldrh r0, [r0]
	cmp r0, #0x40
	beq _0803B966
	b _0803BC42
_0803B966:
	ldr r1, _0803B980 @ =0x03000074
	movs r0, #2
	strh r0, [r1]
	movs r0, #0x8e
	bl StopSE
	movs r4, #1
	str r4, [sp, #0xb8]
	b _0803BC42
	.align 2, 0
_0803B978: .4byte 0x0805289C
_0803B97C: .4byte 0x03000076
_0803B980: .4byte 0x03000074
_0803B984:
	movs r5, #0
	mov sb, r5
	mov r7, sp
	adds r7, #0xa4
	str r7, [sp, #0xd8]
	mov r0, sp
	adds r0, #0xa6
	str r0, [sp, #0xdc]
_0803B994:
	mov r1, sb
	lsls r1, r1, #2
	mov sl, r1
	ldr r2, [sp, #0xec]
	add r2, sl
	mov r8, r2
	mov r3, sb
	lsls r7, r3, #1
	ldr r4, [sp, #0xf8]
	adds r2, r4, r7
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r5, _0803BAF4 @ =0x0805289C
	adds r0, r0, r5
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #9
	ldr r4, [sp, #0xa8]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	mov r5, r8
	str r0, [r5]
	ldr r4, [sp, #0xf0]
	add r4, sl
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r1, _0803BAF4 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r3, [sp, #0xa8]
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803BAB6
	bl sub_08007604
	cmp r0, #0
	bne _0803BAB6
	bl sub_08007544
	cmp r0, #0
	bne _0803BAB6
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803BAB6
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0xdc]
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	mov r5, sb
	adds r5, #6
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, [sp, #0xfc]
	adds r6, r0, r7
	ldr r1, [sp, #0x100]
	adds r3, r1, r7
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r7
	strh r0, [r1]
	mov r3, r8
	ldr r0, [r3]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	ldr r7, [sp, #0xd8]
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r2, [sp, #0xdc]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	ldr r7, [sp, #0xcc]
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
	ldr r1, [sp, #0xd8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xdc]
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldrh r3, [r6]
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
	adds r2, r0, #0
	ldr r1, [sp, #0xf4]
	add r1, sl
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
_0803BAB6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803BAC6
	b _0803B994
_0803BAC6:
	ldr r2, _0803BAF8 @ =0x03000076
	ldrh r1, [r2]
	lsls r1, r1, #2
	ldr r3, [sp, #0xf4]
	adds r1, r3, r1
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, [r1]
	movs r2, #0x14
	rsbs r2, r2, #0
	cmp r0, r2
	bgt _0803BAE8
	b _0803BC42
_0803BAE8:
	str r2, [r1]
	ldr r1, _0803BAFC @ =0x03000074
	movs r0, #3
	strh r0, [r1]
	b _0803BC42
	.align 2, 0
_0803BAF4: .4byte 0x0805289C
_0803BAF8: .4byte 0x03000076
_0803BAFC: .4byte 0x03000074
_0803BB00:
	movs r4, #0
	mov sb, r4
	mov r5, sp
	adds r5, #0xa4
	str r5, [sp, #0xe0]
	mov r7, sp
	adds r7, #0xa6
	str r7, [sp, #0xe4]
_0803BB10:
	mov r0, sb
	lsls r0, r0, #2
	mov sl, r0
	ldr r1, [sp, #0xec]
	add r1, sl
	mov r8, r1
	mov r2, sb
	lsls r7, r2, #1
	ldr r3, [sp, #0xf8]
	adds r2, r3, r7
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r4, _0803BE18 @ =0x0805289C
	adds r0, r0, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r1, r1, #9
	ldr r3, [sp, #0xa8]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	mov r4, r8
	str r0, [r4]
	ldr r4, [sp, #0xf0]
	add r4, sl
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r5, _0803BE18 @ =0x0805289C
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803BC32
	bl sub_08007604
	cmp r0, #0
	bne _0803BC32
	bl sub_08007544
	cmp r0, #0
	bne _0803BC32
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803BC32
	mov r5, r8
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xe0]
	ldr r3, [sp, #0xe4]
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	mov r5, sb
	adds r5, #6
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, [sp, #0xfc]
	adds r6, r0, r7
	ldr r1, [sp, #0x100]
	adds r3, r1, r7
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r7
	strh r0, [r1]
	mov r3, r8
	ldr r0, [r3]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	ldr r7, [sp, #0xe0]
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r2, [sp, #0xe4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	ldr r7, [sp, #0xcc]
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
	ldr r1, [sp, #0xe0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xe4]
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldrh r3, [r6]
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
	adds r2, r0, #0
	ldr r1, [sp, #0xf4]
	add r1, sl
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
_0803BC32:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803BC42
	b _0803BB10
_0803BC42:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803BC78
	bl sub_080074CC
	cmp r0, #0
	bne _0803BC78
	ldr r0, _0803BE1C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803BC78
	bl sub_08007578
	cmp r0, #0
	bne _0803BC78
	ldr r1, _0803BE20 @ =0x03000074
	ldrh r0, [r1]
	cmp r0, #5
	beq _0803BC78
	b _0803B658
_0803BC78:
	movs r3, #0
	str r3, [sp, #0xac]
	movs r4, #0
	str r4, [sp, #0xb0]
	add r5, sp, #0xa4
	mov sl, r5
	movs r7, #0xa6
	add r7, sp
	mov r8, r7
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0xe8]
_0803BC90:
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0xb0]
	adds r1, r1, r2
	str r1, [sp, #0xac]
	ldr r3, _0803BE24 @ =0xFFFFFE00
	adds r2, r2, r3
	str r2, [sp, #0xb0]
	movs r4, #0
	mov sb, r4
_0803BCA2:
	mov r5, sb
	lsls r7, r5, #2
	ldr r0, [sp, #0xec]
	adds r5, r0, r7
	mov r1, sb
	lsls r6, r1, #1
	ldr r3, [sp, #0xf8]
	adds r2, r3, r6
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r4, _0803BE18 @ =0x0805289C
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #9
	ldr r4, [sp, #0xa8]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [sp, #0xf0]
	adds r4, r0, r7
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r1, _0803BE18 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r3, [sp, #0xa8]
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803BDB0
	bl sub_08007604
	cmp r0, #0
	bne _0803BDB0
	bl sub_08007544
	cmp r0, #0
	bne _0803BDB0
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803BDB0
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, sl
	mov r3, r8
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0xfc]
	adds r4, r0, r6
	ldr r1, [sp, #0x100]
	adds r3, r1, r6
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #6
	adds r2, r4, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r6
	strh r0, [r1]
	mov r3, sl
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sb
	adds r2, #6
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4]
	str r5, [sp]
	ldr r4, [sp, #0xe8]
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	adds r2, r0, #0
	ldr r0, [sp, #0xac]
	asrs r1, r0, #0xc
	ldr r3, [sp, #0xf4]
	adds r0, r3, r7
	ldr r0, [r0]
	adds r1, r1, r0
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	mov r4, sl
	movs r7, #0
	ldrsh r0, [r4, r7]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	ldr r4, [sp, #0xe8]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
_0803BDB0:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803BDC0
	b _0803BCA2
_0803BDC0:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803BDFA
	bl sub_080074CC
	cmp r0, #0
	bne _0803BDFA
	ldr r0, _0803BE1C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803BDFA
	bl sub_08007578
	cmp r0, #0
	bne _0803BDFA
	ldr r5, [sp, #0xac]
	asrs r1, r5, #0xc
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803BDFA
	b _0803BC90
_0803BDFA:
	movs r0, #0x8e
	bl StopSE
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x10c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE18: .4byte 0x0805289C
_0803BE1C: .4byte 0x030063D8
_0803BE20: .4byte 0x03000074
_0803BE24: .4byte 0xFFFFFE00

	thumb_func_start sub_0803BE28
sub_0803BE28: @ 0x0803BE28
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0803BE34 @ =0x0300681C
	ldr r4, [r0]
	movs r5, #0
	b _0803BE40
	.align 2, 0
_0803BE34: .4byte 0x0300681C
_0803BE38:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #0
	bne _0803BE78
_0803BE40:
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803BE38
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0803BE38
	cmp r5, #0
	bne _0803BE78
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803BE80 @ =sub_0803B20C
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl CreateThread
_0803BE78:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE80: .4byte sub_0803B20C

	thumb_func_start sub_0803BE84
sub_0803BE84: @ 0x0803BE84
	push {r4, lr}
	ldr r4, _0803BEA4 @ =0x0300681C
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_0803BE94:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #0
	beq _0803BE94
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEA4: .4byte 0x0300681C

	thumb_func_start sub_0803BEA8
sub_0803BEA8: @ 0x0803BEA8
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803BEB8 @ =0x0300681C
	ldr r4, [r0]
	movs r0, #0
_0803BEB0:
	adds r6, r0, #1
	adds r7, r4, #0
	adds r7, #0x28
	b _0803BEC0
	.align 2, 0
_0803BEB8: .4byte 0x0300681C
_0803BEBC:
	bl WaitFrame
_0803BEC0:
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0803BEBC
	adds r0, r6, #0
	adds r4, r7, #0
	cmp r0, #0
	beq _0803BEB0
	ldr r4, _0803BEE4 @ =0x0300681C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEE4: .4byte 0x0300681C

	thumb_func_start sub_0803BEE8
sub_0803BEE8: @ 0x0803BEE8
	ldr r2, _0803BEF4 @ =0x03000074
	strh r0, [r2]
	ldr r0, _0803BEF8 @ =0x03000076
	strh r1, [r0]
	bx lr
	.align 2, 0
_0803BEF4: .4byte 0x03000074
_0803BEF8: .4byte 0x03000076

	thumb_func_start sub_0803BEFC
sub_0803BEFC: @ 0x0803BEFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803BF34 @ =0xFFFFFD90
	add sp, r4
	mov sl, r0
	ldr r0, _0803BF38 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r6, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	movs r2, #0xfe
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x26c]
	cmp r6, r0
	bhs _0803BF4E
	adds r2, r0, #0
_0803BF26:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _0803BF3C
	ldr r0, [r1, #4]
	adds r3, r1, r0
	b _0803BF46
	.align 2, 0
_0803BF34: .4byte 0xFFFFFD90
_0803BF38: .4byte 0x030063D8
_0803BF3C:
	cmp r0, #3
	bne _0803BF46
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x210]
_0803BF46:
	adds r6, #1
	adds r1, #8
	cmp r6, r2
	blo _0803BF26
_0803BF4E:
	ldrh r0, [r3, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x20c]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	mov r3, sl
	strh r0, [r3, #2]
	movs r0, #0xbd
	lsls r0, r0, #0xc
	str r0, [r3, #0x10]
	movs r0, #0xd4
	lsls r0, r0, #0xa
	str r0, [r3, #0x14]
	ldr r0, _0803C174 @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r3, #0x26]
	strh r2, [r3, #8]
	strh r2, [r3, #0xa]
	strh r2, [r3, #0xc]
	strh r2, [r3, #0x28]
	str r2, [r3, #0x30]
	mov r1, sl
	adds r1, #0x64
	ldr r0, [sp, #0x20c]
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r6, r7}
	stm r1!, {r6, r7}
	mov r0, sl
	adds r0, #0x48
	str r0, [sp, #0x234]
	strh r2, [r0]
	mov r1, sl
	adds r1, #0x4a
	str r1, [sp, #0x238]
	strh r2, [r1]
	movs r3, #0x4c
	add r3, sl
	mov r8, r3
	strh r2, [r3]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, sl
	str r0, [r4, #0x2c]
	mov r7, sl
	adds r7, #0x72
	ldrh r4, [r7]
	ldr r6, _0803C178 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r7]
	movs r0, #0x6e
	add r0, sl
	mov sb, r0
	ldrh r4, [r0]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r1, sb
	strh r4, [r1]
	ldrh r0, [r7]
	mov r2, sl
	strh r0, [r2, #0x38]
	mov r0, sl
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	ldr r3, [sp, #0x20c]
	ldr r0, [r3, #0x28]
	ldrh r1, [r3, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x218]
	ldr r4, [sp, #0x20c]
	ldr r1, [r4, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x20
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x218]
	adds r0, #0x15
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x2c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x20
	ldr r0, [sp, #0x218]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x218]
	adds r0, #6
	strb r0, [r1, #0x1d]
	movs r6, #0
	ldr r7, [sp, #0x234]
	str r7, [sp, #0x254]
	ldr r0, [sp, #0x238]
	str r0, [sp, #0x258]
	mov sb, r8
	add r5, sp, #0x124
	ldr r7, _0803C17C @ =0x080FBD60
_0803C062:
	movs r0, #0x34
	adds r4, r6, #0
	muls r4, r0, r4
	adds r4, r5, r4
	ldm r7!, {r1}
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08026ADC
	movs r0, #5
	strb r0, [r4, #0x1c]
	movs r0, #6
	strb r0, [r4, #0x1d]
	movs r0, #7
	strb r0, [r4, #0x1e]
	adds r4, #0x21
	movs r0, #0xd
	strb r0, [r4]
	adds r6, #1
	cmp r6, #2
	bls _0803C062
	bl sub_0803F060
	ldr r1, _0803C180 @ =0x03006820
	movs r0, #0x80
	str r0, [r1]
	ldr r1, _0803C184 @ =0x03006824
	movs r0, #0
	str r0, [r1]
	bl sub_08033DF4
	bl sub_08007544
	cmp r0, #0
	bne _0803C0EC
	bl sub_080075AC
	cmp r0, #0
	bne _0803C0EC
	ldr r5, _0803C188 @ =gPlayers
	movs r4, #0xd4
_0803C0B8:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _0803C0B8
	bl GetMultiplayerId
	ldr r5, _0803C188 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	strh r1, [r0, #0xa]
_0803C0EC:
	mov r0, sl
	bl sub_0803F0B0
	mov r0, sl
	bl sub_0803F0B0
	mov r0, sl
	bl sub_0803F0B0
	ldr r0, [sp, #0x26c]
	movs r1, #0x51
	bl sub_0802934C
	add r0, sp, #0x1fc
	ldr r0, [r0]
	cmp r0, #0
	beq _0803C11A
	add r4, sp, #0x1fc
_0803C110:
	bl WaitFrame
	ldr r0, [r4]
	cmp r0, #0
	bne _0803C110
_0803C11A:
	ldr r1, _0803C18C @ =0x0000FFFF
	mov r8, r1
	movs r2, #1
	str r2, [sp, #0x220]
	movs r7, #0
_0803C124:
	movs r0, #9
	mov r3, sl
	strh r0, [r3, #0xa]
	bl sub_08007750
	cmp r0, #0
	beq _0803C134
	b _0803C3EC
_0803C134:
	bl sub_080074CC
	cmp r0, #0
	beq _0803C13E
	b _0803C3EC
_0803C13E:
	ldr r0, _0803C190 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803C150
	b _0803C3EC
_0803C150:
	bl sub_08007578
	cmp r0, #0
	beq _0803C15A
	b _0803C3EC
_0803C15A:
	bl sub_080271D0
	cmp r0, #0
	beq _0803C164
	b _0803C28A
_0803C164:
	cmp r7, #4
	bls _0803C16A
	b _0803C28A
_0803C16A:
	lsls r0, r7, #2
	ldr r1, _0803C194 @ =_0803C198
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C174: .4byte 0x03003910
_0803C178: .4byte 0x080FB740
_0803C17C: .4byte 0x080FBD60
_0803C180: .4byte 0x03006820
_0803C184: .4byte 0x03006824
_0803C188: .4byte gPlayers
_0803C18C: .4byte 0x0000FFFF
_0803C190: .4byte 0x030063D8
_0803C194: .4byte _0803C198
_0803C198: @ jump table
	.4byte _0803C1AC @ case 0
	.4byte _0803C1DC @ case 1
	.4byte _0803C250 @ case 2
	.4byte _0803C25C @ case 3
	.4byte _0803C26C @ case 4
_0803C1AC:
	bl sub_08007544
	cmp r0, #0
	bne _0803C1D2
	bl sub_080075AC
	cmp r0, #0
	bne _0803C1D2
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803C1D8 @ =0x00090080
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
_0803C1D2:
	movs r7, #1
	b _0803C28A
	.align 2, 0
_0803C1D8: .4byte 0x00090080
_0803C1DC:
	bl sub_08007544
	cmp r0, #0
	bne _0803C22C
	bl sub_080075AC
	adds r4, r0, #0
	cmp r4, #0
	bne _0803C22C
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	beq _0803C28A
	bl GetMultiplayerId
	ldr r2, _0803C21C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803C220 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	ldr r2, _0803C224 @ =0x03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r0, _0803C228 @ =0x03006820
	str r4, [r0]
	b _0803C23C
	.align 2, 0
_0803C21C: .4byte gPlayers
_0803C220: .4byte 0x0000FFFE
_0803C224: .4byte 0x03003910
_0803C228: .4byte 0x03006820
_0803C22C:
	ldr r2, _0803C248 @ =0x03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r1, _0803C24C @ =0x03006820
	movs r0, #0
	str r0, [r1]
_0803C23C:
	ldr r0, [sp, #0x26c]
	movs r1, #0x52
	bl sub_0802934C
	movs r7, #2
	b _0803C28A
	.align 2, 0
_0803C248: .4byte 0x03003910
_0803C24C: .4byte 0x03006820
_0803C250:
	add r0, sp, #0x1fc
	ldr r0, [r0]
	cmp r0, #0
	bne _0803C28A
	movs r7, #3
	b _0803C28A
_0803C25C:
	ldr r0, _0803C268 @ =0x03006820
	ldr r0, [r0]
	cmp r0, #7
	bne _0803C28A
	movs r7, #4
	b _0803C28A
	.align 2, 0
_0803C268: .4byte 0x03006820
_0803C26C:
	bl sub_08007544
	cmp r0, #0
	bne _0803C282
	bl sub_080075AC
	cmp r0, #0
	bne _0803C282
	movs r0, #0x95
	bl PlaySE
_0803C282:
	movs r7, #5
	movs r0, #8
	mov r4, sl
	strh r0, [r4, #0xa]
_0803C28A:
	mov r6, sl
	ldrh r0, [r6, #0xa]
	cmp r0, #7
	bne _0803C2D2
	movs r0, #0x14
	mov r8, r0
	ldrh r1, [r6, #0x28]
	str r1, [sp, #0x224]
	movs r2, #0
	str r2, [sp, #0x228]
	mov r0, sl
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803C2CA
	movs r0, #8
	strh r0, [r6, #0xa]
	movs r3, #0
	str r3, [sp, #0x22c]
	ldrh r3, [r6, #2]
	ldr r4, [sp, #0x22c]
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	b _0803C2D2
_0803C2CA:
	add r6, sp, #0x228
	ldrh r0, [r6]
	mov r6, sl
	strh r0, [r6, #0xa]
_0803C2D2:
	mov r0, r8
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803C344
	ldr r0, [sp, #0x224]
	cmp r0, #0
	bne _0803C2F8
	ldr r1, _0803C2F4 @ =0x0000FFFF
	mov r8, r1
	b _0803C348
	.align 2, 0
_0803C2F4: .4byte 0x0000FFFF
_0803C2F8:
	bl sub_08007544
	cmp r0, #0
	bne _0803C326
	bl sub_08007510
	cmp r0, #0
	bne _0803C326
	bl sub_08007604
	cmp r0, #0
	bne _0803C326
	bl sub_080075AC
	cmp r0, #0
	bne _0803C326
	ldr r3, [sp, #0x228]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0x224]
	bl sub_0800EA74
_0803C326:
	movs r0, #2
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _0803C348
	ldr r6, [sp, #0x228]
	lsls r0, r6, #0x10
	ldr r1, _0803C340 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x228]
	b _0803C348
	.align 2, 0
_0803C340: .4byte 0xFFFF0000
_0803C344:
	ldr r2, _0803C40C @ =0x0000FFFF
	mov r8, r2
_0803C348:
	mov r3, sl
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _0803C3E2
	ldr r4, [sp, #0x254]
	ldrh r1, [r4]
	ldr r6, [sp, #0x220]
	str r6, [sp]
	add r0, sp, #0x20
	ldr r2, [sp, #0x258]
	mov r3, sb
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _0803C3E2
	bl sub_08007604
	cmp r0, #0
	bne _0803C3E2
	bl sub_08007544
	cmp r0, #0
	bne _0803C3E2
	bl sub_080075AC
	adds r6, r0, #0
	cmp r6, #0
	bne _0803C3E2
	mov r1, sl
	ldr r0, [r1, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r1, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x21c]
	mov r2, sl
	ldr r0, [r2, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r2, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r6, [sp, #0x254]
	ldrh r2, [r6]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	movs r4, #3
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803C3E2:
	bl WaitFrame
	cmp r7, #5
	beq _0803C3EC
	b _0803C124
_0803C3EC:
	bl sub_080292D0
	mov r6, sl
	ldrh r3, [r6, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_0803EC2C
	b _0803C414
	.align 2, 0
_0803C40C: .4byte 0x0000FFFF
_0803C410:
	bl WaitFrame
_0803C414:
	bl sub_080271D0
	cmp r0, #0
	bne _0803C410
	bl sub_08016FA0
	cmp r0, #0
	bne _0803C484
	bl sub_08007750
	cmp r0, #0
	bne _0803C484
	bl sub_08007544
	cmp r0, #0
	bne _0803C484
	bl sub_080074CC
	cmp r0, #0
	bne _0803C484
	ldr r0, _0803C460 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803C484
	bl sub_08007578
	cmp r0, #0
	bne _0803C484
	bl sub_080075AC
	cmp r0, #0
	bne _0803C484
	b _0803C470
	.align 2, 0
_0803C460: .4byte 0x030063D8
_0803C464:
	bl sub_08045F38
	bl sub_08007798
	bl WaitFrame
_0803C470:
	bl sub_08007510
	cmp r0, #0
	bne _0803C464
	bl sub_080076E0
	cmp r0, #0
	bne _0803C464
	bl sub_080077AC
_0803C484:
	bl sub_08016FA0
	cmp r0, #0
	beq _0803C490
	bl _0803E254
_0803C490:
	bl sub_080271D0
	cmp r0, #0
	beq _0803C49C
	bl _0803E254
_0803C49C:
	bl sub_08007750
	cmp r0, #0
	beq _0803C4A8
	bl _0803E254
_0803C4A8:
	bl sub_08007510
	cmp r0, #0
	beq _0803C4B4
	bl _0803E254
_0803C4B4:
	bl sub_08007544
	cmp r0, #0
	beq _0803C4C0
	bl _0803E254
_0803C4C0:
	bl sub_080074CC
	cmp r0, #0
	beq _0803C4CC
	bl _0803E254
_0803C4CC:
	ldr r0, _0803C798 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803C4E0
	bl _0803E254
_0803C4E0:
	bl sub_08007578
	cmp r0, #0
	beq _0803C4EC
	bl _0803E254
_0803C4EC:
	bl sub_080075AC
	cmp r0, #0
	beq _0803C4F8
	bl _0803E254
_0803C4F8:
	bl GetMultiplayerId
	ldr r2, _0803C79C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #0x21
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r7, #0
	str r7, [sp, #0x22c]
	mov r0, sp
	adds r0, #0x54
	str r0, [sp, #0x250]
	mov r1, sp
	adds r1, #0x88
	str r1, [sp, #0x25c]
	mov r2, sp
	adds r2, #0xbc
	str r2, [sp, #0x260]
	mov r7, sp
	adds r7, #0x7d
	movs r3, #0xa9
	add r3, sp
	mov r8, r3
	movs r4, #0xde
	add r4, sp
	mov sb, r4
	mov r6, sp
	adds r6, #0xf0
	str r6, [sp, #0x264]
	ldr r0, _0803C7A0 @ =0x00000119
	add r0, sp
	str r0, [sp, #0x268]
_0803C53E:
	bl GetMultiplayerId
	ldr r2, _0803C79C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #0x21
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007750
	cmp r0, #0
	beq _0803C55C
	b _0803C76A
_0803C55C:
	bl sub_080074CC
	cmp r0, #0
	beq _0803C566
	b _0803C76A
_0803C566:
	ldr r0, _0803C798 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803C578
	b _0803C76A
_0803C578:
	bl sub_08007578
	cmp r0, #0
	beq _0803C582
	b _0803C76A
_0803C582:
	bl sub_08007544
	cmp r0, #0
	beq _0803C58C
	b _0803C712
_0803C58C:
	bl sub_08007510
	cmp r0, #0
	beq _0803C596
	b _0803C712
_0803C596:
	bl sub_08007604
	cmp r0, #0
	beq _0803C5A0
	b _0803C712
_0803C5A0:
	bl sub_080075AC
	cmp r0, #0
	beq _0803C5AA
	b _0803C712
_0803C5AA:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
	movs r0, #7
	ldr r1, [sp, #0x22c]
	ands r0, r1
	adds r1, #1
	str r1, [sp, #0x22c]
	cmp r0, #0
	beq _0803C5D4
	b _0803C712
_0803C5D4:
	movs r0, #0x28
	bl PlaySE
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803C5F0
	adds r0, #0x3f
_0803C5F0:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C612
	adds r1, #0x1f
_0803C612:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803C63E
	adds r0, #0x3f
_0803C63E:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C660
	adds r1, #0x1f
_0803C660:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803C68C
	adds r0, #0x3f
_0803C68C:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C6AE
	adds r1, #0x1f
_0803C6AE:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803C6DA
	adds r0, #0x3f
_0803C6DA:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C6FC
	adds r1, #0x1f
_0803C6FC:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
_0803C712:
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r6, [sp, #0x258]
	ldrh r3, [r6]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
	bl WaitFrame
	ldr r0, _0803C7A4 @ =0x00000257
	ldr r6, [sp, #0x22c]
	cmp r6, r0
	bhi _0803C76A
	b _0803C53E
_0803C76A:
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803C7A8 @ =0x00090081
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	bl sub_08007798
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	b _0803C81C
	.align 2, 0
_0803C798: .4byte 0x030063D8
_0803C79C: .4byte gPlayers
_0803C7A0: .4byte 0x00000119
_0803C7A4: .4byte 0x00000257
_0803C7A8: .4byte 0x00090081
_0803C7AC:
	bl sub_08007544
	cmp r0, #0
	bne _0803C80E
	bl sub_08007510
	cmp r0, #0
	bne _0803C80E
	bl sub_08007604
	cmp r0, #0
	bne _0803C80E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803C80E
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803C80E:
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803C844
_0803C81C:
	bl sub_08007750
	cmp r0, #0
	bne _0803C844
	bl sub_080074CC
	cmp r0, #0
	bne _0803C844
	ldr r0, _0803C854 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803C844
	bl sub_08007578
	cmp r0, #0
	beq _0803C7AC
_0803C844:
	movs r0, #0x1e
	bl sub_0800F3DC
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	b _0803C8BE
	.align 2, 0
_0803C854: .4byte 0x030063D8
_0803C858:
	bl sub_08007544
	cmp r0, #0
	bne _0803C8BA
	bl sub_08007510
	cmp r0, #0
	bne _0803C8BA
	bl sub_08007604
	cmp r0, #0
	bne _0803C8BA
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803C8BA
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803C8BA:
	bl WaitFrame
_0803C8BE:
	bl sub_0800F298
	cmp r0, #0
	bne _0803C8EE
	bl sub_08007750
	cmp r0, #0
	bne _0803C8EE
	bl sub_080074CC
	cmp r0, #0
	bne _0803C8EE
	ldr r0, _0803C9D8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803C8EE
	bl sub_08007578
	cmp r0, #0
	beq _0803C858
_0803C8EE:
	ldr r1, _0803C9DC @ =0x0010000E
	ldr r0, [sp, #0x250]
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	ldr r1, _0803C9E0 @ =0x00100007
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, [sp, #0x25c]
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r1, _0803C9E4 @ =0x0010000C
	ldr r0, [sp, #0x260]
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r6, [sp, #0x250]
	ldr r1, [r6, #0xc]
	movs r5, #0xd0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r0, #0x1b
	movs r2, #1
	bl LoadPalette
	movs r0, #0xb
	strb r0, [r7]
	ldr r7, [sp, #0x25c]
	ldr r1, [r7, #0xc]
	adds r1, #0xa0
	movs r0, #0x17
	movs r2, #1
	bl LoadPalette
	movs r0, #7
	mov r1, r8
	strb r0, [r1]
	ldr r2, [sp, #0x260]
	ldr r1, [r2, #0xc]
	adds r1, #0xc0
	movs r0, #0x1e
	movs r2, #1
	bl LoadPalette
	movs r0, #0xe
	mov r3, sb
	strb r0, [r3]
	ldr r1, _0803C9E8 @ =0x00100063
	ldr r0, [sp, #0x264]
	movs r2, #8
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r4, [sp, #0x264]
	ldr r1, [r4, #0xc]
	adds r1, r1, r5
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r0, #8
	ldr r6, [sp, #0x268]
	strb r0, [r6]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	ldr r6, _0803C9EC @ =gPlayers
	movs r5, #0xd4
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x58
	adds r2, r2, r1
	lsls r0, r0, #2
	ldr r7, [sp, #0x210]
	adds r0, r0, r7
	ldrh r0, [r0, #0x2c]
	lsls r0, r0, #0xf
	str r0, [r2]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x5c
	adds r2, r2, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #0x2e]
	lsls r0, r0, #0xf
	str r0, [r2]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #4
	strh r1, [r0, #0xa]
	movs r0, #0x3c
	bl sub_0800F348
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r7, #0x30
	movs r0, #0
	mov r8, r0
	b _0803CB0E
	.align 2, 0
_0803C9D8: .4byte 0x030063D8
_0803C9DC: .4byte 0x0010000E
_0803C9E0: .4byte 0x00100007
_0803C9E4: .4byte 0x0010000C
_0803C9E8: .4byte 0x00100063
_0803C9EC: .4byte gPlayers
_0803C9F0:
	bl sub_08007544
	cmp r0, #0
	bne _0803CA50
	bl sub_08007510
	cmp r0, #0
	bne _0803CA50
	bl sub_08007604
	cmp r0, #0
	bne _0803CA50
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803CA50
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	str r7, [sp]
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803CA50:
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r3, [sp, #0x250]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r3, [sp, #0x25c]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r3, [sp, #0x260]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	bl WaitFrame
_0803CB0E:
	bl sub_0800F298
	cmp r0, #0
	bne _0803CB40
	bl sub_08007750
	cmp r0, #0
	bne _0803CB40
	bl sub_080074CC
	cmp r0, #0
	bne _0803CB40
	ldr r0, _0803CB68 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803CB40
	bl sub_08007578
	cmp r0, #0
	bne _0803CB40
	b _0803C9F0
_0803CB40:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803CB6C @ =0x00090082
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r7, #0x30
	movs r4, #0
	mov r8, r4
	b _0803CC98
	.align 2, 0
_0803CB68: .4byte 0x030063D8
_0803CB6C: .4byte 0x00090082
_0803CB70:
	bl sub_08007544
	cmp r0, #0
	bne _0803CBD0
	bl sub_08007510
	cmp r0, #0
	bne _0803CBD0
	bl sub_08007604
	cmp r0, #0
	bne _0803CBD0
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803CBD0
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	str r7, [sp]
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803CBD0:
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r3, [sp, #0x250]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r3, [sp, #0x25c]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r3, [sp, #0x260]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803CCC2
_0803CC98:
	bl sub_08007750
	cmp r0, #0
	bne _0803CCC2
	bl sub_080074CC
	cmp r0, #0
	bne _0803CCC2
	ldr r0, _0803CF44 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803CCC2
	bl sub_08007578
	cmp r0, #0
	bne _0803CCC2
	b _0803CB70
_0803CCC2:
	movs r4, #0x80
	lsls r4, r4, #4
	str r4, [sp, #0x230]
	movs r6, #0
	str r6, [sp, #0x22c]
	add r0, sp, #0x1e0
	strh r6, [r0, #8]
	add r0, sp, #0x1ec
	add r1, sp, #0x22c
	ldrh r1, [r1]
	strh r1, [r0, #8]
	movs r0, #0xa6
	bl PlaySE
	movs r2, #1
	str r2, [sp, #0x22c]
_0803CCE2:
	bl sub_08007750
	cmp r0, #0
	beq _0803CCEC
	b _0803CF06
_0803CCEC:
	bl sub_080074CC
	cmp r0, #0
	beq _0803CCF6
	b _0803CF06
_0803CCF6:
	ldr r0, _0803CF44 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803CD08
	b _0803CF06
_0803CD08:
	bl sub_08007578
	cmp r0, #0
	beq _0803CD12
	b _0803CF06
_0803CD12:
	bl sub_08007544
	cmp r0, #0
	bne _0803CD7C
	bl sub_08007510
	cmp r0, #0
	bne _0803CD7C
	bl sub_08007604
	cmp r0, #0
	bne _0803CD7C
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803CD7C
	mov r4, sl
	ldr r0, [r4, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r7, #0
	ldrsh r1, [r5, r7]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r6, [sp, #0x21c]
	str r6, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803CD7C:
	ldr r7, [sp, #0x210]
	ldrh r0, [r7, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r7, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	mov r8, r2
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0xf0
	lsls r3, r3, #1
	add r3, sp
	mov sb, r3
	movs r7, #1
	str r7, [sp]
	ldr r0, [sp, #0x250]
	movs r1, #1
	add r2, sp, #0x1e8
	add r3, sp, #0x1f4
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r7, sb
	ldrh r3, [r7, #8]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r7, [sp, #0x250]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r7, #0
	ldrsh r1, [r5, r7]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r3, [sp, #0x25c]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r7, [sp, #0x210]
	ldrh r0, [r7, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r7, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r7, #0
	ldrsh r1, [r5, r7]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r3, [sp, #0x260]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r7, [sp, #0x230]
	lsls r0, r7, #0x10
	ldr r1, _0803CF48 @ =0xFFFC0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x230]
	asrs r0, r0, #0x10
	movs r7, #0xc0
	lsls r7, r7, #1
	cmp r0, r7
	bgt _0803CE74
	str r7, [sp, #0x230]
_0803CE74:
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	ldr r3, [sp, #0x210]
	ldrh r0, [r3, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r3, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #1
	str r3, [sp]
	ldr r0, [sp, #0x264]
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	mov r4, sb
	ldrh r3, [r4, #6]
	str r6, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r4, [sp, #0x264]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r4, r2, #0x10
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r6, #1
	str r6, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
	ldr r0, [sp, #0x22c]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x22c]
	cmp r0, #0x77
	bhi _0803CF00
	b _0803CCE2
_0803CF00:
	cmp r4, r7
	ble _0803CF06
	b _0803CCE2
_0803CF06:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803CF4C @ =0x00090083
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	add r0, sp, #0x1e0
	movs r1, #0
	strh r1, [r0, #8]
	add r0, sp, #0x1ec
	strh r1, [r0, #8]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	mov r8, r2
	movs r7, #0
	ldr r3, [sp, #0x25c]
	str r3, [sp, #0x23c]
	movs r4, #0xf0
	lsls r4, r4, #1
	add r4, sp
	mov sb, r4
	b _0803D106
	.align 2, 0
_0803CF44: .4byte 0x030063D8
_0803CF48: .4byte 0xFFFC0000
_0803CF4C: .4byte 0x00090083
_0803CF50:
	bl sub_08007544
	cmp r0, #0
	bne _0803CFB2
	bl sub_08007510
	cmp r0, #0
	bne _0803CFB2
	bl sub_08007604
	cmp r0, #0
	bne _0803CFB2
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803CFB2
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r6, r4]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803CFB2:
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r3, [sp, #0x250]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	str r7, [sp]
	ldr r0, [sp, #0x23c]
	movs r1, #1
	add r2, sp, #0x1e8
	add r3, sp, #0x1f4
	bl sub_08026C40
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r2, sb
	ldrh r3, [r2, #8]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r4, [sp, #0x23c]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r3, [sp, #0x260]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r4, #1
	str r4, [sp]
	ldr r0, [sp, #0x264]
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	mov r3, sb
	ldrh r3, [r3, #6]
	mov ip, r3
	str r7, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r3, [sp, #0x264]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x230]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r7, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r2, #0
	mov r3, ip
	bl sub_080039C8
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803D130
_0803D106:
	bl sub_08007750
	cmp r0, #0
	bne _0803D130
	bl sub_080074CC
	cmp r0, #0
	bne _0803D130
	ldr r0, _0803D16C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D130
	bl sub_08007578
	cmp r0, #0
	bne _0803D130
	b _0803CF50
_0803D130:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803D170 @ =0x00090084
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	add r0, sp, #0x1e0
	movs r1, #0
	strh r1, [r0, #8]
	add r0, sp, #0x1ec
	strh r1, [r0, #8]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r4, #0x30
	mov r8, r4
	movs r7, #0
	ldr r0, [sp, #0x260]
	mov sb, r0
	movs r1, #0xf0
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x240]
	b _0803D32A
	.align 2, 0
_0803D16C: .4byte 0x030063D8
_0803D170: .4byte 0x00090084
_0803D174:
	bl sub_08007544
	cmp r0, #0
	bne _0803D1D6
	bl sub_08007510
	cmp r0, #0
	bne _0803D1D6
	bl sub_08007604
	cmp r0, #0
	bne _0803D1D6
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803D1D6
	mov r3, sl
	ldr r0, [r3, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	mov r4, r8
	str r4, [sp]
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D1D6:
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r3, [sp, #0x250]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r3, [sp, #0x25c]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	str r7, [sp]
	mov r0, sb
	movs r1, #1
	add r2, sp, #0x1e8
	add r3, sp, #0x1f4
	bl sub_08026C40
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x240]
	ldrh r3, [r2, #8]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	mov r4, sb
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r4, #1
	str r4, [sp]
	ldr r0, [sp, #0x264]
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	ldr r3, [sp, #0x240]
	ldrh r3, [r3, #6]
	mov ip, r3
	str r7, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r3, [sp, #0x264]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x230]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r7, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r2, #0
	mov r3, ip
	bl sub_080039C8
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803D354
_0803D32A:
	bl sub_08007750
	cmp r0, #0
	bne _0803D354
	bl sub_080074CC
	cmp r0, #0
	bne _0803D354
	ldr r0, _0803D374 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D354
	bl sub_08007578
	cmp r0, #0
	bne _0803D354
	b _0803D174
_0803D354:
	movs r4, #0
	str r4, [sp, #0x22c]
	movs r6, #0x80
	lsls r6, r6, #3
	mov sb, r6
	add r7, sp, #0x1f8
	movs r6, #0xfd
	lsls r6, r6, #1
	add r6, sp
	mov r8, r4
	movs r0, #0x80
	lsls r0, r0, #2
	add r0, sp
	str r0, [sp, #0x244]
	b _0803D584
	.align 2, 0
_0803D374: .4byte 0x030063D8
_0803D378:
	bl sub_08007544
	cmp r0, #0
	bne _0803D3DA
	bl sub_08007510
	cmp r0, #0
	bne _0803D3DA
	bl sub_08007604
	cmp r0, #0
	bne _0803D3DA
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803D3DA
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r3, #0x30
	str r3, [sp]
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D3DA:
	mov r1, sb
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803D4B4
	movs r0, #0xe1
	lsls r0, r0, #2
	cmp sb, r0
	bls _0803D4B4
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x21c]
	str r3, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r4, [sp, #0x250]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x21c]
	str r3, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r4, [sp, #0x25c]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x21c]
	str r3, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r4, [sp, #0x260]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
_0803D4B4:
	ldr r0, [sp, #0x22c]
	adds r0, #4
	str r0, [sp, #0x22c]
	movs r0, #0x10
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	ldr r2, [sp, #0x210]
	ldrh r4, [r2, #0x22]
	lsls r4, r4, #0xf
	ldr r3, _0803D5F8 @ =0xFFFD0000
	adds r4, r4, r3
	bl GetMultiplayerId
	lsls r0, r0, #2
	ldr r1, [sp, #0x210]
	adds r0, r0, r1
	ldrh r2, [r0, #0x2e]
	lsls r2, r2, #0xf
	ldr r3, _0803D5F8 @ =0xFFFD0000
	adds r2, r2, r3
	ldr r0, [sp, #0x244]
	adds r1, r4, #0
	ldr r3, [sp, #0x22c]
	bl sub_080270A4
	add r5, sp, #0x204
	ldr r0, [sp, #0x210]
	ldrh r4, [r0, #0x20]
	lsls r4, r4, #0xf
	bl GetMultiplayerId
	lsls r0, r0, #2
	ldr r1, [sp, #0x210]
	adds r0, r0, r1
	ldrh r2, [r0, #0x2c]
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x22c]
	bl sub_080270A4
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x244]
	ldr r1, [r2]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r3, #0x30
	str r3, [sp]
	mov r4, r8
	str r4, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x264]
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldrh r3, [r4, #6]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r4, [sp, #0x264]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r2, r8
	str r2, [sp, #0x18]
	movs r4, #1
	str r4, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
_0803D584:
	ldr r0, _0803D5FC @ =0x000003FF
	ldr r1, [sp, #0x22c]
	cmp r1, r0
	bhi _0803D5B6
	bl sub_08007750
	cmp r0, #0
	bne _0803D5B6
	bl sub_080074CC
	cmp r0, #0
	bne _0803D5B6
	ldr r0, _0803D600 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D5B6
	bl sub_08007578
	cmp r0, #0
	bne _0803D5B6
	b _0803D378
_0803D5B6:
	ldr r2, _0803D604 @ =0x0000FFFF
	str r2, [sp, #0x22c]
	ldr r0, _0803D608 @ =gMPlayInfo_SE1
	movs r1, #2
	bl SndMPlayFadeOut
	ldr r0, _0803D60C @ =gMPlayInfo_SE2
	movs r1, #2
	bl SndMPlayFadeOut
	ldr r0, _0803D610 @ =gMPlayInfo_SE3
	movs r1, #2
	bl SndMPlayFadeOut
	bl GetMultiplayerId
	ldr r2, _0803D614 @ =gPlayers
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #5
	strh r1, [r0, #0xa]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r3, #0
	mov sb, r3
	ldr r7, [sp, #0x264]
	movs r4, #1
	mov r8, r4
	b _0803D708
	.align 2, 0
_0803D5F8: .4byte 0xFFFD0000
_0803D5FC: .4byte 0x000003FF
_0803D600: .4byte 0x030063D8
_0803D604: .4byte 0x0000FFFF
_0803D608: .4byte gMPlayInfo_SE1
_0803D60C: .4byte gMPlayInfo_SE2
_0803D610: .4byte gMPlayInfo_SE3
_0803D614: .4byte gPlayers
_0803D618:
	bl sub_08007544
	cmp r0, #0
	bne _0803D67A
	bl sub_08007510
	cmp r0, #0
	bne _0803D67A
	bl sub_08007604
	cmp r0, #0
	bne _0803D67A
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803D67A
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D67A:
	ldr r0, [sp, #0x22c]
	subs r0, #0x80
	str r0, [sp, #0x22c]
	movs r0, #0x10
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	add r0, sp, #0x204
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	add r1, sp, #0x200
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	mov r3, r8
	str r3, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #6]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r4, [sp, #0x22c]
	lsls r2, r4, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
_0803D708:
	movs r0, #0xd0
	lsls r0, r0, #8
	ldr r3, [sp, #0x22c]
	cmp r3, r0
	bls _0803D73C
	bl sub_08007750
	cmp r0, #0
	bne _0803D73C
	bl sub_080074CC
	cmp r0, #0
	bne _0803D73C
	ldr r0, _0803D768 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D73C
	bl sub_08007578
	cmp r0, #0
	bne _0803D73C
	b _0803D618
_0803D73C:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803D76C @ =0x00090085
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r4, #0
	mov sb, r4
	ldr r7, [sp, #0x264]
	movs r0, #1
	mov r8, r0
	b _0803D862
	.align 2, 0
_0803D768: .4byte 0x030063D8
_0803D76C: .4byte 0x00090085
_0803D770:
	bl sub_08007544
	cmp r0, #0
	bne _0803D7D2
	bl sub_08007510
	cmp r0, #0
	bne _0803D7D2
	bl sub_08007604
	cmp r0, #0
	bne _0803D7D2
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803D7D2
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D7D2:
	movs r0, #0x10
	str r0, [sp]
	mov r0, sb
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	add r0, sp, #0x204
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	add r1, sp, #0x200
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	mov r3, r8
	str r3, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #6]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0xd0
	lsls r2, r2, #8
	str r2, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803D88C
_0803D862:
	bl sub_08007750
	cmp r0, #0
	bne _0803D88C
	bl sub_080074CC
	cmp r0, #0
	bne _0803D88C
	ldr r0, _0803D8A0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D88C
	bl sub_08007578
	cmp r0, #0
	bne _0803D88C
	b _0803D770
_0803D88C:
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r3, #0
	mov sb, r3
	ldr r7, [sp, #0x264]
	movs r4, #1
	mov r8, r4
	b _0803D98C
	.align 2, 0
_0803D8A0: .4byte 0x030063D8
_0803D8A4:
	bl sub_08007544
	cmp r0, #0
	bne _0803D906
	bl sub_08007510
	cmp r0, #0
	bne _0803D906
	bl sub_08007604
	cmp r0, #0
	bne _0803D906
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803D906
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D906:
	movs r0, #0x10
	str r0, [sp]
	mov r0, sb
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	add r0, sp, #0x204
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	add r1, sp, #0x200
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	mov r3, r8
	str r3, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #6]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0xd0
	lsls r2, r2, #8
	str r2, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
_0803D98C:
	ldr r3, [sp, #0x22c]
	cmp r3, #0x77
	bhi _0803D9BC
	bl sub_08007750
	cmp r0, #0
	bne _0803D9BC
	bl sub_080074CC
	cmp r0, #0
	bne _0803D9BC
	ldr r0, _0803D9D8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D9BC
	bl sub_08007578
	cmp r0, #0
	bne _0803D9BC
	b _0803D8A4
_0803D9BC:
	movs r4, #0
	str r4, [sp, #0x22c]
	movs r0, #0x7d
	bl StopSE
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	mov sb, r4
	ldr r7, [sp, #0x264]
	movs r0, #1
	mov r8, r0
	b _0803DB0E
	.align 2, 0
_0803D9D8: .4byte 0x030063D8
_0803D9DC:
	bl sub_08007544
	cmp r0, #0
	bne _0803DA3E
	bl sub_08007510
	cmp r0, #0
	bne _0803DA3E
	bl sub_08007604
	cmp r0, #0
	bne _0803DA3E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803DA3E
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803DA3E:
	ldr r0, [sp, #0x22c]
	adds r0, #0x20
	str r0, [sp, #0x22c]
	ldr r1, [sp, #0x230]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x230]
	ldr r3, [sp, #0x210]
	ldrh r1, [r3, #0x2e]
	lsls r1, r1, #0xf
	ldr r4, _0803DB6C @ =0xFFFD0000
	adds r1, r1, r4
	mov r0, sl
	ldr r2, [r0, #0x14]
	add r0, sp, #0x200
	ldr r3, [sp, #0x22c]
	bl sub_080270A4
	ldr r2, [sp, #0x210]
	ldrh r1, [r2, #0x2c]
	lsls r1, r1, #0xf
	mov r3, sl
	ldr r2, [r3, #0x10]
	add r0, sp, #0x204
	ldr r3, [sp, #0x22c]
	bl sub_080270A4
	movs r0, #0x10
	str r0, [sp]
	mov r4, sb
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	add r0, sp, #0x204
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	add r1, sp, #0x200
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r4, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #6]
	movs r2, #2
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0xd0
	lsls r2, r2, #8
	str r2, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
	movs r0, #0xf8
	lsls r0, r0, #2
	ldr r3, [sp, #0x22c]
	cmp r3, r0
	bne _0803DB0E
	movs r0, #0x27
	bl PlaySE
_0803DB0E:
	ldr r0, _0803DB70 @ =0x000003FF
	ldr r4, [sp, #0x22c]
	cmp r4, r0
	bhi _0803DB40
	bl sub_08007750
	cmp r0, #0
	bne _0803DB40
	bl sub_080074CC
	cmp r0, #0
	bne _0803DB40
	ldr r0, _0803DB74 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DB40
	bl sub_08007578
	cmp r0, #0
	bne _0803DB40
	b _0803D9DC
_0803DB40:
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803DB78 @ =0x00090101
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	movs r6, #0
	str r6, [sp, #0x22c]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	b _0803DBE2
	.align 2, 0
_0803DB6C: .4byte 0xFFFD0000
_0803DB70: .4byte 0x000003FF
_0803DB74: .4byte 0x030063D8
_0803DB78: .4byte 0x00090101
_0803DB7C:
	bl sub_08007544
	cmp r0, #0
	bne _0803DBDE
	bl sub_08007510
	cmp r0, #0
	bne _0803DBDE
	bl sub_08007604
	cmp r0, #0
	bne _0803DBDE
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803DBDE
	mov r7, sl
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r7, [sp, #0x21c]
	str r7, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803DBDE:
	bl WaitFrame
_0803DBE2:
	ldr r0, [sp, #0x22c]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x22c]
	cmp r0, #0xb3
	bhi _0803DC16
	bl sub_08007750
	cmp r0, #0
	bne _0803DC16
	bl sub_080074CC
	cmp r0, #0
	bne _0803DC16
	ldr r0, _0803DC34 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DC16
	bl sub_08007578
	cmp r0, #0
	beq _0803DB7C
_0803DC16:
	movs r2, #0
	str r2, [sp, #0x22c]
	add r0, sp, #0x1fc
	str r2, [r0]
	str r2, [sp]
	str r2, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #0x95
	bl PlaySE
	b _0803DE3E
	.align 2, 0
_0803DC34: .4byte 0x030063D8
_0803DC38:
	bl sub_08007544
	cmp r0, #0
	beq _0803DC42
	b _0803DDC8
_0803DC42:
	bl sub_08007510
	cmp r0, #0
	beq _0803DC4C
	b _0803DDC8
_0803DC4C:
	bl sub_08007604
	cmp r0, #0
	beq _0803DC56
	b _0803DDC8
_0803DC56:
	bl sub_080075AC
	cmp r0, #0
	beq _0803DC60
	b _0803DDC8
_0803DC60:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
	movs r0, #7
	ldr r3, [sp, #0x22c]
	ands r0, r3
	adds r3, #1
	str r3, [sp, #0x22c]
	cmp r0, #0
	beq _0803DC8A
	b _0803DDC8
_0803DC8A:
	movs r0, #0x28
	bl PlaySE
	bl Random
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803DCA6
	adds r0, #0x3f
_0803DCA6:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803DCC8
	adds r1, #0x1f
_0803DCC8:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r7, sl
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803DCF4
	adds r0, #0x3f
_0803DCF4:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803DD16
	adds r1, #0x1f
_0803DD16:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803DD42
	adds r0, #0x3f
_0803DD42:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803DD64
	adds r1, #0x1f
_0803DD64:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r7, sl
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803DD90
	adds r0, #0x3f
_0803DD90:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803DDB2
	adds r1, #0x1f
_0803DDB2:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
_0803DDC8:
	mov r3, sl
	ldr r0, [r3, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r7, #0
	ldrsh r1, [r5, r7]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r6, [sp, #0x21c]
	str r6, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
	bl WaitFrame
	add r4, sp, #0x1fc
	ldr r0, [r4]
	cmp r0, #0
	bne _0803DE36
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	beq _0803DE3E
	movs r0, #0xf0
	lsls r0, r0, #1
	bl sub_0800F244
	movs r0, #1
	str r0, [r4]
	b _0803DE3E
_0803DE36:
	bl sub_0800F298
	cmp r0, #0
	bne _0803DE68
_0803DE3E:
	bl sub_08007750
	cmp r0, #0
	bne _0803DE68
	bl sub_080074CC
	cmp r0, #0
	bne _0803DE68
	ldr r0, _0803DEA0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DE68
	bl sub_08007578
	cmp r0, #0
	bne _0803DE68
	b _0803DC38
_0803DE68:
	movs r7, #1
	str r7, [sp, #0x22c]
_0803DE6C:
	bl WaitFrame
	ldr r0, [sp, #0x22c]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x22c]
	cmp r0, #0x77
	bls _0803DE6C
	ldr r0, _0803DEA4 @ =0x03003910
	ldr r1, [r0, #0x78]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x78]
	movs r0, #0x78
	bl sub_0800F1EC
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	b _0803DEEC
	.align 2, 0
_0803DEA0: .4byte 0x030063D8
_0803DEA4: .4byte 0x03003910
_0803DEA8:
	mov r2, sl
	ldr r0, [r2, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r2, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r7, [sp, #0x254]
	ldrh r2, [r7]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r7, [sp, #0x21c]
	str r7, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
	bl WaitFrame
_0803DEEC:
	bl sub_0800F298
	cmp r0, #0
	bne _0803DF1E
	bl sub_08007750
	cmp r0, #0
	bne _0803DF1E
	bl sub_080074CC
	cmp r0, #0
	bne _0803DF1E
	ldr r0, _0803DF48 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DF1E
	bl sub_08007578
	adds r3, r0, #0
	cmp r3, #0
	beq _0803DEA8
_0803DF1E:
	movs r0, #0
	str r0, [sp, #0x22c]
	movs r0, #2
	bl FadeOutBGM
	movs r0, #0xa7
	bl PlaySE
	ldr r0, _0803DF4C @ =gMPlayInfo_SE1
	movs r1, #0x20
	bl SndMPlayFadeOut
	ldr r0, _0803DF50 @ =gMPlayInfo_SE2
	movs r1, #0x20
	bl SndMPlayFadeOut
	ldr r0, _0803DF54 @ =gMPlayInfo_SE3
	movs r1, #0x20
	bl SndMPlayFadeOut
	b _0803E07A
	.align 2, 0
_0803DF48: .4byte 0x030063D8
_0803DF4C: .4byte gMPlayInfo_SE1
_0803DF50: .4byte gMPlayInfo_SE2
_0803DF54: .4byte gMPlayInfo_SE3
_0803DF58:
	bl sub_08007544
	cmp r0, #0
	bne _0803DFC2
	bl sub_08007510
	cmp r0, #0
	bne _0803DFC2
	bl sub_08007604
	cmp r0, #0
	bne _0803DFC2
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803DFC2
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r6, [sp, #0x258]
	ldrh r3, [r6]
	ldr r7, [sp, #0x21c]
	str r7, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803DFC2:
	movs r6, #0
	ldr r0, [sp, #0x22c]
	adds r0, #4
	mov sb, r0
	add r5, sp, #0x208
	movs r1, #0x1f
	mov r8, r1
	adds r7, r5, #0
_0803DFD2:
	ldr r0, [sp, #0x2c]
	lsls r4, r6, #1
	adds r0, r4, r0
	ldrh r1, [r0, #0x20]
	ldr r0, _0803E11C @ =0xFFFF0000
	ldr r2, [sp, #0x248]
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x248]
	lsls r1, r2, #0x1b
	lsrs r1, r1, #0xf
	adds r0, r5, #0
	movs r2, #0
	ldr r3, [sp, #0x22c]
	bl sub_080270A4
	ldr r0, [r7]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r3, r8
	ands r0, r3
	movs r1, #0x20
	rsbs r1, r1, #0
	ldr r2, [sp, #0x24c]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x24c]
	ldr r3, [sp, #0x248]
	lsls r1, r3, #0x16
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0xc
	adds r0, r5, #0
	movs r2, #0
	ldr r3, [sp, #0x22c]
	bl sub_080270A4
	ldr r0, [r7]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, _0803E120 @ =0xFFFFFC1F
	ldr r2, [sp, #0x24c]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x24c]
	ldr r3, [sp, #0x248]
	lsls r1, r3, #0x11
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0xc
	adds r0, r5, #0
	movs r2, #0
	ldr r3, [sp, #0x22c]
	bl sub_080270A4
	ldr r0, [r7]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0xa
	ldr r1, _0803E124 @ =0xFFFF83FF
	ldr r2, [sp, #0x24c]
	ands r1, r2
	orrs r0, r1
	str r0, [sp, #0x24c]
	ldr r0, _0803E128 @ =gPaletteBuffer
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r4, r4, r0
	add r0, sp, #0x24c
	ldrh r0, [r0]
	strh r0, [r4]
	adds r6, #1
	cmp r6, #0xf
	bls _0803DFD2
	bl FlushPaletteBuffer
	mov r1, sb
	str r1, [sp, #0x22c]
	bl WaitFrame
_0803E07A:
	ldr r0, _0803E12C @ =0x000003FF
	ldr r2, [sp, #0x22c]
	cmp r2, r0
	bhi _0803E0AC
	bl sub_08007750
	cmp r0, #0
	bne _0803E0AC
	bl sub_080074CC
	cmp r0, #0
	bne _0803E0AC
	ldr r0, _0803E130 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803E0AC
	bl sub_08007578
	cmp r0, #0
	bne _0803E0AC
	b _0803DF58
_0803E0AC:
	bl GetMultiplayerId
	ldr r6, _0803E134 @ =gPlayers
	movs r5, #0xd4
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	ldrh r2, [r1, #0x10]
	ldr r0, _0803E138 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	ldrh r2, [r1, #0x10]
	movs r0, #0x24
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x60
	adds r2, r2, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x210]
	adds r0, r0, r3
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #3
	str r0, [r2]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x64
	adds r2, r2, r1
	lsls r0, r0, #2
	ldr r4, [sp, #0x210]
	adds r0, r0, r4
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #3
	str r0, [r2]
	ldr r1, _0803E13C @ =gPlayerStats
	movs r0, #2
	strh r0, [r1, #0x2c]
	b _0803E144
	.align 2, 0
_0803E11C: .4byte 0xFFFF0000
_0803E120: .4byte 0xFFFFFC1F
_0803E124: .4byte 0xFFFF83FF
_0803E128: .4byte gPaletteBuffer
_0803E12C: .4byte 0x000003FF
_0803E130: .4byte 0x030063D8
_0803E134: .4byte gPlayers
_0803E138: .4byte 0x0000FFFE
_0803E13C: .4byte gPlayerStats
_0803E140:
	bl WaitFrame
_0803E144:
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r1, [r0, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803E140
	ldr r5, _0803E32C @ =gPlayerStats
	movs r0, #5
	strh r0, [r5, #0x2c]
	bl GetMultiplayerId
	ldr r2, _0803E330 @ =gPlayers
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803E334 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r1, #0x10]
	ldr r2, _0803E338 @ =0x03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	bl sub_080077AC
	bl sub_08001F98
	cmp r0, #0
	bne _0803E18E
	movs r0, #0xd
	bl PlayBGM
_0803E18E:
	mov r6, sl
	ldrh r0, [r6, #0x36]
	cmp r0, #0
	beq _0803E254
	adds r0, r5, #0
	adds r0, #0x84
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _0803E1C8
	movs r7, #0xab
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E1C8
	adds r2, r5, #0
	adds r2, #0x86
	ldr r0, _0803E33C @ =0x00000157
	adds r1, r1, r0
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0803E1C8
	adds r0, #1
	strb r0, [r2]
	bl sub_08041498
_0803E1C8:
	ldr r4, _0803E330 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x20c]
	bl CalcExpGain
	str r0, [sp, #0x220]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x220]
	bl AddExp
	adds r4, r0, #0
	movs r1, #0x13
	mov sb, r1
	ldr r5, _0803E340 @ =0x0000FFFF
_0803E1F8:
	mov r2, sl
	ldr r0, [r2, #0x14]
	ldr r3, _0803E344 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r2, #0x14]
	ldr r0, _0803E338 @ =0x03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0803E216
	mov r0, sl
	ldr r1, [sp, #0x220]
	bl sub_08024320
_0803E216:
	bl WaitFrame
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp sb, r5
	bne _0803E1F8
	cmp r4, #0
	beq _0803E254
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _0803E330 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_0803E254:
	bl sub_08033E20
	bl sub_08007750
	cmp r0, #0
	bne _0803E2F8
	bl sub_080074CC
	cmp r0, #0
	bne _0803E2F8
	ldr r4, _0803E348 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803E2F8
	bl sub_08007578
	cmp r0, #0
	bne _0803E2F8
	ldr r0, _0803E34C @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldr r3, _0803E350 @ =0x03003D08
	ldr r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0803E2E6
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _0803E2E2
	ldr r2, _0803E32C @ =gPlayerStats
	ldr r4, _0803E354 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r7, _0803E358 @ =0x00000275
	adds r2, r2, r7
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0803E2E2:
	bl sub_0800F53C
_0803E2E6:
	ldr r4, _0803E35C @ =0x030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0803E2F8
	ldr r0, [r4]
	bl KillThread
_0803E2F8:
	ldr r2, _0803E360 @ =gActiveEnemyMask
	movs r1, #1
	mov r0, sl
	ldrh r0, [r0]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x218]
	bl sub_0800CB84
	bl sub_080292D0
	bl ThreadExit
	movs r3, #0x9c
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E32C: .4byte gPlayerStats
_0803E330: .4byte gPlayers
_0803E334: .4byte 0x0000FFDF
_0803E338: .4byte 0x03003910
_0803E33C: .4byte 0x00000157
_0803E340: .4byte 0x0000FFFF
_0803E344: .4byte 0xFFFFFE00
_0803E348: .4byte 0x030063D8
_0803E34C: .4byte 0x00000BB8
_0803E350: .4byte 0x03003D08
_0803E354: .4byte 0x00000272
_0803E358: .4byte 0x00000275
_0803E35C: .4byte 0x030063E4
_0803E360: .4byte gActiveEnemyMask

	thumb_func_start sub_0803E364
sub_0803E364: @ 0x0803E364
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	str r0, [sp, #0x4c]
	str r1, [sp, #0x50]
	ldr r1, _0803E41C @ =0x080FBD60
	ldr r2, [sp, #0x50]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	ldr r0, [sp, #0x4c]
	adds r0, #0x7e
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x15
	movs r2, #3
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #7
	strb r0, [r1, #0x1e]
	adds r1, #0x21
	movs r0, #0xd
	strb r0, [r1]
	ldr r3, [sp, #0x4c]
	ldr r0, [r3, #0x14]
	str r0, [sp, #0x48]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0x60]
	ldr r1, _0803E420 @ =gEnemies
	movs r0, #0x94
	muls r0, r4, r0
	adds r0, #0x94
	ldr r1, [r1]
	adds r7, r1, r0
	adds r0, r4, #0
	adds r0, #0x80
	strh r0, [r7, #2]
	str r2, [r7, #0x10]
	str r2, [r7, #0x14]
	ldr r0, _0803E424 @ =0x03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	adds r0, r3, #0
	adds r0, #0x64
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x60]
	cmp r4, #1
	beq _0803E43C
	cmp r4, #1
	blo _0803E428
	cmp r4, #2
	beq _0803E458
	b _0803E476
	.align 2, 0
_0803E41C: .4byte 0x080FBD60
_0803E420: .4byte gEnemies
_0803E424: .4byte 0x03003910
_0803E428:
	adds r1, r7, #0
	adds r1, #0x87
	movs r0, #1
	strb r0, [r1]
	subs r1, #0xf
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa
	b _0803E46E
_0803E43C:
	adds r1, r7, #0
	adds r1, #0x87
	movs r0, #3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x78
	movs r1, #0x32
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x7c
	movs r0, #0x5a
	b _0803E474
_0803E458:
	adds r0, r7, #0
	adds r0, #0x87
	add r5, sp, #0x60
	ldrb r5, [r5]
	strb r5, [r0]
	adds r1, r7, #0
	adds r1, #0x78
	movs r0, #0xa
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x5a
_0803E46E:
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x32
_0803E474:
	strh r0, [r1]
_0803E476:
	adds r1, r7, #0
	adds r1, #0x84
	movs r0, #2
	strh r0, [r1]
	ldr r0, [sp, #0x60]
	cmp r0, #2
	beq _0803E48C
	adds r0, r7, #0
	adds r0, #0x8a
	ldrh r1, [r0]
	b _0803E492
_0803E48C:
	movs r1, #3
	adds r0, r7, #0
	adds r0, #0x8a
_0803E492:
	movs r2, #0
	mov r8, r2
	strh r1, [r0]
	movs r3, #0x72
	adds r3, r3, r7
	mov sb, r3
	ldrh r0, [r3]
	lsrs r0, r0, #1
	strh r0, [r3]
	strh r0, [r7, #0x38]
	bl sub_08001EC4
	adds r4, r0, #0
	mov r0, sb
	ldrh r5, [r0]
	ldr r6, _0803E574 @ =0x080FB740
	subs r4, #1
	lsls r4, r4, #2
	adds r0, r4, r6
	ldrh r0, [r0]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r5, r0
	mov r1, sb
	strh r5, [r1]
	movs r2, #0x6e
	adds r2, r2, r7
	mov sl, r2
	ldrh r5, [r2]
	adds r6, #2
	adds r4, r4, r6
	ldrh r0, [r4]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r5, r0
	mov r3, sl
	strh r5, [r3]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	adds r4, r7, #0
	adds r4, #0x48
	str r4, [sp, #0x90]
	mov r5, r8
	strh r5, [r4]
	movs r0, #0x4a
	adds r0, r0, r7
	mov sl, r0
	strh r5, [r0]
	adds r6, r7, #0
	adds r6, #0x4c
	strh r5, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	ldr r4, [sp, #0x60]
	adds r4, #1
	strh r4, [r7]
	ldr r0, _0803E578 @ =0x080FBD6C
	ldr r1, [sp, #0x60]
	lsls r5, r1, #3
	adds r1, r5, r0
	ldr r1, [r1]
	str r1, [sp, #0x54]
	adds r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp, #0x48]
	movs r2, #1
	str r2, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x6c]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	movs r0, #1
	str r0, [sp, #0x5c]
	movs r1, #0
	str r1, [sp, #0x58]
	ldr r2, _0803E57C @ =0x0000FFFF
	str r2, [sp, #0x7c]
	str r3, [sp, #0x84]
	movs r0, #0
	str r0, [sp, #0x8c]
	str r1, [sp, #0x88]
	bl sub_080076A8
	movs r2, #0xe1
	lsls r2, r2, #3
	str r2, [sp, #0x80]
	mov r3, sb
	str r3, [sp, #0xa0]
	ldr r1, [sp, #0x90]
	mov sb, r1
	str r6, [sp, #0x9c]
	str r4, [sp, #0x94]
	str r5, [sp, #0x98]
	cmp r0, #0
	bne _0803E56C
	b _0803EBA0
_0803E56C:
	movs r2, #0x96
	lsls r2, r2, #2
	str r2, [sp, #0x80]
	b _0803EBA0
	.align 2, 0
_0803E574: .4byte 0x080FB740
_0803E578: .4byte 0x080FBD6C
_0803E57C: .4byte 0x0000FFFF
_0803E580:
	bl sub_080271D0
	movs r3, #0x4e
	adds r3, r3, r7
	mov r8, r3
	cmp r0, #0
	beq _0803E590
	b _0803E8E6
_0803E590:
	ldrh r0, [r7, #0xa]
	cmp r0, #9
	bls _0803E598
	b _0803E8E6
_0803E598:
	lsls r0, r0, #2
	ldr r1, _0803E5A4 @ =_0803E5A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803E5A4: .4byte _0803E5A8
_0803E5A8: @ jump table
	.4byte _0803E5D0 @ case 0
	.4byte _0803E654 @ case 1
	.4byte _0803E738 @ case 2
	.4byte _0803E8E6 @ case 3
	.4byte _0803E8E6 @ case 4
	.4byte _0803E8E6 @ case 5
	.4byte _0803E77C @ case 6
	.4byte _0803E8C8 @ case 7
	.4byte _0803E7BC @ case 8
	.4byte _0803E830 @ case 9
_0803E5D0:
	movs r0, #0
	mov r4, sb
	strh r0, [r4]
	ldr r0, _0803E614 @ =0x03006820
	ldr r0, [r0]
	cmp r0, #0x80
	beq _0803E5EA
	ldr r5, [sp, #0x64]
	lsls r0, r5, #0x10
	ldr r1, _0803E618 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
_0803E5EA:
	ldr r2, [sp, #0x64]
	lsls r0, r2, #0x10
	movs r3, #0x4e
	adds r3, r3, r7
	mov r8, r3
	cmp r0, #0
	ble _0803E5FA
	b _0803E8E6
_0803E5FA:
	ldr r0, _0803E61C @ =0x03006824
	ldr r0, [r0]
	cmp r0, #0
	beq _0803E604
	b _0803E8E6
_0803E604:
	bl sub_080076A8
	cmp r0, #0
	beq _0803E620
	movs r4, #0
	str r4, [sp, #0x64]
	b _0803E62C
	.align 2, 0
_0803E614: .4byte 0x03006820
_0803E618: .4byte 0xFFFF0000
_0803E61C: .4byte 0x03006824
_0803E620:
	movs r0, #0x5a
	ldr r5, [sp, #0x94]
	muls r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
_0803E62C:
	movs r0, #0
	movs r1, #1
	mov r2, sb
	strh r1, [r2]
	adds r2, r7, #0
	adds r2, #0x4e
	strh r0, [r2]
	ldr r3, [sp, #0x9c]
	strh r0, [r3]
	mov r4, sl
	strh r0, [r4]
	movs r5, #0
	str r5, [sp, #0x78]
	strh r1, [r7, #0xa]
	ldr r0, _0803E650 @ =0x03006824
	str r1, [r0]
	mov r8, r2
	b _0803E8E6
	.align 2, 0
_0803E650: .4byte 0x03006824
_0803E654:
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x4e
	adds r2, r2, r7
	mov r8, r2
	cmp r0, #1
	beq _0803E664
	b _0803E8E6
_0803E664:
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803E66C
	b _0803E8E6
_0803E66C:
	ldr r1, [sp, #0x88]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	ldr r3, [sp, #0x50]
	cmp r1, r3
	bls _0803E6BC
	bl sub_080076A8
	cmp r0, #0
	beq _0803E690
	ldr r1, _0803E68C @ =0x080FBDE4
	ldr r4, [sp, #0x60]
	lsls r0, r4, #2
	b _0803E696
	.align 2, 0
_0803E68C: .4byte 0x080FBDE4
_0803E690:
	ldr r1, _0803E6B8 @ =0x080FBDF0
	ldr r5, [sp, #0x60]
	lsls r0, r5, #2
_0803E696:
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	adds r0, #0x88
	strh r1, [r0]
	ldrh r1, [r0]
	adds r0, r7, #0
	bl sub_0803F16C
	cmp r0, #0
	beq _0803E71A
	movs r0, #6
	strh r0, [r7, #0xa]
	movs r0, #0
	str r0, [sp, #0x88]
	b _0803E71A
	.align 2, 0
_0803E6B8: .4byte 0x080FBDF0
_0803E6BC:
	ldr r1, [sp, #0x60]
	cmp r1, #0
	bne _0803E710
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	ldr r4, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0803E704 @ =gPlayers
	movs r2, #0xd4
	muls r0, r2, r0
	adds r3, #0xd0
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r2, [r0]
	lsrs r2, r2, #4
	ldrh r3, [r0, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0800C9EC
	strh r0, [r7, #4]
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0803E708
	movs r0, #3
	mov r2, sb
	strh r0, [r2]
	b _0803E716
	.align 2, 0
_0803E704: .4byte gPlayers
_0803E708:
	movs r0, #2
	mov r3, sb
	strh r0, [r3]
	b _0803E716
_0803E710:
	movs r0, #2
	mov r4, sb
	strh r0, [r4]
_0803E716:
	movs r0, #2
	strh r0, [r7, #0xa]
_0803E71A:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r0, #0
	mov r5, r8
	strh r0, [r5]
	ldr r1, [sp, #0x9c]
	strh r0, [r1]
	mov r2, sl
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0x78]
	movs r4, #0
	str r4, [sp, #0x58]
	b _0803E8E6
_0803E738:
	adds r1, r7, #0
	adds r1, #0x4e
	ldrh r0, [r1]
	mov r8, r1
	cmp r0, #0
	bne _0803E746
	b _0803E8E6
_0803E746:
	ldr r0, [sp, #0x58]
	adds r5, r0, #0
	adds r5, #1
	str r5, [sp, #0x58]
	cmp r0, #0x3c
	bgt _0803E754
	b _0803E8E6
_0803E754:
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	ldr r3, [sp, #0x9c]
	strh r0, [r3]
	mov r4, sl
	strh r0, [r4]
	movs r5, #1
	str r5, [sp, #0x78]
	strh r0, [r7, #0xa]
	str r0, [sp, #0x58]
	ldr r0, _0803E778 @ =0x03006824
	ldr r1, [sp, #0x58]
	str r1, [r0]
	b _0803E8E6
	.align 2, 0
_0803E778: .4byte 0x03006824
_0803E77C:
	ldr r1, [sp, #0x8c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	movs r2, #0x4e
	adds r2, r2, r7
	mov r8, r2
	cmp r1, #0xa
	bhi _0803E792
	b _0803E8E6
_0803E792:
	movs r0, #0
	mov r3, sb
	strh r0, [r3]
	strh r0, [r2]
	ldr r4, [sp, #0x9c]
	strh r0, [r4]
	mov r5, sl
	strh r0, [r5]
	movs r1, #1
	str r1, [sp, #0x78]
	strh r0, [r7, #0xa]
	movs r2, #0
	str r2, [sp, #0x58]
	ldr r0, _0803E7B8 @ =0x03006824
	str r2, [r0]
	movs r3, #0
	str r3, [sp, #0x8c]
	b _0803E8E6
	.align 2, 0
_0803E7B8: .4byte 0x03006824
_0803E7BC:
	ldr r2, _0803E7DC @ =0x03006820
	movs r1, #1
	ldr r4, [sp, #0x60]
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r0, #7
	bne _0803E7E0
	movs r5, #0
	str r5, [sp, #0x5c]
	movs r0, #0x4e
	adds r0, r0, r7
	mov r8, r0
	b _0803E8E6
	.align 2, 0
_0803E7DC: .4byte 0x03006820
_0803E7E0:
	ldr r0, [sp, #0x6c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	movs r1, #0x4e
	adds r1, r1, r7
	mov r8, r1
	ldr r2, [sp, #0x80]
	cmp r0, r2
	bls _0803E8E6
	ldr r3, [sp, #0xa0]
	ldrh r0, [r3]
	cmp r0, #0
	beq _0803E8E6
	movs r0, #9
	strh r0, [r7, #0xa]
	ldr r0, _0803E82C @ =0xFFF60000
	str r0, [sp, #0x48]
	movs r4, #0
	str r4, [sp, #0x74]
	mov r5, sb
	strh r4, [r5]
	add r0, sp, #0x74
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, sp, #0x74
	ldrh r2, [r1]
	ldr r1, [sp, #0x9c]
	strh r2, [r1]
	add r2, sp, #0x74
	ldrh r3, [r2]
	mov r2, sl
	strh r3, [r2]
	movs r3, #0
	str r3, [sp, #0x84]
	b _0803E8E6
	.align 2, 0
_0803E82C: .4byte 0xFFF60000
_0803E830:
	movs r5, #0x80
	lsls r5, r5, #3
	ldr r4, [sp, #0x74]
	subs r0, r5, r4
	movs r1, #5
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	cmp r0, #0
	bne _0803E84C
	movs r0, #1
	str r0, [sp, #0x6c]
_0803E84C:
	ldr r1, [sp, #0x74]
	ldr r2, [sp, #0x6c]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	ldr r4, _0803E8B8 @ =0x000003FF
	cmp r0, r4
	bls _0803E860
	str r5, [sp, #0x74]
_0803E860:
	add r0, sp, #0x48
	ldr r1, _0803E8BC @ =0xFFF60000
	ldr r2, _0803E8C0 @ =0x080FBD6C
	adds r2, #4
	ldr r3, [sp, #0x98]
	adds r2, r3, r2
	ldr r2, [r2]
	ldr r3, [sp, #0x74]
	bl sub_080270A4
	movs r5, #0x4e
	adds r5, r5, r7
	mov r8, r5
	ldr r0, [sp, #0x74]
	cmp r0, r4
	bls _0803E8E6
	ldr r2, _0803E8C4 @ =0x03006820
	movs r1, #1
	ldr r3, [sp, #0x60]
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, #0
	strh r0, [r7, #0xa]
	mov r4, sb
	strh r0, [r4]
	strh r0, [r5]
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	mov r1, sl
	strh r0, [r1]
	movs r2, #1
	str r2, [sp, #0x78]
	ldr r3, [sp, #0xa0]
	ldrh r0, [r3]
	strh r0, [r7, #0x38]
	ldrh r0, [r3]
	lsrs r0, r0, #1
	strh r0, [r3]
	movs r4, #0
	str r4, [sp, #0x84]
	b _0803E8E6
	.align 2, 0
_0803E8B8: .4byte 0x000003FF
_0803E8BC: .4byte 0xFFF60000
_0803E8C0: .4byte 0x080FBD6C
_0803E8C4: .4byte 0x03006820
_0803E8C8:
	ldr r1, [sp, #0x84]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
	movs r5, #0x4e
	adds r5, r5, r7
	mov r8, r5
	cmp r1, #0x1e
	bls _0803E8E6
	ldr r1, _0803E918 @ =0x03006824
	movs r0, #0
	str r0, [r1]
	str r0, [sp, #0x84]
	strh r0, [r7, #0xa]
_0803E8E6:
	ldrh r0, [r7, #0xa]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0803E920
	ldr r1, _0803E91C @ =0x080FBD84
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #3
	ldr r3, [sp, #0x60]
	lsls r2, r3, #5
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r7, #0x10]
	mov r4, sb
	ldrh r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	b _0803E924
	.align 2, 0
_0803E918: .4byte 0x03006824
_0803E91C: .4byte 0x080FBD84
_0803E920:
	movs r0, #0
	str r0, [r7, #0x10]
_0803E924:
	str r0, [r7, #0x14]
	bl GetMultiplayerId
	ldr r4, [r7, #0x10]
	asrs r4, r4, #0xc
	ldr r6, _0803EB44 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	ldr r2, [r7, #0x14]
	asrs r2, r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0803E9EE
	ldr r0, _0803EB48 @ =0x080FBDFC
	ldr r3, [sp, #0x60]
	lsls r1, r3, #1
	adds r1, r1, r0
	mov r4, sl
	ldrh r0, [r4]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0803E9EE
	cmp r2, #0x2f
	bhi _0803E9EE
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x80
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _0803E9EE
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0803E9EE
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0803E9EE
	bl sub_08007544
	cmp r0, #0
	bne _0803E9EE
	bl GetMultiplayerId
	adds r4, r0, #0
	muls r4, r5, r4
	adds r4, r4, r6
	movs r0, #7
	strh r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x70
	ldr r0, _0803EB4C @ =0x0000FFFE
	strh r0, [r1]
	adds r0, r7, #0
	adds r1, r4, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r4, #0x80
	adds r4, r4, r0
	ldr r0, [r7, #0x2c]
	str r0, [r4]
_0803E9EE:
	mov r0, sb
	ldrh r1, [r0]
	ldr r2, [sp, #0x78]
	str r2, [sp]
	add r0, sp, #0x10
	mov r2, sl
	ldr r3, [sp, #0x9c]
	bl sub_08026C40
	mov r3, r8
	strh r0, [r3]
	bl sub_08007510
	cmp r0, #0
	bne _0803EA9E
	bl sub_08007604
	cmp r0, #0
	bne _0803EA9E
	bl sub_08007544
	cmp r0, #0
	bne _0803EA9E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803EA9E
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0803EA9E
	ldr r4, [sp, #0x54]
	lsls r0, r4, #4
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x48]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r0, #1
	ldr r1, [sp, #0x84]
	ands r0, r1
	cmp r0, #0
	bne _0803EA7E
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r4, sb
	ldrh r2, [r4]
	mov r5, sl
	ldrh r3, [r5]
	ldr r5, [sp, #0x60]
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803EA7E:
	ldr r0, [sp, #0x4c]
	adds r0, #0x7e
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x15
	movs r2, #3
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
_0803EA9E:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _0803EB22
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0x2a]
	cmp r0, r1
	beq _0803EAB8
	movs r2, #0x14
	str r2, [sp, #0x7c]
	ldrh r3, [r7, #0x2a]
	str r3, [sp, #0x70]
	movs r4, #0
	str r4, [sp, #0x68]
_0803EAB8:
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EB22
	movs r0, #2
	mov r5, sb
	strh r0, [r5]
	movs r0, #3
	mov r1, sl
	strh r0, [r1]
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r2, #0
	str r2, [sp, #0x6c]
	movs r3, #0
	str r3, [sp, #0x78]
	bl sub_08007544
	cmp r0, #0
	bne _0803EB02
	bl sub_08007510
	cmp r0, #0
	bne _0803EB02
	bl sub_08007604
	cmp r0, #0
	bne _0803EB02
	bl sub_080075AC
	cmp r0, #0
	bne _0803EB02
	movs r0, #0x95
	bl PlaySE
_0803EB02:
	ldrh r0, [r7]
	subs r0, #1
	bl sub_0803F11C
	ldr r0, _0803EB50 @ =0x03006824
	movs r1, #0
	str r1, [r0]
	ldrh r3, [r7, #2]
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
_0803EB22:
	ldr r0, [sp, #0x7c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x7c]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803EB98
	ldr r4, [sp, #0x70]
	cmp r4, #0
	bne _0803EB58
	ldr r5, _0803EB54 @ =0x0000FFFF
	str r5, [sp, #0x7c]
	b _0803EB9C
	.align 2, 0
_0803EB44: .4byte gPlayers
_0803EB48: .4byte 0x080FBDFC
_0803EB4C: .4byte 0x0000FFFE
_0803EB50: .4byte 0x03006824
_0803EB54: .4byte 0x0000FFFF
_0803EB58:
	bl sub_08007544
	cmp r0, #0
	bne _0803EB82
	bl sub_08007510
	cmp r0, #0
	bne _0803EB82
	bl sub_08007604
	cmp r0, #0
	bne _0803EB82
	bl sub_080075AC
	cmp r0, #0
	bne _0803EB82
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	ldr r2, [sp, #0x68]
	bl sub_0800EA74
_0803EB82:
	movs r0, #2
	ldr r1, [sp, #0x7c]
	ands r0, r1
	cmp r0, #0
	beq _0803EB9C
	ldr r0, [sp, #0x68]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	b _0803EB9C
_0803EB98:
	ldr r2, _0803EBDC @ =0x0000FFFF
	str r2, [sp, #0x7c]
_0803EB9C:
	bl WaitFrame
_0803EBA0:
	ldr r3, [sp, #0x5c]
	cmp r3, #0
	beq _0803EBD0
	bl sub_08007750
	cmp r0, #0
	bne _0803EBD0
	bl sub_080074CC
	cmp r0, #0
	bne _0803EBD0
	ldr r0, _0803EBE0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EBD0
	bl sub_08007578
	cmp r0, #0
	bne _0803EBD0
	b _0803E580
_0803EBD0:
	bl sub_08001F64
	cmp r0, #0
	beq _0803EC00
	movs r4, #0
	b _0803EBE8
	.align 2, 0
_0803EBDC: .4byte 0x0000FFFF
_0803EBE0: .4byte 0x030063D8
_0803EBE4:
	bl WaitFrame
_0803EBE8:
	ldrh r3, [r7, #2]
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	cmp r0, #0
	beq _0803EBE4
_0803EC00:
	ldr r2, _0803EC28 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EC28: .4byte gActiveEnemyMask

	thumb_func_start sub_0803EC2C
sub_0803EC2C: @ 0x0803EC2C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803EC3C @ =0x03006828
	ldr r4, [r0]
	movs r0, #0
_0803EC34:
	adds r6, r0, #1
	adds r5, r4, #0
	adds r5, #0x28
	b _0803EC44
	.align 2, 0
_0803EC3C: .4byte 0x03006828
_0803EC40:
	bl WaitFrame
_0803EC44:
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803EC40
	adds r0, r6, #0
	adds r4, r5, #0
	cmp r0, #2
	bls _0803EC34
	ldr r0, _0803EC5C @ =0x0300682C
	ldr r4, [r0]
	b _0803EC64
	.align 2, 0
_0803EC5C: .4byte 0x0300682C
_0803EC60:
	bl WaitFrame
_0803EC64:
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803EC60
	ldr r0, _0803EC74 @ =0x03006830
	ldr r4, [r0]
	b _0803EC7C
	.align 2, 0
_0803EC74: .4byte 0x03006830
_0803EC78:
	bl WaitFrame
_0803EC7C:
	adds r0, r4, #0
	bl IsThreadInList
	adds r7, r0, #0
	cmp r7, #0
	bne _0803EC78
	str r7, [r4, #8]
	ldr r6, _0803ECB0 @ =0x03006828
	ldr r0, [r6]
	bl Free
	ldr r5, _0803ECB4 @ =0x0300682C
	ldr r0, [r5]
	bl Free
	ldr r4, _0803ECB8 @ =0x03006830
	ldr r0, [r4]
	bl Free
	str r7, [r6]
	str r7, [r5]
	str r7, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803ECB0: .4byte 0x03006828
_0803ECB4: .4byte 0x0300682C
_0803ECB8: .4byte 0x03006830

	thumb_func_start sub_0803ECBC
sub_0803ECBC: @ 0x0803ECBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	movs r6, #0
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x34]
	lsls r2, r0, #5
	ldr r1, _0803EDD0 @ =0x080FBE04
	mov sl, r1
	lsls r0, r0, #3
	mov r8, r0
	ldr r1, _0803EDD4 @ =0x080FBD98
	adds r0, r2, r1
	str r0, [sp, #0x2c]
	mov r0, sl
	adds r0, #4
	add r0, r8
	str r0, [sp, #0x30]
	ldr r7, [sp, #0x34]
	add r5, sp, #8
	subs r1, #4
	adds r2, r2, r1
	mov sb, r2
_0803ECF2:
	mov r2, sb
	ldr r1, [r2]
	mov r0, r8
	add r0, sl
	ldr r2, [r0]
	lsls r4, r6, #8
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_080270A4
	ldr r0, [sp, #0x2c]
	ldr r1, [r0]
	ldr r0, [sp, #0x30]
	ldr r2, [r0]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_080270A4
	adds r7, #4
	adds r5, #4
	adds r6, #1
	cmp r6, #3
	bls _0803ECF2
	movs r6, #0
	mov r8, r6
	add r7, sp, #0x28
_0803ED26:
	movs r0, #0x1f
	mov r1, r8
	ands r0, r1
	movs r2, #1
	add r8, r2
	cmp r0, #0
	beq _0803EDB0
	movs r0, #0x28
	bl PlaySE
	lsls r1, r6, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #8
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x34]
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x2a
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_08005FC4
	bl Random
	movs r1, #0
	ldrsh r2, [r7, r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0803ED7A
	adds r0, r1, #7
_0803ED7A:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r2, r0
	bl Random
	movs r2, #0
	ldrsh r3, [r5, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803ED9A
	adds r1, r0, #7
_0803ED9A:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r3, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	adds r6, #1
_0803EDB0:
	bl WaitFrame
	cmp r6, #3
	bls _0803ED26
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EDD0: .4byte 0x080FBE04
_0803EDD4: .4byte 0x080FBD98

	thumb_func_start sub_0803EDD8
sub_0803EDD8: @ 0x0803EDD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov r8, r1
	movs r5, #0
	movs r6, #0
	movs r4, #0
	ldr r0, _0803EDFC @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0803EE3C
	ldr r0, _0803EE00 @ =0x03004650
	mov sb, r0
	b _0803EE32
	.align 2, 0
_0803EDFC: .4byte 0x03003910
_0803EE00: .4byte 0x03004650
_0803EE04:
	movs r0, #0xd4
	muls r0, r5, r0
	add r0, sb
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	ble _0803EE30
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _0803EE30
	cmp r0, #9
	beq _0803EE30
	ldrh r0, [r1]
	lsrs r0, r0, #4
	cmp r6, r0
	bhs _0803EE30
	adds r6, r0, #0
	adds r4, r5, #0
_0803EE30:
	adds r5, #1
_0803EE32:
	bl sub_08001EC4
	cmp r5, r0
	blo _0803EE04
	b _0803EE58
_0803EE3C:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0803EE4A
	rsbs r1, r1, #0
_0803EE4A:
	adds r0, r1, #0
	cmp r1, #0
	bge _0803EE52
	adds r0, r1, #3
_0803EE52:
	asrs r4, r0, #2
	lsls r0, r4, #2
	subs r4, r1, r0
_0803EE58:
	mov r2, r8
	cmp r2, #0xe
	blo _0803EE76
	cmp r2, #0x13
	bls _0803EE6A
	cmp r2, #0x25
	bhi _0803EE76
	cmp r2, #0x20
	blo _0803EE76
_0803EE6A:
	ldrh r0, [r7]
	movs r1, #2
	adds r2, r4, #0
	bl sub_0802EEA8
	b _0803F044
_0803EE76:
	ldr r1, _0803EECC @ =gPlayers
	movs r0, #0xd4
	muls r0, r4, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #4
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	ldr r2, [r7, #0x14]
	subs r1, r1, r2
	lsls r1, r1, #4
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x18
	subs r6, #0x10
	movs r0, #0xff
	ands r6, r0
	adds r0, r7, #0
	adds r0, #0x88
	movs r1, #0
	mov r2, r8
	strh r2, [r0]
	strh r1, [r7, #8]
	ldrh r0, [r7]
	adds r4, r7, #0
	adds r4, #0x87
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	movs r5, #0
	b _0803EED4
	.align 2, 0
_0803EECC: .4byte gPlayers
_0803EED0:
	bl WaitFrame
_0803EED4:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803EF04
	bl sub_08007750
	cmp r0, #0
	bne _0803EF04
	bl sub_080074CC
	cmp r0, #0
	bne _0803EF04
	ldr r0, _0803EF1C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EF04
	bl sub_08007578
	cmp r0, #0
	beq _0803EED0
_0803EF04:
	adds r6, #8
	movs r0, #0xff
	ands r6, r0
	ldrh r0, [r7]
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	movs r5, #0
	b _0803EF24
	.align 2, 0
_0803EF1C: .4byte 0x030063D8
_0803EF20:
	bl WaitFrame
_0803EF24:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803EF54
	bl sub_08007750
	cmp r0, #0
	bne _0803EF54
	bl sub_080074CC
	cmp r0, #0
	bne _0803EF54
	ldr r0, _0803EF6C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EF54
	bl sub_08007578
	cmp r0, #0
	beq _0803EF20
_0803EF54:
	adds r6, #8
	movs r0, #0xff
	ands r6, r0
	ldrh r0, [r7]
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	movs r5, #0
	b _0803EF74
	.align 2, 0
_0803EF6C: .4byte 0x030063D8
_0803EF70:
	bl WaitFrame
_0803EF74:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803EFA4
	bl sub_08007750
	cmp r0, #0
	bne _0803EFA4
	bl sub_080074CC
	cmp r0, #0
	bne _0803EFA4
	ldr r0, _0803EFBC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EFA4
	bl sub_08007578
	cmp r0, #0
	beq _0803EF70
_0803EFA4:
	adds r6, #8
	movs r0, #0xff
	ands r6, r0
	ldrh r0, [r7]
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	movs r5, #0
	b _0803EFC4
	.align 2, 0
_0803EFBC: .4byte 0x030063D8
_0803EFC0:
	bl WaitFrame
_0803EFC4:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803EFF4
	bl sub_08007750
	cmp r0, #0
	bne _0803EFF4
	bl sub_080074CC
	cmp r0, #0
	bne _0803EFF4
	ldr r0, _0803F00C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EFF4
	bl sub_08007578
	cmp r0, #0
	beq _0803EFC0
_0803EFF4:
	adds r6, #8
	movs r0, #0xff
	ands r6, r0
	movs r5, #0
	ldrh r0, [r7]
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	b _0803F014
	.align 2, 0
_0803F00C: .4byte 0x030063D8
_0803F010:
	bl WaitFrame
_0803F014:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803F044
	bl sub_08007750
	cmp r0, #0
	bne _0803F044
	bl sub_080074CC
	cmp r0, #0
	bne _0803F044
	ldr r0, _0803F05C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803F044
	bl sub_08007578
	cmp r0, #0
	beq _0803F010
_0803F044:
	bl GetCurrentThread
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F05C: .4byte 0x030063D8

	thumb_func_start sub_0803F060
sub_0803F060: @ 0x0803F060
	push {r4, r5, lr}
	ldr r5, _0803F0A4 @ =0x03006828
	movs r0, #0x78
	bl Alloc
	str r0, [r5]
	ldr r4, _0803F0A8 @ =0x0300682C
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _0803F0AC @ =0x03006830
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r0, [r5]
	movs r1, #0
	movs r2, #0
_0803F086:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #2
	bls _0803F086
	ldr r0, _0803F0A8 @ =0x0300682C
	ldr r0, [r0]
	movs r1, #0
	str r1, [r0, #8]
	ldr r0, _0803F0AC @ =0x03006830
	ldr r0, [r0]
	str r1, [r0, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F0A4: .4byte 0x03006828
_0803F0A8: .4byte 0x0300682C
_0803F0AC: .4byte 0x03006830

	thumb_func_start sub_0803F0B0
sub_0803F0B0: @ 0x0803F0B0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0803F0BC @ =0x03006828
	ldr r4, [r0]
	movs r6, #0
	b _0803F0C4
	.align 2, 0
_0803F0BC: .4byte 0x03006828
_0803F0C0:
	adds r6, #1
	adds r4, #0x28
_0803F0C4:
	cmp r6, #2
	bhi _0803F10C
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803F0C0
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0803F0C0
	ldr r2, _0803F114 @ =gActiveEnemyMask
	adds r0, r6, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803F118 @ =sub_0803E364
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl CreateThread
_0803F10C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F114: .4byte gActiveEnemyMask
_0803F118: .4byte sub_0803E364

	thumb_func_start sub_0803F11C
sub_0803F11C: @ 0x0803F11C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0803F128 @ =0x0300682C
	ldr r4, [r0]
	b _0803F130
	.align 2, 0
_0803F128: .4byte 0x0300682C
_0803F12C:
	bl WaitFrame
_0803F130:
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0803F12C
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803F168 @ =sub_0803ECBC
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl CreateThread
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F168: .4byte sub_0803ECBC

	thumb_func_start sub_0803F16C
sub_0803F16C: @ 0x0803F16C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0803F1AC @ =0x03006830
	ldr r4, [r0]
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0803F1B4
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803F1B0 @ =sub_0803EDD8
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl CreateThread
	movs r0, #1
	b _0803F1B6
	.align 2, 0
_0803F1AC: .4byte 0x03006830
_0803F1B0: .4byte sub_0803EDD8
_0803F1B4:
	movs r0, #0
_0803F1B6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
