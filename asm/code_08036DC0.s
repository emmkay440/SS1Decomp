	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08036DC0
sub_08036DC0: @ 0x08036DC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe0
	mov sl, r0
	ldr r0, _08036FA4 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r3, sp
	adds r3, #0x31
	str r3, [sp, #0xc4]
	mov r6, sp
	adds r6, #0x80
	str r6, [sp, #0xdc]
	adds r3, #0x4d
	str r3, [sp, #0xd8]
	subs r6, #4
	str r6, [sp, #0xd4]
	cmp r2, r0
	bhs _08036E06
	adds r3, r0, #0
_08036DF4:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _08036DFE
	ldr r0, [r1, #4]
	adds r4, r1, r0
_08036DFE:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _08036DF4
_08036E06:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x8c]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	mov r1, sl
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsls r0, r0, #0xf
	str r0, [r1, #0x10]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xf
	str r0, [r1, #0x14]
	ldr r0, _08036FA8 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r1, #0x26]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	strh r2, [r1, #0xc]
	strh r2, [r1, #0x28]
	str r2, [r1, #0x30]
	strh r2, [r1, #0x2a]
	adds r1, #0x64
	ldr r0, [sp, #0x8c]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r6, sl
	adds r6, #0x48
	str r6, [sp, #0xbc]
	strh r2, [r6]
	mov r0, sl
	adds r0, #0x4a
	str r0, [sp, #0xc0]
	strh r2, [r0]
	movs r1, #0x4c
	add r1, sl
	mov r8, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	str r0, [r2, #0x2c]
	mov r7, sl
	adds r7, #0x72
	ldrh r4, [r7]
	ldr r6, _08036FAC @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r7]
	movs r3, #0x6e
	add r3, sl
	mov sb, r3
	ldrh r4, [r3]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r6, sb
	strh r4, [r6]
	ldrh r0, [r7]
	mov r1, sl
	strh r0, [r1, #0x38]
	mov r0, sl
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r1, #0x3a]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #0x28]
	ldrh r1, [r2, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	ldr r3, [sp, #0x8c]
	ldr r1, [r3, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldr r4, [sp, #0x8c]
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x94]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x94]
	adds r0, #6
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #0x94]
	adds r0, #7
	strb r0, [r1, #0x1e]
	movs r0, #8
	ldr r1, [sp, #0xc4]
	strb r0, [r1]
	bl sub_08033DF4
	bl sub_08038924
	bl sub_08038980
	bl sub_08038A44
	bl sub_08007544
	ldr r2, [sp, #0xbc]
	str r2, [sp, #0xc8]
	ldr r3, [sp, #0xc0]
	str r3, [sp, #0xcc]
	mov r4, r8
	str r4, [sp, #0xd0]
	cmp r0, #0
	bne _08036F98
	bl sub_080075AC
	cmp r0, #0
	bne _08036F98
	ldr r5, _08036FB0 @ =gPlayers
	movs r4, #0xd4
_08036F64:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _08036F64
	bl GetMultiplayerId
	ldr r5, _08036FB0 @ =gPlayers
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
_08036F98:
	ldr r0, [sp, #0xdc]
	movs r1, #0x33
	bl sub_0802934C
	b _08036FB8
	.align 2, 0
_08036FA4: .4byte gUnknown_030063D8
_08036FA8: .4byte gMapLayer_03003910
_08036FAC: .4byte 0x080FB740
_08036FB0: .4byte gPlayers
_08036FB4:
	bl WaitFrame
_08036FB8:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _08036FB4
	ldr r6, _08036FF8 @ =0x0000FFFF
	str r6, [sp, #0x98]
	movs r0, #1
	str r0, [sp, #0x9c]
	movs r1, #0
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xac]
	mov r4, r8
	ldr r3, [sp, #0xd8]
	strh r4, [r3]
	ldr r6, [sp, #0xd4]
	strh r4, [r6]
	movs r0, #0
	str r0, [sp, #0xb8]

_08036FDC:
	bl sub_080271D0
	cmp r0, #0
	beq _08036FE6
	b _08037508
_08036FE6:
	mov r1, r8
	cmp r1, #0x10
	bls _08036FEE
	b _08037508
_08036FEE:
	lsls r0, r1, #2
	ldr r1, _08036FFC @ =_08037000
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08036FF8: .4byte 0x0000FFFF
_08036FFC: .4byte _08037000
_08037000: @ jump table
	.4byte _08037044 @ case 0
	.4byte _08037050 @ case 1
	.4byte _08037088 @ case 2
	.4byte _080370D0 @ case 3
	.4byte _08037106 @ case 4
	.4byte _08037110 @ case 5
	.4byte _08037174 @ case 6
	.4byte _08037188 @ case 7
	.4byte _080371BC @ case 8
	.4byte _080371D8 @ case 9
	.4byte _08037252 @ case 10
	.4byte _08037260 @ case 11
	.4byte _080372AE @ case 12
	.4byte _080372C8 @ case 13
	.4byte _08037302 @ case 14
	.4byte _08037322 @ case 15
	.4byte _0803734A @ case 16
_08037044:
	movs r2, #1
	mov r8, r2
	movs r0, #0
	str r0, [sp, #0x84]
	str r0, [sp, #0x88]
	b _0803710A
_08037050:
	add r0, sp, #0x84
	movs r2, #0x7d
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0xb4]
	bl Lerp1024
	add r0, sp, #0x88
	movs r1, #0
	movs r2, #0xdc
	ldr r3, [sp, #0xb4]
	bl Lerp1024
	ldr r4, [sp, #0xb4]
	adds r4, #8
	str r4, [sp, #0xb4]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bgt _0803707A
	b _08037508
_0803707A:
	movs r6, #2
	mov r8, r6
	ldr r0, [sp, #0xdc]
	movs r1, #0x34
	bl sub_0802934C
	b _08037508
_08037088:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _08037090
	b _08037508
_08037090:
	bl sub_08007510
	cmp r0, #0
	bne _080370BE
	bl sub_08007544
	cmp r0, #0
	bne _080370BE
	bl sub_080075AC
	cmp r0, #0
	bne _080370BE
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080370CC @ =0x00090079
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
_080370BE:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _08037508
	.align 2, 0
_080370CC: .4byte 0x00090079
_080370D0:
	bl sub_08007510
	cmp r0, #0
	bne _080370FA
	bl sub_08007544
	cmp r0, #0
	bne _080370FA
	bl sub_080075AC
	cmp r0, #0
	bne _080370FA
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	bne _080370F4
	b _08037508
_080370F4:
	movs r0, #4
	mov r8, r0
	b _080370FE
_080370FA:
	movs r1, #4
	mov r8, r1
_080370FE:
	mov r0, sl
	bl sub_080389DC
	b _08037508
_08037106:
	movs r2, #5
	mov r8, r2
_0803710A:
	movs r3, #0
	str r3, [sp, #0xb4]
	b _08037508
_08037110:
	add r0, sp, #0x84
	movs r1, #0x7d
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0xb4]
	bl Lerp1024
	add r0, sp, #0x88
	movs r1, #0xdc
	movs r2, #0
	ldr r3, [sp, #0xb4]
	bl Lerp1024
	ldr r4, [sp, #0xb4]
	adds r4, #8
	str r4, [sp, #0xb4]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _0803713E
	mov r0, sl
	bl sub_080389DC
_0803713E:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r6, [sp, #0xb4]
	cmp r6, r0
	bgt _0803714A
	b _08037508
_0803714A:
	bl GetMultiplayerId
	ldr r2, _0803716C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08037170 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
	movs r0, #6
	mov r8, r0
	b _08037508
	.align 2, 0
_0803716C: .4byte gPlayers
_08037170: .4byte 0x0000FFFE
_08037174:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _0803717C
	b _08037508
_0803717C:
	movs r1, #7
	mov r8, r1
	movs r0, #0x12
	mov r2, sl
	str r0, [r2, #0x5c]
	b _08037508
_08037188:
	ldr r1, _080371B8 @ =0x080FBD00
	ldr r3, [sp, #0xb8]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r8, r0
	movs r4, #0
	str r4, [sp, #0xac]
	ldr r6, [sp, #0xd8]
	strh r4, [r6]
	add r0, sp, #0xac
	ldrh r1, [r0]
	ldr r0, [sp, #0xd4]
	strh r1, [r0]
	adds r3, #1
	str r3, [sp, #0xb8]
	cmp r3, #6
	ble _080371B0
	movs r1, #0
	str r1, [sp, #0xb8]
_080371B0:
	movs r2, #0
	str r2, [sp, #0xa8]
	b _08037508
	.align 2, 0
_080371B8: .4byte 0x080FBD00
_080371BC:
	movs r1, #0
	movs r0, #1
	ldr r3, [sp, #0xc8]
	strh r0, [r3]
	ldr r4, [sp, #0xd0]
	strh r1, [r4]
	ldr r6, [sp, #0xcc]
	strh r1, [r6]
	mov r0, sl
	adds r0, #0x4e
	strh r1, [r0]
	movs r0, #9
	mov r8, r0
	b _08037508
_080371D8:
	mov r0, sl
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803722E
	bl sub_080076A8
	cmp r0, #0
	beq _0803721A
	ldr r0, [sp, #0xa8]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xa8]
	cmp r0, #3
	bls _08037204
	movs r2, #6
	mov r8, r2
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
	b _08037226
_08037204:
	movs r3, #8
	mov r8, r3
	movs r4, #0
	str r4, [sp, #0xac]
	ldr r6, [sp, #0xd8]
	strh r4, [r6]
	add r0, sp, #0xac
	ldrh r1, [r0]
	ldr r0, [sp, #0xd4]
	strh r1, [r0]
	b _08037226
_0803721A:
	movs r1, #6
	mov r8, r1
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
_08037226:
	mov r2, sl
	ldr r0, [r2, #0x2c]
	adds r0, #1
	str r0, [r2, #0x2c]
_0803722E:
	bl sub_08007544
	cmp r0, #0
	bne _0803724C
	ldr r3, [sp, #0xcc]
	ldrh r0, [r3]
	cmp r0, #1
	bne _0803724C
	bl sub_080075AC
	cmp r0, #0
	bne _0803724C
	movs r0, #0x2c
	bl PlaySE
_0803724C:
	movs r4, #0
	str r4, [sp, #0x9c]
	b _08037508
_08037252:
	ldr r6, [sp, #0xac]
	cmp r6, #0
	bne _0803725A
	b _08037508
_0803725A:
	movs r0, #0xb
	mov r8, r0
	b _080372BE
_08037260:
	mov r0, sl
	movs r1, #0
	bl sub_08038AA0
	mov r0, sl
	movs r1, #1
	bl sub_08038AA0
	mov r0, sl
	movs r1, #2
	bl sub_08038AA0
	bl sub_080076A8
	cmp r0, #0
	beq _080372A8
	ldr r0, [sp, #0xa8]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xa8]
	cmp r0, #3
	bls _08037292
	movs r3, #6
	mov r8, r3
	b _08037340
_08037292:
	movs r4, #0xa
	mov r8, r4
	movs r6, #0
	str r6, [sp, #0xac]
	ldr r0, [sp, #0xd8]
	strh r6, [r0]
	add r1, sp, #0xac
	ldrh r2, [r1]
	ldr r1, [sp, #0xd4]
	strh r2, [r1]
	b _08037508
_080372A8:
	movs r2, #6
	mov r8, r2
	b _08037340
_080372AE:
	ldr r3, [sp, #0xac]
	cmp r3, #0
	bne _080372B6
	b _08037508
_080372B6:
	movs r4, #0xd
	mov r8, r4
	movs r6, #0
	str r6, [sp, #0xb0]
_080372BE:
	mov r1, sl
	ldr r0, [r1, #0x2c]
	adds r0, #1
	str r0, [r1, #0x2c]
	b _08037508
_080372C8:
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xa
	bhi _080372D8
	b _08037508
_080372D8:
	movs r2, #0
	str r2, [sp, #0xb0]
	mov r0, sl
	bl sub_080388D0
	movs r3, #0xe
	mov r8, r3
	bl sub_08007544
	cmp r0, #0
	beq _080372F0
	b _08037508
_080372F0:
	bl sub_080075AC
	cmp r0, #0
	beq _080372FA
	b _08037508
_080372FA:
	movs r0, #0x39
	bl PlaySE
	b _08037508
_08037302:
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xa
	bhi _08037312
	b _08037508
_08037312:
	movs r4, #0
	str r4, [sp, #0xb0]
	mov r0, sl
	bl sub_080388D0
	movs r6, #0xf
	mov r8, r6
	b _08037508
_08037322:
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xa
	bhi _08037332
	b _08037508
_08037332:
	movs r0, #0
	str r0, [sp, #0xb0]
	mov r0, sl
	bl sub_080388D0
	movs r1, #6
	mov r8, r1
_08037340:
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
	b _08037508
_0803734A:
	bl sub_08016FA0
	cmp r0, #0
	beq _08037354
	b _080374BC
_08037354:
	bl sub_080271D0
	cmp r0, #0
	beq _0803735E
	b _080374BC
_0803735E:
	bl sub_08007544
	cmp r0, #0
	beq _08037368
	b _080374BC
_08037368:
	bl sub_08007510
	cmp r0, #0
	beq _08037372
	b _080374BC
_08037372:
	bl sub_080075AC
	cmp r0, #0
	beq _0803737C
	b _080374BC
_0803737C:
	bl sub_080076E0
	cmp r0, #0
	beq _08037386
	b _080374BC
_08037386:
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	beq _080373B8
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	bl FadeOutBGM
	bl GetMultiplayerId
	ldr r2, _080374B4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080374B8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	bl sub_080077AC
_080373B8:
	movs r0, #0xf
	ldr r2, [sp, #0xa8]
	ands r0, r2
	adds r2, #1
	str r2, [sp, #0xa8]
	cmp r0, #0
	beq _080373C8
	b _08037508
_080373C8:
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080373DE
	adds r0, #0xf
_080373DE:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08037400
	adds r1, #0x1f
_08037400:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803742C
	adds r0, #0xf
_0803742C:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803744E
	adds r1, #0x1f
_0803744E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803747A
	adds r0, #0xf
_0803747A:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803749C
	adds r1, #0x1f
_0803749C:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	b _08037508
	.align 2, 0
_080374B4: .4byte gPlayers
_080374B8: .4byte 0x0000FFFE
_080374BC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	bl FadeOutBGM
	bl sub_08016FA0
	cmp r0, #0
	bne _08037508
	bl sub_08007544
	cmp r0, #0
	bne _08037508
	bl sub_08007510
	cmp r0, #0
	bne _08037508
	bl sub_080075AC
	cmp r0, #0
	bne _08037508
	bl sub_080076E0
	cmp r0, #0
	bne _08037508
	bl GetMultiplayerId
	ldr r2, _080375A8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080375AC @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_08037508:
	mov r1, sl
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bne _080375BC
	movs r2, #0x14
	str r2, [sp, #0x98]
	ldrh r3, [r1, #0x28]
	str r3, [sp, #0xa0]
	movs r4, #0
	str r4, [sp, #0xa4]
	mov r0, sl
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080375B4
	bl sub_08016FA0
	cmp r0, #0
	bne _08037586
	bl sub_080271D0
	cmp r0, #0
	bne _08037586
	bl sub_08007544
	cmp r0, #0
	bne _08037586
	bl sub_08007510
	cmp r0, #0
	bne _08037586
	bl sub_080075AC
	cmp r0, #0
	bne _08037586
	bl sub_080076E0
	cmp r0, #0
	bne _08037586
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080375B0 @ =0x0009007A
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
	bl GetMultiplayerId
	ldr r2, _080375A8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007798
_08037586:
	mov r6, sl
	ldrh r3, [r6, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	movs r0, #0x10
	mov r8, r0
	movs r0, #8
	strh r0, [r6, #0xa]
	b _080375BC
	.align 2, 0
_080375A8: .4byte gPlayers
_080375AC: .4byte 0x0000FFFE
_080375B0: .4byte 0x0009007A
_080375B4:
	add r1, sp, #0xa4
	ldrh r2, [r1]
	mov r1, sl
	strh r2, [r1, #0xa]
_080375BC:
	ldr r0, [sp, #0x98]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x98]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08037620
	ldr r2, [sp, #0xa0]
	cmp r2, #0
	beq _08037620
	bl sub_08007544
	cmp r0, #0
	bne _08037604
	bl sub_08007510
	cmp r0, #0
	bne _08037604
	bl sub_08007604
	cmp r0, #0
	bne _08037604
	bl sub_080075AC
	cmp r0, #0
	bne _08037604
	ldr r4, [sp, #0xa4]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0xa0]
	bl sub_0800EA74
_08037604:
	movs r0, #2
	ldr r6, [sp, #0x98]
	ands r0, r6
	cmp r0, #0
	beq _08037624
	ldr r1, [sp, #0xa4]
	lsls r0, r1, #0x10
	ldr r2, _0803761C @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	b _08037624
	.align 2, 0
_0803761C: .4byte 0xFFFF0000
_08037620:
	ldr r3, _08037988 @ =0x0000FFFF
	str r3, [sp, #0x98]
_08037624:
	mov r4, r8
	cmp r4, #9
	bne _08037710
	bl GetMultiplayerId
	mov r6, sl
	ldr r4, [r6, #0x10]
	asrs r4, r4, #0xc
	ldr r6, _0803798C @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	mov r1, sl
	ldr r2, [r1, #0x14]
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
	bne _08037710
	ldr r2, [sp, #0xcc]
	ldrh r0, [r2]
	cmp r0, #2
	bne _08037710
	cmp r4, #0x31
	bhi _08037710
	bl GetMultiplayerId
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r7, r6, #0
	adds r7, #0x80
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08037710
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	bne _080376A8
	b _0803787A
_080376A8:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08037710
	bl sub_08007544
	cmp r0, #0
	bne _08037710
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _08037990 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	mov r0, sl
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	mov r6, sl
	ldrh r1, [r6]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r6, #0x2c]
	str r0, [r1]
_08037710:
	mov r1, sl
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _0803771A
	b _0803787A
_0803771A:
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x84]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08005F60
	mov r2, sl
	ldr r0, [r2, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r2, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r3, sl
	ldr r0, [r3, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x30
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0xc8]
	ldrh r1, [r0]
	ldr r2, [sp, #0x9c]
	str r2, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0xcc]
	ldr r3, [sp, #0xd0]
	bl sub_08026C40
	mov r1, sl
	adds r1, #0x4e
	strh r0, [r1]
	mov r3, r8
	cmp r3, #0xc
	bne _08037796
	str r6, [sp]
	add r0, sp, #0x10
	movs r1, #0xb
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
_08037796:
	mov r4, r8
	cmp r4, #0xa
	bne _080377B0
	str r6, [sp]
	add r0, sp, #0x10
	movs r1, #0xa
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
_080377B0:
	bl sub_08007510
	cmp r0, #0
	bne _0803787A
	bl sub_08007604
	cmp r0, #0
	bne _0803787A
	bl sub_08007544
	cmp r0, #0
	bne _0803787A
	bl sub_080075AC
	cmp r0, #0
	bne _0803787A
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldr r6, [sp, #0x8c]
	ldrh r2, [r6, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	mov r0, r8
	cmp r0, #3
	beq _080377FE
	bl sub_080077C0
	cmp r0, #0
	bne _080377FE
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
_080377FE:
	add r7, sp, #0x78
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xc8]
	ldrh r2, [r3]
	ldr r4, [sp, #0xcc]
	ldrh r3, [r4]
	mov r6, sb
	str r6, [sp]
	add r6, sp, #0x2c
	str r6, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	mov r0, r8
	cmp r0, #0xc
	bne _0803784E
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp, #0xd4]
	ldrh r3, [r4]
	movs r2, #0
	str r2, [sp]
	str r6, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xb
	bl sub_08004344
_0803784E:
	mov r0, r8
	cmp r0, #0xa
	bne _0803787A
	add r2, sp, #0x78
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r4, #0x7a
	add r4, sp
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r2, [sp, #0xd4]
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	str r6, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08004344
_0803787A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080378B0
	bl sub_080074CC
	cmp r0, #0
	bne _080378B0
	ldr r0, _08037994 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080378B0
	bl sub_08007578
	cmp r0, #0
	bne _080378B0
	mov r3, r8
	cmp r3, #0x11
	beq _080378B0
	bl _08036FDC
_080378B0:
	bl sub_080292D0
	mov r4, sl
	ldrh r3, [r4, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	bl sub_08038948
	bl sub_080389A4
	bl sub_08038A68
	ldr r1, _08037998 @ =gActiveEnemyMask
	mov r6, sl
	ldrh r6, [r6]
	lsls r4, r6
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	ldr r0, [sp, #0x94]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _08037942
	ldr r4, _0803798C @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08037942
	ldr r0, _0803799C @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _08037942
	bl sub_08007544
	cmp r0, #0
	bne _08037942
	bl sub_08007510
	cmp r0, #0
	bne _08037942
	bl sub_08007604
	cmp r0, #0
	bne _08037942
	bl sub_080075AC
	cmp r0, #0
	bne _08037942
	bl sub_080076E0
	cmp r0, #0
	bne _08037942
	ldr r0, _080379A0 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_08037942:
	bl sub_08007750
	cmp r0, #0
	beq _0803794C
	b _08037A72
_0803794C:
	bl sub_080074CC
	cmp r0, #0
	beq _08037956
	b _08037A72
_08037956:
	ldr r4, _08037994 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037968
	b _08037A72
_08037968:
	bl sub_08007578
	cmp r0, #0
	beq _08037972
	b _08037A72
_08037972:
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	mov r1, sl
	ldrh r0, [r1, #0x36]
	cmp r0, #0
	beq _08037A72
	ldr r4, _080379A4 @ =0x03003D94
	b _080379A8
	.align 2, 0
_08037988: .4byte 0x0000FFFF
_0803798C: .4byte gPlayers
_08037990: .4byte 0x0000FFFE
_08037994: .4byte gUnknown_030063D8
_08037998: .4byte gActiveEnemyMask
_0803799C: .4byte gUnknown_030064D8
_080379A0: .4byte gMapLayer_03003910
_080379A4: .4byte 0x03003D94
_080379A8:
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _080379D4
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080379D4
	ldr r3, _08037B28 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080379D4
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_080379D4:
	ldr r4, _08037B2C @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x8c]
	bl CalcExpGain
	str r0, [sp, #0x9c]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x9c]
	bl AddExp
	adds r5, r0, #0
	movs r4, #0x13
	ldr r6, _08037B30 @ =0x0000FFFF
_08037A02:
	mov r1, sl
	ldr r0, [r1, #0x14]
	ldr r2, _08037B34 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r1, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _08037A38
	bl sub_08007510
	cmp r0, #0
	bne _08037A38
	bl sub_080075AC
	cmp r0, #0
	bne _08037A38
	ldr r0, _08037B38 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08037A38
	mov r0, sl
	ldr r1, [sp, #0x9c]
	bl sub_08024320
_08037A38:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bne _08037A02
	cmp r5, #0
	beq _08037A72
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _08037B2C @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_08037A72:
	bl sub_08007750
	cmp r0, #0
	bne _08037B10
	bl sub_080074CC
	cmp r0, #0
	bne _08037B10
	ldr r4, _08037B3C @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037B10
	bl sub_08007578
	cmp r0, #0
	bne _08037B10
	ldr r0, _08037B40 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08037B44 @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08037AFA
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08037AFA
	ldr r2, _08037B48 @ =gPlayerStats
	ldr r4, _08037B4C @ =0x00000272
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
	ldr r0, _08037B50 @ =0x00000275
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
_08037AFA:
	bl sub_0800F53C
	ldr r4, _08037B54 @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08037B10
	ldr r0, [r4]
	bl KillThread
_08037B10:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xe0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037B28: .4byte 0x00000157
_08037B2C: .4byte gPlayers
_08037B30: .4byte 0x0000FFFF
_08037B34: .4byte 0xFFFFFE00
_08037B38: .4byte gMapLayer_03003910
_08037B3C: .4byte gUnknown_030063D8
_08037B40: .4byte 0x00000BB8
_08037B44: .4byte gUnknown_03003D08
_08037B48: .4byte gPlayerStats
_08037B4C: .4byte 0x00000272
_08037B50: .4byte 0x00000275
_08037B54: .4byte gUnknownThreadPtr_030063E4
