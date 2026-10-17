	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08020ADC
sub_08020ADC: @ 0x08020ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	ldr r0, _08020B90 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r7, sp
	adds r7, #0x3a
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0xac]
	mov r4, sp
	adds r4, #0x6d
	str r4, [sp, #0x98]
	subs r3, #0xb
	str r3, [sp, #0xa8]
	adds r4, #0x11
	str r4, [sp, #0x9c]
	add r3, sp, #0x7c
	mov r8, r3
	adds r4, #4
	str r4, [sp, #0xa4]
	mov r3, sp
	adds r3, #0x80
	str r3, [sp, #0xa0]
	cmp r2, r0
	bhs _08020B38
	adds r3, r0, #0
_08020B24:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08020B30
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x88]
_08020B30:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _08020B24
_08020B38:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08020B94 @ =gPlayers
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _08020B98 @ =0x00100015
	movs r6, #1
	rsbs r6, r6, #0
	add r0, sp, #0x10
	movs r2, #0xd
	adds r3, r6, #0
	bl sub_08026ADC
	movs r4, #0
	movs r5, #8
	strb r5, [r7]
	ldr r1, _08020B9C @ =0x00100012
	ldr r0, [sp, #0xac]
	movs r2, #0xd
	adds r3, r6, #0
	bl sub_08026ADC
	movs r0, #0xe
	ldr r1, [sp, #0x98]
	strb r0, [r1]
	ldr r2, [sp, #0xa8]
	strb r0, [r2]
	strb r5, [r7]
	ldr r3, [sp, #0x9c]
	strh r4, [r3]
	mov r0, r8
	strh r4, [r0]
	ldr r1, [sp, #0xa4]
	strh r4, [r1]
	ldr r2, [sp, #0xa0]
	strh r4, [r2]
	movs r3, #0
	str r3, [sp, #0x90]
	movs r4, #5
	str r4, [sp, #0x94]
	b _08020F08
	.align 2, 0
_08020B90: .4byte 0x080FB0F8
_08020B94: .4byte gPlayers
_08020B98: .4byte 0x00100015
_08020B9C: .4byte 0x00100012
_08020BA0:
	bl sub_08007544
	cmp r0, #0
	bne _08020BAE
	ldr r0, _08020BD4 @ =0x000514C9
	bl _08000400
_08020BAE:
	ldr r1, [sp, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	ldr r1, [sp, #0x90]
	cmp r1, #6
	bls _08020BCA
	b _08020D66
_08020BCA:
	lsls r0, r1, #2
	ldr r1, _08020BD8 @ =_08020BDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020BD4: .4byte 0x000514C9
_08020BD8: .4byte _08020BDC
_08020BDC: @ jump table
	.4byte _08020BF8 @ case 0
	.4byte _08020C4C @ case 1
	.4byte _08020C80 @ case 2
	.4byte _08020D66 @ case 3
	.4byte _08020D66 @ case 4
	.4byte _08020D18 @ case 5
	.4byte _08020D4E @ case 6
_08020BF8:
	mov r2, sb
	ldr r0, [r2, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x88]
	adds r2, #0x80
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bge _08020C0E
	rsbs r0, r0, #0
_08020C0E:
	cmp r0, #2
	ble _08020C14
	b _08020D66
_08020C14:
	mov r3, sb
	ldr r0, [r3, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08020C24
	rsbs r0, r0, #0
_08020C24:
	cmp r0, #2
	ble _08020C2A
	b _08020D66
_08020C2A:
	mov r4, sb
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #6]
	ands r0, r1
	cmp r0, #0
	bne _08020C38
	b _08020D66
_08020C38:
	movs r0, #0
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrh r1, [r4, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0x10]
	movs r0, #1
	str r0, [sp, #0x90]
	b _08020D66
_08020C4C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020C7C @ =0x000900B2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	movs r1, #2
	str r1, [sp, #0x90]
	movs r2, #3
	str r2, [sp, #0x94]
	movs r0, #0
	ldr r3, [sp, #0x9c]
	strh r0, [r3]
	mov r4, r8
	strh r0, [r4]
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	b _08020D66
	.align 2, 0
_08020C7C: .4byte 0x000900B2
_08020C80:
	mov r0, sl
	bl sub_0802294C
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	cmp r0, #0
	beq _08020D66
	ldr r2, _08020CE0 @ =gPlayerStats
	ldr r0, _08020CE4 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xdb
	lsls r0, r0, #4
	str r0, [sp, #0x84]
	movs r1, #5
	str r1, [sp, #0x90]
	add r0, sp, #0x84
	bl AddItemToInventory
	cmp r0, #0
	beq _08020CF0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020CE8 @ =0x000900CD
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	ldr r2, _08020CEC @ =0x000900AA
	str r2, [sp, #0x8c]
	movs r0, #0x26
	bl PlaySE
	b _08020D66
	.align 2, 0
_08020CE0: .4byte gPlayerStats
_08020CE4: .4byte 0x00000275
_08020CE8: .4byte 0x000900CD
_08020CEC: .4byte 0x000900AA
_08020CF0:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020D10 @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	ldr r3, _08020D14 @ =0x000900A0
	str r3, [sp, #0x8c]
	b _08020D66
	.align 2, 0
_08020D10: .4byte 0x0009009F
_08020D14: .4byte 0x000900A0
_08020D18:
	mov r0, sl
	bl sub_0802294C
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	cmp r0, #0
	beq _08020D66
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r4, [sp, #0x8c]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	movs r0, #6
	str r0, [sp, #0x90]
	movs r0, #0
	ldr r1, [sp, #0x9c]
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	b _08020D66
_08020D4E:
	mov r0, sl
	bl sub_0802294C
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	cmp r0, #0
	beq _08020D66
	movs r3, #2
	str r3, [sp, #0x94]
	ldr r4, [sp, #0x90]
	adds r4, #1
	str r4, [sp, #0x90]
_08020D66:
	ldrh r0, [r6]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldrh r0, [r6]
	lsls r0, r0, #3
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08007510
	adds r7, r4, #0
	cmp r0, #0
	beq _08020DA6
	b _08020F04
_08020DA6:
	ldr r0, [sp, #0x94]
	cmp r0, #5
	bls _08020DAE
	b _08020F04
_08020DAE:
	lsls r0, r0, #2
	ldr r1, _08020DB8 @ =_08020DBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020DB8: .4byte _08020DBC
_08020DBC: @ jump table
	.4byte _08020EF0 @ case 0
	.4byte _08020DD4 @ case 1
	.4byte _08020DFE @ case 2
	.4byte _08020E56 @ case 3
	.4byte _08020F04 @ case 4
	.4byte _08020EBC @ case 5
_08020DD4:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	mov r2, r8
	ldr r3, [sp, #0x9c]
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r4, r8
	ldrh r3, [r4]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	b _08020EE6
_08020DFE:
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, r8
	ldr r3, [sp, #0x9c]
	bl sub_08026C40
	cmp r0, #0
	beq _08020E16
	movs r0, #0
	str r0, [sp, #0x94]
_08020E16:
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #8
	mov r2, r8
	ldrh r3, [r2]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	str r6, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	b _08020F04
_08020E56:
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	subs r1, #8
	mov r2, r8
	ldrh r3, [r2]
	movs r4, #0
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r3, [sp, #0xac]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, r8
	ldr r3, [sp, #0x9c]
	bl sub_08026C40
	cmp r0, #0
	beq _08020F04
	movs r0, #1
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x9c]
	strh r4, [r1]
	mov r2, r8
	strh r4, [r2]
	b _08020F04
_08020EBC:
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xac]
	movs r1, #6
	ldr r2, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r2, r8
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r4, [sp, #0xac]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
_08020EE6:
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _08020F04
_08020EF0:
	mov r0, sb
	ldrh r1, [r0, #0x10]
	ldr r0, _08020F00 @ =0x0000FFFE
	ands r0, r1
	mov r1, sb
	strh r0, [r1, #0x10]
	b _08020F12
	.align 2, 0
_08020F00: .4byte 0x0000FFFE
_08020F04:
	bl WaitFrame
_08020F08:
	bl sub_080074CC
	cmp r0, #0
	bne _08020F12
	b _08020BA0
_08020F12:
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
