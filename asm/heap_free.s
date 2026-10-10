	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start Free
Free: @ 0x08001344
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	subs r4, #0x10
	ldr r0, _080013AC @ =gHeap
	ldr r2, [r0, #0x10]
	adds r3, r0, #0
	cmp r1, r2
	blo _08001426
	ldr r0, [r3, #0x14]
	adds r0, r2, r0
	cmp r1, r0
	bhi _08001426
	ldrb r0, [r4, #3]
	movs r6, #0x7f
	adds r2, r6, #0
	ands r2, r0
	strb r2, [r4, #3]
	ldr r5, [r4, #4]
	ldr r1, [r4]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080013B4
	ldr r2, _080013B0 @ =0x7FFFFFFF
	ands r2, r1
	ldr r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ands r0, r3
	orrs r0, r2
	str r0, [r5]
	str r5, [r1, #4]
	ldrb r0, [r5, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08001426
	ldr r0, [r5, #4]
	str r0, [r1, #4]
	ldr r1, [r5, #4]
	ldr r0, [r1]
	ands r0, r3
	orrs r0, r2
	str r0, [r1]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	str r0, [r1, #0xc]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	str r0, [r1, #8]
	b _08001426
	.align 2, 0
_080013AC: .4byte gHeap
_080013B0: .4byte 0x7FFFFFFF
_080013B4:
	ldrb r0, [r5, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080013F0
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r3, [r5, #4]
	ldr r2, _080013EC @ =0x7FFFFFFF
	ands r2, r4
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	str r4, [r0, #0xc]
	ldr r0, [r5, #0xc]
	str r4, [r0, #8]
	ldrb r1, [r4, #3]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4, #3]
	b _08001426
	.align 2, 0
_080013EC: .4byte 0x7FFFFFFF
_080013F0:
	strb r2, [r4, #3]
	ldr r0, [r3, #4]
	cmp r4, r0
	beq _0800141C
	b _08001418
_080013FA:
	str r1, [r4, #8]
	ldr r0, [r1, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [r1, #0xc]
	str r4, [r0, #8]
	str r4, [r1, #0xc]
	b _08001426
_08001408:
	ldr r0, [r1]
	lsls r0, r0, #1
	lsrs r1, r0, #1
	ldrb r0, [r1, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080013FA
	ldr r0, [r3, #4]
_08001418:
	cmp r1, r0
	bne _08001408
_0800141C:
	str r3, [r4, #8]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0xc]
	str r4, [r0, #8]
	str r4, [r3, #0xc]
_08001426:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
