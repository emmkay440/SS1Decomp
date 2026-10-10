	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start Random
Random: @ 0x08000830
	push {r4, r5, r6, r7, lr}
	ldr r2, _08000888 @ =gRngState
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	eors r1, r0
	movs r0, #2
	ands r1, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	rsbs r0, r1, #0
	lsrs r0, r0, #0x1f
	movs r4, #0
	adds r5, r2, #0
	adds r6, r5, #0
	movs r7, #1
_0800084E:
	adds r3, r4, r6
	ldrb r2, [r3]
	lsrs r1, r2, #1
	lsls r0, r0, #7
	orrs r1, r0
	adds r0, r7, #0
	ands r0, r2
	strb r1, [r3]
	adds r4, #1
	cmp r4, #7
	ble _0800084E
	ldrb r2, [r5, #2]
	movs r1, #7
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	ldrb r2, [r5, #3]
	ands r1, r2
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000888: .4byte gRngState
_0800088C:
	.byte 0x70, 0x47, 0x00, 0x00
