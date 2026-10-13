	.include "asm/macros.inc"

	.syntax unified
	.text

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
