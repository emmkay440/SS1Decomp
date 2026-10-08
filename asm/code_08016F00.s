	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08016F00
sub_08016F00: @ 0x08016F00
	push {r4, lr}
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08016F40 @ =gPlayers
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08016F30
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r1, [r0]
	adds r0, #0x2a
	strh r1, [r0]
_08016F30:
	movs r0, #0
	strh r0, [r4, #0xc]
	movs r0, #0x40
	strh r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016F40: .4byte gPlayers

	thumb_func_start sub_08016F44
sub_08016F44: @ 0x08016F44
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r3, #0
	ldr r2, _08016F94 @ =gEnemies
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	cmp r0, r4
	beq _08016F6C
	adds r5, r2, #0
	movs r2, #0
_08016F5A:
	adds r2, #0x94
	adds r3, #1
	cmp r3, #4
	bhi _08016F8E
	ldr r0, [r5]
	adds r1, r0, r2
	ldrh r0, [r1, #2]
	cmp r0, r4
	bne _08016F5A
_08016F6C:
	cmp r3, #4
	bhi _08016F8E
	adds r2, r1, #0
	adds r2, #0x70
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08016F8E
	movs r0, #0
	strh r0, [r2]
_08016F8E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016F94: .4byte gEnemies
