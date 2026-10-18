	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08003518
sub_08003518: @ 0x08003518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r4, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _08003550 @ =gUnknown_030031E4
	ldr r6, [r0]
	cmp r6, #0x7f
	bhi _0800354A
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08003558
_0800354A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08003702
	.align 2, 0
_08003550: .4byte gUnknown_030031E4
_08003554:
	movs r0, #0
	b _08003702
_08003558:
	ldr r0, _08003600 @ =gUnknown_030031E8
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov sb, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r1, sb
	ldr r0, [r1, #8]
	add r0, sb
	mov r8, r0
	lsls r1, r6, #3
	ldr r0, _08003604 @ =gOamBuffer
	adds r4, r1, r0
	ldr r2, [sp, #0x14]
	lsls r0, r2, #5
	ldr r3, _08003608 @ =0x06010000
	adds r3, r0, r3
	str r3, [sp, #0xc]
	movs r6, #0
	mov sl, r6
	movs r0, #0
	str r0, [sp, #0x10]
	mov r1, sb
	ldrh r1, [r1, #2]
	cmp sl, r1
	blo _080035AC
	b _080036F2
_080035AC:
	mov ip, r8
	ldrh r2, [r4, #6]
	str r2, [sp, #0x18]
	mov r3, r8
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [r4]
	str r1, [r4, #4]
	ldrh r7, [r4, #2]
	lsls r3, r7, #0x17
	asrs r3, r3, #0x17
	movs r5, #0
	ldrsb r5, [r4, r5]
	ldr r0, [sp, #4]
	adds r5, r5, r0
	ldr r1, [sp]
	adds r3, r3, r1
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080035E6
	cmp r5, #0xa0
	bgt _080035E6
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r5, r0
	bge _0800360C
_080035E6:
	movs r0, #0xa0
	strb r0, [r4]
	ldrb r2, [r4, #1]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #1]
	ldrb r0, [r4, #3]
	ands r1, r0
	strb r1, [r4, #3]
	subs r4, #8
	b _080036DC
	.align 2, 0
_08003600: .4byte gUnknown_030031E8
_08003604: .4byte gOamBuffer
_08003608: .4byte 0x06010000
_0800360C:
	ldr r2, [sp, #0xc]
	adds r2, r2, r6
	str r2, [sp, #0xc]
	movs r0, #3
	ldr r2, [sp, #8]
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r4, #5]
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x40]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r6, _0800367C @ =0x000001FF
	adds r0, r6, #0
	ands r3, r0
	ldr r1, _08003680 @ =0xFFFFFE00
	adds r0, r1, #0
	ands r0, r7
	orrs r0, r3
	strh r0, [r4, #2]
	strb r5, [r4]
	ldr r2, [sp, #0x14]
	add r2, sl
	ldr r3, _08003684 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r6, _08003688 @ =0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08003690
	ldr r0, _0800368C @ =0x080FB0B8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r6, [r1]
	mov r1, sl
	adds r0, r1, r6
	b _080036A0
	.align 2, 0
_0800367C: .4byte 0x000001FF
_08003680: .4byte 0xFFFFFE00
_08003684: .4byte 0x000003FF
_08003688: .4byte 0xFFFFFC00
_0800368C: .4byte 0x080FB0B8
_08003690:
	ldr r0, _08003714 @ =0x080FB0C8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r6, [r1]
	mov r2, sl
	adds r0, r2, r6
_080036A0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r3, sp
	ldrh r3, [r3, #0x18]
	strh r3, [r4, #6]
	ldr r1, _08003718 @ =gUnknown_030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _080036BA
	b _08003554
_080036BA:
	lsls r6, r6, #5
	mov r1, ip
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r1, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r2, [sp, #0x48]
	adds r0, r2, r0
	ldr r1, [sp, #0xc]
	adds r2, r6, #0
	bl QueueCopy
_080036DC:
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x10]
	adds r4, #8
	movs r0, #8
	add r8, r0
	mov r1, sb
	ldrh r1, [r1, #2]
	cmp r3, r1
	bhs _080036F2
	b _080035AC
_080036F2:
	ldr r0, _0800371C @ =gUnknown_030031E8
	ldr r1, [r0]
	add r1, sl
	str r1, [r0]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #5
	ldr r3, _08003720 @ =0x06010000
	adds r0, r0, r3
_08003702:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003714: .4byte 0x080FB0C8
_08003718: .4byte gUnknown_030031E4
_0800371C: .4byte gUnknown_030031E8
_08003720: .4byte 0x06010000
