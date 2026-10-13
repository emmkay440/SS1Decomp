	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080297D4
sub_080297D4: @ 0x080297D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _080298A0 @ =gPlayers
	adds r7, r1, r0
	cmp r4, #1
	bne _0802983E
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	subs r0, #0x4b
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08029822
	rsbs r0, r0, #0
_08029822:
	cmp r8, r0
	ble _0802983E
	strh r4, [r5, #0x3e]
	bl sub_08007544
	cmp r0, #0
	bne _0802983E
	bl sub_080075AC
	cmp r0, #0
	bne _0802983E
	movs r0, #0x29
	bl PlaySE
_0802983E:
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08029688
	strh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x28]
	adds r0, r0, r1
	strh r0, [r5, #0x28]
	ldr r0, [r7, #0x7c]
	str r0, [r5, #0x30]
	movs r0, #7
	strh r0, [r5, #0xa]
	mov r2, sb
	strh r2, [r5, #0x34]
	movs r0, #1
	strh r0, [r5, #0x36]
	movs r1, #0
	movs r0, #0xa2
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0xc8
	ldr r7, _080298A4 @ =0x0000FFFF
_08029870:
	mov r2, r8
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	adds r0, r0, r4
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [r6]
	movs r1, #0x94
	muls r0, r1, r0
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, r7
	bne _080298A8
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #0x94
	bl memcpy
	b _080298B4
	.align 2, 0
_080298A0: .4byte gPlayers
_080298A4: .4byte 0x0000FFFF
_080298A8:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08029870
_080298B4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
