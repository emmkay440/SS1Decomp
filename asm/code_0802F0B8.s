	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802F0B8
sub_0802F0B8: @ 0x0802F0B8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802F0F0 @ =gUnknown_030067A0
	lsls r4, r5, #2
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0802F0F4 @ =0x030067B4
	str r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	bl Alloc
	ldr r1, _0802F0F8 @ =gUnknown_030067D0
	adds r4, r4, r1
	str r0, [r4]
	cmp r5, #0
	bne _0802F0E8
	ldr r4, _0802F0FC @ =0x03006804
	movs r0, #0xa0
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4]
_0802F0E8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F0F0: .4byte gUnknown_030067A0
_0802F0F4: .4byte 0x030067B4
_0802F0F8: .4byte gUnknown_030067D0
_0802F0FC: .4byte 0x03006804

	thumb_func_start sub_0802F100
sub_0802F100: @ 0x0802F100
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0802F114 @ =gUnknown_030067D0
	lsls r4, r6, #2
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F12A
	adds r5, r4, #0
	b _0802F11C
	.align 2, 0
_0802F114: .4byte gUnknown_030067D0
_0802F118:
	bl WaitFrame
_0802F11C:
	ldr r0, _0802F138 @ =gUnknown_030067D0
	adds r0, r5, r0
	ldr r0, [r0]
	bl IsThreadInList
	cmp r0, #0
	bne _0802F118
_0802F12A:
	ldr r0, _0802F13C @ =0x03006804
	ldr r0, [r0]
	lsls r5, r6, #2
	cmp r0, #0
	beq _0802F150
	b _0802F144
	.align 2, 0
_0802F138: .4byte gUnknown_030067D0
_0802F13C: .4byte 0x03006804
_0802F140:
	bl WaitFrame
_0802F144:
	ldr r0, _0802F170 @ =0x03006804
	ldr r0, [r0]
	bl IsThreadInList
	cmp r0, #0
	bne _0802F140
_0802F150:
	ldr r4, _0802F174 @ =gUnknown_030067D0
	adds r4, r5, r4
	ldr r0, [r4]
	bl Free
	ldr r5, _0802F170 @ =0x03006804
	ldr r0, [r5]
	bl Free
	movs r0, #0
	str r0, [r4]
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F170: .4byte 0x03006804
_0802F174: .4byte gUnknown_030067D0
