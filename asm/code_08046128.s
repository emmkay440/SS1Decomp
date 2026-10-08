	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08046128
sub_08046128: @ 0x08046128
	push {r4, lr}
	ldr r4, _0804614C @ =0x030005D8
	movs r0, #3
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
	bl sub_08040BF8
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08046150
	strb r2, [r4, #3]
	b _08046166
	.align 2, 0
_0804614C: .4byte 0x030005D8
_08046150:
	adds r2, #1
	adds r1, #4
	cmp r2, #0x18
	bgt _08046166
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08046150
	ldr r0, _0804616C @ =0x030005D8
	strb r2, [r0, #3]
_08046166:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804616C: .4byte 0x030005D8
