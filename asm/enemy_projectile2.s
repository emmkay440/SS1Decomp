	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803861C
sub_0803861C: @ 0x0803861C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sb, r0
	str r1, [sp, #0x58]
	add r5, sp, #0x44
	ldr r1, _08038684 @ =0x08054948
	adds r0, r5, #0
	movs r2, #6
	bl memcpy
	add r4, sp, #0x4c
	ldr r1, _08038688 @ =0x0805494E
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	ldr r1, _0803868C @ =0x00100020
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #0xe
	strb r0, [r1, #0x1c]
	mov r0, sb
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x5c]
	mov r1, sb
	ldr r1, [r1, #0x14]
	mov sl, r1
	movs r2, #0x78
	str r2, [sp, #0x60]
	bl sub_08007544
	cmp r0, #0
	beq _08038672
	b _0803888A
_08038672:
	bl sub_080075AC
	cmp r0, #0
	beq _0803867C
	b _0803888A
_0803867C:
	movs r0, #0x56
	bl PlaySE
	b _0803888A
	.align 2, 0
_08038684: .4byte 0x08054948
_08038688: .4byte 0x0805494E
_0803868C: .4byte 0x00100020
_08038690:
	bl sub_080076A8
	cmp r0, #0
	beq _080386CC
	ldr r3, [sp, #0x58]
	lsls r2, r3, #1
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _080386C8 @ =0x0805289C
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #6
	ldr r3, [sp, #0x5c]
	adds r3, r3, r0
	str r3, [sp, #0x5c]
	lsls r1, r1, #1
	ldr r0, _080386C8 @ =0x0805289C
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #6
	b _080386FA
	.align 2, 0
_080386C8: .4byte 0x0805289C
_080386CC:
	ldr r0, [sp, #0x58]
	lsls r2, r0, #1
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _080388BC @ =0x0805289C
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	ldr r3, [sp, #0x5c]
	adds r3, r3, r0
	str r3, [sp, #0x5c]
	lsls r1, r1, #1
	ldr r0, _080388BC @ =0x0805289C
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #5
_080386FA:
	add sl, r0
	str r2, [sp, #0x6c]
	bl GetMultiplayerId
	ldr r1, [sp, #0x5c]
	asrs r6, r1, #0xc
	ldr r2, _080388C0 @ =gPlayers
	mov r8, r2
	movs r7, #0xd4
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r3, sl
	asrs r5, r3, #0xc
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x64]
	str r5, [sp, #0x68]
	cmp r0, #0
	bne _080387DE
	cmp r4, #0x11
	bhi _080387DE
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r5, r8
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _080387DE
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _080387DE
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080387DE
	bl sub_08007544
	cmp r0, #0
	bne _080387DE
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	adds r0, #0x70
	ldr r1, _080388C4 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	mov r0, sb
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x2c]
	str r0, [r1]
_080387DE:
	bl sub_08007510
	cmp r0, #0
	bne _0803885E
	bl sub_08007604
	cmp r0, #0
	bne _0803885E
	bl sub_08007544
	cmp r0, #0
	bne _0803885E
	bl sub_080075AC
	adds r6, r0, #0
	cmp r6, #0
	bne _0803885E
	ldr r1, [sp, #0x1c]
	movs r0, #0x1e
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x64]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x68]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x54
	mov r5, sp
	adds r5, #0x56
	movs r2, #0x30
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	movs r2, #0
	bl sub_08006008
	movs r1, #0
	ldrsh r3, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r2, [sp, #0x6c]
	add r2, sp
	adds r2, #0x4c
	ldrh r2, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r3, #0
	movs r3, #2
	bl sub_08004344
_0803885E:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080388A2
	bl sub_080074CC
	cmp r0, #0
	bne _080388A2
	ldr r0, _080388C8 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080388A2
	bl sub_08007578
	cmp r0, #0
	bne _080388A2
_0803888A:
	ldr r3, [sp, #0x60]
	lsls r0, r3, #0x10
	ldr r1, _080388CC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x60]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080388A2
	b _08038690
_080388A2:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080388BC: .4byte 0x0805289C
_080388C0: .4byte gPlayers
_080388C4: .4byte 0x0000FFFE
_080388C8: .4byte gUnknown_030063D8
_080388CC: .4byte 0xFFFF0000
