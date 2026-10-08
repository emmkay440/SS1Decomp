	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08043D48
sub_08043D48: @ 0x08043D48
	push {r4, r5, r6, lr}
	bl sub_08040C24
	adds r4, r0, #0
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08045F50
	cmp r0, #0
	bne _08043D60
	movs r6, #0
_08043D60:
	cmp r4, #0
	beq _08043D98
	movs r5, #0
_08043D66:
	cmp r6, r4
	bne _08043D72
	ldr r0, _08043D88 @ =0x030004CA
	ldrb r0, [r0]
	cmp r0, #0
	bne _08043D8C
_08043D72:
	lsls r1, r5, #4
	movs r0, #0x2c
	subs r0, r0, r1
	lsls r1, r5, #3
	adds r1, #0x20
	adds r2, r4, #0
	adds r4, #4
	movs r3, #8
	bl sub_08023048
	b _08043D8E
	.align 2, 0
_08043D88: .4byte 0x030004CA
_08043D8C:
	adds r4, #4
_08043D8E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08043D66
_08043D98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08043DA0
sub_08043DA0: @ 0x08043DA0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	cmp r2, r1
	beq _08043DB6
	movs r0, #2
	cmp r2, r1
	ble _08043DB6
	movs r0, #1
_08043DB6:
	bx lr
