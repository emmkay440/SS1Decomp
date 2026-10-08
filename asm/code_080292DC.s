	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080292DC
sub_080292DC: @ 0x080292DC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r4, _08029338 @ =0x03006730
	ldr r0, _0802933C @ =sub_08027A90
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	mov r8, r1
	add r0, r8
	str r0, [r4, #0x10]
	movs r6, #0x65
	str r6, [r4, #8]
	ldr r5, _08029340 @ =sub_08029468
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
	ldr r4, _08029344 @ =0x030066F0
	ldr r0, _08029348 @ =sub_08027E40
	str r0, [r4, #0xc]
	mov r0, sb
	bl Alloc
	str r0, [r4, #0x20]
	add r0, r8
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029338: .4byte 0x03006730
_0802933C: .4byte sub_08027A90
_08029340: .4byte sub_08029468
_08029344: .4byte 0x030066F0
_08029348: .4byte sub_08027E40

	thumb_func_start sub_0802934C
sub_0802934C: @ 0x0802934C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	b _0802935A
_08029356:
	bl WaitFrame
_0802935A:
	ldr r0, _080293A4 @ =0x03006760
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _08029356
	ldr r0, _080293A8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xda
	strb r5, [r0]
	movs r1, #1
	str r1, [r6]
	ldr r0, _080293AC @ =gUnknown_030066E8
	str r1, [r0]
	ldr r4, _080293A4 @ =0x03006760
	ldr r0, _080293B0 @ =sub_08028DB0
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x65
	str r0, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl CreateThread
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080293A4: .4byte 0x03006760
_080293A8: .4byte 0x030063D8
_080293AC: .4byte gUnknown_030066E8
_080293B0: .4byte sub_08028DB0

	thumb_func_start sub_080293B4
sub_080293B4: @ 0x080293B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08029410 @ =0x03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _080293CA
	movs r0, #0
	str r0, [r1]
_080293CA:
	movs r2, #0
	ldr r0, [r1]
	ldr r3, _08029414 @ =0x03006720
	mov r8, r3
	cmp r2, r0
	bhs _080293F4
	mov ip, r8
	adds r4, r1, #0
	movs r3, #0
_080293DC:
	mov r5, ip
	ldr r0, [r5]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	adds r3, #0xc
	adds r2, #1
	ldr r0, [r4]
	cmp r2, r0
	blo _080293DC
_080293F4:
	mov r6, r8
	ldr r0, [r6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1, #0xa]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029410: .4byte 0x03006758
_08029414: .4byte 0x03006720

	thumb_func_start sub_08029418
sub_08029418: @ 0x08029418
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0802945C @ =0x03006758
_0802941E:
	ldr r0, [r5]
	adds r4, #1
	cmp r0, #1
	bls _08029428
	movs r4, #0
_08029428:
	bl WaitFrame
	cmp r4, #0x3b
	bls _0802941E
	ldr r4, _08029460 @ =0x03006730
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08029442
	adds r0, r4, #0
	bl KillThread
_08029442:
	ldr r4, _08029464 @ =0x030066F0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08029454
	adds r0, r4, #0
	bl KillThread
_08029454:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802945C: .4byte 0x03006758
_08029460: .4byte 0x03006730
_08029464: .4byte 0x030066F0

	thumb_func_start sub_08029468
sub_08029468: @ 0x08029468
	push {r4, lr}
	ldr r4, _08029480 @ =0x03006720
	ldr r0, [r4]
	cmp r0, #0
	beq _0802947A
	bl Free
	movs r0, #0
	str r0, [r4]
_0802947A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029480: .4byte 0x03006720

	thumb_func_start sub_08029484
sub_08029484: @ 0x08029484
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08001F98
	cmp r0, #0
	bne _08029498
	movs r0, #1
	b _080294D2
_08029498:
	ldr r3, _080294C8 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _080294D0
	ldr r1, _080294CC @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	lsls r2, r4, #4
	movs r0, #0xe
	orrs r0, r2
	strb r0, [r1, #4]
	strb r5, [r1]
	strb r6, [r1, #5]
	movs r0, #1
	b _080294D2
	.align 2, 0
_080294C8: .4byte 0x03006758
_080294CC: .4byte 0x03006720
_080294D0:
	movs r0, #0
_080294D2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080294D8:
	.byte 0x04, 0x48, 0x02, 0x68, 0x51, 0x89, 0x01, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x04, 0xD1, 0x00, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x20, 0x67, 0x00, 0x03
	.byte 0x10, 0x1C, 0x70, 0x47

	thumb_func_start sub_080294F4
sub_080294F4: @ 0x080294F4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0802952C @ =0x03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08029530 @ =0x03006758
	ldr r0, [r0]
	cmp r3, r0
	bhs _0802953C
	movs r7, #0xb
	adds r4, r0, #0
	movs r6, #4
_0802950C:
	ldrh r1, [r2, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08029534
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08029534
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r5
	bne _08029534
	adds r0, r2, #0
	b _0802953E
	.align 2, 0
_0802952C: .4byte 0x03006720
_08029530: .4byte 0x03006758
_08029534:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _0802950C
_0802953C:
	movs r0, #0
_0802953E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08029544:
	.byte 0x04, 0x48, 0x02, 0x68, 0x51, 0x89, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x04, 0xD1, 0x00, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x20, 0x67, 0x00, 0x03, 0x10, 0x1C, 0x70, 0x47

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
	ldr r0, _08029A04 @ =0x030063D8
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
	ldr r2, _08029A08 @ =0x03006800
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
_08029A04: .4byte 0x030063D8
_08029A08: .4byte 0x03006800

	thumb_func_start StartSpellEffect
StartSpellEffect: @ 0x08029A0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov ip, r1
	mov sb, r2
	ldr r0, [sp, #0x1c]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r7, #0
	ldr r4, _08029ABC @ =0x03006800
	movs r1, #1
	ldr r0, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08029A46
	movs r5, #1
_08029A34:
	adds r7, #1
	cmp r7, #0x1f
	bhi _08029AB0
	adds r1, r5, #0
	lsls r1, r7
	ldr r0, [r4]
	ands r0, r1
	cmp r0, #0
	bne _08029A34
_08029A46:
	cmp r7, #0x1f
	bhi _08029AB0
	ldr r1, _08029AC0 @ =0x03006808
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r5, [r1]
	adds r5, r5, r0
	asrs r0, r6, #0xc
	movs r1, #0
	mov r8, r1
	strh r0, [r5]
	mov r1, ip
	asrs r0, r1, #0xc
	strh r0, [r5, #2]
	mov r0, sb
	strh r0, [r5, #8]
	strh r7, [r5, #0xa]
	strh r3, [r5, #4]
	strh r2, [r5, #6]
	ldr r6, _08029AC4 @ =0x03006790
	ldr r1, [r6]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001430
	ldr r1, [r6]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _08029AC8 @ =sub_080298C0
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	mov r0, r8
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	ldr r2, _08029ABC @ =0x03006800
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08029AB0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029ABC: .4byte 0x03006800
_08029AC0: .4byte 0x03006808
_08029AC4: .4byte 0x03006790
_08029AC8: .4byte sub_080298C0

	thumb_func_start sub_08029ACC
sub_08029ACC: @ 0x08029ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _08029BA8 @ =0x0000FFFF
	ands r1, r0
	mov r8, r1
	lsls r5, r4, #0x10
	lsrs r5, r5, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08029BAC @ =0x00100005
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	adds r1, #0x15
	strh r2, [r1]
	add r0, sp, #0x44
	strh r2, [r0]
	mov sb, r0
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	lsls r5, r5, #0x10
	str r5, [sp, #0x4c]
	lsls r4, r4, #0x10
	mov sl, r4
_08029B18:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	mov r2, sb
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08029B80
	bl sub_08007604
	cmp r0, #0
	bne _08029B80
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	bne _08029B80
	movs r0, #0x30
	str r0, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x4c]
	asrs r0, r2, #0x10
	mov r2, sl
	asrs r1, r2, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	mov r2, sb
	ldrh r3, [r2]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_08029B80:
	bl WaitFrame
	cmp r5, #0
	beq _08029B18
	ldr r2, _08029BB0 @ =0x03006800
	movs r1, #1
	mov r0, r8
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029BA8: .4byte 0x0000FFFF
_08029BAC: .4byte 0x00100005
_08029BB0: .4byte 0x03006800

	thumb_func_start sub_08029BB4
sub_08029BB4: @ 0x08029BB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r2, _08029C38 @ =0x03006800
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08029BE0
	movs r3, #1
_08029BCE:
	adds r6, #1
	cmp r6, #0x1f
	bhi _08029C2C
	adds r1, r3, #0
	lsls r1, r6
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08029BCE
_08029BE0:
	cmp r6, #0x1f
	bhi _08029C2C
	ldr r5, _08029C3C @ =0x03006790
	ldr r1, [r5]
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _08029C40 @ =sub_08029ACC
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	lsls r1, r7, #0x10
	mov r0, r8
	orrs r1, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CreateThread
	ldr r2, _08029C38 @ =0x03006800
	movs r1, #1
	lsls r1, r6
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08029C2C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029C38: .4byte 0x03006800
_08029C3C: .4byte 0x03006790
_08029C40: .4byte sub_08029ACC

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
	ldr r0, _08029DE8 @ =0x030067F0
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
	ldr r0, _08029DEC @ =0x030063D8
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
_08029DE8: .4byte 0x030067F0
_08029DEC: .4byte 0x030063D8
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
	ldr r0, _0802A0F0 @ =0x030063D8
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
	ldr r2, _0802A0F8 @ =0x030067F0
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
_0802A0F0: .4byte 0x030063D8
_0802A0F4: .4byte 0x080FBB24
_0802A0F8: .4byte 0x030067F0

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
	ldr r0, _0802A31C @ =0x030067F0
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
	ldr r0, _0802A320 @ =0x030063D8
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
_0802A31C: .4byte 0x030067F0
_0802A320: .4byte 0x030063D8
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
	ldr r1, _0802A3B4 @ =0x030067F0
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
_0802A3B4: .4byte 0x030067F0
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
	ldr r0, _0802A600 @ =0x030063D8
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
	ldr r2, _0802A608 @ =0x030067F0
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
_0802A600: .4byte 0x030063D8
_0802A604: .4byte 0x080FBB24
_0802A608: .4byte 0x030067F0

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
	ldr r0, _0802A778 @ =0x030067F0
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
	ldr r0, _0802A77C @ =0x030063D8
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
_0802A778: .4byte 0x030067F0
_0802A77C: .4byte 0x030063D8
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
	ldr r0, _0802A9E0 @ =0x030063D8
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
_0802A9E0: .4byte 0x030063D8
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
	ldr r0, _0802AB8C @ =0x030063D8
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
	ldr r0, _0802AB8C @ =0x030063D8
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
	ldr r2, _0802AB90 @ =0x030067F0
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
_0802AB8C: .4byte 0x030063D8
_0802AB90: .4byte 0x030067F0

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
	ldr r1, _0802ADB4 @ =0x030067F0
	ldr r6, [sp, #0x5c]
	adds r1, r6, r1
	ldr r0, [sp, #0x2c]
	lsls r4, r0
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	b _0802B106
	.align 2, 0
_0802ADB4: .4byte 0x030067F0
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
	ldr r0, _0802AE54 @ =0x030067F0
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
	ldr r0, _0802AE58 @ =0x030063D8
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
_0802AE54: .4byte 0x030067F0
_0802AE58: .4byte 0x030063D8
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
	ldr r0, _0802B120 @ =0x030063D8
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
	ldr r2, _0802B130 @ =0x030067F0
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
_0802B120: .4byte 0x030063D8
_0802B124: .4byte 0x080FB720
_0802B128: .4byte 0x080FBB24
_0802B12C: .4byte 0x080FBB26
_0802B130: .4byte 0x030067F0

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
	ldr r0, _0802B2A0 @ =0x030067F0
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
	ldr r0, _0802B2A4 @ =0x030063D8
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
_0802B2A0: .4byte 0x030067F0
_0802B2A4: .4byte 0x030063D8
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
	ldr r0, _0802B5A8 @ =0x030063D8
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
_0802B5A8: .4byte 0x030063D8
_0802B5AC: .4byte gFrameCounter
_0802B5B0:
	add r3, sp, #0x44
	ldrh r3, [r3]
	strh r3, [r4, #0x34]
_0802B5B6:
	ldr r0, _0802B630 @ =0x030063D8
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
	ldr r2, _0802B634 @ =0x030067F0
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
_0802B630: .4byte 0x030063D8
_0802B634: .4byte 0x030067F0

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
	ldr r2, _0802B904 @ =0x030067F0
	ldr r1, [sp, #0x18]
	adds r2, r1, r2
	movs r1, #1
	ldr r4, [sp, #8]
	lsls r1, r4
	b _0802BA18
	.align 2, 0
_0802B904: .4byte 0x030067F0
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
	ldr r2, _0802BA30 @ =0x030067F0
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
_0802BA30: .4byte 0x030067F0

	thumb_func_start sub_0802BA34
sub_0802BA34: @ 0x0802BA34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0xd4
	mov r8, r0
	ldr r1, [sp, #4]
	mov r0, r8
	muls r0, r1, r0
	ldr r5, _0802BAB4 @ =gPlayers
	adds r6, r0, r5
	bl GetMultiplayerId
	mov sl, r0
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r7, r0, #0x1d
	mov sb, r7
	ldr r2, [sp, #4]
	cmp sl, r2
	bne _0802BAF6
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r5, r0, r5
	ldr r1, _0802BAB8 @ =0x080FBB84
	lsls r0, r7, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r7, #0
	beq _0802BA9E
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802BA9E:
	adds r0, r5, #0
	adds r0, #0x78
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802BABC
	movs r0, #0
	b _0802BABE
	.align 2, 0
_0802BAB4: .4byte gPlayers
_0802BAB8: .4byte 0x080FBB84
_0802BABC:
	adds r0, r1, #1
_0802BABE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802BADC
	ldr r0, _0802BAD8 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	strh r4, [r6, #0x12]
	strh r4, [r6, #0x14]
	b _0802BD18
	.align 2, 0
_0802BAD8: .4byte 0x0009001B
_0802BADC:
	adds r2, r6, #0
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802BAF6
	movs r0, #0
	strh r0, [r2]
_0802BAF6:
	adds r0, r6, #0
	adds r0, #0x72
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r0, [sp, #4]
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	cmp r1, #1
	bhi _0802BB1A
_0802BB08:
	ldrh r0, [r6, #0xc]
	cmp r0, #7
	bne _0802BB10
	b _0802BD06
_0802BB10:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #1
	bls _0802BB08
_0802BB1A:
	ldr r1, [sp, #4]
	cmp sl, r1
	bne _0802BB36
	bl sub_08007544
	cmp r0, #0
	bne _0802BB36
	bl sub_080075AC
	cmp r0, #0
	bne _0802BB36
	movs r0, #0x2e
	bl PlaySE
_0802BB36:
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	str r0, [sp, #0xc]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x10]
	movs r5, #0
	movs r4, #0
	movs r2, #0x76
	adds r2, r2, r6
	mov r8, r2
	b _0802BBBC
_0802BB56:
	movs r0, #0xd4
	muls r0, r4, r0
	ldr r1, _0802BC6C @ =gPlayers
	adds r0, r0, r1
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _0802BBB6
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldr r2, [sp, #0xc]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r7, #5
	beq _0802BBAA
	lsls r0, r2, #0x10
	asrs r1, r0, #0x13
	cmp r1, #0
	bge _0802BB94
	rsbs r1, r1, #0
_0802BB94:
	adds r0, r7, #1
	lsls r2, r0, #1
	cmp r1, r2
	bge _0802BBB6
	lsls r0, r3, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802BBA6
	rsbs r0, r0, #0
_0802BBA6:
	cmp r0, r2
	bge _0802BBB6
_0802BBAA:
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	add r0, sp
	strb r4, [r0]
_0802BBB6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802BBBC:
	bl sub_08001EC4
	cmp r4, r0
	blo _0802BB56
	movs r4, #0
	cmp r4, r5
	bhs _0802BBDE
_0802BBCA:
	mov r2, sp
	adds r0, r2, r4
	ldrb r0, [r0]
	bl sub_0802C66C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0802BBCA
_0802BBDE:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802BBF2
_0802BBE6:
	bl WaitFrame
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802BBE6
_0802BBF2:
	ldr r0, [sp, #4]
	cmp sl, r0
	bne _0802BC70
	movs r5, #0
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r2, r2, r0
	mov r8, r2
_0802BC0A:
	ldr r0, [r6, #0x1c]
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802BC1A
	cmp r0, #6
	bne _0802BC58
_0802BC1A:
	bl sub_08007510
	cmp r0, #0
	beq _0802BC26
	bl sub_08046104
_0802BC26:
	ldr r0, [r6, #0x1c]
	adds r0, r4, r0
	movs r1, #6
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r0, r4
	movs r1, #0xe1
	lsls r1, r1, #4
	strh r1, [r0]
	mov r0, r8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x20]
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r0, r1, r0
	strh r7, [r0, #0xa]
	ldr r0, [r6, #0x20]
	adds r0, r1, r0
	strh r7, [r0, #0xc]
	ldr r0, [r6, #0x20]
	adds r1, r1, r0
	strh r7, [r1, #0xe]
	movs r5, #0xd
_0802BC58:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xc
	bls _0802BC0A
	movs r0, #0
	strh r0, [r6, #0x12]
	strh r0, [r6, #0x14]
	b _0802BD06
	.align 2, 0
_0802BC6C: .4byte gPlayers
_0802BC70:
	movs r4, #0
	cmp r4, r5
	bhs _0802BD06
	movs r0, #0xd4
	mov r1, sl
	muls r1, r0, r1
_0802BC7C:
	mov r2, sp
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, sl
	bne _0802BCFC
	ldr r0, _0802BCF8 @ =gPlayers
	adds r6, r1, r0
	movs r5, #0
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r2, r2, r0
	mov r8, r2
_0802BC9C:
	ldr r0, [r6, #0x1c]
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802BCAC
	cmp r0, #6
	bne _0802BCEA
_0802BCAC:
	bl sub_08007510
	cmp r0, #0
	beq _0802BCB8
	bl sub_08046104
_0802BCB8:
	ldr r0, [r6, #0x1c]
	adds r0, r4, r0
	movs r1, #6
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r0, r4
	movs r1, #0xe1
	lsls r1, r1, #4
	strh r1, [r0]
	mov r0, r8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x20]
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r0, r1, r0
	strh r7, [r0, #0xa]
	ldr r0, [r6, #0x20]
	adds r0, r1, r0
	strh r7, [r0, #0xc]
	ldr r0, [r6, #0x20]
	adds r1, r1, r0
	strh r7, [r1, #0xe]
	movs r5, #0xd
_0802BCEA:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xc
	bls _0802BC9C
	b _0802BD06
	.align 2, 0
_0802BCF8: .4byte gPlayers
_0802BCFC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0802BC7C
_0802BD06:
	ldr r2, _0802BD28 @ =0x030067F0
	ldr r1, [sp, #0x14]
	adds r2, r1, r2
	movs r1, #1
	ldr r0, [sp, #8]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802BD18:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BD28: .4byte 0x030067F0

	thumb_func_start sub_0802BD2C
sub_0802BD2C: @ 0x0802BD2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	str r1, [sp, #8]
	movs r6, #0xd4
	mov r0, sb
	muls r0, r6, r0
	ldr r5, _0802BDA4 @ =gPlayers
	adds r0, r0, r5
	mov r8, r0
	bl GetMultiplayerId
	mov sl, r0
	mov r0, r8
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r7, r0, #0x1d
	cmp sl, sb
	bne _0802BDF2
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r5, r0, r5
	ldr r1, _0802BDA8 @ =0x080FBB84
	lsls r0, r7, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r7, #0
	beq _0802BD8C
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802BD8C:
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802BDAC
	movs r0, #0
	b _0802BDAE
	.align 2, 0
_0802BDA4: .4byte gPlayers
_0802BDA8: .4byte 0x080FBB84
_0802BDAC:
	adds r0, r1, #1
_0802BDAE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802BDD8
	ldr r0, _0802BDD0 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	mov r2, r8
	strh r4, [r2, #0x12]
	strh r4, [r2, #0x14]
	ldr r0, _0802BDD4 @ =0x030067F0
	mov r3, sb
	lsls r2, r3, #2
	adds r2, r2, r0
	b _0802BF8E
	.align 2, 0
_0802BDD0: .4byte 0x0009001B
_0802BDD4: .4byte 0x030067F0
_0802BDD8:
	mov r2, r8
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802BDF2
	movs r0, #0
	strh r0, [r2]
_0802BDF2:
	mov r0, r8
	adds r0, #0x72
	ldrh r1, [r0]
	mov r2, sb
	lsls r2, r2, #2
	str r2, [sp, #0x14]
	adds r6, r0, #0
	cmp r1, #1
	bhi _0802BE36
	ldr r0, _0802BF6C @ =0x030067F0
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #8]
	lsls r0, r3
	mvns r5, r0
_0802BE10:
	mov r1, r8
	ldrh r0, [r1, #0xc]
	cmp r0, #7
	bne _0802BE1A
	b _0802BF62
_0802BE1A:
	ldr r0, _0802BF70 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802BE2C
	b _0802BF62
_0802BE2C:
	bl WaitFrame
	ldrh r0, [r6]
	cmp r0, #1
	bls _0802BE10
_0802BE36:
	cmp sl, sb
	bne _0802BE50
	bl sub_08007544
	cmp r0, #0
	bne _0802BE50
	bl sub_080075AC
	cmp r0, #0
	bne _0802BE50
	movs r0, #0x2f
	bl PlaySE
_0802BE50:
	mov r2, r8
	adds r2, #0xd0
	ldr r1, [r2]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov ip, r0
	movs r6, #0
	movs r5, #0
	str r2, [sp, #0x10]
	movs r2, #0x76
	add r2, r8
	mov sl, r2
	ldr r0, _0802BF74 @ =gActiveEnemyMask
	ldr r2, [r0]
_0802BE76:
	movs r0, #1
	lsls r0, r5
	ands r0, r2
	cmp r0, #0
	beq _0802BED6
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r3, _0802BF78 @ =gEnemies
	ldr r0, [r3]
	adds r3, r0, r1
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _0802BED6
	ldr r0, [r3, #0x10]
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r4, r0, #0x10
	ldr r0, [r3, #0x14]
	mov r3, ip
	subs r0, r0, r3
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	cmp r7, #5
	beq _0802BECA
	lsls r0, r4, #0x10
	asrs r3, r0, #0x13
	cmp r3, #0
	bge _0802BEB4
	rsbs r3, r3, #0
_0802BEB4:
	adds r0, r7, #4
	lsls r4, r0, #1
	cmp r3, r4
	bge _0802BED6
	lsls r0, r1, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802BEC6
	rsbs r0, r0, #0
_0802BEC6:
	cmp r0, r4
	bge _0802BED6
_0802BECA:
	adds r0, r6, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	add r0, sp
	strb r5, [r0]
_0802BED6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0802BE76
	movs r5, #0
	cmp r5, r6
	bhs _0802BF34
	ldr r2, _0802BF78 @ =gEnemies
	lsls r0, r7, #4
	subs r4, r0, r7
_0802BEEC:
	mov r7, sp
	adds r0, r7, r5
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r2]
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x64
	ldrh r1, [r0]
	lsrs r1, r1, #1
	subs r1, #0x19
	subs r1, r4, r1
	ldr r7, [sp, #0x10]
	ldr r0, [r7]
	ldrb r0, [r0, #7]
	lsrs r0, r0, #1
	cmp r1, r0
	ble _0802BF2A
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #2
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r1]
	movs r0, #1
	strh r0, [r3, #0x36]
	mov r0, sb
	strh r0, [r3, #0x34]
_0802BF2A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _0802BEEC
_0802BF34:
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802BF88
	ldr r0, _0802BF6C @ =0x030067F0
	ldr r2, [sp, #0x14]
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #8]
	lsls r0, r3
	mvns r5, r0
_0802BF4A:
	mov r7, r8
	ldrh r0, [r7, #0xc]
	cmp r0, #7
	beq _0802BF62
	ldr r0, _0802BF70 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802BF7C
_0802BF62:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802BF9A
	.align 2, 0
_0802BF6C: .4byte 0x030067F0
_0802BF70: .4byte 0x030063D8
_0802BF74: .4byte gActiveEnemyMask
_0802BF78: .4byte gEnemies
_0802BF7C:
	bl WaitFrame
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802BF4A
_0802BF88:
	ldr r2, _0802BFAC @ =0x030067F0
	ldr r3, [sp, #0x14]
	adds r2, r3, r2
_0802BF8E:
	movs r1, #1
	ldr r7, [sp, #8]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802BF9A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BFAC: .4byte 0x030067F0

	thumb_func_start sub_0802BFB0
sub_0802BFB0: @ 0x0802BFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _0802C03C @ =gPlayers
	adds r1, r1, r0
	mov sl, r1
	movs r7, #0
	ldr r1, _0802C040 @ =0x030067F0
	mov r2, sb
	lsls r0, r2, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802BFF2
	movs r3, #1
_0802BFDE:
	adds r7, #1
	cmp r7, #0xf
	bls _0802BFE6
	b _0802C152
_0802BFE6:
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802BFDE
_0802BFF2:
	cmp r7, #0xf
	bls _0802BFF8
	b _0802C152
_0802BFF8:
	ldr r5, _0802C044 @ =0x030067C0
	mov r0, sb
	lsls r0, r0, #2
	mov r8, r0
	add r5, r8
	ldr r1, [r5]
	lsls r6, r7, #2
	adds r4, r6, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001430
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	mov r0, sl
	adds r0, #0xd0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	mov r4, r8
	cmp r0, #7
	bls _0802C032
	b _0802C124
_0802C032:
	lsls r0, r0, #2
	ldr r1, _0802C048 @ =_0802C04C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C03C: .4byte gPlayers
_0802C040: .4byte 0x030067F0
_0802C044: .4byte 0x030067C0
_0802C048: .4byte _0802C04C
_0802C04C: @ jump table
	.4byte _0802C06C @ case 0
	.4byte _0802C084 @ case 1
	.4byte _0802C09C @ case 2
	.4byte _0802C0B4 @ case 3
	.4byte _0802C0CC @ case 4
	.4byte _0802C0FC @ case 5
	.4byte _0802C0E4 @ case 6
	.4byte _0802C114 @ case 7
_0802C06C:
	ldr r0, _0802C07C @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C080 @ =sub_08029C44
	b _0802C122
	.align 2, 0
_0802C07C: .4byte 0x030067C0
_0802C080: .4byte sub_08029C44
_0802C084:
	ldr r0, _0802C094 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C098 @ =sub_0802A0FC
	b _0802C122
	.align 2, 0
_0802C094: .4byte 0x030067C0
_0802C098: .4byte sub_0802A0FC
_0802C09C:
	ldr r0, _0802C0AC @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C0B0 @ =sub_0802A60C
	b _0802C122
	.align 2, 0
_0802C0AC: .4byte 0x030067C0
_0802C0B0: .4byte sub_0802A60C
_0802C0B4:
	ldr r0, _0802C0C4 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C0C8 @ =sub_0802AB94
	b _0802C122
	.align 2, 0
_0802C0C4: .4byte 0x030067C0
_0802C0C8: .4byte sub_0802AB94
_0802C0CC:
	ldr r0, _0802C0DC @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C0E0 @ =sub_0802B134
	b _0802C122
	.align 2, 0
_0802C0DC: .4byte 0x030067C0
_0802C0E0: .4byte sub_0802B134
_0802C0E4:
	ldr r0, _0802C0F4 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C0F8 @ =sub_0802B638
	b _0802C122
	.align 2, 0
_0802C0F4: .4byte 0x030067C0
_0802C0F8: .4byte sub_0802B638
_0802C0FC:
	ldr r0, _0802C10C @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C110 @ =sub_0802BA34
	b _0802C122
	.align 2, 0
_0802C10C: .4byte 0x030067C0
_0802C110: .4byte sub_0802BA34
_0802C114:
	ldr r0, _0802C160 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C164 @ =sub_0802BD2C
_0802C122:
	str r1, [r0, #0xc]
_0802C124:
	ldr r0, _0802C160 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #0x20]
	ldr r2, _0802C168 @ =0x000007FC
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, _0802C16C @ =sub_0802F0B4
	str r1, [r0, #0x24]
	mov r1, sb
	adds r2, r7, #0
	bl CreateThread
	ldr r2, _0802C170 @ =0x030067F0
	adds r2, r4, r2
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0802C152:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C160: .4byte 0x030067C0
_0802C164: .4byte sub_0802BD2C
_0802C168: .4byte 0x000007FC
_0802C16C: .4byte sub_0802F0B4
_0802C170: .4byte 0x030067F0

	thumb_func_start sub_0802C174
sub_0802C174: @ 0x0802C174
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0802C230 @ =gPlayers
	adds r1, r1, r0
	mov ip, r1
	ldr r5, _0802C234 @ =0x0000FFFF
	movs r6, #1
	rsbs r6, r6, #0
	movs r4, #0
	ldr r0, _0802C238 @ =gActiveEnemyMask
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _0802C23C @ =0x080FB9FC
	mov sl, r0
	ldr r1, _0802C240 @ =0x00007FFF
	mov sb, r1
_0802C1AA:
	movs r0, #1
	lsls r0, r4
	ldr r2, [sp]
	ands r0, r2
	cmp r0, #0
	beq _0802C212
	lsls r3, r4, #1
	mov r1, ip
	adds r1, #0xb8
	adds r1, r1, r3
	mov r7, ip
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	add r0, sl
	ldrh r1, [r1]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #8
	ble _0802C1DE
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802C1DE:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r7, #8
	rsbs r7, r7, #0
	cmp r0, r7
	bge _0802C1F0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802C1F0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802C1FA
	rsbs r0, r0, #0
_0802C1FA:
	cmp r0, r8
	bgt _0802C212
	mov r0, ip
	adds r0, #0xae
	adds r0, r0, r3
	ldrh r1, [r0]
	cmp r5, r1
	bls _0802C212
	cmp r1, sb
	beq _0802C212
	adds r5, r1, #0
	adds r6, r4, #0
_0802C212:
	adds r4, #1
	cmp r4, #4
	bls _0802C1AA
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0802C248
	ldr r2, _0802C244 @ =gEnemies
	movs r0, #0x94
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	b _0802C24A
	.align 2, 0
_0802C230: .4byte gPlayers
_0802C234: .4byte 0x0000FFFF
_0802C238: .4byte gActiveEnemyMask
_0802C23C: .4byte 0x080FB9FC
_0802C240: .4byte 0x00007FFF
_0802C244: .4byte gEnemies
_0802C248:
	movs r0, #0
_0802C24A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start ItemUseEffectThread
ItemUseEffectThread: @ 0x0802C25C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	str r1, [sp, #0x28]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #8
	strb r0, [r1, #5]
	add r5, sp, #0x24
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	ldr r0, _0802C2B4 @ =0x00100004
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0802C2B8 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802C2BC @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r7, #0
	cmp r6, #3
	bhi _0802C2C4
	movs r0, #0xd4
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0802C2C0 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x2c]
	b _0802C2D4
	.align 2, 0
_0802C2B4: .4byte 0x00100004
_0802C2B8: .4byte 0x00110004
_0802C2BC: .4byte 0x00130004
_0802C2C0: .4byte gPlayers
_0802C2C4:
	ldr r1, _0802C304 @ =gEnemies
	movs r0, #0x94
	muls r0, r6, r0
	ldr r2, _0802C308 @ =0xFFFFFDB0
	adds r0, r0, r2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
_0802C2D4:
	cmp r7, #0
	bne _0802C398
	movs r0, #0
	mov sb, r0
_0802C2DC:
	cmp r6, #3
	bhi _0802C30C
	ldr r0, [sp, #0x2c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
	b _0802C32C
	.align 2, 0
_0802C304: .4byte gEnemies
_0802C308: .4byte 0xFFFFFDB0
_0802C30C:
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
_0802C32C:
	add r5, sp, #0x20
	mov r4, sp
	adds r4, #0x22
	mov r0, sb
	str r0, [sp]
	movs r0, #0x14
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	mov r3, r8
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0802C3A4 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0802C390
	bl sub_08007510
	cmp r0, #0
	bne _0802C390
	bl sub_08007604
	cmp r0, #0
	bne _0802C390
	bl sub_08007544
	cmp r0, #0
	bne _0802C390
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #1
	mov r2, sp
	ldrh r3, [r2, #0x24]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0xc]
	movs r2, #0x14
	bl sub_08004344
_0802C390:
	bl WaitFrame
	cmp r7, #0
	beq _0802C2DC
_0802C398:
	cmp r6, #3
	bhi _0802C3AC
	ldr r0, _0802C3A8 @ =0x030067F0
	lsls r2, r6, #2
	b _0802C3B2
	.align 2, 0
_0802C3A4: .4byte gMapLayer_03003910
_0802C3A8: .4byte 0x030067F0
_0802C3AC:
	ldr r0, _0802C3D0 @ =0x030067A0
	subs r2, r6, #4
	lsls r2, r2, #2
_0802C3B2:
	adds r2, r2, r0
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C3D0: .4byte 0x030067A0

	thumb_func_start sub_0802C3D4
sub_0802C3D4: @ 0x0802C3D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x28]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #8
	strb r0, [r1, #5]
	add r5, sp, #0x24
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	ldr r0, _0802C42C @ =0x00100004
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0802C430 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802C434 @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r6, #0
	cmp r7, #3
	bhi _0802C43C
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0802C438 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x2c]
	b _0802C44C
	.align 2, 0
_0802C42C: .4byte 0x00100004
_0802C430: .4byte 0x00110004
_0802C434: .4byte 0x00130004
_0802C438: .4byte gPlayers
_0802C43C:
	ldr r1, _0802C480 @ =gEnemies
	movs r0, #0x94
	muls r0, r7, r0
	ldr r2, _0802C484 @ =0xFFFFFDB0
	adds r0, r0, r2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
_0802C44C:
	lsls r0, r7, #2
	str r0, [sp, #0x34]
	cmp r6, #0
	bne _0802C514
	movs r1, #0
	mov sb, r1
_0802C458:
	cmp r7, #3
	bhi _0802C488
	ldr r0, [sp, #0x2c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
	b _0802C4A8
	.align 2, 0
_0802C480: .4byte gEnemies
_0802C484: .4byte 0xFFFFFDB0
_0802C488:
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
_0802C4A8:
	add r5, sp, #0x20
	mov r4, sp
	adds r4, #0x22
	mov r0, sb
	str r0, [sp]
	movs r0, #0x15
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	mov r3, r8
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0802C538 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0802C50C
	bl sub_08007510
	cmp r0, #0
	bne _0802C50C
	bl sub_08007604
	cmp r0, #0
	bne _0802C50C
	bl sub_08007544
	cmp r0, #0
	bne _0802C50C
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #1
	mov r2, sp
	ldrh r3, [r2, #0x24]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0xc]
	movs r2, #0x15
	bl sub_08004344
_0802C50C:
	bl WaitFrame
	cmp r6, #0
	beq _0802C458
_0802C514:
	ldr r2, _0802C53C @ =0x030067F0
	ldr r0, [sp, #0x34]
	adds r2, r0, r2
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C538: .4byte gMapLayer_03003910
_0802C53C: .4byte 0x030067F0

	thumb_func_start StartItemUseEffect
StartItemUseEffect: @ 0x0802C540
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	cmp r0, #3
	bhi _0802C5D4
	movs r7, #0
	ldr r0, _0802C5C8 @ =0x030067F0
	mov r1, r8
	lsls r2, r1, #2
	adds r3, r2, r0
	movs r1, #1
	ldr r0, [r3]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0802C578
	adds r2, r3, #0
	movs r3, #1
_0802C566:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802C654
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C566
_0802C578:
	cmp r7, #0xf
	bhi _0802C654
	ldr r5, _0802C5CC @ =0x030067C0
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802C5D0 @ =ItemUseEffectThread
	str r1, [r4, #0xc]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl CreateThread
	ldr r2, _0802C5C8 @ =0x030067F0
	adds r2, r6, r2
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _0802C654
	.align 2, 0
_0802C5C8: .4byte 0x030067F0
_0802C5CC: .4byte 0x030067C0
_0802C5D0: .4byte ItemUseEffectThread
_0802C5D4:
	movs r0, #4
	rsbs r0, r0, #0
	add r8, r0
	movs r7, #0
	ldr r1, _0802C660 @ =0x030067A0
	mov r2, r8
	lsls r0, r2, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802C602
	movs r3, #1
_0802C5F0:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802C654
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C5F0
_0802C602:
	cmp r7, #0xf
	bhi _0802C654
	ldr r5, _0802C664 @ =0x030067D0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	ldr r0, _0802C668 @ =ItemUseEffectThread
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
	movs r0, #0
	str r0, [r4, #0x24]
	mov r1, r8
	adds r1, #4
	adds r0, r4, #0
	adds r2, r7, #0
	bl CreateThread
	ldr r0, _0802C660 @ =0x030067A0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802C654:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C660: .4byte 0x030067A0
_0802C664: .4byte 0x030067D0
_0802C668: .4byte ItemUseEffectThread

	thumb_func_start sub_0802C66C
sub_0802C66C: @ 0x0802C66C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	cmp r0, #3
	bhi _0802C700
	movs r7, #0
	ldr r0, _0802C6F4 @ =0x030067F0
	mov r1, r8
	lsls r2, r1, #2
	adds r3, r2, r0
	movs r1, #1
	ldr r0, [r3]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0802C6A4
	adds r2, r3, #0
	movs r3, #1
_0802C692:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802C780
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C692
_0802C6A4:
	cmp r7, #0xf
	bhi _0802C780
	ldr r5, _0802C6F8 @ =0x030067C0
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802C6FC @ =sub_0802C3D4
	str r1, [r4, #0xc]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl CreateThread
	ldr r2, _0802C6F4 @ =0x030067F0
	adds r2, r6, r2
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _0802C780
	.align 2, 0
_0802C6F4: .4byte 0x030067F0
_0802C6F8: .4byte 0x030067C0
_0802C6FC: .4byte sub_0802C3D4
_0802C700:
	movs r0, #4
	rsbs r0, r0, #0
	add r8, r0
	movs r7, #0
	ldr r1, _0802C78C @ =0x030067A0
	mov r2, r8
	lsls r0, r2, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802C72E
	movs r3, #1
_0802C71C:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802C780
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C71C
_0802C72E:
	cmp r7, #0xf
	bhi _0802C780
	ldr r5, _0802C790 @ =0x030067D0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	ldr r0, _0802C794 @ =sub_0802C3D4
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
	movs r0, #0
	str r0, [r4, #0x24]
	mov r1, r8
	adds r1, #4
	adds r0, r4, #0
	adds r2, r7, #0
	bl CreateThread
	ldr r0, _0802C78C @ =0x030067A0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802C780:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C78C: .4byte 0x030067A0
_0802C790: .4byte 0x030067D0
_0802C794: .4byte sub_0802C3D4

	thumb_func_start sub_0802C798
sub_0802C798: @ 0x0802C798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x28]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #8
	strb r0, [r1, #5]
	add r5, sp, #0x24
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	ldr r0, _0802C7F0 @ =0x00100005
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0802C7F4 @ =0x00110005
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802C7F8 @ =0x00130005
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r6, #0
	cmp r7, #3
	bhi _0802C800
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0802C7FC @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x2c]
	b _0802C810
	.align 2, 0
_0802C7F0: .4byte 0x00100005
_0802C7F4: .4byte 0x00110005
_0802C7F8: .4byte 0x00130005
_0802C7FC: .4byte gPlayers
_0802C800:
	ldr r1, _0802C844 @ =gEnemies
	movs r0, #0x94
	muls r0, r7, r0
	ldr r2, _0802C848 @ =0xFFFFFDB0
	adds r0, r0, r2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
_0802C810:
	lsls r0, r7, #2
	str r0, [sp, #0x34]
	cmp r6, #0
	bne _0802C8D8
	movs r1, #0
	mov sb, r1
_0802C81C:
	cmp r7, #3
	bhi _0802C84C
	ldr r0, [sp, #0x2c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
	b _0802C86C
	.align 2, 0
_0802C844: .4byte gEnemies
_0802C848: .4byte 0xFFFFFDB0
_0802C84C:
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
_0802C86C:
	add r5, sp, #0x20
	mov r4, sp
	adds r4, #0x22
	mov r0, sb
	str r0, [sp]
	movs r0, #4
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	mov r3, r8
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0802C8FC @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0802C8D0
	bl sub_08007510
	cmp r0, #0
	bne _0802C8D0
	bl sub_08007604
	cmp r0, #0
	bne _0802C8D0
	bl sub_08007544
	cmp r0, #0
	bne _0802C8D0
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #1
	mov r2, sp
	ldrh r3, [r2, #0x24]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0xc]
	movs r2, #4
	bl sub_08004344
_0802C8D0:
	bl WaitFrame
	cmp r6, #0
	beq _0802C81C
_0802C8D8:
	ldr r2, _0802C900 @ =0x030067F0
	ldr r0, [sp, #0x34]
	adds r2, r0, r2
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C8FC: .4byte gMapLayer_03003910
_0802C900: .4byte 0x030067F0

	thumb_func_start sub_0802C904
sub_0802C904: @ 0x0802C904
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	cmp r0, #3
	bhi _0802C998
	movs r7, #0
	ldr r0, _0802C98C @ =0x030067F0
	mov r1, r8
	lsls r2, r1, #2
	adds r3, r2, r0
	movs r1, #1
	ldr r0, [r3]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0802C93C
	adds r2, r3, #0
	movs r3, #1
_0802C92A:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802CA18
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C92A
_0802C93C:
	cmp r7, #0xf
	bhi _0802CA18
	ldr r5, _0802C990 @ =0x030067C0
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802C994 @ =sub_0802C798
	str r1, [r4, #0xc]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl CreateThread
	ldr r2, _0802C98C @ =0x030067F0
	adds r2, r6, r2
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _0802CA18
	.align 2, 0
_0802C98C: .4byte 0x030067F0
_0802C990: .4byte 0x030067C0
_0802C994: .4byte sub_0802C798
_0802C998:
	movs r0, #4
	rsbs r0, r0, #0
	add r8, r0
	movs r7, #0
	ldr r1, _0802CA24 @ =0x030067A0
	mov r2, r8
	lsls r0, r2, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802C9C6
	movs r3, #1
_0802C9B4:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802CA18
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C9B4
_0802C9C6:
	cmp r7, #0xf
	bhi _0802CA18
	ldr r5, _0802CA28 @ =0x030067D0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	ldr r0, _0802CA2C @ =sub_0802C798
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
	movs r0, #0
	str r0, [r4, #0x24]
	mov r1, r8
	adds r1, #4
	adds r0, r4, #0
	adds r2, r7, #0
	bl CreateThread
	ldr r0, _0802CA24 @ =0x030067A0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802CA18:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CA24: .4byte 0x030067A0
_0802CA28: .4byte 0x030067D0
_0802CA2C: .4byte sub_0802C798

	thumb_func_start sub_0802CA30
sub_0802CA30: @ 0x0802CA30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	ldr r0, _0802CDC0 @ =0x00100005
	bl GetDataRecord
	str r0, [sp, #0x6c]
	ldr r0, _0802CDC4 @ =0x00110005
	bl GetDataRecord
	str r0, [sp, #0x68]
	ldr r0, _0802CDC8 @ =0x00130005
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r0, #0xd4
	ldr r2, [sp, #0x5c]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802CDCC @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x70]
	mov r5, sp
	adds r5, #0x20
	str r5, [sp, #0xac]
	mov r7, sp
	adds r7, #0x2c
	str r7, [sp, #0x90]
	mov r0, sp
	adds r0, #0x38
	str r0, [sp, #0x9c]
	mov r1, sp
	adds r1, #0x40
	str r1, [sp, #0xa0]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0xa4]
	mov r3, sp
	adds r3, #0x50
	str r3, [sp, #0xa8]
	adds r7, r5, #0
	ldr r3, [sp, #0x64]
	adds r3, #0xd0
	adds r6, r0, #0
	movs r4, #0
	adds r5, r3, #0
_0802CAB4:
	ldr r0, [sp, #0x70]
	lsls r1, r0, #2
	adds r2, r7, r1
	ldr r0, [r3]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [r2]
	ldr r2, [sp, #0x90]
	adds r1, r2, r1
	ldr r0, [r3]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [r1]
	ldr r0, [sp, #0x70]
	lsls r1, r0, #1
	adds r0, r6, r1
	strh r4, [r0]
	ldr r2, [sp, #0xa0]
	adds r0, r2, r1
	strh r4, [r0]
	ldr r2, [sp, #0xa4]
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, [sp, #0xa8]
	adds r1, r0, r1
	ldr r2, [sp, #0x70]
	lsls r0, r2, #3
	adds r0, #1
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r0, #2
	bls _0802CAB4
	ldr r2, _0802CDD0 @ =0x080FB9FC
	ldr r0, [r5]
	ldrb r1, [r0, #3]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x10
	str r1, [sp, #0x7c]
	ldr r3, [sp, #0x84]
	ldr r5, [sp, #0x5c]
	cmp r3, r5
	bne _0802CB68
	ldr r7, [sp, #0x64]
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x7c]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x74]
	adds r0, #1
	str r0, [r7, #0x7c]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0802CB40
	rsbs r1, r1, #0
_0802CB40:
	adds r0, r1, #0
	cmp r1, #0
	bge _0802CB48
	adds r0, #0xf
_0802CB48:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	ldr r0, _0802CDD4 @ =gPlayerStats
	adds r0, #0x50
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [sp, #0x80]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
_0802CB68:
	ldr r2, [sp, #0x5c]
	lsls r2, r2, #2
	str r2, [sp, #0x94]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x88]
	lsls r0, r0, #1
	ldr r3, _0802CDD8 @ =0x0805289C
	adds r0, r0, r3
	str r0, [sp, #0x8c]
_0802CB7C:
	movs r5, #0
	str r5, [sp, #0x78]
	movs r7, #0
	str r7, [sp, #0x70]
_0802CB84:
	ldr r0, [sp, #0x70]
	lsls r1, r0, #1
	ldr r3, [sp, #0xa8]
	adds r2, r3, r1
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	str r1, [sp, #0x98]
	cmp r7, #0
	beq _0802CB9E
	b _0802CDA2
_0802CB9E:
	movs r0, #1
	strh r0, [r2]
	ldr r5, [sp, #0x70]
	lsls r6, r5, #2
	ldr r0, [sp, #0xac]
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [sp, #0x88]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802CDD8 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #0x28
	adds r1, r0, #0
	muls r1, r3, r1
	mov r5, r8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [sp, #0x90]
	adds r0, r0, r6
	mov sb, r0
	ldr r1, [sp, #0x8c]
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r3, r0
	mov r3, sb
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x58
	mov r5, sp
	adds r5, #0x5a
	movs r2, #0x30
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x9c]
	ldr r1, [sp, #0x98]
	adds r0, r0, r1
	mov sl, r0
	ldr r3, [sp, #0xa0]
	adds r2, r3, r1
	str r7, [sp]
	movs r0, #5
	mov r1, sl
	ldr r3, [sp, #0x6c]
	bl sub_08004214
	adds r2, r0, #0
	ldr r7, [sp, #0xa4]
	ldr r1, [sp, #0x98]
	adds r0, r7, r1
	strh r2, [r0]
	ldr r0, _0802CDDC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	str r6, [sp, #0xb4]
	adds r6, r4, #0
	cmp r0, #0
	bne _0802CCAC
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _0802CCAC
	bl sub_08007510
	cmp r0, #0
	bne _0802CCAC
	bl sub_08007604
	cmp r0, #0
	bne _0802CCAC
	bl sub_08007544
	cmp r0, #0
	bne _0802CCAC
	mov r2, r8
	ldr r5, [r2]
	asrs r5, r5, #0xc
	mov r3, sb
	ldr r4, [r3]
	asrs r4, r4, #0xc
	bl sub_08007544
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08006008
	movs r5, #0
	ldrsh r4, [r6, r5]
	ldr r2, _0802CDE0 @ =0x080FBB24
	ldr r7, [sp, #0x7c]
	lsls r3, r7, #2
	adds r1, r3, r2
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r4, r4, r1
	movs r5, #0x5a
	add r5, sp
	movs r7, #0
	ldrsh r1, [r5, r7]
	adds r2, #2
	adds r3, r3, r2
	movs r7, #0
	ldrsh r2, [r3, r7]
	adds r1, r1, r2
	mov r2, sl
	ldrh r3, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r7, [sp, #0x6c]
	str r7, [sp, #8]
	ldr r0, [sp, #0x68]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #5
	bl sub_08004344
_0802CCAC:
	ldr r1, [sp, #0x84]
	ldr r2, [sp, #0x5c]
	cmp r1, r2
	bne _0802CD90
	ldr r3, [sp, #0xa4]
	ldr r5, [sp, #0x98]
	adds r0, r3, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802CD9C
	bl GetMultiplayerId
	ldr r7, [sp, #0x84]
	cmp r7, r0
	bne _0802CCE0
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802CDB2
	bl sub_080077C0
	cmp r0, #0
	bne _0802CDB2
_0802CCE0:
	movs r4, #0
	ldr r2, _0802CDE4 @ =gActiveEnemyMask
	mov sb, r2
	movs r3, #1
	ldr r7, [sp, #0xb4]
	ldr r5, [sp, #0x90]
	adds r5, r5, r7
	mov r8, r5
_0802CCF0:
	adds r1, r3, #0
	lsls r1, r4
	mov r2, sb
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802CD86
	ldr r2, _0802CDE8 @ =gEnemies
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r0, [sp, #0xac]
	adds r1, r0, r7
	ldr r0, [r5, #0x10]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #0xc
	strh r0, [r6]
	ldr r0, [r5, #0x14]
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #0xc
	movs r1, #0x5a
	add r1, sp
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0802CD32
	rsbs r0, r0, #0
_0802CD32:
	cmp r0, #0x13
	bgt _0802CD86
	movs r2, #0x5a
	add r2, sp
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802CD44
	rsbs r0, r0, #0
_0802CD44:
	cmp r0, #0x13
	bgt _0802CD86
	ldrh r0, [r5, #0xa]
	cmp r0, #8
	beq _0802CD86
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x74]
	cmp r0, r1
	beq _0802CD86
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r1, [r0]
	movs r0, #0x6e
	subs r0, r0, r1
	ldr r2, [sp, #0x80]
	muls r0, r2, r0
	movs r1, #0x3c
	str r3, [sp, #0xb0]
	bl __divsi3
	strh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x28]
	adds r1, r1, r0
	strh r1, [r5, #0x28]
	movs r0, #7
	strh r0, [r5, #0xa]
	add r0, sp, #0x5c
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	ldr r1, [sp, #0x74]
	str r1, [r5, #0x30]
	ldr r3, [sp, #0xb0]
	strh r3, [r5, #0x36]
_0802CD86:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802CCF0
_0802CD90:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x98]
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802CDA2
_0802CD9C:
	ldr r5, [sp, #0x78]
	adds r5, #1
	str r5, [sp, #0x78]
_0802CDA2:
	ldr r0, [sp, #0x70]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r0, #2
	bhi _0802CDB2
	b _0802CB84
_0802CDB2:
	ldr r7, [sp, #0x78]
	cmp r7, #2
	bhi _0802CDEC
	bl WaitFrame
	b _0802CB7C
	.align 2, 0
_0802CDC0: .4byte 0x00100005
_0802CDC4: .4byte 0x00110005
_0802CDC8: .4byte 0x00130005
_0802CDCC: .4byte gPlayers
_0802CDD0: .4byte 0x080FB9FC
_0802CDD4: .4byte gPlayerStats
_0802CDD8: .4byte 0x0805289C
_0802CDDC: .4byte 0x030063D8
_0802CDE0: .4byte 0x080FBB24
_0802CDE4: .4byte gActiveEnemyMask
_0802CDE8: .4byte gEnemies
_0802CDEC:
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x5c]
	cmp r0, r1
	bne _0802CE16
	bl sub_08007510
	cmp r0, #0
	bne _0802CE16
	bl sub_080076E0
	cmp r0, #0
	bne _0802CE16
	bl sub_08007604
	cmp r0, #0
	bne _0802CE16
	ldr r2, [sp, #0x64]
	ldrh r1, [r2, #0x10]
	ldr r0, _0802CE38 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x10]
_0802CE16:
	ldr r2, _0802CE3C @ =0x030067F0
	ldr r3, [sp, #0x94]
	adds r2, r3, r2
	movs r1, #1
	ldr r5, [sp, #0x60]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CE38: .4byte 0x0000FFFE
_0802CE3C: .4byte 0x030067F0

	thumb_func_start sub_0802CE40
sub_0802CE40: @ 0x0802CE40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r7, #0
	ldr r1, _0802CEC8 @ =0x030067F0
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802CE6E
	movs r3, #1
_0802CE5C:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802CEBE
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802CE5C
_0802CE6E:
	cmp r7, #0xf
	bhi _0802CEBE
	ldr r5, _0802CECC @ =0x030067C0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802CED0 @ =sub_0802CA30
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl CreateThread
	ldr r0, _0802CEC8 @ =0x030067F0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802CEBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CEC8: .4byte 0x030067F0
_0802CECC: .4byte 0x030067C0
_0802CED0: .4byte sub_0802CA30

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
	ldr r0, _0802D118 @ =0x030067F0
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
	ldr r0, _0802D11C @ =0x030063D8
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
_0802D118: .4byte 0x030067F0
_0802D11C: .4byte 0x030063D8
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
	ldr r0, _0802D48C @ =0x030063D8
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
	ldr r2, _0802D498 @ =0x030067F0
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
_0802D48C: .4byte 0x030063D8
_0802D490: .4byte 0x080FBB24
_0802D494: .4byte 0x08054900
_0802D498: .4byte 0x030067F0

	thumb_func_start sub_0802D49C
sub_0802D49C: @ 0x0802D49C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	movs r7, #0
	ldr r1, _0802D52C @ =0x030067F0
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802D4CE
	movs r3, #1
_0802D4BC:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802D520
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802D4BC
_0802D4CE:
	cmp r7, #0xf
	bhi _0802D520
	ldr r5, _0802D530 @ =0x030067C0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802D534 @ =sub_0802CED4
	str r1, [r4, #0xc]
	ldr r1, _0802D538 @ =0x000007FC
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	mov r0, sb
	lsls r2, r0, #0x10
	orrs r2, r7
	adds r0, r4, #0
	mov r1, r8
	bl CreateThread
	ldr r0, _0802D52C @ =0x030067F0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802D520:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D52C: .4byte 0x030067F0
_0802D530: .4byte 0x030067C0
_0802D534: .4byte sub_0802CED4
_0802D538: .4byte 0x000007FC

	thumb_func_start sub_0802D53C
sub_0802D53C: @ 0x0802D53C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	str r0, [sp, #0x48]
	adds r6, r1, #0
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	ldr r2, _0802D5A4 @ =gEnemies
	movs r0, #0x94
	ldr r3, [sp, #0x48]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	adds r4, r7, #0
	adds r4, #0x8c
	ldr r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x18
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	ldr r0, [r4]
	adds r1, r7, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	bl sub_0800EA00
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r4, #1
	str r4, [sp, #0x54]
	add r1, sp, #0x10
	adds r0, r2, #5
	strb r0, [r1, #0x1c]
	movs r0, #0xf
	adds r1, r6, #0
	ands r1, r0
	str r1, [sp, #0x50]
	lsrs r6, r6, #0x10
	cmp r6, #3
	bls _0802D5A8
	movs r0, #0xa
	b _0802D5B6
	.align 2, 0
_0802D5A4: .4byte gEnemies
_0802D5A8:
	movs r0, #0xd4
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0802D66C @ =gPlayers
	adds r5, r1, r0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
_0802D5B6:
	ldr r2, [r7, #0x10]
	mov sl, r2
	ldr r3, [r7, #0x14]
	mov sb, r3
	cmp r0, #3
	bhi _0802D678
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r2, sp, #0x44
	strh r0, [r2]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
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
	lsrs r2, r0, #0x18
	adds r1, r2, #0
	cmp r1, #0x80
	ble _0802D608
	ldr r5, _0802D670 @ =0xFFFFFF00
	adds r0, r5, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802D608:
	str r2, [sp, #0x58]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D61E
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D61E:
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802D636
	ldr r2, _0802D670 @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D636:
	ldr r3, [sp, #0x58]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	ldr r2, _0802D674 @ =0x080FB9FC
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0802D65A
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802D65A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D664
	rsbs r0, r0, #0
_0802D664:
	cmp r0, #3
	ble _0802D68A
	lsls r0, r1, #0x14
	b _0802D686
	.align 2, 0
_0802D66C: .4byte gPlayers
_0802D670: .4byte 0xFFFFFF00
_0802D674: .4byte 0x080FB9FC
_0802D678:
	ldr r0, _0802D6CC @ =0x080FB9FC
	movs r5, #8
	ldrsh r1, [r7, r5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x14
_0802D686:
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D68A:
	adds r0, r7, #0
	adds r0, #0x4a
	ldr r1, _0802D6D0 @ =0x08054904
	ldrh r2, [r0]
	ldrh r1, [r1, #2]
	mov r8, r0
	ldr r6, [sp, #0x48]
	lsls r6, r6, #2
	str r6, [sp, #0x68]
	cmp r2, r1
	bhs _0802D6E8
	ldr r0, _0802D6D4 @ =0x030067A0
	adds r4, r6, r0
	adds r6, r1, #0
	movs r0, #1
	ldr r1, [sp, #0x50]
	lsls r0, r1
	mvns r5, r0
_0802D6AE:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	beq _0802D6C4
	ldr r0, _0802D6D8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D6DC
_0802D6C4:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802D966
	.align 2, 0
_0802D6CC: .4byte 0x080FB9FC
_0802D6D0: .4byte 0x08054904
_0802D6D4: .4byte 0x030067A0
_0802D6D8: .4byte 0x030063D8
_0802D6DC:
	bl WaitFrame
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, r6
	blo _0802D6AE
_0802D6E8:
	ldr r3, [sp, #0x54]
	lsls r0, r3, #3
	adds r0, #0xa
	str r0, [sp, #0x54]
	bl sub_080075AC
	cmp r0, #0
	bne _0802D70E
	bl sub_08007544
	cmp r0, #0
	bne _0802D70E
	bl sub_08007604
	cmp r0, #0
	bne _0802D70E
	movs r0, #0x17
	bl PlaySE
_0802D70E:
	ldr r0, [sp, #0x54]
	adds r4, r0, #0
	subs r4, #1
	str r4, [sp, #0x54]
	cmp r0, #0
	bne _0802D71C
	b _0802D954
_0802D71C:
	add r5, sp, #0x44
	mov r8, r5
	mov r6, sp
	adds r6, #0x46
	str r6, [sp, #0x64]
_0802D726:
	movs r0, #0
	str r0, [sp, #0x5c]
	movs r6, #0
	b _0802D82A
_0802D72E:
	ldr r3, _0802D7F8 @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov r4, sl
	subs r0, r0, r4
	lsrs r0, r0, #0xc
	mov r5, r8
	strh r0, [r5]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	ldr r4, [sp, #0x64]
	strh r0, [r4]
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _0802D76A
	rsbs r1, r1, #0
_0802D76A:
	cmp r1, #7
	bgt _0802D824
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D778
	rsbs r0, r0, #0
_0802D778:
	cmp r0, #7
	bgt _0802D824
	ldr r5, [sp, #0x60]
	cmp r5, r6
	bne _0802D824
	adds r5, r2, r3
	ldrh r1, [r5, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D824
	ldrh r2, [r5, #0xc]
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802D824
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r4, r5, #0
	adds r4, #0x80
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802D824
	cmp r2, #9
	beq _0802D824
	bl sub_08007544
	cmp r0, #0
	bne _0802D824
	bl sub_080077C0
	cmp r0, #0
	bne _0802D824
	ldr r0, [sp, #0x4c]
	adds r0, #0x6a
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	bl sub_0801841C
	cmp r0, #0
	beq _0802D7FC
	adds r0, r7, #0
	adds r1, r5, #0
	bl CalcDamageToPlayer
	adds r1, r5, #0
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r5, #0xc]
	movs r4, #1
	str r4, [sp, #0x5c]
	b _0802D824
	.align 2, 0
_0802D7F8: .4byte gPlayers
_0802D7FC:
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	str r1, [r0]
	bl sub_080075AC
	cmp r0, #0
	bne _0802D824
	bl sub_08007544
	cmp r0, #0
	bne _0802D824
	bl sub_08007604
	cmp r0, #0
	bne _0802D824
	movs r0, #0x55
	bl PlaySE
_0802D824:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802D82A:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802D83C
	bl sub_08007670
	cmp r0, #0
	bne _0802D83C
	b _0802D72E
_0802D83C:
	ldr r5, [sp, #0x5c]
	cmp r5, #0
	beq _0802D844
	b _0802D954
_0802D844:
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _0802D862
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0802D954
_0802D862:
	ldr r2, _0802D978 @ =0x0805289C
	ldr r0, [sp, #0x58]
	lsls r6, r0, #0x10
	asrs r1, r6, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r4, #0x3c
	muls r0, r4, r0
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r4, r0
	add sb, r0
	ldr r0, _0802D97C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802D922
	bl sub_08007510
	cmp r0, #0
	bne _0802D922
	bl sub_08007604
	cmp r0, #0
	bne _0802D922
	bl sub_08007544
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D922
	mov r0, sl
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, r8
	ldr r3, [sp, #0x64]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	ldr r2, _0802D980 @ =0x08054908
	asrs r1, r6, #0x14
	adds r1, r1, r2
	mov r2, r8
	movs r3, #0
	ldrsh r5, [r2, r3]
	ldr r4, _0802D984 @ =0x080FBB24
	ldrb r2, [r1]
	lsls r3, r2, #2
	adds r1, r3, r4
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r5, r5, r1
	mov ip, r5
	ldr r5, [sp, #0x64]
	movs r6, #0
	ldrsh r1, [r5, r6]
	adds r4, #2
	adds r3, r3, r4
	movs r4, #0
	ldrsh r3, [r3, r4]
	adds r1, r1, r3
	adds r2, #0x21
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, ip
	movs r3, #0
	bl sub_08004344
_0802D922:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _0802D954
	ldr r0, _0802D97C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802D954
	bl sub_08007578
	cmp r0, #0
	bne _0802D954
	ldr r0, [sp, #0x54]
	adds r5, r0, #0
	subs r5, #1
	str r5, [sp, #0x54]
	cmp r0, #0
	beq _0802D954
	b _0802D726
_0802D954:
	ldr r2, _0802D988 @ =0x030067A0
	ldr r6, [sp, #0x68]
	adds r2, r6, r2
	movs r1, #1
	ldr r0, [sp, #0x50]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802D966:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D978: .4byte 0x0805289C
_0802D97C: .4byte 0x030063D8
_0802D980: .4byte 0x08054908
_0802D984: .4byte 0x080FBB24
_0802D988: .4byte 0x030067A0

	thumb_func_start sub_0802D98C
sub_0802D98C: @ 0x0802D98C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	movs r7, #0
	ldr r1, _0802DA20 @ =0x030067A0
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802D9BE
	movs r3, #1
_0802D9AC:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802DA12
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802D9AC
_0802D9BE:
	cmp r7, #0xf
	bhi _0802DA12
	ldr r5, _0802DA24 @ =0x030067D0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802DA28 @ =sub_0802D53C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	mov r0, sb
	lsls r2, r0, #0x10
	orrs r2, r7
	adds r0, r4, #0
	mov r1, r8
	bl CreateThread
	ldr r0, _0802DA20 @ =0x030067A0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802DA12:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DA20: .4byte 0x030067A0
_0802DA24: .4byte 0x030067D0
_0802DA28: .4byte sub_0802D53C

	thumb_func_start sub_0802DA2C
sub_0802DA2C: @ 0x0802DA2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldr r1, _0802DA64 @ =0x080FBB84
	lsls r0, r2, #4
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r0, r6]
	mov sb, r1
	adds r3, #0x88
	ldrh r0, [r3]
	subs r0, #2
	cmp r0, #0x23
	bhi _0802DB12
	lsls r0, r0, #2
	ldr r1, _0802DA68 @ =_0802DA6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DA64: .4byte 0x080FBB84
_0802DA68: .4byte _0802DA6C
_0802DA6C: @ jump table
	.4byte _0802DAFC @ case 0
	.4byte _0802DB00 @ case 1
	.4byte _0802DB04 @ case 2
	.4byte _0802DB08 @ case 3
	.4byte _0802DB0C @ case 4
	.4byte _0802DB10 @ case 5
	.4byte _0802DAFC @ case 6
	.4byte _0802DB00 @ case 7
	.4byte _0802DB04 @ case 8
	.4byte _0802DB08 @ case 9
	.4byte _0802DB0C @ case 10
	.4byte _0802DB10 @ case 11
	.4byte _0802DAFC @ case 12
	.4byte _0802DB00 @ case 13
	.4byte _0802DB04 @ case 14
	.4byte _0802DB08 @ case 15
	.4byte _0802DB0C @ case 16
	.4byte _0802DB10 @ case 17
	.4byte _0802DAFC @ case 18
	.4byte _0802DB00 @ case 19
	.4byte _0802DB04 @ case 20
	.4byte _0802DB08 @ case 21
	.4byte _0802DB0C @ case 22
	.4byte _0802DB10 @ case 23
	.4byte _0802DAFC @ case 24
	.4byte _0802DB00 @ case 25
	.4byte _0802DB04 @ case 26
	.4byte _0802DB08 @ case 27
	.4byte _0802DB0C @ case 28
	.4byte _0802DB10 @ case 29
	.4byte _0802DAFC @ case 30
	.4byte _0802DB00 @ case 31
	.4byte _0802DB04 @ case 32
	.4byte _0802DB08 @ case 33
	.4byte _0802DB0C @ case 34
	.4byte _0802DB10 @ case 35
_0802DAFC:
	movs r4, #0
	b _0802DB12
_0802DB00:
	movs r4, #1
	b _0802DB12
_0802DB04:
	movs r4, #2
	b _0802DB12
_0802DB08:
	movs r4, #3
	b _0802DB12
_0802DB0C:
	movs r4, #4
	b _0802DB12
_0802DB10:
	movs r4, #5
_0802DB12:
	lsls r6, r2, #4
	adds r0, r4, #1
	mov r8, r0
	cmp r2, #1
	bne _0802DB8A
	lsls r1, r4, #2
	adds r1, r1, r4
	movs r2, #0x38
	ldrsh r0, [r5, r2]
	subs r0, #0x46
	subs r4, r1, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DB40
	rsbs r0, r0, #0
_0802DB40:
	cmp r4, r0
	bls _0802DB8A
	movs r4, #0
_0802DB46:
	ldr r0, [r5, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802DB56
	cmp r0, #4
	bne _0802DB84
_0802DB56:
	movs r0, #4
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x24
	adds r1, r1, r2
	ldrh r2, [r5, #0x38]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r2
	strh r0, [r1]
	movs r4, #3
	bl sub_080075AC
	cmp r0, #0
	bne _0802DB84
	bl sub_08007544
	cmp r0, #0
	bne _0802DB84
	movs r0, #0x29
	bl PlaySE
_0802DB84:
	adds r4, #1
	cmp r4, #2
	bls _0802DB46
_0802DB8A:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DB98
	rsbs r0, r0, #0
_0802DB98:
	movs r1, #0x32
	bl __umodsi3
	adds r0, #0x64
	mov r1, r8
	mov r2, sb
	muls r2, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	add r1, sl
	muls r1, r2, r1
	muls r0, r1, r0
	ldr r1, _0802DBCC @ =0x0001D4C0
	bl __udivsi3
	adds r3, r0, #0
	ldr r1, _0802DBD0 @ =0x080FBB84
	adds r0, r6, r1
	ldrh r2, [r0, #2]
	cmp r2, #2
	beq _0802DBE0
	cmp r2, #2
	bgt _0802DBD4
	cmp r2, #1
	beq _0802DBDA
	b _0802DBEA
	.align 2, 0
_0802DBCC: .4byte 0x0001D4C0
_0802DBD0: .4byte 0x080FBB84
_0802DBD4:
	cmp r2, #3
	beq _0802DBE6
	b _0802DBEA
_0802DBDA:
	movs r2, #0x36
	ldrsh r7, [r5, r2]
	b _0802DBEA
_0802DBE0:
	movs r0, #0x38
	ldrsh r7, [r5, r0]
	b _0802DBEA
_0802DBE6:
	movs r2, #0x3a
	ldrsh r7, [r5, r2]
_0802DBEA:
	adds r0, r6, r1
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0802DC00
	movs r0, #0x6e
	subs r0, r0, r7
	muls r0, r3, r0
	movs r1, #0x3c
	bl __udivsi3
	adds r3, r0, #0
_0802DC00:
	cmp r3, #0
	bne _0802DC06
	movs r3, #1
_0802DC06:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802DC18
sub_0802DC18: @ 0x0802DC18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	ldr r2, _0802DC68 @ =gEnemies
	movs r0, #0x94
	ldr r3, [sp, #0x5c]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov sb, r0
	ldr r5, [sp, #0x60]
	lsrs r5, r5, #0x10
	mov r8, r5
	movs r0, #0xff
	ldr r6, [sp, #0x60]
	ands r6, r0
	str r6, [sp, #0x60]
	mov r0, sb
	adds r0, #0x88
	ldrh r0, [r0]
	subs r0, #2
	cmp r0, #0x17
	bhi _0802DCF2
	lsls r0, r0, #2
	ldr r1, _0802DC6C @ =_0802DC70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DC68: .4byte gEnemies
_0802DC6C: .4byte _0802DC70
_0802DC70: @ jump table
	.4byte _0802DCD0 @ case 0
	.4byte _0802DCD6 @ case 1
	.4byte _0802DCDC @ case 2
	.4byte _0802DCE2 @ case 3
	.4byte _0802DCE8 @ case 4
	.4byte _0802DCEE @ case 5
	.4byte _0802DCF2 @ case 6
	.4byte _0802DCF2 @ case 7
	.4byte _0802DCF2 @ case 8
	.4byte _0802DCF2 @ case 9
	.4byte _0802DCF2 @ case 10
	.4byte _0802DCF2 @ case 11
	.4byte _0802DCF2 @ case 12
	.4byte _0802DCF2 @ case 13
	.4byte _0802DCF2 @ case 14
	.4byte _0802DCF2 @ case 15
	.4byte _0802DCF2 @ case 16
	.4byte _0802DCF2 @ case 17
	.4byte _0802DCD0 @ case 18
	.4byte _0802DCD6 @ case 19
	.4byte _0802DCDC @ case 20
	.4byte _0802DCE2 @ case 21
	.4byte _0802DCE8 @ case 22
	.4byte _0802DCEE @ case 23
_0802DCD0:
	movs r0, #0
	str r0, [sp, #0x6c]
	b _0802DCF2
_0802DCD6:
	movs r1, #1
	str r1, [sp, #0x6c]
	b _0802DCF2
_0802DCDC:
	movs r2, #2
	str r2, [sp, #0x6c]
	b _0802DCF2
_0802DCE2:
	movs r3, #3
	str r3, [sp, #0x6c]
	b _0802DCF2
_0802DCE8:
	movs r5, #4
	str r5, [sp, #0x6c]
	b _0802DCF2
_0802DCEE:
	movs r6, #5
	str r6, [sp, #0x6c]
_0802DCF2:
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x64]
	add r6, sp, #0x58
	movs r4, #0
	strh r4, [r6]
	mov r5, sp
	adds r5, #0x5a
	strh r4, [r5]
	mov r1, sb
	ldr r1, [r1, #0x10]
	str r1, [sp, #0x70]
	mov r2, sb
	ldr r2, [r2, #0x14]
	str r2, [sp, #0x74]
	ldr r1, _0802DDF8 @ =0x00100006
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r0, #8
	strb r0, [r1]
	strh r4, [r6]
	strh r4, [r5]
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	strh r4, [r6]
	strh r4, [r5]
	ldr r1, _0802DDFC @ =0x080FB9FC
	mov r3, sb
	movs r2, #8
	ldrsh r0, [r3, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r2, r2, #0x14
	ldr r3, [sp, #0x64]
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	str r3, [sp, #0x64]
	ldr r3, [sp, #0x6c]
	lsls r1, r3, #0x13
	lsrs r1, r1, #0x10
	str r1, [sp, #0x68]
	lsrs r0, r0, #0x11
	str r0, [sp, #0x7c]
	ldr r3, _0802DE00 @ =0x0805289C
	lsrs r0, r2, #0x10
	mov sl, r0
	asrs r7, r2, #0x10
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x70]
	adds r1, r1, r0
	str r1, [sp, #0x70]
	lsls r0, r7, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0x74]
	adds r3, r3, r0
	str r3, [sp, #0x74]
	mov r5, r8
	cmp r5, #2
	bls _0802DDA2
	b _0802DECE
_0802DDA2:
	ldr r1, _0802DE04 @ =gPlayers
	movs r0, #0xd4
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r2, [sp, #0x70]
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r4, sp, #0x54
	strh r0, [r4]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x56
	strh r1, [r5]
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	subs r1, r3, r7
	cmp r1, #0x80
	ble _0802DE0C
	ldr r6, _0802DE08 @ =0xFFFFFF00
	adds r0, r6, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0802DE1E
	.align 2, 0
_0802DDF8: .4byte 0x00100006
_0802DDFC: .4byte 0x080FB9FC
_0802DE00: .4byte 0x0805289C
_0802DE04: .4byte gPlayers
_0802DE08: .4byte 0xFFFFFF00
_0802DE0C:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802DE1E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	adds r2, r0, #0
	orrs r2, r3
_0802DE1E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802DE30
	adds r0, #7
_0802DE30:
	asrs r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov sl, r3
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DE4C
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802DE4C:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802DE64
	ldr r2, _0802DEB0 @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802DE64:
	movs r0, #0xff
	mov r3, sl
	ands r3, r0
	lsrs r1, r3, #4
	ldr r2, _0802DEB4 @ =0x080FB9FC
	mov r6, sb
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r3, [r0]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #8
	ble _0802DE8C
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802DE8C:
	ldr r0, _0802DEB8 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #7
	beq _0802DEBC
	mov r0, sb
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _0802DEBC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DEAA
	rsbs r0, r0, #0
_0802DEAA:
	lsls r0, r3, #0x14
	b _0802DED4
	.align 2, 0
_0802DEB0: .4byte 0xFFFFFF00
_0802DEB4: .4byte 0x080FB9FC
_0802DEB8: .4byte gMapLayer_03003910
_0802DEBC:
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	b _0802DED6
_0802DECE:
	mov r0, r8
	subs r0, #4
	lsls r0, r0, #0x10
_0802DED4:
	lsrs r0, r0, #0x10
_0802DED6:
	mov sl, r0
	mov r6, sb
	ldrh r6, [r6, #8]
	str r6, [sp, #0x78]
	mov r0, sb
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r0, [sp, #0x5c]
	lsls r0, r0, #2
	str r0, [sp, #0x90]
	cmp r1, #0
	bne _0802DF2C
_0802DEF0:
	bl sub_08007750
	cmp r0, #0
	bne _0802DF2C
	bl sub_080074CC
	cmp r0, #0
	bne _0802DF2C
	ldr r0, _0802DF6C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802DF2C
	bl sub_08007578
	cmp r0, #0
	bne _0802DF2C
	mov r1, sb
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bne _0802DF22
	b _0802E1EA
_0802DF22:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802DEF0
_0802DF2C:
	bl sub_080075AC
	cmp r0, #0
	bne _0802DF42
	bl sub_08007544
	cmp r0, #0
	bne _0802DF42
	movs r0, #0x28
	bl PlaySE
_0802DF42:
	ldr r1, [sp, #0x64]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	cmp r1, #0
	bne _0802DF52
	b _0802E1EA
_0802DF52:
	mov r2, sp
	adds r2, #0x54
	str r2, [sp, #0x8c]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x84]
	lsls r0, r0, #1
	ldr r5, _0802DF70 @ =0x0805289C
	adds r0, r0, r5
	str r0, [sp, #0x88]
_0802DF68:
	movs r6, #0
	b _0802E042
	.align 2, 0
_0802DF6C: .4byte 0x030063D8
_0802DF70: .4byte 0x0805289C
_0802DF74:
	mov r0, sb
	ldrh r1, [r0, #0x26]
	ldr r4, _0802E0BC @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r3, [r0]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0802E03C
	ldrh r0, [r3]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r1, [sp, #0x70]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	ldr r5, [sp, #0x8c]
	strh r0, [r5]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	ldr r1, [sp, #0x74]
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x56
	strh r1, [r0]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0802DFC0
	rsbs r0, r0, #0
_0802DFC0:
	cmp r0, #7
	bgt _0802E03C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DFCE
	rsbs r0, r0, #0
_0802DFCE:
	cmp r0, #7
	bgt _0802E03C
	ldr r5, [sp, #0x80]
	cmp r5, r6
	bne _0802E03C
	adds r4, r2, r4
	ldrh r2, [r4, #0xc]
	adds r0, r2, #0
	cmp r0, #8
	beq _0802E03C
	cmp r0, #9
	beq _0802E03C
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802E03C
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802E03C
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r5, r0
	ldr r1, [r1, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802E03C
	bl sub_08007544
	cmp r0, #0
	bne _0802E03C
	movs r0, #0
	ldr r1, [sp, #0x6c]
	adds r2, r4, #0
	mov r3, sb
	bl sub_0802DA2C
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, sb
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r4, #0xc]
_0802E03C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802E042:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802E05A
	bl sub_080077C0
	cmp r0, #0
	bne _0802E03C
	bl sub_08007670
	cmp r0, #0
	beq _0802DF74
_0802E05A:
	ldr r5, [sp, #0x64]
	ldr r6, [sp, #0x7c]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802E07E
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802E07E
	b _0802E1EA
_0802E07E:
	bl sub_080076A8
	cmp r0, #0
	beq _0802E0C4
	ldr r0, [sp, #0x84]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802E0C0 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x70]
	adds r3, r3, r0
	str r3, [sp, #0x70]
	ldr r5, [sp, #0x88]
	movs r6, #0
	ldrsh r1, [r5, r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x74]
	adds r1, r1, r0
	str r1, [sp, #0x74]
	mov r2, sl
	lsls r2, r2, #0x10
	mov r8, r2
	b _0802E0F6
	.align 2, 0
_0802E0BC: .4byte gPlayers
_0802E0C0: .4byte 0x0805289C
_0802E0C4:
	ldr r0, [sp, #0x84]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _0802E20C @ =0x0805289C
	adds r0, r0, r3
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r6, [sp, #0x70]
	adds r6, r6, r0
	str r6, [sp, #0x70]
	ldr r0, [sp, #0x88]
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x74]
	adds r3, r3, r0
	str r3, [sp, #0x74]
	mov r5, sl
	lsls r5, r5, #0x10
	mov r8, r5
_0802E0F6:
	ldr r6, [sp, #0x70]
	asrs r5, r6, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x74]
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
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x78]
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r4, #0
	add r2, sp, #0x58
	mov r3, sp
	adds r3, #0x5a
	bl sub_08026C40
	ldr r0, _0802E210 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802E1AE
	bl sub_08007510
	cmp r0, #0
	bne _0802E1AE
	bl sub_08007604
	cmp r0, #0
	bne _0802E1AE
	bl sub_08007544
	cmp r0, #0
	bne _0802E1AE
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, _0802E214 @ =0x080FB720
	mov r3, r8
	asrs r1, r3, #0x14
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r6, _0802E218 @ =0x080FBB24
	adds r1, r2, r6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r7, r6]
	ldr r3, _0802E21C @ =0x080FBB26
	adds r2, r2, r3
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	add r2, sp, #0x58
	ldrh r3, [r2]
	str r5, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802E1AE:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0802E1EA
	bl sub_080074CC
	cmp r0, #0
	bne _0802E1EA
	ldr r0, _0802E210 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E1EA
	bl sub_08007578
	cmp r0, #0
	bne _0802E1EA
	ldr r1, [sp, #0x64]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	cmp r1, #0
	beq _0802E1EA
	b _0802DF68
_0802E1EA:
	ldr r2, _0802E220 @ =0x030067A0
	ldr r3, [sp, #0x90]
	adds r2, r3, r2
	movs r1, #1
	ldr r5, [sp, #0x60]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E20C: .4byte 0x0805289C
_0802E210: .4byte 0x030063D8
_0802E214: .4byte 0x080FB720
_0802E218: .4byte 0x080FBB24
_0802E21C: .4byte 0x080FBB26
_0802E220: .4byte 0x030067A0

	thumb_func_start sub_0802E224
sub_0802E224: @ 0x0802E224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	mov sb, r0
	str r1, [sp, #0x28]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r2, _0802E270 @ =gEnemies
	movs r0, #0x94
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [sp, #0x28]
	lsrs r7, r0, #0x10
	movs r0, #0xff
	ldr r1, [sp, #0x28]
	ands r1, r0
	str r1, [sp, #0x28]
	mov r0, r8
	adds r0, #0x88
	ldrh r0, [r0]
	subs r0, #8
	cmp r0, #0x17
	bhi _0802E2FA
	lsls r0, r0, #2
	ldr r1, _0802E274 @ =_0802E278
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802E270: .4byte gEnemies
_0802E274: .4byte _0802E278
_0802E278: @ jump table
	.4byte _0802E2D8 @ case 0
	.4byte _0802E2DE @ case 1
	.4byte _0802E2E4 @ case 2
	.4byte _0802E2EA @ case 3
	.4byte _0802E2F0 @ case 4
	.4byte _0802E2F6 @ case 5
	.4byte _0802E2FA @ case 6
	.4byte _0802E2FA @ case 7
	.4byte _0802E2FA @ case 8
	.4byte _0802E2FA @ case 9
	.4byte _0802E2FA @ case 10
	.4byte _0802E2FA @ case 11
	.4byte _0802E2FA @ case 12
	.4byte _0802E2FA @ case 13
	.4byte _0802E2FA @ case 14
	.4byte _0802E2FA @ case 15
	.4byte _0802E2FA @ case 16
	.4byte _0802E2FA @ case 17
	.4byte _0802E2D8 @ case 18
	.4byte _0802E2DE @ case 19
	.4byte _0802E2E4 @ case 20
	.4byte _0802E2EA @ case 21
	.4byte _0802E2F0 @ case 22
	.4byte _0802E2F6 @ case 23
_0802E2D8:
	movs r2, #0
	str r2, [sp, #0x3c]
	b _0802E2FA
_0802E2DE:
	movs r3, #1
	str r3, [sp, #0x3c]
	b _0802E2FA
_0802E2E4:
	movs r5, #2
	str r5, [sp, #0x3c]
	b _0802E2FA
_0802E2EA:
	movs r6, #3
	str r6, [sp, #0x3c]
	b _0802E2FA
_0802E2F0:
	movs r0, #4
	str r0, [sp, #0x3c]
	b _0802E2FA
_0802E2F6:
	movs r1, #5
	str r1, [sp, #0x3c]
_0802E2FA:
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0x34]
	add r5, sp, #0x24
	movs r2, #0
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	mov r3, r8
	ldr r3, [r3, #0x10]
	str r3, [sp, #0x40]
	mov r6, r8
	ldr r6, [r6, #0x14]
	mov sl, r6
	ldr r1, _0802E400 @ =0x080FB9FC
	mov r3, r8
	movs r6, #8
	ldrsh r0, [r3, r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
	ldrh r0, [r3, #8]
	str r0, [sp, #0x48]
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	strh r2, [r5]
	strh r2, [r4]
	ldr r0, _0802E404 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802E408 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x2c]
	ldr r0, _0802E40C @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x34]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xd
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	ldr r3, [sp, #0x3c]
	lsls r0, r3, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp, #0x38]
	ldr r2, _0802E410 @ =0x0805289C
	ldr r6, [sp, #0x44]
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x40]
	adds r1, r1, r0
	str r1, [sp, #0x40]
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add sl, r0
	cmp r7, #2
	bls _0802E3AA
	b _0802E4DA
_0802E3AA:
	ldr r1, _0802E414 @ =gPlayers
	movs r0, #0xd4
	muls r0, r7, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r3, [sp, #0x40]
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	add r4, sp, #0x20
	strh r0, [r4]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	mov r5, sl
	subs r1, r1, r5
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x22
	strh r1, [r5]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	subs r3, r2, r6
	cmp r3, #0x80
	ble _0802E41C
	ldr r3, _0802E418 @ =0xFFFFFF00
	adds r0, r3, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0802E42E
	.align 2, 0
_0802E400: .4byte 0x080FB9FC
_0802E404: .4byte 0x00100004
_0802E408: .4byte 0x00110004
_0802E40C: .4byte 0x00130004
_0802E410: .4byte 0x0805289C
_0802E414: .4byte gPlayers
_0802E418: .4byte 0xFFFFFF00
_0802E41C:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r3, r0
	bge _0802E42E
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	adds r1, r0, #0
	orrs r1, r2
_0802E42E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x44]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802E440
	adds r0, #3
_0802E440:
	asrs r0, r0, #2
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x44]
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802E45C
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
_0802E45C:
	ldr r1, [sp, #0x44]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802E474
	ldr r2, _0802E4BC @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
_0802E474:
	ldr r3, [sp, #0x44]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	ldr r2, _0802E4C0 @ =0x080FB9FC
	mov r6, r8
	movs r3, #8
	ldrsh r1, [r6, r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0802E49A
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802E49A:
	ldr r0, _0802E4C4 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #7
	beq _0802E4C8
	mov r0, r8
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _0802E4C8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802E4B8
	rsbs r0, r0, #0
_0802E4B8:
	lsls r0, r2, #0x14
	b _0802E4DE
	.align 2, 0
_0802E4BC: .4byte 0xFFFFFF00
_0802E4C0: .4byte 0x080FB9FC
_0802E4C4: .4byte gMapLayer_03003910
_0802E4C8:
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	b _0802E4E0
_0802E4DA:
	subs r0, r7, #4
	lsls r0, r0, #0x10
_0802E4DE:
	lsrs r0, r0, #0x10
_0802E4E0:
	str r0, [sp, #0x44]
	mov r0, r8
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r4, r0, #0
	mov r6, sb
	lsls r6, r6, #2
	str r6, [sp, #0x60]
	cmp r1, #0
	bne _0802E530
_0802E4F4:
	bl sub_08007750
	cmp r0, #0
	bne _0802E530
	bl sub_080074CC
	cmp r0, #0
	bne _0802E530
	ldr r0, _0802E578 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E530
	bl sub_08007578
	cmp r0, #0
	bne _0802E530
	mov r1, r8
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bne _0802E526
	b _0802E7E8
_0802E526:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802E4F4
_0802E530:
	bl sub_080075AC
	cmp r0, #0
	bne _0802E546
	bl sub_08007544
	cmp r0, #0
	bne _0802E546
	movs r0, #0x29
	bl PlaySE
_0802E546:
	ldr r2, [sp, #0x34]
	lsls r0, r2, #0xf
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	adds r1, r2, #0
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	cmp r1, #0
	bne _0802E55E
	b _0802E7E8
_0802E55E:
	mov r3, sp
	adds r3, #0x20
	str r3, [sp, #0x5c]
	ldr r5, [sp, #0x44]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x54]
	lsls r0, r0, #1
	ldr r6, _0802E57C @ =0x0805289C
	adds r0, r0, r6
	str r0, [sp, #0x58]
_0802E574:
	movs r6, #0
	b _0802E64E
	.align 2, 0
_0802E578: .4byte 0x030063D8
_0802E57C: .4byte 0x0805289C
_0802E580:
	mov r0, r8
	ldrh r1, [r0, #0x26]
	ldr r4, _0802E6BC @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r3, [r0]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0802E648
	ldrh r0, [r3]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r1, [sp, #0x40]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	ldr r5, [sp, #0x5c]
	strh r0, [r5]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov r1, sl
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x22
	strh r1, [r0]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0802E5CC
	rsbs r0, r0, #0
_0802E5CC:
	cmp r0, #7
	bgt _0802E648
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802E5DA
	rsbs r0, r0, #0
_0802E5DA:
	cmp r0, #7
	bgt _0802E648
	ldr r5, [sp, #0x50]
	cmp r5, r6
	bne _0802E648
	adds r4, r2, r4
	ldrh r2, [r4, #0xc]
	adds r0, r2, #0
	cmp r0, #8
	beq _0802E648
	cmp r0, #9
	beq _0802E648
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802E648
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802E648
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r5, r0
	ldr r1, [r1, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802E648
	bl sub_08007544
	cmp r0, #0
	bne _0802E648
	movs r0, #1
	ldr r1, [sp, #0x3c]
	adds r2, r4, #0
	mov r3, r8
	bl sub_0802DA2C
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r4, #0xc]
_0802E648:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802E64E:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802E666
	bl sub_080077C0
	cmp r0, #0
	bne _0802E648
	bl sub_08007670
	cmp r0, #0
	beq _0802E580
_0802E666:
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x4c]
	ldr r0, [sp, #0x40]
	mov r1, sl
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802E68A
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802E68A
	b _0802E7E8
_0802E68A:
	bl sub_080076A8
	cmp r0, #0
	beq _0802E6C4
	ldr r0, [sp, #0x54]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802E6C0 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x40]
	adds r3, r3, r0
	str r3, [sp, #0x40]
	ldr r5, [sp, #0x58]
	movs r6, #0
	ldrsh r1, [r5, r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	b _0802E6EA
	.align 2, 0
_0802E6BC: .4byte gPlayers
_0802E6C0: .4byte 0x0805289C
_0802E6C4:
	ldr r0, [sp, #0x54]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802E80C @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x40]
	adds r3, r3, r0
	str r3, [sp, #0x40]
	ldr r5, [sp, #0x58]
	movs r6, #0
	ldrsh r1, [r5, r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
_0802E6EA:
	add sl, r0
	ldr r0, [sp, #0x44]
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r1, [sp, #0x40]
	asrs r5, r1, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	asrs r4, r2, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x20
	mov r7, sp
	adds r7, #0x22
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
	ldr r0, [sp, #0x48]
	adds r0, #0x25
	ldr r3, [sp, #0x38]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	ldr r3, [sp, #0x30]
	bl sub_08004214
	ldr r0, _0802E810 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802E7AC
	bl sub_08007510
	cmp r0, #0
	bne _0802E7AC
	bl sub_08007604
	cmp r0, #0
	bne _0802E7AC
	bl sub_08007544
	cmp r0, #0
	bne _0802E7AC
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, _0802E814 @ =0x080FB720
	mov r3, sb
	asrs r1, r3, #0x14
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r6, _0802E818 @ =0x080FBB24
	adds r1, r2, r6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r7, r6]
	ldr r3, _0802E81C @ =0x080FBB26
	adds r2, r2, r3
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	mov r2, sp
	ldrh r3, [r2, #0x24]
	str r5, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r6, [sp, #0x30]
	str r6, [sp, #8]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802E7AC:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0802E7E8
	bl sub_080074CC
	cmp r0, #0
	bne _0802E7E8
	ldr r0, _0802E810 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E7E8
	bl sub_08007578
	cmp r0, #0
	bne _0802E7E8
	ldr r1, [sp, #0x34]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	cmp r1, #0
	beq _0802E7E8
	b _0802E574
_0802E7E8:
	ldr r2, _0802E820 @ =0x030067A0
	ldr r3, [sp, #0x60]
	adds r2, r3, r2
	movs r1, #1
	ldr r5, [sp, #0x28]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E80C: .4byte 0x0805289C
_0802E810: .4byte 0x030063D8
_0802E814: .4byte 0x080FB720
_0802E818: .4byte 0x080FBB24
_0802E81C: .4byte 0x080FBB26
_0802E820: .4byte 0x030067A0

	thumb_func_start sub_0802E824
sub_0802E824: @ 0x0802E824
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r4, r0, #0
	str r1, [sp, #0x38]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r2, _0802E86C @ =gEnemies
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov sl, r0
	movs r0, #0xff
	ldr r1, [sp, #0x38]
	ands r1, r0
	str r1, [sp, #0x38]
	mov r0, sl
	adds r0, #0x88
	ldrh r0, [r0]
	subs r0, #0xe
	cmp r0, #0x17
	bhi _0802E8F4
	lsls r0, r0, #2
	ldr r1, _0802E870 @ =_0802E874
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802E86C: .4byte gEnemies
_0802E870: .4byte _0802E874
_0802E874: @ jump table
	.4byte _0802E8D4 @ case 0
	.4byte _0802E8DA @ case 1
	.4byte _0802E8DE @ case 2
	.4byte _0802E8E4 @ case 3
	.4byte _0802E8EA @ case 4
	.4byte _0802E8F0 @ case 5
	.4byte _0802E8F4 @ case 6
	.4byte _0802E8F4 @ case 7
	.4byte _0802E8F4 @ case 8
	.4byte _0802E8F4 @ case 9
	.4byte _0802E8F4 @ case 10
	.4byte _0802E8F4 @ case 11
	.4byte _0802E8F4 @ case 12
	.4byte _0802E8F4 @ case 13
	.4byte _0802E8F4 @ case 14
	.4byte _0802E8F4 @ case 15
	.4byte _0802E8F4 @ case 16
	.4byte _0802E8F4 @ case 17
	.4byte _0802E8D4 @ case 18
	.4byte _0802E8DA @ case 19
	.4byte _0802E8DE @ case 20
	.4byte _0802E8E4 @ case 21
	.4byte _0802E8EA @ case 22
	.4byte _0802E8F0 @ case 23
_0802E8D4:
	movs r2, #0
	str r2, [sp, #0x48]
	b _0802E8F4
_0802E8DA:
	movs r3, #1
	b _0802E8F2
_0802E8DE:
	movs r0, #2
	str r0, [sp, #0x48]
	b _0802E8F4
_0802E8E4:
	movs r1, #3
	str r1, [sp, #0x48]
	b _0802E8F4
_0802E8EA:
	movs r2, #4
	str r2, [sp, #0x48]
	b _0802E8F4
_0802E8F0:
	movs r3, #5
_0802E8F2:
	str r3, [sp, #0x48]
_0802E8F4:
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x44]
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	movs r7, #0
	adds r1, #0x14
	str r1, [sp, #0x74]
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x64]
	mov r3, sl
	adds r3, #0x4a
	str r3, [sp, #0x70]
	lsls r4, r4, #2
	str r4, [sp, #0x68]
	adds r4, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x64]
_0802E91A:
	lsls r1, r7, #1
	adds r0, r4, r1
	strh r2, [r0]
	adds r1, r3, r1
	strh r2, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0802E91A
	ldr r0, _0802E980 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x40]
	ldr r0, _0802E984 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x3c]
	ldr r0, _0802E988 @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r4, sl
	ldr r4, [r4, #0x10]
	mov sb, r4
	mov r0, sl
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x4c]
	ldr r1, _0802E98C @ =0x080FB9FC
	mov r2, sl
	movs r3, #8
	ldrsh r0, [r2, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	movs r6, #0
	movs r4, #0
	str r4, [sp, #0x54]
	movs r7, #0
	add r0, sp, #0x20
	mov r8, r0
	b _0802EAD8
	.align 2, 0
_0802E980: .4byte 0x00100004
_0802E984: .4byte 0x00110004
_0802E988: .4byte 0x00130004
_0802E98C: .4byte 0x080FB9FC
_0802E990:
	ldrh r0, [r4, #0xc]
	cmp r0, #8
	bne _0802E998
	b _0802EAD2
_0802E998:
	cmp r0, #9
	bne _0802E99E
	b _0802EAD2
_0802E99E:
	mov r2, sl
	ldrh r1, [r2, #0x26]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	beq _0802E9B4
	b _0802EAD2
_0802E9B4:
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E9C0
	b _0802EAD2
_0802E9C0:
	ldrh r0, [r2]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov r3, sb
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	add r4, sp, #0x34
	strh r0, [r4]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	ldr r0, [sp, #0x4c]
	subs r1, r1, r0
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x36
	strh r1, [r5]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1b
	ldr r3, [sp, #0x58]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0802EA0C
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802EA0C:
	ldr r0, _0802EA94 @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x68
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #7
	bne _0802EA34
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EA34
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802EA2E
	rsbs r0, r0, #0
_0802EA2E:
	cmp r0, #8
	bgt _0802EA34
	movs r2, #1
_0802EA34:
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0802EA58
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EA58
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802EA52
	rsbs r0, r0, #0
_0802EA52:
	cmp r0, #4
	bgt _0802EA58
	movs r2, #1
_0802EA58:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802EA62
	rsbs r0, r0, #0
_0802EA62:
	cmp r0, #1
	bgt _0802EAD2
	ldr r0, [sp, #0x44]
	cmp r0, #5
	beq _0802EABE
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0802EA98
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EA98
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x13
	cmp r4, #0
	bge _0802EA8C
	rsbs r4, r4, #0
_0802EA8C:
	ldr r0, [sp, #0x44]
	adds r0, #4
	lsls r1, r0, #2
	b _0802EAAA
	.align 2, 0
_0802EA94: .4byte gMapLayer_03003910
_0802EA98:
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x13
	cmp r4, #0
	bge _0802EAA4
	rsbs r4, r4, #0
_0802EAA4:
	ldr r0, [sp, #0x44]
	adds r0, #4
	lsls r1, r0, #1
_0802EAAA:
	cmp r4, r1
	bge _0802EAD2
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802EABA
	rsbs r0, r0, #0
_0802EABA:
	cmp r0, r1
	bge _0802EAD2
_0802EABE:
	ldr r0, [sp, #0x54]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x54]
	add r0, r8
	strb r7, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802EAD2:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802EAD8:
	bl sub_08001EC4
	cmp r7, r0
	bhs _0802EAFC
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0802EB64 @ =gPlayers
	adds r4, r1, r0
	bl sub_080077C0
	cmp r0, #0
	bne _0802EAD2
	bl sub_08007670
	cmp r0, #0
	bne _0802EAFC
	b _0802E990
_0802EAFC:
	ldr r1, [sp, #0x70]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802EB42
_0802EB04:
	bl sub_08007750
	cmp r0, #0
	bne _0802EB42
	bl sub_080074CC
	cmp r0, #0
	bne _0802EB42
	ldr r0, _0802EB68 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EB42
	bl sub_08007578
	cmp r0, #0
	bne _0802EB42
	mov r2, sl
	ldrh r0, [r2, #0xa]
	cmp r0, #7
	bne _0802EB36
	b _0802EC88
_0802EB36:
	bl WaitFrame
	ldr r3, [sp, #0x70]
	ldrh r0, [r3]
	cmp r0, #0
	beq _0802EB04
_0802EB42:
	bl sub_080075AC
	cmp r0, #0
	bne _0802EB72
	bl sub_08007544
	cmp r0, #0
	bne _0802EB72
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EB6C
	movs r0, #0x77
	bl PlaySE
	b _0802EB72
	.align 2, 0
_0802EB64: .4byte gPlayers
_0802EB68: .4byte 0x030063D8
_0802EB6C:
	movs r0, #0x2a
	bl PlaySE
_0802EB72:
	cmp r6, #0
	beq _0802EB78
	b _0802EC9C
_0802EB78:
	ldr r1, _0802EC7C @ =0x080FB9FC
	mov r4, sl
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _0802EC80 @ =0x0805289C
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
	add sb, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x4c]
	adds r1, r1, r0
	movs r2, #0
	str r2, [sp, #0x50]
	ldr r3, [sp, #0x44]
	adds r3, #0x17
	str r3, [sp, #0x6c]
	mov r4, sb
	asrs r4, r4, #0xc
	mov sl, r4
	asrs r1, r1, #0xc
	mov sb, r1
	add r0, sp, #0x34
	mov r8, r0
	mov r7, sp
	adds r7, #0x36
	lsls r4, r4, #0x10
	str r4, [sp, #0x60]
	ldr r5, [sp, #0x74]
_0802EBDC:
	mov r2, sb
	lsls r1, r2, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x60]
	asrs r0, r4, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	adds r3, r7, #0
	bl sub_08005FC4
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	str r2, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x40]
	bl sub_08004214
	cmp r0, #0
	beq _0802EC28
	ldr r0, [sp, #0x50]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
_0802EC28:
	ldr r0, _0802EC84 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802EC70
	bl sub_08007510
	cmp r0, #0
	bne _0802EC70
	bl sub_08007604
	cmp r0, #0
	bne _0802EC70
	bl sub_08007544
	cmp r0, #0
	bne _0802EC70
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldrh r3, [r5]
	str r6, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r2, [sp, #0x40]
	str r2, [sp, #8]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802EC70:
	bl WaitFrame
	ldr r3, [sp, #0x50]
	cmp r3, #0
	beq _0802EBDC
	b _0802EE7A
	.align 2, 0
_0802EC7C: .4byte 0x080FB9FC
_0802EC80: .4byte 0x0805289C
_0802EC84: .4byte 0x030063D8
_0802EC88:
	ldr r2, _0802EC98 @ =0x030067A0
	ldr r4, [sp, #0x68]
	adds r2, r4, r2
	movs r1, #1
	ldr r0, [sp, #0x38]
	lsls r1, r0
	b _0802EE86
	.align 2, 0
_0802EC98: .4byte 0x030067A0
_0802EC9C:
	movs r1, #0
	str r1, [sp, #0x50]
	b _0802EDA8
_0802ECA2:
	movs r7, #0
	ldr r3, [sp, #0x54]
	cmp r7, r3
	bhs _0802ED7A
	add r4, sp, #0x34
	mov sb, r4
	movs r0, #0x36
	add r0, sp
	mov r8, r0
_0802ECB4:
	add r0, sp, #0x20
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r0, #0xd4
	muls r1, r0, r1
	ldr r0, _0802EDB4 @ =gPlayers
	adds r4, r1, r0
	adds r4, #0xd0
	ldr r1, [r4]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, sb
	mov r3, r8
	bl sub_08005FC4
	ldr r1, [r4]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [sp, #0x44]
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r7, #1
	ldr r3, [sp, #0x74]
	adds r4, r3, r2
	ldr r0, [sp, #0x64]
	adds r2, r0, r2
	movs r1, #0
	str r1, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x40]
	bl sub_08004214
	cmp r0, #0
	beq _0802ED24
	ldr r0, [sp, #0x50]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
_0802ED24:
	ldr r0, _0802EDB8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802ED6E
	bl sub_08007510
	cmp r0, #0
	bne _0802ED6E
	bl sub_08007604
	cmp r0, #0
	bne _0802ED6E
	bl sub_08007544
	cmp r0, #0
	bne _0802ED6E
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r4]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r2, [sp, #0x40]
	str r2, [sp, #8]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
_0802ED6E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0x54]
	cmp r7, r0
	blo _0802ECB4
_0802ED7A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0802EDB0
	bl sub_080074CC
	cmp r0, #0
	bne _0802EDB0
	ldr r0, _0802EDB8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EDB0
	bl sub_08007578
	cmp r0, #0
	bne _0802EDB0
	ldr r1, [sp, #0x50]
_0802EDA8:
	ldr r2, [sp, #0x54]
	cmp r1, r2
	bhs _0802EDB0
	b _0802ECA2
_0802EDB0:
	movs r7, #0
	b _0802EE4E
	.align 2, 0
_0802EDB4: .4byte gPlayers
_0802EDB8: .4byte 0x030063D8
_0802EDBC:
	ldrh r0, [r4, #0xc]
	cmp r0, #8
	beq _0802EE48
	cmp r0, #9
	beq _0802EE48
	mov r3, sl
	ldrh r1, [r3, #0x26]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0802EE48
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802EE48
	movs r0, #2
	ldr r1, [sp, #0x48]
	adds r2, r4, #0
	bl sub_0802DA2C
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r3, #0x2c]
	str r0, [r1]
	movs r0, #7
	strh r0, [r4, #0xc]
	bl sub_080075AC
	cmp r0, #0
	bne _0802EE20
	bl sub_08007544
	cmp r0, #0
	bne _0802EE20
	movs r0, #0x1a
	bl PlaySE
_0802EE20:
	bl sub_08007750
	cmp r0, #0
	bne _0802EE7A
	bl sub_080074CC
	cmp r0, #0
	bne _0802EE7A
	ldr r0, _0802EE9C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EE7A
	bl sub_08007578
	cmp r0, #0
	bne _0802EE7A
_0802EE48:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802EE4E:
	ldr r4, [sp, #0x54]
	cmp r7, r4
	bhs _0802EE7A
	add r0, sp, #0x20
	adds r0, r0, r7
	ldrb r2, [r0]
	movs r0, #0xd4
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802EEA0 @ =gPlayers
	adds r4, r1, r0
	ldr r0, [sp, #0x5c]
	cmp r0, r2
	bne _0802EE20
	bl sub_080077C0
	cmp r0, #0
	bne _0802EE48
	bl sub_08007670
	cmp r0, #0
	beq _0802EDBC
_0802EE7A:
	ldr r2, _0802EEA4 @ =0x030067A0
	ldr r1, [sp, #0x68]
	adds r2, r1, r2
	movs r1, #1
	ldr r3, [sp, #0x38]
	lsls r1, r3
_0802EE86:
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EE9C: .4byte 0x030063D8
_0802EEA0: .4byte gPlayers
_0802EEA4: .4byte 0x030067A0

	thumb_func_start sub_0802EEA8
sub_0802EEA8: @ 0x0802EEA8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	mov sb, r2
	movs r4, #0
	ldr r1, _0802EF08 @ =0x030067A0
	lsls r0, r6, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802EEDC
	movs r3, #1
_0802EECA:
	adds r4, #1
	cmp r4, #0xf
	bhi _0802EF62
	adds r1, r3, #0
	lsls r1, r4
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802EECA
_0802EEDC:
	cmp r4, #0xf
	bhi _0802EF62
	ldr r0, _0802EF0C @ =0x030067D0
	lsls r3, r6, #2
	adds r0, r3, r0
	ldr r1, [r0]
	lsls r2, r4, #2
	adds r0, r2, r4
	lsls r0, r0, #3
	adds r1, r0, r1
	movs r0, #0x34
	str r0, [r1, #8]
	mov r8, r3
	adds r7, r2, #0
	cmp r5, #1
	beq _0802EF18
	cmp r5, #1
	blo _0802EF10
	cmp r5, #2
	beq _0802EF20
	b _0802EF24
	.align 2, 0
_0802EF08: .4byte 0x030067A0
_0802EF0C: .4byte 0x030067D0
_0802EF10:
	ldr r0, _0802EF14 @ =sub_0802DC18
	b _0802EF22
	.align 2, 0
_0802EF14: .4byte sub_0802DC18
_0802EF18:
	ldr r0, _0802EF1C @ =sub_0802E224
	b _0802EF22
	.align 2, 0
_0802EF1C: .4byte sub_0802E224
_0802EF20:
	ldr r0, _0802EF70 @ =sub_0802E824
_0802EF22:
	str r0, [r1, #0xc]
_0802EF24:
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r1, r0, #0
	ldr r0, _0802EF74 @ =0x030067D0
	add r0, r8
	ldr r2, [r0]
	adds r0, r7, r4
	lsls r0, r0, #3
	adds r0, r0, r2
	str r1, [r0, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x24]
	mov r1, sb
	lsls r2, r1, #0x10
	orrs r2, r4
	adds r1, r6, #0
	bl CreateThread
	ldr r2, _0802EF78 @ =0x030067A0
	add r2, r8
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0802EF62:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EF70: .4byte sub_0802E824
_0802EF74: .4byte 0x030067D0
_0802EF78: .4byte 0x030067A0

	thumb_func_start sub_0802EF7C
sub_0802EF7C: @ 0x0802EF7C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802EFC0 @ =0x030067F0
	lsls r4, r5, #2
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0802EFC4 @ =0x03006800
	str r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	bl Alloc
	ldr r1, _0802EFC8 @ =0x030067C0
	adds r4, r4, r1
	str r0, [r4]
	cmp r5, #0
	bne _0802EFB8
	ldr r4, _0802EFCC @ =0x03006790
	movs r0, #0xa0
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _0802EFD0 @ =0x03006808
	movs r0, #0xc0
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
_0802EFB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802EFC0: .4byte 0x030067F0
_0802EFC4: .4byte 0x03006800
_0802EFC8: .4byte 0x030067C0
_0802EFCC: .4byte 0x03006790
_0802EFD0: .4byte 0x03006808

	thumb_func_start sub_0802EFD4
sub_0802EFD4: @ 0x0802EFD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802EFE8 @ =0x030067C0
	lsls r1, r4, #2
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0802EFFE
	adds r5, r1, #0
	b _0802EFF0
	.align 2, 0
_0802EFE8: .4byte 0x030067C0
_0802EFEC:
	bl WaitFrame
_0802EFF0:
	ldr r0, _0802F01C @ =0x030067C0
	adds r0, r5, r0
	ldr r0, [r0]
	bl IsThreadInList
	cmp r0, #0
	bne _0802EFEC
_0802EFFE:
	ldr r0, _0802F01C @ =0x030067C0
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	bl Free
	movs r0, #0
	str r0, [r4]
	ldr r1, _0802F020 @ =0x03006790
	ldr r0, [r1]
	cmp r0, #0
	beq _0802F032
	adds r4, r1, #0
	b _0802F028
	.align 2, 0
_0802F01C: .4byte 0x030067C0
_0802F020: .4byte 0x03006790
_0802F024:
	bl WaitFrame
_0802F028:
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	bne _0802F024
_0802F032:
	ldr r5, _0802F050 @ =0x03006790
	ldr r0, [r5]
	bl Free
	ldr r4, _0802F054 @ =0x03006808
	ldr r0, [r4]
	bl Free
	movs r0, #0
	str r0, [r5]
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F050: .4byte 0x03006790
_0802F054: .4byte 0x03006808

	thumb_func_start sub_0802F058
sub_0802F058: @ 0x0802F058
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0802F0A4 @ =gPlayers
	adds r6, r1, r0
	ldr r1, _0802F0A8 @ =0x080FBB84
	lsls r0, r5, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r5, #0
	beq _0802F08A
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802F08A:
	adds r0, r6, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	blt _0802F0AC
	adds r0, r1, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0802F0AE
	.align 2, 0
_0802F0A4: .4byte gPlayers
_0802F0A8: .4byte 0x080FBB84
_0802F0AC:
	movs r0, #0
_0802F0AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
