	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080216E0
sub_080216E0: @ 0x080216E0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r1, _08021724 @ =gUnknown_030063D8
	ldr r0, [r1]
	ldr r3, [r0, #4]
	ldr r0, [r0]
	ldrh r2, [r0, #0xc]
	movs r4, #0
	adds r5, r1, #0
	cmp r4, r2
	bhs _08021734
	ldr r1, _08021728 @ =0x0300397C
_080216FA:
	ldrh r0, [r3, #2]
	cmp r0, #0
	bne _0802172C
	ldr r2, [r5]
	ldrh r1, [r1]
	lsls r0, r1, #4
	subs r0, r0, r1
	adds r0, r4, r0
	adds r2, #0xcc
	adds r2, r2, r0
	ldrb r1, [r2]
	ldr r0, [r3, #4]
	adds r0, r3, r0
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r7]
	b _08021734
	.align 2, 0
_08021724: .4byte gUnknown_030063D8
_08021728: .4byte 0x0300397C
_0802172C:
	adds r4, #1
	adds r3, #8
	cmp r4, r2
	blo _080216FA
_08021734:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802173C
sub_0802173C: @ 0x0802173C
	push {r4, lr}
	ldr r4, _08021774 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802175E
	movs r0, #1
	bl sub_08029068
	ldr r0, _08021778 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0xab
	movs r1, #1
	strb r1, [r0]
_0802175E:
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl Free
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021774: .4byte gUnknown_030063D8
_08021778: .4byte 0x00000BB8

	thumb_func_start sub_0802177C
sub_0802177C: @ 0x0802177C
	push {r4, r5, lr}
	ldr r0, _080217E8 @ =0x00010002
	bl GetDataRecord
	ldr r1, _080217EC @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #5
	bl CpuFastSet
	ldr r0, _080217F0 @ =0x00120002
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	ldr r3, _080217F4 @ =gPaletteBuffer
	ldr r2, _080217F8 @ =gPlayerStats
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r2, r2, r0
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
	movs r5, #0
	strh r1, [r0]
	ldr r4, _080217FC @ =gUnknown_03006418
	movs r0, #0xd0
	bl Alloc
	str r0, [r4]
	ldr r0, _08021800 @ =gUnknown_03006424
	strb r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080217E8: .4byte 0x00010002
_080217EC: .4byte 0x06008000
_080217F0: .4byte 0x00120002
_080217F4: .4byte gPaletteBuffer
_080217F8: .4byte gPlayerStats
_080217FC: .4byte gUnknown_03006418
_08021800: .4byte gUnknown_03006424

	thumb_func_start sub_08021804
sub_08021804: @ 0x08021804
	push {lr}
	ldr r0, _08021860 @ =0x00010002
	bl GetDataRecord
	ldr r1, _08021864 @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
	ldr r0, _08021868 @ =0x00120002
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	ldr r3, _0802186C @ =gPaletteBuffer
	ldr r2, _08021870 @ =gPlayerStats
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r2, r2, r0
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
	bl WaitFrame
	pop {r0}
	bx r0
	.align 2, 0
_08021860: .4byte 0x00010002
_08021864: .4byte 0x06008000
_08021868: .4byte 0x00120002
_0802186C: .4byte gPaletteBuffer
_08021870: .4byte gPlayerStats

	thumb_func_start sub_08021874
sub_08021874: @ 0x08021874
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	movs r1, #0
	ldr r0, _080218B4 @ =gUnknown_03006424
	ldrb r2, [r0]
	movs r3, #1
_08021890:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080218B8
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08021890
	movs r0, #0xff
_080218A6:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xff
	bne _080218BC
	movs r0, #0
	b _0802198E
	.align 2, 0
_080218B4: .4byte gUnknown_03006424
_080218B8:
	adds r0, r1, #0
	b _080218A6
_080218BC:
	ldr r2, _080218EC @ =gUnknown_03006418
	movs r0, #0x34
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x31
	strb r3, [r0]
	lsrs r0, r5, #1
	adds r0, #1
	adds r0, r7, r0
	strh r0, [r4, #0x28]
	lsrs r0, r6, #1
	adds r0, #1
	add r0, ip
	strh r0, [r4, #0x2a]
	cmp r5, #0
	beq _080218F0
	movs r0, #0x1c
	cmp r5, #0x1c
	bhi _080218F2
	adds r0, r5, #0
	b _080218F2
	.align 2, 0
_080218EC: .4byte gUnknown_03006418
_080218F0:
	movs r0, #1
_080218F2:
	strh r0, [r4, #0x2c]
	cmp r6, #0
	beq _08021902
	movs r0, #0x12
	cmp r6, #0x12
	bhi _08021904
	adds r0, r6, #0
	b _08021904
_08021902:
	movs r0, #1
_08021904:
	movs r6, #0
	strh r0, [r4, #0x2e]
	ldrh r2, [r4, #0x28]
	ldrh r0, [r4, #0x2c]
	lsrs r1, r0, #1
	adds r3, r1, #0
	adds r0, r2, r3
	cmp r0, #0x1e
	ble _0802191C
	movs r0, #0x1e
	subs r0, r0, r1
	strh r0, [r4, #0x28]
_0802191C:
	ldrh r2, [r4, #0x28]
	subs r0, r2, r3
	movs r5, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0802192A
	strh r1, [r4, #0x28]
_0802192A:
	ldrh r2, [r4, #0x2a]
	ldrh r0, [r4, #0x2e]
	lsrs r1, r0, #1
	adds r3, r1, #0
	adds r0, r2, r3
	cmp r0, #0x14
	ble _0802193E
	movs r0, #0x1e
	subs r0, r0, r1
	strh r0, [r4, #0x2a]
_0802193E:
	ldrh r2, [r4, #0x2a]
	subs r0, r2, r3
	ands r0, r5
	cmp r0, #0
	beq _0802194A
	strh r1, [r4, #0x2a]
_0802194A:
	adds r1, r4, #0
	adds r1, #0x30
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08021994 @ =sub_0802199C
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x14
	str r0, [r4, #8]
	str r6, [r4]
	str r6, [r4, #0x18]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r4, #0
	bl CreateThread
	ldr r2, _08021998 @ =gUnknown_03006424
	adds r1, r4, #0
	adds r1, #0x31
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
_0802198E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08021994: .4byte sub_0802199C
_08021998: .4byte gUnknown_03006424

	thumb_func_start sub_0802199C
sub_0802199C: @ 0x0802199C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp]
	adds r1, r0, #0
	adds r1, #0x30
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08021A18 @ =gBgRegsBuffer
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r0, _08021A1C @ =0x00120002
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	ldr r3, _08021A20 @ =gPaletteBuffer
	ldr r2, _08021A24 @ =gPlayerStats
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r2, r2, r1
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
	movs r7, #0
	str r7, [sp, #0x14]
_08021A00:
	ldr r0, [sp]
	adds r0, #0x30
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #5
	bls _08021A0E
	b _08021B20
_08021A0E:
	lsls r0, r1, #2
	ldr r1, _08021A28 @ =_08021A2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021A18: .4byte gBgRegsBuffer
_08021A1C: .4byte 0x00120002
_08021A20: .4byte gPaletteBuffer
_08021A24: .4byte gPlayerStats
_08021A28: .4byte _08021A2C
_08021A2C: @ jump table
	.4byte _08021A44 @ case 0
	.4byte _08021A5A @ case 1
	.4byte _08021A74 @ case 2
	.4byte _08021ABC @ case 3
	.4byte _08021AC2 @ case 4
	.4byte _08021B0A @ case 5
_08021A44:
	ldr r2, _08021A70 @ =gUnknown_03006424
	ldr r0, [sp]
	adds r0, #0x31
	movs r1, #1
	ldrb r0, [r0]
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	bl ThreadExit
_08021A5A:
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #2
	strb r0, [r4]
	movs r0, #0
	bl sub_0800EE44
	b _08021B20
	.align 2, 0
_08021A70: .4byte gUnknown_03006424
_08021A74:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0
	bl sub_0800EE44
	ldr r0, [sp, #4]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r2, [sp]
	ldrh r2, [r2, #0x2c]
	cmp r0, r2
	blo _08021B20
	ldr r7, [sp]
	ldrh r7, [r7, #0x2c]
	str r7, [sp, #4]
	ldr r0, [sp, #8]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [sp]
	ldrh r1, [r1, #0x2e]
	cmp r0, r1
	blo _08021B20
	ldr r2, [sp]
	ldrh r2, [r2, #0x2e]
	str r2, [sp, #8]
	movs r0, #3
	strb r0, [r4]
	b _08021B20
_08021ABC:
	bl sub_0800ED74
	b _08021B20
_08021AC2:
	movs r0, #0
	bl sub_0800EE44
	ldr r0, [sp, #8]
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08021AE0
	movs r7, #0
	str r7, [sp, #8]
_08021AE0:
	ldr r0, [sp, #4]
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _08021AF4
	movs r0, #0
	str r0, [sp, #4]
_08021AF4:
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _08021B2C
	ldr r2, [sp, #8]
	cmp r2, #0
	bne _08021B20
	movs r0, #5
	strb r0, [r4]
	movs r7, #0
	str r7, [sp, #0x14]
	b _08021B20
_08021B0A:
	ldr r0, [sp, #0x14]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x14]
	cmp r0, #0x1e
	bls _08021B1A
	movs r0, #0
	strb r0, [r4]
_08021B1A:
	movs r0, #0
	bl sub_0800EE44
_08021B20:
	ldr r2, [sp, #4]
	cmp r2, #0
	bne _08021B2C
	ldr r7, [sp, #8]
	cmp r7, #0
	beq _08021C1E
_08021B2C:
	ldr r0, [sp, #4]
	lsrs r2, r0, #1
	ldr r7, [sp]
	ldrh r1, [r7, #0x28]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	movs r3, #1
	ldr r0, [sp, #4]
	ands r0, r3
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [sp, #8]
	lsrs r2, r0, #1
	ldrh r1, [r7, #0x2a]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, [sp, #8]
	ands r0, r3
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _08021C24 @ =gUnknown_03005DF0
	ldr r0, [sp, #0xc]
	subs r0, #1
	lsls r6, r0, #1
	ldr r3, [sp, #0x10]
	subs r3, #1
	lsls r3, r3, #6
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r1, _08021C28 @ =0x0000F001
	strh r1, [r0]
	adds r2, r5, #1
	lsls r2, r2, #6
	adds r0, r6, r2
	adds r0, r0, r7
	adds r1, #6
	strh r1, [r0]
	mov r0, ip
	adds r0, #1
	lsls r4, r0, #1
	adds r3, r4, r3
	adds r3, r3, r7
	ldr r0, _08021C2C @ =0x0000F003
	strh r0, [r3]
	adds r2, r4, r2
	adds r2, r2, r7
	adds r0, #6
	strh r0, [r2]
	ldr r1, [sp, #0x10]
	cmp r1, r5
	bhi _08021C1E
	str r6, [sp, #0x18]
	str r4, [sp, #0x1c]
_08021BB2:
	lsls r3, r1, #6
	ldr r2, [sp, #0x18]
	adds r0, r2, r3
	ldr r7, _08021C24 @ =gUnknown_03005DF0
	adds r0, r0, r7
	ldr r2, _08021C30 @ =0xFFFFF004
	strh r2, [r0]
	ldr r7, [sp, #0x1c]
	adds r0, r7, r3
	ldr r2, _08021C24 @ =gUnknown_03005DF0
	adds r0, r0, r2
	ldr r7, _08021C34 @ =0xFFFFF006
	strh r7, [r0]
	ldr r2, [sp, #0xc]
	adds r1, #1
	mov sb, r1
	cmp r2, ip
	bhi _08021C14
	ldr r4, _08021C24 @ =gUnknown_03005DF0
	ldr r0, [sp, #0x10]
	subs r0, #1
	lsls r0, r0, #6
	str r0, [sp, #0x20]
	ldr r0, _08021C38 @ =0x0000F005
	mov sl, r0
	adds r6, r3, #0
	adds r0, r5, #1
	lsls r3, r0, #6
	ldr r1, _08021C3C @ =0x0000F008
	mov r8, r1
_08021BEE:
	lsls r1, r2, #1
	ldr r7, [sp, #0x20]
	adds r0, r1, r7
	adds r0, r0, r4
	ldr r7, _08021C40 @ =0xFFFFF002
	strh r7, [r0]
	adds r0, r1, r6
	adds r0, r0, r4
	mov r7, sl
	strh r7, [r0]
	adds r1, r1, r3
	adds r1, r1, r4
	mov r0, r8
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, ip
	bls _08021BEE
_08021C14:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	bls _08021BB2
_08021C1E:
	bl WaitFrame
	b _08021A00
	.align 2, 0
_08021C24: .4byte gUnknown_03005DF0
_08021C28: .4byte 0x0000F001
_08021C2C: .4byte 0x0000F003
_08021C30: .4byte 0xFFFFF004
_08021C34: .4byte 0xFFFFF006
_08021C38: .4byte 0x0000F005
_08021C3C: .4byte 0x0000F008
_08021C40: .4byte 0xFFFFF002
