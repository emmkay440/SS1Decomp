	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080010F4
sub_080010F4: @ 0x080010F4
	adds r1, r0, #0
	cmp r1, #0
	beq _08001108
	ldr r0, _08001104 @ =gUnknown_03002D60
	str r1, [r0]
	movs r0, #1
	b _0800110E
	.align 2, 0
_08001104: .4byte gUnknown_03002D60
_08001108:
	ldr r0, _08001110 @ =gUnknown_03002D60
	str r1, [r0]
	movs r0, #0
_0800110E:
	bx lr
	.align 2, 0
_08001110: .4byte gUnknown_03002D60
