	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08004214
sub_08004214: @ 0x08004214
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r3, #2]
	cmp r0, r1
	bhs _08004228
	movs r0, #0
	b _08004282
_08004228:
	ldr r0, [r3, #8]
	adds r3, r3, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	ldrh r0, [r3, #4]
	ldrh r1, [r4]
	cmp r0, r1
	bhi _08004240
	movs r0, #0
	strh r0, [r4]
_08004240:
	ldr r0, [r3, #8]
	adds r2, r3, r0
	ldrh r5, [r4]
	lsls r0, r5, #2
	adds r2, r2, r0
	movs r7, #0
	ldrh r1, [r6]
	ldrh r0, [r2, #2]
	cmp r0, r1
	bhi _0800427C
	adds r0, r5, #1
	strh r0, [r4]
	strh r7, [r6]
	ldrh r0, [r3, #4]
	ldrh r1, [r4]
	cmp r0, r1
	bhi _08004280
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0800426C
	strh r7, [r4]
	b _08004280
_0800426C:
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r6]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r4]
	movs r7, #1
	b _08004280
_0800427C:
	adds r0, r1, #1
	strh r0, [r6]
_08004280:
	adds r0, r7, #0
_08004282:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08004288
sub_08004288: @ 0x08004288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrh r0, [r2, #2]
	cmp r0, r3
	blo _08004332
	ldr r0, [r2, #4]
	adds r6, r2, r0
	ldr r1, [r2, #8]
	adds r1, r2, r1
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r4, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r6, r0
	ldr r0, [r6, #8]
	adds r4, r6, r0
	ldr r7, [sp, #0x24]
	movs r5, #0
	movs r3, #0
	ldrh r0, [r6, #2]
	cmp r3, r0
	bhs _08004332
	ldr r2, _08004308 @ =0x080FB0D8
	mov sl, r2
	ldr r0, _0800430C @ =0x080FB0E8
	mov sb, r0
_080042DE:
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r4, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	mov r2, r8
	adds r1, r2, r0
	adds r7, r7, r5
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08004310
	ldrb r0, [r4, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	add r0, sl
	b _08004318
	.align 2, 0
_08004308: .4byte 0x080FB0D8
_0800430C: .4byte 0x080FB0E8
_08004310:
	ldrb r0, [r4, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	add r0, sb
_08004318:
	ldr r5, [r0]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r5, #0
	str r3, [sp]
	bl QueueCopy
	ldr r3, [sp]
	adds r3, #1
	adds r4, #8
	ldrh r0, [r6, #2]
	cmp r3, r0
	blo _080042DE
_08004332:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004344
sub_08004344: @ 0x08004344
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	ldr r0, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _0800436C @ =gUnknown_030031F4
	ldr r3, [r6]
	cmp r3, #0x31
	bls _08004370
	movs r0, #0
	b _0800440C
	.align 2, 0
_0800436C: .4byte gUnknown_030031F4
_08004370:
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _080043B8 @ =0x03003200
	adds r2, r0, r1
	adds r0, r3, #1
	str r0, [r6]
	mov r0, r8
	str r0, [r2, #8]
	str r5, [r2, #0xc]
	movs r1, #0
	mov r0, ip
	strh r0, [r2, #0x10]
	strh r7, [r2, #0x12]
	adds r0, r2, #0
	adds r0, #0x22
	strb r4, [r0]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #0x1c]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r2, #0x18]
	str r1, [r2]
	str r1, [r2, #4]
	ldr r0, _080043BC @ =gUnknown_030031F0
	ldr r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080043CC
	ldr r0, _080043C0 @ =gUnknown_030031EC
	str r2, [r0]
	str r2, [r3]
	str r1, [r2]
	str r1, [r2, #4]
	b _0800440A
	.align 2, 0
_080043B8: .4byte 0x03003200
_080043BC: .4byte gUnknown_030031F0
_080043C0: .4byte gUnknown_030031EC
_080043C4:
	str r2, [r6]
	str r2, [r1]
	str r1, [r2, #4]
	b _0800440A
_080043CC:
	ldr r0, _080043D4 @ =gUnknown_030031EC
	ldr r1, [r0]
	adds r6, r0, #0
	b _080043DA
	.align 2, 0
_080043D4: .4byte gUnknown_030031EC
_080043D8:
	ldr r1, [r1, #4]
_080043DA:
	cmp r1, #0
	beq _08004400
	ldr r0, [r1, #0xc]
	cmp r0, r5
	bge _080043D8
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, r4
	blo _080043D8
	ldr r0, [r1]
	cmp r0, #0
	beq _080043C4
	str r2, [r0, #4]
	str r1, [r2, #4]
	ldr r0, [r1]
	str r0, [r2]
	str r2, [r1]
	b _0800440A
_08004400:
	ldr r0, [r3]
	str r2, [r0, #4]
	str r0, [r2]
	str r1, [r2, #4]
	str r2, [r3]
_0800440A:
	adds r0, r2, #0
_0800440C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08004418
sub_08004418: @ 0x08004418
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, _08004438 @ =gUnknown_030031F4
	ldr r2, [r3]
	cmp r2, #0x31
	bls _0800443C
	movs r0, #0
	b _08004490
	.align 2, 0
_08004438: .4byte gUnknown_030031F4
_0800443C:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0800447C @ =0x03003200
	adds r1, r0, r1
	adds r0, r2, #1
	str r0, [r3]
	str r7, [r1, #8]
	mov r0, ip
	str r0, [r1, #0xc]
	strh r6, [r1, #0x10]
	strh r4, [r1, #0x12]
	adds r0, r1, #0
	adds r0, #0x22
	strb r5, [r0]
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x1c]
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r1, #0x18]
	ldr r3, _08004480 @ =gUnknown_030031F0
	ldr r2, [r3]
	cmp r2, #0
	beq _08004484
	str r1, [r2, #4]
	str r2, [r1]
	movs r0, #0
	str r0, [r1, #4]
	str r1, [r3]
	b _0800448E
	.align 2, 0
_0800447C: .4byte 0x03003200
_08004480: .4byte gUnknown_030031F0
_08004484:
	ldr r0, _08004498 @ =gUnknown_030031EC
	str r1, [r0]
	str r1, [r3]
	str r2, [r1]
	str r2, [r1, #4]
_0800448E:
	adds r0, r1, #0
_08004490:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004498: .4byte gUnknown_030031EC
