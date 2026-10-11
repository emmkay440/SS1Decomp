	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800C7D4
sub_0800C7D4: @ 0x0800C7D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0
	ldr r2, _0800C7E8 @ =gUnknown_03005DD4
	ldrh r0, [r2]
	movs r1, #1
	b _0800C7FA
	.align 2, 0
_0800C7E8: .4byte gUnknown_03005DD4
_0800C7EC:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bhi _0800C804
	ldrh r0, [r2]
	asrs r0, r6
_0800C7FA:
	ands r0, r1
	cmp r0, #0
	bne _0800C7EC
	cmp r6, #0xf
	bls _0800C80A
_0800C804:
	movs r0, #1
	rsbs r0, r0, #0
	b _0800C8E2
_0800C80A:
	ldr r3, _0800C87C @ =gUnknown_03004998
	ldr r1, [r3]
	lsls r2, r6, #4
	adds r1, r2, r1
	mov r0, r8
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r3]
	adds r2, r2, r0
	ldr r0, [r2, #0xc]
	lsrs r0, r0, #0xe
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _0800C892
	ldr r0, _0800C880 @ =gEnemies
	ldr r1, [r0]
	movs r2, #0
	ldr r0, _0800C884 @ =gActiveEnemyMask
	movs r5, #1
	ldr r4, [r0]
_0800C838:
	adds r0, r5, #0
	lsls r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0800C848
	ldrh r0, [r1, #2]
	cmp r0, r3
	beq _0800C88C
_0800C848:
	adds r2, #1
	adds r1, #0x94
	cmp r2, #4
	bls _0800C838
	movs r2, #0
	ldr r0, _0800C888 @ =gUnknown_03005DD4
	ldrh r4, [r0]
	movs r7, #1
	ldr r5, _0800C87C @ =gUnknown_03004998
_0800C85A:
	adds r0, r4, #0
	asrs r0, r2
	ands r0, r7
	cmp r0, #0
	beq _0800C874
	ldr r0, [r5]
	lsls r1, r2, #4
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	cmp r0, r3
	beq _0800C88C
_0800C874:
	adds r2, #1
	cmp r2, #0xf
	bls _0800C85A
	b _0800C892
	.align 2, 0
_0800C87C: .4byte gUnknown_03004998
_0800C880: .4byte gEnemies
_0800C884: .4byte gActiveEnemyMask
_0800C888: .4byte gUnknown_03005DD4
_0800C88C:
	movs r0, #2
	rsbs r0, r0, #0
	b _0800C8E2
_0800C892:
	ldr r5, _0800C8EC @ =gUnknown_03005DA0
	ldr r1, [r5]
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r1, r4, r1
	ldr r0, _0800C8F0 @ =sub_0800EAD8
	str r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	mov r5, r8
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	adds r0, #0x96
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x18]
	str r0, [r4]
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl CreateThread
	ldr r2, _0800C8F4 @ =gUnknown_03005DD4
	movs r0, #1
	lsls r0, r6
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
_0800C8E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C8EC: .4byte gUnknown_03005DA0
_0800C8F0: .4byte sub_0800EAD8
_0800C8F4: .4byte gUnknown_03005DD4

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

	thumb_func_start sub_0800C9EC
sub_0800C9EC: @ 0x0800C9EC
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #4
	lsls r1, r1, #4
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r1, r3, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r3, r0, #0x10
	mov ip, r3
	asrs r0, r0, #0x10
	subs r2, r2, r0
	cmp r2, #0
	bge _0800CA12
	rsbs r2, r2, #0
_0800CA12:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	lsls r5, r1, #0x10
	lsls r3, r6, #0x10
	cmp r2, r4
	bgt _0800CA2E
	asrs r1, r5, #0x10
	asrs r0, r3, #0x10
	subs r1, r1, r0
	cmp r1, #0
	bge _0800CA2A
	rsbs r1, r1, #0
_0800CA2A:
	cmp r1, r4
	ble _0800CAB8
_0800CA2E:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r5, #0x10
	asrs r2, r3, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _0800CA64
	cmp r2, #6
	bhi _0800CA62
	adds r2, #1
	b _0800CA64
_0800CA62:
	movs r2, #0
_0800CA64:
	cmp r2, #7
	bhi _0800CAB8
	lsls r0, r2, #2
	ldr r1, _0800CA74 @ =_0800CA78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CA74: .4byte _0800CA78
_0800CA78: @ jump table
	.4byte _0800CA98 @ case 0
	.4byte _0800CA9C @ case 1
	.4byte _0800CAA0 @ case 2
	.4byte _0800CAA4 @ case 3
	.4byte _0800CAA8 @ case 4
	.4byte _0800CAAC @ case 5
	.4byte _0800CAB0 @ case 6
	.4byte _0800CAB4 @ case 7
_0800CA98:
	movs r0, #0x10
	b _0800CABA
_0800CA9C:
	movs r0, #0x90
	b _0800CABA
_0800CAA0:
	movs r0, #0x80
	b _0800CABA
_0800CAA4:
	movs r0, #0xa0
	b _0800CABA
_0800CAA8:
	movs r0, #0x20
	b _0800CABA
_0800CAAC:
	movs r0, #0x60
	b _0800CABA
_0800CAB0:
	movs r0, #0x40
	b _0800CABA
_0800CAB4:
	movs r0, #0x50
	b _0800CABA
_0800CAB8:
	movs r0, #0
_0800CABA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
