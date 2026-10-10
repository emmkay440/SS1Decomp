	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800EB30
sub_0800EB30: @ 0x0800EB30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov sb, r6
	movs r1, #0xf
	add r0, sp, #0x10
	strb r1, [r0]
	ldr r0, _0800EB70 @ =0x03006340
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r0, #4]
	adds r1, r1, r2
	movs r0, #0x1f
	movs r2, #1
	bl LoadPalette
	mov r0, r8
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0800EC16
	.align 2, 0
_0800EB70: .4byte 0x03006340
_0800EB74:
	ldrh r2, [r7]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	movs r4, #0xf0
	lsls r4, r4, #0x14
	ands r4, r0
	lsrs r4, r4, #0x18
	ldr r1, _0800EBC4 @ =0x03006340
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xff
	ands r2, r0
	subs r5, r2, #1
	ands r5, r0
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #8
	str r0, [sp, #8]
	ldr r0, [r1]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	adds r3, r5, #0
	bl sub_08003518
	cmp r4, #4
	bne _0800EBCE
	cmp r5, #0x2b
	bgt _0800EBC8
	cmp r5, #0x28
	blt _0800EBC8
	adds r0, r6, #0
	adds r0, #8
	b _0800EBE6
	.align 2, 0
_0800EBC4: .4byte 0x03006340
_0800EBC8:
	adds r0, r6, #0
	adds r0, #0xd
	b _0800EBE6
_0800EBCE:
	ldrh r0, [r7]
	cmp r0, #0xfb
	blt _0800EBF4
	cmp r0, #0xfe
	ble _0800EBDE
	cmp r0, #0xff
	beq _0800EBE4
	b _0800EBF4
_0800EBDE:
	adds r0, r6, #0
	adds r0, #8
	b _0800EBE6
_0800EBE4:
	adds r0, r6, #5
_0800EBE6:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _0800EBF0 @ =0x03003CA0
	b _0800EBFE
	.align 2, 0
_0800EBF0: .4byte 0x03003CA0
_0800EBF4:
	ldr r1, _0800EC2C @ =0x03003CA0
	ldrh r0, [r1]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800EBFE:
	ldrh r1, [r1]
	movs r0, #0xf0
	subs r0, r0, r1
	cmp r6, r0
	ble _0800EC14
	mov r6, sb
	mov r0, r8
	adds r0, #0xd
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0800EC14:
	adds r7, #2
_0800EC16:
	ldrh r0, [r7]
	cmp r0, #0
	bne _0800EB74
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC2C: .4byte 0x03003CA0
_0800EC30:
	.byte 0x0C, 0xB4, 0x02, 0xB0, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_0800EC38
sub_0800EC38: @ 0x0800EC38
	push {lr}
	ldr r0, _0800EC60 @ =gUnknown_03006334
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800EC64 @ =0x03006330
	strh r1, [r0]
	ldr r1, _0800EC68 @ =0x03005DE0
	movs r0, #0x12
	strh r0, [r1]
	bl sub_0800EC74
	ldr r0, _0800EC6C @ =0x08052C5C
	ldr r1, _0800EC70 @ =0x0600C000
	movs r2, #0xe0
	lsls r2, r2, #3
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0800EC60: .4byte gUnknown_03006334
_0800EC64: .4byte 0x03006330
_0800EC68: .4byte 0x03005DE0
_0800EC6C: .4byte 0x08052C5C
_0800EC70: .4byte 0x0600C000

	thumb_func_start sub_0800EC74
sub_0800EC74: @ 0x0800EC74
	push {r4, lr}
	sub sp, #4
	ldr r4, _0800EC98 @ =gUnknown_03006334
	ldrh r0, [r4]
	cmp r0, #0
	bne _0800EC8C
	str r0, [sp]
	ldr r1, _0800EC9C @ =0x03005DF0
	ldr r2, _0800ECA0 @ =0x01000150
	mov r0, sp
	bl CpuFastSet
_0800EC8C:
	movs r0, #0
	strh r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC98: .4byte gUnknown_03006334
_0800EC9C: .4byte 0x03005DF0
_0800ECA0: .4byte 0x01000150

	thumb_func_start sub_0800ECA4
sub_0800ECA4: @ 0x0800ECA4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r2, r5, #6
	lsrs r1, r1, #0x17
	ldr r0, _0800ED00 @ =0x03005DF0
	adds r1, r1, r0
	adds r2, r2, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800ECEE
	movs r0, #0xe
	lsls r6, r0, #0xc
	movs r0, #0x80
	lsls r0, r0, #2
	adds r7, r0, #0
_0800ECC8:
	ldrb r0, [r4]
	adds r3, r0, r7
	orrs r3, r6
	adds r4, #1
	cmp r3, #0xa
	bne _0800ECE4
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r3, [r4]
	orrs r3, r6
	adds r4, #1
	lsls r0, r5, #6
	adds r2, r0, r1
_0800ECE4:
	strh r3, [r2]
	adds r2, #2
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800ECC8
_0800ECEE:
	adds r0, r5, #0
	bl sub_0800EE44
	ldr r1, _0800ED04 @ =0x03006330
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED00: .4byte 0x03005DF0
_0800ED04: .4byte 0x03006330

	thumb_func_start sub_0800ED08
sub_0800ED08: @ 0x0800ED08
	push {r4, r5, lr}
	ldr r0, _0800ED5C @ =gUnknown_03006334
	ldrh r5, [r0]
	cmp r5, #0
	bne _0800ED4E
	ldr r0, _0800ED60 @ =REG_BG0CNT
	ldrh r1, [r0]
	lsrs r1, r1, #8
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #0xb
	ldr r0, _0800ED64 @ =0x03005DE0
	ldrh r3, [r0]
	lsls r3, r3, #6
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r0, r3, r0
	adds r1, r1, r0
	ldr r0, _0800ED68 @ =0x03005DF0
	adds r0, r3, r0
	movs r2, #0x80
	lsls r2, r2, #4
	subs r2, r2, r3
	bl QueueCopy
	ldr r4, _0800ED6C @ =0x03006330
	ldrh r0, [r4]
	cmp r0, #0
	beq _0800ED4E
	ldr r1, _0800ED70 @ =0x08052BDC
	movs r0, #0xe
	movs r2, #1
	bl LoadPalette
	strh r5, [r4]
_0800ED4E:
	ldr r1, _0800ED64 @ =0x03005DE0
	movs r0, #0x12
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED5C: .4byte gUnknown_03006334
_0800ED60: .4byte REG_BG0CNT
_0800ED64: .4byte 0x03005DE0
_0800ED68: .4byte 0x03005DF0
_0800ED6C: .4byte 0x03006330
_0800ED70: .4byte 0x08052BDC
