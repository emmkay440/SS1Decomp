	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08049088
sub_08049088: @ 0x08049088
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r5, #0
_080490A0:
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080490A0
	movs r5, #0
	ldr r4, _0804928C @ =gBgRegsBuffer
_080490B2:
	strh r5, [r4, #0xe]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3f
	bls _080490B2
	ldr r4, _08049290 @ =0xFFC40000
	ldr r5, _0804928C @ =gBgRegsBuffer
	movs r7, #0
_080490C8:
	ldrh r0, [r5, #0xe]
	adds r0, #1
	strh r0, [r5, #0xe]
	asrs r4, r4, #0x10
	str r7, [sp]
	ldr r0, _08049294 @ =gUnknown_030007B8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r4, #0x10
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	lsls r4, r6, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0x4f
	ble _080490C8
	movs r7, #5
	movs r0, #0x68
	bl PlaySE
	movs r5, #0
	ldr r0, _0804928C @ =gBgRegsBuffer
	mov r8, r0
_080490FE:
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =gUnknown_030007B8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	rsbs r4, r4, #0
	adds r4, #0x9b
	mov r1, r8
	strh r4, [r1, #0xe]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _080490FE
	movs r7, #2
	movs r5, #0
	ldr r0, _0804928C @ =gBgRegsBuffer
	mov sb, r0
	mov r8, r5
_08049144:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r4, r6, #0x10
	asrs r2, r4, #0x10
	rsbs r0, r2, #0
	adds r0, #0x9b
	mov r1, sb
	strh r0, [r1, #0xe]
	mov r0, r8
	str r0, [sp]
	ldr r0, _08049294 @ =gUnknown_030007B8
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08049144
	movs r5, #0
	movs r6, #0
_08049184:
	str r6, [sp]
	ldr r0, _08049294 @ =gUnknown_030007B8
	movs r1, #0x78
	asrs r2, r4, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1d
	bls _08049184
	movs r5, #0
	asrs r6, r4, #0x10
_080491A4:
	ldr r0, _08049298 @ =0x00007530
	bl sub_080492A8
	movs r0, #0
	bl sub_08049508
	ldr r0, _0804929C @ =gUnknown_030007B1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	ldr r0, _080492A0 @ =gUnknown_030007B2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r6, r2
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =gUnknown_030007B8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	bl sub_08049508
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x59
	bls _080491A4
	movs r0, #0x6a
	bl PlaySE
	movs r5, #0
	asrs r6, r4, #0x10
_080491EA:
	ldr r0, _080492A4 @ =0x00002EE0
	bl sub_080492A8
	movs r0, #0
	bl sub_08049508
	ldr r0, _0804929C @ =gUnknown_030007B1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	ldr r0, _080492A0 @ =gUnknown_030007B2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r6, r2
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =gUnknown_030007B8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	bl sub_08049508
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x59
	bls _080491EA
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
	asrs r4, r4, #0x10
_08049230:
	cmp r5, #0x2c
	bne _0804923A
	movs r0, #6
	bl sub_0800F3A0
_0804923A:
	movs r0, #0xfa
	lsls r0, r0, #6
	bl sub_080492A8
	movs r0, #0
	bl sub_08049508
	ldr r0, _0804929C @ =gUnknown_030007B1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	ldr r0, _080492A0 @ =gUnknown_030007B2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r4, r2
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =gUnknown_030007B8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	bl sub_08049508
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08049230
	movs r0, #0x6a
	bl StopSE
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804928C: .4byte gBgRegsBuffer
_08049290: .4byte 0xFFC40000
_08049294: .4byte gUnknown_030007B8
_08049298: .4byte 0x00007530
_0804929C: .4byte gUnknown_030007B1
_080492A0: .4byte gUnknown_030007B2
_080492A4: .4byte 0x00002EE0

	thumb_func_start sub_080492A8
sub_080492A8: @ 0x080492A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080492D8 @ =gUnknown_030007B0
	ldrb r0, [r0]
	cmp r0, #0x63
	bls _080492C2
	b _080494EA
_080492C2:
	ldr r0, _080492DC @ =gUnknown_030007B1
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _080492E4
	cmp r1, #0
	ble _080492E0
	subs r0, r2, #1
	b _080492E2
	.align 2, 0
_080492D8: .4byte gUnknown_030007B0
_080492DC: .4byte gUnknown_030007B1
_080492E0:
	adds r0, r2, #1
_080492E2:
	strb r0, [r4]
_080492E4:
	ldr r0, _080492FC @ =gUnknown_030007B2
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08049304
	cmp r1, #0
	ble _08049300
	subs r0, r2, #1
	b _08049302
	.align 2, 0
_080492FC: .4byte gUnknown_030007B2
_08049300:
	adds r0, r2, #1
_08049302:
	strb r0, [r3]
_08049304:
	ldr r1, _080493C4 @ =gBgRegsBuffer
	movs r0, #0
	ldrsb r0, [r4, r0]
	rsbs r0, r0, #0
	adds r0, #8
	strh r0, [r1, #0xc]
	movs r0, #0
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	adds r0, #0x4d
	strh r0, [r1, #0xe]
	movs r0, #0
	ldrsb r0, [r4, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r3, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	movs r4, #0
	movs r5, #0
	ldr r0, _080493C8 @ =gUnknown_030007B0
	ldrb r1, [r0]
	lsls r6, r6, #0x10
	cmp r5, r1
	bhs _0804935E
	ldr r0, _080493CC @ =gUnknown_030007B4
	ldr r2, [r0]
_0804933C:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049354
	cmp r0, #4
	beq _08049354
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08049354:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804933C
_0804935E:
	bl Random
	lsls r0, r0, #0x10
	cmp r0, r6
	ble _08049420
	cmp r4, #0x13
	bhi _08049420
	ldr r4, _080493C8 @ =gUnknown_030007B0
	ldrb r1, [r4]
	ldr r5, _080493CC @ =gUnknown_030007B4
	ldr r2, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0, #8]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	bl Random
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r4, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf0
	bl __umodsi3
	strh r0, [r4, #6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080493D0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x50
	b _080493DA
	.align 2, 0
_080493C4: .4byte gBgRegsBuffer
_080493C8: .4byte gUnknown_030007B0
_080493CC: .4byte gUnknown_030007B4
_080493D0:
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x8c
_080493DA:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r5, _080494FC @ =gUnknown_030007B0
	ldrb r1, [r5]
	ldr r4, _08049500 @ =gUnknown_030007B4
	ldr r2, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strh r3, [r0, #0xa]
	bl Random
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r4, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _08049504 @ =0x0000199D
	bl __divsi3
	adds r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r0, #0x68
	bl PlaySE
_08049420:
	movs r5, #0
	ldr r0, _080494FC @ =gUnknown_030007B0
	ldrb r2, [r0]
	cmp r5, r2
	bhs _080494EA
	ldr r3, _08049500 @ =gUnknown_030007B4
	mov sl, r3
_0804942E:
	mov r4, sl
	ldr r1, [r4]
	lsls r2, r5, #1
	adds r0, r2, r5
	lsls r4, r0, #2
	adds r1, r4, r1
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [sp, #0x10]
	adds r6, r5, #1
	str r6, [sp, #0xc]
	cmp r0, #2
	bhi _080494DC
	ldrh r7, [r1, #8]
	adds r6, r5, #0
	adds r3, r5, #0
	ldr r1, _080494FC @ =gUnknown_030007B0
	ldrb r0, [r1]
	cmp r5, r0
	bhs _080494AC
	ldr r2, _08049500 @ =gUnknown_030007B4
	mov ip, r2
	mov sb, r4
	mov r8, r0
_08049462:
	cmp r5, r3
	beq _080494A2
	mov r4, ip
	ldr r2, [r4]
	lsls r0, r3, #1
	adds r1, r0, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #1
	beq _08049488
	mov r1, sb
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _08049488
	cmp r0, #3
	bne _080494A2
_08049488:
	mov r2, ip
	ldr r1, [r2]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r2, r0, r1
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r4, #8
	ldrsh r1, [r2, r4]
	cmp r0, r1
	bge _080494A2
	ldrh r7, [r2, #8]
	adds r6, r3, #0
_080494A2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _08049462
_080494AC:
	cmp r6, r5
	beq _080494DC
	mov r7, sl
	ldr r3, [r7]
	lsls r2, r6, #1
	adds r2, r2, r6
	lsls r2, r2, #2
	adds r2, r2, r3
	mov r1, sp
	adds r0, r2, #0
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [sp, #0x10]
	adds r1, r0, r5
	lsls r1, r1, #2
	adds r3, r1, r3
	ldm r3!, {r4, r5, r6}
	stm r2!, {r4, r5, r6}
	mov r7, sl
	ldr r0, [r7]
	adds r1, r1, r0
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
_080494DC:
	ldr r5, [sp, #0xc]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	ldr r6, _080494FC @ =gUnknown_030007B0
	ldrb r6, [r6]
	cmp r5, r6
	blo _0804942E
_080494EA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080494FC: .4byte gUnknown_030007B0
_08049500: .4byte gUnknown_030007B4
_08049504: .4byte 0x0000199D

	thumb_func_start sub_08049508
sub_08049508: @ 0x08049508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08049534 @ =gUnknown_030007B4
	ldr r4, [r0]
	movs r0, #0
	mov r8, r0
	mov sb, r0
_08049524:
	mov r1, sl
	cmp r1, #0
	beq _08049538
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r0, #0x9f
	ble _08049542
	b _0804964A
	.align 2, 0
_08049534: .4byte gUnknown_030007B4
_08049538:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0x9f
	bgt _08049542
	b _0804964A
_08049542:
	ldrb r0, [r4]
	cmp r0, #1
	bne _080495B8
	ldrh r0, [r4, #8]
	adds r0, #0xa
	movs r7, #0
	strh r0, [r4, #8]
	movs r2, #6
	ldrsh r1, [r4, r2]
	ldr r5, _080495AC @ =gUnknown_030007B1
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r1, r1, r0
	movs r0, #8
	ldrsh r2, [r4, r0]
	ldr r6, _080495B0 @ =gUnknown_030007B2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r2, r2, r0
	ldrb r3, [r4, #2]
	mov r0, sb
	str r0, [sp]
	ldr r0, _080495B4 @ =gUnknown_030007B8
	bl sub_08026B90
	movs r2, #8
	ldrsh r1, [r4, r2]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _08049604
	movs r0, #2
	strb r0, [r4]
	movs r0, #5
	strh r0, [r4, #4]
	strb r7, [r4, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	strb r0, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	strb r0, [r6]
	b _08049604
	.align 2, 0
_080495AC: .4byte gUnknown_030007B1
_080495B0: .4byte gUnknown_030007B2
_080495B4: .4byte gUnknown_030007B8
_080495B8:
	cmp r0, #2
	bne _08049604
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	movs r5, #0
	strh r0, [r4, #8]
	subs r1, #1
	strh r1, [r4, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	movs r0, #6
	ldrsh r1, [r4, r0]
	ldr r0, _0804966C @ =gUnknown_030007B1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #8
	ldrsh r2, [r4, r0]
	ldr r0, _08049670 @ =gUnknown_030007B2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldrb r3, [r4, #2]
	mov r0, sb
	str r0, [sp]
	ldr r0, _08049674 @ =gUnknown_030007B8
	bl sub_08026B90
	ldrb r0, [r4, #1]
	cmp r0, #0xf
	bls _08049604
	movs r0, #3
	strb r0, [r4]
	strb r5, [r4, #1]
_08049604:
	ldrb r0, [r4]
	cmp r0, #3
	bne _0804964A
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08049640
	movs r2, #6
	ldrsh r1, [r4, r2]
	ldr r0, _0804966C @ =gUnknown_030007B1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #8
	ldrsh r2, [r4, r0]
	ldr r0, _08049670 @ =gUnknown_030007B2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldrb r3, [r4, #2]
	str r5, [sp]
	ldr r0, _08049674 @ =gUnknown_030007B8
	bl sub_08026B90
_08049640:
	ldrb r0, [r4, #1]
	cmp r0, #0x3c
	bls _0804964A
	movs r0, #4
	strb r0, [r4]
_0804964A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r4, #0xc
	cmp r0, #0x63
	bhi _0804965C
	b _08049524
_0804965C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804966C: .4byte gUnknown_030007B1
_08049670: .4byte gUnknown_030007B2
_08049674: .4byte gUnknown_030007B8
