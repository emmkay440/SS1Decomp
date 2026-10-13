	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800E634
sub_0800E634: @ 0x0800E634
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r5, #0
	ldr r3, _0800E6A4 @ =gEnemies
	ldr r4, [r3]
	ldr r2, _0800E6A8 @ =gActiveEnemyMask
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	mov ip, r3
	adds r7, r2, #0
	cmp r0, #0
	beq _0800E65E
	ldrh r2, [r4, #2]
	ldrh r1, [r6, #0xc]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x18
	adds r3, r1, #0
	cmp r2, r0
	beq _0800E688
_0800E65E:
	adds r5, #1
	ldrh r3, [r6, #0xc]
	cmp r5, #4
	bhi _0800E68C
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	mov r2, ip
	ldr r0, [r2]
	adds r4, r0, r1
	movs r1, #1
	lsls r1, r5
	ldr r0, [r7]
	ands r0, r1
	cmp r0, #0
	beq _0800E65E
	ldrh r1, [r4, #2]
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0800E65E
_0800E688:
	cmp r5, #4
	bls _0800E6FC
_0800E68C:
	movs r5, #0
	ldr r0, _0800E6AC @ =gUnknown_03005DD4
	ldrh r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0800E6B4
	ldr r0, _0800E6B0 @ =gUnknown_03004998
	ldr r0, [r0]
	b _0800E6CE
	.align 2, 0
_0800E6A4: .4byte gEnemies
_0800E6A8: .4byte gActiveEnemyMask
_0800E6AC: .4byte gUnknown_03005DD4
_0800E6B0: .4byte gUnknown_03004998
_0800E6B4:
	adds r5, #1
	cmp r5, #0xf
	bhi _0800E6E0
	ldrh r0, [r2]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E6B4
	ldr r0, _0800E6F8 @ =gUnknown_03004998
	ldr r1, [r0]
	lsls r0, r5, #4
	adds r0, r0, r1
_0800E6CE:
	ldr r1, [r0, #0xc]
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x18
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0800E6B4
	cmp r5, #0xf
	bls _0800E744
_0800E6E0:
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x18
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	b _0800E744
	.align 2, 0
_0800E6F8: .4byte gUnknown_03004998
_0800E6FC:
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	asrs r3, r0, #0x14
	lsls r2, r1, #0x10
	asrs r2, r2, #0x14
	ldrb r0, [r6, #0xd]
	lsrs r0, r0, #4
	movs r1, #0
	strh r0, [r4, #8]
	lsls r0, r3, #0xc
	str r0, [r4, #0x10]
	lsls r0, r2, #0xc
	str r0, [r4, #0x14]
	ldrb r0, [r6, #0xe]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [r4, #0x54]
	ldrh r0, [r6, #0xe]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	str r0, [r4, #0x5c]
	strh r1, [r4, #0x3c]
	ldrb r0, [r6, #0xf]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800E736
	movs r0, #5
	b _0800E73C
_0800E736:
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
_0800E73C:
	strh r0, [r4, #0x22]
	ldrb r0, [r6, #0xf]
	lsrs r0, r0, #5
	strh r0, [r4, #0x24]
_0800E744:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
