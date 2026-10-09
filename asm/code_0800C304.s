	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800C304
sub_0800C304: @ 0x0800C304
	push {r4, r5, lr}
	sub sp, #0x18
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0800C36C @ =gPlayers
	adds r4, r1, r0
	mov r1, sp
	ldr r0, _0800C370 @ =0x08052BC4
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldrh r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C352
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	bne _0800C352
	lsls r0, r1, #2
	mov r1, sp
	adds r5, r1, r0
_0800C338:
	ldr r0, [r5]
	bl sub_0800B78C
	bl WaitFrame
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C352
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	beq _0800C338
_0800C352:
	ldrh r0, [r4, #0xc]
	cmp r0, #7
	beq _0800C35C
	movs r0, #0
	strh r0, [r4, #0xc]
_0800C35C:
	movs r0, #0
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C36C: .4byte gPlayers
_0800C370: .4byte 0x08052BC4

	thumb_func_start sub_0800C374
sub_0800C374: @ 0x0800C374
	push {r4, r5, lr}
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0800C3BC @ =gPlayers
	adds r4, r1, r0
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800C3A4
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	bne _0800C3A4
	adds r5, r1, #0
_0800C394:
	bl WaitFrame
	ldrh r0, [r5]
	cmp r0, #0
	bne _0800C3A4
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	beq _0800C394
_0800C3A4:
	ldrh r0, [r4, #0xc]
	cmp r0, #7
	beq _0800C3AE
	movs r0, #0
	strh r0, [r4, #0xc]
_0800C3AE:
	movs r0, #0
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C3BC: .4byte gPlayers

	thumb_func_start sub_0800C3C0
sub_0800C3C0: @ 0x0800C3C0
	push {r4, r5, r6, r7, lr}
	ldr r5, _0800C450 @ =gEnemies
	movs r0, #0xb9
	lsls r0, r0, #2
	bl Alloc
	str r0, [r5]
	ldr r0, _0800C454 @ =gActiveEnemyMask
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800C458 @ =0x03005DD8
	strh r1, [r0]
	ldr r0, _0800C45C @ =gUnknown_03005DD4
	strh r1, [r0]
	ldr r4, _0800C460 @ =gUnknown_03004998
	movs r0, #0x80
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
	ldr r4, _0800C464 @ =gUnknown_03005DA0
	movs r0, #0xa0
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4]
	ldr r6, [r5]
	movs r7, #0
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0x64
_0800C3FE:
	adds r0, r7, #0
	bl sub_0802F0B8
	strh r5, [r6]
	strh r5, [r6, #8]
	strh r5, [r6, #0xa]
	strh r5, [r6, #0xc]
	str r5, [r6, #0x10]
	str r5, [r6, #0x14]
	strh r5, [r6, #0x28]
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	str r5, [r4, #0x28]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	adds r7, #1
	adds r4, #0x94
	adds r6, #0x94
	cmp r7, #4
	bls _0800C3FE
	movs r7, #0
	movs r1, #0
	ldr r0, _0800C468 @ =0x03005DB0
_0800C43C:
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0]
	adds r0, #0xc
	adds r7, #1
	cmp r7, #2
	bls _0800C43C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C450: .4byte gEnemies
_0800C454: .4byte gActiveEnemyMask
_0800C458: .4byte 0x03005DD8
_0800C45C: .4byte gUnknown_03005DD4
_0800C460: .4byte gUnknown_03004998
_0800C464: .4byte gUnknown_03005DA0
_0800C468: .4byte 0x03005DB0
