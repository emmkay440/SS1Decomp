	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08029C44
sub_08029C44: @ 0x08029C44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	movs r0, #0xd4
	mov r8, r0
	ldr r1, [sp, #0x5c]
	mov r0, r8
	muls r0, r1, r0
	ldr r7, _08029CE0 @ =gPlayers
	adds r0, r0, r7
	str r0, [sp, #0x64]
	adds r6, r0, #0
	adds r6, #0xd0
	ldr r1, [r6]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	str r0, [sp, #0x68]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x70]
	str r0, [sp, #0x74]
	str r0, [sp, #0x6c]
	add r5, sp, #0x58
	movs r0, #0
	strh r0, [r5]
	mov r4, sp
	adds r4, #0x5a
	strh r0, [r4]
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	cmp r0, r2
	bne _08029D22
	ldr r0, [r6]
	ldr r4, [r0, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r5, r0, r7
	ldr r1, _08029CE4 @ =0x080FBB84
	ldr r2, [sp, #0x6c]
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _08029CCA
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_08029CCA:
	adds r0, r5, #0
	adds r0, #0x78
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _08029CE8
	movs r0, #0
	b _08029CEA
	.align 2, 0
_08029CE0: .4byte gPlayers
_08029CE4: .4byte 0x080FBB84
_08029CE8:
	adds r0, r1, #1
_08029CEA:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _08029D08
	ldr r0, _08029D04 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r5, [sp, #0x64]
	strh r4, [r5, #0x12]
	strh r4, [r5, #0x14]
	b _0802A0D2
	.align 2, 0
_08029D04: .4byte 0x0009001B
_08029D08:
	ldr r2, [sp, #0x64]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _08029D22
	movs r0, #0
	strh r0, [r2]
_08029D22:
	movs r4, #0
	ldr r3, _08029DDC @ =gEnemies
	ldr r6, [r3]
	ldr r2, _08029DE0 @ =gActiveEnemyMask
	movs r0, #1
	ldr r1, [r2]
	ands r1, r0
	ldr r5, [sp, #0x64]
	adds r5, #0xd0
	ldr r7, _08029DE4 @ =0x080FB9FC
	ldr r0, [sp, #0x64]
	adds r0, #0x72
	mov sl, r0
	ldr r0, [sp, #0x5c]
	lsls r0, r0, #2
	str r0, [sp, #0x80]
	cmp r1, #0
	bne _08029D66
_08029D46:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bhi _08029D72
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r3]
	adds r6, r0, r1
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08029D46
_08029D66:
	ldrh r0, [r6, #2]
	ldr r1, [sp, #0x68]
	cmp r0, r1
	bne _08029D46
	cmp r4, #4
	bls _08029D76
_08029D72:
	movs r2, #0
	str r2, [sp, #0x68]
_08029D76:
	ldr r1, [r5]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov sb, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov r8, r0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x78]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x10
	ldr r3, [sp, #0x74]
	cmp r3, #0
	beq _08029DA4
	movs r0, #1
	mov r5, sl
	strh r0, [r5]
_08029DA4:
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	bne _08029DFC
	ldr r0, _08029DE8 @ =gUnknown_030067F0
	ldr r2, [sp, #0x80]
	adds r5, r2, r0
	movs r0, #1
	ldr r3, [sp, #0x60]
	lsls r0, r3
	mvns r7, r0
_08029DBA:
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0xc]
	cmp r0, #7
	beq _08029DD2
	ldr r0, _08029DEC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08029DF0
_08029DD2:
	ldr r0, [r5]
	ands r0, r7
	str r0, [r5]
	b _0802A0D2
	.align 2, 0
_08029DDC: .4byte gEnemies
_08029DE0: .4byte gActiveEnemyMask
_08029DE4: .4byte 0x080FB9FC
_08029DE8: .4byte gUnknown_030067F0
_08029DEC: .4byte gUnknown_030063D8
_08029DF0:
	bl WaitFrame
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0
	beq _08029DBA
_08029DFC:
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	cmp r0, r3
	bne _08029E1C
	bl sub_08007544
	cmp r0, #0
	bne _08029E1C
	bl sub_080075AC
	cmp r0, #0
	bne _08029E1C
	movs r0, #0x28
	bl PlaySE
_08029E1C:
	ldr r5, [sp, #0x68]
	cmp r5, #0
	beq _08029ECC
	ldr r0, [r6, #0x10]
	mov r1, sb
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	add r2, sp, #0x54
	strh r0, [r2]
	ldr r1, [r6, #0x14]
	mov r3, r8
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x56
	strh r1, [r0]
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r1, r3, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r2, r1, r0
	cmp r2, #0x80
	ble _08029E7E
	ldr r2, _08029E68 @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08029E90
	.align 2, 0
_08029E68: .4byte 0xFFFFFF00
_08029E6C:
	ldr r3, [sp, #0x74]
	str r3, [sp]
	mov r0, sb
	mov r1, r8
	ldr r2, [sp, #0x5c]
	movs r3, #0
	bl StartSpellEffect
	b _0802A0C0
_08029E7E:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08029E90
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	adds r3, r0, #0
	orrs r3, r1
_08029E90:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08029EB4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08029EB4:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08029EC8
	ldr r2, _08029F40 @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08029EC8:
	movs r0, #0xff
	ands r4, r0
_08029ECC:
	ldr r3, _08029F44 @ =0x0805289C
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add sb, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r8, r0
	ldr r1, _08029F48 @ =0x00100006
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	mov r2, sp
	adds r2, #0x31
	movs r1, #0
	movs r0, #8
	strb r0, [r2]
	add r2, sp, #0x58
	strh r1, [r2]
	movs r3, #0x5a
	add r3, sp
	strh r1, [r3]
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r5, [sp, #0x70]
	lsls r0, r5, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x13
	movs r2, #0xa0
	lsls r2, r2, #0xd
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	str r4, [sp, #0x7c]
	b _0802A08E
	.align 2, 0
_08029F40: .4byte 0xFFFFFF00
_08029F44: .4byte 0x0805289C
_08029F48: .4byte 0x00100006
_08029F4C:
	ldr r0, _0802A0E4 @ =gFrameCounter
	ldr r0, [r0]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _08029F64
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
_08029F64:
	movs r4, #0
	mov sl, r4
	str r4, [sp]
	mov r0, sb
	mov r1, r8
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x74]
	bl sub_08029560
	cmp r0, #0
	beq _08029F82
	ldr r5, [sp, #0x74]
	cmp r5, #0
	bne _08029F82
	b _0802A0C0
_08029F82:
	mov r0, sb
	mov r1, r8
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08029FA2
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08029FA2
	b _08029E6C
_08029FA2:
	ldr r3, _0802A0E8 @ =0x0805289C
	ldr r0, [sp, #0x7c]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	add sb, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	add r8, r0
	mov r0, sb
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x54
	mov r7, sp
	adds r7, #0x56
	movs r2, #0x30
	str r2, [sp]
	mov r2, sl
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0802A0EC @ =0x080FB720
	ldr r3, [sp, #0x7c]
	asrs r0, r3, #0x14
	adds r4, r0, r1
	ldrb r1, [r4]
	ldr r0, [sp, #0x70]
	adds r1, r0, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #1
	str r2, [sp]
	add r0, sp, #0x10
	add r2, sp, #0x58
	mov r3, sp
	adds r3, #0x5a
	bl sub_08026C40
	ldr r0, _0802A0F0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802A08A
	bl sub_08007510
	cmp r0, #0
	bne _0802A08A
	bl sub_08007604
	cmp r0, #0
	bne _0802A08A
	bl sub_08007544
	cmp r0, #0
	bne _0802A08A
	movs r3, #0
	ldrsh r0, [r6, r3]
	ldr r3, _0802A0F4 @ =0x080FBB24
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r7, r4]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x70]
	ldr r3, [sp, #0x78]
	adds r2, r4, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x58
	ldrh r3, [r4]
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_0802A08A:
	bl WaitFrame
_0802A08E:
	ldr r1, [sp, #0x6c]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	cmp r1, #0
	beq _0802A0C0
	bl GetMultiplayerId
	ldr r5, [sp, #0x5c]
	cmp r5, r0
	beq _0802A0A8
	b _08029F4C
_0802A0A8:
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802A0C0
	bl sub_080077C0
	cmp r0, #0
	bne _0802A0C0
	b _08029F4C
_0802A0C0:
	ldr r2, _0802A0F8 @ =gUnknown_030067F0
	ldr r3, [sp, #0x80]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x60]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802A0D2:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A0E4: .4byte gFrameCounter
_0802A0E8: .4byte 0x0805289C
_0802A0EC: .4byte 0x080FB720
_0802A0F0: .4byte gUnknown_030063D8
_0802A0F4: .4byte 0x080FBB24
_0802A0F8: .4byte gUnknown_030067F0

	thumb_func_start sub_0802A0FC
sub_0802A0FC: @ 0x0802A0FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x9c
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	movs r0, #0xd4
	mov r8, r0
	ldr r1, [sp, #0x5c]
	mov r0, r8
	muls r0, r1, r0
	ldr r7, _0802A198 @ =gPlayers
	adds r0, r0, r7
	str r0, [sp, #0x64]
	adds r6, r0, #0
	adds r6, #0xd0
	ldr r1, [r6]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	str r0, [sp, #0x6c]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x74]
	str r0, [sp, #0x78]
	str r0, [sp, #0x70]
	mov r5, sp
	adds r5, #0x5a
	movs r0, #0
	strh r0, [r5]
	add r4, sp, #0x58
	strh r0, [r4]
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	cmp r0, r2
	bne _0802A1DA
	ldr r0, [r6]
	ldr r4, [r0, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r5, r0, r7
	ldr r1, _0802A19C @ =0x080FBB84
	ldr r2, [sp, #0x70]
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _0802A182
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802A182:
	adds r0, r5, #0
	adds r0, #0x78
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802A1A0
	movs r0, #0
	b _0802A1A2
	.align 2, 0
_0802A198: .4byte gPlayers
_0802A19C: .4byte 0x080FBB84
_0802A1A0:
	adds r0, r1, #1
_0802A1A2:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802A1C0
	ldr r0, _0802A1BC @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r5, [sp, #0x64]
	strh r4, [r5, #0x12]
	strh r4, [r5, #0x14]
	b _0802A5E0
	.align 2, 0
_0802A1BC: .4byte 0x0009001B
_0802A1C0:
	ldr r2, [sp, #0x64]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802A1DA
	movs r0, #0
	strh r0, [r2]
_0802A1DA:
	movs r2, #0
	ldr r1, _0802A304 @ =gEnemies
	ldr r6, [r1]
	ldrh r0, [r6, #2]
	ldr r3, [sp, #0x64]
	adds r3, #0xd0
	str r3, [sp, #0x98]
	add r7, sp, #0x44
	mov r4, sp
	adds r4, #0x31
	str r4, [sp, #0x8c]
	ldr r5, [sp, #0x74]
	lsls r5, r5, #0x13
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x70]
	lsls r3, r3, #0x13
	str r3, [sp, #0x90]
	ldr r4, [sp, #0x64]
	adds r4, #0x72
	mov r8, r4
	ldr r5, [sp, #0x5c]
	lsls r5, r5, #2
	str r5, [sp, #0x88]
	ldr r3, [sp, #0x6c]
	cmp r0, r3
	beq _0802A22C
	adds r4, r1, #0
	movs r3, #0x94
_0802A212:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bhi _0802A230
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, [r4]
	adds r6, r1, r0
	ldrh r0, [r6, #2]
	ldr r5, [sp, #0x6c]
	cmp r0, r5
	bne _0802A212
_0802A22C:
	cmp r2, #4
	bls _0802A234
_0802A230:
	movs r0, #0
	str r0, [sp, #0x6c]
_0802A234:
	ldr r2, [sp, #0x98]
	ldr r1, [r2]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov sb, r0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x7c]
	movs r4, #0
	movs r5, #8
	strb r5, [r7, #5]
	add r3, sp, #0x58
	strh r4, [r3]
	movs r0, #0x5a
	add r0, sp
	strh r4, [r0]
	ldr r0, _0802A308 @ =0x00100004
	bl GetDataRecord
	ldr r0, _0802A30C @ =0x00110004
	bl GetDataRecord
	ldr r0, _0802A310 @ =0x00130004
	bl GetDataRecord
	str r0, [sp, #0x68]
	ldr r1, _0802A314 @ =0x00100068
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	ldr r1, [sp, #0x8c]
	strb r5, [r1]
	add r2, sp, #0x58
	strh r4, [r2]
	movs r3, #0x5a
	add r3, sp
	strh r4, [r3]
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r4, [sp, #0x94]
	lsrs r4, r4, #0x10
	str r4, [sp, #0x74]
	ldr r5, [sp, #0x90]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r5, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	ldr r1, _0802A318 @ =0x080FB9FC
	ldr r2, [sp, #0x98]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r5, r0, #0x10
	ldr r3, [sp, #0x78]
	cmp r3, #0
	beq _0802A2CC
	movs r0, #1
	mov r4, r8
	strh r0, [r4]
_0802A2CC:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802A330
	ldr r0, _0802A31C @ =gUnknown_030067F0
	ldr r2, [sp, #0x88]
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #0x60]
	lsls r0, r3
	mvns r7, r0
_0802A2E2:
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0xc]
	cmp r0, #7
	beq _0802A2FA
	ldr r0, _0802A320 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802A324
_0802A2FA:
	ldr r0, [r4]
	ands r0, r7
	str r0, [r4]
	b _0802A5E0
	.align 2, 0
_0802A304: .4byte gEnemies
_0802A308: .4byte 0x00100004
_0802A30C: .4byte 0x00110004
_0802A310: .4byte 0x00130004
_0802A314: .4byte 0x00100068
_0802A318: .4byte 0x080FB9FC
_0802A31C: .4byte gUnknown_030067F0
_0802A320: .4byte gUnknown_030063D8
_0802A324:
	bl WaitFrame
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802A2E2
_0802A330:
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	cmp r0, r3
	bne _0802A350
	bl sub_08007544
	cmp r0, #0
	bne _0802A350
	bl sub_080075AC
	cmp r0, #0
	bne _0802A350
	movs r0, #0x29
	bl PlaySE
_0802A350:
	ldr r4, [sp, #0x6c]
	cmp r4, #0
	beq _0802A418
	ldr r0, [r6, #0x10]
	mov r1, sl
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	add r2, sp, #0x54
	strh r0, [r2]
	ldr r1, [r6, #0x14]
	mov r3, sb
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x56
	strh r1, [r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r1, r3, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r2, r1, r0
	cmp r2, #0x80
	ble _0802A3CA
	ldr r2, _0802A39C @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0802A3DC
	.align 2, 0
_0802A39C: .4byte 0xFFFFFF00
_0802A3A0:
	ldr r1, _0802A3B4 @ =gUnknown_030067F0
	ldr r3, [sp, #0x88]
	adds r1, r3, r1
	mov r4, r8
	ldr r5, [sp, #0x60]
	lsls r4, r5
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	b _0802A5E0
	.align 2, 0
_0802A3B4: .4byte gUnknown_030067F0
_0802A3B8:
	ldr r0, [sp, #0x78]
	str r0, [sp]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0x5c]
	movs r3, #1
	bl StartSpellEffect
	b _0802A5CE
_0802A3CA:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0802A3DC
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	adds r3, r0, #0
	orrs r3, r1
_0802A3DC:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0802A400
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802A400:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802A414
	ldr r4, _0802A5F0 @ =0xFFFFFF00
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802A414:
	movs r0, #0xff
	ands r5, r0
_0802A418:
	ldr r3, _0802A5F4 @ =0x0805289C
	lsls r4, r5, #0x10
	asrs r2, r4, #0x10
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	movs r1, #0xb4
	muls r0, r1, r0
	add sl, r0
	lsls r0, r2, #1
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r1, r0
	add sb, r0
	ldr r1, [sp, #0x70]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r1, #0
	bne _0802A44C
	b _0802A5CE
_0802A44C:
	movs r0, #1
	mov r8, r0
	str r2, [sp, #0x80]
	asrs r4, r4, #0x14
	str r4, [sp, #0x84]
_0802A456:
	ldr r0, _0802A5F8 @ =gFrameCounter
	ldr r0, [r0]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0802A46E
	movs r0, #0x18
	ldr r1, [sp, #0x68]
	adds r1, #0xa0
	movs r2, #1
	bl LoadPalette
_0802A46E:
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	cmp r2, r0
	bne _0802A492
	ldr r3, [sp, #0x64]
	ldrh r0, [r3, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0802A488
	b _0802A5CE
_0802A488:
	bl sub_080077C0
	cmp r0, #0
	beq _0802A492
	b _0802A5CE
_0802A492:
	mov r4, r8
	str r4, [sp]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x78]
	bl sub_08029560
	cmp r0, #0
	beq _0802A4AE
	ldr r5, [sp, #0x78]
	cmp r5, #0
	bne _0802A4AE
	b _0802A3A0
_0802A4AE:
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0xf
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0802A4D0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802A4D0
	b _0802A3B8
_0802A4D0:
	ldr r0, [sp, #0x80]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802A5F4 @ =0x0805289C
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	add sl, r0
	ldr r4, [sp, #0x80]
	lsls r0, r4, #1
	ldr r5, _0802A5F4 @ =0x0805289C
	adds r0, r0, r5
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	add sb, r0
	adds r0, r4, #0
	ands r0, r2
	mov r4, sl
	asrs r5, r4, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x54
	mov r7, sp
	adds r7, #0x56
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
	lsrs r5, r0, #0x18
	ldr r0, _0802A5FC @ =0x080FB720
	ldr r2, [sp, #0x84]
	adds r4, r2, r0
	ldrb r1, [r4]
	ldr r3, [sp, #0x74]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	str r0, [sp]
	add r0, sp, #0x10
	add r2, sp, #0x58
	mov r3, sp
	adds r3, #0x5a
	bl sub_08026C40
	ldr r0, _0802A600 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802A5BA
	bl sub_08007510
	cmp r0, #0
	bne _0802A5BA
	bl sub_08007604
	cmp r0, #0
	bne _0802A5BA
	bl sub_08007544
	cmp r0, #0
	bne _0802A5BA
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, _0802A604 @ =0x080FBB24
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r7, r4]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x74]
	ldr r3, [sp, #0x7c]
	adds r2, r4, r3
	lsls r2, r2, #0x10
	add r4, sp, #0x58
	ldrh r3, [r4]
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	lsrs r2, r2, #0x10
	bl sub_08004344
_0802A5BA:
	bl WaitFrame
	ldr r1, [sp, #0x70]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r1, #0
	beq _0802A5CE
	b _0802A456
_0802A5CE:
	ldr r2, _0802A608 @ =gUnknown_030067F0
	ldr r5, [sp, #0x88]
	adds r2, r5, r2
	movs r1, #1
	ldr r0, [sp, #0x60]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802A5E0:
	add sp, #0x9c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A5F0: .4byte 0xFFFFFF00
_0802A5F4: .4byte 0x0805289C
_0802A5F8: .4byte gFrameCounter
_0802A5FC: .4byte 0x080FB720
_0802A600: .4byte gUnknown_030063D8
_0802A604: .4byte 0x080FBB24
_0802A608: .4byte gUnknown_030067F0

	thumb_func_start sub_0802A60C
sub_0802A60C: @ 0x0802A60C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	str r0, [sp, #0x44]
	str r1, [sp, #0x48]
	movs r6, #0xd4
	adds r1, r0, #0
	adds r0, r1, #0
	muls r0, r6, r0
	ldr r5, _0802A694 @ =gPlayers
	adds r0, r0, r5
	str r0, [sp, #0x4c]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x4c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x58]
	adds r7, r0, #0
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x44]
	cmp r2, r3
	bne _0802A6D6
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r5, r0, r5
	ldr r1, _0802A698 @ =0x080FBB84
	adds r2, r7, #0
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _0802A67C
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802A67C:
	adds r0, r5, #0
	adds r0, #0x78
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802A69C
	movs r0, #0
	b _0802A69E
	.align 2, 0
_0802A694: .4byte gPlayers
_0802A698: .4byte 0x080FBB84
_0802A69C:
	adds r0, r1, #1
_0802A69E:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802A6BC
	ldr r0, _0802A6B8 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r0, [sp, #0x4c]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	b _0802AB78
	.align 2, 0
_0802A6B8: .4byte 0x0009001B
_0802A6BC:
	ldr r2, [sp, #0x4c]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802A6D6
	movs r0, #0
	strh r0, [r2]
_0802A6D6:
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	movs r6, #0
	adds r1, #0x18
	str r1, [sp, #0x74]
	mov r2, sp
	adds r2, #0x34
	str r2, [sp, #0x7c]
	ldr r5, [sp, #0x4c]
	adds r5, #0x72
	ldr r3, [sp, #0x44]
	lsls r3, r3, #2
	str r3, [sp, #0x78]
	adds r4, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x7c]
_0802A6F8:
	lsls r1, r6, #1
	adds r0, r4, r1
	strh r2, [r0]
	adds r1, r3, r1
	strh r2, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802A6F8
	ldr r0, _0802A76C @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x54]
	ldr r0, _0802A770 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x50]
	ldr r0, _0802A774 @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	cmp r7, #0
	beq _0802A736
	movs r0, #2
	strh r0, [r5]
_0802A736:
	ldrh r0, [r5]
	cmp r0, #1
	bhi _0802A78A
	ldr r0, _0802A778 @ =gUnknown_030067F0
	ldr r1, [sp, #0x78]
	adds r4, r1, r0
	movs r0, #1
	ldr r2, [sp, #0x48]
	lsls r0, r2
	mvns r6, r0
_0802A74A:
	ldr r3, [sp, #0x4c]
	ldrh r0, [r3, #0xc]
	cmp r0, #7
	beq _0802A762
	ldr r0, _0802A77C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802A780
_0802A762:
	ldr r0, [r4]
	ands r0, r6
	str r0, [r4]
	b _0802AB78
	.align 2, 0
_0802A76C: .4byte 0x00100004
_0802A770: .4byte 0x00110004
_0802A774: .4byte 0x00130004
_0802A778: .4byte gUnknown_030067F0
_0802A77C: .4byte gUnknown_030063D8
_0802A780:
	bl WaitFrame
	ldrh r0, [r5]
	cmp r0, #1
	bls _0802A74A
_0802A78A:
	ldr r3, [sp, #0x4c]
	adds r3, #0xd0
	ldr r1, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0x5c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [sp, #0x60]
	ldr r2, _0802A7F8 @ =0x080FB9FC
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r7, #0
	movs r4, #0
	str r4, [sp, #0x64]
	movs r6, #0
	mov sb, r3
	ldr r0, [sp, #0x4c]
	adds r0, #0x76
	str r0, [sp, #0x84]
_0802A7C2:
	ldr r0, _0802A7FC @ =gActiveEnemyMask
	movs r1, #1
	lsls r1, r6
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802A8A6
	ldr r2, _0802A800 @ =gEnemies
	movs r0, #0x94
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802A7F0
	ldr r0, _0802A804 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _0802A808
_0802A7F0:
	ldrh r0, [r5, #0xa]
	cmp r0, #8
	beq _0802A8A6
	b _0802A814
	.align 2, 0
_0802A7F8: .4byte 0x080FB9FC
_0802A7FC: .4byte gActiveEnemyMask
_0802A800: .4byte gEnemies
_0802A804: .4byte gMapLayer_03003910
_0802A808:
	ldrh r0, [r5, #0xa]
	adds r1, r0, #0
	cmp r1, #0
	beq _0802A8A6
	cmp r1, #8
	beq _0802A8A6
_0802A814:
	cmp r0, #9
	beq _0802A8A6
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x5c]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	add r4, sp, #0x40
	strh r0, [r4]
	ldr r1, [r5, #0x14]
	ldr r2, [sp, #0x60]
	subs r1, r1, r2
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x42
	strh r1, [r5]
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1b
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0802A85C
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802A85C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802A866
	rsbs r0, r0, #0
_0802A866:
	cmp r0, #3
	bgt _0802A8A6
	movs r3, #0
	ldrsh r4, [r4, r3]
	cmp r4, #0
	bge _0802A874
	rsbs r4, r4, #0
_0802A874:
	ldr r1, [sp, #0x58]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x30
	cmp r4, r0
	bge _0802A8A6
	movs r2, #0
	ldrsh r5, [r5, r2]
	cmp r5, #0
	bge _0802A88C
	rsbs r5, r5, #0
_0802A88C:
	cmp r5, r0
	bge _0802A8A6
	add r1, sp, #0x20
	ldr r2, [sp, #0x64]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	adds r1, r1, r2
	strb r6, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802A8A6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802A7C2
	ldr r3, [sp, #0x68]
	ldr r4, [sp, #0x44]
	cmp r3, r4
	bne _0802A8CE
	bl sub_08007544
	cmp r0, #0
	bne _0802A8CE
	bl sub_080075AC
	cmp r0, #0
	bne _0802A8CE
	movs r0, #0x2a
	bl PlaySE
_0802A8CE:
	cmp r7, #0
	beq _0802A8D4
	b _0802A9E4
_0802A8D4:
	ldr r1, _0802A9D8 @ =0x080FB9FC
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _0802A9DC @ =0x0805289C
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, [sp, #0x5c]
	adds r2, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, [sp, #0x60]
	adds r4, r4, r0
	movs r0, #0
	mov sl, r0
	ldr r1, [sp, #0x58]
	adds r1, #0x17
	str r1, [sp, #0x80]
	asrs r2, r2, #0xc
	str r2, [sp, #0x6c]
	asrs r4, r4, #0xc
	mov sb, r4
	add r3, sp, #0x40
	mov r8, r3
	mov r6, sp
	adds r6, #0x42
	lsls r4, r2, #0x10
	str r4, [sp, #0x70]
	ldr r5, [sp, #0x74]
_0802A93A:
	mov r0, sb
	lsls r1, r0, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, [sp, #0x70]
	asrs r0, r3, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	adds r3, r6, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x6c]
	mov r1, sb
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r4, [sp, #0x80]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x7c]
	ldr r3, [sp, #0x54]
	bl sub_08004214
	cmp r0, #0
	beq _0802A982
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802A982:
	ldr r0, _0802A9E0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802A9CA
	bl sub_08007510
	cmp r0, #0
	bne _0802A9CA
	bl sub_08007604
	cmp r0, #0
	bne _0802A9CA
	bl sub_08007544
	cmp r0, #0
	bne _0802A9CA
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldrh r3, [r5]
	str r7, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r2, [sp, #0x54]
	str r2, [sp, #8]
	ldr r2, [sp, #0x50]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802A9CA:
	bl WaitFrame
	mov r3, sl
	cmp r3, #0
	beq _0802A93A
	b _0802AB52
	.align 2, 0
_0802A9D8: .4byte 0x080FB9FC
_0802A9DC: .4byte 0x0805289C
_0802A9E0: .4byte gUnknown_030063D8
_0802A9E4:
	movs r4, #0
	mov sl, r4
	b _0802AABE
_0802A9EA:
	movs r6, #0
	ldr r0, [sp, #0x64]
	cmp r6, r0
	bhs _0802AABA
	add r1, sp, #0x40
	mov sb, r1
	movs r2, #0x42
	add r2, sp
	mov r8, r2
_0802A9FC:
	ldr r2, _0802AB88 @ =gEnemies
	add r0, sp, #0x20
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r0, [r5, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	mov r2, sb
	mov r3, r8
	bl sub_08005FC4
	ldr r4, [sp, #0x5c]
	asrs r0, r4, #0xc
	ldr r2, [sp, #0x60]
	asrs r1, r2, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r5, [sp, #0x58]
	adds r5, #0x17
	lsls r2, r6, #1
	ldr r3, [sp, #0x74]
	adds r4, r3, r2
	ldr r0, [sp, #0x7c]
	adds r2, r0, r2
	movs r1, #0
	str r1, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x54]
	bl sub_08004214
	cmp r0, #0
	beq _0802AA64
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802AA64:
	ldr r0, _0802AB8C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802AAAE
	bl sub_08007510
	cmp r0, #0
	bne _0802AAAE
	bl sub_08007604
	cmp r0, #0
	bne _0802AAAE
	bl sub_08007544
	cmp r0, #0
	bne _0802AAAE
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r4]
	str r7, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r2, [sp, #0x54]
	str r2, [sp, #8]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
_0802AAAE:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0x64]
	cmp r6, r0
	blo _0802A9FC
_0802AABA:
	bl WaitFrame
_0802AABE:
	ldr r1, [sp, #0x64]
	cmp sl, r1
	bhs _0802AAE4
	bl GetMultiplayerId
	ldr r2, [sp, #0x44]
	cmp r2, r0
	bne _0802A9EA
	ldr r3, [sp, #0x4c]
	ldrh r0, [r3, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802AAE4
	bl sub_080077C0
	cmp r0, #0
	beq _0802A9EA
_0802AAE4:
	movs r6, #0
	ldr r4, [sp, #0x64]
	cmp r6, r4
	bhs _0802AB52
	ldr r4, _0802AB88 @ =gEnemies
_0802AAEE:
	add r0, sp, #0x20
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r4]
	adds r5, r0, r1
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x44]
	cmp r0, r1
	bne _0802AB26
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x58]
	movs r3, #2
	bl sub_080297D4
	bl sub_08007544
	cmp r0, #0
	bne _0802AB26
	bl sub_080075AC
	cmp r0, #0
	bne _0802AB26
	movs r0, #0x1a
	bl PlaySE
_0802AB26:
	ldr r0, _0802AB8C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802AB46
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [sp, #0x58]
	str r2, [sp]
	ldr r2, [sp, #0x44]
	movs r3, #2
	bl StartSpellEffect
_0802AB46:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r3, [sp, #0x64]
	cmp r6, r3
	blo _0802AAEE
_0802AB52:
	ldr r4, [sp, #0x84]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0802AB66
_0802AB5A:
	bl WaitFrame
	ldr r1, [sp, #0x84]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802AB5A
_0802AB66:
	ldr r2, _0802AB90 @ =gUnknown_030067F0
	ldr r3, [sp, #0x78]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x48]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802AB78:
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AB88: .4byte gEnemies
_0802AB8C: .4byte gUnknown_030063D8
_0802AB90: .4byte gUnknown_030067F0

	thumb_func_start sub_0802AB94
sub_0802AB94: @ 0x0802AB94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	movs r0, #0xd4
	ldr r2, [sp, #0x28]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802ABE8 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x34]
	adds r0, r1, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	str r0, [sp, #0x44]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x48]
	add r2, sp, #0x24
	movs r0, #0
	strh r0, [r2]
	mov r1, sp
	adds r1, #0x26
	strh r0, [r1]
	ldr r3, [sp, #0x48]
	cmp r3, #5
	bhi _0802AC2A
	lsls r0, r3, #2
	ldr r1, _0802ABEC @ =_0802ABF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802ABE8: .4byte gPlayers
_0802ABEC: .4byte _0802ABF0
_0802ABF0: @ jump table
	.4byte _0802AC08 @ case 0
	.4byte _0802AC0E @ case 1
	.4byte _0802AC14 @ case 2
	.4byte _0802AC1A @ case 3
	.4byte _0802AC20 @ case 4
	.4byte _0802AC26 @ case 5
_0802AC08:
	movs r4, #1
	str r4, [sp, #0x54]
	b _0802AC2A
_0802AC0E:
	movs r6, #2
	str r6, [sp, #0x54]
	b _0802AC2A
_0802AC14:
	movs r0, #3
	str r0, [sp, #0x54]
	b _0802AC2A
_0802AC1A:
	movs r1, #4
	str r1, [sp, #0x54]
	b _0802AC2A
_0802AC20:
	movs r2, #5
	str r2, [sp, #0x54]
	b _0802AC2A
_0802AC26:
	movs r3, #6
	str r3, [sp, #0x54]
_0802AC2A:
	bl GetMultiplayerId
	ldr r7, [sp, #0x34]
	adds r7, #0xd0
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bne _0802ACC6
	ldr r0, [r7]
	ldr r4, [r0, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0802AC84 @ =gPlayers
	adds r5, r1, r0
	ldr r1, _0802AC88 @ =0x080FBB84
	ldr r6, [sp, #0x4c]
	lsls r0, r6, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r6, #0
	beq _0802AC6E
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802AC6E:
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802AC8C
	movs r0, #0
	b _0802AC8E
	.align 2, 0
_0802AC84: .4byte gPlayers
_0802AC88: .4byte 0x080FBB84
_0802AC8C:
	adds r0, r1, #1
_0802AC8E:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802ACAC
	ldr r0, _0802ACA8 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r2, [sp, #0x34]
	strh r4, [r2, #0x12]
	strh r4, [r2, #0x14]
	b _0802B106
	.align 2, 0
_0802ACA8: .4byte 0x0009001B
_0802ACAC:
	ldr r2, [sp, #0x34]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802ACC6
	movs r0, #0
	strh r0, [r2]
_0802ACC6:
	movs r2, #0
	ldr r1, _0802AD5C @ =gEnemies
	ldr r3, [r1]
	str r3, [sp, #0x30]
	ldrh r0, [r3, #2]
	ldr r6, [sp, #0x34]
	adds r6, #0x72
	ldr r4, [sp, #0x28]
	lsls r4, r4, #2
	str r4, [sp, #0x5c]
	ldr r3, [sp, #0x44]
	cmp r0, r3
	beq _0802AD00
	adds r4, r1, #0
	movs r3, #0x94
_0802ACE4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bhi _0802AD04
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [sp, #0x30]
	ldrh r0, [r1, #2]
	ldr r1, [sp, #0x44]
	cmp r0, r1
	bne _0802ACE4
_0802AD00:
	cmp r2, #4
	bls _0802AD08
_0802AD04:
	movs r2, #0
	str r2, [sp, #0x44]
_0802AD08:
	ldr r1, [r7]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov sb, r0
	add r2, sp, #0x10
	movs r1, #0
	movs r0, #8
	strb r0, [r2, #5]
	mov r3, sp
	strh r1, [r3, #0x24]
	strh r1, [r3, #0x26]
	ldr r0, _0802AD60 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x3c]
	ldr r0, _0802AD64 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x38]
	ldr r0, _0802AD68 @ =0x00130004
	bl GetDataRecord
	str r0, [sp, #0x40]
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r4, [sp, #0x4c]
	cmp r4, #5
	bhi _0802ADD4
	lsls r0, r4, #2
	ldr r1, _0802AD6C @ =_0802AD70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802AD5C: .4byte gEnemies
_0802AD60: .4byte 0x00100004
_0802AD64: .4byte 0x00110004
_0802AD68: .4byte 0x00130004
_0802AD6C: .4byte _0802AD70
_0802AD70: @ jump table
	.4byte _0802AD88 @ case 0
	.4byte _0802AD8E @ case 1
	.4byte _0802AD8E @ case 2
	.4byte _0802AD98 @ case 3
	.4byte _0802AD98 @ case 4
	.4byte _0802ADCA @ case 5
_0802AD88:
	movs r0, #0x1e
	str r0, [sp, #0x48]
	b _0802ADD4
_0802AD8E:
	movs r1, #1
	str r1, [sp, #0x4c]
	movs r2, #0xb4
	str r2, [sp, #0x48]
	b _0802ADD4
_0802AD98:
	movs r3, #2
	str r3, [sp, #0x4c]
	movs r4, #0xf0
	str r4, [sp, #0x48]
	b _0802ADD4
_0802ADA2:
	ldr r1, _0802ADB4 @ =gUnknown_030067F0
	ldr r6, [sp, #0x5c]
	adds r1, r6, r1
	ldr r0, [sp, #0x2c]
	lsls r4, r0
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	b _0802B106
	.align 2, 0
_0802ADB4: .4byte gUnknown_030067F0
_0802ADB8:
	ldr r1, [sp, #0x50]
	str r1, [sp]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0x28]
	movs r3, #3
	bl StartSpellEffect
	b _0802B0F4
_0802ADCA:
	movs r2, #3
	str r2, [sp, #0x4c]
	movs r3, #0x96
	lsls r3, r3, #1
	str r3, [sp, #0x48]
_0802ADD4:
	ldr r1, _0802AE4C @ =0x080FB9FC
	ldr r0, [r7]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	ldr r3, _0802AE50 @ =0x0805289C
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #5
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	add sb, r0
	ldr r1, [sp, #0x50]
	cmp r1, #0
	beq _0802AE18
	movs r0, #1
	strh r0, [r6]
_0802AE18:
	ldrh r0, [r6]
	cmp r0, #1
	beq _0802AE66
	ldr r0, _0802AE54 @ =gUnknown_030067F0
	ldr r2, [sp, #0x5c]
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #0x2c]
	lsls r0, r3
	mvns r5, r0
_0802AE2C:
	ldr r1, [sp, #0x34]
	ldrh r0, [r1, #0xc]
	cmp r0, #7
	beq _0802AE44
	ldr r0, _0802AE58 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802AE5C
_0802AE44:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802B106
	.align 2, 0
_0802AE4C: .4byte 0x080FB9FC
_0802AE50: .4byte 0x0805289C
_0802AE54: .4byte gUnknown_030067F0
_0802AE58: .4byte gUnknown_030063D8
_0802AE5C:
	bl WaitFrame
	ldrh r0, [r6]
	cmp r0, #1
	bne _0802AE2C
_0802AE66:
	bl GetMultiplayerId
	ldr r2, [sp, #0x28]
	cmp r0, r2
	bne _0802AE86
	bl sub_08007544
	cmp r0, #0
	bne _0802AE86
	bl sub_080075AC
	cmp r0, #0
	bne _0802AE86
	movs r0, #0x2b
	bl PlaySE
_0802AE86:
	movs r3, #0
	str r3, [sp, #0x58]
	b _0802B0C2
_0802AE8C:
	ldr r0, _0802AF50 @ =gFrameCounter
	ldr r0, [r0]
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0802AEA4
	movs r0, #0x18
	ldr r1, [sp, #0x40]
	adds r1, #0xa0
	movs r2, #1
	bl LoadPalette
_0802AEA4:
	ldr r6, [sp, #0x58]
	cmp r6, #0
	bne _0802AEE2
	movs r0, #3
	str r0, [sp]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x50]
	bl sub_08029560
	cmp r0, #0
	beq _0802AEE2
	ldr r1, [sp, #0x30]
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	beq _0802AEE2
	ldr r0, [sp, #0x54]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
	cmp r0, #0
	bne _0802AED6
	b _0802ADA2
_0802AED6:
	ldr r2, [sp, #0x34]
	ldr r0, [r2, #0x7c]
	adds r0, #1
	str r0, [r2, #0x7c]
	movs r3, #0xa
	str r3, [sp, #0x58]
_0802AEE2:
	ldr r0, [sp, #0x58]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x58]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0802AEFC
	movs r6, #0
	str r6, [sp, #0x58]
_0802AEFC:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0802AFB8
	ldr r1, [sp, #0x58]
	cmp r1, #0
	bne _0802AFB8
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #0x10]
	mov r3, sl
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	add r2, sp, #0x20
	strh r0, [r2]
	ldr r4, [sp, #0x30]
	ldr r1, [r4, #0x14]
	mov r6, sb
	subs r1, r1, r6
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x22
	strh r1, [r0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r2, r3, #0
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r2, r0
	cmp r1, #0x80
	ble _0802AF58
	ldr r4, _0802AF54 @ =0xFFFFFF00
	adds r0, r4, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0802AF6A
	.align 2, 0
_0802AF50: .4byte gFrameCounter
_0802AF54: .4byte 0xFFFFFF00
_0802AF58:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802AF6A
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	adds r3, r0, #0
	orrs r3, r2
_0802AF6A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	subs r0, r0, r4
	movs r1, #7
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _0802AF94
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802AF94:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _0802AFA8
	ldr r3, _0802B118 @ =0xFFFFFF00
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802AFA8:
	movs r0, #0xff
	ands r7, r0
	ldr r4, [sp, #0x30]
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	bne _0802AFB8
	movs r6, #0
	str r6, [sp, #0x44]
_0802AFB8:
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r5, #0xf
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _0802AFDA
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802AFDA
	b _0802ADB8
_0802AFDA:
	ldr r3, _0802B11C @ =0x0805289C
	lsls r4, r7, #0x10
	asrs r2, r4, #0x10
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add sl, r0
	lsls r0, r2, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add sb, r0
	ands r2, r5
	str r4, [sp, #0x60]
	mov r4, sl
	asrs r5, r4, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r6, sb
	asrs r4, r6, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x20
	movs r2, #0x22
	add r2, sp
	mov r8, r2
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, [sp, #0x4c]
	adds r4, #0x1d
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	ldr r3, [sp, #0x3c]
	bl sub_08004214
	ldr r0, _0802B120 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B0BE
	bl sub_08007510
	cmp r0, #0
	bne _0802B0BE
	bl sub_08007604
	cmp r0, #0
	bne _0802B0BE
	bl sub_08007544
	cmp r0, #0
	bne _0802B0BE
	movs r3, #0
	ldrsh r0, [r6, r3]
	ldr r2, _0802B124 @ =0x080FB720
	ldr r6, [sp, #0x60]
	asrs r1, r6, #0x14
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r3, _0802B128 @ =0x080FBB24
	adds r1, r2, r3
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r0, r0, r1
	mov r3, r8
	movs r6, #0
	ldrsh r1, [r3, r6]
	ldr r3, _0802B12C @ =0x080FBB26
	adds r2, r2, r3
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	mov r2, sp
	ldrh r3, [r2, #0x24]
	str r5, [sp]
	add r6, sp, #0x10
	str r6, [sp, #4]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #8]
	ldr r6, [sp, #0x38]
	str r6, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802B0BE:
	bl WaitFrame
_0802B0C2:
	ldr r1, [sp, #0x48]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x48]
	cmp r1, #0
	beq _0802B0F4
	bl GetMultiplayerId
	ldr r1, [sp, #0x28]
	cmp r1, r0
	beq _0802B0DC
	b _0802AE8C
_0802B0DC:
	ldr r2, [sp, #0x34]
	ldrh r0, [r2, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802B0F4
	bl sub_080077C0
	cmp r0, #0
	bne _0802B0F4
	b _0802AE8C
_0802B0F4:
	ldr r2, _0802B130 @ =gUnknown_030067F0
	ldr r3, [sp, #0x5c]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x2c]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802B106:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B118: .4byte 0xFFFFFF00
_0802B11C: .4byte 0x0805289C
_0802B120: .4byte gUnknown_030063D8
_0802B124: .4byte 0x080FB720
_0802B128: .4byte 0x080FBB24
_0802B12C: .4byte 0x080FBB26
_0802B130: .4byte gUnknown_030067F0

	thumb_func_start sub_0802B134
sub_0802B134: @ 0x0802B134
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	str r0, [sp, #0x44]
	str r1, [sp, #0x48]
	movs r6, #0xd4
	adds r1, r0, #0
	adds r0, r1, #0
	muls r0, r6, r0
	ldr r5, _0802B1BC @ =gPlayers
	adds r0, r0, r5
	str r0, [sp, #0x4c]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x4c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov sl, r0
	mov r7, sl
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x44]
	cmp r2, r3
	bne _0802B1FE
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r5, r0, r5
	ldr r1, _0802B1C0 @ =0x080FBB84
	mov r2, sl
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _0802B1A4
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802B1A4:
	adds r0, r5, #0
	adds r0, #0x78
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802B1C4
	movs r0, #0
	b _0802B1C6
	.align 2, 0
_0802B1BC: .4byte gPlayers
_0802B1C0: .4byte 0x080FBB84
_0802B1C4:
	adds r0, r1, #1
_0802B1C6:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802B1E4
	ldr r0, _0802B1E0 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r0, [sp, #0x4c]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	b _0802B620
	.align 2, 0
_0802B1E0: .4byte 0x0009001B
_0802B1E4:
	ldr r2, [sp, #0x4c]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802B1FE
	movs r0, #0
	strh r0, [r2]
_0802B1FE:
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	movs r6, #0
	adds r1, #0x18
	str r1, [sp, #0x78]
	mov r2, sp
	adds r2, #0x34
	str r2, [sp, #0x80]
	ldr r5, [sp, #0x4c]
	adds r5, #0x72
	ldr r3, [sp, #0x44]
	lsls r3, r3, #2
	str r3, [sp, #0x7c]
	adds r4, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x80]
_0802B220:
	lsls r1, r6, #1
	adds r0, r4, r1
	strh r2, [r0]
	adds r1, r3, r1
	strh r2, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802B220
	ldr r0, _0802B294 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x54]
	ldr r0, _0802B298 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x50]
	ldr r0, _0802B29C @ =0x00130004
	bl GetDataRecord
	str r0, [sp, #0x58]
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	cmp r7, #0
	beq _0802B260
	movs r0, #2
	strh r0, [r5]
_0802B260:
	ldrh r0, [r5]
	cmp r0, #1
	bhi _0802B2B2
	ldr r0, _0802B2A0 @ =gUnknown_030067F0
	ldr r1, [sp, #0x7c]
	adds r4, r1, r0
	movs r0, #1
	ldr r2, [sp, #0x48]
	lsls r0, r2
	mvns r6, r0
_0802B274:
	ldr r3, [sp, #0x4c]
	ldrh r0, [r3, #0xc]
	cmp r0, #7
	beq _0802B28C
	ldr r0, _0802B2A4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802B2A8
_0802B28C:
	ldr r0, [r4]
	ands r0, r6
	str r0, [r4]
	b _0802B620
	.align 2, 0
_0802B294: .4byte 0x00100004
_0802B298: .4byte 0x00110004
_0802B29C: .4byte 0x00130004
_0802B2A0: .4byte gUnknown_030067F0
_0802B2A4: .4byte gUnknown_030063D8
_0802B2A8:
	bl WaitFrame
	ldrh r0, [r5]
	cmp r0, #1
	bls _0802B274
_0802B2B2:
	ldr r2, [sp, #0x4c]
	adds r2, #0xd0
	ldr r1, [r2]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0x5c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [sp, #0x60]
	movs r7, #0
	movs r4, #0
	str r4, [sp, #0x68]
	movs r6, #0
	str r2, [sp, #0x74]
	ldr r0, [sp, #0x4c]
	adds r0, #0x76
	str r0, [sp, #0x70]
	ldr r0, _0802B390 @ =gActiveEnemyMask
	ldr r0, [r0]
	mov sb, r0
	add r5, sp, #0x40
	add r1, sp, #0x20
	mov r8, r1
	ldr r2, _0802B394 @ =0x03003978
	mov ip, r2
_0802B2E8:
	movs r0, #1
	lsls r0, r6
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _0802B376
	ldr r2, _0802B398 @ =gEnemies
	movs r0, #0x94
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	ldrh r1, [r4, #0xa]
	cmp r1, #9
	beq _0802B376
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802B31C
	mov r2, ip
	ldrh r0, [r2]
	cmp r0, #8
	bne _0802B31C
	cmp r1, #0
	beq _0802B376
_0802B31C:
	cmp r1, #8
	beq _0802B376
	ldr r0, [r4, #0x10]
	ldr r3, [sp, #0x5c]
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	strh r0, [r5]
	ldr r0, [r4, #0x14]
	ldr r4, [sp, #0x60]
	subs r0, r0, r4
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bge _0802B344
	rsbs r2, r2, #0
_0802B344:
	mov r3, sl
	lsls r0, r3, #1
	add r0, sl
	lsls r0, r0, #2
	adds r3, r0, #0
	adds r3, #0x28
	cmp r2, r3
	bge _0802B376
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B35E
	rsbs r0, r0, #0
_0802B35E:
	cmp r0, r3
	bge _0802B376
	ldr r0, [sp, #0x68]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x68]
	add r0, r8
	strb r6, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802B376:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802B2E8
	mov r4, sl
	cmp r4, #5
	bhi _0802B3C8
	lsls r0, r4, #2
	ldr r1, _0802B39C @ =_0802B3A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B390: .4byte gActiveEnemyMask
_0802B394: .4byte 0x03003978
_0802B398: .4byte gEnemies
_0802B39C: .4byte _0802B3A0
_0802B3A0: @ jump table
	.4byte _0802B3C8 @ case 0
	.4byte _0802B3B8 @ case 1
	.4byte _0802B3B8 @ case 2
	.4byte _0802B3BE @ case 3
	.4byte _0802B3BE @ case 4
	.4byte _0802B3C4 @ case 5
_0802B3B8:
	movs r0, #1
	mov sl, r0
	b _0802B3C8
_0802B3BE:
	movs r1, #2
	mov sl, r1
	b _0802B3C8
_0802B3C4:
	movs r2, #3
	mov sl, r2
_0802B3C8:
	ldr r3, [sp, #0x6c]
	ldr r4, [sp, #0x44]
	cmp r3, r4
	bne _0802B3E6
	bl sub_08007544
	cmp r0, #0
	bne _0802B3E6
	bl sub_080075AC
	cmp r0, #0
	bne _0802B3E6
	movs r0, #0x2c
	bl PlaySE
_0802B3E6:
	cmp r7, #0
	bne _0802B440
	ldr r1, _0802B438 @ =0x080FB9FC
	ldr r2, [sp, #0x74]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _0802B43C @ =0x0805289C
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r2, #0x64
	muls r0, r2, r0
	ldr r4, [sp, #0x5c]
	adds r4, r4, r0
	str r4, [sp, #0x5c]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	ldr r4, [sp, #0x60]
	adds r4, r4, r0
	str r4, [sp, #0x60]
	mov r0, sl
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	adds r1, r4, #0
	ldr r2, [sp, #0x44]
	movs r3, #4
	bl StartSpellEffect
	b _0802B5FA
	.align 2, 0
_0802B438: .4byte 0x080FB9FC
_0802B43C: .4byte 0x0805289C
_0802B440:
	movs r1, #0
	str r1, [sp, #0x64]
	b _0802B532
_0802B446:
	movs r6, #0
	ldr r2, [sp, #0x68]
	cmp r6, r2
	bhs _0802B516
	add r3, sp, #0x40
	mov sb, r3
	movs r4, #0x42
	add r4, sp
	mov r8, r4
_0802B458:
	ldr r2, _0802B5A4 @ =gEnemies
	add r0, sp, #0x20
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	ldr r0, [r4, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, sb
	mov r3, r8
	bl sub_08005FC4
	ldr r3, [sp, #0x5c]
	asrs r0, r3, #0xc
	ldr r4, [sp, #0x60]
	asrs r1, r4, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r5, sl
	adds r5, #0x21
	lsls r2, r6, #1
	ldr r0, [sp, #0x78]
	adds r4, r0, r2
	ldr r1, [sp, #0x80]
	adds r2, r1, r2
	movs r3, #0
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x54]
	bl sub_08004214
	cmp r0, #0
	beq _0802B4C0
	ldr r0, [sp, #0x64]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
_0802B4C0:
	ldr r0, _0802B5A8 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B50A
	bl sub_08007510
	cmp r0, #0
	bne _0802B50A
	bl sub_08007604
	cmp r0, #0
	bne _0802B50A
	bl sub_08007544
	cmp r0, #0
	bne _0802B50A
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	str r7, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r2, [sp, #0x54]
	str r2, [sp, #8]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
_0802B50A:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0x68]
	cmp r6, r0
	blo _0802B458
_0802B516:
	ldr r0, _0802B5AC @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802B52E
	movs r0, #0x18
	ldr r1, [sp, #0x58]
	adds r1, #0xa0
	movs r2, #1
	bl LoadPalette
_0802B52E:
	bl WaitFrame
_0802B532:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	cmp r1, r2
	bhs _0802B55E
	bl GetMultiplayerId
	ldr r3, [sp, #0x44]
	cmp r3, r0
	beq _0802B546
	b _0802B446
_0802B546:
	ldr r4, [sp, #0x4c]
	ldrh r0, [r4, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802B55E
	bl sub_080077C0
	cmp r0, #0
	bne _0802B55E
	b _0802B446
_0802B55E:
	movs r6, #0
	ldr r0, [sp, #0x68]
	cmp r6, r0
	bhs _0802B5FA
	ldr r5, _0802B5A4 @ =gEnemies
_0802B568:
	add r0, sp, #0x20
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r5]
	adds r4, r0, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x44]
	cmp r1, r2
	bne _0802B5B0
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	movs r3, #4
	bl sub_080297D4
	bl sub_08007544
	cmp r0, #0
	bne _0802B5B6
	bl sub_080075AC
	cmp r0, #0
	bne _0802B5B6
	movs r0, #0x1a
	bl PlaySE
	b _0802B5B6
	.align 2, 0
_0802B5A4: .4byte gEnemies
_0802B5A8: .4byte gUnknown_030063D8
_0802B5AC: .4byte gFrameCounter
_0802B5B0:
	add r3, sp, #0x44
	ldrh r3, [r3]
	strh r3, [r4, #0x34]
_0802B5B6:
	ldr r0, _0802B630 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B5EE
	bl sub_08007510
	cmp r0, #0
	bne _0802B5EE
	bl sub_08007604
	cmp r0, #0
	bne _0802B5EE
	bl sub_08007544
	cmp r0, #0
	bne _0802B5EE
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	mov r4, sl
	str r4, [sp]
	ldr r2, [sp, #0x44]
	movs r3, #4
	bl StartSpellEffect
_0802B5EE:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0x68]
	cmp r6, r0
	blo _0802B568
_0802B5FA:
	ldr r1, [sp, #0x70]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802B60E
_0802B602:
	bl WaitFrame
	ldr r2, [sp, #0x70]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802B602
_0802B60E:
	ldr r2, _0802B634 @ =gUnknown_030067F0
	ldr r3, [sp, #0x7c]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x48]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802B620:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B630: .4byte gUnknown_030063D8
_0802B634: .4byte gUnknown_030067F0

	thumb_func_start sub_0802B638
sub_0802B638: @ 0x0802B638
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r6, #0xd4
	adds r1, r0, #0
	adds r0, r1, #0
	muls r0, r6, r0
	ldr r5, _0802B6B8 @ =gPlayers
	adds r7, r0, r5
	bl GetMultiplayerId
	mov sl, r0
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov r8, r0
	mov r2, r8
	str r2, [sp, #0xc]
	ldr r4, [sp, #4]
	cmp sl, r4
	bne _0802B6FA
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r5, r0, r5
	ldr r1, _0802B6BC @ =0x080FBB84
	mov r2, r8
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _0802B6A2
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802B6A2:
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802B6C0
	movs r0, #0
	b _0802B6C2
	.align 2, 0
_0802B6B8: .4byte gPlayers
_0802B6BC: .4byte 0x080FBB84
_0802B6C0:
	adds r0, r1, #1
_0802B6C2:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802B6E0
	ldr r0, _0802B6DC @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	strh r4, [r7, #0x12]
	strh r4, [r7, #0x14]
	b _0802BA1E
	.align 2, 0
_0802B6DC: .4byte 0x0009001B
_0802B6E0:
	adds r2, r7, #0
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802B6FA
	movs r0, #0
	strh r0, [r2]
_0802B6FA:
	adds r0, r7, #0
	adds r0, #0x72
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r2, [sp, #4]
	lsls r2, r2, #2
	str r2, [sp, #0x18]
	cmp r1, #1
	bhi _0802B71E
_0802B70C:
	ldrh r0, [r7, #0xc]
	cmp r0, #7
	bne _0802B714
	b _0802B8F6
_0802B714:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #1
	bls _0802B70C
_0802B71E:
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	str r0, [sp, #0x10]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x14]
	movs r5, #0
	movs r4, #0
	movs r0, #0x76
	adds r0, r0, r7
	mov sb, r0
	b _0802B7A6
_0802B73E:
	movs r0, #0xd4
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0802B810 @ =gPlayers
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _0802B7A0
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldr r2, [sp, #0x10]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r0, r8
	cmp r0, #0
	beq _0802B7A0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802B782
	rsbs r0, r0, #0
_0802B782:
	cmp r0, #0xc
	bgt _0802B7A0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802B790
	rsbs r0, r0, #0
_0802B790:
	cmp r0, #0xc
	bgt _0802B7A0
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	add r0, sp
	strb r4, [r0]
_0802B7A0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802B7A6:
	bl sub_08001EC4
	cmp r4, r0
	blo _0802B73E
	movs r4, #0
	cmp r4, r5
	bhs _0802B7C8
_0802B7B4:
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	bl StartItemUseEffect
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0802B7B4
_0802B7C8:
	mov r2, sb
	ldrh r0, [r2]
	cmp r0, #0
	bne _0802B7DC
_0802B7D0:
	bl WaitFrame
	mov r4, sb
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802B7D0
_0802B7DC:
	ldr r0, [sp, #4]
	cmp sl, r0
	beq _0802B7E4
	b _0802B908
_0802B7E4:
	bl sub_08007544
	cmp r0, #0
	bne _0802B7FA
	bl sub_080075AC
	cmp r0, #0
	bne _0802B7FA
	movs r0, #0x2d
	bl PlaySE
_0802B7FA:
	ldr r1, [sp, #4]
	cmp sl, r1
	beq _0802B802
	b _0802B908
_0802B802:
	mov r2, r8
	cmp r2, #0
	bne _0802B814
	movs r4, #1
	str r4, [sp, #0xc]
	b _0802B866
	.align 2, 0
_0802B810: .4byte gPlayers
_0802B814:
	mov r0, r8
	cmp r0, #0
	blt _0802B866
	cmp r0, #5
	bgt _0802B866
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B82C
	rsbs r0, r0, #0
_0802B82C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #9
	bl __umodsi3
	adds r0, #0x1b
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B84A
	rsbs r0, r0, #0
_0802B84A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #5
	bl __umodsi3
	adds r0, #0xb
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r8
	muls r0, r4, r0
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
_0802B866:
	adds r2, r7, #0
	adds r2, #0x7a
	ldrh r0, [r2]
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _0802B886
	strh r3, [r2]
_0802B886:
	movs r4, #0
	movs r3, #0
	adds r5, r7, #0
	adds r5, #0x24
	ldr r0, _0802B8A8 @ =0x0000FFFF
	adds r6, r0, #0
_0802B892:
	ldr r0, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #3
	beq _0802B8CC
	cmp r0, #3
	ble _0802B8AC
	cmp r0, #4
	beq _0802B8D4
	b _0802B8E4
	.align 2, 0
_0802B8A8: .4byte 0x0000FFFF
_0802B8AC:
	cmp r0, #1
	blt _0802B8E4
	mov r0, r8
	cmp r0, #2
	bls _0802B8E4
	strh r3, [r1]
	adds r1, r5, r2
	ldrh r0, [r1]
	orrs r0, r6
	strh r0, [r1]
	movs r0, #0x73
	str r3, [sp, #0x1c]
	bl StopSE
	ldr r3, [sp, #0x1c]
	b _0802B8E4
_0802B8CC:
	mov r0, r8
	cmp r0, #3
	bls _0802B8E4
	b _0802B8DA
_0802B8D4:
	mov r0, r8
	cmp r0, #4
	bls _0802B8E4
_0802B8DA:
	strh r3, [r1]
	adds r1, r5, r2
	ldrh r0, [r1]
	orrs r0, r6
	strh r0, [r1]
_0802B8E4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0802B892
	movs r0, #0
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	b _0802BA0C
_0802B8F6:
	ldr r2, _0802B904 @ =gUnknown_030067F0
	ldr r1, [sp, #0x18]
	adds r2, r1, r2
	movs r1, #1
	ldr r4, [sp, #8]
	lsls r1, r4
	b _0802BA18
	.align 2, 0
_0802B904: .4byte gUnknown_030067F0
_0802B908:
	movs r4, #0
	cmp r4, r5
	blo _0802B910
	b _0802BA0C
_0802B910:
	mov r0, r8
	cmp r0, #0
	beq _0802BA0C
_0802B916:
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, sl
	bne _0802B9FC
	movs r0, #0xd4
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _0802B9B0 @ =gPlayers
	adds r6, r1, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B938
	rsbs r0, r0, #0
_0802B938:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #9
	bl __umodsi3
	adds r0, #0x1b
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B956
	rsbs r0, r0, #0
_0802B956:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #5
	bl __umodsi3
	adds r0, #0xb
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r8
	muls r0, r4, r0
	subs r0, r0, r5
	lsls r0, r0, #0x10
	adds r2, r6, #0
	adds r2, #0x7a
	lsrs r0, r0, #0x10
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _0802B98E
	strh r3, [r2]
_0802B98E:
	movs r4, #0
	movs r3, #0
	adds r5, r6, #0
	adds r5, #0x24
	ldr r0, _0802B9B4 @ =0x0000FFFF
	adds r7, r0, #0
_0802B99A:
	ldr r0, [r6, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #3
	beq _0802B9D8
	cmp r0, #3
	ble _0802B9B8
	cmp r0, #4
	beq _0802B9E0
	b _0802B9F0
	.align 2, 0
_0802B9B0: .4byte gPlayers
_0802B9B4: .4byte 0x0000FFFF
_0802B9B8:
	cmp r0, #1
	blt _0802B9F0
	mov r0, r8
	cmp r0, #2
	bls _0802B9F0
	strh r3, [r1]
	adds r1, r5, r2
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
	movs r0, #0x73
	str r3, [sp, #0x1c]
	bl StopSE
	ldr r3, [sp, #0x1c]
	b _0802B9F0
_0802B9D8:
	mov r0, r8
	cmp r0, #3
	bls _0802B9F0
	b _0802B9E6
_0802B9E0:
	mov r0, r8
	cmp r0, #4
	bls _0802B9F0
_0802B9E6:
	strh r3, [r1]
	adds r1, r5, r2
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
_0802B9F0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0802B99A
	b _0802BA0C
_0802B9FC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bhs _0802BA0C
	mov r1, r8
	cmp r1, #0
	bne _0802B916
_0802BA0C:
	ldr r2, _0802BA30 @ =gUnknown_030067F0
	ldr r4, [sp, #0x18]
	adds r2, r4, r2
	movs r1, #1
	ldr r0, [sp, #8]
	lsls r1, r0
_0802BA18:
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802BA1E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BA30: .4byte gUnknown_030067F0
