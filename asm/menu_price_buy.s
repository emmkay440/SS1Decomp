	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08045114
sub_08045114: @ 0x08045114
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4]
	ldr r0, _08045170 @ =gUnknown_030005B9
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080451B0
	bl sub_08045F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045174
	bl sub_08040C98
	adds r5, r0, #0
	bl sub_08040CA4
	ldrb r0, [r0, #2]
	cmp r0, #6
	bne _080451B0
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _080451B0
	adds r0, r5, #0
	bl sub_08040DB0
	str r0, [r4]
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_08040DB0
	cmp r4, r0
	bge _080451A4
	b _080451AC
	.align 2, 0
_08045170: .4byte gUnknown_030005B9
_08045174:
	ldr r1, _080451A8 @ =gUnknown_030005D4
	ldrb r0, [r1, #2]
	cmp r0, #6
	bne _080451B0
	adds r0, r1, #0
	bl sub_0804087C
	adds r5, r0, #0
	cmp r5, #0
	beq _080451B0
	bl sub_08040DB0
	str r0, [r4]
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_08040DB0
	cmp r4, r0
	blt _080451AC
_080451A4:
	movs r0, #1
	b _080451B2
	.align 2, 0
_080451A8: .4byte gUnknown_030005D4
_080451AC:
	movs r0, #2
	b _080451B2
_080451B0:
	movs r0, #0
_080451B2:
	pop {r4, r5}
	pop {r1}
	bx r1
