	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800C8F8
sub_0800C8F8: @ 0x0800C8F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	str r1, [sp, #0x20]
	bl sub_08001EC4
	mov ip, r0
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	mov sl, r0
	ldr r0, [r7, #0x14]
	asrs r0, r0, #0xc
	mov sb, r0
	movs r3, #0
	cmp r3, ip
	bhs _0800C97E
	mov r8, r3
	mov r6, sp
_0800C924:
	movs r0, #0xd4
	muls r0, r3, r0
	ldr r1, _0800C964 @ =0x03004650
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _0800C968
	ldrh r1, [r7, #0x26]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0800C968
	ldrh r0, [r2]
	lsrs r0, r0, #4
	mov r1, sl
	subs r4, r1, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r1, sb
	subs r5, r1, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	b _0800C96A
	.align 2, 0
_0800C964: .4byte 0x03004650
_0800C968:
	ldr r0, _0800C9D4 @ =0x7FFFFFFF
_0800C96A:
	str r0, [r6]
	add r0, sp, #4
	add r0, r8
	str r3, [r0]
	movs r0, #8
	add r8, r0
	adds r6, #8
	adds r3, #1
	cmp r3, ip
	blo _0800C924
_0800C97E:
	movs r3, #0
	cmp r3, ip
	bhs _0800C9BE
_0800C984:
	adds r7, r3, #1
	adds r5, r7, #0
	cmp r7, ip
	bhs _0800C9B8
	lsls r0, r3, #3
	mov r1, sp
	adds r6, r1, r0
	add r1, sp, #4
	adds r4, r1, r0
	lsls r0, r7, #3
	mov r1, sp
	adds r2, r0, r1
_0800C99C:
	ldr r3, [r6]
	ldr r0, [r2]
	cmp r3, r0
	ble _0800C9B0
	ldr r1, [r4]
	str r0, [r6]
	ldr r0, [r2, #4]
	str r0, [r4]
	str r3, [r2]
	str r1, [r2, #4]
_0800C9B0:
	adds r2, #8
	adds r5, #1
	cmp r5, ip
	blo _0800C99C
_0800C9B8:
	adds r3, r7, #0
	cmp r3, ip
	blo _0800C984
_0800C9BE:
	ldr r0, [sp]
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x20]
	cmp r0, r1
	bgt _0800C9D8
	ldr r0, [sp, #4]
	b _0800C9DA
	.align 2, 0
_0800C9D4: .4byte 0x7FFFFFFF
_0800C9D8:
	movs r0, #0xa
_0800C9DA:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
