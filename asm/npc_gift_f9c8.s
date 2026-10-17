	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801F9C8
sub_0801F9C8: @ 0x0801F9C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	ldr r0, _0801FA48 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r4, sp
	adds r4, #0x39
	mov r5, sp
	adds r5, #0x3a
	mov r3, sp
	adds r3, #0x4a
	str r3, [sp, #0x64]
	add r3, sp, #0x48
	mov sb, r3
	cmp r2, r0
	bhs _0801FA10
	adds r3, r0, #0
_0801F9FC:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801FA08
	ldr r0, [r1, #4]
	adds r0, r0, r1
	mov sl, r0
_0801FA08:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _0801F9FC
_0801FA10:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801FA4C @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x50]
	ldr r1, _0801FA50 @ =0x00100015
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08026ADC
	movs r1, #0
	movs r0, #0xe
	strb r0, [r4]
	movs r0, #8
	strb r0, [r5]
	ldr r0, [sp, #0x64]
	strh r1, [r0]
	mov r2, sb
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x5c]
	movs r0, #5
	str r0, [sp, #0x60]
	b _0801FE00
	.align 2, 0
_0801FA48: .4byte 0x080FB0F8
_0801FA4C: .4byte gPlayers
_0801FA50: .4byte 0x00100015
_0801FA54:
	bl sub_08007544
	cmp r0, #0
	bne _0801FA62
	ldr r0, _0801FA8C @ =0x000514C9
	bl _08000400
_0801FA62:
	ldr r1, [sp, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	ldr r3, [sp, #0x5c]
	cmp r3, #6
	bls _0801FA82
	b _0801FC3C
_0801FA82:
	lsls r0, r3, #2
	ldr r1, _0801FA90 @ =_0801FA94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801FA8C: .4byte 0x000514C9
_0801FA90: .4byte _0801FA94
_0801FA94: @ jump table
	.4byte _0801FAB0 @ case 0
	.4byte _0801FB08 @ case 1
	.4byte _0801FB40 @ case 2
	.4byte _0801FC3C @ case 3
	.4byte _0801FC3C @ case 4
	.4byte _0801FBDC @ case 5
	.4byte _0801FC16 @ case 6
_0801FAB0:
	ldr r1, [sp, #0x50]
	ldr r0, [r1, #0x58]
	asrs r0, r0, #0xf
	mov r2, sl
	adds r2, #0x70
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bge _0801FAC6
	rsbs r0, r0, #0
_0801FAC6:
	mov r6, sl
	adds r6, #0x72
	cmp r0, #2
	ble _0801FAD0
	b _0801FC3C
_0801FAD0:
	ldr r2, [sp, #0x50]
	ldr r0, [r2, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801FAE0
	rsbs r0, r0, #0
_0801FAE0:
	cmp r0, #2
	ble _0801FAE6
	b _0801FC3C
_0801FAE6:
	ldr r3, [sp, #0x50]
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801FAF4
	b _0801FC3C
_0801FAF4:
	movs r0, #0
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldrh r1, [r3, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r3, #0x10]
	movs r0, #1
	str r0, [sp, #0x5c]
	b _0801FC3C
_0801FB08:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801FB3C @ =0x000900B2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	movs r1, #2
	str r1, [sp, #0x5c]
	movs r2, #3
	str r2, [sp, #0x60]
	movs r0, #0
	ldr r3, [sp, #0x64]
	strh r0, [r3]
	mov r1, sb
	strh r0, [r1]
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	b _0801FC3C
	.align 2, 0
_0801FB3C: .4byte 0x000900B2
_0801FB40:
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	cmp r0, #0
	beq _0801FC3C
	ldr r2, _0801FBA4 @ =gPlayerStats
	ldr r3, _0801FBA8 @ =0x00000275
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
	movs r0, #0xc2
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
	movs r0, #5
	str r0, [sp, #0x5c]
	add r0, sp, #0x4c
	bl AddItemToInventory
	cmp r0, #0
	beq _0801FBB4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801FBAC @ =0x000900B3
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	ldr r1, _0801FBB0 @ =0x000900AA
	str r1, [sp, #0x54]
	movs r0, #0x26
	bl PlaySE
	b _0801FC3C
	.align 2, 0
_0801FBA4: .4byte gPlayerStats
_0801FBA8: .4byte 0x00000275
_0801FBAC: .4byte 0x000900B3
_0801FBB0: .4byte 0x000900AA
_0801FBB4:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801FBD4 @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	ldr r2, _0801FBD8 @ =0x000900A0
	str r2, [sp, #0x54]
	b _0801FC3C
	.align 2, 0
_0801FBD4: .4byte 0x0009009F
_0801FBD8: .4byte 0x000900A0
_0801FBDC:
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	cmp r0, #0
	beq _0801FC3C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x54]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	movs r0, #6
	str r0, [sp, #0x5c]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	b _0801FC3C
_0801FC16:
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	cmp r0, #0
	beq _0801FC3C
	movs r3, #2
	str r3, [sp, #0x60]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	ldr r3, [sp, #0x5c]
	adds r3, #1
	str r3, [sp, #0x5c]
_0801FC3C:
	ldrh r0, [r7]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldrh r0, [r7]
	lsls r0, r0, #3
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08007510
	adds r7, r4, #0
	mov r8, r5
	cmp r0, #0
	beq _0801FC80
	b _0801FDFC
_0801FC80:
	ldr r3, [sp, #0x60]
	cmp r3, #5
	bls _0801FC88
	b _0801FDFC
_0801FC88:
	lsls r0, r3, #2
	ldr r1, _0801FC94 @ =_0801FC98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801FC94: .4byte _0801FC98
_0801FC98: @ jump table
	.4byte _0801FDEC @ case 0
	.4byte _0801FCB0 @ case 1
	.4byte _0801FCE4 @ case 2
	.4byte _0801FD4A @ case 3
	.4byte _0801FDFC @ case 4
	.4byte _0801FDB8 @ case 5
_0801FCB0:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #5
	mov r2, sb
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sb
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _0801FDFC
_0801FCE4:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, sb
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	cmp r0, #0
	beq _0801FCFC
	movs r3, #0
	str r3, [sp, #0x60]
_0801FCFC:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	mov r2, sb
	ldrh r3, [r2]
	adds r5, r6, #0
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
	b _0801FDFC
_0801FD4A:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	mov r2, sb
	ldrh r3, [r2]
	adds r5, r6, #0
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
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, sb
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	cmp r0, #0
	beq _0801FDFC
	movs r0, #1
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	strh r4, [r1]
	mov r2, sb
	strh r4, [r2]
	b _0801FDFC
_0801FDB8:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #4
	mov r2, sb
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sb
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #4
	bl sub_08004344
	b _0801FDFC
_0801FDEC:
	ldr r3, [sp, #0x50]
	ldrh r1, [r3, #0x10]
	ldr r0, _0801FDF8 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3, #0x10]
	b _0801FE0A
	.align 2, 0
_0801FDF8: .4byte 0x0000FFFE
_0801FDFC:
	bl WaitFrame
_0801FE00:
	bl sub_080074CC
	cmp r0, #0
	bne _0801FE0A
	b _0801FA54
_0801FE0A:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
