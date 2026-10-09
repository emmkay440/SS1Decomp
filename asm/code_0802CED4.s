	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802CED4
sub_0802CED4: @ 0x0802CED4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	movs r0, #0xd4
	ldr r2, [sp, #0x48]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802CF94 @ =gPlayers
	adds r1, r1, r0
	mov r8, r1
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	ldr r1, _0802CF98 @ =0x00100001
	movs r3, #0x80
	lsls r3, r3, #0x18
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	mov r7, r8
	adds r7, #0xd0
	ldr r1, [r7]
	ldr r0, [r1, #4]
	lsls r0, r0, #9
	lsrs r6, r0, #0x18
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x54]
	ldrh r0, [r1, #6]
	lsrs r0, r0, #7
	str r0, [sp, #0x70]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x48]
	ldr r0, [sp, #0x7c]
	cmp r3, r0
	bne _0802CF46
	mov r1, r8
	ldr r0, [r1, #0x7c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	ldr r0, _0802CF9C @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	str r0, [sp, #0x60]
_0802CF46:
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	lsrs r2, r2, #0x10
	str r2, [sp, #0x4c]
	cmp r2, #0
	bne _0802CF5A
	movs r3, #1
	str r3, [sp, #0x4c]
_0802CF5A:
	ldr r1, _0802CFA0 @ =0x080548F8
	ldr r3, [sp, #0x4c]
	subs r3, #1
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x6c]
	movs r5, #0
	ldr r2, _0802CFA4 @ =gActiveEnemyMask
	movs r0, #1
	ldr r1, [r2]
	ands r1, r0
	str r7, [sp, #0x84]
	str r3, [sp, #0x88]
	adds r3, r2, #0
	ldr r7, _0802CFA8 @ =0x080FB9FC
	mov sb, r7
	ldr r0, _0802CFAC @ =0x0805289C
	mov sl, r0
	mov r7, r8
	adds r7, #0x72
	ldr r2, [sp, #0x48]
	lsls r2, r2, #2
	str r2, [sp, #0x8c]
	cmp r1, #0
	beq _0802CFB4
	ldr r0, _0802CFB0 @ =gEnemies
	ldr r4, [r0]
	b _0802CFD6
	.align 2, 0
_0802CF94: .4byte gPlayers
_0802CF98: .4byte 0x00100001
_0802CF9C: .4byte gPlayerStats
_0802CFA0: .4byte 0x080548F8
_0802CFA4: .4byte gActiveEnemyMask
_0802CFA8: .4byte 0x080FB9FC
_0802CFAC: .4byte 0x0805289C
_0802CFB0: .4byte gEnemies
_0802CFB4:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _0802CFE6
	movs r1, #1
	lsls r1, r5
	ldr r0, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0802CFB4
	ldr r2, _0802D10C @ =gEnemies
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
_0802CFD6:
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	beq _0802CFB4
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _0802CFB4
	cmp r5, #4
	bls _0802CFE8
_0802CFE6:
	movs r6, #0
_0802CFE8:
	ldr r3, [sp, #0x84]
	ldr r1, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0x64]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [sp, #0x68]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r0, r1, #0x10
	str r0, [sp, #0x74]
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	ldr r2, [sp, #0x64]
	adds r2, r2, r0
	str r2, [sp, #0x64]
	lsls r1, r1, #1
	add r1, sl
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x68]
	adds r1, r1, r0
	str r1, [sp, #0x68]
	cmp r6, #0
	beq _0802D0A6
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r2, sp, #0x44
	strh r0, [r2]
	ldr r1, [r4, #0x14]
	ldr r3, [sp, #0x68]
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x18
	adds r1, r5, #0
	cmp r1, #0x80
	ble _0802D078
	ldr r6, _0802D110 @ =0xFFFFFF00
	adds r0, r6, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802D078:
	str r5, [sp, #0x74]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D08E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
_0802D08E:
	ldr r2, [sp, #0x74]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802D0A6
	ldr r3, _0802D110 @ =0xFFFFFF00
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
_0802D0A6:
	mov r4, r8
	ldrh r0, [r4, #0xc]
	cmp r0, #0xa
	beq _0802D0CA
	ldr r6, [sp, #0x4c]
	cmp r6, #1
	beq _0802D0CA
	bl sub_08007544
	cmp r0, #0
	bne _0802D0CA
	bl sub_080075AC
	cmp r0, #0
	bne _0802D0CA
	movs r0, #0x18
	bl PlaySE
_0802D0CA:
	ldr r2, _0802D114 @ =0x08054904
	ldr r1, [sp, #0x88]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r7]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _0802D132
	ldr r0, _0802D118 @ =gUnknown_030067F0
	ldr r3, [sp, #0x8c]
	adds r4, r3, r0
	adds r6, r2, #0
	movs r0, #1
	ldr r1, [sp, #0x50]
	lsls r0, r1
	mvns r5, r0
_0802D0EA:
	mov r2, r8
	ldrh r0, [r2, #0xc]
	cmp r0, #7
	beq _0802D102
	ldr r0, _0802D11C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D120
_0802D102:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802D478
	.align 2, 0
_0802D10C: .4byte gEnemies
_0802D110: .4byte 0xFFFFFF00
_0802D114: .4byte 0x08054904
_0802D118: .4byte gUnknown_030067F0
_0802D11C: .4byte gUnknown_030063D8
_0802D120:
	bl WaitFrame
	ldr r3, [sp, #0x88]
	lsls r0, r3, #1
	adds r0, r0, r6
	ldrh r1, [r7]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0802D0EA
_0802D132:
	ldr r4, [sp, #0x4c]
	cmp r4, #1
	bne _0802D140
	ldr r6, [sp, #0x70]
	lsls r0, r6, #2
	adds r0, #0xa
	b _0802D148
_0802D140:
	ldr r7, [sp, #0x70]
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, #0xd
_0802D148:
	str r0, [sp, #0x70]
	mov r1, r8
	ldrh r0, [r1, #0xc]
	cmp r0, #0xa
	beq _0802D16E
	ldr r2, [sp, #0x4c]
	cmp r2, #1
	bne _0802D16E
	bl sub_08007544
	cmp r0, #0
	bne _0802D16E
	bl sub_080075AC
	cmp r0, #0
	bne _0802D16E
	movs r0, #0x17
	bl PlaySE
_0802D16E:
	ldr r3, [sp, #0x84]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x78]
	add r4, sp, #0x44
	mov sl, r4
	mov r6, sp
	adds r6, #0x46
	str r6, [sp, #0x80]
	b _0802D436
_0802D184:
	movs r6, #0
	movs r5, #0
_0802D188:
	ldr r0, _0802D22C @ =gActiveEnemyMask
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0]
	ands r0, r1
	adds r7, r5, #1
	mov sb, r7
	cmp r0, #0
	bne _0802D19C
	b _0802D328
_0802D19C:
	ldr r2, _0802D230 @ =gEnemies
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	ldrh r2, [r7, #0xa]
	cmp r2, #9
	bne _0802D1B0
	b _0802D328
_0802D1B0:
	ldr r0, [r7, #0x10]
	ldr r1, [sp, #0x64]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	mov r3, sl
	strh r0, [r3]
	ldr r0, [r7, #0x14]
	ldr r4, [sp, #0x68]
	subs r0, r0, r4
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x80]
	strh r0, [r1]
	movs r4, #0
	ldrsh r1, [r3, r4]
	cmp r1, #0
	bge _0802D1D4
	rsbs r1, r1, #0
_0802D1D4:
	cmp r1, #0xf
	ble _0802D1DA
	b _0802D328
_0802D1DA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D1E4
	rsbs r0, r0, #0
_0802D1E4:
	cmp r0, #0xf
	ble _0802D1EA
	b _0802D328
_0802D1EA:
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	beq _0802D1F4
	b _0802D328
_0802D1F4:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802D208
	ldr r0, _0802D234 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _0802D238
_0802D208:
	movs r4, #0
	cmp r2, #8
	beq _0802D24E
	ldr r0, [r7, #0x30]
	ldr r2, [sp, #0x58]
	cmp r0, r2
	beq _0802D24E
	ldrh r3, [r7, #0x38]
	ldrh r2, [r7, #0x28]
	subs r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0802D24E
	adds r1, r3, #0
	eors r1, r2
	b _0802D248
	.align 2, 0
_0802D22C: .4byte gActiveEnemyMask
_0802D230: .4byte gEnemies
_0802D234: .4byte gMapLayer_03003910
_0802D238:
	movs r4, #0
	cmp r2, #0
	beq _0802D24E
	cmp r2, #8
	beq _0802D24E
	ldr r1, [r7, #0x30]
	ldr r3, [sp, #0x58]
	eors r1, r3
_0802D248:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
_0802D24E:
	adds r5, #1
	mov sb, r5
	cmp r4, #0
	beq _0802D328
	ldr r4, _0802D2F0 @ =gPlayerStats
	movs r6, #0x26
	ldrsh r0, [r4, r6]
	adds r1, r7, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	bl sub_0801841C
	cmp r0, #0
	beq _0802D304
	mov r0, r8
	ldrh r2, [r0, #0xc]
	add r1, sp, #0x54
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrh r6, [r0, #0x14]
	add r3, sp, #0x5c
	ldrh r3, [r3]
	strh r3, [r0, #0x14]
	adds r4, #0x6c
	ldrh r5, [r4]
	add r0, sp, #0x60
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, r8
	adds r1, r7, #0
	str r2, [sp, #0x90]
	bl sub_08017150
	strh r0, [r7, #0x2a]
	strh r5, [r4]
	ldr r2, [sp, #0x90]
	mov r1, r8
	strh r2, [r1, #0xc]
	strh r6, [r1, #0x14]
	ldrh r0, [r7, #0x2a]
	ldrh r2, [r7, #0x28]
	adds r0, r0, r2
	strh r0, [r7, #0x28]
	ldr r3, [sp, #0x58]
	str r3, [r7, #0x30]
	movs r0, #7
	strh r0, [r7, #0xa]
	add r4, sp, #0x7c
	ldrh r4, [r4]
	strh r4, [r7, #0x34]
	movs r0, #1
	strh r0, [r7, #0x36]
	movs r4, #0
	mov r6, r8
	adds r6, #0xa2
	mov r0, r8
	adds r0, #0xc8
	ldr r5, [r0]
	ldr r2, _0802D2F4 @ =0x0000FFFF
_0802D2C4:
	ldrh r0, [r6]
	adds r0, r0, r4
	movs r1, #5
	str r2, [sp, #0x90]
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x94
	muls r0, r1, r0
	adds r1, r0, r5
	ldrh r0, [r1]
	ldr r2, [sp, #0x90]
	cmp r0, r2
	beq _0802D2F8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802D2C4
	b _0802D326
	.align 2, 0
_0802D2F0: .4byte gPlayerStats
_0802D2F4: .4byte 0x0000FFFF
_0802D2F8:
	adds r0, r1, #0
	adds r1, r7, #0
	movs r2, #0x94
	bl memcpy
	b _0802D326
_0802D304:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	bl sub_08018474
	ldr r6, [sp, #0x58]
	str r6, [r7, #0x30]
	bl sub_08007544
	cmp r0, #0
	bne _0802D326
	bl sub_080075AC
	cmp r0, #0
	bne _0802D326
	movs r0, #0x55
	bl PlaySE
_0802D326:
	movs r6, #1
_0802D328:
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _0802D334
	b _0802D188
_0802D334:
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	beq _0802D340
	ldr r1, [sp, #0x54]
	cmp r1, #5
	beq _0802D346
_0802D340:
	cmp r6, #0
	beq _0802D346
	b _0802D466
_0802D346:
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802D366
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802D366
	b _0802D466
_0802D366:
	ldr r2, _0802D488 @ =0x0805289C
	ldr r3, [sp, #0x74]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r6, [sp, #0x6c]
	muls r0, r6, r0
	ldr r7, [sp, #0x64]
	adds r7, r7, r0
	str r7, [sp, #0x64]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r6, r0
	ldr r3, [sp, #0x68]
	adds r3, r3, r0
	str r3, [sp, #0x68]
	ldr r0, _0802D48C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802D432
	bl sub_08007510
	cmp r0, #0
	bne _0802D432
	bl sub_08007604
	cmp r0, #0
	bne _0802D432
	bl sub_08007544
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D432
	asrs r5, r7, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r6, [sp, #0x68]
	asrs r4, r6, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, sl
	ldr r3, [sp, #0x80]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	ldr r5, [sp, #0x78]
	mov r7, sl
	movs r1, #0
	ldrsh r4, [r7, r1]
	ldr r2, _0802D490 @ =0x080FBB24
	lsls r3, r5, #2
	adds r1, r3, r2
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r4, r4, r1
	ldr r7, [sp, #0x80]
	movs r6, #0
	ldrsh r1, [r7, r6]
	adds r2, #2
	adds r3, r3, r2
	movs r7, #0
	ldrsh r2, [r3, r7]
	adds r1, r1, r2
	ldr r3, _0802D494 @ =0x08054900
	ldr r6, [sp, #0x88]
	lsls r2, r6, #1
	adds r2, r2, r3
	ldrh r2, [r2]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08004344
_0802D432:
	bl WaitFrame
_0802D436:
	ldr r0, [sp, #0x70]
	adds r7, r0, #0
	subs r7, #1
	str r7, [sp, #0x70]
	cmp r0, #0
	beq _0802D466
	bl GetMultiplayerId
	ldr r1, [sp, #0x48]
	cmp r1, r0
	beq _0802D44E
	b _0802D184
_0802D44E:
	mov r2, r8
	ldrh r0, [r2, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802D466
	bl sub_080077C0
	cmp r0, #0
	bne _0802D466
	b _0802D184
_0802D466:
	ldr r2, _0802D498 @ =gUnknown_030067F0
	ldr r3, [sp, #0x8c]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x50]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802D478:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D488: .4byte 0x0805289C
_0802D48C: .4byte gUnknown_030063D8
_0802D490: .4byte 0x080FBB24
_0802D494: .4byte 0x08054900
_0802D498: .4byte gUnknown_030067F0
