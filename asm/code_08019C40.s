	.include "asm/macros.inc"

	.syntax unified
	.text

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
