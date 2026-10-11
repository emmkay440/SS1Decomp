	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08045D80
sub_08045D80: @ 0x08045D80
	push {r4, r5, lr}
	ldr r0, _08045DA8 @ =gUnknown_030005CC
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08045E0C
	ldr r3, _08045DAC @ =gUnknown_030005D4
	ldr r0, _08045DB0 @ =gUnknown_030005D0
	ldrh r1, [r3, #2]
	adds r2, r0, #0
	ldrh r0, [r2, #2]
	cmp r1, r0
	bne _08045E0C
	ldr r0, _08045DB4 @ =gUnknown_030005C2
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x40
	beq _08045DB8
	cmp r1, #0x80
	beq _08045DC6
	b _08045DD4
	.align 2, 0
_08045DA8: .4byte gUnknown_030005CC
_08045DAC: .4byte gUnknown_030005D4
_08045DB0: .4byte gUnknown_030005D0
_08045DB4: .4byte gUnknown_030005C2
_08045DB8:
	ldrb r0, [r3, #2]
	cmp r0, #9
	beq _08045DC2
	subs r0, #1
	b _08045DD2
_08045DC2:
	movs r0, #0xb
	b _08045DD2
_08045DC6:
	ldrb r0, [r3, #2]
	cmp r0, #0xb
	beq _08045DD0
	adds r0, #1
	b _08045DD2
_08045DD0:
	movs r0, #9
_08045DD2:
	strb r0, [r2, #2]
_08045DD4:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08045DE0
	adds r0, r2, #0
	bl sub_08045304
_08045DE0:
	ldrb r0, [r4, #2]
	cmp r0, #9
	beq _08045DF4
	cmp r0, #9
	blt _08045E0C
	cmp r0, #0xa
	beq _08045DFC
	cmp r0, #0xb
	beq _08045E04
	b _08045E0C
_08045DF4:
	movs r0, #0x50
	strb r0, [r4]
	movs r0, #0x28
	b _08045E0A
_08045DFC:
	movs r0, #0x50
	strb r0, [r4]
	movs r0, #0x48
	b _08045E0A
_08045E04:
	movs r0, #0x50
	strb r0, [r4]
	movs r0, #0x68
_08045E0A:
	strb r0, [r4, #1]
_08045E0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
