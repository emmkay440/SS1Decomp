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
	ldr r0, _0800EB70 @ =gUnknown_03006340
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
_0800EB70: .4byte gUnknown_03006340
_0800EB74:
	ldrh r2, [r7]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	movs r4, #0xf0
	lsls r4, r4, #0x14
	ands r4, r0
	lsrs r4, r4, #0x18
	ldr r1, _0800EBC4 @ =gUnknown_03006340
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
_0800EBC4: .4byte gUnknown_03006340
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
