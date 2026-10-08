	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08016FA0
sub_08016FA0: @ 0x08016FA0
	push {r4, lr}
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08016FC4 @ =gPlayers
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	cmp r0, #9
	bne _08016FC8
	ldrh r0, [r1, #0xe]
	subs r0, #9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08016FC8
	movs r0, #1
	b _08016FF0
	.align 2, 0
_08016FC4: .4byte gPlayers
_08016FC8:
	movs r3, #0
	ldrh r0, [r1, #0xc]
	cmp r0, #8
	beq _08016FEC
	adds r0, r1, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _08016FEC
	adds r0, r1, #0
	adds r0, #0x54
	ldrh r0, [r0]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08016FEE
_08016FEC:
	movs r3, #1
_08016FEE:
	adds r0, r3, #0
_08016FF0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016FF8
sub_08016FF8: @ 0x08016FF8
	push {r4, r5, r6, lr}
	ldr r4, _08017024 @ =0x080FB750
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r4
	ldm r3!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r3!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldr r3, [r3]
	str r3, [r1]
	ldr r3, _08017028 @ =0x080FB7C0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldm r1!, {r0, r3, r4}
	stm r2!, {r0, r3, r4}
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017024: .4byte 0x080FB750
_08017028: .4byte 0x080FB7C0

	thumb_func_start sub_0801702C
sub_0801702C: @ 0x0801702C
	push {r4, lr}
	movs r2, #0
	movs r1, #1
	ldr r0, _08017058 @ =0x03003F80
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r3, r0, #0x16
	movs r4, #1
_0801703C:
	adds r0, r3, #0
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08017048
	adds r2, #1
_08017048:
	adds r1, #1
	cmp r1, #8
	bls _0801703C
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08017058: .4byte 0x03003F80

	thumb_func_start sub_0801705C
sub_0801705C: @ 0x0801705C
	push {r4, lr}
	movs r2, #0
	movs r1, #1
	ldr r0, _08017088 @ =0x03003F80
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r3, r0, #0x16
	movs r4, #1
_0801706C:
	adds r0, r3, #0
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08017078
	adds r2, #1
_08017078:
	adds r1, #1
	cmp r1, #8
	bls _0801706C
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08017088: .4byte 0x03003F80

	thumb_func_start sub_0801708C
sub_0801708C: @ 0x0801708C
	ldr r0, _08017098 @ =gPlayerStats
	ldrh r1, [r0, #0x20]
	movs r0, #3
	ands r0, r1
	bx lr
	.align 2, 0
_08017098: .4byte gPlayerStats
