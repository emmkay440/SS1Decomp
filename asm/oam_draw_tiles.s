	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800336C
sub_0800336C: @ 0x0800336C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r4, [sp, #0x34]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _080033A4 @ =gUnknown_030031E4
	ldr r7, [r0]
	cmp r7, #0x80
	bhi _0800339E
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _080033AC
_0800339E:
	movs r0, #1
	rsbs r0, r0, #0
	b _080034F6
	.align 2, 0
_080033A4: .4byte gUnknown_030031E4
_080033A8:
	movs r0, #0
	b _080034F6
_080033AC:
	ldr r2, _08003498 @ =gUnknown_030031E8
	ldr r0, [r2]
	mov sl, r0
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov ip, r0
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
	add ip, r0
	mov r1, ip
	ldr r0, [r1, #8]
	adds r6, r1, r0
	lsls r1, r7, #3
	ldr r0, _0800349C @ =gOamBuffer
	adds r5, r1, r0
	movs r0, #0
	mov r8, r0
	mov sb, r0
	mov r1, ip
	ldrh r1, [r1, #2]
	cmp r8, r1
	bhs _080034E6
_080033F0:
	adds r7, r6, #0
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r2, [sp, #4]
	adds r4, r4, r2
	ldr r0, [sp]
	adds r3, r3, r0
	movs r1, #3
	ldr r0, [sp, #8]
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x30]
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
	bhi _0800344A
	cmp r4, #0xa0
	bgt _0800344A
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	bge _0800345C
_0800344A:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_0800345C:
	ldr r1, _080034A0 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r1, [r5, #2]
	ldr r0, _080034A4 @ =0xFFFFFE00
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5]
	mov r1, r8
	add r1, sl
	ldr r2, _080034A8 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #4]
	ldr r0, _080034AC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _080034B4
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	ldr r1, _080034B0 @ =0x080FB0B8
	adds r0, r0, r1
	b _080034BE
	.align 2, 0
_08003498: .4byte gUnknown_030031E8
_0800349C: .4byte gOamBuffer
_080034A0: .4byte 0x000001FF
_080034A4: .4byte 0xFFFFFE00
_080034A8: .4byte 0x000003FF
_080034AC: .4byte 0xFFFFFC00
_080034B0: .4byte 0x080FB0B8
_080034B4:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	ldr r2, _08003508 @ =0x080FB0C8
	adds r0, r0, r2
_080034BE:
	ldr r0, [r0]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _0800350C @ =gUnknown_030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x80
	bls _080034D6
	b _080033A8
_080034D6:
	movs r2, #1
	add sb, r2
	adds r5, #8
	adds r6, #8
	mov r0, ip
	ldrh r0, [r0, #2]
	cmp sb, r0
	blo _080033F0
_080034E6:
	ldr r1, _08003510 @ =gUnknown_030031E8
	ldr r0, [r1]
	add r0, r8
	str r0, [r1]
	mov r2, sl
	lsls r0, r2, #5
	ldr r1, _08003514 @ =0x06010000
	adds r0, r0, r1
_080034F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003508: .4byte 0x080FB0C8
_0800350C: .4byte gUnknown_030031E4
_08003510: .4byte gUnknown_030031E8
_08003514: .4byte 0x06010000
