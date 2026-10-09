	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08038AF8
sub_08038AF8: @ 0x08038AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x12c
	adds r7, r0, #0
	ldr r0, _08038B38 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x114]
	mov r6, sp
	adds r6, #0xb4
	str r6, [sp, #0x128]
	adds r3, #0x6e
	str r3, [sp, #0x124]
	subs r6, #4
	str r6, [sp, #0x120]
	cmp r2, r0
	bhs _08038B4E
	adds r3, r0, #0
_08038B2C:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _08038B3C
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _08038B46
	.align 2, 0
_08038B38: .4byte gUnknown_030063D8
_08038B3C:
	cmp r0, #3
	bne _08038B46
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0xc4]
_08038B46:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _08038B2C
_08038B4E:
	ldr r0, [sp, #0xc4]
	adds r0, #0x24
	str r0, [sp, #0xc8]
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xc0]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	strh r0, [r7, #2]
	ldr r1, [sp, #0xc4]
	ldrh r0, [r1, #0x10]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _08038D40 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0xc0]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0x10c]
	strh r2, [r6]
	adds r0, r7, #0
	adds r0, #0x4a
	str r0, [sp, #0x110]
	strh r2, [r0]
	movs r1, #0x4c
	adds r1, r1, r7
	mov r8, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r2, #0x72
	adds r2, r2, r7
	mov sl, r2
	ldrh r4, [r2]
	ldr r6, _08038D44 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r3, sl
	strh r4, [r3]
	movs r4, #0x6e
	adds r4, r4, r7
	mov sb, r4
	ldrh r4, [r4]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r6, sb
	strh r4, [r6]
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	movs r2, #0x1e
	str r2, [sp, #0xd4]
	movs r3, #0
	str r3, [sp, #0xd8]
	ldr r4, [sp, #0xc0]
	ldr r0, [r4, #0x28]
	ldrh r1, [r4, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	ldr r1, [r4, #0x28]
	movs r4, #1
	rsbs r4, r4, #0
	add r0, sp, #0x10
	movs r2, #5
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r1, _08038D48 @ =0x00100067
	ldr r0, [sp, #0x114]
	movs r2, #5
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r0, [sp, #0xd0]
	adds r0, #0x15
	ldr r6, [sp, #0xc0]
	ldrh r2, [r6, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	add r0, sp, #0x10
	ldr r3, [sp, #0xd0]
	adds r3, #5
	strb r3, [r0, #0x1c]
	ldr r2, [sp, #0xd0]
	adds r2, #6
	strb r2, [r0, #0x1d]
	ldr r1, [sp, #0xd0]
	adds r1, #7
	strb r1, [r0, #0x1e]
	ldr r0, [sp, #0x114]
	strb r3, [r0, #0x1c]
	strb r2, [r0, #0x1d]
	strb r1, [r0, #0x1e]
	bl sub_08033DF4
	bl sub_0803A2B0
	bl sub_08007544
	ldr r1, [sp, #0x10c]
	mov sl, r1
	ldr r2, [sp, #0x110]
	str r2, [sp, #0x118]
	mov r3, r8
	str r3, [sp, #0x11c]
	cmp r0, #0
	bne _08038CDA
	bl sub_080075AC
	cmp r0, #0
	bne _08038CDA
	ldr r5, _08038D4C @ =gPlayers
	movs r4, #0xd4
_08038CA6:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _08038CA6
	bl GetMultiplayerId
	ldr r5, _08038D4C @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	strh r1, [r0, #0xa]
_08038CDA:
	ldr r0, [sp, #0x128]
	movs r1, #0x3d
	bl sub_0802934C
	add r0, sp, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _08038CF6
_08038CEA:
	bl WaitFrame
	ldr r4, [sp, #0x128]
	ldr r0, [r4]
	cmp r0, #0
	bne _08038CEA
_08038CF6:
	ldr r6, _08038D50 @ =0x0000FFFF
	str r6, [sp, #0xe0]
	movs r0, #1
	str r0, [sp, #0xe8]
	movs r1, #0
	mov r8, r1
	mov r3, r8
	ldr r2, [sp, #0x124]
	strh r3, [r2]
	ldr r4, [sp, #0x120]
	strh r3, [r4]
	movs r6, #0
	str r6, [sp, #0xe4]

	thumb_func_start sub_08038D10
sub_08038D10: @ 0x08038D10
	bl sub_080271D0
	cmp r0, #0
	beq _08038D1A
	b _080391AA
_08038D1A:
	ldr r0, [sp, #0xd0]
	adds r0, #0x15
	ldr r1, [sp, #0xc0]
	ldrh r2, [r1, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	mov r2, r8
	cmp r2, #0x12
	bls _08038D36
	b _08039164
_08038D36:
	lsls r0, r2, #2
	ldr r1, _08038D54 @ =_08038D58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038D40: .4byte gMapLayer_03003910
_08038D44: .4byte 0x080FB740
_08038D48: .4byte 0x00100067
_08038D4C: .4byte gPlayers
_08038D50: .4byte 0x0000FFFF
_08038D54: .4byte _08038D58
_08038D58: @ jump table
	.4byte _08038DA4 @ case 0
	.4byte _08038DB8 @ case 1
	.4byte _08038DE8 @ case 2
	.4byte _08038E18 @ case 3
	.4byte _08038E40 @ case 4
	.4byte _08038E58 @ case 5
	.4byte _08038EAC @ case 6
	.4byte _08038EC0 @ case 7
	.4byte _08038F44 @ case 8
	.4byte _08038F80 @ case 9
	.4byte _08039058 @ case 10
	.4byte _0803903C @ case 11
	.4byte _08039058 @ case 12
	.4byte _08039072 @ case 13
	.4byte _08039094 @ case 14
	.4byte _080390B2 @ case 15
	.4byte _080390D2 @ case 16
	.4byte _080390E0 @ case 17
	.4byte _08039160 @ case 18
_08038DA4:
	movs r3, #1
	mov r8, r3
	movs r0, #0
	add r1, sp, #0xb8
	str r0, [r1]
	add r1, sp, #0xbc
	str r0, [r1]
	movs r4, #0
	str r4, [sp, #0x108]
	b _08039164
_08038DB8:
	add r0, sp, #0xb8
	movs r2, #0x3c
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0x108]
	bl Lerp1024
	add r0, sp, #0xbc
	movs r1, #0
	movs r2, #0x50
	ldr r3, [sp, #0x108]
	bl Lerp1024
	ldr r6, [sp, #0x108]
	adds r6, #0x10
	str r6, [sp, #0x108]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bgt _08038DE2
	b _08039164
_08038DE2:
	movs r0, #2
	mov r8, r0
	b _08039164
_08038DE8:
	bl sub_08007544
	cmp r0, #0
	bne _08038E0E
	bl sub_080075AC
	cmp r0, #0
	bne _08038E0E
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08038E14 @ =0x0009007B
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xcc]
_08038E0E:
	movs r1, #3
	mov r8, r1
	b _08039164
	.align 2, 0
_08038E14: .4byte 0x0009007B
_08038E18:
	bl sub_08007544
	cmp r0, #0
	bne _08038E3A
	bl sub_080075AC
	cmp r0, #0
	bne _08038E3A
	ldr r0, [sp, #0xcc]
	bl sub_0802294C
	cmp r0, #0
	bne _08038E34
	b _08039164
_08038E34:
	movs r2, #4
	mov r8, r2
	b _08039164
_08038E3A:
	movs r3, #4
	mov r8, r3
	b _08039164
_08038E40:
	movs r4, #5
	mov r8, r4
	movs r1, #0x3c
	rsbs r1, r1, #0
	add r0, sp, #0xb8
	str r1, [r0]
	movs r1, #0x50
	add r0, sp, #0xbc
	str r1, [r0]
	movs r6, #0
	str r6, [sp, #0x108]
	b _08039164
_08038E58:
	add r0, sp, #0xb8
	movs r1, #0x3c
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x108]
	bl Lerp1024
	add r0, sp, #0xbc
	movs r1, #0x50
	movs r2, #0
	ldr r3, [sp, #0x108]
	bl Lerp1024
	ldr r0, [sp, #0x108]
	adds r0, #0x10
	str r0, [sp, #0x108]
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [sp, #0x108]
	cmp r1, r0
	bgt _08038E84
	b _08039164
_08038E84:
	bl GetMultiplayerId
	ldr r2, _08038EA4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08038EA8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x14
	str r0, [r7, #0x5c]
	movs r2, #0xe
	mov r8, r2
	b _08039164
	.align 2, 0
_08038EA4: .4byte gPlayers
_08038EA8: .4byte 0x0000FFFE
_08038EAC:
	ldr r3, [sp, #0x128]
	ldr r0, [r3]
	cmp r0, #0
	beq _08038EB6
	b _08039164
_08038EB6:
	movs r4, #7
	mov r8, r4
	movs r0, #0x14
	str r0, [r7, #0x5c]
	b _08039164
_08038EC0:
	ldr r1, _08038EF0 @ =0x080FBD1E
	ldr r6, [sp, #0xf8]
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [sp, #0xf0]
	adds r0, r6, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf8]
	ldr r0, [sp, #0xfc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xfc]
	cmp r0, #0x10
	bls _08038EF4
	movs r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0xfc]
	b _08038EF8
	.align 2, 0
_08038EF0: .4byte 0x080FBD1E
_08038EF4:
	movs r2, #8
	mov r8, r2
_08038EF8:
	mov r3, r8
	cmp r3, #8
	bne _08038F2E
	movs r1, #0
	movs r0, #1
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x118]
	strh r1, [r6]
	ldr r0, [sp, #0x11c]
	strh r1, [r0]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08038F1C
	rsbs r0, r0, #0
_08038F1C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	b _08039164
_08038F2E:
	movs r1, #0x10
	mov r8, r1
	movs r1, #0
	movs r0, #1
	mov r2, sl
	strh r0, [r2]
	ldr r3, [sp, #0x118]
	strh r1, [r3]
	ldr r4, [sp, #0x11c]
	strh r1, [r4]
	b _08039164
_08038F44:
	movs r1, #0
	movs r0, #1
	mov r6, sl
	strh r0, [r6]
	ldr r0, [sp, #0x118]
	strh r1, [r0]
	ldr r2, [sp, #0x11c]
	strh r1, [r2]
	adds r0, r7, #0
	adds r0, #0x4e
	strh r1, [r0]
	movs r3, #0
	str r3, [sp, #0xe8]
	movs r4, #0
	str r4, [sp, #0x104]
	movs r6, #9
	mov r8, r6
	movs r0, #0x14
	str r0, [r7, #0x5c]
	ldr r0, [sp, #0xf0]
	lsls r1, r0, #2
	ldr r2, [sp, #0xc4]
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	b _08039164
_08038F80:
	adds r4, r7, #0
	adds r4, #0x4e
	ldrh r0, [r4]
	cmp r0, #0
	bne _08038F8C
	b _08039164
_08038F8C:
	bl sub_080076A8
	movs r3, #0x30
	str r3, [sp, #0xe4]
	cmp r0, #0
	beq _08038F9C
	movs r6, #0x14
	str r6, [sp, #0xe4]
_08038F9C:
	ldr r1, _08038FB4 @ =0x080FBD10
	ldr r2, [sp, #0xf4]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #1
	beq _08038FD2
	cmp r0, #1
	bgt _08038FB8
	cmp r0, #0
	beq _08038FC2
	b _08039024
	.align 2, 0
_08038FB4: .4byte 0x080FBD10
_08038FB8:
	cmp r0, #2
	beq _08038FE2
	cmp r0, #3
	beq _08039000
	b _08039024
_08038FC2:
	movs r3, #0xa
	mov r8, r3
	mov r4, sl
	ldrh r1, [r4]
	adds r0, r7, #0
	bl sub_0803A318
	b _08039024
_08038FD2:
	movs r6, #0xb
	mov r8, r6
	mov r0, sl
	ldrh r1, [r0]
	adds r0, r7, #0
	bl sub_0803A37C
	b _08039024
_08038FE2:
	movs r1, #0xd
	mov r8, r1
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #9
	movs r1, #0
	strh r0, [r2]
	ldr r3, [sp, #0x118]
	strh r1, [r3]
	ldr r6, [sp, #0x11c]
	strh r1, [r6]
	strh r1, [r4]
	movs r0, #0
	str r0, [sp, #0xe8]
	b _08039024
_08039000:
	movs r1, #0xc
	mov r8, r1
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803A3E4
	adds r0, r7, #0
	movs r1, #2
	bl sub_0803A3E4
	adds r0, r7, #0
	movs r1, #4
	bl sub_0803A3E4
	adds r0, r7, #0
	movs r1, #6
	bl sub_0803A3E4
_08039024:
	ldr r0, [sp, #0xf4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf4]
	cmp r0, #6
	bls _08039036
	movs r2, #0
	str r2, [sp, #0xf4]
_08039036:
	movs r3, #0
	str r3, [sp, #0x104]
	b _08039164
_0803903C:
	ldr r0, [sp, #0x104]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x104]
	ldr r2, [sp, #0xe4]
	cmp r0, r2
	bhi _0803904C
	b _08039164
_0803904C:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r3, #0xe
	mov r8, r3
	b _08039164
_08039058:
	ldr r0, [sp, #0x104]
	adds r4, r0, #0
	adds r4, #1
	str r4, [sp, #0x104]
	ldr r6, [sp, #0xe4]
	cmp r0, r6
	bls _08039164
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r0, #0xe
	mov r8, r0
	b _08039164
_08039072:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08039164
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r1, #0xe
	mov r8, r1
	mov r2, sl
	ldrh r0, [r2]
	subs r0, #9
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0xe8]
	b _08039164
_08039094:
	movs r0, #0
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x118]
	strh r0, [r6]
	ldr r1, [sp, #0x11c]
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	movs r2, #0
	str r2, [sp, #0xe8]
	movs r3, #0xf
	mov r8, r3
	b _08039164
_080390B2:
	adds r1, r7, #0
	adds r1, #0x4e
	ldrh r0, [r1]
	cmp r0, #0
	beq _08039164
	movs r0, #0
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x118]
	strh r0, [r6]
	ldr r2, [sp, #0x11c]
	strh r0, [r2]
	strh r0, [r1]
	movs r3, #1
	str r3, [sp, #0xe8]
	b _08039152
_080390D2:
	movs r6, #0
	str r6, [sp, #0xf0]
	movs r0, #0x11
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x104]
	b _08039164
_080390E0:
	ldr r2, [sp, #0xf0]
	cmp r2, #3
	bhi _08039112
	adds r0, r7, #0
	adds r0, #0x10
	lsls r4, r2, #2
	ldr r3, [sp, #0xc8]
	adds r4, r4, r3
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r5, r4, #4
	ldrh r2, [r4, #4]
	lsls r2, r2, #3
	ldr r3, [sp, #0x104]
	bl Lerp1024
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r4, #2]
	lsls r1, r1, #3
	ldrh r2, [r5, #2]
	lsls r2, r2, #3
	ldr r3, [sp, #0x104]
	bl Lerp1024
_08039112:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #0xc
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #0xc
	str r0, [r7, #0x14]
	ldr r4, [sp, #0xf0]
	cmp r4, #1
	bhi _0803912C
	movs r0, #0
	mov r6, sl
	strh r0, [r6]
	b _08039132
_0803912C:
	movs r0, #1
	mov r1, sl
	strh r0, [r1]
_08039132:
	ldr r2, [sp, #0x104]
	adds r2, #8
	str r2, [sp, #0x104]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r2, r0
	bls _08039164
	movs r3, #0
	str r3, [sp, #0x104]
	ldr r0, [sp, #0xf0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	cmp r0, #4
	bls _08039164
_08039152:
	movs r4, #6
	mov r8, r4
	ldr r0, [sp, #0x128]
	movs r1, #0x41
	bl sub_0802934C
	b _08039164
_08039160:
	movs r6, #0x13
	mov r8, r6
_08039164:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	beq _08039170
	cmp r0, #8
	beq _08039180
	b _080391AA
_08039170:
	ldr r0, [sp, #0xd8]
	cmp r0, #0
	bne _080391AA
	movs r1, #1
	str r1, [sp, #0xd8]
	movs r2, #8
	str r2, [sp, #0xd4]
	b _080391AA
_08039180:
	ldr r3, [sp, #0xd8]
	cmp r3, #0
	bne _080391AA
	movs r4, #1
	str r4, [sp, #0xd8]
	movs r6, #0x14
	str r6, [sp, #0xd4]
	movs r0, #2
	bl FadeOutBGM
	movs r0, #0x12
	mov r8, r0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
_080391AA:
	mov r1, r8
	cmp r1, #0xd
	bne _0803928E
	bl GetMultiplayerId
	ldr r4, [r7, #0x10]
	asrs r4, r4, #0xc
	ldr r6, _080392C4 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	ldr r2, [r7, #0x14]
	asrs r2, r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _0803928E
	ldr r2, [sp, #0x118]
	ldrh r0, [r2]
	cmp r0, #3
	bne _0803928E
	cmp r4, #0x2c
	bhi _0803928E
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	movs r3, #0x80
	adds r3, r3, r6
	mov sb, r3
	add r1, sb
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _0803928E
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0803928E
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0803928E
	bl sub_08007544
	cmp r0, #0
	bne _0803928E
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _080392C8 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r0, r7, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldr r0, [r7, #0x2c]
	str r0, [r1]
_0803928E:
	ldrh r0, [r7, #0xa]
	adds r2, r0, #0
	cmp r2, #7
	bne _080392A2
	movs r6, #0x14
	str r6, [sp, #0xe0]
	ldrh r0, [r7, #0x28]
	str r0, [sp, #0xec]
	movs r1, #0
	str r1, [sp, #0x100]
_080392A2:
	ldr r0, [sp, #0xe0]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xe0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803931C
	ldr r3, [sp, #0xec]
	cmp r3, #0
	bne _080392D0
	ldr r4, _080392CC @ =0x0000FFFF
	str r4, [sp, #0xe0]
	b _08039320
	.align 2, 0
_080392C4: .4byte gPlayers
_080392C8: .4byte 0x0000FFFE
_080392CC: .4byte 0x0000FFFF
_080392D0:
	bl sub_08007544
	cmp r0, #0
	bne _080392FE
	bl sub_08007510
	cmp r0, #0
	bne _080392FE
	bl sub_08007604
	cmp r0, #0
	bne _080392FE
	bl sub_080075AC
	cmp r0, #0
	bne _080392FE
	ldr r6, [sp, #0x100]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xec]
	bl sub_0800EA74
_080392FE:
	movs r0, #2
	ldr r1, [sp, #0xe0]
	ands r0, r1
	ldrh r2, [r7, #0xa]
	cmp r0, #0
	beq _08039320
	ldr r3, [sp, #0x100]
	lsls r0, r3, #0x10
	ldr r4, _08039318 @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x100]
	b _08039320
	.align 2, 0
_08039318: .4byte 0xFFFF0000
_0803931C:
	ldr r6, _08039384 @ =0x0000FFFF
	str r6, [sp, #0xe0]
_08039320:
	cmp r2, #8
	bne _08039326
	b _08039610
_08039326:
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xdc]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0xac
	mov r5, sp
	adds r5, #0xae
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	mov r1, r8
	subs r1, #8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r6, r4, #0
	adds r4, r1, #0
	cmp r0, #1
	bls _08039376
	mov r0, r8
	cmp r0, #0xe
	beq _08039376
	cmp r0, #0xf
	bne _08039388
_08039376:
	mov r2, sl
	ldrh r1, [r2]
	ldr r3, [sp, #0xe8]
	str r3, [sp]
	ldr r0, [sp, #0x114]
	b _08039392
	.align 2, 0
_08039384: .4byte 0x0000FFFF
_08039388:
	mov r0, sl
	ldrh r1, [r0]
	ldr r2, [sp, #0xe8]
	str r2, [sp]
	add r0, sp, #0x10
_08039392:
	ldr r2, [sp, #0x118]
	ldr r3, [sp, #0x11c]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	bl sub_080271D0
	cmp r0, #0
	beq _080393AA
	b _08039610
_080393AA:
	bl sub_08007510
	cmp r0, #0
	beq _080393B4
	b _08039610
_080393B4:
	bl sub_080075AC
	cmp r0, #0
	beq _080393BE
	b _08039610
_080393BE:
	add r0, sp, #0xbc
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r1, sp, #0xb8
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_08005F60
	ldr r3, [sp, #0xd8]
	cmp r3, #0
	beq _08039484
	bl sub_08007544
	cmp r0, #0
	bne _0803945C
	movs r0, #1
	ldr r1, [sp, #0xd4]
	ands r0, r1
	cmp r0, #0
	beq _0803945C
	mov r0, r8
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0803945C
	mov r2, r8
	cmp r2, #7
	beq _0803945C
	cmp r2, #6
	beq _0803945C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0803940C
	cmp r2, #0xe
	beq _0803940C
	cmp r2, #0xf
	bne _08039438
_0803940C:
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r4, [r4]
	mov ip, r4
	ldr r3, [sp, #0xdc]
	str r3, [sp]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r4, [sp, #0x114]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	mov r3, ip
	bl sub_08004344
	b _0803945C
_08039438:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r3, [r4]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803945C:
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	cmp r0, #0
	bne _080394FE
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _08039472
	b _08039646
_08039472:
	add r0, sp, #0xd4
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	movs r1, #0
	str r1, [sp, #0xd8]
	b _080394FE
_08039484:
	bl sub_08007544
	cmp r0, #0
	bne _080394FE
	mov r2, r8
	cmp r2, #0x10
	beq _080394FE
	cmp r2, #0x11
	beq _08039506
	cmp r2, #7
	beq _080394FE
	cmp r2, #6
	beq _080394FE
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080394AE
	cmp r2, #0xe
	beq _080394AE
	cmp r2, #0xf
	bne _080394DA
_080394AE:
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r4, [r4]
	mov ip, r4
	ldr r3, [sp, #0xdc]
	str r3, [sp]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r4, [sp, #0x114]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	mov r3, ip
	bl sub_08004344
	b _080394FE
_080394DA:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r3, [r4]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_080394FE:
	mov r0, r8
	cmp r0, #0x11
	beq _08039506
	b _08039610
_08039506:
	ldr r1, [sp, #0xf0]
	cmp r1, #1
	beq _0803955E
	cmp r1, #1
	bgt _08039516
	cmp r1, #0
	beq _08039522
	b _08039610
_08039516:
	ldr r2, [sp, #0xf0]
	cmp r2, #2
	beq _0803959A
	cmp r2, #3
	beq _080395D6
	b _08039610
_08039522:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #5
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r6, [sp, #0x120]
	ldrh r3, [r6]
	ldr r2, [sp, #0xdc]
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #5
	bl sub_08004344
	b _08039610
_0803955E:
	ldr r3, [sp, #0xf0]
	str r3, [sp]
	add r0, sp, #0x10
	movs r1, #2
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r4, #0
	ldrsh r0, [r6, r4]
	movs r6, #0
	ldrsh r1, [r5, r6]
	ldr r2, [sp, #0x120]
	ldrh r3, [r2]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08004344
	b _08039610
_0803959A:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp, #0x120]
	ldrh r3, [r4]
	ldr r6, [sp, #0xdc]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	b _08039610
_080395D6:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #4
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp, #0x120]
	ldrh r3, [r4]
	ldr r6, [sp, #0xdc]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #4
	bl sub_08004344
_08039610:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08039646
	bl sub_080074CC
	cmp r0, #0
	bne _08039646
	ldr r0, _080396CC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039646
	bl sub_08007578
	cmp r0, #0
	bne _08039646
	mov r0, r8
	cmp r0, #0x13
	beq _08039646
	bl sub_08038D10
_08039646:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08016FA0
	cmp r0, #0
	beq _08039668
	b _080398C4
_08039668:
	bl sub_080271D0
	cmp r0, #0
	beq _08039672
	b _080398C4
_08039672:
	bl sub_08007544
	cmp r0, #0
	beq _0803967C
	b _080398C4
_0803967C:
	bl sub_08007510
	cmp r0, #0
	beq _08039686
	b _080398C4
_08039686:
	bl sub_080075AC
	cmp r0, #0
	beq _08039690
	b _080398C4
_08039690:
	bl sub_080076E0
	cmp r0, #0
	beq _0803969A
	b _080398C4
_0803969A:
	bl GetMultiplayerId
	ldr r2, _080396D0 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080396D4 @ =0x0009007C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xcc]
	bl sub_08007798
	b _08039882
	.align 2, 0
_080396CC: .4byte gUnknown_030063D8
_080396D0: .4byte gPlayers
_080396D4: .4byte 0x0009007C
_080396D8:
	bl sub_08007544
	cmp r0, #0
	beq _080396E2
	b _08039874
_080396E2:
	bl sub_08007510
	cmp r0, #0
	beq _080396EC
	b _08039874
_080396EC:
	bl sub_080271D0
	cmp r0, #0
	beq _080396F6
	b _08039874
_080396F6:
	bl sub_080075AC
	cmp r0, #0
	beq _08039700
	b _08039874
_08039700:
	movs r0, #0xf
	ldr r1, [sp, #0x104]
	ands r0, r1
	adds r1, #1
	str r1, [sp, #0x104]
	cmp r0, #0
	beq _08039710
	b _08039838
_08039710:
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08039724
	adds r0, #0xf
_08039724:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08039744
	adds r1, #0x1f
_08039744:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803976E
	adds r0, #0xf
_0803976E:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803978E
	adds r1, #0x1f
_0803978E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080397B8
	adds r0, #0xf
_080397B8:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _080397D8
	adds r1, #0x1f
_080397D8:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08039802
	adds r0, #0xf
_08039802:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08039822
	adds r1, #0x1f
_08039822:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
_08039838:
	ldr r0, [sp, #0xd4]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xd4]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08039874
	add r0, sp, #0xac
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sp
	adds r1, #0xae
	movs r3, #0
	ldrsh r1, [r1, r3]
	mov r4, sl
	ldrh r2, [r4]
	ldr r6, [sp, #0x118]
	ldrh r3, [r6]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08039874:
	bl WaitFrame
	ldr r0, [sp, #0xcc]
	bl sub_0802294C
	cmp r0, #0
	bne _080398AC
_08039882:
	bl sub_08007750
	cmp r0, #0
	bne _080398AC
	bl sub_080074CC
	cmp r0, #0
	bne _080398AC
	ldr r0, _08039AFC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080398AC
	bl sub_08007578
	cmp r0, #0
	bne _080398AC
	b _080396D8
_080398AC:
	bl sub_080077AC
	bl GetMultiplayerId
	ldr r2, _08039B00 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08039B04 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_080398C4:
	bl sub_08033E20
	bl sub_0803A2D8
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	ldr r2, _08039B08 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r6, [r7]
	lsls r1, r6
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0xd0]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _0803992E
	ldr r0, _08039B0C @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _0803992E
	bl sub_08007544
	cmp r0, #0
	bne _0803992E
	bl sub_08007510
	cmp r0, #0
	bne _0803992E
	bl sub_08007604
	cmp r0, #0
	bne _0803992E
	bl sub_080075AC
	cmp r0, #0
	bne _0803992E
	bl sub_080076E0
	cmp r0, #0
	bne _0803992E
	ldr r0, _08039B10 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_0803992E:
	bl sub_08007750
	cmp r0, #0
	beq _08039938
	b _08039A44
_08039938:
	bl sub_080074CC
	cmp r0, #0
	beq _08039942
	b _08039A44
_08039942:
	bl sub_08007578
	cmp r0, #0
	bne _08039A44
	ldr r0, _08039AFC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _08039A44
	ldr r4, _08039B14 @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _08039988
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039988
	ldr r3, _08039B18 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08039988
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08039988:
	ldr r4, _08039B00 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xc0]
	bl CalcExpGain
	str r0, [sp, #0xe8]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xe8]
	bl AddExp
	adds r4, r0, #0
	movs r6, #0x13
	str r6, [sp, #0xd4]
	ldr r5, _08039B1C @ =0x0000FFFF
_080399B8:
	ldr r0, [r7, #0x14]
	ldr r1, _08039B20 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _080399EC
	bl sub_08007510
	cmp r0, #0
	bne _080399EC
	bl sub_080075AC
	cmp r0, #0
	bne _080399EC
	ldr r0, _08039B10 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080399EC
	adds r0, r7, #0
	ldr r1, [sp, #0xe8]
	bl sub_08024320
_080399EC:
	bl WaitFrame
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	cmp r0, r5
	bne _080399B8
	cmp r4, #0
	beq _08039A44
	bl sub_08007544
	cmp r0, #0
	bne _08039A30
	bl sub_08007510
	cmp r0, #0
	bne _08039A30
	bl sub_080075AC
	cmp r0, #0
	bne _08039A30
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	ldr r1, _08039B00 @ =gPlayers
	adds r0, r0, r1
	bl sub_08024420
_08039A30:
	bl GetMultiplayerId
	ldr r2, _08039B00 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_08039A44:
	bl sub_08007750
	cmp r0, #0
	bne _08039AE2
	bl sub_080074CC
	cmp r0, #0
	bne _08039AE2
	ldr r4, _08039AFC @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039AE2
	bl sub_08007578
	cmp r0, #0
	bne _08039AE2
	ldr r0, _08039B24 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08039B28 @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08039ACC
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08039ACC
	ldr r2, _08039B2C @ =gPlayerStats
	ldr r4, _08039B30 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08039B34 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08039ACC:
	bl sub_0800F53C
	ldr r4, _08039B38 @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08039AE2
	ldr r0, [r4]
	bl KillThread
_08039AE2:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0x12c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039AFC: .4byte gUnknown_030063D8
_08039B00: .4byte gPlayers
_08039B04: .4byte 0x0000FFFE
_08039B08: .4byte gActiveEnemyMask
_08039B0C: .4byte gUnknown_030064D8
_08039B10: .4byte gMapLayer_03003910
_08039B14: .4byte 0x03003D94
_08039B18: .4byte 0x00000157
_08039B1C: .4byte 0x0000FFFF
_08039B20: .4byte 0xFFFFFE00
_08039B24: .4byte 0x00000BB8
_08039B28: .4byte gUnknown_03003D08
_08039B2C: .4byte gPlayerStats
_08039B30: .4byte 0x00000272
_08039B34: .4byte 0x00000275
_08039B38: .4byte gUnknownThreadPtr_030063E4

	thumb_func_start sub_08039B3C
sub_08039B3C: @ 0x08039B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	mov sb, r0
	str r1, [sp, #0x54]
	add r6, sp, #0x44
	ldr r1, _08039BB8 @ =0x08054954
	adds r0, r6, #0
	movs r2, #6
	bl memcpy
	mov r0, sb
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #7
	strb r0, [r1, #0x1e]
	mov r0, sb
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x58]
	mov r1, sb
	ldr r1, [r1, #0x14]
	mov sl, r1
	movs r0, #0
	mov r5, sp
	adds r5, #0x4e
	strh r0, [r5]
	add r4, sp, #0x4c
	strh r0, [r4]
	movs r2, #0xb4
	str r2, [sp, #0x5c]
	bl sub_08007544
	cmp r0, #0
	bne _08039BAA
	bl sub_080075AC
	cmp r0, #0
	bne _08039BAA
	movs r0, #0x56
	bl PlaySE
_08039BAA:
	ldr r3, [sp, #0x5c]
	lsls r0, r3, #0x10
	ldr r4, _08039BBC @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r1, r0, #0x10
	str r1, [sp, #0x5c]
	b _08039E96
	.align 2, 0
_08039BB8: .4byte 0x08054954
_08039BBC: .4byte 0xFFFF0000
_08039BC0:
	bl sub_080076A8
	cmp r0, #0
	beq _08039BF8
	ldr r2, [sp, #0x54]
	lsls r0, r2, #1
	add r0, sp
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08039BF4 @ =0x0805289C
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #5
	ldr r2, [sp, #0x58]
	adds r2, r2, r0
	str r2, [sp, #0x58]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #5
	b _08039C2C
	.align 2, 0
_08039BF4: .4byte 0x0805289C
_08039BF8:
	ldr r4, [sp, #0x54]
	lsls r0, r4, #1
	add r0, sp
	adds r0, #0x44
	ldrh r2, [r0]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08039D70 @ =0x0805289C
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, [sp, #0x58]
	adds r4, r4, r0
	str r4, [sp, #0x58]
	lsls r2, r2, #1
	ldr r0, _08039D70 @ =0x0805289C
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
_08039C2C:
	add sl, r0
	bl GetMultiplayerId
	ldr r4, [sp, #0x58]
	asrs r6, r4, #0xc
	ldr r7, _08039D74 @ =gPlayers
	movs r1, #0xd4
	mov r8, r1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r3, sl
	asrs r5, r3, #0xc
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x60]
	str r5, [sp, #0x64]
	cmp r0, #0
	beq _08039C8A
	b _08039DDA
_08039C8A:
	cmp r4, #0x18
	bls _08039C90
	b _08039DDA
_08039C90:
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	bne _08039CB2
	b _08039DDA
_08039CB2:
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	bne _08039CBA
	b _08039DDA
_08039CBA:
	bl sub_08007544
	cmp r0, #0
	beq _08039CC4
	b _08039DDA
_08039CC4:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08039CD8
	b _08039DDA
_08039CD8:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	movs r6, #0
	movs r0, #7
	strh r0, [r1, #0xc]
	bl GetMultiplayerId
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _08039D78 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	mov r0, sb
	bl CalcDamageToPlayer
	mov r1, r8
	muls r1, r4, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	bl GetMultiplayerId
	mov r4, sb
	ldrh r1, [r4]
	lsls r1, r1, #2
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r4, #0x2c]
	str r0, [r1]
	movs r5, #0
	movs r0, #0x73
	bl PlaySE
	bl sub_080076A8
	cmp r0, #0
	beq _08039D80
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	ldr r0, _08039D7C @ =0x000005DC
	b _08039DA8
	.align 2, 0
_08039D70: .4byte 0x0805289C
_08039D74: .4byte gPlayers
_08039D78: .4byte 0x0000FFFE
_08039D7C: .4byte 0x000005DC
_08039D80:
	bl GetMultiplayerId
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #2
_08039DA8:
	strh r0, [r1]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl Random
	ldr r3, _08039EBC @ =gPlayers
	lsls r2, r5, #1
	movs r1, #0xd4
	muls r1, r4, r1
	adds r2, r2, r1
	adds r3, #0x24
	adds r4, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08039DCC
	rsbs r0, r0, #0
_08039DCC:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_08039DDA:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #8
	add r2, sp, #0x4c
	mov r3, sp
	adds r3, #0x4e
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _08039E5E
	bl sub_080271D0
	cmp r0, #0
	bne _08039E5E
	bl sub_08007544
	cmp r0, #0
	bne _08039E5E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08039E5E
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x64]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x50
	mov r5, sp
	adds r5, #0x52
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	movs r2, #0
	bl sub_08006008
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r3, #0
	ldrsh r1, [r5, r3]
	add r4, sp, #0x4c
	ldrh r3, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #8
	bl sub_08004344
_08039E5E:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08039EA2
	bl sub_080074CC
	cmp r0, #0
	bne _08039EA2
	ldr r0, _08039EC0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039EA2
	bl sub_08007578
	cmp r0, #0
	bne _08039EA2
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #0x10
	ldr r2, _08039EC4 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x5c]
_08039E96:
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08039EA2
	b _08039BC0
_08039EA2:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039EBC: .4byte gPlayers
_08039EC0: .4byte gUnknown_030063D8
_08039EC4: .4byte 0xFFFF0000

	thumb_func_start sub_08039EC8
sub_08039EC8: @ 0x08039EC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	str r0, [sp, #0x5c]
	adds r5, r1, #0
	add r4, sp, #0x44
	ldr r1, _08039F38 @ =0x0805495A
	adds r0, r4, #0
	movs r2, #0x10
	bl memcpy
	ldr r0, [sp, #0x5c]
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #7
	strb r0, [r1, #0x1e]
	ldr r0, [sp, #0x5c]
	ldr r0, [r0, #0x10]
	mov sl, r0
	ldr r1, [sp, #0x5c]
	ldr r0, [r1, #0x14]
	ldr r2, _08039F3C @ =0xFFFD0000
	adds r2, r2, r0
	mov sb, r2
	movs r6, #0
	mov r1, sp
	adds r1, #0x56
	strh r6, [r1]
	add r0, sp, #0x54
	strh r6, [r0]
	movs r3, #6
	str r3, [sp, #0x64]
	movs r2, #0
	str r2, [sp, #0x68]
	cmp r5, #1
	beq _08039F30
	cmp r5, #7
	bne _08039F40
_08039F30:
	movs r3, #0x3c
	str r3, [sp, #0x60]
	b _08039F44
	.align 2, 0
_08039F38: .4byte 0x0805495A
_08039F3C: .4byte 0xFFFD0000
_08039F40:
	movs r0, #0x1e
	str r0, [sp, #0x60]
_08039F44:
	bl sub_08007544
	cmp r0, #0
	bne _08039F5A
	bl sub_080075AC
	cmp r0, #0
	bne _08039F5A
	movs r0, #0x56
	bl PlaySE
_08039F5A:
	ldr r1, [sp, #0x60]
	lsls r2, r1, #0x10
	cmp r2, #0
	bne _08039F64
	b _0803A290
_08039F64:
	lsls r0, r5, #1
	adds r4, r4, r0
	str r4, [sp, #0x6c]
_08039F6A:
	ldr r3, [sp, #0x64]
	cmp r3, #6
	beq _08039FAC
	ldr r4, _08039FA4 @ =0xFFFF0000
	adds r0, r2, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	bl sub_080076A8
	cmp r0, #0
	beq _08039FF4
	ldr r0, [sp, #0x6c]
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _08039FA8 @ =0x0805289C
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #5
	b _0803A01E
	.align 2, 0
_08039FA4: .4byte 0xFFFF0000
_08039FA8: .4byte 0x0805289C
_08039FAC:
	cmp r6, #0
	beq _08039FC4
	movs r1, #7
	str r1, [sp, #0x64]
	movs r0, #0
	movs r2, #0x56
	add r2, sp
	strh r0, [r2]
	add r3, sp, #0x54
	strh r0, [r3]
	movs r4, #1
	str r4, [sp, #0x68]
_08039FC4:
	bl sub_080076A8
	cmp r0, #0
	beq _08039FF4
	ldr r0, [sp, #0x6c]
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _08039FF0 @ =0x0805289C
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #5
	b _0803A01E
	.align 2, 0
_08039FF0: .4byte 0x0805289C
_08039FF4:
	ldr r0, [sp, #0x6c]
	ldrh r2, [r0]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0803A160 @ =0x0805289C
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add sl, r0
	lsls r2, r2, #1
	ldr r4, _0803A160 @ =0x0805289C
	adds r2, r2, r4
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
_0803A01E:
	add sb, r0
	bl GetMultiplayerId
	mov r1, sl
	asrs r6, r1, #0xc
	ldr r7, _0803A164 @ =gPlayers
	movs r2, #0xd4
	mov r8, r2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r1, sb
	asrs r5, r1, #0xc
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x70]
	str r5, [sp, #0x74]
	cmp r0, #0
	beq _0803A07C
	b _0803A1CA
_0803A07C:
	cmp r4, #0xf
	bls _0803A082
	b _0803A1CA
_0803A082:
	bl GetMultiplayerId
	ldr r4, [sp, #0x5c]
	ldrh r1, [r4]
	lsls r1, r1, #2
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bne _0803A0A4
	b _0803A1CA
_0803A0A4:
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	bne _0803A0AC
	b _0803A1CA
_0803A0AC:
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _0803A0C0
	b _0803A1CA
_0803A0C0:
	bl sub_08007544
	cmp r0, #0
	beq _0803A0CA
	b _0803A1CA
_0803A0CA:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	movs r6, #0
	movs r0, #7
	strh r0, [r1, #0xc]
	bl GetMultiplayerId
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _0803A168 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	ldr r0, [sp, #0x5c]
	bl CalcDamageToPlayer
	mov r1, r8
	muls r1, r4, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	ldrh r1, [r3]
	lsls r1, r1, #2
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x2c]
	str r0, [r1]
	movs r5, #0
	movs r0, #0x73
	bl PlaySE
	bl sub_080076A8
	cmp r0, #0
	beq _0803A170
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	ldr r0, _0803A16C @ =0x000005DC
	b _0803A198
	.align 2, 0
_0803A160: .4byte 0x0805289C
_0803A164: .4byte gPlayers
_0803A168: .4byte 0x0000FFFE
_0803A16C: .4byte 0x000005DC
_0803A170:
	bl GetMultiplayerId
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #2
_0803A198:
	strh r0, [r1]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl Random
	ldr r3, _0803A2A8 @ =gPlayers
	lsls r2, r5, #1
	movs r1, #0xd4
	muls r1, r4, r1
	adds r2, r2, r1
	adds r3, #0x24
	adds r4, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0803A1BC
	rsbs r0, r0, #0
_0803A1BC:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
_0803A1CA:
	ldr r4, [sp, #0x68]
	str r4, [sp]
	add r0, sp, #0x10
	ldr r1, [sp, #0x64]
	add r2, sp, #0x54
	mov r3, sp
	adds r3, #0x56
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _0803A25A
	bl sub_08007604
	cmp r0, #0
	bne _0803A25A
	bl sub_08007544
	cmp r0, #0
	bne _0803A25A
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803A25A
	ldr r1, [sp, #0x70]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x74]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x58
	mov r5, sp
	adds r5, #0x5a
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	movs r2, #0
	bl sub_08006008
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	adds r1, #0x30
	add r4, sp, #0x54
	ldrh r3, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	ldr r2, [sp, #0x64]
	bl sub_08004344
	ldr r1, [r0, #0xc]
	subs r1, #0x30
	str r1, [r0, #0xc]
_0803A25A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803A290
	bl sub_080074CC
	cmp r0, #0
	bne _0803A290
	ldr r0, _0803A2AC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A290
	bl sub_08007578
	cmp r0, #0
	bne _0803A290
	ldr r0, [sp, #0x60]
	lsls r2, r0, #0x10
	cmp r2, #0
	beq _0803A290
	b _08039F6A
_0803A290:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2A8: .4byte gPlayers
_0803A2AC: .4byte gUnknown_030063D8

	thumb_func_start sub_0803A2B0
sub_0803A2B0: @ 0x0803A2B0
	push {r4, lr}
	ldr r4, _0803A2D4 @ =gUnknown_03006818
	movs r0, #0xb4
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_0803A2C2:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #0x11
	bls _0803A2C2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2D4: .4byte gUnknown_03006818

	thumb_func_start sub_0803A2D8
sub_0803A2D8: @ 0x0803A2D8
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803A2E8 @ =gUnknown_03006818
	ldr r4, [r0]
	movs r0, #0
_0803A2E0:
	adds r6, r0, #1
	adds r7, r4, #0
	adds r7, #0x28
	b _0803A2F0
	.align 2, 0
_0803A2E8: .4byte gUnknown_03006818
_0803A2EC:
	bl WaitFrame
_0803A2F0:
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0803A2EC
	adds r0, r6, #0
	adds r4, r7, #0
	cmp r0, #0x11
	bls _0803A2E0
	ldr r4, _0803A314 @ =gUnknown_03006818
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A314: .4byte gUnknown_03006818
