	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start Alloc
Alloc: @ 0x080012A0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r2, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	cmp r2, #0xf
	bhi _080012B2
	movs r2, #0x10
_080012B2:
	ldr r0, _08001314 @ =gHeap
	ldr r4, [r0, #0xc]
	adds r3, r0, #0
	cmp r4, r3
	beq _0800133C
	ldr r5, _08001318 @ =0x7FFFFFFF
	movs r6, #0x80
	lsls r6, r6, #0x18
_080012C2:
	ldr r0, [r4, #4]
	subs r1, r0, r4
	adds r0, r2, #0
	adds r0, #0x10
	cmp r1, r0
	blo _08001336
	adds r0, #0x20
	cmp r1, r0
	blo _0800131C
	adds r2, r4, r2
	adds r3, r2, #0
	adds r3, #0x10
	adds r1, r4, #0
	ands r1, r5
	ldr r0, [r2, #0x10]
	ands r0, r6
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	ldr r0, [r4, #0xc]
	str r0, [r3, #0xc]
	ldrb r1, [r3, #3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #3]
	ldr r2, [r4, #4]
	adds r1, r3, #0
	ands r1, r5
	ldr r0, [r2]
	ands r0, r6
	orrs r0, r1
	str r0, [r2]
	str r3, [r4, #4]
	ldr r0, [r4, #8]
	str r3, [r0, #0xc]
	ldr r0, [r4, #0xc]
	str r3, [r0, #8]
	b _08001328
	.align 2, 0
_08001314: .4byte gHeap
_08001318: .4byte 0x7FFFFFFF
_0800131C:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	str r0, [r1, #0xc]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [r1, #8]
_08001328:
	ldrb r0, [r4, #3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #0x10
	b _0800133E
_08001336:
	ldr r4, [r4, #0xc]
	cmp r4, r3
	bne _080012C2
_0800133C:
	movs r0, #0
_0800133E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

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
_0800142C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_08001430
sub_08001430: @ 0x08001430
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r2, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	cmp r2, #0xf
	bhi _08001442
	movs r2, #0x10
_08001442:
	ldr r0, _08001490 @ =gHeap
	ldr r4, [r0, #8]
	adds r3, r0, #0
	cmp r4, r3
	beq _080014B8
	ldr r6, _08001494 @ =0x7FFFFFFF
	movs r7, #0x80
	lsls r7, r7, #0x18
_08001452:
	ldr r5, [r4, #4]
	subs r1, r5, r4
	adds r0, r2, #0
	adds r0, #0x10
	cmp r1, r0
	blo _080014B2
	adds r0, #0x20
	cmp r1, r0
	blo _08001498
	adds r3, r4, #0
	subs r0, r5, r2
	adds r4, r0, #0
	subs r4, #0x10
	adds r1, r3, #0
	ands r1, r6
	ldr r0, [r4]
	ands r0, r7
	orrs r0, r1
	str r0, [r4]
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	ldr r2, [r3, #4]
	adds r1, r4, #0
	ands r1, r6
	ldr r0, [r2]
	ands r0, r7
	orrs r0, r1
	str r0, [r2]
	str r4, [r3, #4]
	b _080014A4
	.align 2, 0
_08001490: .4byte gHeap
_08001494: .4byte 0x7FFFFFFF
_08001498:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	str r0, [r1, #0xc]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [r1, #8]
_080014A4:
	ldrb r0, [r4, #3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #0x10
	b _080014BA
_080014B2:
	ldr r4, [r4, #8]
	cmp r4, r3
	bne _08001452
_080014B8:
	movs r0, #0
_080014BA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080014C0:
	.byte 0x00, 0x22, 0x07, 0x48, 0xC1, 0x68, 0x81, 0x42, 0x08, 0xD0, 0x03, 0x1C, 0x48, 0x68, 0x40, 0x1A
	.byte 0x82, 0x42, 0x00, 0xD2, 0x02, 0x1C, 0xC9, 0x68, 0x99, 0x42, 0xF7, 0xD1, 0x10, 0x1C, 0x70, 0x47
	.byte 0x70, 0x2D, 0x00, 0x03, 0x00, 0x22, 0x06, 0x48, 0xC1, 0x68, 0x81, 0x42, 0x06, 0xD0, 0x03, 0x1C
	.byte 0x48, 0x68, 0x40, 0x1A, 0x12, 0x18, 0xC9, 0x68, 0x99, 0x42, 0xF9, 0xD1, 0x10, 0x1C, 0x70, 0x47
	.byte 0x70, 0x2D, 0x00, 0x03
