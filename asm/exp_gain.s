	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start CalcExpGain
CalcExpGain: @ 0x0801709C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl GetMultiplayerId
	adds r6, r0, #0
	ldrh r1, [r4]
	ldr r0, [r5, #0x38]
	ldrh r2, [r4, #2]
	cmp r0, r1
	ble _080170C6
	subs r0, #0xa
	subs r0, r1, r0
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	cmp r2, #0
	bgt _080170C6
	movs r2, #1
_080170C6:
	movs r0, #0xd4
	muls r0, r6, r0
	ldr r1, _080170EC @ =0x0300459C
	adds r0, r0, r1
	ldr r1, [r0]
	movs r3, #2
_080170D2:
	ldrh r0, [r1]
	cmp r0, #0xb
	bne _080170DA
	lsls r2, r2, #1
_080170DA:
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _080170D2
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080170EC: .4byte 0x0300459C
