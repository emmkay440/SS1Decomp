	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08003724
sub_08003724: @ 0x08003724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r4, [sp, #0x50]
	ldr r6, [sp, #0x58]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r5, [sp, #0x68]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r7, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x1c]
	ldr r0, _08003778 @ =gUnknown_030031E4
	ldr r3, [r0]
	cmp r3, #0x7f
	bhi _08003770
	ldrh r0, [r6, #2]
	cmp r0, r2
	bhs _08003780
_08003770:
	movs r0, #1
	rsbs r0, r0, #0
	b _0800399E
	.align 2, 0
_08003778: .4byte gUnknown_030031E4
_0800377C:
	movs r0, #0
	b _0800399E
_08003780:
	ldr r0, _08003898 @ =gUnknown_030031E8
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r0, _0800389C @ =gUnknown_030031E0
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r6, #8]
	adds r1, r6, r1
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	mov r2, sb
	lsls r0, r2, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r1, r0
	lsls r1, r3, #3
	ldr r0, _080038A0 @ =gOamBuffer
	adds r5, r1, r0
	ldr r3, [sp, #0x24]
	lsls r0, r3, #5
	ldr r1, _080038A4 @ =0x06010000
	adds r1, r1, r0
	mov sl, r1
	movs r3, #0
	mov sb, r3
	movs r7, #0
	movs r0, #0
	str r0, [sp, #0x20]
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp sb, r1
	blo _080037DC
	b _08003964
_080037DC:
	adds r6, r2, #0
_080037DE:
	ldrh r2, [r5, #6]
	mov ip, r2
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r0, [sp, #0xc]
	adds r4, r4, r0
	ldr r1, [sp, #8]
	adds r3, r3, r1
	movs r0, #3
	ldr r2, [sp, #0x10]
	ands r2, r0
	lsls r2, r2, #2
	str r2, [sp, #0x2c]
	ldrb r1, [r5, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [sp, #0x2c]
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x54]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08003840
	cmp r4, #0xa0
	bgt _08003840
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	bge _08003852
_08003840:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_08003852:
	ldr r1, _080038A8 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r5, #2]
	ldr r2, _080038AC @ =0xFFFFFE00
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5]
	ldr r2, [sp, #0x24]
	add r2, sb
	ldr r3, _080038B0 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r5, #4]
	ldr r3, _080038B4 @ =0xFFFFFC00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #4]
	add sl, r7
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _080038BC
	ldr r0, _080038B8 @ =0x080FB0B8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r1, sb
	adds r0, r1, r7
	b _080038CC
	.align 2, 0
_08003898: .4byte gUnknown_030031E8
_0800389C: .4byte gUnknown_030031E0
_080038A0: .4byte gOamBuffer
_080038A4: .4byte 0x06010000
_080038A8: .4byte 0x000001FF
_080038AC: .4byte 0xFFFFFE00
_080038B0: .4byte 0x000003FF
_080038B4: .4byte 0xFFFFFC00
_080038B8: .4byte 0x080FB0B8
_080038BC:
	ldr r0, _080039B0 @ =0x080FB0C8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r2, sb
	adds r0, r2, r7
_080038CC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r5, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #1]
	movs r1, #3
	ldr r2, [sp, #0x28]
	ands r1, r2
	lsls r1, r1, #1
	ldrb r2, [r5, #3]
	subs r3, #0xb
	adds r0, r3, #0
	ands r2, r0
	orrs r2, r1
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #2
	movs r3, #1
	ands r0, r3
	ands r0, r3
	lsls r0, r0, #4
	subs r3, #0x12
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #3
	movs r3, #1
	ands r0, r3
	ands r0, r3
	lsls r0, r0, #5
	subs r3, #0x22
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #3]
	mov r0, ip
	strh r0, [r5, #6]
	ldr r1, _080039B4 @ =gUnknown_030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _08003930
	b _0800377C
_08003930:
	lsls r7, r7, #5
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r1, [sp, #0x5c]
	adds r0, r1, r0
	mov r1, sl
	adds r2, r7, #0
	bl QueueCopy
	ldr r2, [sp, #0x20]
	adds r2, #1
	str r2, [sp, #0x20]
	adds r5, #8
	adds r6, #8
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r2, r3
	bhs _08003964
	b _080037DE
_08003964:
	ldr r1, _080039B8 @ =gOamBuffer
	ldr r4, _080039BC @ =gUnknown_030031E0
	ldr r0, [r4]
	lsls r2, r0, #5
	adds r1, r2, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _080039C0 @ =0xFFFF0000
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	ldr r3, [sp, #0x14]
	orrs r0, r3
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r2
	ldr r2, [sp, #0x1c]
	orrs r0, r2
	str r0, [sp, #4]
	adds r1, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	ldr r1, _080039C4 @ =gUnknown_030031E8
	ldr r0, [r1]
	add r0, sb
	str r0, [r1]
	ldr r0, [r4]
_0800399E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080039B0: .4byte 0x080FB0C8
_080039B4: .4byte gUnknown_030031E4
_080039B8: .4byte gOamBuffer
_080039BC: .4byte gUnknown_030031E0
_080039C0: .4byte 0xFFFF0000
_080039C4: .4byte gUnknown_030031E8
