	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802BD2C
sub_0802BD2C: @ 0x0802BD2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	str r1, [sp, #8]
	movs r6, #0xd4
	mov r0, sb
	muls r0, r6, r0
	ldr r5, _0802BDA4 @ =gPlayers
	adds r0, r0, r5
	mov r8, r0
	bl GetMultiplayerId
	mov sl, r0
	mov r0, r8
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r7, r0, #0x1d
	cmp sl, sb
	bne _0802BDF2
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r5, r0, r5
	ldr r1, _0802BDA8 @ =0x080FBB84
	lsls r0, r7, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r7, #0
	beq _0802BD8C
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802BD8C:
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802BDAC
	movs r0, #0
	b _0802BDAE
	.align 2, 0
_0802BDA4: .4byte gPlayers
_0802BDA8: .4byte 0x080FBB84
_0802BDAC:
	adds r0, r1, #1
_0802BDAE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802BDD8
	ldr r0, _0802BDD0 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	mov r2, r8
	strh r4, [r2, #0x12]
	strh r4, [r2, #0x14]
	ldr r0, _0802BDD4 @ =gUnknown_030067F0
	mov r3, sb
	lsls r2, r3, #2
	adds r2, r2, r0
	b _0802BF8E
	.align 2, 0
_0802BDD0: .4byte 0x0009001B
_0802BDD4: .4byte gUnknown_030067F0
_0802BDD8:
	mov r2, r8
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802BDF2
	movs r0, #0
	strh r0, [r2]
_0802BDF2:
	mov r0, r8
	adds r0, #0x72
	ldrh r1, [r0]
	mov r2, sb
	lsls r2, r2, #2
	str r2, [sp, #0x14]
	adds r6, r0, #0
	cmp r1, #1
	bhi _0802BE36
	ldr r0, _0802BF6C @ =gUnknown_030067F0
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #8]
	lsls r0, r3
	mvns r5, r0
_0802BE10:
	mov r1, r8
	ldrh r0, [r1, #0xc]
	cmp r0, #7
	bne _0802BE1A
	b _0802BF62
_0802BE1A:
	ldr r0, _0802BF70 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802BE2C
	b _0802BF62
_0802BE2C:
	bl WaitFrame
	ldrh r0, [r6]
	cmp r0, #1
	bls _0802BE10
_0802BE36:
	cmp sl, sb
	bne _0802BE50
	bl sub_08007544
	cmp r0, #0
	bne _0802BE50
	bl sub_080075AC
	cmp r0, #0
	bne _0802BE50
	movs r0, #0x2f
	bl PlaySE
_0802BE50:
	mov r2, r8
	adds r2, #0xd0
	ldr r1, [r2]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov ip, r0
	movs r6, #0
	movs r5, #0
	str r2, [sp, #0x10]
	movs r2, #0x76
	add r2, r8
	mov sl, r2
	ldr r0, _0802BF74 @ =gActiveEnemyMask
	ldr r2, [r0]
_0802BE76:
	movs r0, #1
	lsls r0, r5
	ands r0, r2
	cmp r0, #0
	beq _0802BED6
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r3, _0802BF78 @ =gEnemies
	ldr r0, [r3]
	adds r3, r0, r1
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _0802BED6
	ldr r0, [r3, #0x10]
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r4, r0, #0x10
	ldr r0, [r3, #0x14]
	mov r3, ip
	subs r0, r0, r3
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	cmp r7, #5
	beq _0802BECA
	lsls r0, r4, #0x10
	asrs r3, r0, #0x13
	cmp r3, #0
	bge _0802BEB4
	rsbs r3, r3, #0
_0802BEB4:
	adds r0, r7, #4
	lsls r4, r0, #1
	cmp r3, r4
	bge _0802BED6
	lsls r0, r1, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802BEC6
	rsbs r0, r0, #0
_0802BEC6:
	cmp r0, r4
	bge _0802BED6
_0802BECA:
	adds r0, r6, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	add r0, sp
	strb r5, [r0]
_0802BED6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0802BE76
	movs r5, #0
	cmp r5, r6
	bhs _0802BF34
	ldr r2, _0802BF78 @ =gEnemies
	lsls r0, r7, #4
	subs r4, r0, r7
_0802BEEC:
	mov r7, sp
	adds r0, r7, r5
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r2]
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x64
	ldrh r1, [r0]
	lsrs r1, r1, #1
	subs r1, #0x19
	subs r1, r4, r1
	ldr r7, [sp, #0x10]
	ldr r0, [r7]
	ldrb r0, [r0, #7]
	lsrs r0, r0, #1
	cmp r1, r0
	ble _0802BF2A
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #2
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r1]
	movs r0, #1
	strh r0, [r3, #0x36]
	mov r0, sb
	strh r0, [r3, #0x34]
_0802BF2A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _0802BEEC
_0802BF34:
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802BF88
	ldr r0, _0802BF6C @ =gUnknown_030067F0
	ldr r2, [sp, #0x14]
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #8]
	lsls r0, r3
	mvns r5, r0
_0802BF4A:
	mov r7, r8
	ldrh r0, [r7, #0xc]
	cmp r0, #7
	beq _0802BF62
	ldr r0, _0802BF70 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802BF7C
_0802BF62:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802BF9A
	.align 2, 0
_0802BF6C: .4byte gUnknown_030067F0
_0802BF70: .4byte gUnknown_030063D8
_0802BF74: .4byte gActiveEnemyMask
_0802BF78: .4byte gEnemies
_0802BF7C:
	bl WaitFrame
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802BF4A
_0802BF88:
	ldr r2, _0802BFAC @ =gUnknown_030067F0
	ldr r3, [sp, #0x14]
	adds r2, r3, r2
_0802BF8E:
	movs r1, #1
	ldr r7, [sp, #8]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802BF9A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BFAC: .4byte gUnknown_030067F0
