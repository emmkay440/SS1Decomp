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

	thumb_func_start sub_080039C8
sub_080039C8: @ 0x080039C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r4, [sp, #0x50]
	ldr r7, [sp, #0x58]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r5, [sp, #0x68]
	ldr r6, [sp, #0x6c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
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
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _08003A20 @ =gUnknown_030031E4
	ldr r0, [r4]
	cmp r0, #0x7f
	bhi _08003A1A
	ldrh r0, [r7, #2]
	cmp r0, r2
	bhs _08003A24
_08003A1A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08003CE0
	.align 2, 0
_08003A20: .4byte gUnknown_030031E4
_08003A24:
	bl sub_0800F298
	movs r1, #0
	cmp r0, #0
	beq _08003A30
	adds r1, r6, #0
_08003A30:
	adds r6, r1, #0
	ldr r0, _08003B60 @ =gUnknown_030031E8
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r0, _08003B64 @ =gUnknown_030031E0
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, [r7, #4]
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r7, #8]
	adds r1, r7, r1
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	mov r3, sl
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #3
	ldr r1, _08003B68 @ =gOamBuffer
	adds r4, r0, r1
	ldr r3, [sp, #0x24]
	lsls r0, r3, #5
	ldr r1, _08003B6C @ =0x06010000
	adds r1, r0, r1
	str r1, [sp, #0x20]
	movs r3, #0
	mov sl, r3
	movs r7, #0
	movs r0, #0
	mov sb, r0
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp sl, r1
	blo _08003A92
	b _08003C44
_08003A92:
	movs r3, #3
	ands r6, r3
	lsls r6, r6, #2
	str r6, [sp, #0x2c]
	adds r6, r2, #0
_08003A9C:
	ldrh r0, [r4, #6]
	mov ip, r0
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r4]
	str r1, [r4, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r5, #0
	ldrsb r5, [r6, r5]
	ldr r1, [sp, #0xc]
	adds r5, r5, r1
	ldr r2, [sp, #8]
	adds r3, r3, r2
	ldr r0, [sp, #0x10]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4, #5]
	subs r1, #0x10
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x54]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldrb r1, [r4, #1]
	subs r0, #0x1c
	ands r0, r1
	ldr r1, [sp, #0x2c]
	orrs r0, r1
	strb r0, [r4, #1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08003B02
	cmp r5, #0xa0
	bgt _08003B02
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r5, r0
	bge _08003B14
_08003B02:
	ldrb r2, [r4, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	ands r1, r0
	strb r1, [r4, #1]
	movs r5, #0xa0
_08003B14:
	ldr r2, _08003B70 @ =0x000001FF
	adds r0, r2, #0
	ands r3, r0
	ldrh r0, [r4, #2]
	ldr r2, _08003B74 @ =0xFFFFFE00
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r4, #2]
	strb r5, [r4]
	ldr r2, [sp, #0x24]
	add r2, sl
	ldr r3, _08003B78 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r3, _08003B7C @ =0xFFFFFC00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	ldr r0, [sp, #0x20]
	adds r0, r0, r7
	str r0, [sp, #0x20]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08003B84
	ldr r0, _08003B80 @ =0x080FB0B8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r1, sl
	adds r0, r1, r7
	b _08003B94
	.align 2, 0
_08003B60: .4byte gUnknown_030031E8
_08003B64: .4byte gUnknown_030031E0
_08003B68: .4byte gOamBuffer
_08003B6C: .4byte 0x06010000
_08003B70: .4byte 0x000001FF
_08003B74: .4byte 0xFFFFFE00
_08003B78: .4byte 0x000003FF
_08003B7C: .4byte 0xFFFFFC00
_08003B80: .4byte 0x080FB0B8
_08003B84:
	ldr r0, _08003CA4 @ =0x080FB0C8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r2, sl
	adds r0, r2, r7
_08003B94:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r0, [r4, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r6, #3]
	lsls r2, r1, #0x1c
	lsrs r2, r2, #0x1d
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r2, r0
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	orrs r2, r1
	ldr r3, [sp, #0x28]
	adds r2, r2, r3
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #1
	ldrb r3, [r4, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r3, r0
	orrs r3, r2
	ldr r2, [sp, #0x28]
	lsrs r0, r2, #2
	movs r1, #1
	ands r0, r1
	ands r0, r1
	lsls r0, r0, #4
	movs r2, #0x11
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r3, r1
	orrs r3, r0
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #3
	movs r2, #1
	ands r0, r2
	ands r0, r2
	lsls r0, r0, #5
	subs r2, #0x22
	adds r1, r2, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #3]
	mov r3, ip
	strh r3, [r4, #6]
	ldr r1, _08003CA8 @ =gUnknown_030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bhi _08003CB8
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
	ldr r1, [sp, #0x20]
	adds r2, r7, #0
	bl QueueCopy
	movs r2, #1
	add sb, r2
	adds r4, #8
	adds r6, #8
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp sb, r3
	bhs _08003C44
	b _08003A9C
_08003C44:
	ldr r6, _08003CAC @ =gOamBuffer
	ldr r2, _08003CB0 @ =gUnknown_030031E0
	ldr r0, [r2]
	lsls r1, r0, #5
	adds r6, r1, r6
	adds r0, #1
	str r0, [r2]
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08003CBC
	ldr r0, [r1, #4]
	adds r4, r1, r0
	movs r2, #0
	mov sb, r2
	ldrh r3, [r1]
	cmp sb, r3
	bhs _08003CD4
	ldr r7, _08003CB4 @ =0xFFFF0000
	mov r5, sp
_08003C6C:
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	ands r0, r7
	orrs r0, r1
	str r0, [r5, #4]
	adds r1, r6, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	adds r6, #0x20
	ldr r1, _08003CB0 @ =gUnknown_030031E0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	add sb, r0
	mov r1, r8
	ldrh r1, [r1]
	cmp sb, r1
	blo _08003C6C
	b _08003CD4
	.align 2, 0
_08003CA4: .4byte 0x080FB0C8
_08003CA8: .4byte gUnknown_030031E4
_08003CAC: .4byte gOamBuffer
_08003CB0: .4byte gUnknown_030031E0
_08003CB4: .4byte 0xFFFF0000
_08003CB8:
	movs r0, #0
	b _08003CE0
_08003CBC:
	mov r0, sp
	ldrh r2, [r0, #0x14]
	strh r2, [r0]
	ldrh r3, [r0, #0x18]
	strh r3, [r0, #2]
	ldrh r1, [r0, #0x1c]
	strh r1, [r0, #4]
	adds r1, r6, #6
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
_08003CD4:
	ldr r1, _08003CF0 @ =gUnknown_030031E8
	ldr r0, [r1]
	add r0, sl
	str r0, [r1]
	ldr r0, _08003CF4 @ =gUnknown_030031E0
	ldr r0, [r0]
_08003CE0:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003CF0: .4byte gUnknown_030031E8
_08003CF4: .4byte gUnknown_030031E0

	thumb_func_start sub_08003CF8
sub_08003CF8: @ 0x08003CF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, _08003D30 @ =gUnknown_030031E4
	ldr r6, [r0]
	cmp r6, #0x7f
	bhi _08003D2A
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08003D38
_08003D2A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08003F7C
	.align 2, 0
_08003D30: .4byte gUnknown_030031E4
_08003D34:
	movs r0, #0
	b _08003F7C
_08003D38:
	ldr r0, _08003E3C @ =gUnknown_030031E8
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, _08003E40 @ =gUnknown_030031E0
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	adds r7, r4, r0
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
	adds r7, r7, r0
	ldr r0, [r7, #8]
	adds r2, r7, r0
	lsls r1, r6, #3
	ldr r0, _08003E44 @ =gOamBuffer
	adds r5, r1, r0
	ldr r1, [sp, #0x18]
	lsls r0, r1, #5
	ldr r3, _08003E48 @ =0x06010000
	adds r3, r0, r3
	str r3, [sp, #0x14]
	movs r4, #0
	mov sl, r4
	mov r8, r4
	mov sb, r4
	ldrh r0, [r7, #2]
	cmp sl, r0
	blo _08003D8A
	b _08003F12
_08003D8A:
	adds r6, r2, #0
_08003D8C:
	ldrh r1, [r5, #6]
	mov ip, r1
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r2, [sp, #0xc]
	adds r4, r4, r2
	ldr r0, [sp, #8]
	adds r3, r3, r0
	movs r0, #3
	ldr r2, [sp, #0x10]
	ands r2, r0
	lsls r2, r2, #2
	str r2, [sp, #0x20]
	ldrb r1, [r5, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [sp, #0x20]
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x48]
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
	bhi _08003DEE
	cmp r4, #0xa0
	bgt _08003DEE
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	bge _08003E00
_08003DEE:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_08003E00:
	ldr r1, _08003E4C @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r5, #2]
	ldr r2, _08003E50 @ =0xFFFFFE00
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5]
	ldr r2, [sp, #0x18]
	add r2, sl
	ldr r3, _08003E54 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r5, #4]
	ldr r4, _08003E58 @ =0xFFFFFC00
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #4]
	ldr r0, [sp, #0x14]
	add r0, r8
	str r0, [sp, #0x14]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08003E60
	ldr r1, _08003E5C @ =0x080FB0B8
	b _08003E62
	.align 2, 0
_08003E3C: .4byte gUnknown_030031E8
_08003E40: .4byte gUnknown_030031E0
_08003E44: .4byte gOamBuffer
_08003E48: .4byte 0x06010000
_08003E4C: .4byte 0x000001FF
_08003E50: .4byte 0xFFFFFE00
_08003E54: .4byte 0x000003FF
_08003E58: .4byte 0xFFFFFC00
_08003E5C: .4byte 0x080FB0B8
_08003E60:
	ldr r1, _08003F8C @ =0x080FB0C8
_08003E62:
	ldrb r2, [r6, #3]
	lsrs r0, r2, #6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	mov r0, sl
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r7]
	cmp r0, #0
	beq _08003ECC
	lsls r3, r2, #0x1c
	lsrs r3, r3, #0x1d
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r3, r0
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r3, r0
	ldr r1, [sp, #0x1c]
	adds r3, r3, r1
	movs r1, #3
	ands r1, r3
	lsls r1, r1, #1
	ldrb r2, [r5, #3]
	movs r4, #0xf
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r2, r0
	orrs r2, r1
	lsrs r1, r3, #2
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #4
	subs r4, #2
	adds r0, r4, #0
	ands r2, r0
	orrs r2, r1
	lsrs r3, r3, #3
	movs r0, #1
	ands r3, r0
	lsls r3, r3, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r2, r0
	orrs r2, r3
	strb r2, [r5, #3]
_08003ECC:
	mov r2, ip
	strh r2, [r5, #6]
	ldr r1, _08003F90 @ =gUnknown_030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _08003EDE
	b _08003D34
_08003EDE:
	mov r3, r8
	lsls r3, r3, #5
	mov r8, r3
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r4, [sp, #0x50]
	adds r0, r4, r0
	ldr r1, [sp, #0x14]
	mov r2, r8
	bl QueueCopy
	movs r0, #1
	add sb, r0
	adds r5, #8
	adds r6, #8
	ldrh r1, [r7, #2]
	cmp sb, r1
	bhs _08003F12
	b _08003D8C
_08003F12:
	ldr r6, _08003F94 @ =gOamBuffer
	ldrh r0, [r7]
	cmp r0, #0
	beq _08003F70
	ldr r2, _08003F98 @ =gUnknown_030031E0
	ldr r0, [r2]
	lsls r1, r0, #5
	adds r6, r1, r6
	adds r0, #1
	str r0, [r2]
	ldr r0, [r7, #4]
	adds r4, r7, r0
	movs r2, #0
	mov sb, r2
	ldrh r3, [r7]
	cmp sb, r3
	bhs _08003F70
	ldr r0, _08003F9C @ =0xFFFF0000
	mov r8, r0
	mov r5, sp
_08003F3A:
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	mov r2, r8
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	adds r1, r6, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	adds r6, #0x20
	ldr r1, _08003F98 @ =gUnknown_030031E0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r3, #1
	add sb, r3
	ldrh r0, [r7]
	cmp sb, r0
	blo _08003F3A
_08003F70:
	ldr r1, _08003FA0 @ =gUnknown_030031E8
	ldr r0, [r1]
	add r0, sl
	str r0, [r1]
	ldr r0, _08003F98 @ =gUnknown_030031E0
	ldr r0, [r0]
_08003F7C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003F8C: .4byte 0x080FB0C8
_08003F90: .4byte gUnknown_030031E4
_08003F94: .4byte gOamBuffer
_08003F98: .4byte gUnknown_030031E0
_08003F9C: .4byte 0xFFFF0000
_08003FA0: .4byte gUnknown_030031E8

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
