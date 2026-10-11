	.include "asm/macros.inc"

	.syntax unified
	.text

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
