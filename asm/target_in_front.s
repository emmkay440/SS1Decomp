	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802C174
sub_0802C174: @ 0x0802C174
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0802C230 @ =gPlayers
	adds r1, r1, r0
	mov ip, r1
	ldr r5, _0802C234 @ =0x0000FFFF
	movs r6, #1
	rsbs r6, r6, #0
	movs r4, #0
	ldr r0, _0802C238 @ =gActiveEnemyMask
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _0802C23C @ =0x080FB9FC
	mov sl, r0
	ldr r1, _0802C240 @ =0x00007FFF
	mov sb, r1
_0802C1AA:
	movs r0, #1
	lsls r0, r4
	ldr r2, [sp]
	ands r0, r2
	cmp r0, #0
	beq _0802C212
	lsls r3, r4, #1
	mov r1, ip
	adds r1, #0xb8
	adds r1, r1, r3
	mov r7, ip
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	add r0, sl
	ldrh r1, [r1]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #8
	ble _0802C1DE
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802C1DE:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r7, #8
	rsbs r7, r7, #0
	cmp r0, r7
	bge _0802C1F0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802C1F0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802C1FA
	rsbs r0, r0, #0
_0802C1FA:
	cmp r0, r8
	bgt _0802C212
	mov r0, ip
	adds r0, #0xae
	adds r0, r0, r3
	ldrh r1, [r0]
	cmp r5, r1
	bls _0802C212
	cmp r1, sb
	beq _0802C212
	adds r5, r1, #0
	adds r6, r4, #0
_0802C212:
	adds r4, #1
	cmp r4, #4
	bls _0802C1AA
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0802C248
	ldr r2, _0802C244 @ =gEnemies
	movs r0, #0x94
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	b _0802C24A
	.align 2, 0
_0802C230: .4byte gPlayers
_0802C234: .4byte 0x0000FFFF
_0802C238: .4byte gActiveEnemyMask
_0802C23C: .4byte 0x080FB9FC
_0802C240: .4byte 0x00007FFF
_0802C244: .4byte gEnemies
_0802C248:
	movs r0, #0
_0802C24A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
