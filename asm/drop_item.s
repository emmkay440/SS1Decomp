	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start DropItem
DropItem: @ 0x0800F470
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	str r0, [sp, #4]
	bl sub_08001F64
	mov r8, r0
	cmp r0, #0
	beq _0800F4FA
	ldr r5, _0800F4D8 @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r6, [r0]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r2, [r0, #0x16]
	mov r0, r8
	adds r1, r6, #0
	add r3, sp, #4
	bl sub_0800FA74
	adds r7, r0, #0
	cmp r7, #0
	beq _0800F4F6
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0800F4DC
	ldr r0, [r7, #0x10]
	ldr r1, [r7]
	asrs r1, r1, #0xc
	ldr r2, [r7, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	b _0800F524
	.align 2, 0
_0800F4D8: .4byte gPlayers
_0800F4DC:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r1, [r7]
	asrs r1, r1, #0xc
	ldr r2, [r7, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	add r3, sp, #4
	bl SpawnFieldItem
	b _0800F52A
_0800F4F6:
	movs r0, #0
	b _0800F52C
_0800F4FA:
	bl GetMultiplayerId
	ldr r4, _0800F538 @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r5, [r0]
	asrs r5, r5, #0xc
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r4, #0x5c
	adds r0, r0, r4
	ldr r2, [r0]
	asrs r2, r2, #0xc
	ldr r0, [r7, #0x10]
	mov r1, r8
	str r1, [sp]
	adds r1, r5, #0
_0800F524:
	add r3, sp, #4
	bl SpawnFieldItem
_0800F52A:
	movs r0, #1
_0800F52C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800F538: .4byte gPlayers
