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
