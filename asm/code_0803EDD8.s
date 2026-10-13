	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803EDD8
sub_0803EDD8: @ 0x0803EDD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov r8, r1
	movs r5, #0
	movs r6, #0
	movs r4, #0
	ldr r0, _0803EDFC @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0803EE3C
	ldr r0, _0803EE00 @ =0x03004650
	mov sb, r0
	b _0803EE32
	.align 2, 0
_0803EDFC: .4byte gMapLayer_03003910
_0803EE00: .4byte 0x03004650
_0803EE04:
	movs r0, #0xd4
	muls r0, r5, r0
	add r0, sb
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	ble _0803EE30
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _0803EE30
	cmp r0, #9
	beq _0803EE30
	ldrh r0, [r1]
	lsrs r0, r0, #4
	cmp r6, r0
	bhs _0803EE30
	adds r6, r0, #0
	adds r4, r5, #0
_0803EE30:
	adds r5, #1
_0803EE32:
	bl sub_08001EC4
	cmp r5, r0
	blo _0803EE04
	b _0803EE58
_0803EE3C:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0803EE4A
	rsbs r1, r1, #0
_0803EE4A:
	adds r0, r1, #0
	cmp r1, #0
	bge _0803EE52
	adds r0, r1, #3
_0803EE52:
	asrs r4, r0, #2
	lsls r0, r4, #2
	subs r4, r1, r0
_0803EE58:
	mov r2, r8
	cmp r2, #0xe
	blo _0803EE76
	cmp r2, #0x13
	bls _0803EE6A
	cmp r2, #0x25
	bhi _0803EE76
	cmp r2, #0x20
	blo _0803EE76
_0803EE6A:
	ldrh r0, [r7]
	movs r1, #2
	adds r2, r4, #0
	bl sub_0802EEA8
	b _0803F044
_0803EE76:
	ldr r1, _0803EECC @ =gPlayers
	movs r0, #0xd4
	muls r0, r4, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #4
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	ldr r2, [r7, #0x14]
	subs r1, r1, r2
	lsls r1, r1, #4
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x18
	subs r6, #0x10
	movs r0, #0xff
	ands r6, r0
	adds r0, r7, #0
	adds r0, #0x88
	movs r1, #0
	mov r2, r8
	strh r2, [r0]
	strh r1, [r7, #8]
	ldrh r0, [r7]
	adds r4, r7, #0
	adds r4, #0x87
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	movs r5, #0
	b _0803EED4
	.align 2, 0
_0803EECC: .4byte gPlayers
_0803EED0:
	bl WaitFrame
_0803EED4:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803EF04
	bl sub_08007750
	cmp r0, #0
	bne _0803EF04
	bl sub_080074CC
	cmp r0, #0
	bne _0803EF04
	ldr r0, _0803EF1C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EF04
	bl sub_08007578
	cmp r0, #0
	beq _0803EED0
_0803EF04:
	adds r6, #8
	movs r0, #0xff
	ands r6, r0
	ldrh r0, [r7]
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	movs r5, #0
	b _0803EF24
	.align 2, 0
_0803EF1C: .4byte gUnknown_030063D8
_0803EF20:
	bl WaitFrame
_0803EF24:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803EF54
	bl sub_08007750
	cmp r0, #0
	bne _0803EF54
	bl sub_080074CC
	cmp r0, #0
	bne _0803EF54
	ldr r0, _0803EF6C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EF54
	bl sub_08007578
	cmp r0, #0
	beq _0803EF20
_0803EF54:
	adds r6, #8
	movs r0, #0xff
	ands r6, r0
	ldrh r0, [r7]
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	movs r5, #0
	b _0803EF74
	.align 2, 0
_0803EF6C: .4byte gUnknown_030063D8
_0803EF70:
	bl WaitFrame
_0803EF74:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803EFA4
	bl sub_08007750
	cmp r0, #0
	bne _0803EFA4
	bl sub_080074CC
	cmp r0, #0
	bne _0803EFA4
	ldr r0, _0803EFBC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EFA4
	bl sub_08007578
	cmp r0, #0
	beq _0803EF70
_0803EFA4:
	adds r6, #8
	movs r0, #0xff
	ands r6, r0
	ldrh r0, [r7]
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	movs r5, #0
	b _0803EFC4
	.align 2, 0
_0803EFBC: .4byte gUnknown_030063D8
_0803EFC0:
	bl WaitFrame
_0803EFC4:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803EFF4
	bl sub_08007750
	cmp r0, #0
	bne _0803EFF4
	bl sub_080074CC
	cmp r0, #0
	bne _0803EFF4
	ldr r0, _0803F00C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EFF4
	bl sub_08007578
	cmp r0, #0
	beq _0803EFC0
_0803EFF4:
	adds r6, #8
	movs r0, #0xff
	ands r6, r0
	movs r5, #0
	ldrh r0, [r7]
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r6, #4
	bl sub_0802EEA8
	b _0803F014
	.align 2, 0
_0803F00C: .4byte gUnknown_030063D8
_0803F010:
	bl WaitFrame
_0803F014:
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x13
	bhi _0803F044
	bl sub_08007750
	cmp r0, #0
	bne _0803F044
	bl sub_080074CC
	cmp r0, #0
	bne _0803F044
	ldr r0, _0803F05C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803F044
	bl sub_08007578
	cmp r0, #0
	beq _0803F010
_0803F044:
	bl GetCurrentThread
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F05C: .4byte gUnknown_030063D8
