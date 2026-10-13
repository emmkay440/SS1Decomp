	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08024320
sub_08024320: @ 0x08024320
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08007544
	adds r3, r0, #0
	cmp r3, #0
	bne _08024408
	ldr r0, [r4, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x24
	mov r5, sp
	adds r5, #0x26
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldrh r0, [r4]
	mov r8, r0
	ldrh r1, [r5]
	str r1, [sp, #0x38]
	str r6, [sp, #0x34]
	ldr r0, _08024418 @ =0x080FBA9C
	adds r0, #0x18
	mov sb, r0
	add r6, sp, #0x28
	movs r7, #0
	mov sl, r6
	add r4, sp, #0x34
_08024372:
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r4, #0
	bl sub_080004A4
	strb r0, [r6]
	adds r7, #1
	adds r6, #1
	cmp r7, #4
	blo _08024372
	movs r5, #0
	str r5, [sp, #0x3c]
	movs r0, #0x12
	rsbs r0, r0, #0
	add r8, r0
	mov r6, sl
	movs r7, #0
	ldr r4, _0802441C @ =gUnknown_03006430
	movs r0, #2
	lsls r0, r0, #0x10
	mov sb, r0
_080243A2:
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	bne _080243B2
	ldrb r0, [r6]
	cmp r0, #0
	bne _080243B2
	cmp r7, #3
	bne _080243D6
_080243B2:
	movs r2, #1
	str r2, [sp, #0x3c]
	ldrb r3, [r6]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [sp, #0x38]
	mov r5, sb
	lsrs r2, r5, #0x10
	bl sub_08003518
_080243D6:
	adds r7, #1
	movs r0, #6
	add r8, r0
	adds r6, #1
	cmp r7, #4
	blo _080243A2
	mov r1, sp
	ldrh r0, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	ldr r3, _0802441C @ =gUnknown_03006430
	subs r0, #6
	subs r1, #8
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #4
	movs r3, #6
	bl sub_08003518
_08024408:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024418: .4byte 0x080FBA9C
_0802441C: .4byte gUnknown_03006430
