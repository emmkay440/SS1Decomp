	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start SpawnEnemy
SpawnEnemy: @ 0x0800C504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	movs r1, #0
	ldr r3, _0800C53C @ =gActiveEnemyMask
	movs r4, #1
	ldr r2, [r3]
_0800C51A:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0800C540
	adds r1, #1
	cmp r1, #4
	ble _0800C51A
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
_0800C530:
	ldr r1, [sp]
	cmp r1, #0
	bge _0800C544
	movs r0, #0
	b _0800C6FA
	.align 2, 0
_0800C53C: .4byte gActiveEnemyMask
_0800C540:
	str r1, [sp]
	b _0800C530
_0800C544:
	movs r1, #1
	ldr r2, [sp]
	lsls r1, r2
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	ldr r2, _0800C62C @ =gEnemies
	movs r0, #0x94
	ldr r3, [sp]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	mov r4, sb
	ldrb r5, [r4, #8]
	subs r4, r5, #1
	bl sub_080076A8
	cmp r0, #0
	beq _0800C56E
	adds r4, #0x47
_0800C56E:
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	movs r1, #0
	mov sl, r1
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r7]
	mov r3, sb
	ldr r1, [r3, #0xc]
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x18
	strh r1, [r7, #2]
	ldr r1, [r3, #8]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	lsls r1, r1, #0xc
	str r1, [r7, #0x10]
	ldrh r1, [r3, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	str r1, [r7, #0x14]
	ldr r1, [r3, #8]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	lsls r1, r1, #0xc
	str r1, [r7, #0x18]
	ldrh r1, [r3, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	str r1, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x64
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r4}
	stm r1!, {r2, r4}
	bl sub_08001EC4
	adds r4, r0, #0
	subs r4, #1
	lsls r4, r4, #0x10
	adds r6, r7, #0
	adds r6, #0x6e
	ldrh r5, [r6]
	ldr r3, _0800C630 @ =0x080FB740
	mov r8, r3
	lsrs r4, r4, #0xe
	mov r0, r8
	adds r0, #2
	adds r0, r4, r0
	ldrh r0, [r0]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r5, r0
	strh r5, [r6]
	adds r6, #4
	ldrh r5, [r6]
	add r4, r8
	ldrh r0, [r4]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r5, r0
	strh r5, [r6]
	mov r4, sb
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	cmp r0, #0x14
	ble _0800C638
	mov r0, sl
	strh r0, [r7, #0x28]
	mov r1, sl
	str r1, [r7, #0x30]
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x17
	strh r0, [r7, #0x28]
	ldr r0, _0800C634 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	b _0800C648
	.align 2, 0
_0800C62C: .4byte gEnemies
_0800C630: .4byte 0x080FB740
_0800C634: .4byte gMapLayer_03003910
_0800C638:
	strh r0, [r7, #0x26]
	mov r2, sl
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	strh r2, [r7, #0x2a]
	mov r3, sl
	str r3, [r7, #0x30]
_0800C648:
	mov r4, sb
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	movs r4, #0
	strh r0, [r7, #8]
	strh r4, [r7, #0x36]
	strh r4, [r7, #0x3e]
	adds r0, r7, #0
	adds r0, #0x40
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldrh r0, [r6]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	ldr r1, [sp]
	lsls r0, r1, #0x18
	str r0, [r7, #0x2c]
	str r4, [r7, #0x54]
	str r4, [r7, #0x58]
	str r4, [r7, #0x5c]
	str r4, [r7, #0x60]
	strh r4, [r7, #0x3c]
	strh r4, [r7, #0x20]
	ldrh r0, [r7]
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x50
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r3, _0800C70C @ =gPlayers
	ldrh r1, [r7]
	lsls r1, r1, #1
	movs r2, #0xd4
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0xae
	adds r1, r1, r3
	ldr r0, _0800C710 @ =0x0000FFFF
	strh r0, [r1]
	ldr r5, _0800C714 @ =gEnemyThreads
	ldr r2, [sp]
	lsls r3, r2, #2
	adds r3, r3, r2
	lsls r3, r3, #3
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, _0800C718 @ =EnemyThread
	str r1, [r0]
	adds r2, r5, #0
	adds r2, #0x10
	adds r2, r3, r2
	ldr r1, [sp]
	lsls r0, r1, #0xa
	ldr r1, _0800C71C @ =0x03004D9C
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r5, #0
	adds r0, #0x20
	adds r0, r3, r0
	str r4, [r0]
	adds r0, r5, #0
	adds r0, #8
	adds r0, r3, r0
	movs r1, #0x3c
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x18
	adds r0, r3, r0
	str r4, [r0]
	adds r0, r3, r5
	str r4, [r0]
	adds r1, r5, #0
	adds r1, #0x24
	adds r3, r3, r1
	str r4, [r3]
	adds r1, r7, #0
	bl CreateThread
	movs r0, #1
_0800C6FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C70C: .4byte gPlayers
_0800C710: .4byte 0x0000FFFF
_0800C714: .4byte gEnemyThreads
_0800C718: .4byte EnemyThread
_0800C71C: .4byte 0x03004D9C
