	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801DBC8
sub_0801DBC8: @ 0x0801DBC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x48]
	ldr r4, _0801DC5C @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x90
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x38]
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x3c]
	mov r5, sp
	subs r5, r5, r0
	mov sp, r5
	adds r5, #0x10
	str r5, [r7, #0x40]
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801DC60 @ =gPlayers
	adds r1, r1, r0
	str r1, [r7, #0x44]
	movs r1, #0
	ldr r0, [r4]
	adds r0, #0x90
	ldrh r0, [r0]
	cmp r1, r0
	bhs _0801DC46
	movs r5, #0
	adds r6, r4, #0
	ldr r4, [r7, #0x38]
	ldr r3, [r7, #0x40]
	ldr r2, [r7, #0x3c]
_0801DC2E:
	strh r5, [r2]
	strh r5, [r3]
	strh r5, [r4]
	adds r4, #2
	adds r3, #2
	adds r2, #2
	adds r1, #1
	ldr r0, [r6]
	adds r0, #0x90
	ldrh r0, [r0]
	cmp r1, r0
	blo _0801DC2E
_0801DC46:
	ldr r0, _0801DC5C @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	ldr r1, [r0, #0x18]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	b _0801DFCA
	.align 2, 0
_0801DC5C: .4byte gUnknown_030063D8
_0801DC60: .4byte gPlayers
_0801DC64:
	bl sub_080075AC
	cmp r0, #0
	beq _0801DC6E
	b _0801DFC6
_0801DC6E:
	bl sub_08007510
	cmp r0, #0
	beq _0801DC78
	b _0801DFC6
_0801DC78:
	bl sub_08007544
	cmp r0, #0
	beq _0801DC82
	b _0801DFC6
_0801DC82:
	bl sub_08007604
	cmp r0, #0
	beq _0801DC8C
	b _0801DFC6
_0801DC8C:
	ldr r0, [r4]
	ldr r6, [r0, #0x34]
	str r6, [r7, #0x60]
	movs r1, #0
	adds r0, #0x90
	ldrh r0, [r0]
	cmp r1, r0
	blo _0801DC9E
	b _0801DFC6
_0801DC9E:
	movs r0, #0x34
	adds r0, r0, r7
	mov sl, r0
	adds r2, r7, #0
	adds r2, #0x36
	str r2, [r7, #0x5c]
	adds r3, r7, #0
	adds r3, #0x1c
	str r3, [r7, #0x50]
_0801DCB0:
	movs r4, #0
	movs r3, #0
	mov r8, r3
	lsls r5, r1, #1
	str r5, [r7, #0x54]
	adds r1, #1
	str r1, [r7, #0x4c]
	ldr r6, [r7, #0x60]
	adds r6, #0x1c
	str r6, [r7, #0x58]
	ldr r2, [r7, #0x60]
	adds r2, #8
_0801DCC8:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0801DCE8
	ldr r1, _0801DD4C @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0x92
	ldrh r1, [r0]
	ldrh r0, [r2]
	subs r0, #1
	asrs r1, r0
	movs r5, #1
	ands r1, r5
	cmp r1, #0
	beq _0801DCE6
	adds r4, #1
_0801DCE6:
	adds r3, #1
_0801DCE8:
	adds r2, #2
	movs r6, #1
	add r8, r6
	mov r0, r8
	cmp r0, #7
	bls _0801DCC8
	cmp r3, r4
	bne _0801DD1A
	ldr r1, [r7, #0x38]
	ldr r2, [r7, #0x54]
	adds r4, r1, r2
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801DD10
	movs r0, #0x71
	bl PlaySE
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0801DD10:
	ldr r3, [r7, #0x3c]
	ldr r4, [r7, #0x54]
	adds r0, r3, r4
	movs r5, #1
	strh r5, [r0]
_0801DD1A:
	ldr r6, [r7, #0x3c]
	ldr r1, [r7, #0x54]
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801DD50
	ldr r2, [r7, #0x60]
	ldrh r0, [r2, #6]
	cmp r0, #0
	beq _0801DD30
	b _0801DF4A
_0801DD30:
	ldr r3, [r7, #0x40]
	adds r1, r3, r1
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bhi _0801DD44
	b _0801DF4A
_0801DD44:
	movs r0, #0x20
	strh r0, [r1]
	b _0801DF4A
	.align 2, 0
_0801DD4C: .4byte gUnknown_030063D8
_0801DD50:
	ldr r4, [r7, #0x60]
	ldrh r1, [r4]
	lsls r1, r1, #3
	ldr r5, [r7, #0x44]
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	mov r6, sl
	strh r1, [r6]
	ldrh r1, [r4, #2]
	lsls r1, r1, #3
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r7, #0x5c]
	strh r1, [r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
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
	ldrh r0, [r5, #0xc]
	movs r1, #0x14
	cmp r0, #5
	bne _0801DD9C
	movs r1, #0x20
_0801DD9C:
	cmp r4, r1
	bhs _0801DE2A
	adds r4, r1, #0
	mov r5, sl
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [r7, #0x5c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x1c
	ldr r5, _0801DFF8 @ =0x0805289C
	ldr r0, _0801DFFC @ =0x080FB730
	adds r0, r1, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r5
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r3, r0, #0
	muls r3, r4, r3
	lsls r0, r1, #5
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r6, [r7, #0x44]
	ldr r0, [r6, #0x58]
	adds r3, r3, r0
	ldr r0, [r6, #0x5c]
	adds r2, r2, r0
	ldr r0, _0801E000 @ =0x080FB720
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r3, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801DE2A
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0801E004 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r3, r0, #0
	muls r3, r4, r3
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r5, #0
	ldrsh r0, [r1, r5]
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r0, [r6, #0x58]
	adds r0, r0, r3
	str r0, [r6, #0x58]
	ldr r0, [r6, #0x5c]
	adds r0, r0, r2
	str r0, [r6, #0x5c]
_0801DE2A:
	movs r6, #0
	mov r8, r6
	mov sb, sl
_0801DE30:
	ldr r0, _0801E008 @ =gActiveEnemyMask
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801DF1E
	ldr r2, _0801E00C @ =gEnemies
	movs r0, #0x94
	mov r1, r8
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r3, [r7, #0x60]
	ldrh r1, [r3]
	lsls r1, r1, #3
	ldr r0, [r5, #0x10]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	mov r4, sb
	strh r1, [r4]
	ldrh r1, [r3, #2]
	lsls r1, r1, #3
	ldr r0, [r5, #0x14]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r6, [r7, #0x5c]
	strh r1, [r6]
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
	cmp r4, #0x13
	bhi _0801DF1E
	movs r0, #0x14
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r6, sl
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [r7, #0x5c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x1c
	ldr r6, _0801DFF8 @ =0x0805289C
	ldr r0, _0801DFFC @ =0x080FB730
	adds r0, r1, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r3, r0, #0
	muls r3, r4, r3
	lsls r0, r1, #5
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r0, [r5, #0x10]
	adds r3, r3, r0
	ldr r0, [r5, #0x14]
	adds r2, r2, r0
	ldr r0, _0801E000 @ =0x080FB720
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r3, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801DF1E
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0801E004 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r6
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r3, r0, #0
	muls r3, r4, r3
	lsls r1, r1, #5
	adds r1, r1, r6
	movs r6, #0
	ldrsh r0, [r1, r6]
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r0, [r5, #0x10]
	adds r0, r0, r3
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	adds r0, r0, r2
	str r0, [r5, #0x14]
_0801DF1E:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #4
	bls _0801DE30
	ldr r2, [r7, #0x60]
	ldrh r3, [r2, #6]
	cmp r3, #0
	bne _0801DF4A
	ldr r4, [r7, #0x40]
	ldr r5, [r7, #0x54]
	adds r2, r4, r5
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r1, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DF4A
	strh r3, [r2]
_0801DF4A:
	ldr r1, [r7, #0x60]
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, sl
	ldr r3, [r7, #0x5c]
	bl sub_08005FC4
	ldr r2, [r7, #0x60]
	ldrh r0, [r2]
	lsls r0, r0, #3
	ldrh r1, [r2, #2]
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r7, #0
	bl sub_08026B74
	mov r3, sl
	movs r5, #0
	ldrsh r0, [r3, r5]
	ldr r6, [r7, #0x5c]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [r7, #0x40]
	ldr r5, [r7, #0x54]
	adds r2, r3, r5
	ldrh r2, [r2]
	subs r1, r1, r2
	ldr r6, [r7, #0x60]
	ldrh r2, [r6, #4]
	str r4, [sp]
	ldr r3, [r7, #0x50]
	str r3, [sp, #4]
	ldr r3, [r7, #8]
	str r3, [sp, #8]
	ldr r3, [r7]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08004344
	ldr r1, [r7, #0x4c]
	ldr r4, [r7, #0x58]
	str r4, [r7, #0x60]
	ldr r5, _0801E010 @ =gUnknown_030063D8
	ldr r0, [r5]
	adds r0, #0x90
	ldrh r0, [r0]
	cmp r1, r0
	bhs _0801DFC6
	b _0801DCB0
_0801DFC6:
	bl WaitFrame
_0801DFCA:
	bl sub_080074CC
	cmp r0, #0
	bne _0801DFE4
	ldr r4, _0801E010 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801DFE4
	b _0801DC64
_0801DFE4:
	ldr r6, [r7, #0x48]
	mov sp, r6
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFF8: .4byte 0x0805289C
_0801DFFC: .4byte 0x080FB730
_0801E000: .4byte 0x080FB720
_0801E004: .4byte 0x080FB9FC
_0801E008: .4byte gActiveEnemyMask
_0801E00C: .4byte gEnemies
_0801E010: .4byte gUnknown_030063D8
