	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803F060
sub_0803F060: @ 0x0803F060
	push {r4, r5, lr}
	ldr r5, _0803F0A4 @ =gUnknown_03006828
	movs r0, #0x78
	bl Alloc
	str r0, [r5]
	ldr r4, _0803F0A8 @ =gUnknown_0300682C
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _0803F0AC @ =gUnknown_03006830
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r0, [r5]
	movs r1, #0
	movs r2, #0
_0803F086:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #2
	bls _0803F086
	ldr r0, _0803F0A8 @ =gUnknown_0300682C
	ldr r0, [r0]
	movs r1, #0
	str r1, [r0, #8]
	ldr r0, _0803F0AC @ =gUnknown_03006830
	ldr r0, [r0]
	str r1, [r0, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F0A4: .4byte gUnknown_03006828
_0803F0A8: .4byte gUnknown_0300682C
_0803F0AC: .4byte gUnknown_03006830
