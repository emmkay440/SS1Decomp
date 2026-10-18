	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08003FA4
sub_08003FA4: @ 0x08003FA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	ldr r0, [sp, #0x54]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _08003FE4 @ =gUnknown_030031E4
	ldr r6, [r0]
	cmp r6, #0x7f
	bhi _08003FDE
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08003FEC
_08003FDE:
	movs r0, #1
	rsbs r0, r0, #0
	b _080041B2
	.align 2, 0
_08003FE4: .4byte gUnknown_030031E4
_08003FE8:
	movs r0, #0
	b _080041B2
_08003FEC:
	ldr r0, _080040A4 @ =gUnknown_030031E8
	ldr r0, [r0]
	str r0, [sp, #0x18]
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
	ldr r0, _080040A8 @ =gOamBuffer
	adds r4, r1, r0
	ldr r2, [sp, #0x18]
	lsls r0, r2, #5
	ldr r5, _080040AC @ =0x06010000
	adds r5, r0, r5
	str r5, [sp, #0x10]
	movs r0, #0
	mov sl, r0
	movs r7, #0
	movs r1, #0
	str r1, [sp, #0x14]
	mov r2, sb
	ldrh r2, [r2, #2]
	cmp sl, r2
	blo _08004042
	b _080041A2
_08004042:
	mov r0, ip
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #2
	str r0, [sp, #0x20]
_0800404C:
	mov r0, r8
	str r0, [sp, #0xc]
	ldrh r1, [r4, #6]
	str r1, [sp, #0x1c]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4]
	str r1, [r4, #4]
	ldrh r2, [r4, #2]
	mov ip, r2
	mov r0, ip
	lsls r5, r0, #0x17
	asrs r5, r5, #0x17
	movs r6, #0
	ldrsb r6, [r4, r6]
	ldr r1, [sp, #4]
	adds r6, r6, r1
	ldr r2, [sp]
	adds r5, r5, r2
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800408A
	cmp r6, #0xa0
	bgt _0800408A
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r6, r0
	bge _080040B0
_0800408A:
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
	b _0800418C
	.align 2, 0
_080040A4: .4byte gUnknown_030031E8
_080040A8: .4byte gOamBuffer
_080040AC: .4byte 0x06010000
_080040B0:
	ldr r0, [sp, #8]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #1]
	ldr r2, [sp, #0x10]
	adds r2, r2, r7
	str r2, [sp, #0x10]
	ldrb r0, [r4, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	ldr r0, [sp, #0x20]
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x48]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r1, _0800412C @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	ldr r2, _08004130 @ =0xFFFFFE00
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	orrs r0, r5
	strh r0, [r4, #2]
	strb r6, [r4]
	ldr r2, [sp, #0x18]
	add r2, sl
	ldr r5, _08004134 @ =0x000003FF
	adds r0, r5, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r5, _08004138 @ =0xFFFFFC00
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	lsrs r3, r3, #6
	cmp r3, #0
	beq _08004140
	ldr r0, _0800413C @ =0x080FB0B8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r1, sl
	adds r0, r1, r7
	b _08004150
	.align 2, 0
_0800412C: .4byte 0x000001FF
_08004130: .4byte 0xFFFFFE00
_08004134: .4byte 0x000003FF
_08004138: .4byte 0xFFFFFC00
_0800413C: .4byte 0x080FB0B8
_08004140:
	ldr r0, _080041C4 @ =0x080FB0C8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r2, sl
	adds r0, r2, r7
_08004150:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r5, sp
	ldrh r5, [r5, #0x1c]
	strh r5, [r4, #6]
	ldr r1, _080041C8 @ =gUnknown_030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _0800416A
	b _08003FE8
_0800416A:
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xa
	orrs r0, r1
	lsls r7, r7, #5
	lsls r0, r0, #5
	ldr r1, [sp, #0x50]
	adds r0, r1, r0
	ldr r1, [sp, #0x10]
	adds r2, r7, #0
	bl QueueCopy
_0800418C:
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
	adds r4, #8
	movs r5, #8
	add r8, r5
	mov r0, sb
	ldrh r0, [r0, #2]
	cmp r2, r0
	bhs _080041A2
	b _0800404C
_080041A2:
	ldr r0, _080041CC @ =gUnknown_030031E8
	ldr r1, [r0]
	add r1, sl
	str r1, [r0]
	ldr r1, [sp, #0x18]
	lsls r0, r1, #5
	ldr r2, _080041D0 @ =0x06010000
	adds r0, r0, r2
_080041B2:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080041C4: .4byte 0x080FB0C8
_080041C8: .4byte gUnknown_030031E4
_080041CC: .4byte gUnknown_030031E8
_080041D0: .4byte 0x06010000
