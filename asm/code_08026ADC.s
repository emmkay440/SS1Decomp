	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08026ADC
sub_08026ADC: @ 0x08026ADC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r3, #0
	str r4, [r5, #0x10]
	str r2, [r5, #0x14]
	str r7, [r5, #0x18]
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	beq _08026B20
	ldr r6, _08026B24 @ =0x0000FFFF
	ands r4, r6
	movs r0, #0x88
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	beq _08026B20
	ands r4, r6
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r0, r4
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	bne _08026B28
_08026B20:
	movs r0, #0
	b _08026B5C
	.align 2, 0
_08026B24: .4byte 0x0000FFFF
_08026B28:
	cmp r7, #0
	blt _08026B3C
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
_08026B3C:
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08026B42:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08026B42
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, #0
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
	adds r0, r5, #0
_08026B5C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
