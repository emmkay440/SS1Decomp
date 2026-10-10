	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080199B4
sub_080199B4: @ 0x080199B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r3, _080199E0 @ =gUnknown_030063D8
	movs r2, #0
_080199C4:
	ldr r0, [r3]
	lsls r1, r6, #1
	adds r0, #0x7a
	adds r0, r0, r1
	strh r2, [r0]
	adds r6, #1
	cmp r6, #4
	bls _080199C4
	movs r0, #0
	mov r8, r0
	movs r1, #1
	mov sb, r1
	b _08019B66
	.align 2, 0
_080199E0: .4byte gUnknown_030063D8
_080199E4:
	bl sub_0800F430
	cmp r0, #0
	bne _080199EE
	b _08019B62
_080199EE:
	bl sub_08001F64
	cmp r0, #0
	bne _080199F8
	b _08019B62
_080199F8:
	movs r6, #0
	ldr r0, [r4]
	adds r0, #0x84
	ldrh r0, [r0]
	mov r3, sb
	ands r0, r3
	mov ip, r4
	cmp r0, #0
	beq _08019A24
	adds r3, r4, #0
	movs r1, #1
_08019A0E:
	adds r6, #1
	cmp r6, #4
	bls _08019A16
	b _08019B20
_08019A16:
	ldr r0, [r3]
	adds r0, #0x84
	ldrh r0, [r0]
	asrs r0, r6
	ands r0, r1
	cmp r0, #0
	bne _08019A0E
