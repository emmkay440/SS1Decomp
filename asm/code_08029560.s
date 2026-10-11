	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08029560
sub_08029560: @ 0x08029560
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x10]
	mov sl, r1
	adds r6, r2, #0
	ldr r0, [sp, #0x40]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08029654 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, _08029658 @ =0x080548EC
	add r0, sp, #4
	movs r2, #0xa
	bl memcpy
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	cmp r7, #4
	bls _080295A6
	movs r7, #4
_080295A6:
	movs r0, #0
	mov ip, r0
	lsls r0, r7, #1
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	str r0, [sp, #0x18]
	movs r2, #0
	mov r8, r2
_080295B8:
	ldr r0, _0802965C @ =gActiveEnemyMask
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802966A
	ldr r2, _08029660 @ =gEnemies
	movs r0, #0x94
	mov r1, r8
	muls r1, r0, r1
	ldr r0, [r2]
	adds r3, r0, r1
	ldrh r5, [r3, #0xa]
	cmp r5, #9
	beq _0802966A
	ldr r1, [r3, #0x10]
	ldr r0, [sp, #0x10]
	subs r1, r1, r0
	lsls r1, r1, #4
	ldr r0, [r3, #0x14]
	mov r2, sl
	subs r0, r0, r2
	lsls r0, r0, #4
	lsrs r4, r0, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _080295F4
	rsbs r1, r1, #0
_080295F4:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r1, r2
	bge _0802966A
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08029608
	rsbs r0, r0, #0
_08029608:
	cmp r0, r2
	bge _0802966A
	ldr r0, [sp, #0x1c]
	cmp r0, r6
	bne _08029664
	cmp r5, #8
	beq _08029666
	ldr r1, [r3, #0x30]
	ldr r2, [sp, #0x14]
	ldr r0, [r2, #0x7c]
	cmp r1, r0
	beq _08029666
	adds r0, r6, #0
	adds r1, r3, #0
	adds r2, r7, #0
	mov r3, sb
	bl sub_080297D4
	bl sub_08007544
	cmp r0, #0
	bne _08029642
	bl sub_080075AC
	cmp r0, #0
	bne _08029642
	movs r0, #0x1a
	bl PlaySE
_08029642:
	str r7, [sp]
	ldr r0, [sp, #0x10]
	mov r1, sl
	adds r2, r6, #0
	mov r3, sb
	bl StartSpellEffect
	b _08029666
	.align 2, 0
_08029654: .4byte gPlayers
_08029658: .4byte 0x080548EC
_0802965C: .4byte gActiveEnemyMask
_08029660: .4byte gEnemies
_08029664:
	strh r6, [r3, #0x34]
_08029666:
	movs r0, #1
	mov ip, r0
_0802966A:
	movs r2, #1
	add r8, r2
	mov r0, r8
	cmp r0, #4
	bls _080295B8
	mov r0, ip
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08029688
sub_08029688: @ 0x08029688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	bl sub_08016D4C
	adds r5, r0, #0
	bl GetMultiplayerId
	ldr r0, _08029710 @ =gPlayerStats
	movs r2, #0x28
	ldrsh r1, [r0, r2]
	mov sl, r1
	ldr r1, _08029714 @ =0x080FBB84
	ldr r2, [sp]
	lsls r0, r2, #4
	adds r0, r0, r1
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov sb, r0
	cmp r7, #0
	beq _0802972E
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080296D6
	rsbs r0, r0, #0
_080296D6:
	movs r1, #0x14
	bl __umodsi3
	adds r2, r0, #0
	adds r2, #0x64
	adds r0, r7, #1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xa
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xc8
	muls r0, r1, r0
	muls r0, r2, r0
	ldr r1, _08029718 @ =0x00055730
	bl __udivsi3
	adds r3, r0, #0
	mov r2, r8
	ldrh r0, [r2, #2]
	cmp r0, #2
	beq _08029726
	cmp r0, #2
	bgt _0802971C
	cmp r0, #1
	beq _08029722
	b _08029760
	.align 2, 0
_08029710: .4byte gPlayerStats
_08029714: .4byte 0x080FBB84
_08029718: .4byte 0x00055730
_0802971C:
	cmp r0, #3
	beq _0802972A
	b _08029760
_08029722:
	ldrh r6, [r4, #0x14]
	b _08029760
_08029726:
	ldrh r6, [r4, #0x16]
	b _08029760
_0802972A:
	ldrh r6, [r4, #0x18]
	b _08029760
_0802972E:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802973C
	rsbs r0, r0, #0
_0802973C:
	movs r1, #0x32
	bl __umodsi3
	adds r2, r0, #0
	adds r2, #0x64
	lsls r0, r5, #1
	adds r0, r0, r5
	adds r0, #0xf
	mov r1, sb
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xc8
	muls r0, r1, r0
	muls r0, r2, r0
	ldr r1, _08029778 @ =0x000F4240
	bl __udivsi3
	adds r3, r0, #0
_08029760:
	ldr r0, _0802977C @ =0x080FBB84
	ldr r1, [sp]
	lsls r2, r1, #4
	adds r1, r2, r0
	ldrh r1, [r1, #2]
	cmp r1, #2
	beq _0802978A
	cmp r1, #2
	bgt _08029780
	cmp r1, #1
	beq _08029786
	b _08029790
	.align 2, 0
_08029778: .4byte 0x000F4240
_0802977C: .4byte 0x080FBB84
_08029780:
	cmp r1, #3
	beq _0802978E
	b _08029790
_08029786:
	ldrh r6, [r4, #0x14]
	b _08029790
_0802978A:
	ldrh r6, [r4, #0x16]
	b _08029790
_0802978E:
	ldrh r6, [r4, #0x18]
_08029790:
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080297A6
	movs r0, #0x6e
	subs r0, r0, r6
	muls r0, r3, r0
	movs r1, #0x3c
	bl __udivsi3
	adds r3, r0, #0
_080297A6:
	ldrh r0, [r4, #0x12]
	cmp r0, #1
	bne _080297BE
	ldr r2, [sp]
	cmp r2, #3
	bne _080297BE
	movs r0, #0x96
	muls r0, r3, r0
	movs r1, #0x64
	bl __udivsi3
	adds r3, r0, #0
_080297BE:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080297D4
sub_080297D4: @ 0x080297D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _080298A0 @ =gPlayers
	adds r7, r1, r0
	cmp r4, #1
	bne _0802983E
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	subs r0, #0x4b
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08029822
	rsbs r0, r0, #0
_08029822:
	cmp r8, r0
	ble _0802983E
	strh r4, [r5, #0x3e]
	bl sub_08007544
	cmp r0, #0
	bne _0802983E
	bl sub_080075AC
	cmp r0, #0
	bne _0802983E
	movs r0, #0x29
	bl PlaySE
_0802983E:
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08029688
	strh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x28]
	adds r0, r0, r1
	strh r0, [r5, #0x28]
	ldr r0, [r7, #0x7c]
	str r0, [r5, #0x30]
	movs r0, #7
	strh r0, [r5, #0xa]
	mov r2, sb
	strh r2, [r5, #0x34]
	movs r0, #1
	strh r0, [r5, #0x36]
	movs r1, #0
	movs r0, #0xa2
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0xc8
	ldr r7, _080298A4 @ =0x0000FFFF
_08029870:
	mov r2, r8
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	adds r0, r0, r4
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [r6]
	movs r1, #0x94
	muls r0, r1, r0
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, r7
	bne _080298A8
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #0x94
	bl memcpy
	b _080298B4
	.align 2, 0
_080298A0: .4byte gPlayers
_080298A4: .4byte 0x0000FFFF
_080298A8:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08029870
_080298B4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080298C0
sub_080298C0: @ 0x080298C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	str r0, [sp, #0x2c]
	ldrh r7, [r4]
	ldrh r1, [r4, #2]
	mov r8, r1
	ldr r0, _080298FC @ =0x00100004
	bl GetDataRecord
	mov sb, r0
	ldr r0, _08029900 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x28]
	ldr r0, _08029904 @ =0x00130004
	bl GetDataRecord
	ldrh r5, [r4, #4]
	ldrh r6, [r4, #6]
	cmp r6, #3
	bls _08029908
	movs r6, #1
	b _0802990A
	.align 2, 0
_080298FC: .4byte 0x00100004
_08029900: .4byte 0x00110004
_08029904: .4byte 0x00130004
_08029908:
	movs r6, #0
_0802990A:
	cmp r5, #4
	bne _08029910
	movs r5, #0
_08029910:
	cmp r5, #7
	bne _0802991A
	movs r5, #0xa
	movs r6, #0
	b _08029928
_0802991A:
	cmp r5, #5
	bne _08029924
	movs r5, #9
	movs r6, #0
	b _08029928
_08029924:
	lsls r0, r5, #0x11
	lsrs r5, r0, #0x10
_08029928:
	add r3, sp, #0x24
	movs r0, #0
	strh r0, [r3]
	mov r2, sp
	adds r2, #0x26
	strh r0, [r2]
	add r0, sp, #0x10
	movs r1, #8
	strb r1, [r0, #5]
	strb r1, [r0, #8]
	lsls r2, r7, #0x10
	str r2, [sp, #0x34]
	mov r7, r8
	lsls r7, r7, #0x10
	str r7, [sp, #0x38]
	adds r5, #0xc
	str r5, [sp, #0x30]
	add r0, sp, #0x20
	mov r8, r0
	mov r1, sp
	adds r1, #0x22
	str r1, [sp, #0x3c]
	mov sl, r3
_08029956:
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, [sp, #0x34]
	asrs r0, r3, #0x10
	ldr r7, [sp, #0x38]
	asrs r1, r7, #0x10
	mov r2, r8
	ldr r3, [sp, #0x3c]
	bl sub_08005FC4
	ldr r1, [sp, #0x30]
	adds r0, r6, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	str r2, [sp]
	adds r0, r4, #0
	mov r1, sl
	mov r2, sp
	adds r2, #0x26
	mov r3, sb
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08029A04 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080299DC
	bl sub_08007510
	cmp r0, #0
	bne _080299DC
	bl sub_08007604
	cmp r0, #0
	bne _080299DC
	bl sub_08007544
	adds r2, r0, #0
	cmp r2, #0
	bne _080299DC
	mov r3, r8
	movs r7, #0
	ldrsh r0, [r3, r7]
	ldr r3, [sp, #0x3c]
	movs r7, #0
	ldrsh r1, [r3, r7]
	adds r1, #1
	mov r7, sl
	ldrh r3, [r7]
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r7, sb
	str r7, [sp, #8]
	ldr r2, [sp, #0x28]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_080299DC:
	bl WaitFrame
	cmp r5, #0
	beq _08029956
	ldr r2, _08029A08 @ =gUnknown_03006800
	movs r1, #1
	ldr r3, [sp, #0x2c]
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029A04: .4byte gUnknown_030063D8
_08029A08: .4byte gUnknown_03006800
