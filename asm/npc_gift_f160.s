	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801F160
sub_0801F160: @ 0x0801F160
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	ldr r0, _0801F1E0 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r4, sp
	adds r4, #0x3a
	mov r5, sp
	adds r5, #0x39
	mov r3, sp
	adds r3, #0x4a
	str r3, [sp, #0x64]
	subs r3, #2
	str r3, [sp, #0x60]
	cmp r2, r0
	bhs _0801F1A8
	adds r3, r0, #0
_0801F194:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801F1A0
	ldr r0, [r1, #4]
	adds r0, r0, r1
	mov sb, r0
_0801F1A0:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _0801F194
_0801F1A8:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801F1E4 @ =gPlayers
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _0801F1E8 @ =0x00100015
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08026ADC
	movs r1, #0
	movs r0, #8
	strb r0, [r4]
	movs r0, #0xe
	strb r0, [r5]
	ldr r0, [sp, #0x64]
	strh r1, [r0]
	ldr r2, [sp, #0x60]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x58]
	movs r0, #1
	str r0, [sp, #0x5c]
	b _0801F4C0
	.align 2, 0
_0801F1E0: .4byte 0x080FB0F8
_0801F1E4: .4byte gPlayers
_0801F1E8: .4byte 0x00100015
_0801F1EC:
	bl sub_08007544
	cmp r0, #0
	bne _0801F1FA
	ldr r0, _0801F224 @ =0x000514C9
	bl _08000400
_0801F1FA:
	ldr r1, [sp, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	ldr r3, [sp, #0x58]
	cmp r3, #6
	bls _0801F21A
	b _0801F3C4
_0801F21A:
	lsls r0, r3, #2
	ldr r1, _0801F228 @ =_0801F22C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F224: .4byte 0x000514C9
_0801F228: .4byte _0801F22C
_0801F22C: @ jump table
	.4byte _0801F248 @ case 0
	.4byte _0801F2A0 @ case 1
	.4byte _0801F2CC @ case 2
	.4byte _0801F3C4 @ case 3
	.4byte _0801F3C4 @ case 4
	.4byte _0801F364 @ case 5
	.4byte _0801F39E @ case 6
_0801F248:
	mov r1, sl
	ldr r0, [r1, #0x58]
	asrs r0, r0, #0xf
	mov r2, sb
	adds r2, #0x58
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bge _0801F25E
	rsbs r0, r0, #0
_0801F25E:
	mov r4, sb
	adds r4, #0x5a
	cmp r0, #1
	ble _0801F268
	b _0801F3C4
_0801F268:
	mov r2, sl
	ldr r0, [r2, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r4]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801F278
	rsbs r0, r0, #0
_0801F278:
	cmp r0, #1
	ble _0801F27E
	b _0801F3C4
_0801F27E:
	mov r3, sl
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801F28C
	b _0801F3C4
_0801F28C:
	movs r0, #0
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldrh r1, [r3, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r3, #0x10]
	movs r0, #1
	str r0, [sp, #0x58]
	b _0801F3C4
_0801F2A0:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F2C8 @ =0x0009009C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	movs r1, #2
	str r1, [sp, #0x58]
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	b _0801F3C4
	.align 2, 0
_0801F2C8: .4byte 0x0009009C
_0801F2CC:
	ldr r0, [sp, #0x54]
	bl sub_0802294C
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	cmp r0, #0
	beq _0801F3C4
	ldr r2, _0801F32C @ =gPlayerStats
	ldr r3, _0801F330 @ =0x00000275
	adds r2, r2, r3
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x10
	str r0, [sp, #0x4c]
	movs r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x4c
	bl AddItemToInventory
	cmp r0, #0
	beq _0801F33C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F334 @ =0x0009009D
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	ldr r1, _0801F338 @ =0x0009009E
	str r1, [sp, #0x50]
	movs r0, #0x26
	bl PlaySE
	b _0801F3C4
	.align 2, 0
_0801F32C: .4byte gPlayerStats
_0801F330: .4byte 0x00000275
_0801F334: .4byte 0x0009009D
_0801F338: .4byte 0x0009009E
_0801F33C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F35C @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	ldr r2, _0801F360 @ =0x000900A0
	str r2, [sp, #0x50]
	b _0801F3C4
	.align 2, 0
_0801F35C: .4byte 0x0009009F
_0801F360: .4byte 0x000900A0
_0801F364:
	ldr r0, [sp, #0x54]
	bl sub_0802294C
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	cmp r0, #0
	beq _0801F3C4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x50]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	movs r0, #6
	str r0, [sp, #0x58]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	ldr r2, [sp, #0x60]
	strh r0, [r2]
	b _0801F3C4
_0801F39E:
	ldr r0, [sp, #0x54]
	bl sub_0802294C
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	cmp r0, #0
	beq _0801F3C4
	movs r3, #2
	str r3, [sp, #0x5c]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	ldr r2, [sp, #0x60]
	strh r0, [r2]
	ldr r3, [sp, #0x58]
	adds r3, #1
	str r3, [sp, #0x58]
_0801F3C4:
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r7, sp, #0x44
	movs r3, #0x46
	add r3, sp
	mov r8, r3
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r7, #0
	bl sub_08005FC4
	ldrh r0, [r5]
	lsls r0, r0, #3
	ldrh r1, [r4]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl sub_08007510
	cmp r0, #0
	bne _0801F4BC
	ldr r1, [sp, #0x5c]
	cmp r1, #1
	beq _0801F414
	cmp r1, #1
	blo _0801F4AA
	cmp r1, #2
	beq _0801F448
	b _0801F4BC
_0801F414:
	ldr r2, [sp, #0x5c]
	str r2, [sp]
	add r0, sp, #0x10
	movs r1, #0
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [sp, #0x60]
	ldrh r3, [r2]
	str r5, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _0801F4BC
_0801F448:
	ldr r2, [sp, #0x60]
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	cmp r0, #0
	beq _0801F45E
	movs r3, #0
	str r3, [sp, #0x5c]
_0801F45E:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [sp, #0x60]
	ldrh r3, [r2]
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	adds r6, r0, #0
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r0, [r6, #0xc]
	subs r0, #9
	str r0, [r6, #0xc]
	b _0801F4BC
_0801F4AA:
	mov r0, sl
	ldrh r1, [r0, #0x10]
	ldr r0, _0801F4B8 @ =0x0000FFFE
	ands r0, r1
	mov r1, sl
	strh r0, [r1, #0x10]
	b _0801F4CA
	.align 2, 0
_0801F4B8: .4byte 0x0000FFFE
_0801F4BC:
	bl WaitFrame
_0801F4C0:
	bl sub_080074CC
	cmp r0, #0
	bne _0801F4CA
	b _0801F1EC
_0801F4CA:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
