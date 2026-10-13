	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800481C
sub_0800481C: @ 0x0800481C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	adds r6, r1, #0
	adds r6, #0x10
	movs r4, #0
	ldrsh r5, [r1, r4]
	movs r7, #2
	ldrsh r4, [r1, r7]
	muls r5, r4, r5
	movs r4, #3
	subs r4, r4, r0
	lsls r4, r4, #1
	muls r4, r5, r4
	adds r6, r6, r4
	ldr r4, _08004928 @ =gMapLayer_03003C00
	mov sl, r4
	lsls r5, r0, #2
	adds r4, r5, r0
	lsls r4, r4, #2
	mov sb, r4
	mov r7, sb
	add r7, sl
	movs r4, #0
	mov r8, r4
	strh r0, [r7, #0x10]
	mov r4, sl
	adds r4, #8
	add r4, sb
	str r6, [r4]
	ldrh r4, [r1]
	strh r4, [r7, #0xc]
	ldrh r1, [r1, #2]
	strh r1, [r7, #0xe]
	mov r1, r8
	strh r1, [r7]
	strh r1, [r7, #2]
	lsls r4, r0, #1
	ldr r0, _0800492C @ =gUnknown_03003C90
	adds r5, r5, r0
	ldr r5, [r5]
	str r5, [sp, #8]
	lsrs r2, r2, #1
	str r2, [sp]
	lsrs r3, r3, #1
	str r3, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	movs r2, #1
	bl sub_0800588C
	mov r0, sl
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0800489E
	adds r0, #7
_0800489E:
	asrs r0, r0, #3
	strh r0, [r7]
	mov r1, sl
	adds r1, #0x5e
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080048B0
	adds r0, #7
_080048B0:
	asrs r0, r0, #3
	strh r0, [r7, #2]
	ldrh r6, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r8, r4
	cmp r6, r0
	bge _080048F4
	mov r7, sb
	mov r4, sl
	adds r5, r1, #0
_080048CC:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, r4
	bl sub_08004A1C
	adds r0, r6, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r6, r0
	blt _080048CC
_080048F4:
	ldr r0, _08004930 @ =REG_BG0CNT
	add r0, r8
	ldrh r0, [r0]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r0, [sp, #8]
	bl QueueCopy
	bl WaitFrame
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004928: .4byte gMapLayer_03003C00
_0800492C: .4byte gUnknown_03003C90
_08004930: .4byte REG_BG0CNT
