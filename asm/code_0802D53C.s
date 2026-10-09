	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802D53C
sub_0802D53C: @ 0x0802D53C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	str r0, [sp, #0x48]
	adds r6, r1, #0
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	ldr r2, _0802D5A4 @ =gEnemies
	movs r0, #0x94
	ldr r3, [sp, #0x48]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	adds r4, r7, #0
	adds r4, #0x8c
	ldr r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x18
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	ldr r0, [r4]
	adds r1, r7, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	bl sub_0800EA00
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r4, #1
	str r4, [sp, #0x54]
	add r1, sp, #0x10
	adds r0, r2, #5
	strb r0, [r1, #0x1c]
	movs r0, #0xf
	adds r1, r6, #0
	ands r1, r0
	str r1, [sp, #0x50]
	lsrs r6, r6, #0x10
	cmp r6, #3
	bls _0802D5A8
	movs r0, #0xa
	b _0802D5B6
	.align 2, 0
_0802D5A4: .4byte gEnemies
_0802D5A8:
	movs r0, #0xd4
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0802D66C @ =gPlayers
	adds r5, r1, r0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
_0802D5B6:
	ldr r2, [r7, #0x10]
	mov sl, r2
	ldr r3, [r7, #0x14]
	mov sb, r3
	cmp r0, #3
	bhi _0802D678
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r2, sp, #0x44
	strh r0, [r2]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r1, r2, #0
	cmp r1, #0x80
	ble _0802D608
	ldr r5, _0802D670 @ =0xFFFFFF00
	adds r0, r5, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802D608:
	str r2, [sp, #0x58]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D61E
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D61E:
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802D636
	ldr r2, _0802D670 @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D636:
	ldr r3, [sp, #0x58]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	ldr r2, _0802D674 @ =0x080FB9FC
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0802D65A
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802D65A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D664
	rsbs r0, r0, #0
_0802D664:
	cmp r0, #3
	ble _0802D68A
	lsls r0, r1, #0x14
	b _0802D686
	.align 2, 0
_0802D66C: .4byte gPlayers
_0802D670: .4byte 0xFFFFFF00
_0802D674: .4byte 0x080FB9FC
_0802D678:
	ldr r0, _0802D6CC @ =0x080FB9FC
	movs r5, #8
	ldrsh r1, [r7, r5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x14
_0802D686:
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D68A:
	adds r0, r7, #0
	adds r0, #0x4a
	ldr r1, _0802D6D0 @ =0x08054904
	ldrh r2, [r0]
	ldrh r1, [r1, #2]
	mov r8, r0
	ldr r6, [sp, #0x48]
	lsls r6, r6, #2
	str r6, [sp, #0x68]
	cmp r2, r1
	bhs _0802D6E8
	ldr r0, _0802D6D4 @ =gUnknown_030067A0
	adds r4, r6, r0
	adds r6, r1, #0
	movs r0, #1
	ldr r1, [sp, #0x50]
	lsls r0, r1
	mvns r5, r0
_0802D6AE:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	beq _0802D6C4
	ldr r0, _0802D6D8 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D6DC
_0802D6C4:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802D966
	.align 2, 0
_0802D6CC: .4byte 0x080FB9FC
_0802D6D0: .4byte 0x08054904
_0802D6D4: .4byte gUnknown_030067A0
_0802D6D8: .4byte gUnknown_030063D8
_0802D6DC:
	bl WaitFrame
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, r6
	blo _0802D6AE
_0802D6E8:
	ldr r3, [sp, #0x54]
	lsls r0, r3, #3
	adds r0, #0xa
	str r0, [sp, #0x54]
	bl sub_080075AC
	cmp r0, #0
	bne _0802D70E
	bl sub_08007544
	cmp r0, #0
	bne _0802D70E
	bl sub_08007604
	cmp r0, #0
	bne _0802D70E
	movs r0, #0x17
	bl PlaySE
_0802D70E:
	ldr r0, [sp, #0x54]
	adds r4, r0, #0
	subs r4, #1
	str r4, [sp, #0x54]
	cmp r0, #0
	bne _0802D71C
	b _0802D954
_0802D71C:
	add r5, sp, #0x44
	mov r8, r5
	mov r6, sp
	adds r6, #0x46
	str r6, [sp, #0x64]
_0802D726:
	movs r0, #0
	str r0, [sp, #0x5c]
	movs r6, #0
	b _0802D82A
_0802D72E:
	ldr r3, _0802D7F8 @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov r4, sl
	subs r0, r0, r4
	lsrs r0, r0, #0xc
	mov r5, r8
	strh r0, [r5]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	ldr r4, [sp, #0x64]
	strh r0, [r4]
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _0802D76A
	rsbs r1, r1, #0
_0802D76A:
	cmp r1, #7
	bgt _0802D824
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D778
	rsbs r0, r0, #0
_0802D778:
	cmp r0, #7
	bgt _0802D824
	ldr r5, [sp, #0x60]
	cmp r5, r6
	bne _0802D824
	adds r5, r2, r3
	ldrh r1, [r5, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D824
	ldrh r2, [r5, #0xc]
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802D824
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r4, r5, #0
	adds r4, #0x80
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802D824
	cmp r2, #9
	beq _0802D824
	bl sub_08007544
	cmp r0, #0
	bne _0802D824
	bl sub_080077C0
	cmp r0, #0
	bne _0802D824
	ldr r0, [sp, #0x4c]
	adds r0, #0x6a
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	bl sub_0801841C
	cmp r0, #0
	beq _0802D7FC
	adds r0, r7, #0
	adds r1, r5, #0
	bl CalcDamageToPlayer
	adds r1, r5, #0
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r5, #0xc]
	movs r4, #1
	str r4, [sp, #0x5c]
	b _0802D824
	.align 2, 0
_0802D7F8: .4byte gPlayers
_0802D7FC:
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	str r1, [r0]
	bl sub_080075AC
	cmp r0, #0
	bne _0802D824
	bl sub_08007544
	cmp r0, #0
	bne _0802D824
	bl sub_08007604
	cmp r0, #0
	bne _0802D824
	movs r0, #0x55
	bl PlaySE
_0802D824:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802D82A:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802D83C
	bl sub_08007670
	cmp r0, #0
	bne _0802D83C
	b _0802D72E
_0802D83C:
	ldr r5, [sp, #0x5c]
	cmp r5, #0
	beq _0802D844
	b _0802D954
_0802D844:
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _0802D862
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0802D954
_0802D862:
	ldr r2, _0802D978 @ =0x0805289C
	ldr r0, [sp, #0x58]
	lsls r6, r0, #0x10
	asrs r1, r6, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r4, #0x3c
	muls r0, r4, r0
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r4, r0
	add sb, r0
	ldr r0, _0802D97C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802D922
	bl sub_08007510
	cmp r0, #0
	bne _0802D922
	bl sub_08007604
	cmp r0, #0
	bne _0802D922
	bl sub_08007544
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D922
	mov r0, sl
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, r8
	ldr r3, [sp, #0x64]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	ldr r2, _0802D980 @ =0x08054908
	asrs r1, r6, #0x14
	adds r1, r1, r2
	mov r2, r8
	movs r3, #0
	ldrsh r5, [r2, r3]
	ldr r4, _0802D984 @ =0x080FBB24
	ldrb r2, [r1]
	lsls r3, r2, #2
	adds r1, r3, r4
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r5, r5, r1
	mov ip, r5
	ldr r5, [sp, #0x64]
	movs r6, #0
	ldrsh r1, [r5, r6]
	adds r4, #2
	adds r3, r3, r4
	movs r4, #0
	ldrsh r3, [r3, r4]
	adds r1, r1, r3
	adds r2, #0x21
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, ip
	movs r3, #0
	bl sub_08004344
_0802D922:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _0802D954
	ldr r0, _0802D97C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802D954
	bl sub_08007578
	cmp r0, #0
	bne _0802D954
	ldr r0, [sp, #0x54]
	adds r5, r0, #0
	subs r5, #1
	str r5, [sp, #0x54]
	cmp r0, #0
	beq _0802D954
	b _0802D726
_0802D954:
	ldr r2, _0802D988 @ =gUnknown_030067A0
	ldr r6, [sp, #0x68]
	adds r2, r6, r2
	movs r1, #1
	ldr r0, [sp, #0x50]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802D966:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D978: .4byte 0x0805289C
_0802D97C: .4byte gUnknown_030063D8
_0802D980: .4byte 0x08054908
_0802D984: .4byte 0x080FBB24
_0802D988: .4byte gUnknown_030067A0
