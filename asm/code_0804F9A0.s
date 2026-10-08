	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804F9A0
sub_0804F9A0: @ 0x0804F9A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sb, r1
	movs r4, #0
	cmp r4, r5
	bge _0804FA08
	lsls r6, r3, #0x18
	lsls r2, r2, #0x10
	mov r8, r2
_0804F9BA:
	cmp r4, #0x3f
	bgt _0804F9CA
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r6, #0x18
	bl sub_0804E5A4
_0804F9CA:
	adds r0, r5, #0
	subs r0, #0x40
	cmp r4, r0
	ble _0804F9E0
	subs r1, r5, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r6, #0x18
	bl sub_0804E5A4
_0804F9E0:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804FA20 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	mov r7, r8
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	bne _0804FA1A
	bl WaitFrame
	adds r4, #1
	cmp r4, r5

	non_word_aligned_thumb_func_start sub_0804FA06
sub_0804FA06: @ 0x0804FA06
	blt _0804F9BA
_0804FA08:
	movs r4, #0
	cmp r4, sb
	bge _0804FA2E
_0804FA0E:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804FA24
_0804FA1A:
	movs r0, #0
	b _0804FA30
	.align 2, 0
_0804FA20: .4byte 0x03001258
_0804FA24:
	bl WaitFrame
	adds r4, #1
	cmp r4, sb
	blt _0804FA0E
_0804FA2E:
	movs r0, #1
_0804FA30:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804FA40
sub_0804FA40: @ 0x0804FA40
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	cmp r4, r5
	bge _0804FA84
_0804FA4C:
	cmp r4, #0x3f
	bgt _0804FA5C
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804FA5C:
	adds r0, r5, #0
	subs r0, #0x40
	cmp r4, r0
	ble _0804FA72
	subs r1, r5, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804FA72:
	bl sub_0804F99C
	cmp r0, #0
	bne _0804FA92
	bl WaitFrame
	adds r4, #1
	cmp r4, r5
	blt _0804FA4C
_0804FA84:
	movs r4, #0
	cmp r4, r6
	bge _0804FAA0
_0804FA8A:
	bl sub_0804F99C
	cmp r0, #0
	beq _0804FA96
_0804FA92:
	movs r0, #0
	b _0804FAA2
_0804FA96:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804FA8A
_0804FAA0:
	movs r0, #1
_0804FAA2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start umul3232H32
umul3232H32: @ 0x0804FAA8
	add r2, pc, #0x0 @ =__umul3232H32
	bx r2
