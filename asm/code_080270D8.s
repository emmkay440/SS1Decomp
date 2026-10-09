	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080270D8
sub_080270D8: @ 0x080270D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	movs r1, #0x78
	mov sb, r1
	movs r2, #0x7c
	mov r8, r2
	movs r7, #0
	bl GetDataRecord
	adds r5, r0, #0
	adds r0, #0xa
	bl sub_0800ED80
	ldr r1, _08027108 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r6, r0, #0
	b _08027128
	.align 2, 0
_08027108: .4byte 0x03003CA0
_0802710C:
	bl sub_08022A88
	cmp r0, #0
	bne _08027124
	adds r0, r5, #0
	adds r0, #0xa
	mov r3, sb
	adds r1, r3, r6
	mov r3, r8
	adds r2, r3, r7
	bl sub_0800EB30
_08027124:
	bl WaitFrame
_08027128:
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0802710C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
