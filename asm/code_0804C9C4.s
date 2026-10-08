	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804C9C4
sub_0804C9C4: @ 0x0804C9C4
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r2, r0, #0
	ldr r0, _0804C9F8 @ =0x03006930
	ldr r1, _0804C9FC @ =sub_0804CA04
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0x32
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x18]
	str r1, [r0]
	ldr r1, _0804CA00 @ =sub_0804CA6C
	str r1, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_0804C9F8: .4byte 0x03006930
_0804C9FC: .4byte sub_0804CA04
_0804CA00: .4byte sub_0804CA6C

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
