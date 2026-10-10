	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080273DC
sub_080273DC: @ 0x080273DC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_08001F98
	cmp r0, #0
	beq _080274A4
	ldr r3, _080274AC @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0x1d
	bhi _080274A4
	ldr r1, _080274B0 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2

	non_word_aligned_thumb_func_start sub_080273F6
sub_080273F6: @ 0x080273F6
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r4, #0
	movs r1, #0
	movs r0, #1
	strh r0, [r7, #0xa]
	strh r1, [r7, #8]
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	lsrs r0, r0, #0x14
	lsls r0, r0, #8
	ldr r1, [r7]
	ldr r2, _080274B4 @ =0xFFF000FF
	ands r1, r2
	orrs r1, r0
	str r1, [r7]
	ldr r1, [r6, #0x14]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r7, #2]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #2]
	strb r4, [r7]
	ldrb r1, [r7, #4]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r7, #4]
	movs r0, #0xff
	mov ip, r0
	ldrb r1, [r6, #2]
	lsls r1, r1, #4
	ldrh r5, [r7, #4]
	ldr r2, _080274B8 @ =0xFFFFF00F
	adds r0, r2, #0
	ands r0, r5
	orrs r0, r1
	strh r0, [r7, #4]
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	ldrb r1, [r7, #5]
	movs r5, #0xf
	ands r3, r1
	orrs r3, r0
	strb r3, [r7, #5]
	ldr r0, [r6, #0x54]
	ands r0, r5
	ldrb r1, [r7, #6]
	ands r4, r1
	orrs r4, r0
	strb r4, [r7, #6]
	ldr r0, [r6, #0x5c]
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #4
	ldrh r1, [r7, #6]
	ands r2, r1
	orrs r2, r0
	strh r2, [r7, #6]
	movs r2, #0
	ldrh r0, [r6, #0x22]
	cmp r0, #5
	bne _0802748A
	movs r2, #1
_0802748A:
	lsls r2, r2, #4
	ldrb r1, [r7, #7]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #7]
	ldrh r1, [r6, #0x24]
	lsls r1, r1, #5
	movs r2, #0x1f
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #7]
_080274A4:
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080274AC: .4byte gUnknown_03006758
_080274B0: .4byte gUnknown_03006720
_080274B4: .4byte 0xFFF000FF
_080274B8: .4byte 0xFFFFF00F

	thumb_func_start sub_080274BC
sub_080274BC: @ 0x080274BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	mov sb, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl sub_08001F98
	cmp r0, #0
	bne _080274DE
	movs r0, #1
	b _0802758E
_080274DE:
	ldr r7, _08027570 @ =gUnknown_03006758
	ldr r2, [r7]
	cmp r2, #0xb3
	bhi _0802758C
	ldr r1, _08027574 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, [r1]
	adds r3, r3, r0
	adds r0, r2, #1
	str r0, [r7]
	movs r1, #0
	movs r0, #1
	strh r0, [r3, #0xa]
	strh r1, [r3, #8]
	ldr r1, _08027578 @ =0x00000FFF
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, [r3]
	ldr r2, _0802757C @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	mov r0, sb
	lsls r2, r0, #4
	ldrh r1, [r3, #2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	mov r0, sl
	strb r0, [r3]
	ldrb r1, [r3, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xa
	orrs r0, r1
	strb r0, [r3, #4]
	movs r0, #0xff
	ands r4, r0
	lsls r2, r4, #4
	ldrh r1, [r3, #4]
	ldr r0, _08027580 @ =0xFFFFF00F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r0, _08027584 @ =0x0000FFFF
	ands r5, r0
	lsls r2, r5, #0xc
	ldr r0, [r3, #4]
	ldr r1, _08027588 @ =0xF0000FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	movs r0, #1
	ands r6, r0
	lsls r2, r6, #4
	ldrb r1, [r3, #7]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	ldr r1, [sp, #0x28]
	lsls r1, r1, #5
	movs r2, #0x1f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	movs r0, #1
	b _0802758E
	.align 2, 0
_08027570: .4byte gUnknown_03006758
_08027574: .4byte gUnknown_03006720
_08027578: .4byte 0x00000FFF
_0802757C: .4byte 0xFFF000FF
_08027580: .4byte 0xFFFFF00F
_08027584: .4byte 0x0000FFFF
_08027588: .4byte 0xF0000FFF
_0802758C:
	movs r0, #0
_0802758E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start SpawnFieldItem
SpawnFieldItem: @ 0x0802759C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl sub_08001F98
	cmp r0, #0
	beq _08027636
	ldr r4, _080275C0 @ =gUnknown_03006758
	ldr r2, [r4]
	cmp r2, #0xb3
	bls _080275C4
	movs r0, #0
	b _08027638
	.align 2, 0
_080275C0: .4byte gUnknown_03006758
_080275C4:
	ldr r1, _08027618 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r4]
	movs r1, #0
	movs r0, #1
	strh r0, [r3, #0xa]
	strh r1, [r3, #8]
	ldr r1, _0802761C @ =0x00000FFF
	ands r1, r5
	lsls r1, r1, #8
	ldr r0, [r3]
	ldr r2, _08027620 @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	lsls r2, r6, #4
	ldrh r1, [r3, #2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r0, [r7]
	str r0, [r3, #4]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08027624
	mov r0, r8
	strb r0, [r3]
	ldrb r0, [r3, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #9
	orrs r1, r0
	strb r1, [r3, #4]
	b _08027636
	.align 2, 0
_08027618: .4byte gUnknown_03006720
_0802761C: .4byte 0x00000FFF
_08027620: .4byte 0xFFF000FF
_08027624:
	ldr r1, _08027644 @ =gUnknown_030066E0
	ldr r0, [r1]
	strb r0, [r3]
	adds r0, #1
	str r0, [r1]
	ldrb r0, [r3, #4]
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r3, #4]
_08027636:
	movs r0, #1
_08027638:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08027644: .4byte gUnknown_030066E0
