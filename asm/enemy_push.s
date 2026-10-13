	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800B594
sub_0800B594: @ 0x0800B594
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0800B5FC @ =gEnemies
	ldr r0, [r0]
	mov sb, r0
	movs r0, #0
	mov sl, r0
_0800B5AA:
	ldr r0, _0800B600 @ =gFrameCounter
	ldr r1, [r0]
	movs r2, #1
	ands r1, r2
	mov r0, sl
	ands r0, r2
	cmp r1, r0
	beq _0800B5BC
	b _0800B758
_0800B5BC:
	ldr r0, _0800B604 @ =gActiveEnemyMask
	adds r1, r2, #0
	mov r2, sl
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0800B5CE
	b _0800B758
_0800B5CE:
	mov r0, sb
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0800B5E2
	ldr r0, _0800B608 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _0800B60C
_0800B5E2:
	mov r0, sb
	ldrh r1, [r0, #0xa]
	cmp r1, #8
	beq _0800B5F6
	ldrh r0, [r0, #0x26]
	ldrh r2, [r7, #0x16]
	cmp r0, r2
	bne _0800B5F6
	cmp r1, #9
	bne _0800B630
_0800B5F6:
	mov r1, sl
	lsls r0, r1, #1
	b _0800B620
	.align 2, 0
_0800B5FC: .4byte gEnemies
_0800B600: .4byte gFrameCounter
_0800B604: .4byte gActiveEnemyMask
_0800B608: .4byte gMapLayer_03003910
_0800B60C:
	mov r2, sb
	ldrh r0, [r2, #0xa]
	cmp r0, #0
	beq _0800B61C
	ldrh r0, [r2, #0x26]
	ldrh r1, [r7, #0x16]
	cmp r0, r1
	beq _0800B630
_0800B61C:
	mov r2, sl
	lsls r0, r2, #1
_0800B620:
	adds r1, r7, #0
	adds r1, #0xae
	adds r1, r1, r0
	ldr r0, _0800B62C @ =0x00007FFF
	strh r0, [r1]
	b _0800B758
	.align 2, 0
_0800B62C: .4byte 0x00007FFF
_0800B630:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, [r7, #0x58]
	subs r0, r0, r1
	asrs r3, r0, #0xc
	lsls r5, r3, #0x10
	lsrs r5, r5, #0x10
	mov r2, sb
	ldr r0, [r2, #0x14]
	ldr r1, [r7, #0x5c]
	subs r0, r0, r1
	asrs r2, r0, #0xc
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	adds r0, r3, #0
	muls r0, r3, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	mov r1, sl
	lsls r6, r1, #1
	adds r2, r7, #0
	adds r2, #0xae
	adds r2, r2, r6
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	strh r0, [r2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl ArcTan2
	lsls r3, r0, #0x10
	ldr r1, _0800B6A8 @ =0x080FB4B8
	mov r0, sb
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #8
	lsrs r4, r0, #1
	lsls r1, r3, #4
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _0800B6AC
	adds r2, r7, #0
	adds r2, #0xb8
	adds r1, r2, r6
	lsrs r0, r3, #0x1c
	adds r0, #1
	b _0800B6B4
	.align 2, 0
_0800B6A8: .4byte 0x080FB4B8
_0800B6AC:
	adds r2, r7, #0
	adds r2, #0xb8
	adds r1, r2, r6
	lsrs r0, r3, #0x1c
_0800B6B4:
	strh r0, [r1]
	adds r0, r2, r6
	ldrh r2, [r0]
	movs r1, #0xf
	ands r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	cmp r8, r4
	bhs _0800B758
	mov r1, r8
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r5, _0800B77C @ =0x0805289C
	ldr r0, _0800B780 @ =0x080FB730
	adds r0, r2, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	lsls r0, r1, #5
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, r8
	muls r2, r0, r2
	ldr r0, [r7, #0x58]
	adds r3, r3, r0
	ldr r0, [r7, #0x5c]
	adds r2, r2, r0
	ldr r0, _0800B784 @ =0x080FB720
	adds r1, r1, r0
	ldrb r6, [r1]
	movs r4, #0
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800B714
	movs r4, #1
_0800B714:
	adds r0, r6, #0
	adds r1, r3, #0
	adds r3, r4, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800B758
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0800B788 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r2, r8
	muls r2, r0, r2
	ldr r0, [r7, #0x58]
	adds r0, r0, r3
	str r0, [r7, #0x58]
	ldr r0, [r7, #0x5c]
	adds r0, r0, r2
	str r0, [r7, #0x5c]
_0800B758:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0x94
	add sb, r0
	mov r1, sl
	cmp r1, #4
	bhi _0800B76E
	b _0800B5AA
_0800B76E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B77C: .4byte 0x0805289C
_0800B780: .4byte 0x080FB730
_0800B784: .4byte 0x080FB720
_0800B788: .4byte 0x080FB9FC
