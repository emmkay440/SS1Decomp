	.include "asm/macros.inc"

	.syntax unified
	.text

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
	ldr r0, _08037EAC @ =gMapLayer_03003910
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
_08037EAC: .4byte gMapLayer_03003910
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
	ldr r0, _08038614 @ =gUnknown_030063D8
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
_08038614: .4byte gUnknown_030063D8
_08038618: .4byte gActiveEnemyMask
