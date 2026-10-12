	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804A2EC
sub_0804A2EC: @ 0x0804A2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0804A3E0 @ =gUnknown_0300084C
	ldr r6, [r0]
	movs r0, #0
	mov sl, r0
	ldr r1, _0804A3E4 @ =gUnknown_03000850
	mov r8, r1
	movs r2, #1
	mov sb, r2
_0804A308:
	ldrb r0, [r6]
	cmp r0, #2
	bne _0804A3BE
	ldrb r5, [r6, #1]
	lsls r4, r5, #1
	adds r4, r4, r5
	lsrs r4, r4, #4
	lsrs r5, r5, #2
	adds r2, r6, #2
	adds r3, r6, #4
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	bl sub_08026C40
	movs r1, #6
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	subs r1, #0x40
	subs r0, r0, r1
	ldr r2, _0804A3E8 @ =gUnknown_0300083A
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #8
	ldrsh r1, [r6, r3]
	adds r2, r5, #0
	subs r2, #0x1c
	adds r1, r1, r2
	ldr r3, _0804A3EC @ =gUnknown_0300083B
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r2, [r6, #2]
	mov ip, r2
	movs r7, #0
	str r7, [sp]
	ldr r3, _0804A3F0 @ =0x0300086C
	str r3, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	mov r2, sb
	str r2, [sp, #0x10]
	movs r2, #1
	mov r3, ip
	bl sub_08003FA4
	movs r3, #6
	ldrsh r0, [r6, r3]
	adds r4, #8
	subs r0, r0, r4
	ldr r4, _0804A3E8 @ =gUnknown_0300083A
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	movs r2, #8
	ldrsh r1, [r6, r2]
	subs r5, #0x40
	adds r1, r1, r5
	ldr r3, _0804A3EC @ =gUnknown_0300083B
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r3, [r6, #2]
	str r7, [sp]
	ldr r4, _0804A3F0 @ =0x0300086C
	str r4, [sp, #4]
	mov r4, r8
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	mov r2, sb
	str r2, [sp, #0x10]
	movs r2, #1
	bl sub_08003FA4
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _0804A3BE
	movs r0, #5
	strb r0, [r6]
	strb r7, [r6, #1]
_0804A3BE:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r6, #0xc
	cmp r0, #0x3b
	bls _0804A308
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A3E0: .4byte gUnknown_0300084C
_0804A3E4: .4byte gUnknown_03000850
_0804A3E8: .4byte gUnknown_0300083A
_0804A3EC: .4byte gUnknown_0300083B
_0804A3F0: .4byte 0x0300086C
