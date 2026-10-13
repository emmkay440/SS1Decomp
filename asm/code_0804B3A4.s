	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804B3A4
sub_0804B3A4: @ 0x0804B3A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r0, _0804B3EC @ =gUnknown_030008D0
	ldr r4, [r0]
	movs r7, #0
	movs r0, #0x10
	mov r8, r0
	ldr r1, _0804B3F0 @ =0x030008F4
	mov sb, r1
	mov r6, sb
	subs r6, #0x1c
_0804B3C0:
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804B4AA
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhi _0804B3F4
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #1]
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r0, #0x1f
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _0804B4B6
	.align 2, 0
_0804B3EC: .4byte gUnknown_030008D0
_0804B3F0: .4byte 0x030008F4
_0804B3F4:
	ldrb r0, [r4, #1]
	movs r3, #0x12
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
	ldrb r3, [r4]
	cmp r3, #1
	bne _0804B450
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r1, _0804B448 @ =gUnknown_030008C9
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, _0804B44C @ =gUnknown_030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x50
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r2, #1
	movs r3, #0
	bl sub_08003FA4
	b _0804B482
	.align 2, 0
_0804B448: .4byte gUnknown_030008C9
_0804B44C: .4byte gUnknown_030008CA
_0804B450:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r1, _0804B4C4 @ =gUnknown_030008C9
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, _0804B4C8 @ =gUnknown_030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x50
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r2, #2
	movs r3, #0
	bl sub_08003FA4
_0804B482:
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bls _0804B4AA
	strb r1, [r4, #1]
	mov r0, r8
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #8
	movs r2, #1
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	strb r0, [r4]
_0804B4AA:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r4, #4
	cmp r7, #9
	bls _0804B3C0
_0804B4B6:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B4C4: .4byte gUnknown_030008C9
_0804B4C8: .4byte gUnknown_030008CA
