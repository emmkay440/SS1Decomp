	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800EA00
sub_0800EA00: @ 0x0800EA00
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r1, #0
	ldr r0, _0800EA40 @ =0x03005DA8
	ldr r4, [r0]
	movs r3, #0
_0800EA10:
	movs r0, #1
	lsls r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0800EA48
	ldr r2, _0800EA44 @ =0x03005DB0
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, r6
	bne _0800EA48
	adds r0, r2, #4
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, r5
	bne _0800EA48
	adds r0, r2, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800EA48
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	b _0800EA52
	.align 2, 0
_0800EA40: .4byte 0x03005DA8
_0800EA44: .4byte 0x03005DB0
_0800EA48:
	adds r3, #0xc
	adds r1, #1
	cmp r1, #2
	bls _0800EA10
	ldr r0, _0800EA58 @ =0x0000FFFF
_0800EA52:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800EA58: .4byte 0x0000FFFF
