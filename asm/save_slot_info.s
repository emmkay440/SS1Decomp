	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start LoadSaveSlotInfo
LoadSaveSlotInfo: @ 0x0802F1F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r7, #0
	movs r0, #0
	mov r8, r0
	ldr r1, _0802F284 @ =gPlayerStats
	mov sb, r1
_0802F20C:
	lsls r4, r7, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x80
	lsls r0, r0, #5
	bl Alloc
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0x80
	lsls r3, r3, #5
	bl ReadSaveSector
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r4, r6, r3
	movs r3, #0
	adds r1, r6, #0
	movs r2, #0
	movs r0, #0x14
	adds r0, r0, r5
	mov sl, r0
	adds r7, #1
	adds r0, r5, #0
	adds r0, #0x38
	str r0, [sp]
_0802F242:
	ldrb r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, #1
	adds r1, #1
	ldr r0, _0802F288 @ =0x0000027B
	cmp r2, r0
	bls _0802F242
	mvns r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4]
	cmp r1, r0
	beq _0802F28C
	adds r0, r6, #0
	bl Free
	mov r1, r8
	strb r1, [r5]
	strb r1, [r5, #1]
	strb r1, [r5, #2]
	strb r1, [r5, #4]
	mov r3, r8
	strh r3, [r5, #8]
	strh r3, [r5, #0xa]
	strh r3, [r5, #0xc]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x10]
	strh r3, [r5, #0x12]
	movs r2, #0
	b _0802F338
	.align 2, 0
_0802F284: .4byte gPlayerStats
_0802F288: .4byte 0x0000027B
_0802F28C:
	mov r0, sb
	adds r1, r6, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	bl memcpy
	adds r0, r6, #0
	bl Free
	movs r0, #1
	strb r0, [r5]
	mov r0, sb
	ldrh r1, [r0, #0x20]
	lsrs r0, r1, #2
	strb r0, [r5, #1]
	movs r0, #3
	ands r0, r1
	strb r0, [r5, #2]
	mov r1, sb
	ldr r0, [r1, #0x38]
	strb r0, [r5, #3]
	movs r0, #0x9c
	lsls r0, r0, #2
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	movs r3, #1
	ands r0, r3
	strb r0, [r5, #5]
	bl sub_0801702C
	strb r0, [r5, #6]
	bl sub_0801705C
	strb r0, [r5, #7]
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	ldr r3, _0802F334 @ =gPlayers
	adds r0, r0, r3
	bl sub_0801574C
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	ldr r3, _0802F334 @ =gPlayers
	adds r0, r0, r3
	bl sub_08016270
	bl sub_08016DC0
	mov r1, sb
	ldrh r0, [r1, #0x24]
	strh r0, [r5, #8]
	ldrh r0, [r1, #0x26]
	strh r0, [r5, #0xa]
	ldrh r0, [r1, #0x28]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x2a]
	strh r0, [r5, #0xe]
	bl GetMultiplayerId
	movs r3, #0xd4
	muls r0, r3, r0
	ldr r1, _0802F334 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0x48
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	bl GetMultiplayerId
	movs r3, #0xd4
	muls r0, r3, r0
	ldr r1, _0802F334 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r5, #0x12]
	movs r2, #0
	b _0802F348
	.align 2, 0
_0802F334: .4byte gPlayers
_0802F338:
	lsls r0, r2, #1
	add r0, sl
	mov r3, r8
	strh r3, [r0]
	adds r2, #1
	cmp r2, #0xf
	bls _0802F338
	b _0802F35A
_0802F348:
	lsls r0, r2, #1
	mov r3, sl
	adds r1, r3, r0
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r1]
	adds r2, #1
	cmp r2, #0xf
	bls _0802F348
_0802F35A:
	ldr r5, [sp]
	cmp r7, #7
	bhi _0802F362
	b _0802F20C
_0802F362:
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
