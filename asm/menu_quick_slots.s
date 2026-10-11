	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804096C
sub_0804096C: @ 0x0804096C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _080409F0 @ =gMenuInventory
	ldr r2, [r0]
	movs r1, #0
	ldr r0, _080409F4 @ =gMenuSelectedSlot
	mov ip, r0
	ldr r0, _080409F8 @ =gUnknown_03000494
	mov r8, r0
_08040982:
	movs r3, #0
	adds r6, r1, #1
	lsls r0, r1, #2
	adds r4, r0, r1
_0804098A:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080409BC
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x19
	ldr r0, _080409FC @ =gMenuSelectedItem
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r1, r0
	bne _080409BC
	mov r1, ip
	ldrb r0, [r1, #3]
	adds r1, r3, r4
	cmp r0, r1
	beq _080409BC
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080409BC:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0804098A
	lsls r0, r6, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _08040982
	movs r3, #0
	mov r6, r8
	ldr r4, _080409F4 @ =gMenuSelectedSlot
_080409D6:
	ldr r1, [r6]
	lsls r0, r3, #1
	adds r2, r0, r1
	ldrh r1, [r2]
	ldrb r0, [r4, #3]
	adds r0, #1
	cmp r1, r0
	bne _08040A02
	cmp r5, #0
	bne _08040A00
	strh r5, [r2]
	b _08040A02
	.align 2, 0
_080409F0: .4byte gMenuInventory
_080409F4: .4byte gMenuSelectedSlot
_080409F8: .4byte gUnknown_03000494
_080409FC: .4byte gMenuSelectedItem
_08040A00:
	strh r7, [r2]
_08040A02:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080409D6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
