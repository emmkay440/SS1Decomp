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
	ldr r0, _0802F650 @ =gUnknown_030063D8
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
_0802F650: .4byte gUnknown_030063D8
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
	ldr r0, _0802F7C0 @ =gMapLayer_03003910
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
_0802F7C0: .4byte gMapLayer_03003910
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

_0802F7EA:
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
	ldr r0, _080300E8 @ =gUnknown_030063D8
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
_080300E8: .4byte gUnknown_030063D8
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
	ldr r0, _080303DC @ =gUnknown_030063D8
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
	bl _0802F7EA
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
	ldr r0, _080303DC @ =gUnknown_030063D8
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
_080303DC: .4byte gUnknown_030063D8
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
	ldr r0, _0803085C @ =gUnknown_030063D8
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
	ldr r0, _08030868 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_080306B2:
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _080307A0
	ldr r4, _0803086C @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
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
	ldr r0, _08030868 @ =gMapLayer_03003910
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
	ldr r4, _0803085C @ =gUnknown_030063D8
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
	ldr r3, _08030884 @ =gUnknown_03003D08
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
_0803085C: .4byte gUnknown_030063D8
_08030860: .4byte gPlayers
_08030864: .4byte 0x0000FFFE
_08030868: .4byte gMapLayer_03003910
_0803086C: .4byte 0x03003D94
_08030870: .4byte 0x00000157
_08030874: .4byte 0x0000FFFF
_08030878: .4byte 0xFFFFFE00
_0803087C: .4byte gActiveEnemyMask
_08030880: .4byte 0x00000BB8
_08030884: .4byte gUnknown_03003D08
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
	ldr r0, _08030904 @ =gMapLayer_03003910
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
_08030904: .4byte gMapLayer_03003910
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
	ldr r0, _080309B8 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	movs r5, #0x46
	str r5, [sp, #0x90]
	cmp r0, #1
	bne _08030A26
	movs r0, #0x3c
	b _08030A24
	.align 2, 0
_080309B8: .4byte gMapLayer_03003910
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
	ldr r0, _08030D0C @ =gMapLayer_03003910
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
	ldr r0, _08030D1C @ =gUnknown_030063D8
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
_08030D0C: .4byte gMapLayer_03003910
_08030D10: .4byte gPlayers
_08030D14: .4byte 0x0805289C
_08030D18: .4byte 0x0000FFFE
_08030D1C: .4byte gUnknown_030063D8
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
	ldr r1, _08031104 @ =gMapLayer_03003910
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
	ldr r0, _08031108 @ =gUnknown_030063D8
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
	ldr r1, _08031104 @ =gMapLayer_03003910
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
_08031104: .4byte gMapLayer_03003910
_08031108: .4byte gUnknown_030063D8
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
	ldr r0, _08031248 @ =gUnknown_030063D8
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
	ldr r2, _0803124C @ =gUnknown_0300680C
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
_08031248: .4byte gUnknown_030063D8
_0803124C: .4byte gUnknown_0300680C
