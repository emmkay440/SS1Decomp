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
	ldr r4, _080217FC @ =0x03006418
	movs r0, #0xd0
	bl Alloc
	str r0, [r4]
	ldr r0, _08021800 @ =0x03006424
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
_080217FC: .4byte 0x03006418
_08021800: .4byte 0x03006424

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
	ldr r0, _080218B4 @ =0x03006424
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
_080218B4: .4byte 0x03006424
_080218B8:
	adds r0, r1, #0
	b _080218A6
_080218BC:
	ldr r2, _080218EC @ =0x03006418
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
_080218EC: .4byte 0x03006418
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
	ldr r2, _08021998 @ =0x03006424
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
_08021998: .4byte 0x03006424

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
	ldr r2, _08021A70 @ =0x03006424
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
_08021A70: .4byte 0x03006424
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
	ldr r7, _08021C24 @ =0x03005DF0
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
	ldr r7, _08021C24 @ =0x03005DF0
	adds r0, r0, r7
	ldr r2, _08021C30 @ =0xFFFFF004
	strh r2, [r0]
	ldr r7, [sp, #0x1c]
	adds r0, r7, r3
	ldr r2, _08021C24 @ =0x03005DF0
	adds r0, r0, r2
	ldr r7, _08021C34 @ =0xFFFFF006
	strh r7, [r0]
	ldr r2, [sp, #0xc]
	adds r1, #1
	mov sb, r1
	cmp r2, ip
	bhi _08021C14
	ldr r4, _08021C24 @ =0x03005DF0
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
_08021C24: .4byte 0x03005DF0
_08021C28: .4byte 0x0000F001
_08021C2C: .4byte 0x0000F003
_08021C30: .4byte 0xFFFFF004
_08021C34: .4byte 0xFFFFF006
_08021C38: .4byte 0x0000F005
_08021C3C: .4byte 0x0000F008
_08021C40: .4byte 0xFFFFF002

	thumb_func_start sub_08021C44
sub_08021C44: @ 0x08021C44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r7, _08021CD4 @ =0x03006424
	movs r0, #1
	mov r8, r0
_08021C52:
	ldrb r0, [r7]
	asrs r0, r5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08021C84
	ldr r6, _08021CD8 @ =0x03006418
	movs r0, #0x34
	adds r4, r5, #0
	muls r4, r0, r4
	ldr r0, [r6]
	adds r0, r0, r4
	bl IsThreadInList
	cmp r0, #0
	beq _08021C7A
	ldr r0, [r6]
	adds r0, r0, r4
	bl KillThread
_08021C7A:
	mov r1, r8
	lsls r1, r5
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
_08021C84:
	adds r5, #1
	cmp r5, #3
	bls _08021C52
	movs r5, #0
	ldr r7, _08021CDC @ =0x03006420
	movs r0, #1
	mov r8, r0
	movs r6, #0
_08021C94:
	ldrb r0, [r7]
	asrs r0, r5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08021CC0
	ldr r4, _08021CE0 @ =0x0300641C
	ldr r0, [r4]
	adds r0, r0, r6
	bl IsThreadInList
	cmp r0, #0
	beq _08021CB6
	ldr r0, [r4]
	adds r0, r0, r6
	bl KillThread
_08021CB6:
	mov r1, r8
	lsls r1, r5
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
_08021CC0:
	adds r6, #0x88
	adds r5, #1
	cmp r5, #3
	bls _08021C94
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021CD4: .4byte 0x03006424
_08021CD8: .4byte 0x03006418
_08021CDC: .4byte 0x03006420
_08021CE0: .4byte 0x0300641C

	thumb_func_start StartMessageWindow
StartMessageWindow: @ 0x08021CE4
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	movs r1, #0
	ldr r0, _08021D18 @ =0x03006420
	ldrb r2, [r0]
	movs r3, #1
_08021CF6:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08021D1C
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08021CF6
	movs r0, #0xff
_08021D0C:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne _08021D20
	b _08021E68
	.align 2, 0
_08021D18: .4byte 0x03006420
_08021D1C:
	adds r0, r1, #0
	b _08021D0C
_08021D20:
	ldr r1, _08021D68 @ =0x0300641C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x70
	strb r2, [r0]
	movs r0, #0xd
	adds r3, r7, #0
	muls r3, r0, r3
	asrs r3, r3, #3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x1b
	bl sub_08021874
	str r0, [r6, #0x28]
	movs r0, #2
	rsbs r0, r0, #0
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bne _08021DD4
	ldr r0, _08021D6C @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08021DD4
	lsls r0, r0, #2
	ldr r1, _08021D70 @ =_08021D74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021D68: .4byte 0x0300641C
_08021D6C: .4byte 0x03003CA8
_08021D70: .4byte _08021D74
_08021D74: @ jump table
	.4byte _08021D88 @ case 0
	.4byte _08021D94 @ case 1
	.4byte _08021DA0 @ case 2
	.4byte _08021DAC @ case 3
	.4byte _08021DC4 @ case 4
_08021D88:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _08021D90 @ =0x0010006A
	b _08021DB2
	.align 2, 0
_08021D90: .4byte 0x0010006A
_08021D94:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _08021D9C @ =0x00100073
	b _08021DB2
	.align 2, 0
_08021D9C: .4byte 0x00100073
_08021DA0:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _08021DA8 @ =0x0010007B
	b _08021DB2
	.align 2, 0
_08021DA8: .4byte 0x0010007B
_08021DAC:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _08021DC0 @ =0x00100083
_08021DB2:
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	bl sub_08026ADC
	b _08021DD4
	.align 2, 0
_08021DC0: .4byte 0x00100083
_08021DC4:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _08021E5C @ =0x0010008D
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	bl sub_08026ADC
_08021DD4:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _08021E68
	adds r1, r6, #0
	adds r1, #0x69
	movs r4, #0
	movs r0, #0
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x6a
	strb r5, [r0]
	subs r0, #2
	strb r7, [r0]
	ldr r0, [sp, #0x18]
	bl GetDataRecord
	str r0, [r6, #0x60]
	adds r0, r6, #0
	adds r0, #0x6c
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r5, #1
	str r5, [r6, #0x74]
	adds r0, #0x16
	ldr r1, [sp, #0x14]
	str r1, [r0]
	subs r0, #4
	strh r4, [r0]
	subs r0, #8
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	str r4, [r6, #0x64]
	ldr r0, _08021E60 @ =MessageWindowThread
	str r0, [r6, #0xc]
	str r4, [r6, #0x24]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r6, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x13
	str r0, [r6, #8]
	str r4, [r6]
	str r4, [r6, #0x18]
	adds r0, r6, #0
	adds r1, r6, #0
	bl CreateThread
	ldr r1, _08021E64 @ =0x03006420
	adds r0, r6, #0
	adds r0, #0x70
	ldrb r0, [r0]
	lsls r5, r0
	ldrb r0, [r1]
	orrs r5, r0
	strb r5, [r1]
	adds r0, r6, #0
	b _08021E6A
	.align 2, 0
_08021E5C: .4byte 0x0010008D
_08021E60: .4byte MessageWindowThread
_08021E64: .4byte 0x03006420
_08021E68:
	movs r0, #0
_08021E6A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08021E70
sub_08021E70: @ 0x08021E70
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	movs r1, #0
	ldr r0, _08021EA4 @ =0x03006420
	ldrb r2, [r0]
	movs r3, #1
_08021E82:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08021EA8
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08021E82
	movs r0, #0xff
_08021E98:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne _08021EAC
_08021EA0:
	movs r0, #0
	b _08021FFE
	.align 2, 0
_08021EA4: .4byte 0x03006420
_08021EA8:
	adds r0, r1, #0
	b _08021E98
_08021EAC:
	movs r4, #0
	ldr r1, _08021F50 @ =0x0300641C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r5, r1, r0
	adds r0, r5, #0
	adds r0, #0x70
	strb r2, [r0]
	movs r0, #0xd
	adds r3, r7, #0
	muls r3, r0, r3
	asrs r3, r3, #3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x1b
	bl sub_08021874
	str r0, [r5, #0x28]
	movs r0, #2
	rsbs r0, r0, #0
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bne _08021EF2
	adds r0, r5, #0
	adds r0, #0x2c
	ldr r1, _08021F54 @ =0x00100047
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	bl sub_08026ADC
_08021EF2:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _08021EA0
	adds r0, r5, #0
	adds r0, #0x69
	strb r4, [r0]
	adds r0, #1
	strb r6, [r0]
	subs r0, #2
	strb r7, [r0]
	ldr r0, [sp, #0x18]
	bl GetDataRecord
	str r0, [r5, #0x60]
	adds r0, r5, #0
	adds r0, #0x6c
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r0, #1
	str r0, [r5, #0x74]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [sp, #0x14]
	str r1, [r0]
	subs r0, #4
	strh r4, [r0]
	subs r0, #8
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, [sp, #0x1c]
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08021F88
	cmp r0, #3
	bgt _08021F58
	cmp r0, #2
	beq _08021F62
	b _08021FC0
	.align 2, 0
_08021F50: .4byte 0x0300641C
_08021F54: .4byte 0x00100047
_08021F58:
	cmp r0, #4
	beq _08021F6C
	cmp r0, #5
	beq _08021FA4
	b _08021FC0
_08021F62:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	b _08021FAC
_08021F6C:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	ldr r1, _08021F84 @ =0x03003CA8
	ldrh r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	b _08021FBA
	.align 2, 0
_08021F84: .4byte 0x03003CA8
_08021F88:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	ldr r1, _08021FA0 @ =0x03003CA8
	ldrh r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	b _08021FBA
	.align 2, 0
_08021FA0: .4byte 0x03003CA8
_08021FA4:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
_08021FAC:
	orrs r0, r1
	bl GetDataRecord
	ldr r1, _08022004 @ =0x03003CA8
	ldrh r2, [r1]
	lsls r1, r2, #3
	subs r1, r1, r2
_08021FBA:
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x64]
_08021FC0:
	ldr r0, _08022008 @ =MessageWindowThread
	str r0, [r5, #0xc]
	movs r4, #0
	str r4, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r5, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x10]
	movs r0, #0x13
	str r0, [r5, #8]
	str r4, [r5]
	str r4, [r5, #0x18]
	adds r0, r5, #0
	adds r1, r5, #0
	bl CreateThread
	ldr r2, _0802200C @ =0x03006420
	adds r1, r5, #0
	adds r1, #0x70
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
_08021FFE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08022004: .4byte 0x03003CA8
_08022008: .4byte MessageWindowThread
_0802200C: .4byte 0x03006420

	thumb_func_start MessageWindowThread
MessageWindowThread: @ 0x08022010
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1cc
	adds r7, r0, #0
	add r4, sp, #0x19c
	ldr r1, _08022094 @ =0x080548B8
	adds r0, r4, #0
	movs r2, #4
	bl memcpy
	movs r1, #0
	movs r0, #1
	strh r0, [r4]
	strh r1, [r4, #2]
	ldr r0, [r7, #0x60]
	movs r1, #0xa
	adds r1, r1, r0
	mov sb, r1
	movs r2, #0
	str r2, [sp, #0x1a8]
	movs r5, #0
	movs r3, #0xd0
	lsls r3, r3, #1
	add r3, sp
	mov r8, r3
	adds r4, r0, #0
	movs r3, #0
_0802204C:
	movs r6, #0
	mov sl, r6
	adds r1, r2, #0
_08022052:
	mov r6, sl
	lsls r0, r6, #1
	adds r0, r0, r1
	add r0, sp
	adds r0, #4
	strh r3, [r0]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0x21
	bls _08022052
	adds r2, #0x44
	adds r5, #1
	cmp r5, #4
	ble _0802204C
	ldr r0, [r4]
	cmp r0, #0
	beq _080220C8
	bl sub_080076A8
	cmp r0, #0
	beq _0802209C
	add r0, sp, #0x158
	ldr r1, _08022098 @ =0x00100065
	movs r3, #1
	rsbs r3, r3, #0
	movs r2, #0xd
	bl sub_08026ADC
	b _080220AA
	.align 2, 0
_08022094: .4byte 0x080548B8
_08022098: .4byte 0x00100065
_0802209C:
	add r0, sp, #0x158
	ldr r1, _08022128 @ =0x0010005D
	movs r3, #1
	rsbs r3, r3, #0
	movs r2, #0xd
	bl sub_08026ADC
_080220AA:
	ldr r0, [r7, #0x60]
	ldr r1, [r0, #4]
	lsls r1, r1, #5
	ldr r0, [sp, #0x1c8]
	adds r1, r0, r1
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	ldr r1, [r7, #0x60]
	add r0, sp, #0x174
	ldr r1, [r1, #4]
	adds r0, r0, r1
	movs r1, #0xd
	strb r1, [r0]
_080220C8:
	bl GetExpToNextLevel
	add r5, sp, #0x1a0
	str r0, [r5]
	ldr r1, _0802212C @ =0x000186A0
	mov r0, r8
	bl sub_080004A4
	add r4, sp, #0x18c
	movs r6, #0
	strh r0, [r4]
	ldr r1, _08022130 @ =0x00002710
	mov r0, r8
	bl sub_080004A4
	strh r0, [r4, #2]
	movs r1, #0xfa
	lsls r1, r1, #2
	mov r0, r8
	bl sub_080004A4
	strh r0, [r4, #4]
	mov r0, r8
	movs r1, #0x64
	bl sub_080004A4
	strh r0, [r4, #6]
	mov r0, r8
	movs r1, #0xa
	bl sub_080004A4
	strh r0, [r4, #8]
	ldr r0, [r5]
	strh r0, [r4, #0xa]
	strh r6, [r4, #0xc]
	movs r1, #0
	str r1, [sp, #0x1bc]
	movs r3, #0
	movs r5, #0
	movs r1, #0xff
_08022118:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08022134
	ldr r2, [sp, #0x1bc]
	cmp r2, #0
	bne _08022134
	strh r1, [r4]
	b _08022146
	.align 2, 0
_08022128: .4byte 0x0010005D
_0802212C: .4byte 0x000186A0
_08022130: .4byte 0x00002710
_08022134:
	ldrh r0, [r4]
	adds r0, #0xef
	strh r0, [r4]
	ldr r6, [sp, #0x1bc]
	cmp r6, #0
	bne _08022142
	adds r3, r5, #0
_08022142:
	movs r0, #1
	str r0, [sp, #0x1bc]
_08022146:
	adds r4, #2
	adds r5, #1
	cmp r5, #5
	ble _08022118
	movs r5, #0
	cmp r3, #5
	bgt _0802216A
	add r1, sp, #0x18c
	lsls r0, r3, #1
	adds r2, r1, r0
_0802215A:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r3, #1
	adds r1, #2
	adds r5, #1
	cmp r3, #5
	ble _0802215A
_0802216A:
	add r0, sp, #0x18c
	lsls r1, r5, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	str r1, [sp, #0x1c0]
	movs r2, #0
	str r2, [sp, #0x1bc]
	movs r3, #1
	str r3, [sp, #0x1ac]
	movs r4, #0
	str r4, [sp, #0x1b0]
	movs r5, #0
	str r5, [sp, #0x1b4]
_08022186:
	ldr r0, [r7, #0x74]
	cmp r0, #7
	bls _0802218E
	b _08022772
_0802218E:
	lsls r0, r0, #2
	ldr r1, _08022198 @ =_0802219C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022198: .4byte _0802219C
_0802219C: @ jump table
	.4byte _080221BC @ case 0
	.4byte _080221D2 @ case 1
	.4byte _08022772 @ case 2
	.4byte _080221F8 @ case 3
	.4byte _08022512 @ case 4
	.4byte _080225CC @ case 5
	.4byte _080225E2 @ case 6
	.4byte _08022758 @ case 7
_080221BC:
	ldr r2, _080221F4 @ =0x03006420
	adds r0, r7, #0
	adds r0, #0x70
	movs r1, #1
	ldrb r0, [r0]
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	bl ThreadExit
_080221D2:
	ldr r0, [r7, #0x28]
	movs r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #3
	bne _080221E0
	movs r1, #1
_080221E0:
	cmp r1, #0
	bne _080221E6
	b _08022772
_080221E6:
	movs r6, #0
	mov sl, r6
	movs r0, #1
	str r0, [sp, #0x1a8]
	movs r1, #0
	str r1, [sp, #0x1a4]
	b _080225DC
	.align 2, 0
_080221F4: .4byte 0x03006420
_080221F8:
	mov r2, sb
	ldrh r4, [r2]
	cmp r4, #0
	bne _08022278
	ldr r0, [r7, #0x60]
	ldrh r0, [r0, #8]
	subs r0, #1
	adds r3, r7, #0
	adds r3, #0x6c
	ldrh r2, [r3]
	cmp r0, r2
	bgt _08022250
	movs r0, #6
	str r0, [r7, #0x74]
	ldr r0, _0802222C @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #0
	bne _08022230
	adds r1, r7, #0
	adds r1, #0x6e
	ldrh r0, [r1]
	cmp r0, #0xf
	bhi _08022228
	b _08022772
_08022228:
	b _0802223C
	.align 2, 0
_0802222C: .4byte 0x03003CA8
_08022230:
	adds r1, r7, #0
	adds r1, #0x6e
	ldrh r0, [r1]
	cmp r0, #0x1f
	bhi _0802223C
	b _08022772
_0802223C:
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	strh r4, [r1]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	b _08022772
_08022250:
	mov r1, sl
	adds r1, #1
	adds r0, r7, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r1, r0
	blt _08022264
	movs r0, #4
	str r0, [r7, #0x74]
	b _08022772
_08022264:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r2, #1
	strh r0, [r3]
	adds r0, r7, #0
	adds r0, #0x6e
	strh r4, [r0]
	movs r3, #2
	add sb, r3
_08022278:
	ldr r0, [sp, #0x1ac]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1ac]
	cmp r0, #0xff
	beq _08022288
	b _08022772
_08022288:
	movs r0, #0x11
	bl PlaySE
	mov r5, sb
	ldrh r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080222E4
	adds r3, r7, #0
	adds r3, #0x6e
	ldrh r1, [r3]
	lsls r1, r1, #1
	mov r6, sl
	lsls r2, r6, #4
	adds r0, r2, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sp
	adds r1, #4
	ldr r4, [sp, #0x1c0]
	lsls r0, r4, #1
	ldr r5, _080222E0 @ =gPlayerStats
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r4, r3, #0
	mov ip, r2
	cmp r0, #0
	bne _080223B0
	movs r6, #2
	add sb, r6
	movs r0, #0
	str r0, [sp, #0x1c0]
	b _080223B0
	.align 2, 0
_080222E0: .4byte gPlayerStats
_080222E4:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08022332
	adds r4, r7, #0
	adds r4, #0x6e
	ldrh r1, [r4]
	lsls r1, r1, #1
	mov r2, sl
	lsls r3, r2, #4
	adds r0, r3, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r2, sp
	adds r2, r2, r1
	adds r2, #4
	add r1, sp, #0x18c
	ldr r5, [sp, #0x1bc]
	lsls r0, r5, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1bc]
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	mov ip, r3
	cmp r0, #0
	bne _080223B0
	movs r6, #2
	add sb, r6
	movs r0, #0
	str r0, [sp, #0x1bc]
	b _080223B0
_08022332:
	ldr r5, [r7, #0x64]
	cmp r5, #0
	beq _0802238E
	adds r3, r7, #0
	adds r3, #0x6e
	ldrh r1, [r3]
	lsls r1, r1, #1
	mov r4, sl
	lsls r2, r4, #4
	adds r0, r2, r4
	lsls r6, r0, #2
	adds r1, r1, r6
	add r1, sp
	adds r1, #4
	ldr r4, [sp, #0x1c0]
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r4, r3, #0
	mov ip, r2
	cmp r0, #0
	bne _080223B0
	str r0, [r7, #0x64]
	movs r5, #0
	str r5, [sp, #0x1c0]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r6
	add r0, sp
	adds r0, #4
	add r6, sp, #0x1ac
	ldrh r6, [r6]
	strh r6, [r0]
	b _080223B0
_0802238E:
	adds r3, r7, #0
	adds r3, #0x6e
	ldrh r1, [r3]
	lsls r1, r1, #1
	mov r0, sl
	lsls r2, r0, #4
	adds r0, r2, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r0, sp
	adds r0, r0, r1
	adds r0, #4
	strh r4, [r0]
	movs r1, #2
	add sb, r1
	adds r4, r3, #0
	mov ip, r2
_080223B0:
	ldrh r0, [r4]
	adds r0, #1
	movs r1, #0
	strh r0, [r4]
	ldrh r0, [r4]
	lsls r0, r0, #1
	mov r5, ip
	add r5, sl
	lsls r6, r5, #2
	adds r0, r0, r6
	add r0, sp
	adds r0, #4
	strh r1, [r0]
	ldr r0, _08022438 @ =gKeysHeld
	ldrh r0, [r0]
	cmp r0, #0
	bne _080223D4
	b _0802250C
_080223D4:
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	blt _080223E0
	b _0802250C
_080223E0:
	mov r2, sb
	ldrh r1, [r2]
	cmp r1, #0
	bne _080223EA
	b _080224F2
_080223EA:
	adds r2, r4, #0
	str r5, [sp, #0x1c4]
	adds r3, r6, #0
	movs r5, #0xc6
	lsls r5, r5, #1
	add r5, sp
	mov r8, r5
_080223F8:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022440
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r6, [sp, #0x1c0]
	lsls r0, r6, #1
	ldr r5, _0802243C @ =gPlayerStats
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _080224E4
	movs r6, #2
	add sb, r6
	movs r0, #0
	str r0, [sp, #0x1c0]
	b _080224E4
	.align 2, 0
_08022438: .4byte gKeysHeld
_0802243C: .4byte gPlayerStats
_08022440:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0802247E
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r5, [sp, #0x1bc]
	lsls r0, r5, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1bc]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	cmp r0, #0
	bne _080224E4
	movs r6, #2
	add sb, r6
	movs r0, #0
	str r0, [sp, #0x1bc]
	b _080224E4
_0802247E:
	ldr r5, [r7, #0x64]
	cmp r5, #0
	beq _080224D4
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r1, [sp, #0x1c4]
	lsls r1, r1, #2
	str r1, [sp, #0x1c8]
	adds r0, r0, r1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r6, [sp, #0x1c0]
	lsls r0, r6, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _080224E4
	str r0, [r7, #0x64]
	movs r0, #0
	str r0, [sp, #0x1c0]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	lsls r0, r0, #1
	ldr r1, [sp, #0x1c8]
	adds r0, r0, r1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	movs r0, #0xff
	strh r0, [r1]
	b _080224E4
_080224D4:
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	add r0, sp
	adds r0, #4
	strh r1, [r0]
	movs r5, #2
	add sb, r5
_080224E4:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	mov r6, sb
	ldrh r1, [r6]
	cmp r1, #0
	bne _080223F8
_080224F2:
	ldrh r1, [r4]
	lsls r1, r1, #1
	mov r0, ip
	add r0, sl
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sp
	adds r1, #4
	movs r0, #0
	strh r0, [r1]
	movs r0, #5
	str r0, [sp, #0x1ac]
	b _08022772
_0802250C:
	movs r1, #5
	str r1, [sp, #0x1ac]
	b _08022772
_08022512:
	bl GetMultiplayerId
	ldr r3, _08022570 @ =gKeysNew
	ldr r2, _08022574 @ =gPlayers
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r3]
	ldrh r0, [r0, #6]
	ands r0, r1
	adds r3, r7, #0
	adds r3, #0x84
	cmp r0, #0
	bne _08022534
	ldr r0, [r3]
	cmp r0, #0
	blt _080225BC
_08022534:
	ldr r0, [r3]
	cmp r0, #0
	bge _08022578
	add r0, sp, #4
	movs r1, #0
	strh r1, [r0]
	add r0, sp, #0x48
	strh r1, [r0]
	mov sl, r1
	movs r0, #3
	str r0, [r7, #0x74]
	movs r2, #0
	str r2, [sp, #0x1a4]
	movs r3, #2
	add sb, r3
	adds r1, r7, #0
	adds r1, #0x6c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x6e
	mov r4, sl
	strh r4, [r0]
	movs r5, #0xf
	str r5, [sp, #0x1ac]
	movs r6, #0
	str r6, [sp, #0x1b4]
	b _08022772
	.align 2, 0
_08022570: .4byte gKeysNew
_08022574: .4byte gPlayers
_08022578:
	ldr r0, [sp, #0x1b0]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x1b0]
	cmp r0, #0x3c
	bhi _08022586
	b _08022772
_08022586:
	movs r2, #0
	str r2, [sp, #0x1b0]
	add r0, sp, #4
	strh r2, [r0]
	add r0, sp, #0x48
	add r4, sp, #0x1b0
	ldrh r4, [r4]
	strh r4, [r0]
	mov sl, r2
	movs r0, #3
	str r0, [r7, #0x74]
	movs r5, #0
	str r5, [sp, #0x1a4]
	movs r6, #2
	add sb, r6
	adds r1, r7, #0
	adds r1, #0x6c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x6e
	mov r1, sl
	strh r1, [r0]
	movs r2, #5
	str r2, [sp, #0x1ac]
	b _08022636
_080225BC:
	ldr r1, [sp, #0x1b8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1b8]
	cmp r1, #0x1d
	bls _08022656
	b _0802265C
_080225CC:
	ldr r0, [sp, #0x1a4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1a4]
	cmp r0, #0
	beq _080225DC
	b _08022772
_080225DC:
	movs r0, #3
	str r0, [r7, #0x74]
	b _08022772
_080225E2:
	adds r0, r7, #0
	adds r0, #0x84
	ldr r2, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	adds r3, r0, #0
	cmp r2, r1
	bne _08022674
	bl GetMultiplayerId
	ldr r3, _0802263C @ =gKeysNew
	ldr r2, _08022640 @ =gPlayers
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r3]
	ldrh r0, [r0, #6]
	ands r0, r1
	cmp r0, #0
	beq _08022648
	movs r2, #0
	str r2, [sp, #0x1a8]
	movs r0, #7
	str r0, [r7, #0x74]
	ldr r2, [r7, #0x28]
	ldr r0, _08022644 @ =0x03006424
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x31
	ldrb r0, [r0]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08022636
	adds r1, r2, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #3
	bne _08022636
	movs r0, #4
	strb r0, [r1]
_08022636:
	movs r3, #0
	str r3, [sp, #0x1b4]
	b _08022772
	.align 2, 0
_0802263C: .4byte gKeysNew
_08022640: .4byte gPlayers
_08022644: .4byte 0x03006424
_08022648:
	ldr r1, [sp, #0x1b8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1b8]
	cmp r1, #0x1d
	bhi _0802265C
_08022656:
	movs r4, #1
	str r4, [sp, #0x1b4]
	b _08022666
_0802265C:
	ldr r5, [sp, #0x1b8]
	cmp r5, #0x1d
	bls _08022666
	movs r6, #0
	str r6, [sp, #0x1b4]
_08022666:
	ldr r0, [sp, #0x1b8]
	cmp r0, #0x28
	bhi _0802266E
	b _08022772
_0802266E:
	movs r1, #0
	str r1, [sp, #0x1b8]
	b _08022772
_08022674:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0802271C
	ldr r0, _080226A0 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080226A4
	adds r4, r7, #0
	adds r4, #0x80
	ldrh r0, [r4]
	cmp r0, #0
	beq _08022698
	movs r0, #0xe
	bl PlaySE
_08022698:
	movs r0, #0
	strh r0, [r4]
	b _08022772
	.align 2, 0
_080226A0: .4byte gKeysNew
_080226A4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080226C2
	adds r4, r7, #0
	adds r4, #0x80
	ldrh r0, [r4]
	cmp r0, #1
	beq _080226BC
	movs r0, #0xe
	bl PlaySE
_080226BC:
	movs r0, #1
	strh r0, [r4]
	b _08022772
_080226C2:
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080226D8
	movs r0, #0xf
	bl PlaySE
	movs r2, #0
	str r2, [sp, #0x1a8]
	b _080226F0
_080226D8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08022772
	movs r0, #0x10
	bl PlaySE
	adds r0, r7, #0
	adds r0, #0x80
	strh r4, [r0]
	movs r3, #0
	str r3, [sp, #0x1a8]
_080226F0:
	movs r0, #7
	str r0, [r7, #0x74]
	ldr r2, [r7, #0x28]
	ldr r0, _08022718 @ =0x03006424
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x31
	ldrb r1, [r1]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08022772
	adds r1, r2, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #3
	bne _08022772
	movs r0, #4
	strb r0, [r1]
	b _08022772
	.align 2, 0
_08022718: .4byte 0x03006424
_0802271C:
	subs r0, r2, #1
	str r0, [r3]
	cmp r2, #0
	bgt _08022772
	movs r4, #0
	str r4, [sp, #0x1a8]
	ldr r2, [r7, #0x28]
	ldr r0, _08022754 @ =0x03006424
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x31
	ldrb r0, [r0]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0802274C
	adds r1, r2, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #3
	bne _0802274C
	movs r0, #4
	strb r0, [r1]
_0802274C:
	movs r0, #7
	str r0, [r7, #0x74]
	b _08022772
	.align 2, 0
_08022754: .4byte 0x03006424
_08022758:
	movs r5, #0
	str r5, [sp, #0x1a8]
	ldr r0, [r7, #0x28]
	movs r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802276A
	movs r1, #1
_0802276A:
	cmp r1, #0
	beq _08022772
	ldr r6, [sp, #0x1a8]
	str r6, [r7, #0x74]
_08022772:
	ldr r0, [sp, #0x1a8]
	cmp r0, #0
	bne _0802277A
	b _080228CE
_0802277A:
	ldr r1, [sp, #0x1b4]
	cmp r1, #0
	beq _0802278A
	add r0, sp, #0x19c
	movs r1, #0x70
	movs r2, #0x8e
	bl sub_0800EB30
_0802278A:
	movs r5, #0
	cmp r5, sl
	bgt _080227C2
	add r4, sp, #4
_08022792:
	lsls r0, r5, #4
	adds r1, r7, #0
	adds r1, #0x69
	ldrb r1, [r1]
	lsls r1, r1, #3
	movs r2, #4
	orrs r1, r2
	adds r2, r7, #0
	adds r2, #0x6a
	ldrb r2, [r2]
	lsls r2, r2, #3
	ldr r3, [sp, #0x1a4]
	adds r2, r3, r2
	adds r2, #7
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_0800EB30
	adds r4, #0x44
	adds r5, #1
	cmp r5, sl
	ble _08022792
_080227C2:
	ldr r1, [r7, #0x60]
	ldr r0, [r1]
	cmp r0, #0
	beq _080227FC
	add r4, sp, #0x158
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	adds r0, r7, #0
	adds r0, #0x69
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, #0x18
	adds r0, #1
	ldrb r2, [r0]
	lsls r2, r2, #3
	subs r2, #0x1c
	ldr r0, [r7, #0x60]
	ldrh r3, [r0, #4]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08026B90
_080227FC:
	ldr r0, [r7, #0x74]
	cmp r0, #6
	bne _080228CE
	adds r0, r7, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080228CE
	adds r5, r7, #0
	adds r5, #0x2c
	movs r4, #0x78
	adds r4, r4, r7
	mov r8, r4
	adds r3, r7, #0
	adds r3, #0x7c
	movs r4, #1
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #4
	mov r2, r8
	bl sub_08026C40
	adds r6, r7, #0
	adds r6, #0x7a
	adds r3, r7, #0
	adds r3, #0x7e
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #5
	adds r2, r6, #0
	bl sub_08026C40
	adds r0, r7, #0
	adds r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802288E
	adds r4, r7, #0
	adds r4, #0x6a
	ldrb r2, [r4]
	lsls r2, r2, #3
	subs r2, #0x10
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x78
	movs r3, #9
	bl sub_08026B90
	ldrb r2, [r4]
	lsls r2, r2, #3
	subs r2, #0x10
	ldrh r0, [r6]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x88
	movs r3, #5
	bl sub_08026BC4
	ldrb r2, [r4]
	lsls r2, r2, #3
	subs r2, #0x10
	mov r6, r8
	ldrh r0, [r6]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x68
	movs r3, #4
	bl sub_08026B90
	b _080228CE
_0802288E:
	adds r4, r7, #0
	adds r4, #0x6a
	ldrb r2, [r4]
	lsls r2, r2, #3
	subs r2, #0x10
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x78
	movs r3, #8
	bl sub_08026B90
	ldrb r2, [r4]
	lsls r2, r2, #3
	subs r2, #0x10
	ldrh r0, [r6]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x88
	movs r3, #5
	bl sub_08026B90
	ldrb r2, [r4]
	lsls r2, r2, #3
	subs r2, #0x10
	mov r1, r8
	ldrh r0, [r1]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x68
	movs r3, #4
	bl sub_08026BC4
_080228CE:
	bl WaitFrame
	b _08022186

	thumb_func_start sub_080228D4
sub_080228D4: @ 0x080228D4
	push {r4, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _08022924
	ldr r1, [r3, #0x28]
	movs r0, #0
	adds r4, r1, #0
	adds r4, #0x30
	ldrb r2, [r4]
	cmp r2, #3
	bne _080228EC
	movs r0, #1
_080228EC:
	cmp r0, #0
	beq _08022914
	ldr r0, _08022910 @ =0x03006424
	ldrb r0, [r0]
	adds r1, #0x31
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802290A
	cmp r2, #3
	bne _0802290A
	movs r0, #4
	strb r0, [r4]
_0802290A:
	movs r0, #7
	str r0, [r3, #0x74]
	b _08022924
	.align 2, 0
_08022910: .4byte 0x03006424
_08022914:
	movs r0, #0
	cmp r2, #0
	bne _0802291C
	movs r0, #1
_0802291C:
	cmp r0, #0
	bne _08022924
	movs r0, #0
	b _08022926
_08022924:
	movs r0, #1
_08022926:
	pop {r4}
	pop {r1}
	bx r1