_08019A24:
	cmp r6, #4
	bhi _08019B20
	mov r5, ip
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08019B20
	adds r7, r6, #0
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #4
	ldr r1, [r3, #8]
	adds r4, r1, r0
	ldr r5, _08019A54 @ =gPlayers
	movs r6, #0
	movs r3, #1
	add r8, r3
	b _08019B06
	.align 2, 0
_08019A54: .4byte gPlayers
_08019A58:
	ldr r0, _08019B90 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	adds r5, #0xd4
	mov sl, r5
	cmp r1, r0
	bne _08019B02
	ldrh r0, [r2]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r2, r1, #0x17
	ldrh r1, [r4]
	lsrs r0, r0, #7
	subs r1, r1, r0
	cmp r1, #0
	bge _08019A86
	rsbs r1, r1, #0
_08019A86:
	cmp r1, #0xf
	bgt _08019B02
	ldrh r0, [r4, #2]
	subs r0, r0, r2
	cmp r0, #0
	bge _08019A94
	rsbs r0, r0, #0
_08019A94:
	cmp r0, #9
	bgt _08019B02
	movs r2, #0
	ldr r0, _08019B94 @ =gUnknown_030063D8
	ldr r3, [r0]
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r1, [r1]
	mov r5, sb
	ands r1, r5
	mov ip, r0
	cmp r1, #0
	beq _08019AB4
	ldr r0, [r3, #0xc]
	cmp r0, r4
	beq _08019ADA
_08019AB4:
	adds r2, #1
	cmp r2, #4
	bhi _08019ADE
	mov r0, ip
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrh r0, [r0]
	asrs r0, r2
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _08019AB4
	lsls r0, r2, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _08019AB4
_08019ADA:
	cmp r2, #4
	bls _08019B02
_08019ADE:
	mov r5, ip
	ldr r2, [r5]
	lsls r1, r7, #2
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	str r4, [r0]
	adds r2, #0x84
	mov r0, sb
	lsls r0, r7
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	adds r0, r7, #0
	adds r1, r6, #0
	bl StartEnemySpawner
	movs r6, #4
_08019B02:
	adds r6, #1
	mov r5, sl
_08019B06:
	bl sub_08001EC4
	cmp r6, r0
	blo _08019A58
	ldr r1, _08019B94 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0x9e
	mov ip, r1
	ldrh r0, [r0]
	cmp r8, r0
	blo _08019B20
	movs r0, #0
	mov r8, r0
_08019B20:
	mov r1, ip
	ldr r0, [r1]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _08019B62
	movs r3, #0
	movs r6, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r3, r0
	bhs _08019B52
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, _08019B94 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r1, [r0]
_08019B42:
	ldr r0, [r4]
	cmp r0, r5
	bne _08019B4A
	adds r3, #1
_08019B4A:
	adds r6, #1
	adds r4, #0x30
	cmp r6, r1
	blo _08019B42
_08019B52:
	mov r5, ip
	ldr r0, [r5]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r3, r0
	bne _08019B62
	bl ThreadExit
_08019B62:
	bl WaitFrame
_08019B66:
	bl sub_080074CC
	cmp r0, #0
	bne _08019B80
	ldr r4, _08019B94 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019B80
	b _080199E4
_08019B80:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019B90: .4byte gMapLayer_03003910
_08019B94: .4byte gUnknown_030063D8

	thumb_func_start sub_08019B98
sub_08019B98: @ 0x08019B98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r6, #0
	ldr r0, _08019BEC @ =gUnknown_030063D8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrh r0, [r0]
	mov sl, r0
	mov sb, r6
	adds r7, r1, #0
	adds r7, #0x7a
	mov ip, r6
_08019BBA:
	mov r1, sl
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	adds r3, r6, #1
	cmp r1, #0
	beq _08019BF8
	movs r4, #0
	ldrh r0, [r7]
	cmp r4, r0
	bhs _08019BF8
	ldr r0, _08019BEC @ =gUnknown_030063D8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x7a
	add r0, ip
	ldrh r5, [r0]
	mov r2, sb
	adds r1, #0x48
_08019BE0:
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, r8
	bne _08019BF0
	adds r0, r3, #0
	b _08019C30
	.align 2, 0
_08019BEC: .4byte gUnknown_030063D8
_08019BF0:
	adds r2, #2
	adds r4, #1
	cmp r4, r5
	blo _08019BE0
_08019BF8:
	movs r0, #0xa
	add sb, r0
	adds r7, #2
	movs r0, #2
	add ip, r0
	adds r6, #1
	cmp r6, #4
	bls _08019BBA
	movs r6, #0
	ldr r0, _08019C24 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x84
	ldrh r1, [r0]
	movs r2, #1
_08019C14:
	adds r0, r1, #0
	asrs r0, r6
	ands r0, r2
	cmp r0, #0
	beq _08019C28
	adds r0, r6, #1
	b _08019C30
	.align 2, 0
_08019C24: .4byte gUnknown_030063D8
_08019C28:
	adds r6, #1
	cmp r6, #4
	bls _08019C14
	movs r0, #0
_08019C30:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019C40
sub_08019C40: @ 0x08019C40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x104
	str r0, [sp, #0x9c]
	str r1, [sp, #0xa0]
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08019D7C @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0xc0]
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	bne _08019C66
	b _08019D8C
_08019C66:
	ldr r0, _08019D80 @ =0x0010003E
	bl GetDataRecord
	str r0, [sp, #0xa8]
	ldr r0, _08019D84 @ =0x0011003E
	bl GetDataRecord
	str r0, [sp, #0xa4]
	ldr r0, _08019D88 @ =0x0013003E
	bl GetDataRecord
	str r0, [sp, #0xac]
	add r1, sp, #0x5c
	movs r0, #5
	strb r0, [r1, #5]
	movs r0, #6
	strb r0, [r1, #6]
	movs r0, #7
	strb r0, [r1, #7]
	movs r2, #0
	str r2, [sp, #0xb8]
	mov sb, r2
	mov r3, sp
	adds r3, #0x94
	str r3, [sp, #0xf8]
	add r4, sp, #0x2c
	mov sl, r4
	add r0, sp, #0x50
	mov r8, r0
	add r7, sp, #0x20
	add r6, sp, #0x38
	add r5, sp, #0x44
	add r4, sp, #0x14
_08019CA8:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08019CB8
	adds r0, #0x1f
_08019CB8:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x82
	mov r1, sl
	str r0, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08019CF4
	rsbs r0, r0, #0
_08019CF4:
	adds r0, #1
	str r0, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08019D08
	adds r0, #0x1f
_08019D08:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x82
	str r0, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08019D42
	rsbs r0, r0, #0
_08019D42:
	adds r0, #1
	mov r2, r8
	str r0, [r2]
	mov r3, sl
	ldm r3!, {r0}
	lsls r0, r0, #8
	mov sl, r3
	subs r3, #4
	stm r3!, {r0}
	ldr r0, [r6]
	lsls r0, r0, #8
	stm r6!, {r0}
	ldr r0, [r5]
	lsls r0, r0, #7
	stm r5!, {r0}
	ldm r2!, {r0}
	lsls r0, r0, #7
	mov r8, r2
	subs r2, #4
	stm r2!, {r0}
	adds r7, #4
	adds r4, #4
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #2
	bls _08019CA8
	b _08019DF8
	.align 2, 0
_08019D7C: .4byte gPlayers
_08019D80: .4byte 0x0010003E
_08019D84: .4byte 0x0011003E
_08019D88: .4byte 0x0013003E
_08019D8C:
	bl sub_08006114
	cmp r0, #0
	bne _08019DD4
	ldr r4, _08019DD0 @ =gMapLayer_03003910
	adds r4, #0x8c
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl GetDataRecord
	str r0, [sp, #0xa8]
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xa4]
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xac]
	add r1, sp, #0x5c
	movs r0, #0xe
	strb r0, [r1, #0xe]
	mov r2, sp
	adds r2, #0x94
	str r2, [sp, #0xf8]
	b _08019DF8
	.align 2, 0
_08019DD0: .4byte gMapLayer_03003910
_08019DD4:
	ldr r0, _08019E44 @ =0x00100064
	bl GetDataRecord
	str r0, [sp, #0xa8]
	ldr r0, _08019E48 @ =0x00110064
	bl GetDataRecord
	str r0, [sp, #0xa4]
	ldr r0, _08019E4C @ =0x00130064
	bl GetDataRecord
	str r0, [sp, #0xac]
	add r1, sp, #0x5c
	movs r0, #0xf
	strb r0, [r1, #0xf]
	mov r3, sp
	adds r3, #0x94
	str r3, [sp, #0xf8]
_08019DF8:
	ldr r4, _08019E50 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xa2
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08019E54 @ =0x00000BB8
	bl _08000400
	bl sub_080074CC
	cmp r0, #0
	bne _08019E1E
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019E22
_08019E1E:
	bl ThreadExit
_08019E22:
	bl sub_08007544
	cmp r0, #0
	bne _08019E38
	bl sub_080075AC
	cmp r0, #0
	bne _08019E38
	movs r0, #0x5d
	bl PlaySE
_08019E38:
	movs r5, #0
	ldr r4, [sp, #0xf8]
	strh r5, [r4]
	movs r0, #0
	str r0, [sp, #0xbc]
	b _0801A5C6
	.align 2, 0
_08019E44: .4byte 0x00100064
_08019E48: .4byte 0x00110064
_08019E4C: .4byte 0x00130064
_08019E50: .4byte gUnknown_030063D8
_08019E54: .4byte 0x00000BB8
_08019E58:
	ldr r0, [sp, #0xc0]
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _08019E98 @ =0x0000F00F
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #9
	bne _08019E70
	ldr r3, [sp, #0xb0]
	adds r3, #1
	str r3, [sp, #0xb0]
_08019E70:
	ldr r4, [sp, #0xa0]
	cmp r4, #0
	bne _08019ECE
	bl sub_08006114
	cmp r0, #0
	bne _08019EAE
	ldr r0, [sp, #0xb0]
	cmp r0, #0
	beq _08019E9C
	movs r1, #1
	str r1, [sp, #0xb0]
	mov r2, sp
	adds r2, #0x98
	str r2, [sp, #0xfc]
	movs r3, #0x9a
	add r3, sp
	mov sl, r3
	b _08019F4C
	.align 2, 0
_08019E98: .4byte 0x0000F00F
_08019E9C:
	ldr r4, [sp, #0xa0]
	str r4, [sp, #0xb0]
	mov r0, sp
	adds r0, #0x98
	str r0, [sp, #0xfc]
	movs r1, #0x9a
	add r1, sp
	mov sl, r1
	b _08019F4C
_08019EAE:
	movs r2, #1
	str r2, [sp]
	movs r0, #0
	ldr r1, [sp, #0xf8]
	mov r2, sp
	adds r2, #0x96
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	mov r3, sp
	adds r3, #0x98
	str r3, [sp, #0xfc]
	movs r4, #0x9a
	add r4, sp
	mov sl, r4
	b _08019F4C
_08019ECE:
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	ldr r1, [sp, #0xf8]
	mov r2, sp
	adds r2, #0x96
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	movs r1, #0
	mov sb, r1
	mov r2, sp
	adds r2, #0x8c
	str r2, [sp, #0xf4]
	mov r3, sp
	adds r3, #0x78
	str r3, [sp, #0xe8]
	mov r4, sp
	adds r4, #0x98
	str r4, [sp, #0xfc]
	movs r0, #0x9a
	add r0, sp
	mov sl, r0
	movs r1, #1
	mov r8, r1
	mov r7, sp
	adds r7, #0x72
	mov r6, sp
	adds r6, #0x86
	add r5, sp, #0x6c
	add r4, sp, #0x80
_08019F0C:
	mov r2, r8
	str r2, [sp]
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	mov r3, r8
	str r3, [sp]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r7, #0
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	adds r7, #2
	adds r6, #2
	adds r5, #2
	adds r4, #2
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #2
	bls _08019F0C
	str r0, [sp]
	movs r0, #3
	ldr r1, [sp, #0xf4]
	ldr r2, [sp, #0xe8]
	ldr r3, [sp, #0xa8]
	bl sub_08004214
_08019F4C:
	ldr r2, [sp, #0x9c]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r2, #6]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [sp, #0xfc]
	mov r3, sl
	bl sub_08005FC4
	bl sub_08007510
	cmp r0, #0
	beq _08019F74
	b _0801A322
_08019F74:
	bl sub_08007544
	cmp r0, #0
	beq _08019F7E
	b _0801A322
_08019F7E:
	bl sub_08007604
	cmp r0, #0
	beq _08019F88
	b _0801A322
_08019F88:
	bl sub_080075AC
	cmp r0, #0
	beq _08019F92
	b _0801A322
_08019F92:
	ldr r3, [sp, #0x9c]
	ldrh r0, [r3, #4]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb4]
	ldr r4, [sp, #0xa0]
	cmp r4, #0
	bne _08019FB0
	b _0801A1C4
_08019FB0:
	bl sub_08007510
	cmp r0, #0
	bne _08019FF4
	bl sub_08007604
	adds r1, r0, #0
	cmp r1, #0
	bne _08019FF4
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #0x1f
	movs r2, #1
	ldr r3, [sp, #0xb8]
	bl sub_080044E4
	ldr r0, _0801A1C0 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08019FEA
	ldr r0, [sp, #0xb8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
_08019FEA:
	ldr r0, [sp, #0xb8]
	cmp r0, #0x10
	bls _08019FF4
	movs r1, #0x10
	str r1, [sp, #0xb8]
_08019FF4:
	movs r0, #0x15
	ldr r1, [sp, #0xac]
	adds r1, #0xa0
	movs r2, #3
	bl LoadPalette
	ldr r2, [sp, #0xfc]
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r4, sl
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r4, [sp, #0xf8]
	ldrh r3, [r4]
	movs r2, #0
	str r2, [sp]
	add r2, sp, #0x5c
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r4, #1
	str r4, [sp, #0x10]
	movs r2, #0
	bl sub_08003FA4
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	add r4, sp, #0x80
	ldrh r3, [r4, #0xc]
	ldr r2, [sp, #0xb4]
	str r2, [sp]
	add r2, sp, #0x5c
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004418
	movs r3, #0
	mov sb, r3
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0xe0]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0xdc]
	mov r2, sp
	adds r2, #0x50
	str r2, [sp, #0xe4]
	str r4, [sp, #0xec]
	mov r3, sp
	adds r3, #0x86
	str r3, [sp, #0xf0]
	mov r7, sl
	ldr r4, [sp, #0xfc]
	str r4, [sp, #0xc4]
	add r6, sp, #0x38
	add r5, sp, #0x2c
	subs r0, #0x30
	str r0, [sp, #0x100]
	movs r1, #0
	mov r8, r1
	adds r2, #0xc
	str r2, [sp, #0xc8]
_0801A084:
	ldr r1, [sp, #0xe0]
	add r1, r8
	ldr r0, [r5]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r5]
	movs r3, #0
	ldrsh r1, [r7, r3]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801A0DE
	bl Random
	movs r4, #0
	ldrsh r2, [r7, r4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0801A0B4
	adds r0, #0x1f
_0801A0B4:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	str r0, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x100]
	str r0, [r1]
	ldr r0, [r5]
	lsls r0, r0, #8
	str r0, [r5]
_0801A0DE:
	ldr r1, [sp, #0xe4]
	add r1, r8
	ldr r0, [r6]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r6]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801A13E
	bl Random
	mov r4, sl
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0801A112
	adds r0, #0x1f
_0801A112:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	str r0, [r6]
	bl Random
	ldr r4, [sp, #0xdc]
	add r4, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4]
	ldr r0, [r6]
	lsls r0, r0, #8
	str r0, [r6]
_0801A13E:
	ldr r2, [sp, #0xc4]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r4, [sp, #0x100]
	ldm r4!, {r1}
	str r4, [sp, #0x100]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldm r5!, {r2}
	asrs r2, r2, #8
	adds r1, r1, r2
	mov r3, sb
	lsls r4, r3, #1
	ldr r3, [sp, #0xec]
	adds r2, r3, r4
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	ldr r2, [sp, #0xc8]
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	bl sub_08003FA4
	ldr r3, [sp, #0xc4]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r1, [sp, #0xdc]
	add r1, r8
	ldr r1, [r1]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldm r6!, {r2}
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r3, [sp, #0xf0]
	adds r4, r3, r4
	ldrh r3, [r4]
	movs r4, #0
	str r4, [sp]
	ldr r2, [sp, #0xc8]
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r4, #1
	str r4, [sp, #0x10]
	movs r2, #2
	bl sub_08003FA4
	movs r0, #4
	add r8, r0
	add sb, r4
	mov r1, sb
	cmp r1, #2
	bhi _0801A1BE
	b _0801A084
_0801A1BE:
	b _0801A322
	.align 2, 0
_0801A1C0: .4byte gFrameCounter
_0801A1C4:
	bl sub_08006114
	cmp r0, #0
	bne _0801A2C2
	movs r0, #0x1e
	ldr r2, [sp, #0xac]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r2, #1
	bl LoadPalette
	ldr r0, _0801A22C @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _0801A258
	ldr r1, _0801A230 @ =gMapLayer_03003910
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #4
	beq _0801A208
	cmp r0, #9
	bne _0801A234
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0801A234
_0801A208:
	add r4, sp, #0x80
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	add r2, sp, #0x6c
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	b _0801A2DE
	.align 2, 0
_0801A22C: .4byte gUnknown_030063D8
_0801A230: .4byte gMapLayer_03003910
_0801A234:
	ldr r3, [sp, #0xfc]
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xb0]
	lsls r3, r4, #0x10
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0xb4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	b _0801A2EE
_0801A258:
	ldr r0, _0801A294 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #4
	bne _0801A298
	add r4, sp, #0x80
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	add r2, sp, #0x6c
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	ldr r4, [sp, #0xb4]
	str r4, [sp]
	add r2, sp, #0x5c
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	b _0801A2BA
	.align 2, 0
_0801A294: .4byte gMapLayer_03003910
_0801A298:
	ldr r3, [sp, #0xfc]
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xb0]
	lsls r3, r4, #0x10
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0xb4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
_0801A2BA:
	movs r2, #0
	bl sub_08004344
	b _0801A322
_0801A2C2:
	ldr r0, _0801A2F8 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _0801A2FC
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0xf8]
	ldrh r3, [r2]
_0801A2DE:
	ldr r4, [sp, #0xb4]
	str r4, [sp]
	add r2, sp, #0x5c
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
_0801A2EE:
	movs r2, #0
	bl sub_08004418
	b _0801A322
	.align 2, 0
_0801A2F8: .4byte gUnknown_030063D8
_0801A2FC:
	ldr r3, [sp, #0xfc]
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xf8]
	ldrh r3, [r4]
	ldr r2, [sp, #0xb4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_0801A322:
	bl sub_0800F430
	cmp r0, #0
	beq _0801A3F0
	bl sub_080271D0
	cmp r0, #0
	bne _0801A3F0
	bl sub_080076E0
	cmp r0, #0
	bne _0801A3F0
	ldr r1, [sp, #0xc0]
	ldrh r0, [r1, #0xc]
	cmp r0, #9
	beq _0801A3F0
	cmp r0, #5
	beq _0801A3F0
	bl sub_08016FA0
	cmp r0, #0
	bne _0801A3F0
	ldr r0, _0801A3E8 @ =gFrameCounter
	ldr r0, [r0]
	movs r2, #1
	ands r0, r2
	ldr r3, [sp, #0xc0]
	ldr r2, [r3, #0x58]
	ldr r3, [r3, #0x5c]
	cmp r0, #0
	beq _0801A3A6
	asrs r0, r2, #0xf
	ldr r4, [sp, #0xfc]
	strh r0, [r4]
	asrs r0, r3, #0xf
	mov r1, sl
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r4, [sp, #0x9c]
	ldrh r0, [r4, #4]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801A37C
	rsbs r1, r1, #0
_0801A37C:
	cmp r1, #1
	bgt _0801A3A2
	mov r0, sl
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, [sp, #0x9c]
	ldrh r0, [r4, #6]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801A392
	rsbs r1, r1, #0
_0801A392:
	cmp r1, #1
	bgt _0801A3A2
	ldr r1, [sp, #0xc0]
	ldrh r0, [r1, #0x16]
	movs r4, #1
	str r4, [sp, #0xbc]
	cmp r0, #0
	bne _0801A3A6
_0801A3A2:
	movs r0, #0
	str r0, [sp, #0xbc]
_0801A3A6:
	asrs r0, r2, #0xf
	ldr r1, [sp, #0xfc]
	strh r0, [r1]
	asrs r0, r3, #0xf
	mov r2, sl
	strh r0, [r2]
	ldr r3, [sp, #0xbc]
	cmp r3, #0
	beq _0801A430
	ldr r4, [sp, #0xc0]
	ldrh r1, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0801A430
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x10]
	ldr r0, _0801A3EC @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r4, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801A430
	movs r0, #9
	strh r0, [r4, #0xc]
	strh r2, [r4, #0xe]
	b _0801A430
	.align 2, 0
_0801A3E8: .4byte gFrameCounter
_0801A3EC: .4byte gKeysNew
_0801A3F0:
	bl sub_080271D0
	cmp r0, #0
	bne _0801A430
	bl sub_080076E0
	cmp r0, #0
	bne _0801A430
	ldr r3, [sp, #0xc0]
	ldrh r0, [r3, #0xc]
	cmp r0, #9
	bne _0801A430
	ldrh r3, [r3, #0xe]
	cmp r3, #0
	bne _0801A430
	ldr r4, [sp, #0xc0]
	ldrh r1, [r4, #0x10]
	movs r0, #0x10
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r4, #0x10]
	ldr r0, _0801A454 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r4, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801A430
	strh r3, [r4, #0xc]
	ldr r1, _0801A458 @ =0x0000FFFC
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4, #0x10]
_0801A430:
	bl sub_080074F0
	cmp r0, #0
	bne _0801A43A
	b _0801A5B0
_0801A43A:
	bl sub_08001F64
	cmp r0, #0
	bne _0801A444
	b _0801A59C
_0801A444:
	bl sub_08006114
	cmp r0, #0
	bne _0801A52E
	movs r5, #0
	mov sb, r5
	ldr r6, _0801A45C @ =0x03004650
	b _0801A4A6
	.align 2, 0
_0801A454: .4byte gKeysNew
_0801A458: .4byte 0x0000FFFC
_0801A45C: .4byte 0x03004650
_0801A460:
	movs r0, #0xd4
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	ldr r3, _0801A4C4 @ =0x0000F00F
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #9
	bne _0801A47E
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801A47E:
	bl sub_08001EC4
	cmp r0, #1
	ble _0801A4A2
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0801A4A2
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0801A4A2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801A4A2:
	movs r4, #1
	add sb, r4
_0801A4A6:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801A460
	bl sub_08001EC4
	cmp r5, r0
	bne _0801A59C
	movs r0, #1
	cmp r0, #0
	beq _0801A59C
	movs r5, #0
	mov sb, r5
	ldr r4, _0801A4C8 @ =0x03004650
	b _0801A4F6
	.align 2, 0
_0801A4C4: .4byte 0x0000F00F
_0801A4C8: .4byte 0x03004650
_0801A4CC:
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0801A4F2
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0801A4F2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801A4F2:
	movs r2, #1
	add sb, r2
_0801A4F6:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801A4CC
	bl sub_08001EC4
	cmp r5, r0
	beq _0801A59C
	ldr r0, _0801A514 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa2
	movs r3, #1
	strh r3, [r0]
	b _0801A51C
	.align 2, 0
_0801A514: .4byte gUnknown_030063D8
_0801A518:
	bl WaitFrame
_0801A51C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	cmp r0, #0
	beq _0801A518
	b _0801A59C
_0801A52E:
	movs r5, #0
	mov sb, r5
	ldr r6, _0801A53C @ =0x03004650
	ldr r0, _0801A540 @ =0x0000F00F
	adds r4, r0, #0
	b _0801A562
	.align 2, 0
_0801A53C: .4byte 0x03004650
_0801A540: .4byte 0x0000F00F
_0801A544:
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	ands r0, r4
	cmp r0, #9
	bne _0801A55E
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801A55E:
	movs r2, #1
	add sb, r2
_0801A562:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801A544
	bl sub_08001EC4
	cmp r5, r0
	bne _0801A59C
	movs r3, #1
	cmp r3, #0
	beq _0801A59C
	ldr r0, _0801A584 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa2
	movs r4, #1
	strh r4, [r0]
	b _0801A58C
	.align 2, 0
_0801A584: .4byte gUnknown_030063D8
_0801A588:
	bl WaitFrame
_0801A58C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	cmp r0, #0
	beq _0801A588
_0801A59C:
	ldr r0, _0801A5AC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801A5E0
	b _0801A5C2
	.align 2, 0
_0801A5AC: .4byte gUnknown_030063D8
_0801A5B0:
	ldr r0, _0801A62C @ =gPlayers
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _0801A630 @ =0x0000F00F
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #9
	beq _0801A5E0
_0801A5C2:
	bl WaitFrame
_0801A5C6:
	bl sub_080074CC
	cmp r0, #0
	bne _0801A5E0
	ldr r0, _0801A634 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A5E0
	b _08019E58
_0801A5E0:
	bl sub_08001F98
	cmp r0, #0
	bne _0801A5EE
	movs r0, #2
	bl FadeOutBGM
_0801A5EE:
	bl sub_080074CC
	cmp r0, #0
	beq _0801A608
	ldr r0, _0801A634 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801A608
	b _0801AAB0
_0801A608:
	bl sub_08007544
	cmp r0, #0
	bne _0801A65E
	bl sub_080075AC
	cmp r0, #0
	bne _0801A65E
	movs r0, #0x74
	bl StopSE
	ldr r3, [sp, #0xa0]
	cmp r3, #0
	beq _0801A638
	movs r0, #0x24
	bl PlaySE
	b _0801A64E
	.align 2, 0
_0801A62C: .4byte gPlayers
_0801A630: .4byte 0x0000F00F
_0801A634: .4byte gUnknown_030063D8
_0801A638:
	bl sub_08006114
	cmp r0, #0
	bne _0801A648
	movs r0, #0x65
	bl PlaySE
	b _0801A64E
_0801A648:
	movs r0, #0x24
	bl PlaySE
_0801A64E:
	movs r1, #0
	movs r0, #9
	ldr r4, [sp, #0xc0]
	strh r0, [r4, #0xc]
	strh r1, [r4, #0xe]
	movs r0, #6
	bl sub_0800F3A0
_0801A65E:
	mov r0, sp
	adds r0, #0x5c
	str r0, [sp, #0xcc]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xd0]
	ldr r2, [sp, #0xb4]
	str r2, [sp, #0xd4]
	ldr r3, [sp, #0xb0]
	lsls r3, r3, #0x10
	str r3, [sp, #0xd8]
	b _0801A9C6
_0801A676:
	bl sub_08007510
	adds r6, r0, #0
	cmp r6, #0
	beq _0801A682
	b _0801A9C2
_0801A682:
	ldr r7, _0801A89C @ =gMapLayer_03003910
	adds r1, r7, #0
	adds r1, #0x6c
	ldr r4, [sp, #0xc0]
	ldrh r0, [r4, #0x16]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0801A694
	b _0801A9C2
_0801A694:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r5, sp, #0x98
	mov r4, sp
	adds r4, #0x9a
	movs r2, #0x30
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08005FC4
	mov sl, r4
	ldr r2, [sp, #0xa0]
	cmp r2, #0
	bne _0801A6C0
	b _0801A8A0
_0801A6C0:
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0x1f
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x15
	ldr r1, [sp, #0xac]
	adds r1, #0xa0
	movs r2, #3
	bl LoadPalette
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0xf8]
	ldrh r3, [r2]
	str r6, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r2, #0
	bl sub_08003FA4
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0xd0]
	ldrh r3, [r2, #0xc]
	ldr r2, [sp, #0xd4]
	str r2, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	mov sb, r3
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0xe0]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0xdc]
	mov r2, sp
	adds r2, #0x50
	str r2, [sp, #0xe4]
	mov r3, sp
	adds r3, #0x80
	str r3, [sp, #0xec]
	adds r0, #0x42
	str r0, [sp, #0xf0]
	add r6, sp, #0x38
	add r5, sp, #0x2c
	add r1, sp, #0x14
	mov r8, r1
	movs r7, #0
_0801A74E:
	ldr r2, [sp, #0xe0]
	adds r1, r2, r7
	ldr r0, [r5]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r5]
	movs r4, #0x9a
	add r4, sp
	movs r3, #0
	ldrsh r1, [r4, r3]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801A7B0
	bl Random
	movs r3, #0x9a
	add r3, sp
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0801A786
	adds r0, #0x1f
_0801A786:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	str r0, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, r8
	str r0, [r4]
	ldr r0, [r5]
	lsls r0, r0, #8
	str r0, [r5]
_0801A7B0:
	ldr r0, [sp, #0xe4]
	adds r1, r0, r7
	ldr r0, [r6]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r6]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801A810
	bl Random
	mov r4, sl
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0801A7E4
	adds r0, #0x1f
_0801A7E4:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	str r0, [r6]
	bl Random
	ldr r2, [sp, #0xdc]
	adds r4, r2, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4]
	ldr r0, [r6]
	lsls r0, r0, #8
	str r0, [r6]
_0801A810:
	add r4, sp, #0x98
	movs r3, #0
	ldrsh r0, [r4, r3]
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r0, r1
	movs r4, #0x9a
	add r4, sp
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldm r5!, {r2}
	asrs r2, r2, #8
	adds r1, r1, r2
	mov r2, sb
	lsls r4, r2, #1
	ldr r3, [sp, #0xec]
	adds r2, r3, r4
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	bl sub_08003FA4
	add r1, sp, #0x98
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r2, [sp, #0xdc]
	adds r1, r2, r7
	ldr r1, [r1]
	adds r0, r0, r1
	movs r2, #0x9a
	add r2, sp
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldm r6!, {r2}
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r3, [sp, #0xf0]
	adds r4, r3, r4
	ldrh r3, [r4]
	movs r4, #0
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r4, #1
	str r4, [sp, #0x10]
	movs r2, #2
	bl sub_08003FA4
	adds r7, #4
	add sb, r4
	mov r0, sb
	cmp r0, #2
	bhi _0801A89A
	b _0801A74E
_0801A89A:
	b _0801A9C2
	.align 2, 0
_0801A89C: .4byte gMapLayer_03003910
_0801A8A0:
	bl sub_08006114
	cmp r0, #0
	bne _0801A970
	movs r0, #0x1e
	ldr r2, [sp, #0xac]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r2, #1
	bl LoadPalette
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _0801A90E
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #4
	bne _0801A8EA
	movs r2, #1
	str r2, [sp]
	movs r0, #0
	ldr r1, [sp, #0xd0]
	add r2, sp, #0x6c
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r4, [sp, #0xd0]
	b _0801A986
_0801A8EA:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0xd4]
	str r3, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r3, [sp, #0xa4]
	str r3, [sp, #0xc]
	movs r2, #0
	ldr r4, [sp, #0xd8]
	lsrs r3, r4, #0x10
	bl sub_08004418
	b _0801A9C2
_0801A90E:
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #4
	bne _0801A94C
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	ldr r1, [sp, #0xd0]
	add r2, sp, #0x6c
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r4, [sp, #0xd0]
	ldrh r3, [r4]
	ldr r2, [sp, #0xd4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _0801A9C2
_0801A94C:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0xd4]
	str r3, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r3, [sp, #0xa4]
	str r3, [sp, #0xc]
	movs r2, #0
	ldr r4, [sp, #0xd8]
	lsrs r3, r4, #0x10
	bl sub_08004344
	b _0801A9C2
_0801A970:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _0801A9A0
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r4, [sp, #0xf8]
_0801A986:
	ldrh r3, [r4]
	ldr r2, [sp, #0xd4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	movs r2, #0
	bl sub_08004418
	b _0801A9C2
_0801A9A0:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r4, [sp, #0xf8]
	ldrh r3, [r4]
	ldr r2, [sp, #0xd4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_0801A9C2:
	bl WaitFrame
_0801A9C6:
	bl sub_0800F298
	cmp r0, #0
	bne _0801A9EA
	bl sub_080074CC
	cmp r0, #0
	bne _0801A9EA
	ldr r0, _0801AA6C @ =gUnknown_030063D8
	mov r8, r0
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A9EA
	b _0801A676
_0801A9EA:
	ldr r1, [sp, #0xa0]
	cmp r1, #0
	beq _0801AA9C
	bl sub_080292D0
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	ldr r4, _0801AA70 @ =gMapLayer_03003910
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _0801AA7C
	bl sub_08007544
	cmp r0, #0
	bne _0801AAB0
	bl sub_080075AC
	adds r6, r0, #0
	cmp r6, #0
	bne _0801AAB0
	ldr r0, [r4, #0x78]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x78]
	bl sub_0801702C
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6e
	strh r6, [r0]
	ldr r0, _0801AA74 @ =0x000514C9
	bl SignalEvent
	bl sub_08007554
	bl GetMultiplayerId
	ldr r5, _0801AA78 @ =gPlayers
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x16]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0xc]
	movs r0, #1
	bl sub_08019300
	b _0801AAB0
	.align 2, 0
_0801AA6C: .4byte gUnknown_030063D8
_0801AA70: .4byte gMapLayer_03003910
_0801AA74: .4byte 0x000514C9
_0801AA78: .4byte gPlayers
_0801AA7C:
	ldr r0, _0801AA94 @ =0x000514C8
	bl SignalEvent
	ldr r0, _0801AA98 @ =0x000514C9
	bl SignalEvent
	bl sub_08007500
	bl sub_08007588
	b _0801AAB0
	.align 2, 0
_0801AA94: .4byte 0x000514C8
_0801AA98: .4byte 0x000514C9
_0801AA9C:
	ldr r1, _0801AAC0 @ =gMapLayer_03003910
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r0, #1
	adds r1, #0x6e
	strh r0, [r1]
	ldr r0, _0801AAC4 @ =0x00000BB9
	bl SignalEvent
_0801AAB0:
	add sp, #0x104
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AAC0: .4byte gMapLayer_03003910
_0801AAC4: .4byte 0x00000BB9

	thumb_func_start sub_0801AAC8
sub_0801AAC8: @ 0x0801AAC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801AB1C @ =gPlayers
	adds r6, r1, r0
	ldr r1, _0801AB20 @ =0x00100064
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xf
	bl sub_08026ADC
	bl sub_080074CC
	cmp r0, #0
	bne _0801AB06
	ldr r0, _0801AB24 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801AB0A
_0801AB06:
	bl ThreadExit
_0801AB0A:
	ldr r0, _0801AB28 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	adds r1, r0, #0
	ldr r0, [r1, #8]
	adds r2, r1, r0
	movs r4, #0
	b _0801AB54
	.align 2, 0
_0801AB1C: .4byte gPlayers
_0801AB20: .4byte 0x00100064
_0801AB24: .4byte gUnknown_030063D8
_0801AB28: .4byte 0x080FB0F8
_0801AB2C:
	adds r1, #0xa4
	movs r0, #0
	strh r0, [r1]
	b _0801AF10
_0801AB34:
	ldr r0, _0801AB40 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	movs r1, #1
	strh r1, [r0]
	b _0801ADEE
	.align 2, 0
_0801AB40: .4byte gUnknown_030063D8
_0801AB44:
	adds r1, #0xa4
	movs r0, #0
	strh r0, [r1]
	b _0801ADEE
_0801AB4C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #8
_0801AB54:
	ldrh r0, [r1, #0xc]
	cmp r4, r0
	bhs _0801AB66
	ldrh r0, [r2, #2]
	cmp r0, #3
	bne _0801AB4C
	ldr r0, [r2, #4]
	adds r2, r2, r0
	mov sl, r2
_0801AB66:
	ldr r0, _0801AB78 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	movs r1, #0
	strh r1, [r0]
	ldr r7, _0801AB7C @ =0x03004650
_0801AB72:
	movs r5, #0
	movs r4, #0
	b _0801AB9E
	.align 2, 0
_0801AB78: .4byte gUnknown_030063D8
_0801AB7C: .4byte 0x03004650
_0801AB80:
	movs r0, #0xd4
	muls r0, r4, r0
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0801AB98
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801AB98:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801AB9E:
	bl sub_08001EC4
	cmp r4, r0
	blt _0801AB80
	ldr r4, _0801ABCC @ =gUnknown_030063D8
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801AB2C
	bl WaitFrame
	bl sub_08001EC4
	cmp r5, r0
	blt _0801AB72
	bl sub_08007728
	mov sb, r4
	add r1, sp, #0x48
	mov r8, r1
	b _0801ADD4
	.align 2, 0
_0801ABCC: .4byte gUnknown_030063D8
_0801ABD0:
	add r5, sp, #0x44
	movs r7, #1
	str r7, [sp]
	add r0, sp, #0x10
	movs r1, #0
	adds r2, r5, #0
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _0801AC40
	bl sub_08007604
	cmp r0, #0
	bne _0801AC40
	bl sub_080075AC
	cmp r0, #0
	bne _0801AC40
	mov r1, sl
	adds r1, #0x8c
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x4a
	movs r2, #0x30
	str r2, [sp]
	str r7, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_08005FC4
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldrh r3, [r5]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004418
_0801AC40:
	bl WaitFrame
	bl sub_0800F430
	cmp r0, #0
	beq _0801ACD8
	ldr r0, _0801ACD0 @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801ACD8
	bl sub_080076E0
	cmp r0, #0
	bne _0801ACD8
	ldrh r0, [r6, #0xc]
	cmp r0, #9
	beq _0801ACD8
	cmp r0, #5
	beq _0801ACD8
	bl sub_08007604
	cmp r0, #0
	bne _0801ACD8
	ldr r0, [r6, #0x58]
	asrs r0, r0, #0xf
	mov r1, r8
	strh r0, [r1]
	mov r3, sp
	adds r3, #0x4a
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #0xf
	strh r0, [r3]
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r2, sl
	adds r2, #0x8c
	ldrh r0, [r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801AC92
	rsbs r1, r1, #0
_0801AC92:
	cmp r1, #1
	bgt _0801AD1A
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrh r0, [r2, #2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801ACA4
	rsbs r1, r1, #0
_0801ACA4:
	cmp r1, #1
	bgt _0801AD1A
	bl sub_08007544
	cmp r0, #0
	beq _0801AD1A
	ldrh r1, [r6, #0x10]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r6, #0x10]
	ldr r0, _0801ACD4 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801AD1A
	movs r0, #9
	strh r0, [r6, #0xc]
	movs r0, #0xf
	strh r0, [r6, #0xe]
	b _0801AD1A
	.align 2, 0
_0801ACD0: .4byte gUnknown_030064D8
_0801ACD4: .4byte gKeysNew
_0801ACD8:
	bl sub_080076E0
	adds r3, r0, #0
	cmp r3, #0
	bne _0801AD1A
	ldrh r0, [r6, #0xc]
	cmp r0, #9
	bne _0801AD1A
	ldrh r0, [r6, #0xe]
	cmp r0, #0xf
	bne _0801AD1A
	ldrh r1, [r6, #0x10]
	movs r0, #0x10
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r6, #0x10]
	ldr r0, _0801AD38 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	ands r0, r1

	thumb_func_start sub_0801AD00
sub_0801AD00: @ 0x0801AD00
	cmp r0, #0
	bne _0801AD10
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801AD1A
_0801AD10:
	strh r3, [r6, #0xc]
	ldr r1, _0801AD3C @ =0x0000FFFC
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r6, #0x10]
_0801AD1A:
	bl sub_080074F0
	cmp r0, #0
	beq _0801ADAE
	bl sub_08001F64
	cmp r0, #0
	beq _0801ADA0
	movs r5, #0
	movs r4, #0
	ldr r2, _0801AD40 @ =0x03004650
	ldr r1, _0801AD44 @ =0x0000F009
	ldr r0, _0801AD48 @ =0x0000F00F
	adds r7, r0, #0
	b _0801AD68
	.align 2, 0
_0801AD38: .4byte gKeysNew
_0801AD3C: .4byte 0x0000FFFC
_0801AD40: .4byte 0x03004650
_0801AD44: .4byte 0x0000F009
_0801AD48: .4byte 0x0000F00F
_0801AD4C:
	movs r0, #0xd4
	muls r0, r4, r0
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	ands r0, r7
	cmp r0, r1
	bne _0801AD62
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801AD62:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801AD68:
	str r1, [sp, #0x4c]
	str r2, [sp, #0x50]
	bl sub_08001EC4
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	cmp r4, r0
	blt _0801AD4C
	bl sub_08001EC4
	cmp r5, r0
	bne _0801ADA0
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0xa4
	movs r1, #1
	strh r1, [r0]
	b _0801AD90
_0801AD8C:
	bl WaitFrame
_0801AD90:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	cmp r0, #0
	beq _0801AD8C
_0801ADA0:
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801ADFC
	b _0801ADC4
_0801ADAE:
	ldr r0, _0801AE18 @ =gPlayers
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _0801AE1C @ =0x0000F00F
	adds r0, r2, #0
	ands r0, r1
	ldr r1, _0801AE20 @ =0x0000F009
	cmp r0, r1
	bne _0801ADC4
	b _0801AB34
_0801ADC4:
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801ADD4
	b _0801AB44
_0801ADD4:
	bl sub_080074CC
	cmp r0, #0
	bne _0801ADEE
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801ADEE
	b _0801ABD0
_0801ADEE:
	ldr r0, _0801AE24 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801ADFC
	b _0801AF10
_0801ADFC:
	movs r0, #2
	bl FadeOutBGM
	movs r0, #0x24
	bl PlaySE
	movs r0, #6
	bl sub_0800F3A0
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	b _0801AE96
	.align 2, 0
_0801AE18: .4byte gPlayers
_0801AE1C: .4byte 0x0000F00F
_0801AE20: .4byte 0x0000F009
_0801AE24: .4byte gUnknown_030063D8
_0801AE28:
	add r4, sp, #0x44
	movs r5, #1
	str r5, [sp]
	add r0, sp, #0x10
	movs r1, #0
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _0801AE92
	bl sub_08007604
	cmp r0, #0
	bne _0801AE92
	bl sub_080075AC
	cmp r0, #0
	bne _0801AE92
	mov r1, sl
	adds r1, #0x8c
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldrh r3, [r4]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004418
_0801AE92:
	bl WaitFrame
_0801AE96:
	bl sub_0800F298
	cmp r0, #0
	bne _0801AEB6
	bl sub_080074CC
	cmp r0, #0
	bne _0801AEB6
	ldr r0, _0801AF20 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801AE28
_0801AEB6:
	ldr r4, _0801AF24 @ =gUnknownThreadPtr_03006410
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0801AEC8
	ldr r0, [r4]
	bl KillThread
_0801AEC8:
	bl GetMultiplayerId
	ldr r2, _0801AF28 @ =gPlayers
	movs r1, #0xd4
	adds r3, r0, #0
	muls r3, r1, r3
	adds r3, r3, r2
	ldr r2, _0801AF2C @ =gMapLayer_03003910
	ldr r4, _0801AF30 @ =0x080FB0F8
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r0, [r0]
	subs r0, #1
	adds r2, #0x6e
	movs r4, #0
	strh r0, [r2]
	strh r0, [r3, #0x16]
	bl sub_08007564
	ldr r2, _0801AF34 @ =gMapLayer_03003C00
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r0, _0801AF38 @ =0x00000BB9
	bl SignalEvent
	ldr r0, _0801AF20 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	strh r4, [r0]
_0801AF10:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AF20: .4byte gUnknown_030063D8
_0801AF24: .4byte gUnknownThreadPtr_03006410
_0801AF28: .4byte gPlayers
_0801AF2C: .4byte gMapLayer_03003910
_0801AF30: .4byte 0x080FB0F8
_0801AF34: .4byte gMapLayer_03003C00
_0801AF38: .4byte 0x00000BB9

	thumb_func_start sub_0801AF3C
sub_0801AF3C: @ 0x0801AF3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl GetMultiplayerId
	mov sl, r0
	movs r1, #0xd4
	mov r0, sl
	muls r0, r1, r0
	mov r8, r0
	ldr r3, _0801AF60 @ =gPlayers
	add r3, r8
	mov sb, r3
	b _0801B158
	.align 2, 0
_0801AF60: .4byte gPlayers
_0801AF64:
	ldr r0, _0801AF80 @ =0x00000BB9
	bl _08000400
	bl sub_080074CC
	cmp r0, #0
	beq _0801AF76
	bl ThreadExit
_0801AF76:
	mov r5, sb
	ldrh r0, [r5, #0x16]
	cmp r0, #0
	beq _0801AFA4
	b _0801AF9C
	.align 2, 0
_0801AF80: .4byte 0x00000BB9
_0801AF84:
	bl sub_08007670
	cmp r0, #0
	beq _0801AF8E
	b _0801B162
_0801AF8E:
	bl sub_080074CC
	cmp r0, #0
	beq _0801AF98
	b _0801B162
_0801AF98:
	bl WaitFrame
_0801AF9C:
	bl sub_0800F298
	cmp r0, #0
	beq _0801AF84
_0801AFA4:
	ldr r4, _0801B008 @ =gUnknown_030063D8
	ldr r2, [r4]
	adds r3, r2, #0
	adds r3, #0x9c
	ldrh r1, [r3]
	ldr r5, _0801B00C @ =0x0000FFFD
	adds r0, r5, #0
	ands r1, r0
	movs r0, #0
	strh r1, [r3]
	str r0, [r2]
	str r0, [r2, #4]
	adds r2, #0x84
	strh r0, [r2]
	movs r2, #0
	movs r3, #0
_0801AFC4:
	ldr r0, [r4]
	lsls r1, r2, #2
	adds r0, #0xc
	adds r0, r0, r1
	str r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _0801AFC4
	bl sub_08013CE4
	ldr r0, _0801B008 @ =gUnknown_030063D8
	ldr r1, [r0]
	adds r1, #0x9c
	ldrh r2, [r1]
	movs r0, #4
	orrs r0, r2
	strh r0, [r1]
	mov r1, sb
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	bne _0801B018
	ldr r0, _0801B010 @ =gMapLayer_03003910
	adds r0, #0x6e
	ldrh r0, [r0]
	bl sub_080051B4
	movs r4, #0
	ldr r5, _0801B014 @ =0x0000012B
_0801AFFC:
	bl WaitFrame
	adds r4, #1
	cmp r4, r5
	bls _0801AFFC
	b _0801B080
	.align 2, 0
_0801B008: .4byte gUnknown_030063D8
_0801B00C: .4byte 0x0000FFFD
_0801B010: .4byte gMapLayer_03003910
_0801B014: .4byte 0x0000012B
_0801B018:
	bl sub_08027228
	ldr r0, _0801B050 @ =0x000514C8
	bl SignalEvent
	bl sub_08005F50
	movs r4, #0
_0801B028:
	bl sub_08007670
	cmp r0, #0
	beq _0801B032
	b _0801B162
_0801B032:
	bl sub_080074CC
	cmp r0, #0
	beq _0801B03C
	b _0801B162
_0801B03C:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x77
	bls _0801B028
	ldr r4, _0801B054 @ =gMapLayer_03003910
	adds r5, r4, #0
	adds r5, #0x6e
	b _0801B070
	.align 2, 0
_0801B050: .4byte 0x000514C8
_0801B054: .4byte gMapLayer_03003910
_0801B058:
	bl sub_08007670
	cmp r0, #0
	beq _0801B062
	b _0801B162
_0801B062:
	bl sub_080074CC
	cmp r0, #0
	beq _0801B06C
	b _0801B162
_0801B06C:
	bl WaitFrame
_0801B070:
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	ldrh r1, [r5]
	bl sub_08004DE0
	cmp r0, #0
	beq _0801B058
_0801B080:
	bl sub_08018940
	ldr r1, _0801B098 @ =gPlayers
	add r1, r8
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	beq _0801B09C
	adds r0, r1, #0
	movs r1, #0
	bl sub_080191FC
	b _0801B0A4
	.align 2, 0
_0801B098: .4byte gPlayers
_0801B09C:
	adds r0, r1, #0
	movs r1, #1
	bl sub_080191FC
_0801B0A4:
	movs r4, #0
	ldr r0, _0801B0B4 @ =gPlayers
	movs r7, #0
	movs r6, #0xa
	adds r5, r0, #0
	adds r5, #0xc
	b _0801B0C4
	.align 2, 0
_0801B0B4: .4byte gPlayers
_0801B0B8:
	cmp sl, r4
	beq _0801B0C0
	strh r6, [r5]
	strh r7, [r5, #4]
_0801B0C0:
	adds r5, #0xd4
	adds r4, #1
_0801B0C4:
	bl sub_08001EC4
	cmp r4, r0
	blo _0801B0B8
	ldr r0, _0801B0E0 @ =gMapLayer_03003910
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r1, #0x66
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	bl sub_0802934C
	b _0801B0FE
	.align 2, 0
_0801B0E0: .4byte gMapLayer_03003910
_0801B0E4:
	bl sub_08007670
	cmp r0, #0
	bne _0801B0F4
	bl sub_080074CC
	cmp r0, #0
	beq _0801B0FA
_0801B0F4:
	bl sub_080292D0
	b _0801B162
_0801B0FA:
	bl WaitFrame
_0801B0FE:
	ldr r0, [sp]
	cmp r0, #0
	bne _0801B0E4
	bl sub_08007544
	cmp r0, #0
	bne _0801B148
	ldr r4, _0801B13C @ =gPlayers
	add r4, r8
	strh r0, [r4, #0xc]
	bl sub_08007638
	cmp r0, #0
	beq _0801B11C
	movs r0, #1
_0801B11C:
	strh r0, [r4, #0x10]
	ldr r0, _0801B140 @ =gUnknown_030063D8
	ldr r2, [r0]
	adds r2, #0x9c
	ldrh r0, [r2]
	ldr r3, _0801B144 @ =0x0000FFFB
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	bl WaitFrame
	movs r0, #6
	bl sub_0800F308
	b _0801B158
	.align 2, 0
_0801B13C: .4byte gPlayers
_0801B140: .4byte gUnknown_030063D8
_0801B144: .4byte 0x0000FFFB
_0801B148:
	ldr r0, _0801B174 @ =gUnknown_030063D8
	ldr r2, [r0]
	adds r2, #0x9c
	ldrh r0, [r2]
	ldr r5, _0801B178 @ =0x0000FFFB
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r2]
_0801B158:
	bl sub_080074CC
	cmp r0, #0
	bne _0801B162
	b _0801AF64
_0801B162:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B174: .4byte gUnknown_030063D8
_0801B178: .4byte 0x0000FFFB
