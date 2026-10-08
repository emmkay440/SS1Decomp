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
