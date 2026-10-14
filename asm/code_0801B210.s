	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801B210
sub_0801B210: @ 0x0801B210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _0801B2BC @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r2, r0, r1
	movs r6, #0
	ldrh r0, [r0, #0xc]
	cmp r6, r0
	bhs _0801B250
	adds r1, r0, #0
_0801B232:
	ldrh r3, [r2, #2]
	cmp r3, #3
	bne _0801B23E
	ldr r0, [r2, #4]
	adds r0, r2, r0
	str r0, [sp, #0x1c]
_0801B23E:
	cmp r3, #0
	bne _0801B248
	ldr r0, [r2, #4]
	adds r0, r2, r0
	str r0, [sp, #0x24]
_0801B248:
	adds r6, #1
	adds r2, #8
	cmp r6, r1
	blo _0801B232
_0801B250:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801B2C0 @ =gPlayers
	adds r5, r1, r0
	bl sub_08001F98
	cmp r0, #0
	beq _0801B268
	bl _0801C64E
_0801B268:
	bl sub_080076A8
	cmp r0, #0
	beq _0801B274
	bl _0801C64E
_0801B274:
	ldr r0, _0801B2C4 @ =gPlayerStats
	ldr r1, _0801B2C8 @ =0x00000275
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r1, r0, #0x1e
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B28C
	bl _0801C64E
_0801B28C:
	ldr r0, _0801B2CC @ =gUnknown_03003D08
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801B29E
	bl _0801C64E
_0801B29E:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0801B2D0
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B2B4
	bl _0801C64E
_0801B2B4:
	bl sub_0802169C
	bl _0801C64E
	.align 2, 0
_0801B2BC: .4byte 0x080FB0F8
_0801B2C0: .4byte gPlayers
_0801B2C4: .4byte gPlayerStats
_0801B2C8: .4byte 0x00000275
_0801B2CC: .4byte gUnknown_03003D08
_0801B2D0:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0801B2EC
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B2E4
	bl _0801C64E
_0801B2E4:
	bl sub_08021658
	bl _0801C64E
_0801B2EC:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0801B308
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B300
	bl _0801C64E
_0801B300:
	bl sub_08021614
	bl _0801C64E
_0801B308:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0801B324
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B31C
	bl _0801C64E
_0801B31C:
	bl sub_080215D0
	bl _0801C64E
_0801B324:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801B340
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B338
	bl _0801C64E
_0801B338:
	bl sub_0802158C
	bl _0801C64E
_0801B340:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801B35C
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B354
	bl _0801C64E
_0801B354:
	bl sub_08021548
	bl _0801C64E
_0801B35C:
	movs r0, #4
	ands r2, r0
	cmp r2, #0
	bne _0801B368
	bl _0801C64E
_0801B368:
	bl sub_08021504
	bl _0801C64E

_0801B370:
	ldr r3, _0801B3E8 @ =gPaletteBuffer
	ldr r4, _0801B3EC @ =gPlayerStats
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r1, [r2]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	ldrh r0, [r2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	lsls r0, r0, #0xa
	orrs r1, r0
	movs r2, #0xf1
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	bl sub_08001F98
	cmp r0, #0
	bne _0801B472
	bl sub_080076A8
	cmp r0, #0
	bne _0801B472
	ldr r3, _0801B3F0 @ =0x00000275
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r2, r0, #0x1e
	adds r0, r2, #0
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0801B472
	ldr r0, _0801B3F4 @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801B472
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B3F8
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0801B472
	bl sub_0802169C
	b _0801B472
	.align 2, 0
_0801B3E8: .4byte gPaletteBuffer
_0801B3EC: .4byte gPlayerStats
_0801B3F0: .4byte 0x00000275
_0801B3F4: .4byte gUnknown_03003D08
_0801B3F8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B40E
	movs r1, #2
	ands r2, r1
	cmp r2, #0
	beq _0801B472
	bl sub_08021658
	b _0801B472
_0801B40E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801B424
	movs r3, #2
	ands r2, r3
	cmp r2, #0
	beq _0801B472
	bl sub_08021614
	b _0801B472
_0801B424:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801B43A
	movs r4, #2
	ands r2, r4
	cmp r2, #0
	beq _0801B472
	bl sub_080215D0
	b _0801B472
_0801B43A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801B450
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0801B472
	bl sub_0802158C
	b _0801B472
_0801B450:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801B466
	movs r1, #2
	ands r2, r1
	cmp r2, #0
	beq _0801B472
	bl sub_08021548
	b _0801B472
_0801B466:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0801B472
	bl sub_08021504
_0801B472:
	bl sub_080076E0
	cmp r0, #0
	beq _0801B47C
	b _0801B636
_0801B47C:
	bl sub_08007670
	cmp r0, #0
	beq _0801B486
	b _0801B636
_0801B486:
	bl sub_0800F298
	cmp r0, #0
	bne _0801B490
	b _0801B636
_0801B490:
	ldr r0, _0801B71C @ =gMapLayer_03003C00
	ldr r2, [r0, #0x78]
	movs r0, #0xc
	ands r2, r0
	cmp r2, #0
	beq _0801B49E
	b _0801B636
_0801B49E:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #4]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B4AE
	rsbs r0, r0, #0
_0801B4AE:
	cmp r0, #2
	bgt _0801B4EE
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r4, [sp, #0x1c]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B4C2
	rsbs r0, r0, #0
_0801B4C2:
	cmp r0, #2
	bgt _0801B4EE
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B4EE
	strh r2, [r5, #4]
	strh r2, [r5, #2]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #5
	strh r0, [r5, #0xa]
	movs r0, #4
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r1, _0801B720 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801B4EE:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #0xc]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B4FE
	rsbs r0, r0, #0
_0801B4FE:
	cmp r0, #2
	bgt _0801B540
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0xe]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B512
	rsbs r0, r0, #0
_0801B512:
	cmp r0, #2
	bgt _0801B540
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B540
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #2]
	movs r0, #5
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #2
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B720 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B540:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B550
	rsbs r0, r0, #0
_0801B550:
	cmp r0, #2
	bgt _0801B592
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x12]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B564
	rsbs r0, r0, #0
_0801B564:
	cmp r0, #2
	bgt _0801B592
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B592
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	movs r0, #5
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #3
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B720 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B592:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B5A2
	rsbs r0, r0, #0
_0801B5A2:
	cmp r0, #2
	bgt _0801B5E4
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B5B6
	rsbs r0, r0, #0
_0801B5B6:
	cmp r0, #2
	bgt _0801B5E4
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B5E4
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #3
	strh r0, [r5, #0xa]
	movs r0, #5
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B720 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B5E4:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B5F4
	rsbs r0, r0, #0
_0801B5F4:
	cmp r0, #2
	bgt _0801B636
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0xa]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B608
	rsbs r0, r0, #0
_0801B608:
	cmp r0, #2
	bgt _0801B636
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B636
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #3
	strh r0, [r5, #0xa]
	movs r0, #7
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B720 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B636:
	bl sub_080076E0
	cmp r0, #0
	beq _0801B640
	b _0801B8A4
_0801B640:
	bl sub_08007670
	adds r2, r0, #0
	cmp r2, #0
	beq _0801B64C
	b _0801B8A4
_0801B64C:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x30]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B65C
	rsbs r0, r0, #0
_0801B65C:
	cmp r0, #2
	ble _0801B662
	b _0801B8A4
_0801B662:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r4, [sp, #0x1c]
	ldrh r1, [r4, #0x32]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B672
	rsbs r0, r0, #0
_0801B672:
	cmp r0, #2
	ble _0801B678
	b _0801B8A4
_0801B678:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801B684
	b _0801B8A4
_0801B684:
	movs r0, #5
	strh r0, [r5, #0xa]
	strh r2, [r5, #2]
	strh r2, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801B724 @ =0x00090086
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B6AC:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B6AC
	bl sub_08014DD8
	movs r1, #0
	cmp r0, #2
	ble _0801B6C6
	movs r1, #1
_0801B6C6:
	str r1, [sp, #0xc]
	bl sub_08014E08
	movs r1, #0
	cmp r0, #2
	ble _0801B6D4
	movs r1, #1
_0801B6D4:
	str r1, [sp, #0x10]
	bl sub_08014E38
	movs r1, #0
	cmp r0, #2
	ble _0801B6E2
	movs r1, #1
_0801B6E2:
	str r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0801B72C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0801B72C
	cmp r1, #0
	bne _0801B72C
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp]
	ldr r0, _0801B728 @ =0x00090087
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B70C:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B70C
	b _0801B89C
	.align 2, 0
_0801B71C: .4byte gMapLayer_03003C00
_0801B720: .4byte 0x0000FFFE
_0801B724: .4byte 0x00090086
_0801B728: .4byte 0x00090087
_0801B72C:
	movs r6, #0
_0801B72E:
	lsls r0, r6, #2
	add r0, sp
	adds r0, #0xc
	ldr r0, [r0]
	adds r2, r6, #1
	mov r8, r2
	cmp r0, #0
	bne _0801B740
	b _0801B86E
_0801B740:
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r3, _0801B7A8 @ =0x00090088
	adds r0, r6, r3
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B75A:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B75A
	adds r0, r4, #0
	bl sub_08022964
	cmp r0, #0
	beq _0801B848
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0801B7AC @ =0x0009008B
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	add r7, sp, #0x18
_0801B78A:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B78A
	cmp r6, #1
	beq _0801B7B6
	cmp r6, #1
	blo _0801B7B0
	cmp r6, #2
	beq _0801B7BC
	b _0801B7C0
	.align 2, 0
_0801B7A8: .4byte 0x00090088
_0801B7AC: .4byte 0x0009008B
_0801B7B0:
	bl sub_08013838
	b _0801B7C0
_0801B7B6:
	bl sub_08013894
	b _0801B7C0
_0801B7BC:
	bl sub_080138F0
_0801B7C0:
	ldr r0, _0801B838 @ =0x000F0006
	adds r4, r6, r0
	bl GetPlayerClass
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_080130F4
	adds r0, r7, #0
	bl AddItemToInventory
	movs r0, #0x26
	bl PlaySE
	ldr r0, _0801B83C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #4
	bne _0801B80C
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0801B840 @ =0x000900FF
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B7FE:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B7FE
_0801B80C:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp]
	ldr r0, _0801B844 @ =0x00090100
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_08021E70
	adds r4, r0, #0
_0801B826:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B826
	b _0801B86E
	.align 2, 0
_0801B838: .4byte 0x000F0006
_0801B83C: .4byte gLanguage
_0801B840: .4byte 0x000900FF
_0801B844: .4byte 0x00090100
_0801B848:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r0, _0801B930 @ =0x0009008C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B860:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B860
_0801B86E:
	mov r6, r8
	cmp r6, #2
	bhi _0801B876
	b _0801B72E
_0801B876:
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp]
	ldr r0, _0801B934 @ =0x0009008D
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B88E:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B88E
_0801B89C:
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B938 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B8A4:
	bl sub_080076E0
	cmp r0, #0
	beq _0801B8AE
	b _0801BEE2
_0801B8AE:
	bl sub_08007670
	adds r2, r0, #0
	cmp r2, #0
	beq _0801B8BA
	b _0801BEE2
_0801B8BA:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r1, [sp, #0x1c]
	adds r1, #0x48
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B8CC
	rsbs r0, r0, #0
_0801B8CC:
	ldr r6, [sp, #0x1c]
	adds r6, #0x4c
	ldr r7, [sp, #0x1c]
	adds r7, #0x50
	ldr r1, [sp, #0x1c]
	adds r1, #0x54
	mov r8, r1
	cmp r0, #2
	ble _0801B8E0
	b _0801BA64
_0801B8E0:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x4a
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801B8F2
	rsbs r1, r1, #0
_0801B8F2:
	cmp r1, #2
	ble _0801B8F8
	b _0801BA64
_0801B8F8:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801B904
	b _0801BA64
_0801B904:
	strh r2, [r5, #2]
	strh r2, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r0, _0801B93C @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B948
	ldr r2, _0801B940 @ =0x000900D4
	str r2, [sp, #0x20]
	ldr r3, _0801B944 @ =gUnknown_030063D8
	ldr r0, [r3]
	adds r0, #0xa8
	movs r4, #1
	strh r4, [r0]
	b _0801BA14
	.align 2, 0
_0801B930: .4byte 0x0009008C
_0801B934: .4byte 0x0009008D
_0801B938: .4byte 0x0000FFFE
_0801B93C: .4byte gUnknown_03003D08
_0801B940: .4byte 0x000900D4
_0801B944: .4byte gUnknown_030063D8
_0801B948:
	movs r2, #0x80
	ands r2, r1
	cmp r2, #0
	beq _0801B968
	ldr r0, _0801B960 @ =0x000900CE
	str r0, [sp, #0x20]
	ldr r1, _0801B964 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BA12
	.align 2, 0
_0801B960: .4byte 0x000900CE
_0801B964: .4byte gUnknown_030063D8
_0801B968:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801B984
	ldr r3, _0801B97C @ =0x000900C6
	str r3, [sp, #0x20]
	ldr r4, _0801B980 @ =gUnknown_030063D8
	ldr r0, [r4]
	b _0801BA10
	.align 2, 0
_0801B97C: .4byte 0x000900C6
_0801B980: .4byte gUnknown_030063D8
_0801B984:
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _0801B9A4
	ldr r0, _0801B99C @ =0x000900BC
	str r0, [sp, #0x20]
	ldr r1, _0801B9A0 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BA12
	.align 2, 0
_0801B99C: .4byte 0x000900BC
_0801B9A0: .4byte gUnknown_030063D8
_0801B9A4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801B9C0
	ldr r3, _0801B9B8 @ =0x000900B4
	str r3, [sp, #0x20]
	ldr r4, _0801B9BC @ =gUnknown_030063D8
	ldr r0, [r4]
	b _0801BA10
	.align 2, 0
_0801B9B8: .4byte 0x000900B4
_0801B9BC: .4byte gUnknown_030063D8
_0801B9C0:
	movs r3, #8
	ands r3, r1
	cmp r3, #0
	beq _0801B9E0
	ldr r0, _0801B9D8 @ =0x000900AB
	str r0, [sp, #0x20]
	ldr r1, _0801B9DC @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BA12
	.align 2, 0
_0801B9D8: .4byte 0x000900AB
_0801B9DC: .4byte gUnknown_030063D8
_0801B9E0:
	movs r2, #4
	ands r2, r1
	cmp r2, #0
	beq _0801BA00
	ldr r4, _0801B9F8 @ =0x000900A1
	str r4, [sp, #0x20]
	ldr r1, _0801B9FC @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	strh r3, [r0]
	b _0801BA14
	.align 2, 0
_0801B9F8: .4byte 0x000900A1
_0801B9FC: .4byte gUnknown_030063D8
_0801BA00:
	movs r3, #2
	ands r1, r3
	cmp r1, #0
	beq _0801BA14
	ldr r4, _0801BAC4 @ =0x00090095
	str r4, [sp, #0x20]
	ldr r1, _0801BAC8 @ =gUnknown_030063D8
	ldr r0, [r1]
_0801BA10:
	adds r0, #0xa8
_0801BA12:
	strh r2, [r0]
_0801BA14:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r3, [sp, #0x20]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	ldr r1, _0801BAC8 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa6
	movs r2, #1
	strh r2, [r0]
	ldr r6, [sp, #0x1c]
	adds r6, #0x4c
	ldr r7, [sp, #0x1c]
	adds r7, #0x50
	ldr r3, [sp, #0x1c]
	adds r3, #0x54
	mov r8, r3
_0801BA44:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BA44
	ldr r4, _0801BAC8 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xa6
	movs r1, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	ldr r1, _0801BACC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801BA64:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BA72
	rsbs r0, r0, #0
_0801BA72:
	cmp r0, #2
	ble _0801BA78
	b _0801BBE2
_0801BA78:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x4e
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801BA8A
	rsbs r1, r1, #0
_0801BA8A:
	cmp r1, #2
	ble _0801BA90
	b _0801BBE2
_0801BA90:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801BA9C
	b _0801BBE2
_0801BA9C:
	movs r2, #0
	strh r2, [r5, #2]
	strh r2, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r0, _0801BAD0 @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BAD8
	ldr r3, _0801BAD4 @ =0x000900D5
	str r3, [sp, #0x20]
	ldr r4, _0801BAC8 @ =gUnknown_030063D8
	ldr r0, [r4]
	b _0801BB9C
	.align 2, 0
_0801BAC4: .4byte 0x00090095
_0801BAC8: .4byte gUnknown_030063D8
_0801BACC: .4byte 0x0000FFFE
_0801BAD0: .4byte gUnknown_03003D08
_0801BAD4: .4byte 0x000900D5
_0801BAD8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801BAF8
	ldr r0, _0801BAF0 @ =0x000900CF
	str r0, [sp, #0x20]
	ldr r1, _0801BAF4 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BB9E
	.align 2, 0
_0801BAF0: .4byte 0x000900CF
_0801BAF4: .4byte gUnknown_030063D8
_0801BAF8:
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	beq _0801BB18
	ldr r3, _0801BB10 @ =0x000900C7
	str r3, [sp, #0x20]
	ldr r4, _0801BB14 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #3
	strh r1, [r0]
	b _0801BBA0
	.align 2, 0
_0801BB10: .4byte 0x000900C7
_0801BB14: .4byte gUnknown_030063D8
_0801BB18:
	movs r3, #0x20
	ands r3, r1
	cmp r3, #0
	beq _0801BB2C
	ldr r0, _0801BB28 @ =0x000900BD
	str r0, [sp, #0x20]
	b _0801BB98
	.align 2, 0
_0801BB28: .4byte 0x000900BD
_0801BB2C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BB4C
	ldr r2, _0801BB44 @ =0x000900B5
	str r2, [sp, #0x20]
	ldr r4, _0801BB48 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	strh r3, [r0]
	b _0801BBA0
	.align 2, 0
_0801BB44: .4byte 0x000900B5
_0801BB48: .4byte gUnknown_030063D8
_0801BB4C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801BB6C
	ldr r0, _0801BB64 @ =0x000900AC
	str r0, [sp, #0x20]
	ldr r1, _0801BB68 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BB9E
	.align 2, 0
_0801BB64: .4byte 0x000900AC
_0801BB68: .4byte gUnknown_030063D8
_0801BB6C:
	movs r2, #4
	ands r2, r1
	cmp r2, #0
	beq _0801BB8C
	ldr r3, _0801BB84 @ =0x000900A2
	str r3, [sp, #0x20]
	ldr r4, _0801BB88 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #2
	strh r1, [r0]
	b _0801BBA0
	.align 2, 0
_0801BB84: .4byte 0x000900A2
_0801BB88: .4byte gUnknown_030063D8
_0801BB8C:
	movs r3, #2
	ands r1, r3
	cmp r1, #0
	beq _0801BBA0
	ldr r4, _0801BC44 @ =0x00090096
	str r4, [sp, #0x20]
_0801BB98:
	ldr r1, _0801BC48 @ =gUnknown_030063D8
	ldr r0, [r1]
_0801BB9C:
	adds r0, #0xa8
_0801BB9E:
	strh r2, [r0]
_0801BBA0:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r3, [sp, #0x20]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	ldr r1, _0801BC48 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa6
	movs r2, #2
	strh r2, [r0]
_0801BBC2:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BBC2
	ldr r3, _0801BC48 @ =gUnknown_030063D8
	ldr r0, [r3]
	adds r0, #0xa6
	movs r1, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	ldr r4, _0801BC4C @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801BBE2:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldrh r1, [r7]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BBF0
	rsbs r0, r0, #0
_0801BBF0:
	cmp r0, #2
	ble _0801BBF6
	b _0801BD6A
_0801BBF6:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x52
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801BC08
	rsbs r1, r1, #0
_0801BC08:
	cmp r1, #2
	ble _0801BC0E
	b _0801BD6A
_0801BC0E:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801BC1A
	b _0801BD6A
_0801BC1A:
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r0, _0801BC50 @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0801BC58
	ldr r0, _0801BC54 @ =0x000900D6
	str r0, [sp, #0x20]
	ldr r1, _0801BC48 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BD26
	.align 2, 0
_0801BC44: .4byte 0x00090096
_0801BC48: .4byte gUnknown_030063D8
_0801BC4C: .4byte 0x0000FFFE
_0801BC50: .4byte gUnknown_03003D08
_0801BC54: .4byte 0x000900D6
_0801BC58:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801BC74
	ldr r3, _0801BC6C @ =0x000900D0
	str r3, [sp, #0x20]
	ldr r4, _0801BC70 @ =gUnknown_030063D8
	ldr r0, [r4]
	b _0801BD24
	.align 2, 0
_0801BC6C: .4byte 0x000900D0
_0801BC70: .4byte gUnknown_030063D8
_0801BC74:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801BC94
	ldr r0, _0801BC8C @ =0x000900C8
	str r0, [sp, #0x20]
	ldr r1, _0801BC90 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BD26
	.align 2, 0
_0801BC8C: .4byte 0x000900C8
_0801BC90: .4byte gUnknown_030063D8
_0801BC94:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801BCB4
	ldr r3, _0801BCAC @ =0x000900BE
	str r3, [sp, #0x20]
	ldr r4, _0801BCB0 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #3
	strh r1, [r0]
	b _0801BD28
	.align 2, 0
_0801BCAC: .4byte 0x000900BE
_0801BCB0: .4byte gUnknown_030063D8
_0801BCB4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BCD4
	ldr r0, _0801BCCC @ =0x000900B6
	str r0, [sp, #0x20]
	ldr r1, _0801BCD0 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BD26
	.align 2, 0
_0801BCCC: .4byte 0x000900B6
_0801BCD0: .4byte gUnknown_030063D8
_0801BCD4:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801BCF4
	ldr r3, _0801BCEC @ =0x000900AD
	str r3, [sp, #0x20]
	ldr r4, _0801BCF0 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #2
	strh r1, [r0]
	b _0801BD28
	.align 2, 0
_0801BCEC: .4byte 0x000900AD
_0801BCF0: .4byte gUnknown_030063D8
_0801BCF4:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801BD14
	ldr r2, _0801BD0C @ =0x000900A3
	str r2, [sp, #0x20]
	ldr r3, _0801BD10 @ =gUnknown_030063D8
	ldr r0, [r3]
	adds r0, #0xa8
	movs r4, #1
	strh r4, [r0]
	b _0801BD28
	.align 2, 0
_0801BD0C: .4byte 0x000900A3
_0801BD10: .4byte gUnknown_030063D8
_0801BD14:
	movs r2, #2
	ands r1, r2
	cmp r1, #0
	beq _0801BD28
	ldr r0, _0801BDD0 @ =0x00090097
	str r0, [sp, #0x20]
	ldr r1, _0801BDD4 @ =gUnknown_030063D8
	ldr r0, [r1]
_0801BD24:
	adds r0, #0xa8
_0801BD26:
	strh r2, [r0]
_0801BD28:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r3, [sp, #0x20]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	ldr r1, _0801BDD4 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa6
	movs r1, #4
	strh r1, [r0]
_0801BD4A:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BD4A
	ldr r2, _0801BDD4 @ =gUnknown_030063D8
	ldr r0, [r2]
	adds r0, #0xa6
	movs r1, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	ldr r3, _0801BDD8 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801BD6A:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	mov r4, r8
	ldrh r1, [r4]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BD7A
	rsbs r0, r0, #0
_0801BD7A:
	cmp r0, #2
	ble _0801BD80
	b _0801BEE2
_0801BD80:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x56
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801BD92
	rsbs r1, r1, #0
_0801BD92:
	cmp r1, #2
	ble _0801BD98
	b _0801BEE2
_0801BD98:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801BDA4
	b _0801BEE2
_0801BDA4:
	movs r3, #0
	strh r3, [r5, #2]
	strh r3, [r5, #4]
	ldrh r0, [r5, #0x10]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5, #0x10]
	ldr r0, _0801BDDC @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0801BDE4
	ldr r0, _0801BDE0 @ =0x000900D7
	str r0, [sp, #0x20]
	ldr r1, _0801BDD4 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	strh r3, [r0]
	b _0801BEA0
	.align 2, 0
_0801BDD0: .4byte 0x00090097
_0801BDD4: .4byte gUnknown_030063D8
_0801BDD8: .4byte 0x0000FFFE
_0801BDDC: .4byte gUnknown_03003D08
_0801BDE0: .4byte 0x000900D7
_0801BDE4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801BE00
	ldr r3, _0801BDF8 @ =0x000900D1
	str r3, [sp, #0x20]
	ldr r4, _0801BDFC @ =gUnknown_030063D8
	ldr r0, [r4]
	b _0801BE9C
	.align 2, 0
_0801BDF8: .4byte 0x000900D1
_0801BDFC: .4byte gUnknown_030063D8
_0801BE00:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801BE20
	ldr r0, _0801BE18 @ =0x000900C9
	str r0, [sp, #0x20]
	ldr r1, _0801BE1C @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BE9E
	.align 2, 0
_0801BE18: .4byte 0x000900C9
_0801BE1C: .4byte gUnknown_030063D8
_0801BE20:
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _0801BE30
	ldr r3, _0801BE2C @ =0x000900BF
	b _0801BE76
	.align 2, 0
_0801BE2C: .4byte 0x000900BF
_0801BE30:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BE4C
	ldr r3, _0801BE44 @ =0x000900B7
	str r3, [sp, #0x20]
	ldr r4, _0801BE48 @ =gUnknown_030063D8
	ldr r0, [r4]
	b _0801BE9C
	.align 2, 0
_0801BE44: .4byte 0x000900B7
_0801BE48: .4byte gUnknown_030063D8
_0801BE4C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801BE6C
	ldr r0, _0801BE64 @ =0x000900AE
	str r0, [sp, #0x20]
	ldr r1, _0801BE68 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BE9E
	.align 2, 0
_0801BE64: .4byte 0x000900AE
_0801BE68: .4byte gUnknown_030063D8
_0801BE6C:
	movs r2, #4
	ands r2, r1
	cmp r2, #0
	beq _0801BE8C
	ldr r3, _0801BE84 @ =0x000900A4
_0801BE76:
	str r3, [sp, #0x20]
	ldr r4, _0801BE88 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #1
	strh r1, [r0]
	b _0801BEA0
	.align 2, 0
_0801BE84: .4byte 0x000900A4
_0801BE88: .4byte gUnknown_030063D8
_0801BE8C:
	movs r3, #2
	ands r1, r3
	cmp r1, #0
	beq _0801BEA0
	ldr r4, _0801BF58 @ =0x00090098
	str r4, [sp, #0x20]
	ldr r1, _0801BF5C @ =gUnknown_030063D8
	ldr r0, [r1]
_0801BE9C:
	adds r0, #0xa8
_0801BE9E:
	strh r2, [r0]
_0801BEA0:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r3, [sp, #0x20]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	ldr r1, _0801BF5C @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xa6
	movs r1, #8
	strh r1, [r0]
_0801BEC2:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BEC2
	ldr r2, _0801BF5C @ =gUnknown_030063D8
	ldr r0, [r2]
	adds r0, #0xa6
	movs r1, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	ldr r3, _0801BF60 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801BEE2:
	bl sub_080076E0
	cmp r0, #0
	beq _0801BEEC
	b _0801C042
_0801BEEC:
	bl sub_08007670
	cmp r0, #0
	beq _0801BEF6
	b _0801C042
_0801BEF6:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r4, [sp, #0x1c]
	ldrh r1, [r4, #0x18]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BF06
	rsbs r0, r0, #0
_0801BF06:
	cmp r0, #1
	ble _0801BF0C
	b _0801C042
_0801BF0C:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #0x1a]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BF1C
	rsbs r0, r0, #0
_0801BF1C:
	cmp r0, #2
	ble _0801BF22
	b _0801C042
_0801BF22:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801BF2E
	b _0801C042
_0801BF2E:
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r0, _0801BF64 @ =gUnknown_03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BF74
	ldr r0, _0801BF68 @ =gPlayerStats
	ldr r0, [r0, #0x38]
	ldr r3, _0801BF6C @ =0x00090106
	str r3, [sp, #0x20]
	cmp r0, #0x63
	bne _0801BF84
	ldr r4, _0801BF70 @ =0x0009008F
	str r4, [sp, #0x20]
	b _0801BF84
	.align 2, 0
_0801BF58: .4byte 0x00090098
_0801BF5C: .4byte gUnknown_030063D8
_0801BF60: .4byte 0x0000FFFE
_0801BF64: .4byte gUnknown_03003D08
_0801BF68: .4byte gPlayerStats
_0801BF6C: .4byte 0x00090106
_0801BF70: .4byte 0x0009008F
_0801BF74:
	ldr r0, _0801BFD4 @ =gPlayerStats
	ldr r0, [r0, #0x38]
	ldr r1, _0801BFD8 @ =0x0009008E
	str r1, [sp, #0x20]
	cmp r0, #0x63
	bne _0801BF84
	ldr r2, _0801BFDC @ =0x0009008F
	str r2, [sp, #0x20]
_0801BF84:
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp]
	ldr r4, [sp, #0x20]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	adds r7, r5, #0
	adds r7, #0x50
	movs r0, #0x7a
	adds r0, r0, r5
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x4e
	movs r1, #0x78
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x24
	adds r2, r2, r5
	mov sl, r2
_0801BFB6:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BFB6
	movs r0, #0x91
	bl PlaySE
	movs r0, #6
	bl sub_0800F244
	b _0801BFE4
	.align 2, 0
_0801BFD4: .4byte gPlayerStats
_0801BFD8: .4byte 0x0009008E
_0801BFDC: .4byte 0x0009008F
_0801BFE0:
	bl WaitFrame
_0801BFE4:
	bl sub_0800F298
	cmp r0, #0
	beq _0801BFE0
	ldrh r0, [r7]
	mov r3, sb
	strh r0, [r3]
	ldrh r0, [r6]
	mov r4, r8
	strh r0, [r4]
	movs r6, #0
	movs r3, #0
	mov r1, sl
_0801BFFE:
	lsls r2, r6, #1
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0801C01E
	ldr r0, [r5, #0x1c]
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, #4
	bgt _0801C01E
	cmp r0, #1
	blt _0801C01E
	strh r3, [r1]
	ldr r0, [r5, #0x1c]
	adds r0, r2, r0
	strh r3, [r0]
_0801C01E:
	adds r1, #2
	adds r6, #1
	cmp r6, #2
	bls _0801BFFE
	movs r0, #0xa
	bl sub_0800F1EC
	b _0801C032
_0801C02E:
	bl WaitFrame
_0801C032:
	bl sub_0800F298
	cmp r0, #0
	beq _0801C02E
	ldrh r0, [r5, #0x10]
	ldr r1, _0801C0AC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801C042:
	bl sub_080076E0
	cmp r0, #0
	beq _0801C04C
	b _0801C166
_0801C04C:
	bl sub_08007670
	cmp r0, #0
	beq _0801C056
	b _0801C166
_0801C056:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #0x3c]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C066
	rsbs r0, r0, #0
_0801C066:
	cmp r0, #1
	ble _0801C06C
	b _0801C166
_0801C06C:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x3e]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C07C
	rsbs r0, r0, #0
_0801C07C:
	cmp r0, #2
	bgt _0801C166
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801C166
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r2, #4
	strh r2, [r5, #0xa]
	ldr r0, _0801C0B0 @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C0B8
	ldr r4, _0801C0B4 @ =0x000900D2
	str r4, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C0AC: .4byte 0x0000FFFE
_0801C0B0: .4byte gUnknown_03003D08
_0801C0B4: .4byte 0x000900D2
_0801C0B8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801C0CC
	ldr r0, _0801C0C8 @ =0x000900CA
	str r0, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C0C8: .4byte 0x000900CA
_0801C0CC:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801C0E0
	ldr r1, _0801C0DC @ =0x000900C0
	str r1, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C0DC: .4byte 0x000900C0
_0801C0E0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801C0F4
	ldr r2, _0801C0F0 @ =0x000900B8
	str r2, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C0F0: .4byte 0x000900B8
_0801C0F4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C104
	ldr r3, _0801C100 @ =0x000900AF
	b _0801C136
	.align 2, 0
_0801C100: .4byte 0x000900AF
_0801C104:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801C118
	ldr r4, _0801C114 @ =0x000900A5
	str r4, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C114: .4byte 0x000900A5
_0801C118:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0801C12C
	ldr r0, _0801C128 @ =0x00090099
	str r0, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C128: .4byte 0x00090099
_0801C12C:
	movs r2, #2
	ands r1, r2
	cmp r1, #0
	beq _0801C138
	ldr r3, _0801C1E0 @ =0x00090090
_0801C136:
	str r3, [sp, #0x20]
_0801C138:
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C150:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C150
	ldrh r0, [r5, #0x10]
	ldr r1, _0801C1E4 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801C166:
	bl sub_080076E0
	cmp r0, #0
	beq _0801C170
	b _0801C2C6
_0801C170:
	bl sub_08007670
	cmp r0, #0
	beq _0801C17A
	b _0801C2C6
_0801C17A:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r1, [sp, #0x1c]
	adds r1, #0x40
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C18C
	rsbs r0, r0, #0
_0801C18C:
	cmp r0, #2
	ble _0801C192
	b _0801C2C6
_0801C192:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x42
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801C1A4
	rsbs r1, r1, #0
_0801C1A4:
	cmp r1, #2
	ble _0801C1AA
	b _0801C2C6
_0801C1AA:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801C1B6
	b _0801C2C6
_0801C1B6:
	ldr r0, _0801C1E8 @ =gUnknown_03003D08
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0801C1C6
	b _0801C2C6
_0801C1C6:
	movs r3, #4
	strh r3, [r5, #0xa]
	ldrh r0, [r5, #0x10]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0801C1F0
	ldr r2, _0801C1EC @ =0x000900CB
	str r2, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C1E0: .4byte 0x00090090
_0801C1E4: .4byte 0x0000FFFE
_0801C1E8: .4byte gUnknown_03003D08
_0801C1EC: .4byte 0x000900CB
_0801C1F0:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0801C204
	ldr r3, _0801C200 @ =0x000900C1
	str r3, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C200: .4byte 0x000900C1
_0801C204:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0801C218
	ldr r4, _0801C214 @ =0x000900B9
	str r4, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C214: .4byte 0x000900B9
_0801C218:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801C22C
	ldr r0, _0801C228 @ =0x000900B0
	str r0, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C228: .4byte 0x000900B0
_0801C22C:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801C240
	ldr r1, _0801C23C @ =0x000900A6
	str r1, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C23C: .4byte 0x000900A6
_0801C240:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801C254
	ldr r2, _0801C250 @ =0x0009009A
	str r2, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C250: .4byte 0x0009009A
_0801C254:
	movs r3, #2
	ands r2, r3
	cmp r2, #0
	beq _0801C298
	ldr r0, _0801C340 @ =gPlayerStats
	ldr r4, _0801C344 @ =0x00000272
	adds r7, r0, r4
	ldrh r4, [r7]
	lsrs r1, r4, #4
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r6, r0, r2
	ldrb r0, [r6]
	lsls r3, r0, #0xc
	orrs r3, r1
	movs r2, #1
	adds r0, r3, #0
	ands r0, r2
	ldr r1, _0801C348 @ =0x00090092
	str r1, [sp, #0x20]
	cmp r0, #0
	bne _0801C298
	ldr r0, _0801C34C @ =0x00090091
	str r0, [sp, #0x20]
	orrs r2, r3
	ldr r1, _0801C350 @ =0x00000FFF
	ands r1, r2
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r4
	orrs r0, r1
	strh r0, [r7]
	lsrs r2, r2, #0xc
	strb r2, [r6]
_0801C298:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x20]
	str r2, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C2B0:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C2B0
	ldrh r0, [r5, #0x10]
	ldr r3, _0801C354 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801C2C6:
	bl sub_080076E0
	cmp r0, #0
	beq _0801C2D0
	b _0801C434
_0801C2D0:
	bl sub_08007670
	cmp r0, #0
	beq _0801C2DA
	b _0801C434
_0801C2DA:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r1, [sp, #0x1c]
	adds r1, #0x44
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C2EC
	rsbs r0, r0, #0
_0801C2EC:
	cmp r0, #2
	ble _0801C2F2
	b _0801C434
_0801C2F2:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x46
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801C304
	rsbs r1, r1, #0
_0801C304:
	cmp r1, #2
	ble _0801C30A
	b _0801C434
_0801C30A:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801C316
	b _0801C434
_0801C316:
	ldr r0, _0801C358 @ =gUnknown_03003D08
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0801C326
	b _0801C434
_0801C326:
	movs r2, #4
	strh r2, [r5, #0xa]
	ldrh r0, [r5, #0x10]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0801C360
	ldr r4, _0801C35C @ =0x000900CC
	str r4, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C340: .4byte gPlayerStats
_0801C344: .4byte 0x00000272
_0801C348: .4byte 0x00090092
_0801C34C: .4byte 0x00090091
_0801C350: .4byte 0x00000FFF
_0801C354: .4byte 0x0000FFFE
_0801C358: .4byte gUnknown_03003D08
_0801C35C: .4byte 0x000900CC
_0801C360:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0801C374
	ldr r0, _0801C370 @ =0x000900C2
	str r0, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C370: .4byte 0x000900C2
_0801C374:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801C388
	ldr r1, _0801C384 @ =0x000900BA
	str r1, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C384: .4byte 0x000900BA
_0801C388:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801C39C
	ldr r2, _0801C398 @ =0x000900B1
	str r2, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C398: .4byte 0x000900B1
_0801C39C:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0801C3B0
	ldr r3, _0801C3AC @ =0x000900A7
	str r3, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C3AC: .4byte 0x000900A7
_0801C3B0:
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _0801C3C4
	ldr r4, _0801C3C0 @ =0x0009009B
	str r4, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C3C0: .4byte 0x0009009B
_0801C3C4:
	movs r2, #2
	ands r3, r2
	cmp r3, #0
	beq _0801C406
	ldr r0, _0801C684 @ =gPlayerStats
	ldr r1, _0801C688 @ =0x00000272
	adds r7, r0, r1
	ldrh r4, [r7]
	lsrs r1, r4, #4
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r6, r0, r3
	ldrb r0, [r6]
	lsls r3, r0, #0xc
	orrs r3, r1
	adds r0, r3, #0
	ands r0, r2
	ldr r1, _0801C68C @ =0x00090094
	str r1, [sp, #0x20]
	cmp r0, #0
	bne _0801C406
	ldr r0, _0801C690 @ =0x00090093
	str r0, [sp, #0x20]
	orrs r2, r3
	ldr r1, _0801C694 @ =0x00000FFF
	ands r1, r2
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r4
	orrs r0, r1
	strh r0, [r7]
	lsrs r2, r2, #0xc
	strb r2, [r6]
_0801C406:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x20]
	str r2, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C41E:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C41E
	ldrh r0, [r5, #0x10]
	ldr r3, _0801C698 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801C434:
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _0801C49A
	ldr r0, _0801C684 @ =gPlayerStats
	ldr r1, _0801C69C @ =0x00000275
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0801C49A
	subs r4, #1
	str r4, [sp, #0x20]
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	lsls r1, r4, #2
	ldr r3, [sp, #0x1c]
	adds r1, r1, r3
	adds r2, r1, #0
	adds r2, #0x58
	ldrh r1, [r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C46A
	rsbs r0, r0, #0
_0801C46A:
	cmp r0, #1
	bgt _0801C49A
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C47C
	rsbs r0, r0, #0
_0801C47C:
	cmp r0, #1
	bgt _0801C49A
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801C49A
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	movs r4, #0
	orrs r0, r4
	ldr r1, _0801C698 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801C49A:
	bl sub_080076E0
	adds r3, r0, #0
	cmp r3, #0
	bne _0801C514
	ldr r1, [r5, #0x58]
	asrs r1, r1, #0xf
	ldr r2, [sp, #0x1c]
	adds r2, #0x84
	ldrh r0, [r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801C4B6
	rsbs r1, r1, #0
_0801C4B6:
	cmp r1, #1
	bgt _0801C514
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C4C8
	rsbs r0, r0, #0
_0801C4C8:
	cmp r0, #1
	bgt _0801C514
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801C514
	strh r3, [r5, #2]
	strh r3, [r5, #4]
	movs r0, #3
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r0, _0801C6A0 @ =0x000900F5
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C4FE:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C4FE
	ldrh r0, [r5, #0x10]
	ldr r3, _0801C698 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801C514:
	bl sub_080076E0
	adds r3, r0, #0
	cmp r3, #0
	bne _0801C5AE
	ldr r1, [r5, #0x58]
	asrs r1, r1, #0xf
	ldr r2, [sp, #0x1c]
	adds r2, #0x88
	ldrh r0, [r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801C530
	rsbs r1, r1, #0
_0801C530:
	cmp r1, #1
	bgt _0801C5AE
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C542
	rsbs r0, r0, #0
_0801C542:
	cmp r0, #1
	bgt _0801C5AE
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801C5AE
	strh r3, [r5, #2]
	strh r3, [r5, #4]
	movs r0, #5
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0801C56E
	rsbs r1, r1, #0
_0801C56E:
	adds r0, r1, #0
	cmp r1, #0
	bge _0801C576
	adds r0, r1, #3
_0801C576:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	ldr r4, _0801C6A4 @ =0x000900F6
	adds r4, r0, r4
	str r4, [sp, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C598:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C598
	ldrh r0, [r5, #0x10]
	ldr r1, _0801C698 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801C5AE:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x24]
	ldrh r1, [r2, #4]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C5BE
	rsbs r0, r0, #0
_0801C5BE:
	cmp r0, #1
	bgt _0801C60C
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C5D2
	rsbs r0, r0, #0
_0801C5D2:
	cmp r0, #1
	bgt _0801C60C
	ldrh r1, [r5, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C60C
	movs r4, #1
	strh r4, [r5, #0xe]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #0x10
	rsbs r0, r0, #0
	str r0, [r5, #0x60]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r5, #0x64]
	movs r0, #9
	strh r0, [r5, #0xc]
	movs r0, #6
	bl sub_0800F3A0
	movs r0, #4
	bl FadeOutBGM
	movs r0, #0x65
	bl PlaySE
_0801C60C:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	adds r0, #2
	cmp r0, #0
	bge _0801C618
	rsbs r0, r0, #0
_0801C618:
	cmp r0, #2
	bgt _0801C64A
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	subs r0, #0x3c
	cmp r0, #0
	bge _0801C628
	rsbs r0, r0, #0
_0801C628:
	cmp r0, #2
	bgt _0801C64A
	ldr r2, _0801C6A8 @ =gMapLayer_03003C00
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	bl sub_08007564
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	movs r4, #0
	strh r0, [r5, #0x10]
	bl sub_08007760
	strh r4, [r5, #0xc]
_0801C64A:
	bl WaitFrame
_0801C64E:
	bl sub_080074CC
	cmp r0, #0
	bne _0801C674
	bl sub_08007544
	cmp r0, #0
	beq _0801C662
	bl _0801B472
_0801C662:
	ldr r0, _0801C6AC @ =0x000514C9
	bl _08000400
	bl sub_080074CC
	cmp r0, #0
	bne _0801C674
	bl _0801B370
_0801C674:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C684: .4byte gPlayerStats
_0801C688: .4byte 0x00000272
_0801C68C: .4byte 0x00090094
_0801C690: .4byte 0x00090093
_0801C694: .4byte 0x00000FFF
_0801C698: .4byte 0x0000FFFE
_0801C69C: .4byte 0x00000275
_0801C6A0: .4byte 0x000900F5
_0801C6A4: .4byte 0x000900F6
_0801C6A8: .4byte gMapLayer_03003C00
_0801C6AC: .4byte 0x000514C9

	thumb_func_start sub_0801C6B0
sub_0801C6B0: @ 0x0801C6B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0801C6F8 @ =0xFFFFFC84
	add sp, r4
	ldr r0, _0801C6FC @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	adds r2, r0, #0
	ldr r0, [r2, #8]
	adds r1, r2, r0
	movs r0, #0
	mov sl, r0
	mov r3, sp
	adds r3, #0x94
	str r3, [sp, #0x374]
	mov r0, sp
	adds r0, #0x39
	str r0, [sp, #0x36c]
	ldr r3, _0801C700 @ =0x000002A9
	add r3, sp
	str r3, [sp, #0x370]
	ldr r0, _0801C704 @ =0x000002DD
	add r0, sp
	str r0, [sp, #0x360]
	mov r3, sp
	adds r3, #0xa1
	str r3, [sp, #0x35c]
	mov r0, sp
	adds r0, #0xc8
	str r0, [sp, #0x364]
	b _0801C70E
	.align 2, 0
_0801C6F8: .4byte 0xFFFFFC84
_0801C6FC: .4byte 0x080FB0F8
_0801C700: .4byte 0x000002A9
_0801C704: .4byte 0x000002DD
_0801C708:
	movs r0, #1
	add sl, r0
	adds r1, #8
_0801C70E:
	ldrh r3, [r2, #0xc]
	cmp sl, r3
	bhs _0801C720
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801C708
	ldr r0, [r1, #4]
	adds r1, r1, r0
	str r1, [sp, #0x34c]
_0801C720:
	movs r0, #0
	mov sl, r0
	ldr r5, _0801C7B4 @ =0x080FBA38
_0801C726:
	movs r0, #0x34
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	mov r4, sp
	adds r4, r4, r0
	adds r4, #0x10
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	ldm r5!, {r1}
	adds r0, r4, #0
	movs r2, #5
	movs r3, #3
	bl sub_08026ADC
	movs r0, #5
	strb r0, [r4, #0x1c]
	movs r0, #6
	strb r0, [r4, #0x1d]
	movs r2, #1
	add sl, r2
	mov r3, sl
	cmp r3, #6
	bls _0801C726
	ldr r6, _0801C7B8 @ =0x080FBA2C
	add r4, sp, #0x17c
	add r5, sp, #0x1e4
_0801C764:
	ldm r6!, {r1}
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08026ADC
	adds r4, #0x34
	cmp r4, r5
	bls _0801C764
	ldr r6, _0801C7BC @ =0x080FBA1C
	add r4, sp, #0x218
	add r5, sp, #0x2b4
_0801C77E:
	ldm r6!, {r1}
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08026ADC
	adds r4, #0x34
	cmp r4, r5
	bls _0801C77E
	add r0, sp, #0x10
	movs r1, #0xe
	strb r1, [r0, #0x1c]
	ldr r0, [sp, #0x374]
	strb r1, [r0]
	ldr r2, [sp, #0x36c]
	strb r1, [r2]
	ldr r3, [sp, #0x370]
	strb r1, [r3]
	ldr r0, [sp, #0x360]
	strb r1, [r0]
	ldr r2, [sp, #0x35c]
	strb r1, [r2]
	movs r0, #7
	ldr r3, [sp, #0x364]
	strb r0, [r3]
	b _0801CB68
	.align 2, 0
_0801C7B4: .4byte 0x080FBA38
_0801C7B8: .4byte 0x080FBA2C
_0801C7BC: .4byte 0x080FBA1C
_0801C7C0:
	bl sub_08007544
	cmp r0, #0
	bne _0801C7CE
	ldr r0, _0801C808 @ =0x000514C9
	bl _08000400
_0801C7CE:
	bl sub_08007510
	cmp r0, #0
	beq _0801C7D8
	b _0801CB64
_0801C7D8:
	bl sub_08007604
	cmp r0, #0
	beq _0801C7E2
	b _0801CB64
_0801C7E2:
	movs r0, #0
	mov sl, r0
	movs r1, #0x88
	lsls r1, r1, #2
	add r1, sp
	str r1, [sp, #0x368]
	ldr r2, _0801C80C @ =0x000001A5
	add r2, sp
	str r2, [sp, #0x378]
_0801C7F4:
	mov r0, sl
	subs r0, #1
	cmp r0, #5
	bhi _0801C880
	lsls r0, r0, #2
	ldr r1, _0801C810 @ =_0801C814
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801C808: .4byte 0x000514C9
_0801C80C: .4byte 0x000001A5
_0801C810: .4byte _0801C814
_0801C814: @ jump table
	.4byte _0801C962 @ case 0
	.4byte _0801C82C @ case 1
	.4byte _0801C84C @ case 2
	.4byte _0801C962 @ case 3
	.4byte _0801C962 @ case 4
	.4byte _0801C962 @ case 5
_0801C82C:
	mov r3, sl
	lsls r5, r3, #2
	ldr r0, [sp, #0x34c]
	adds r1, r5, r0
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x13
	ldr r2, _0801C848 @ =0xFFFC0000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x1a]
	lsls r1, r1, #0x13
	movs r3, #0xc0
	lsls r3, r3, #0xc
	b _0801C864
	.align 2, 0
_0801C848: .4byte 0xFFFC0000
_0801C84C:
	mov r0, sl
	lsls r5, r0, #2
	ldr r2, [sp, #0x34c]
	adds r1, r5, r2
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x13
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r0, r0, r3
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x1a]
	lsls r1, r1, #0x13
_0801C864:
	adds r1, r1, r3
	asrs r1, r1, #0x10
	add r2, sp, #0x348
	ldr r3, _0801C87C @ =0x0000034A
	add r3, sp
	movs r4, #0x10
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_08005FC4
	b _0801C8AE
	.align 2, 0
_0801C87C: .4byte 0x0000034A
_0801C880:
	mov r0, sl
	lsls r5, r0, #2
	ldr r2, [sp, #0x34c]
	adds r1, r5, r2
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #3
	adds r0, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x1a]
	lsls r1, r1, #3
	adds r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add r2, sp, #0x348
	ldr r3, _0801C90C @ =0x0000034A
	add r3, sp
	movs r4, #0x10
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_08005FC4
_0801C8AE:
	ldr r3, [sp, #0x34c]
	adds r1, r5, r3
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #3
	adds r0, #4
	ldrh r1, [r1, #0x1a]
	lsls r1, r1, #3
	adds r1, #4
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r0, sl
	cmp r0, #0
	bne _0801C910
	add r4, sp, #0x2f8
	add r3, sp, #0x308
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #2
	adds r2, r4, #0
	bl sub_08026C40
	add r0, sp, #0x348
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0801C90C @ =0x0000034A
	add r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08004344
	b _0801C962
	.align 2, 0
_0801C90C: .4byte 0x0000034A
_0801C910:
	movs r0, #0x34
	mov r6, sl
	muls r6, r0, r6
	mov r5, sp
	adds r5, r5, r6
	adds r5, #0x10
	add r4, sp, #0x2f8
	mov r3, sl
	lsls r0, r3, #1
	adds r4, r4, r0
	add r3, sp, #0x308
	adds r3, r3, r0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08026C40
	add r0, sp, #0x348
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0801CA64 @ =0x0000034A
	add r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x18
	adds r2, r2, r6
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_0801C962:
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #6
	bhi _0801C96E
	b _0801C7F4
_0801C96E:
	movs r1, #0
	mov sl, r1
	movs r2, #0xd2
	lsls r2, r2, #2
	add r2, sp
	str r2, [sp, #0x350]
	ldr r3, _0801CA64 @ =0x0000034A
	add r3, sp
	mov r8, r3
	ldr r7, [sp, #0x34c]
	adds r7, #0x3c
_0801C984:
	ldr r0, _0801CA68 @ =gUnknown_03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C998
	mov r0, sl
	cmp r0, #0
	bne _0801CA22
_0801C998:
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7, #2]
	lsls r1, r1, #3
	adds r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	ldr r2, [sp, #0x350]
	mov r3, r8
	bl sub_08005FC4
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, #4
	ldrh r1, [r7, #2]
	lsls r1, r1, #3
	adds r1, #4
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	add r5, sp, #0x17c
	movs r0, #0x34
	mov r6, sl
	muls r6, r0, r6
	adds r5, r5, r6
	add r4, sp, #0x320
	mov r3, sl
	lsls r0, r3, #1
	adds r4, r4, r0
	add r3, sp, #0x328
	adds r3, r3, r0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08026C40
	ldr r1, [sp, #0x350]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x184
	adds r2, r2, r6
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_0801CA22:
	adds r7, #4
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #2
	bls _0801C984
	movs r1, #0
	mov sl, r1
	movs r2, #0xd2
	lsls r2, r2, #2
	add r2, sp
	str r2, [sp, #0x354]
	ldr r3, _0801CA64 @ =0x0000034A
	add r3, sp
	str r3, [sp, #0x358]
	ldr r7, [sp, #0x34c]
	adds r7, #0x48
_0801CA44:
	ldr r0, _0801CA6C @ =gUnknown_030063D8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xa6
	ldrh r0, [r0]
	mov r2, sl
	asrs r0, r2
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0801CA70
	adds r0, r1, #0
	adds r0, #0xa8
	ldrh r4, [r0]
	b _0801CA72
	.align 2, 0
_0801CA64: .4byte 0x0000034A
_0801CA68: .4byte gUnknown_03003D08
_0801CA6C: .4byte gUnknown_030063D8
_0801CA70:
	movs r4, #0
_0801CA72:
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7, #2]
	lsls r1, r1, #3
	adds r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	ldr r2, [sp, #0x354]
	ldr r3, [sp, #0x358]
	bl sub_08005FC4
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, #4
	ldrh r1, [r7, #2]
	lsls r1, r1, #3
	adds r1, #4
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	add r5, sp, #0x218
	movs r0, #0x34
	mov r6, sl
	muls r6, r0, r6
	adds r5, r5, r6
	mov r8, r4
	add r4, sp, #0x338
	mov r3, sl
	lsls r0, r3, #1
	adds r4, r4, r0
	add r3, sp, #0x340
	adds r3, r3, r0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_08026C40
	ldr r1, [sp, #0x354]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x358]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [sp, #0x368]
	adds r6, r2, r6
	ldr r2, [r6]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	mov r2, r8
	bl sub_08004344
	adds r7, #4
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #3
	bls _0801CA44
	ldr r1, [sp, #0x1c]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x1e
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x15
	movs r2, #3
	bl LoadPalette
	movs r3, #0
	mov sl, r3
	movs r2, #5
	movs r1, #6
	add r0, sp, #0x2c
_0801CB30:
	strb r2, [r0]
	strb r1, [r0, #1]
	adds r0, #0x34
	movs r3, #1
	add sl, r3
	mov r3, sl
	cmp r3, #6
	bls _0801CB30
	add r0, sp, #0x10
	movs r1, #0xe
	strb r1, [r0, #0x1c]
	ldr r0, [sp, #0x374]
	strb r1, [r0]
	ldr r2, [sp, #0x36c]
	strb r1, [r2]
	ldr r3, [sp, #0x35c]
	strb r1, [r3]
	movs r0, #7
	ldr r2, [sp, #0x364]
	strb r0, [r2]
	ldr r3, [sp, #0x378]
	strb r1, [r3]
	ldr r0, [sp, #0x370]
	strb r1, [r0]
	ldr r2, [sp, #0x360]
	strb r1, [r2]
_0801CB64:
	bl WaitFrame
_0801CB68:
	bl sub_080074CC
	cmp r0, #0
	bne _0801CB72
	b _0801C7C0
_0801CB72:
	movs r3, #0xdf
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
