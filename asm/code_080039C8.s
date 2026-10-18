	.include "asm/macros.inc"

	.syntax unified
	.text

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
