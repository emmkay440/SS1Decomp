	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080199B4
sub_080199B4: @ 0x080199B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r3, _080199E0 @ =gUnknown_030063D8
	movs r2, #0
_080199C4:
	ldr r0, [r3]
	lsls r1, r6, #1
	adds r0, #0x7a
	adds r0, r0, r1
	strh r2, [r0]
	adds r6, #1
	cmp r6, #4
	bls _080199C4
	movs r0, #0
	mov r8, r0
	movs r1, #1
	mov sb, r1
	b _08019B66
	.align 2, 0
_080199E0: .4byte gUnknown_030063D8
_080199E4:
	bl sub_0800F430
	cmp r0, #0
	bne _080199EE
	b _08019B62
_080199EE:
	bl sub_08001F64
	cmp r0, #0
	bne _080199F8
	b _08019B62
_080199F8:
	movs r6, #0
	ldr r0, [r4]
	adds r0, #0x84
	ldrh r0, [r0]
	mov r3, sb
	ands r0, r3
	mov ip, r4
	cmp r0, #0
	beq _08019A24
	adds r3, r4, #0
	movs r1, #1
_08019A0E:
	adds r6, #1
	cmp r6, #4
	bls _08019A16
	b _08019B20
_08019A16:
	ldr r0, [r3]
	adds r0, #0x84
	ldrh r0, [r0]
	asrs r0, r6
	ands r0, r1
	cmp r0, #0
	bne _08019A0E
_08019A24:
	cmp r6, #4
	bhi _08019B20
	mov r5, ip
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08019B20
	adds r7, r6, #0
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #4
	ldr r1, [r3, #8]
	adds r4, r1, r0
	ldr r5, _08019A54 @ =gPlayers
	movs r6, #0
	movs r3, #1
	add r8, r3
	b _08019B06
	.align 2, 0
_08019A54: .4byte gPlayers
_08019A58:
	ldr r0, _08019B90 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	adds r5, #0xd4
	mov sl, r5
	cmp r1, r0
	bne _08019B02
	ldrh r0, [r2]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r2, r1, #0x17
	ldrh r1, [r4]
	lsrs r0, r0, #7
	subs r1, r1, r0
	cmp r1, #0
	bge _08019A86
	rsbs r1, r1, #0
_08019A86:
	cmp r1, #0xf
	bgt _08019B02
	ldrh r0, [r4, #2]
	subs r0, r0, r2
	cmp r0, #0
	bge _08019A94
	rsbs r0, r0, #0
_08019A94:
	cmp r0, #9
	bgt _08019B02
	movs r2, #0
	ldr r0, _08019B94 @ =gUnknown_030063D8
	ldr r3, [r0]
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r1, [r1]
	mov r5, sb
	ands r1, r5
	mov ip, r0
	cmp r1, #0
	beq _08019AB4
	ldr r0, [r3, #0xc]
	cmp r0, r4
	beq _08019ADA
_08019AB4:
	adds r2, #1
	cmp r2, #4
	bhi _08019ADE
	mov r0, ip
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrh r0, [r0]
	asrs r0, r2
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _08019AB4
	lsls r0, r2, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _08019AB4
_08019ADA:
	cmp r2, #4
	bls _08019B02
_08019ADE:
	mov r5, ip
	ldr r2, [r5]
	lsls r1, r7, #2
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	str r4, [r0]
	adds r2, #0x84
	mov r0, sb
	lsls r0, r7
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	adds r0, r7, #0
	adds r1, r6, #0
	bl StartEnemySpawner
	movs r6, #4
_08019B02:
	adds r6, #1
	mov r5, sl
_08019B06:
	bl sub_08001EC4
	cmp r6, r0
	blo _08019A58
	ldr r1, _08019B94 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0x9e
	mov ip, r1
	ldrh r0, [r0]
	cmp r8, r0
	blo _08019B20
	movs r0, #0
	mov r8, r0
_08019B20:
	mov r1, ip
	ldr r0, [r1]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _08019B62
	movs r3, #0
	movs r6, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r3, r0
	bhs _08019B52
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, _08019B94 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r1, [r0]
_08019B42:
	ldr r0, [r4]
	cmp r0, r5
	bne _08019B4A
	adds r3, #1
_08019B4A:
	adds r6, #1
	adds r4, #0x30
	cmp r6, r1
	blo _08019B42
_08019B52:
	mov r5, ip
	ldr r0, [r5]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r3, r0
	bne _08019B62
	bl ThreadExit
_08019B62:
	bl WaitFrame
_08019B66:
	bl sub_080074CC
	cmp r0, #0
	bne _08019B80
	ldr r4, _08019B94 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019B80
	b _080199E4
_08019B80:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019B90: .4byte gMapLayer_03003910
_08019B94: .4byte gUnknown_030063D8
