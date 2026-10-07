	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start InitHeap
InitHeap: @ 0x08001210
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r1, _08001290 @ =0x02000010
	movs r0, #0x80
	lsls r0, r0, #0x12
	mov r8, r0
	str r0, [r1]
	ldr r0, _08001294 @ =0x0203FFF0
	str r0, [r1, #4]
	ldr r3, _08001298 @ =gHeap
	str r3, [r1, #8]
	str r3, [r1, #0xc]
	ldrb r2, [r1, #3]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #3]
	ldr r2, [r1]
	ldrb r0, [r2, #3]
	movs r6, #0x80
	orrs r0, r6
	strb r0, [r2, #3]
	ldr r2, [r1]
	ldr r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #0x18
	ands r0, r5
	str r0, [r2]
	ldr r0, [r1]
	str r1, [r0, #4]
	ldr r0, [r1]
	str r3, [r0, #8]
	ldr r0, [r1]
	movs r4, #0
	str r4, [r0, #0xc]
	ldr r2, [r1, #4]
	ldrb r0, [r2, #3]
	orrs r0, r6
	strb r0, [r2, #3]
	ldr r2, [r1, #4]
	ldr r0, [r2]
	ands r0, r5
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r1, #4]
	str r4, [r0, #4]
	ldr r0, [r1]
	str r4, [r0, #8]
	ldr r0, [r1]
	str r3, [r0, #0xc]
	ldr r0, [r1, #4]
	str r0, [r3]
	str r1, [r3, #4]
	str r1, [r3, #8]
	str r1, [r3, #0xc]
	mov r0, r8
	str r0, [r3, #0x10]
	ldr r0, _0800129C @ =0x0003FFFF
	str r0, [r3, #0x14]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001290: .4byte 0x02000010
_08001294: .4byte 0x0203FFF0
_08001298: .4byte gHeap
_0800129C: .4byte 0x0003FFFF

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

	thumb_func_start sub_08001504
sub_08001504: @ 0x08001504
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	bl DisableInterrupts
	movs r0, #0xc0
	bl DisableIntr
	bl EnableInterrupts
	ldr r1, _080015D0 @ =REG_RCNT
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080015D4 @ =REG_SIOCNT
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _080015D8 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _080015DC @ =0x03002EB0
	ldr r2, _080015E0 @ =0x0500006C
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _080015E4 @ =0x080004C4
	ldr r1, _080015E8 @ =0x03003060
	ldr r2, _080015EC @ =REG_BG0HOFS
	bl CpuSet
	ldr r0, _080015F0 @ =0x08000504
	ldr r1, _080015F4 @ =0x03002D90
	ldr r2, _080015F8 @ =REG_WININ
	bl CpuSet
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [r4, #0x28]
	adds r0, #0x18
	str r0, [r4, #0x2c]
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0xc0
	movs r2, #0
	movs r7, #0x30
	adds r7, r7, r4
	mov r8, r7
	movs r0, #0x90
	adds r0, r0, r4
	mov ip, r0
	adds r6, r4, #0
	adds r6, #0xa8
	movs r7, #0x40
	adds r7, r7, r4
	mov sb, r7
_08001586:
	lsls r1, r3, #2
	mov r7, ip
	adds r0, r2, r7
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r2, r6
	mov r7, sb
	adds r7, #4
	mov sb, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r4, #0
	adds r0, #0x50
	adds r1, r1, r0
	str r5, [r1]
	adds r5, #0x48
	adds r2, #0x48
	adds r3, #1
	cmp r3, #3
	ble _08001586
	bl DisableInterrupts
	movs r0, #0x80
	bl EnableIntr
	bl EnableInterrupts
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080015D0: .4byte REG_RCNT
_080015D4: .4byte REG_SIOCNT
_080015D8: .4byte 0x00004003
_080015DC: .4byte 0x03002EB0
_080015E0: .4byte 0x0500006C
_080015E4: .4byte 0x080004C4
_080015E8: .4byte 0x03003060
_080015EC: .4byte REG_BG0HOFS
_080015F0: .4byte 0x08000504
_080015F4: .4byte 0x03002D90
_080015F8: .4byte REG_WININ

	thumb_func_start sub_080015FC
sub_080015FC: @ 0x080015FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov r8, r1
	ldr r7, _0800161C @ =0x03002EB0
	ldrb r0, [r7, #1]
	cmp r0, #1
	beq _08001684
	cmp r0, #1
	bgt _08001620
	cmp r0, #0
	beq _08001626
	b _080016B8
	.align 2, 0
_0800161C: .4byte 0x03002EB0
_08001620:
	cmp r0, #2
	beq _080016AC
	b _080016B8
_08001626:
	ldr r5, _08001698 @ =REG_SIOCNT
	ldr r6, [r5]
	movs r1, #0x30
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0800167E
	movs r0, #0x88
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #8
	bne _080016B8
	movs r1, #4
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0800167E
	ldr r1, [r7, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800167E
	bl DisableInterrupts
	movs r0, #0x80
	bl DisableIntr
	movs r0, #0x40
	bl EnableIntr
	bl EnableInterrupts
	ldrb r1, [r5, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _0800169C @ =REG_IF
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _080016A0 @ =0x0000B1FC
	str r0, [r1]
	strb r4, [r7]
_0800167E:
	ldr r1, _080016A4 @ =0x03002EB0
	movs r0, #1
	strb r0, [r1, #1]
_08001684:
	ldr r1, _080016A4 @ =0x03002EB0
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080016AC
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bhi _080016A8
	adds r0, #1
	strb r0, [r1, #0xa]
	b _080016AC
	.align 2, 0
_08001698: .4byte REG_SIOCNT
_0800169C: .4byte REG_IF
_080016A0: .4byte 0x0000B1FC
_080016A4: .4byte 0x03002EB0
_080016A8:
	movs r0, #2
	strb r0, [r1, #1]
_080016AC:
	mov r0, r8
	bl sub_08001788
	mov r0, sb
	bl sub_08001714
_080016B8:
	ldr r1, _080016D4 @ =0x03002EB0
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrb r3, [r1, #3]
	ldrb r0, [r1, #2]
	lsls r2, r0, #8
	ldrb r0, [r1]
	cmp r0, #8
	bne _080016D8
	movs r0, #0x80
	orrs r0, r2
	orrs r0, r3
	b _080016DC
	.align 2, 0
_080016D4: .4byte 0x03002EB0
_080016D8:
	adds r0, r3, #0
	orrs r0, r2
_080016DC:
	adds r2, r0, #0
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _080016EA
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
_080016EA:
	ldrb r0, [r1, #0xa]
	lsrs r0, r0, #3
	lsls r1, r0, #0xf
	lsls r0, r6, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08001702
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r1
	orrs r0, r2
	b _08001706
_08001702:
	adds r0, r2, #0
	orrs r0, r1
_08001706:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001714
sub_08001714: @ 0x08001714
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _0800177C @ =0x03002EB0
	ldr r2, [r4, #0x28]
	ldrb r1, [r4, #0xb]
	strb r1, [r2]
	ldr r3, [r4, #0x28]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	eors r1, r2
	strb r1, [r3, #1]
	ldr r1, [r4, #0x28]
	strh r5, [r1, #2]
	ldr r1, [r4, #0x28]
	adds r1, #4
	ldr r2, _08001780 @ =REG_DISPSTAT
	bl CpuSet
	movs r2, #0
	ldr r1, [r4, #0x28]
_0800173C:
	ldrh r0, [r1]
	adds r5, r5, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #9
	bls _0800173C
	adds r2, r4, #0
	ldr r1, [r2, #0x28]
	mvns r0, r5
	subs r0, #0xc
	strh r0, [r1, #2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800175E
	ldr r1, _08001784 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_0800175E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08001776
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08001776
	ldr r1, _08001784 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08001776:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800177C: .4byte 0x03002EB0
_08001780: .4byte REG_DISPSTAT
_08001784: .4byte 0x0400010E

	thumb_func_start sub_08001788
sub_08001788: @ 0x08001788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, _08001838 @ =0x03003060
	movs r4, #0
	str r4, [sp]
	bl _call_via_r0
	str r0, [sp, #4]
	ldr r0, _0800183C @ =0x03002EB0
	strb r4, [r0, #3]
	movs r5, #0
	add r1, sp, #4
	mov sl, r1
	add r2, sp, #8
	mov sb, r2
	mov r8, r0
	mov r7, r8
	adds r7, #0x50
_080017B6:
	movs r3, #0
	movs r2, #0
	lsls r4, r5, #2
	adds r6, r5, #1
	adds r0, r4, r7
	ldr r1, [r0]
_080017C2:
	ldrh r0, [r1]
	adds r3, r3, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #9
	bls _080017C2
	mov r1, sl
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08001802
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd
	rsbs r2, r2, #0
	cmp r0, r2
	bne _08001802
	adds r0, r4, r7
	ldr r0, [r0]
	adds r0, #4
	lsls r1, r5, #4
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	ldr r2, _08001840 @ =REG_DISPSTAT
	bl CpuSet
	movs r0, #1
	lsls r0, r5
	mov r2, r8
	ldrb r1, [r2, #3]
	orrs r0, r1
	strb r0, [r2, #3]
_08001802:
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r4, r7
	ldr r1, [r0]
	adds r1, #4
	mov r0, sb
	ldr r2, _08001844 @ =0x05000004
	bl CpuSet
	adds r5, r6, #0
	cmp r5, #3
	ble _080017B6
	ldr r1, _0800183C @ =0x03002EB0
	ldrb r0, [r1, #2]
	ldrb r2, [r1, #3]
	orrs r0, r2
	strb r0, [r1, #2]
	ldrb r0, [r1, #3]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001838: .4byte 0x03003060
_0800183C: .4byte 0x03002EB0
_08001840: .4byte REG_DISPSTAT
_08001844: .4byte 0x05000004

	thumb_func_start sub_08001848
sub_08001848: @ 0x08001848
	ldr r1, _08001858 @ =0x03002EB0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08001854
	movs r0, #1
	strb r0, [r1, #8]
_08001854:
	bx lr
	.align 2, 0
_08001858: .4byte 0x03002EB0

	thumb_func_start sub_0800185C
sub_0800185C: @ 0x0800185C
	push {lr}
	bl DisableInterrupts
	movs r0, #0xc0
	bl DisableIntr
	bl EnableInterrupts
	ldr r1, _0800188C @ =REG_SIOCNT
	ldr r2, _08001890 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08001894 @ =0x0000B1FC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r1, _08001898 @ =0x03002EB0
	movs r0, #0
	strb r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800188C: .4byte REG_SIOCNT
_08001890: .4byte 0x00002003
_08001894: .4byte 0x0000B1FC
_08001898: .4byte 0x03002EB0
