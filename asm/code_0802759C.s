	.include "asm/macros.inc"

	.syntax unified
	.text

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
