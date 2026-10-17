	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801F4DC
sub_0801F4DC: @ 0x0801F4DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	ldr r0, _0801F564 @ =0x080FB0F8
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
	str r3, [sp, #0x7c]
	subs r3, #2
	str r3, [sp, #0x78]
	cmp r2, r0
	bhs _0801F524
	adds r3, r0, #0
_0801F510:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801F51C
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x58]
_0801F51C:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _0801F510
_0801F524:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801F568 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	ldr r1, _0801F56C @ =0x00100015
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
	ldr r0, [sp, #0x7c]
	strh r1, [r0]
	ldr r2, [sp, #0x78]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x68]
	movs r0, #1
	str r0, [sp, #0x6c]
	str r1, [sp, #0x74]
	movs r2, #0
	str r2, [sp, #0x70]
	b _0801F9AC
	.align 2, 0
_0801F564: .4byte 0x080FB0F8
_0801F568: .4byte gPlayers
_0801F56C: .4byte 0x00100015
_0801F570:
	bl sub_08007544
	cmp r0, #0
	bne _0801F57E
	ldr r0, _0801F5A0 @ =0x000514C9
	bl _08000400
_0801F57E:
	ldr r1, [sp, #0x1c]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r0, [sp, #0x68]
	cmp r0, #6
	bls _0801F596
	b _0801F7A2
_0801F596:
	lsls r0, r0, #2
	ldr r1, _0801F5A4 @ =_0801F5A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F5A0: .4byte 0x000514C9
_0801F5A4: .4byte _0801F5A8
_0801F5A8: @ jump table
	.4byte _0801F5C4 @ case 0
	.4byte _0801F6A8 @ case 1
	.4byte _0801F6CC @ case 2
	.4byte _0801F7A2 @ case 3
	.4byte _0801F7A2 @ case 4
	.4byte _0801F75C @ case 5
	.4byte _0801F78E @ case 6
_0801F5C4:
	ldr r1, [sp, #0x74]
	adds r1, #1
	str r1, [sp, #0x74]
	cmp r1, #0x3b
	bls _0801F5D8
	ldr r2, [sp, #0x70]
	adds r2, #1
	str r2, [sp, #0x70]
	movs r3, #0
	str r3, [sp, #0x74]
_0801F5D8:
	ldr r0, [sp, #0x70]
	cmp r0, #3
	bhi _0801F624
	add r1, sp, #0x4c
	mov sl, r1
	lsls r4, r0, #2
	ldr r2, [sp, #0x58]
	adds r4, r4, r2
	movs r3, #0x5c
	adds r3, r3, r4
	mov sb, r3
	ldrh r6, [r3]
	lsls r6, r6, #3
	adds r4, #0x60
	ldrh r5, [r4]
	lsls r5, r5, #3
	ldr r1, [sp, #0x74]
	lsls r0, r1, #0xa
	movs r1, #0x3c
	bl __udivsi3
	mov r8, r0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r5, #0
	mov r3, r8
	bl Lerp1024
	add r0, sp, #0x50
	mov r2, sb
	ldrh r1, [r2, #2]
	lsls r1, r1, #3
	ldrh r2, [r4, #2]
	lsls r2, r2, #3
	mov r3, r8
	bl Lerp1024
	b _0801F650
_0801F624:
	ldr r0, [sp, #0x6c]
	subs r0, #3
	cmp r0, #1
	bls _0801F650
	movs r3, #3
	str r3, [sp, #0x6c]
	movs r0, #0
	ldr r1, [sp, #0x7c]
	strh r0, [r1]
	ldr r2, [sp, #0x78]
	strh r0, [r2]
	ldr r3, [sp, #0x70]
	lsls r1, r3, #2
	ldr r0, [sp, #0x58]
	adds r1, r1, r0
	adds r1, #0x5c
	ldrh r0, [r1]
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #3
	str r0, [sp, #0x50]
_0801F650:
	ldr r2, [sp, #0x5c]
	ldr r1, [r2, #0x58]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x4c]
	asrs r0, r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0801F662
	rsbs r1, r1, #0
_0801F662:
	cmp r1, #1
	ble _0801F668
	b _0801F7A2
_0801F668:
	ldr r3, [sp, #0x5c]
	ldr r1, [r3, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x50]
	asrs r0, r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0801F67A
	rsbs r1, r1, #0
_0801F67A:
	cmp r1, #1
	ble _0801F680
	b _0801F7A2
_0801F680:
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	beq _0801F688
	b _0801F7A2
_0801F688:
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2, #4]
	ldrh r0, [r2, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801F696
	b _0801F7A2
_0801F696:
	movs r0, #0
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	ldrh r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x10]
	movs r3, #1
	b _0801F7A0
_0801F6A8:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F6C8 @ =0x000900A8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x64]
	movs r0, #2
	str r0, [sp, #0x68]
	b _0801F7A2
	.align 2, 0
_0801F6C8: .4byte 0x000900A8
_0801F6CC:
	ldr r0, [sp, #0x64]
	bl sub_0802294C
	cmp r0, #0
	beq _0801F7A2
	ldr r2, _0801F724 @ =gPlayerStats
	ldr r1, _0801F728 @ =0x00000275
	adds r2, r2, r1
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	str r0, [sp, #0x54]
	movs r2, #5
	str r2, [sp, #0x68]
	add r0, sp, #0x54
	bl AddItemToInventory
	cmp r0, #0
	beq _0801F734
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F72C @ =0x000900A9
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x64]
	ldr r3, _0801F730 @ =0x000900AA
	str r3, [sp, #0x60]
	movs r0, #0x26
	bl PlaySE
	b _0801F7A2
	.align 2, 0
_0801F724: .4byte gPlayerStats
_0801F728: .4byte 0x00000275
_0801F72C: .4byte 0x000900A9
_0801F730: .4byte 0x000900AA
_0801F734:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F754 @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x64]
	ldr r0, _0801F758 @ =0x000900A0
	str r0, [sp, #0x60]
	b _0801F7A2
	.align 2, 0
_0801F754: .4byte 0x0009009F
_0801F758: .4byte 0x000900A0
_0801F75C:
	ldr r0, [sp, #0x64]
	bl sub_0802294C
	cmp r0, #0
	beq _0801F7A2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, [sp, #0x60]
	str r1, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x64]
	movs r2, #6
	str r2, [sp, #0x68]
	movs r0, #0
	ldr r3, [sp, #0x7c]
	strh r0, [r3]
	ldr r1, [sp, #0x78]
	strh r0, [r1]
	b _0801F7A2
_0801F78E:
	ldr r0, [sp, #0x64]
	bl sub_0802294C
	cmp r0, #0
	beq _0801F7A2
	movs r2, #2
	str r2, [sp, #0x6c]
	ldr r3, [sp, #0x68]
	adds r3, #1
_0801F7A0:
	str r3, [sp, #0x68]
_0801F7A2:
	ldr r0, [sp, #0x4c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x50]
	lsls r1, r1, #0x10
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
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x50]
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08007510
	adds r7, r4, #0
	mov r8, r5
	cmp r0, #0
	beq _0801F7E0
	b _0801F9A8
_0801F7E0:
	ldr r0, [sp, #0x6c]
	cmp r0, #4
	bls _0801F7E8
	b _0801F9A8
_0801F7E8:
	lsls r0, r0, #2
	ldr r1, _0801F7F4 @ =_0801F7F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F7F4: .4byte _0801F7F8
_0801F7F8: @ jump table
	.4byte _0801F996 @ case 0
	.4byte _0801F80C @ case 1
	.4byte _0801F840 @ case 2
	.4byte _0801F8A6 @ case 3
	.4byte _0801F928 @ case 4
_0801F80C:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [sp, #0x78]
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
	b _0801F9A8
_0801F840:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	cmp r0, #0
	beq _0801F858
	movs r3, #0
	str r3, [sp, #0x6c]
_0801F858:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [sp, #0x78]
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
	b _0801F9A8
_0801F8A6:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [sp, #0x78]
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
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	cmp r0, #0
	beq _0801F9A8
	movs r0, #4
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x58]
	adds r0, #0x5c
	ldrh r0, [r0]
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x58]
	adds r0, #0x5e
	ldrh r0, [r0]
	lsls r0, r0, #3
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x7c]
	strh r4, [r1]
	ldr r2, [sp, #0x78]
	strh r4, [r2]
	b _0801F9A8
_0801F928:
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [sp, #0x78]
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
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	cmp r0, #0
	beq _0801F9A8
	movs r0, #1
	str r0, [sp, #0x6c]
	movs r1, #0
	str r1, [sp, #0x70]
	movs r2, #0
	str r2, [sp, #0x74]
	b _0801F9A8
_0801F996:
	ldr r3, [sp, #0x5c]
	ldrh r1, [r3, #0x10]
	ldr r0, _0801F9A4 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3, #0x10]
	b _0801F9B6
	.align 2, 0
_0801F9A4: .4byte 0x0000FFFE
_0801F9A8:
	bl WaitFrame
_0801F9AC:
	bl sub_080074CC
	cmp r0, #0
	bne _0801F9B6
	b _0801F570
_0801F9B6:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
