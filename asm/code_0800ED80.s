	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800ED80
sub_0800ED80: @ 0x0800ED80
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, #0
	beq _0800EDB2
	movs r4, #0xf0
	lsls r4, r4, #4
_0800ED92:
	adds r2, #1
	ldrh r0, [r1]
	subs r0, #1
	ands r0, r4
	lsrs r0, r0, #8
	cmp r0, #4
	bne _0800EDAA
	cmp r3, #0x2b
	bgt _0800EDA8
	cmp r3, #0x28
	bge _0800EDAA
_0800EDA8:
	adds r2, #1
_0800EDAA:
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, #0
	bne _0800ED92
_0800EDB2:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800EDBC
sub_0800EDBC: @ 0x0800EDBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	movs r1, #0xf
	add r0, sp, #0x10
	strb r1, [r0]
	b _0800EE30
_0800EDD6:
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r1, #0
	ands r0, r2
	ldr r1, _0800EE20 @ =gUnknown_03006340
	lsrs r0, r0, #6
	adds r0, r0, r1
	ldr r1, [r0]
	movs r3, #0xff
	ands r3, r2
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #8
	str r0, [sp, #8]
	ldr r0, [r1]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08003518
	ldrh r0, [r5]
	cmp r0, #0xfe
	bgt _0800EE24
	cmp r0, #0xfb
	blt _0800EE24
	adds r0, r4, #0
	adds r0, #8
	b _0800EE2A
	.align 2, 0
_0800EE20: .4byte gUnknown_03006340
_0800EE24:
	ldr r0, _0800EE40 @ =0x03003CA0
	ldrh r0, [r0]
	adds r0, r4, r0
_0800EE2A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
_0800EE30:
	ldrh r2, [r5]
	cmp r2, #0
	bne _0800EDD6
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE40: .4byte 0x03003CA0
