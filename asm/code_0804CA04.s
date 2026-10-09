	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804CA04
sub_0804CA04: @ 0x0804CA04
	push {lr}
	ldr r0, _0804CA20 @ =gUnknown_03006920
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CA24
	bl sub_0804E1E4
	movs r0, #4
	bl sub_0804CA84
	bl sub_0804CF64
	b _0804CA4E
	.align 2, 0
_0804CA20: .4byte gUnknown_03006920
_0804CA24:
	cmp r0, #1
	bne _0804CA3A
	bl sub_0804F944
	movs r0, #0
	bl sub_0804ED80
	movs r0, #0
	bl sub_0804F31C
	b _0804CA4E
_0804CA3A:
	cmp r0, #2
	bne _0804CA4E
	bl sub_0804F944
	movs r0, #0
	bl sub_0804ED80
	movs r0, #1
	bl sub_0804F31C
_0804CA4E:
	bl sub_0800277C
	cmp r0, #0
	beq _0804CA5E
	movs r0, #0x14
	bl SignalEvent
	b _0804CA64
_0804CA5E:
	ldr r0, _0804CA68 @ =0x11201100
	bl SignalEvent
_0804CA64:
	pop {r0}
	bx r0
	.align 2, 0
_0804CA68: .4byte 0x11201100
