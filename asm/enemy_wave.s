	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080352C4
sub_080352C4: @ 0x080352C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	mov r0, sb
	ldr r6, [r0, #0x10]
	ldr r1, [r0, #0x14]
	mov sl, r1
	mov r2, r8
	cmp r2, #0
	beq _08035310
	movs r3, #0x80
	str r3, [sp, #0x50]
	ldr r0, _0803530C @ =0xFFFE8000
	adds r6, r6, r0
	b _0803531A
	.align 2, 0
_0803530C: .4byte 0xFFFE8000
_08035310:
	movs r1, #0
	str r1, [sp, #0x50]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r6, r6, r2
_0803531A:
	movs r3, #0x78
	str r3, [sp, #0x4c]
	movs r5, #0
	mov r1, sp
	adds r1, #0x4a
	strh r5, [r1]
	add r0, sp, #0x48
	strh r5, [r0]
	subs r0, #4
	str r0, [sp, #0x54]
	subs r1, #4
	str r1, [sp, #0x58]
	mov r2, sl
	asrs r7, r2, #0xc
_08035336:
	mov r3, r8
	cmp r3, #0
	beq _0803535C
	ldr r1, _08035504 @ =0x0805289C
	ldr r0, [sp, #0x50]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #4
	adds r6, r6, r0
_0803535C:
	asrs r4, r6, #0xc
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x58]
	bl sub_08005FC4
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0x10
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_080271D0
	cmp r0, #0
	bne _080353E0
	bl sub_08007544
	cmp r0, #0
	bne _080353E0
	bl sub_08007510
	cmp r0, #0
	bne _080353E0
	bl sub_080075AC
	cmp r0, #0
	bne _080353E0
	ldr r1, [sp, #0x54]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x58]
	movs r2, #0
	ldrsh r1, [r3, r2]
	subs r1, #0x10
	add r2, sp, #0x48
	ldrh r3, [r2]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x10
	bl sub_08004344
_080353E0:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08035410
	bl sub_080074CC
	cmp r0, #0
	bne _08035410
	ldr r0, _08035508 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035410
	bl sub_08007578
	cmp r0, #0
	bne _08035410
	cmp r5, #0
	beq _08035336
_08035410:
	ldr r3, [sp, #0x4c]
	lsls r0, r3, #0x10
	ldr r1, _0803550C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x4c]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08035428
	b _080355F6
_08035428:
	ldr r3, _08035510 @ =gPlayers
	mov r8, r3
	movs r7, #0xd4
_0803542E:
	ldr r0, [sp, #0x50]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08035504 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #6
	adds r6, r6, r0
	ldr r3, [sp, #0x50]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #6
	add sl, r0
	bl GetMultiplayerId
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	mov r2, sl
	subs r0, r2, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _08035468
	rsbs r0, r0, #0
_08035468:
	asrs r0, r0, #3
	cmp r0, #1
	bgt _08035542
	bl sub_08007670
	cmp r0, #0
	bne _08035542
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0x80
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08035542
	bl GetMultiplayerId
	muls r0, r7, r0
	mov r5, r8
	adds r5, #0x58
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r6, r0
	bge _08035542
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r4, r6, r0
	bl GetMultiplayerId
	muls r0, r7, r0
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r4, r0
	ble _08035542
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08035542
	bl sub_08007544
	cmp r0, #0
	bne _08035542
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	adds r0, #0x70
	ldr r1, _08035514 @ =0x0000FFFE
	strh r1, [r0]
	bl sub_080076A8
	cmp r0, #0
	beq _08035518
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x54
	ldrh r0, [r1]
	adds r0, #0x96
	b _08035528
	.align 2, 0
_08035504: .4byte 0x0805289C
_08035508: .4byte gUnknown_030063D8
_0803550C: .4byte 0xFFFF0000
_08035510: .4byte gPlayers
_08035514: .4byte 0x0000FFFE
_08035518:
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x54
	ldrh r0, [r1]
	adds r0, #0x32
_08035528:
	strh r0, [r1]
	bl GetMultiplayerId
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0x80
	adds r1, r1, r0
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_08035542:
	asrs r5, r6, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r3, sl
	asrs r4, r3, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x58]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_080271D0
	cmp r0, #0
	bne _080355B2
	bl sub_08007544
	cmp r0, #0
	bne _080355B2
	bl sub_08007510
	cmp r0, #0
	bne _080355B2
	bl sub_080075AC
	cmp r0, #0
	bne _080355B2
	ldr r1, [sp, #0x54]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x58]
	movs r2, #0
	ldrsh r1, [r3, r2]
	subs r1, #0x10
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x11
	movs r3, #0
	bl sub_08004344
_080355B2:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080355F6
	bl sub_080074CC
	cmp r0, #0
	bne _080355F6
	ldr r0, _08035608 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080355F6
	bl sub_08007578
	cmp r0, #0
	bne _080355F6
	ldr r3, [sp, #0x4c]
	lsls r0, r3, #0x10
	ldr r1, _0803560C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x4c]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080355F6
	b _0803542E
_080355F6:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035608: .4byte gUnknown_030063D8
_0803560C: .4byte 0xFFFF0000
