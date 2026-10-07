	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08013D9C
sub_08013D9C: @ 0x08013D9C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r0, _08013DF0 @ =gFieldItems
	ldr r1, [r0]
	movs r2, #0
	ldr r0, _08013DF4 @ =gFrameCounter
	ldr r4, [r0]
	movs r5, #1
	ands r4, r5
_08013DB2:
	adds r0, r2, #0
	ands r0, r5
	cmp r4, r0
	bne _08013DF8
	ldr r0, [r1, #0xc]
	ands r0, r5
	cmp r0, #0
	beq _08013DF8
	ldr r0, [r1]
	mov r3, ip
	subs r0, r3, r0
	asrs r3, r0, #0xc
	cmp r3, #0
	bge _08013DD0
	rsbs r3, r3, #0
_08013DD0:
	ldr r0, [r1, #4]
	subs r0, r7, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _08013DDC
	rsbs r0, r0, #0
_08013DDC:
	cmp r3, #7
	bgt _08013DF8
	cmp r0, #7
	bgt _08013DF8
	ldr r0, [r1, #8]
	cmp r6, r0
	bne _08013DF8
	adds r0, r1, #0
	b _08013E02
	.align 2, 0
_08013DF0: .4byte gFieldItems
_08013DF4: .4byte gFrameCounter
_08013DF8:
	adds r2, #1
	adds r1, #0x1c
	cmp r2, #0xe
	bls _08013DB2
	movs r0, #0
_08013E02:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08013E08:
	.byte 0x03, 0x49, 0x09, 0x68, 0x40, 0x1A, 0x03, 0x49
	.byte 0x48, 0x43, 0x80, 0x10, 0x70, 0x47, 0x00, 0x00, 0xB0, 0x63, 0x00, 0x03, 0xB7, 0x6D, 0xDB, 0xB6

	thumb_func_start sub_08013E20
sub_08013E20: @ 0x08013E20
	adds r2, r0, #0
	cmp r2, #0
	bne _08013E2A
	movs r0, #0
	b _08013E3E
_08013E2A:
	ldr r0, [r2, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08013E3C
	movs r0, #0
	str r0, [r2, #0xc]
	movs r0, #5
	str r0, [r2, #0x14]
_08013E3C:
	movs r0, #1
_08013E3E:
	bx lr

	thumb_func_start sub_08013E40
sub_08013E40: @ 0x08013E40
	adds r3, r0, #0
	cmp r3, #0
	bne _08013E4A
	movs r0, #0
	b _08013E5E
_08013E4A:
	ldr r2, [r3, #0xc]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08013E5C
	movs r0, #2
	orrs r2, r0
	str r2, [r3, #0xc]
	str r1, [r3, #0x14]
_08013E5C:
	movs r0, #1
_08013E5E:
	bx lr

	thumb_func_start sub_08013E60
sub_08013E60: @ 0x08013E60
	adds r2, r0, #0
	cmp r2, #0
	bne _08013E6A
	movs r0, #0
	b _08013E7E
_08013E6A:
	ldr r0, [r2, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08013E7C
	movs r0, #1
	str r0, [r2, #0xc]
	movs r0, #5
	str r0, [r2, #0x14]
_08013E7C:
	movs r0, #1
_08013E7E:
	bx lr
_08013E80:
	.byte 0x05, 0x48, 0x00, 0x21, 0x02, 0x1C, 0x88, 0x32, 0x10, 0x78, 0x40, 0x06, 0x40, 0x0F, 0x00, 0x28
	.byte 0x04, 0xD1, 0x08, 0x1C, 0x08, 0xE0, 0x00, 0x00, 0x10, 0x3D, 0x00, 0x03, 0x04, 0x32, 0x01, 0x31
	.byte 0x18, 0x29, 0xF1, 0xD9, 0x01, 0x20, 0x40, 0x42, 0x70, 0x47, 0x00, 0x00
