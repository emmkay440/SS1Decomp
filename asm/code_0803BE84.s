	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803BE84
sub_0803BE84: @ 0x0803BE84
	push {r4, lr}
	ldr r4, _0803BEA4 @ =gUnknown_0300681C
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_0803BE94:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #0
	beq _0803BE94
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEA4: .4byte gUnknown_0300681C

	thumb_func_start sub_0803BEA8
sub_0803BEA8: @ 0x0803BEA8
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803BEB8 @ =gUnknown_0300681C
	ldr r4, [r0]
	movs r0, #0
_0803BEB0:
	adds r6, r0, #1
	adds r7, r4, #0
	adds r7, #0x28
	b _0803BEC0
	.align 2, 0
_0803BEB8: .4byte gUnknown_0300681C
_0803BEBC:
	bl WaitFrame
_0803BEC0:
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0803BEBC
	adds r0, r6, #0
	adds r4, r7, #0
	cmp r0, #0
	beq _0803BEB0
	ldr r4, _0803BEE4 @ =gUnknown_0300681C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEE4: .4byte gUnknown_0300681C
