	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start ApplyPendingDamage
ApplyPendingDamage: @ 0x0800B3F4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	cmp r0, #9
	beq _0800B40E
	bl sub_08007604
	cmp r0, #0
	bne _0800B40E
	bl sub_080077C0
	cmp r0, #0
	beq _0800B41A
_0800B40E:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_0800B41A:
	ldr r0, _0800B4A8 @ =0x00000BB8
	bl IsAnyThreadWaitingOn
	adds r6, r0, #0
	cmp r6, #0
	bne _0800B452
	bl sub_08007638
	cmp r0, #0
	beq _0800B452
	adds r3, r4, #0
	adds r3, #0x7a
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r5, r4, #0
	adds r5, #0x54
	ldrh r1, [r5]
	subs r0, r0, r1
	adds r2, r4, #0
	adds r2, #0x56
	ldrh r1, [r2]
	subs r0, r0, r1
	cmp r0, #0
	bgt _0800B452
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r5]
	strh r6, [r2]
_0800B452:
	bl sub_08007604
	cmp r0, #0
	bne _0800B4AC
	bl sub_08007544
	adds r5, r0, #0
	cmp r5, #0
	bne _0800B4AC
	movs r2, #0x7a
	adds r2, r2, r4
	mov ip, r2
	adds r3, r4, #0
	adds r3, #0x54
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	adds r2, r4, #0
	adds r2, #0x56
	ldrh r1, [r2]
	subs r0, r0, r1
	mov r1, ip
	strh r0, [r1]
	strh r5, [r3]
	strh r5, [r2]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0800B49E
	mov r1, ip
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0800B4AC
_0800B49E:
	mov r0, ip
	strh r5, [r0]
	movs r0, #1
	b _0800B4AE
	.align 2, 0
_0800B4A8: .4byte 0x00000BB8
_0800B4AC:
	movs r0, #0
_0800B4AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
