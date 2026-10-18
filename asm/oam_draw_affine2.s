	.include "asm/macros.inc"

	.syntax unified
	.text

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
