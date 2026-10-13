	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08031334
sub_08031334: @ 0x08031334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	adds r7, r0, #0
	ldr r4, _080313B0 @ =gUnknown_03006814
	movs r0, #0xa0
	bl Alloc
	str r0, [r4]
	movs r2, #0
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0xd4]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xdc]
	movs r3, #0
	movs r1, #0
_0803135E:
	ldr r0, [r4]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #3
	bls _0803135E
	ldr r0, _080313B4 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	adds r4, r7, #0
	adds r4, #0x64
	adds r6, r7, #0
	adds r6, #0x48
	movs r3, #0x4a
	adds r3, r3, r7
	mov sl, r3
	adds r3, r7, #0
	adds r3, #0x4c
	str r3, [sp, #0xd8]
	adds r3, #0x26
	str r3, [sp, #0xe0]
	movs r3, #0x6e
	adds r3, r3, r7
	mov sb, r3
	adds r3, r7, #0
	adds r3, #0x74
	str r3, [sp, #0xe4]
	cmp r2, r0
	bhs _080313CA
	adds r3, r0, #0
_080313A2:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _080313B8
	ldr r0, [r1, #4]
	adds r5, r1, r0
	b _080313C2
	.align 2, 0
_080313B0: .4byte gUnknown_03006814
_080313B4: .4byte gUnknown_030063D8
_080313B8:
	cmp r0, #3
	bne _080313C2
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x88]
_080313C2:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _080313A2
_080313CA:
	ldrh r0, [r5, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x84]
	bl sub_08001EC4
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	movs r2, #0
	movs r0, #0xfe
	strh r0, [r7, #2]
	ldr r1, [sp, #0x88]
	ldrh r0, [r1, #0x28]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #0x2a]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _0803153C @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r4, #0
	ldr r0, [sp, #0x84]
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	strh r2, [r6]
	mov r5, sl
	strh r2, [r5]
	ldr r0, [sp, #0xd8]
	strh r2, [r0]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	ldr r1, [sp, #0xe0]
	ldrh r4, [r1]
	ldr r6, _08031540 @ =0x080FB740
	mov r2, r8
	subs r2, #1
	lsls r2, r2, #2
	mov r8, r2
	adds r0, r2, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	ldr r3, [sp, #0xe0]
	strh r4, [r3]
	mov r5, sb
	ldrh r4, [r5]
	adds r6, #2
	add r6, r8
	ldrh r0, [r6]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r5]
	ldr r1, [sp, #0xe0]
	ldrh r0, [r1]
	strh r0, [r7, #0x38]
	ldr r2, [sp, #0xe4]
	ldrh r0, [r2]
	strh r0, [r7, #0x3a]
	ldr r3, [sp, #0x84]
	ldr r0, [r3, #0x28]
	ldrh r1, [r3, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
	ldr r4, [sp, #0x84]
	ldr r1, [r4, #0x28]
	movs r4, #1
	rsbs r4, r4, #0
	add r0, sp, #0x10
	movs r2, #5
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r0, [sp, #0x90]
	adds r0, #0x15
	ldr r5, [sp, #0x84]
	ldrh r2, [r5, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x90]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x90]
	adds r0, #6
	strb r0, [r1, #0x1d]
	ldr r1, _08031544 @ =0x00100018
	ldr r0, [sp, #0xd4]
	movs r2, #7
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r0, [sp, #0xd4]
	ldr r1, [r0, #0xc]
	movs r0, #0x17
	movs r2, #1
	bl LoadPalette
	movs r0, #7
	ldr r1, [sp, #0xd4]
	strb r0, [r1, #0x1c]
	bl sub_08033DF4
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
	ldr r4, _08031548 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _08031532
	adds r5, r4, #0
	movs r4, #0xd4
_080314FE:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _080314FE
	bl GetMultiplayerId
	ldr r6, _08031548 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r6
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r6
	movs r1, #5
	strh r1, [r0, #0xa]
_08031532:
	ldr r0, [sp, #0xdc]
	movs r1, #0x15
	bl sub_0802934C
	b _08031550
	.align 2, 0
_0803153C: .4byte gMapLayer_03003910
_08031540: .4byte 0x080FB740
_08031544: .4byte 0x00100018
_08031548: .4byte gPlayers
_0803154C:
	bl WaitFrame
_08031550:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0803154C
	movs r2, #0
	str r2, [sp, #0x9c]
	ldr r3, _080315A8 @ =0x0000FFFF
	str r3, [sp, #0x94]
	movs r4, #0
	str r4, [sp, #0xbc]
	mov sl, r4
	movs r5, #1
	str r5, [sp, #0x98]
	ldr r0, _080315AC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x92
	strh r4, [r0]
	str r2, [sp, #0xc0]

_08031572:
	bl sub_080271D0
	cmp r0, #0
	beq _0803157E
	bl _080321F4
_0803157E:
	ldr r0, [sp, #0x90]
	adds r0, #0x15
	ldr r3, [sp, #0x84]
	ldrh r2, [r3, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	mov r4, sl
	cmp r4, #0x16
	bls _0803159C
	bl _080321F4
_0803159C:
	lsls r0, r4, #2
	ldr r1, _080315B0 @ =_080315B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080315A8: .4byte 0x0000FFFF
_080315AC: .4byte gUnknown_030063D8
_080315B0: .4byte _080315B4
_080315B4: @ jump table
	.4byte _08031610 @ case 0
	.4byte _0803164C @ case 1
	.4byte _08031700 @ case 2
	.4byte _0803167A @ case 3
	.4byte _080316B4 @ case 4
	.4byte _080317CE @ case 5
	.4byte _080317E4 @ case 6
	.4byte _0803181C @ case 7
	.4byte _08031844 @ case 8
	.4byte _0803186C @ case 9
	.4byte _08031894 @ case 10
	.4byte _080318BC @ case 11
	.4byte _080318F6 @ case 12
	.4byte _08031932 @ case 13
	.4byte _0803196E @ case 14
	.4byte _080319A4 @ case 15
	.4byte _08031B80 @ case 16
	.4byte _08031C1C @ case 17
	.4byte _08031FA0 @ case 18
	.4byte _08031FFC @ case 19
	.4byte _080320DA @ case 20
	.4byte _08032142 @ case 21
	.4byte _08032148 @ case 22
_08031610:
	bl sub_08007510
	cmp r0, #0
	bne _0803163E
	bl sub_08007544
	cmp r0, #0
	bne _0803163E
	bl sub_080075AC
	cmp r0, #0
	bne _0803163E
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08031648 @ =0x0009006F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x8c]
_0803163E:
	movs r5, #1
	mov sl, r5
	bl _080321F4
	.align 2, 0
_08031648: .4byte 0x0009006F
_0803164C:
	bl sub_08007544
	cmp r0, #0
	bne _08031672
	bl sub_080075AC
	cmp r0, #0
	bne _08031672
	ldr r0, [sp, #0x8c]
	bl sub_0802294C
	cmp r0, #0
	bne _0803166A
	bl _080321F4
_0803166A:
	movs r0, #3
	mov sl, r0
	bl _080321F4
_08031672:
	movs r1, #3
	mov sl, r1
	bl _080321F4
_0803167A:
	bl sub_08007510
	cmp r0, #0
	bne _080316A8
	bl sub_08007544
	cmp r0, #0
	bne _080316A8
	bl sub_080075AC
	cmp r0, #0
	bne _080316A8
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080316B0 @ =0x00090070
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x8c]
_080316A8:
	movs r2, #4
	mov sl, r2
	bl _080321F4
	.align 2, 0
_080316B0: .4byte 0x00090070
_080316B4:
	bl sub_08007544
	cmp r0, #0
	bne _080316DA
	bl sub_080075AC
	cmp r0, #0
	bne _080316DA
	ldr r0, [sp, #0x8c]
	bl sub_0802294C
	cmp r0, #0
	bne _080316D2
	bl _080321F4
_080316D2:
	movs r3, #2
	mov sl, r3
	bl _080321F4
_080316DA:
	bl GetMultiplayerId
	ldr r2, _080316F8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080316FC @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r4, #2
	mov sl, r4
	bl _080321F4
	.align 2, 0
_080316F8: .4byte gPlayers
_080316FC: .4byte 0x0000FFFE
_08031700:
	ldr r2, _080317A4 @ =gMapLayer_03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r0, _080317A8 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0803172C
	bl sub_08007544
	cmp r0, #0
	bne _0803172C
	bl sub_080075AC
	cmp r0, #0
	bne _0803172C
	movs r0, #0x6a
	bl PlaySE
_0803172C:
	bl sub_08007544
	cmp r0, #0
	bne _080317B4
	bl sub_080075AC
	cmp r0, #0
	bne _080317B4
	ldr r5, [sp, #0x9c]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
	ldr r2, [sp, #0x9c]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc7
	bgt _08031774
	bl _080321F4
_08031774:
	movs r3, #5
	mov sl, r3
	ldr r0, [sp, #0xdc]
	movs r1, #0x16
	bl sub_0802934C
	movs r0, #0x17
	str r0, [r7, #0x5c]
	bl GetMultiplayerId
	ldr r2, _080317AC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080317B0 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x6a
	bl StopSE
	bl _080321F4
	.align 2, 0
_080317A4: .4byte gMapLayer_03003910
_080317A8: .4byte gFrameCounter
_080317AC: .4byte gPlayers
_080317B0: .4byte 0x0000FFFE
_080317B4:
	movs r0, #0x6a
	bl StopSE
	movs r4, #5
	mov sl, r4
	ldr r0, [sp, #0xdc]
	movs r1, #0x16
	bl sub_0802934C
	movs r0, #0x17
	str r0, [r7, #0x5c]
	bl sub_080321E0
_080317CE:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _080317D8
	bl _080321F4
_080317D8:
	movs r5, #6
	mov sl, r5
	movs r0, #0
	str r0, [sp, #0xb8]
	bl _080321F4
_080317E4:
	bl sub_08007544
	cmp r0, #0
	bne _080317F6
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_080317F6:
	ldr r1, _08031818 @ =0x080FBC04
	ldr r2, [sp, #0xc0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sl, r0
	adds r2, #1
	str r2, [sp, #0xc0]
	cmp r2, #5
	bhi _0803180E
	bl _080321F4
_0803180E:
	movs r3, #0
	str r3, [sp, #0xc0]
	bl _080321F4
	.align 2, 0
_08031818: .4byte 0x080FBC04
_0803181C:
	bl sub_08007544
	cmp r0, #0
	bne _0803182E
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_0803182E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08033EE0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r4, #0xb
	mov sl, r4
	bl _080321F4
_08031844:
	bl sub_08007544
	cmp r0, #0
	bne _08031856
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_08031856:
	adds r0, r7, #0
	movs r1, #2
	bl sub_08033EE0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r5, #0xb
	mov sl, r5
	bl _080321F4
_0803186C:
	bl sub_08007544
	cmp r0, #0
	bne _0803187E
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_0803187E:
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_08033EE0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r0, #0xb
	mov sl, r0
	bl _080321F4
_08031894:
	bl sub_08007544
	cmp r0, #0
	bne _080318A6
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_080318A6:
	adds r0, r7, #0
	movs r1, #0x12
	bl sub_08033EE0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r1, #0xb
	mov sl, r1
	bl _080321F4
_080318BC:
	bl sub_08007544
	cmp r0, #0
	bne _080318CE
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_080318CE:
	ldr r0, [sp, #0xb8]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xb8]
	cmp r0, #0xb4
	bhi _080318DE
	bl _080321F4
_080318DE:
	movs r0, #0x17
	str r0, [r7, #0x5c]
	ldr r0, [sp, #0xdc]
	movs r1, #0x16
	bl sub_0802934C
	movs r3, #5
	mov sl, r3
	movs r4, #0
	str r4, [sp, #0xb8]
	bl _080321F4
_080318F6:
	bl sub_08007544
	cmp r0, #0
	bne _08031908
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_08031908:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08033F48
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r5, #0xe
	mov sl, r5
	bl sub_080076A8
	movs r1, #0x3c
	str r1, [sp, #0xb8]
	cmp r0, #0
	bne _0803192A
	bl _080321F4
_0803192A:
	movs r2, #0x78
	str r2, [sp, #0xb8]
	bl _080321F4
_08031932:
	bl sub_08007544
	cmp r0, #0
	bne _08031944
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_08031944:
	adds r0, r7, #0
	movs r1, #1
	bl sub_08033F48
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r3, #0xe
	mov sl, r3
	bl sub_080076A8
	movs r4, #0x3c
	str r4, [sp, #0xb8]
	cmp r0, #0
	bne _08031966
	bl _080321F4
_08031966:
	movs r5, #0x78
	str r5, [sp, #0xb8]
	bl _080321F4
_0803196E:
	bl sub_08007544
	cmp r0, #0
	bne _08031980
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
_08031980:
	ldr r0, [sp, #0xb8]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xb8]
	cmp r0, #0xf0
	bhi _08031990
	bl _080321F4
_08031990:
	movs r0, #0x17
	str r0, [r7, #0x5c]
	ldr r0, [sp, #0xdc]
	movs r1, #0x16
	bl sub_0802934C
	movs r2, #5
	mov sl, r2
	bl _080321F4
_080319A4:
	ldr r1, _08031B40 @ =0x0000012B
	ldr r0, [sp, #0xb8]
	adds r3, r0, #0
	adds r3, #1
	str r3, [sp, #0xb8]
	cmp r0, r1
	bls _080319B4
	b _08031B50
_080319B4:
	bl sub_08007544
	cmp r0, #0
	bne _080319E0
	bl sub_080075AC
	cmp r0, #0
	bne _080319E0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
_080319E0:
	movs r0, #7
	ldr r4, [sp, #0xb8]
	ands r0, r4
	cmp r0, #0
	beq _080319EE
	bl _080321F4
_080319EE:
	bl sub_08007544
	cmp r0, #0
	bne _08031A04
	bl sub_080075AC
	cmp r0, #0
	bne _08031A04
	movs r0, #0x28
	bl PlaySE
_08031A04:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08031A14
	adds r0, #0xf
_08031A14:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #0
	adds r4, #0xa1
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08031A32
	adds r1, #0xf
_08031A32:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r5, _08031B44 @ =0x00000115
	adds r1, r1, r5
	ldr r0, _08031B48 @ =gMapLayer_03003910
	adds r6, r0, #0
	adds r6, #0x5e
	movs r0, #0
	ldrsh r2, [r6, r0]
	ldr r3, [sp, #0x9c]
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	adds r2, r2, r5
	subs r1, r1, r2
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08031A6C
	adds r0, #0xf
_08031A6C:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #0
	adds r4, #0xb8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08031A8A
	adds r1, #0xf
_08031A8A:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x9f
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, r0, r5
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08031ABA
	adds r0, #0xf
_08031ABA:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #0
	adds r4, #0xca
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08031AD8
	adds r1, #0xf
_08031AD8:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08031B4C @ =0x0000012F
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, r0, r5
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08031B06
	adds r0, #0xf
_08031B06:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #0
	adds r4, #0x90
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08031B24
	adds r1, #0xf
_08031B24:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x93
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, r0, r5
	subs r1, r1, r0
	b _080320BA
	.align 2, 0
_08031B40: .4byte 0x0000012B
_08031B44: .4byte 0x00000115
_08031B48: .4byte gMapLayer_03003910
_08031B4C: .4byte 0x0000012F
_08031B50:
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r3, #0x10
	mov sl, r3
	ldr r4, [sp, #0xbc]
	adds r4, #1
	str r4, [sp, #0xbc]
	movs r5, #0
	str r5, [sp, #0xa4]
	ldr r0, _08031B74 @ =0xFFFFE000
	str r0, [sp, #0xa0]
	movs r1, #0
	str r1, [sp, #0xb4]
	ldr r0, _08031B78 @ =0x0009E200
	str r0, [r7, #0x10]
	ldr r0, _08031B7C @ =0x0005C700
	str r0, [r7, #0x14]
	b _080321F4
	.align 2, 0
_08031B74: .4byte 0xFFFFE000
_08031B78: .4byte 0x0009E200
_08031B7C: .4byte 0x0005C700
_08031B80:
	ldr r2, _08031C0C @ =0x080FB5D0
	ldr r0, [r2, #8]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r2, #0xc]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r2, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	adds r2, r2, r3
	str r2, [sp, #0xa0]
	adds r3, #0x10
	str r3, [sp, #0xa4]
	cmp r2, #0
	bgt _08031BB0
	b _080321F4
_08031BB0:
	bl sub_08007544
	cmp r0, #0
	bne _08031BC6
	bl sub_080075AC
	cmp r0, #0
	bne _08031BC6
	movs r0, #0x81
	bl PlaySE
_08031BC6:
	movs r4, #0
	str r4, [sp, #0xa0]
	ldr r5, _08031C10 @ =0xFFFFFE80
	ldr r0, [sp, #0xb4]
	asrs r5, r0
	str r5, [sp, #0xa4]
	adds r0, #1
	str r0, [sp, #0xb4]
	adds r0, r5, #0
	cmp r0, #0
	bge _08031BDE
	rsbs r0, r0, #0
_08031BDE:
	cmp r0, #1
	ble _08031BE4
	b _080321F4
_08031BE4:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	bl sub_08007544
	cmp r0, #0
	bne _08031C14
	bl sub_080075AC
	cmp r0, #0
	bne _08031C14
	movs r0, #0x87
	bl PlaySE
	b _080321F4
	.align 2, 0
_08031C0C: .4byte 0x080FB5D0
_08031C10: .4byte 0xFFFFFE80
_08031C14:
	movs r0, #0x87
	bl StopSE
	b _080321F4
_08031C1C:
	bl GetMultiplayerId
	ldr r2, [r7, #0x10]
	asrs r2, r2, #0xc
	ldr r6, _08031D4C @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	add r4, sp, #0x78
	strh r2, [r4]
	bl GetMultiplayerId
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	muls r0, r5, r0
	adds r2, r6, #0
	adds r2, #0x5c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x7a
	strh r1, [r0]
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08031D0A
	bl sub_08007544
	cmp r0, #0
	bne _08031D0A
	cmp r4, #0xf
	bhi _08031D0A
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	movs r0, #0x80
	adds r0, r0, r6
	mov r8, r0
	add r1, r8
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _08031D0A
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08031D0A
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _08031D50 @ =0x0000FFFE
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
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, r8
	ldr r0, [r7, #0x2c]
	str r0, [r1]
	movs r3, #0
	str r3, [sp, #0xb0]
_08031D0A:
	ldr r0, [sp, #0xb0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r0, #0x3d
	bne _08031D1E

	thumb_func_start sub_08031D18
sub_08031D18: @ 0x08031D18
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
_08031D1E:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x14]
	str r0, [r7, #0x1c]
	bl sub_080076A8
	cmp r0, #0
	beq _08031D58
	ldr r2, _08031D54 @ =0x080FB5D0
	movs r4, #8
	ldrsh r0, [r7, r4]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r3, #0x96
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r5, #8
	ldrsh r0, [r7, r5]
	b _08031D74
	.align 2, 0
_08031D4C: .4byte gPlayers
_08031D50: .4byte 0x0000FFFE
_08031D54: .4byte 0x080FB5D0
_08031D58:
	ldr r2, _08031DC4 @ =0x080FB5D0
	movs r1, #8
	ldrsh r0, [r7, r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r3, #0x64
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r0, [r7, r4]
_08031D74:
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r5, #8
	ldrsh r0, [r7, r5]
	ldr r1, [r7, #0x10]
	ldr r2, [r7, #0x14]
	movs r3, #0
	bl sub_08005A2C
	str r0, [sp, #0xb4]
	cmp r0, #0
	bne _08031D9C
	b _08031EB0
_08031D9C:
	bl sub_08007544
	cmp r0, #0
	bne _08031DAC
	bl sub_080075AC
	cmp r0, #0
	beq _08031DB2
_08031DAC:
	movs r0, #0x87
	bl StopSE
_08031DB2:
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #2
	beq _08031E00
	cmp r0, #2
	bgt _08031DC8
	cmp r0, #0
	beq _08031DD2
	b _080321F4
	.align 2, 0
_08031DC4: .4byte 0x080FB5D0
_08031DC8:
	cmp r0, #4
	beq _08031E2A
	cmp r0, #6
	beq _08031E7C
	b _080321F4
_08031DD2:
	ldr r0, [sp, #0xb4]
	subs r0, #1
	cmp r0, #1
	bne _08031DF8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031DF2
	rsbs r0, r0, #0
_08031DF2:
	adds r0, #2
_08031DF4:
	strh r0, [r7, #8]
	b _080321F4
_08031DF8:
	cmp r0, #7
	beq _08031DFE
	b _080321F4
_08031DFE:
	b _08031E0E
_08031E00:
	ldr r0, [sp, #0xb4]
	subs r0, #1
	cmp r0, #1
	beq _08031E52
	cmp r0, #3
	beq _08031E0E
	b _080321F4
_08031E0E:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031E26
	rsbs r0, r0, #0
_08031E26:
	adds r0, #4
	b _08031DF4
_08031E2A:
	ldr r0, [sp, #0xb4]
	subs r0, #1
	cmp r0, #3
	bne _08031E4C
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031DF4
	rsbs r0, r0, #0
	b _08031DF4
_08031E4C:
	cmp r0, #5
	beq _08031E52
	b _080321F4
_08031E52:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08031E6A
	rsbs r1, r1, #0
_08031E6A:
	adds r0, r1, #6
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _08031E78
	b _080321F4
_08031E78:
	subs r0, r1, #2
	b _08031DF4
_08031E7C:
	ldr r0, [sp, #0xb4]
	subs r0, #1
	cmp r0, #5
	bne _08031E9E
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031DF4
	rsbs r0, r0, #0
	b _08031DF4
_08031E9E:
	cmp r0, #7
	beq _08031EA4
	b _080321F4
_08031EA4:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	b _08031EF4
_08031EB0:
	bl sub_08007544
	cmp r0, #0
	bne _08031EC8
	bl sub_080075AC
	cmp r0, #0
	bne _08031EC8
	movs r0, #0x87
	bl PlaySEOrContinue
	b _08031ECE
_08031EC8:
	movs r0, #0x87
	bl StopSE
_08031ECE:
	movs r2, #8
	ldrsh r0, [r7, r2]
	cmp r0, #3
	beq _08031F06
	cmp r0, #3
	bgt _08031EE0
	cmp r0, #1
	beq _08031EEA
	b _08031F74
_08031EE0:
	cmp r0, #5
	beq _08031F30
	cmp r0, #7
	beq _08031F58
	b _08031F74
_08031EEA:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
_08031EF4:
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031F02
	rsbs r0, r0, #0
_08031F02:
	adds r0, #3
	b _08031DF4
_08031F06:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08031F1E
	rsbs r1, r1, #0
_08031F1E:
	adds r0, r1, #5
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _08031F2C
	b _080321F4
_08031F2C:
	subs r0, r1, #3
	b _08031DF4
_08031F30:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031F48
	rsbs r0, r0, #0
_08031F48:
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08031F54
	b _080321F4
_08031F54:
	movs r0, #7
	b _08031DF4
_08031F58:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031F70
	rsbs r0, r0, #0
_08031F70:
	adds r0, #1
	b _08031DF4
_08031F74:
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x1c]
	str r0, [r7, #0x14]
	ldr r2, _08031F98 @ =0x080FB720
	ldr r1, _08031F9C @ =0x080FB730
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r7, #8]
	movs r4, #0x12
	mov sl, r4
	b _080321F4
	.align 2, 0
_08031F98: .4byte 0x080FB720
_08031F9C: .4byte 0x080FB730
_08031FA0:
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08005F60
	ldr r5, [sp, #0x88]
	ldrh r0, [r5, #0x3c]
	lsls r0, r0, #0xf
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	asrs r0, r0, #4
	adds r2, r2, r0
	str r2, [r7, #0x10]
	ldrh r0, [r5, #0x3e]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #4
	adds r1, r1, r0
	str r1, [r7, #0x14]
	ldrh r0, [r5, #0x3c]
	lsls r0, r0, #0xf
	subs r0, r0, r2
	cmp r0, #0
	bge _08031FD4
	rsbs r0, r0, #0
_08031FD4:
	ldr r2, _08031FF8 @ =0x00000FFF
	cmp r0, r2
	ble _08031FDC
	b _080321F4
_08031FDC:
	ldr r3, [sp, #0x88]
	ldrh r0, [r3, #0x3e]
	lsls r0, r0, #0xf
	subs r0, r0, r1
	cmp r0, #0
	bge _08031FEA
	rsbs r0, r0, #0
_08031FEA:
	cmp r0, r2
	ble _08031FF0
	b _080321F4
_08031FF0:
	movs r4, #0x11
	mov sl, r4
	b _080321F4
	.align 2, 0
_08031FF8: .4byte 0x00000FFF
_08031FFC:
	ldr r1, _080320C4 @ =0x0000012B
	ldr r0, [sp, #0xb8]
	adds r5, r0, #0
	adds r5, #1
	str r5, [sp, #0xb8]
	cmp r0, r1
	bhi _080320C8
	bl sub_08007544
	cmp r0, #0
	bne _08032036
	bl sub_080075AC
	cmp r0, #0
	bne _08032036
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10

_0803202E:
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
_08032036:
	movs r0, #7
	ldr r1, [sp, #0xb8]
	ands r0, r1
	cmp r0, #0
	beq _08032042
	b _080321F4
_08032042:
	bl sub_08007544
	cmp r0, #0
	bne _08032058
	bl sub_080075AC
	cmp r0, #0
	bne _08032058
	movs r0, #0x28
	bl PlaySE
_08032058:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	bl Random
	movs r3, #0
	ldrsh r2, [r4, r3]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0803208E
	adds r0, r1, #7
_0803208E:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r2, r0
	bl Random
	movs r1, #0
	ldrsh r3, [r5, r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _080320AE
	adds r1, r0, #3
_080320AE:
	asrs r1, r1, #2
	lsls r1, r1, #2
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r3, r1
_080320BA:
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
	b _080321F4
	.align 2, 0
_080320C4: .4byte 0x0000012B
_080320C8:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #2
	bl FadeOutBGM
	b _080321F4
_080320DA:
	ldr r4, _08032130 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08032138
	ldr r0, _08032134 @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _08032138
	bl sub_08007544
	cmp r0, #0
	bne _08032138
	bl sub_08007510
	cmp r0, #0
	bne _08032138
	bl sub_08007604
	cmp r0, #0
	bne _08032138
	bl sub_080075AC
	cmp r0, #0
	bne _08032138
	bl sub_080076E0
	cmp r0, #0
	bne _08032138
	ldr r0, [sp, #0x8c]
	bl sub_0802294C
	cmp r0, #0
	beq _080321F4
	movs r2, #0x16
	mov sl, r2
	bl sub_080077AC
	b _080321F4
	.align 2, 0
_08032130: .4byte gPlayers
_08032134: .4byte gUnknown_030064D8
_08032138:
	movs r3, #0x16
	mov sl, r3
	bl sub_080077AC
	b _080321F4
_08032142:
	movs r4, #0
	str r4, [sp, #0x98]
	b _080321F4
_08032148:
	ldr r0, _0803228C @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0803216A
	bl sub_08007544
	cmp r0, #0
	bne _0803216A
	bl sub_080075AC
	cmp r0, #0
	bne _0803216A
	movs r0, #0x6a
	bl PlaySE
_0803216A:
	ldr r2, _08032290 @ =gMapLayer_03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r5, [sp, #0x9c]
	lsls r0, r5, #0x10
	ldr r1, _08032294 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	bl sub_08007544
	cmp r0, #0
	bne _080321AC
	bl sub_080075AC
	cmp r0, #0
	bne _080321AC
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
_080321AC:
	ldr r2, [sp, #0x9c]
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _080321F4
	movs r3, #0x15
	mov sl, r3
	bl sub_08016FA0
	cmp r0, #0
	bne _080321F4
	bl sub_08007544
	cmp r0, #0
	bne _080321F4
	bl sub_08007510
	cmp r0, #0
	bne _080321F4
	bl sub_080075AC
	cmp r0, #0
	bne _080321F4
	bl sub_080076E0
	cmp r0, #0
	bne _080321F4

	thumb_func_start sub_080321E0
sub_080321E0: @ 0x080321E0
	bl GetMultiplayerId
	ldr r2, _08032298 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803229C @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_080321F4:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _080322DA
	movs r4, #0x14
	str r4, [sp, #0x94]
	ldrh r5, [r7, #0x28]
	str r5, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0xac]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080322D4
	ldr r1, [sp, #0xbc]
	cmp r1, #0
	beq _080322A4
	bl sub_08016FA0
	cmp r0, #0
	bne _08032276
	bl sub_080271D0
	cmp r0, #0
	bne _08032276
	bl sub_08007544
	cmp r0, #0
	bne _08032276
	bl sub_08007510
	cmp r0, #0
	bne _08032276
	bl sub_080075AC
	cmp r0, #0
	bne _08032276
	bl sub_080076E0
	cmp r0, #0
	bne _08032276
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080322A0 @ =0x00090072
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x8c]
	bl GetMultiplayerId
	ldr r2, _08032298 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007798
_08032276:
	movs r2, #0
	str r2, [sp, #0xb8]
	movs r3, #0x13
	mov sl, r3
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r0, #0x87
	bl StopSE
	b _080322BE
	.align 2, 0
_0803228C: .4byte gFrameCounter
_08032290: .4byte gMapLayer_03003910
_08032294: .4byte 0xFFFF0000
_08032298: .4byte gPlayers
_0803229C: .4byte 0x0000FFFE
_080322A0: .4byte 0x00090072
_080322A4:
	movs r4, #0
	str r4, [sp, #0xb8]
	movs r5, #0xf
	mov sl, r5
	ldr r1, [sp, #0xe0]
	ldrh r0, [r1]
	lsrs r0, r0, #2
	strh r0, [r7, #0x38]
	movs r1, #8
	strh r1, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_080322BE:
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	b _080322DA
_080322D4:
	add r2, sp, #0xac
	ldrh r2, [r2]
	strh r2, [r7, #0xa]
_080322DA:
	ldr r0, [sp, #0x94]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x94]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08032340
	ldr r3, [sp, #0xa8]
	cmp r3, #0
	beq _08032340
	bl sub_08007544
	cmp r0, #0
	bne _08032322
	bl sub_08007510
	cmp r0, #0
	bne _08032322
	bl sub_08007604
	cmp r0, #0
	bne _08032322
	bl sub_080075AC
	cmp r0, #0
	bne _08032322
	ldr r5, [sp, #0xac]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xa8]
	bl sub_0800EA74
_08032322:
	movs r0, #2
	ldr r1, [sp, #0x94]
	ands r0, r1
	cmp r0, #0
	beq _08032344
	ldr r2, [sp, #0xac]
	lsls r0, r2, #0x10
	ldr r3, _0803233C @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
	b _08032344
	.align 2, 0
_0803233C: .4byte 0xFFFF0000
_08032340:
	ldr r4, _0803240C @ =0x0000FFFF
	str r4, [sp, #0x94]
_08032344:
	ldr r5, [sp, #0x9c]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	movs r0, #2
	movs r1, #0
	adds r2, r5, #0
	bl sub_08005F94
	ldr r0, [sp, #0xbc]
	cmp r0, #0
	bne _0803241C
	bl sub_08007510
	cmp r0, #0
	beq _08032364
	b _080324C4
_08032364:
	bl sub_08007604
	cmp r0, #0
	beq _0803236E
	b _080324C4
_0803236E:
	bl sub_08007544
	cmp r0, #0
	beq _08032378
	b _080324C4
_08032378:
	bl sub_080075AC
	adds r6, r0, #0
	cmp r6, #0
	beq _08032384
	b _080324C4
_08032384:
	ldr r4, _08032410 @ =gMapLayer_03003910
	adds r4, #0x5e
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	movs r2, #0x48
	subs r2, r2, r0
	str r6, [sp]
	ldr r0, [sp, #0xd4]
	movs r1, #0xa8
	movs r3, #1
	bl sub_08026B90
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r0, r0, r5
	ldr r2, _08032414 @ =0x00000101
	subs r2, r2, r0
	str r6, [sp]
	movs r3, #2
	mov r8, r3
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r1, #0xa1
	bl sub_0802706C
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	movs r2, #0x95
	lsls r2, r2, #1
	subs r2, r2, r0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r1, #0xb8
	movs r3, #3
	bl sub_0802706C
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	ldr r2, _08032418 @ =0x0000011B
	subs r2, r2, r0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r1, #0xca
	movs r3, #4
	bl sub_0802706C
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	movs r2, #0x88
	lsls r2, r2, #1
	subs r2, r2, r0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r1, #0x90
	movs r3, #5
	bl sub_0802706C
	b _080324C4
	.align 2, 0
_0803240C: .4byte 0x0000FFFF
_08032410: .4byte gMapLayer_03003910
_08032414: .4byte 0x00000101
_08032418: .4byte 0x0000011B
_0803241C:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _080324C4
	bl sub_08007510
	cmp r0, #0
	bne _080324C4
	bl sub_08007604
	cmp r0, #0
	bne _080324C4
	bl sub_08007544
	cmp r0, #0
	bne _080324C4
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _080324C4
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r6, sp, #0x78
	movs r4, #0x7a
	add r4, sp
	mov r8, r4
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_08005FC4
	add r4, sp, #0x7c
	mov r3, sp
	adds r3, #0x7e
	movs r5, #1
	mov sb, r5
	str r5, [sp]
	add r0, sp, #0x10
	movs r1, #9
	adds r2, r4, #0
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r5, [sp, #0xa0]
	asrs r2, r5, #8
	adds r1, r1, r2
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #9
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r6, r3]
	mov r5, r8
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sb
	str r3, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xb
	movs r3, #0
	bl sub_08004418
_080324C4:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080324E0
	bl sub_08007544
	cmp r0, #0
	bne _080324E0
	bl sub_080075AC
	cmp r0, #0
	beq _080324E6
_080324E0:
	movs r0, #0x87
	bl StopSE
_080324E6:
	bl sub_08007750
	cmp r0, #0
	bne _08032518
	bl sub_080074CC
	cmp r0, #0
	bne _08032518
	ldr r0, _0803275C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032518
	bl sub_08007578
	cmp r0, #0
	bne _08032518
	ldr r4, [sp, #0x98]
	cmp r4, #0
	beq _08032518
	bl _08031572
_08032518:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r6, #0
	str r6, [sp]
	movs r5, #1
	mov r8, r5
	str r5, [sp, #4]
	str r6, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	ldr r4, _08032760 @ =gUnknown_03006814
	ldr r0, [r4]
	bl Free
	str r6, [r4]
	ldr r2, _08032764 @ =gActiveEnemyMask
	mov r1, r8
	ldrh r0, [r7]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x90]
	bl sub_0800CB84
	bl sub_08007750
	cmp r0, #0
	beq _08032560
	b _080326A4
_08032560:
	bl sub_080074CC
	cmp r0, #0
	beq _0803256A
	b _080326A4
_0803256A:
	ldr r4, _0803275C @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803257C
	b _080326A4
_0803257C:
	bl sub_08007578
	cmp r0, #0
	beq _08032586
	b _080326A4
_08032586:
	ldr r0, [r4]
	adds r0, #0x9e
	mov r1, r8
	strh r1, [r0]
	bl sub_08001F98
	cmp r0, #0
	bne _080325D0
	ldr r0, _08032768 @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _080325D0
	bl sub_08007544
	cmp r0, #0
	bne _080325D0
	bl sub_08007510
	cmp r0, #0
	bne _080325D0
	bl sub_08007604
	cmp r0, #0
	bne _080325D0
	bl sub_080075AC
	cmp r0, #0
	bne _080325D0
	bl sub_080076E0
	cmp r0, #0
	bne _080325D0
	ldr r0, _0803276C @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_080325D0:
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _080326A4
	ldr r4, _08032770 @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _08032604
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032604
	ldr r3, _08032774 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08032604
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08032604:
	ldr r4, _08032778 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	mov r8, r5
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x84]
	bl CalcExpGain
	adds r6, r0, #0
	bl GetMultiplayerId
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, r6, #0
	bl AddExp
	str r0, [sp, #0x98]
	movs r4, #0x13
	ldr r5, _0803277C @ =0x0000FFFF
_0803263C:
	ldr r0, [r7, #0x14]
	ldr r3, _08032780 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r7, #0x14]
	ldr r0, _0803276C @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08032658
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08024320
_08032658:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bne _0803263C
	ldr r4, [sp, #0x98]
	cmp r4, #0
	beq _080326A4
	bl sub_08007544
	cmp r0, #0
	bne _08032682
	bl sub_080075AC
	cmp r0, #0
	bne _08032682
	movs r0, #0x25
	bl PlaySE
_08032682:
	bl GetMultiplayerId
	movs r6, #0xd4
	muls r0, r6, r0
	ldr r4, _08032778 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_080326A4:
	bl sub_08007750
	cmp r0, #0
	bne _08032742
	bl sub_080074CC
	cmp r0, #0
	bne _08032742
	ldr r4, _0803275C @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032742
	bl sub_08007578
	cmp r0, #0
	bne _08032742
	ldr r0, _08032784 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08032788 @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #8
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0803272C
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _0803272C
	ldr r2, _0803278C @ =gPlayerStats
	ldr r5, _08032790 @ =0x00000272
	adds r3, r2, r5
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08032794 @ =0x00000275
	adds r2, r2, r1
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
_0803272C:
	bl sub_0800F53C
	ldr r4, _08032798 @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08032742
	ldr r0, [r4]
	bl KillThread
_08032742:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803275C: .4byte gUnknown_030063D8
_08032760: .4byte gUnknown_03006814
_08032764: .4byte gActiveEnemyMask
_08032768: .4byte gUnknown_030064D8
_0803276C: .4byte gMapLayer_03003910
_08032770: .4byte 0x03003D94
_08032774: .4byte 0x00000157
_08032778: .4byte gPlayers
_0803277C: .4byte 0x0000FFFF
_08032780: .4byte 0xFFFFFE00
_08032784: .4byte 0x00000BB8
_08032788: .4byte gUnknown_03003D08
_0803278C: .4byte gPlayerStats
_08032790: .4byte 0x00000272
_08032794: .4byte 0x00000275
_08032798: .4byte gUnknownThreadPtr_030063E4

	thumb_func_start sub_0803279C
sub_0803279C: @ 0x0803279C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	str r0, [sp, #0x48]
	adds r5, r1, #0
	ldr r0, _08032960 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	beq _080327D0
	adds r7, r0, #0
_080327BC:
	ldrh r0, [r2, #2]
	cmp r0, #3
	bne _080327C8
	ldr r0, [r2, #4]
	adds r0, r0, r2
	mov r8, r0
_080327C8:
	subs r7, #1
	adds r2, #8
	cmp r7, #0
	bne _080327BC
_080327D0:
	ldr r0, _08032964 @ =0x0000FFFF
	ands r5, r0
	lsrs r0, r5, #1
	str r0, [sp, #0x7c]
	movs r0, #1
	ldr r1, [sp, #0x7c]
	ands r1, r0
	str r1, [sp, #0x7c]
	movs r0, #0x78
	bl Alloc
	str r0, [sp, #0x4c]
	movs r0, #0x78
	bl Alloc
	str r0, [sp, #0x50]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x54]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x60]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x5c]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x68]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x58]
	movs r0, #0xc
	bl Alloc
	str r0, [sp, #0x64]
	movs r0, #0x18
	bl Alloc
	str r0, [sp, #0x74]
	movs r0, #0x18
	bl Alloc
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x48]
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r2, #0xb8
	mov sb, r2
	ldr r4, _08032968 @ =0x0300396E
	movs r3, #0x62
	ldr r2, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	movs r7, #0x1d
_0803285A:
	mov r6, sb
	stm r1!, {r6}
	movs r6, #0
	ldrsh r0, [r4, r6]
	subs r0, r3, r0
	stm r2!, {r0}
	subs r7, #1
	cmp r7, #0
	bge _0803285A
	lsls r1, r5, #2
	movs r3, #0
	ldr r2, [sp, #0x58]
	ldr r0, [sp, #0x54]
	movs r7, #5
_08032876:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, #2
	adds r0, #2
	subs r7, #1
	cmp r7, #0
	bge _08032876
	movs r3, #0
	ldr r2, [sp, #0x64]
	ldr r0, [sp, #0x60]
	movs r7, #5
_0803288C:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, #2
	adds r0, #2
	subs r7, #1
	cmp r7, #0
	bge _0803288C
	mov r7, r8
	adds r5, r1, r7
	ldrh r0, [r5, #4]
	ldrh r1, [r5]
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	ldrh r0, [r5, #6]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r2, [sp, #0x50]
	str r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x4c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x18
	ldr r6, [sp, #0x4c]
	ldr r0, [r6]
	adds r7, r0, #0
	muls r7, r0, r7
	adds r0, r7, #0
	ldr r2, [sp, #0x50]
	ldr r1, [r2]
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #6
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r5]
	lsls r0, r0, #0xb
	ldr r7, [sp, #0x74]
	str r0, [r7]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0xb
	ldr r1, [sp, #0x78]
	str r0, [r1]
	ldr r1, _0803296C @ =0x0805289C
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r5, r0, #0
	muls r5, r6, r5
	adds r4, #0x40
	lsls r4, r4, #1
	adds r4, r4, r1
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r3, r0, #0
	muls r3, r6, r3
	ldr r2, [sp, #0x78]
	ldr r1, [sp, #0x74]
	movs r7, #4
_08032924:
	ldr r0, [r1]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, [r2]
	adds r0, r0, r3
	str r0, [r2, #4]
	adds r2, #4
	adds r1, #4
	subs r7, #1
	cmp r7, #0
	bge _08032924
	movs r4, #0
	str r4, [sp, #0x6c]
	bl sub_08007544
	cmp r0, #0
	bne _08032954
	bl sub_080075AC
	cmp r0, #0
	bne _08032954
	movs r0, #0x86
	bl PlaySE
_08032954:
	ldr r5, _08032970 @ =0x080FBC10
	ldr r6, [sp, #0x7c]
	lsls r4, r6, #3
	adds r0, r5, #4
	adds r6, r4, r0
	b _08032A02
	.align 2, 0
_08032960: .4byte gUnknown_030063D8
_08032964: .4byte 0x0000FFFF
_08032968: .4byte 0x0300396E
_0803296C: .4byte 0x0805289C
_08032970: .4byte 0x080FBC10
_08032974:
	bl WaitFrame
_08032978:
	bl sub_08007604
	cmp r0, #0
	bne _08032974
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #6
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	ldr r7, [sp, #0x60]
	strh r0, [r7, #2]
	bl sub_08007510
	cmp r0, #0
	bne _080329D6
	bl sub_08007604
	cmp r0, #0
	bne _080329D6
	bl sub_08007544
	cmp r0, #0
	bne _080329D6
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _080329D6
	adds r0, r4, r5
	ldr r1, [r0]
	ldr r2, [r6]
	subs r2, #0xc8
	ldr r0, _080329EC @ =gMapLayer_03003910
	adds r0, #0x5e
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r2, r2, r0
	ldr r7, [sp, #0x60]
	ldrh r0, [r7]
	str r0, [sp]
	str r3, [sp, #4]
	add r0, sp, #0x10
	movs r3, #6
	bl sub_0802706C
_080329D6:
	bl sub_080076A8
	cmp r0, #0
	beq _080329F0
	ldr r1, [sp, #0x60]
	ldrh r0, [r1]
	cmp r0, #6
	bne _080329FE
	movs r2, #5
	str r2, [sp, #0x6c]
	b _080329FE
	.align 2, 0
_080329EC: .4byte gMapLayer_03003910
_080329F0:
	ldr r3, [sp, #0x60]
	ldrh r0, [r3, #2]
	cmp r0, #1
	bne _080329FE
	ldr r7, [sp, #0x6c]
	adds r7, #1
	str r7, [sp, #0x6c]
_080329FE:
	bl WaitFrame
_08032A02:
	ldr r0, [sp, #0x6c]
	cmp r0, #4
	bgt _08032A30
	bl sub_08007750
	cmp r0, #0
	bne _08032A30
	bl sub_080074CC
	cmp r0, #0
	bne _08032A30
	ldr r0, _08032A60 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032A30
	bl sub_08007578
	cmp r0, #0
	beq _08032978
_08032A30:
	bl sub_080076A8
	cmp r0, #0
	bne _08032A40
	bl WaitFrame
	bl WaitFrame
_08032A40:
	movs r1, #0
	str r1, [sp, #0x6c]
	bl sub_08007544
	cmp r0, #0
	beq _08032A4E
	b _08032C54
_08032A4E:
	bl sub_080075AC
	cmp r0, #0
	beq _08032A58
	b _08032C54
_08032A58:
	movs r0, #0x82
	bl PlaySE
	b _08032C54
	.align 2, 0
_08032A60: .4byte gUnknown_030063D8
_08032A64:
	movs r7, #0
	ldr r2, [sp, #0x7c]
	lsls r1, r2, #3
	ldr r3, [sp, #0x6c]
	adds r3, #1
	str r3, [sp, #0x98]
	ldr r4, [sp, #0x6c]
	lsls r0, r4, #2
	str r1, [sp, #0x80]
	mov sl, r0
	ldr r0, _08032C8C @ =0x080FBC10
	adds r0, #4
	adds r0, r1, r0
	str r0, [sp, #0x84]
	ldr r6, [sp, #0x78]
	add r6, sl
	str r6, [sp, #0x88]
	ldr r0, [sp, #0x50]
	mov sb, r0
	ldr r1, [sp, #0x4c]
	mov r8, r1
_08032A8E:
	ldr r2, [sp, #0x80]
	ldr r3, _08032C8C @ =0x080FBC10
	adds r0, r2, r3
	ldr r4, [r0]
	lsls r4, r4, #8
	ldr r0, [sp, #0x74]
	add r0, sl
	ldr r6, [r0]
	lsls r0, r7, #0xa
	movs r1, #0x1e
	bl __divsi3
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl Lerp1024
	ldr r4, [sp, #0x84]
	ldr r1, [r4]
	subs r1, #0xc8
	ldr r6, _08032C90 @ =0x0300396E
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r3, [sp, #0x88]
	ldr r2, [r3]
	mov r0, sb
	adds r3, r5, #0
	bl Lerp1024
	movs r4, #4
	add sb, r4
	add r8, r4
	adds r7, #1
	cmp r7, #0x1d
	ble _08032A8E
	bl sub_08007604
	cmp r0, #0
	beq _08032AE6
	b _08032C4C
_08032AE6:
	bl sub_08007544
	cmp r0, #0
	beq _08032AF0
	b _08032C4C
_08032AF0:
	bl sub_080075AC
	cmp r0, #0
	beq _08032AFA
	b _08032C4C
_08032AFA:
	mov r6, sp
	adds r6, #0x44
	str r6, [sp, #0x8c]
	mov r7, sp
	adds r7, #0x46
	str r7, [sp, #0x90]
	ldr r0, [sp, #0x50]
	mov sl, r0
	ldr r1, [sp, #0x4c]
	mov sb, r1
	movs r7, #0x1d
_08032B10:
	bl sub_08007510
	cmp r0, #0
	bne _08032B30
	mov r2, sb
	ldr r1, [r2]
	asrs r1, r1, #8
	mov r3, sl
	ldr r2, [r3]
	asrs r2, r2, #8
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x10
	movs r3, #7
	bl sub_0802706C
_08032B30:
	bl GetMultiplayerId
	ldr r4, _08032C94 @ =gPlayers
	mov r8, r4
	movs r5, #0xd4
	muls r0, r5, r0
	mov r1, r8
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r5, r0
	mov r1, r8
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r0, r4, #0
	ldr r2, [sp, #0x8c]
	ldr r3, [sp, #0x90]
	bl sub_08005FC4
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r2, [sp, #0x8c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r2, r0, r1
	mov r4, sl
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #0x1e
	ldr r6, _08032C98 @ =0x03003972
	movs r3, #0
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x90]
	movs r6, #0
	ldrsh r1, [r4, r6]
	subs r1, r0, r1
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08032C3E
	bl sub_08007670
	cmp r0, #0
	bne _08032C3E
	bl sub_08007544
	cmp r0, #0
	bne _08032C3E
	cmp r6, #7
	bhi _08032C3E
	bl GetMultiplayerId
	ldr r3, [sp, #0x48]
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	mov r6, r8
	adds r6, #0x80
	adds r1, r1, r6
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08032C3E
	bl GetMultiplayerId
	muls r0, r5, r0
	add r0, r8
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08032C3E
	bl GetMultiplayerId
	muls r0, r5, r0
	add r0, r8
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	add r0, r8
	adds r0, #0x70
	ldr r1, _08032C9C @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	add r1, r8
	ldr r0, [sp, #0x48]
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	add r1, r8
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r2, [sp, #0x48]
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r6
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_08032C3E:
	movs r3, #4
	add sl, r3
	add sb, r3
	subs r7, #1
	cmp r7, #0
	blt _08032C4C
	b _08032B10
_08032C4C:
	ldr r4, [sp, #0x98]
	str r4, [sp, #0x6c]
	bl WaitFrame
_08032C54:
	ldr r6, [sp, #0x6c]
	cmp r6, #5
	bgt _08032C84
	bl sub_08007750
	cmp r0, #0
	bne _08032C84
	bl sub_080074CC
	cmp r0, #0
	bne _08032C84
	ldr r0, _08032CA0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032C84
	bl sub_08007578
	cmp r0, #0
	bne _08032C84
	b _08032A64
_08032C84:
	movs r7, #0
	str r7, [sp, #0x6c]
	b _08032CC0
	.align 2, 0
_08032C8C: .4byte 0x080FBC10
_08032C90: .4byte 0x0300396E
_08032C94: .4byte gPlayers
_08032C98: .4byte 0x03003972
_08032C9C: .4byte 0x0000FFFE
_08032CA0: .4byte gUnknown_030063D8
_08032CA4:
	ldr r0, [sp, #0x6c]
	adds r0, #1
	str r0, [sp, #0x98]
	b _08032CB0
_08032CAC:
	bl WaitFrame
_08032CB0:
	bl sub_08007604
	cmp r0, #0
	bne _08032CAC
	bl WaitFrame
	ldr r1, [sp, #0x98]
	str r1, [sp, #0x6c]
_08032CC0:
	ldr r2, [sp, #0x6c]
	cmp r2, #4
	bgt _08032CEE
	bl sub_08007750
	cmp r0, #0
	bne _08032CEE
	bl sub_080074CC
	cmp r0, #0
	bne _08032CEE
	ldr r0, _08032D30 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032CEE
	bl sub_08007578
	cmp r0, #0
	beq _08032CA4
_08032CEE:
	movs r3, #0
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x54]
	movs r7, #5
_08032CF8:
	strh r3, [r0]
	strh r3, [r1]
	strh r3, [r2]
	adds r2, #2
	adds r1, #2
	adds r0, #2
	subs r7, #1
	cmp r7, #0
	bge _08032CF8
	movs r3, #0
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x64]
	ldr r0, [sp, #0x60]
	movs r7, #5
_08032D14:
	strh r3, [r0]
	strh r3, [r1]
	strh r3, [r2]
	adds r2, #2
	adds r1, #2
	adds r0, #2
	subs r7, #1
	cmp r7, #0
	bge _08032D14
	movs r3, #0
	str r3, [sp, #0x6c]
	movs r4, #0
	str r4, [sp, #0x70]
	b _0803304C
	.align 2, 0
_08032D30: .4byte gUnknown_030063D8
_08032D34:
	bl WaitFrame
_08032D38:
	bl sub_08007604
	cmp r0, #0
	bne _08032D34
	movs r6, #0
	str r6, [sp, #0x6c]
	movs r7, #5
	mov r0, sp
	adds r0, #0x46
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x5c]
	adds r1, #0xa
	str r1, [sp, #0x9c]
	ldr r2, [sp, #0x54]
	adds r2, #0xa
	mov sl, r2
	movs r3, #0xa
	str r3, [sp, #0xa0]
	ldr r4, [sp, #0x78]
	adds r4, #0x14
	str r4, [sp, #0xa4]
	ldr r6, [sp, #0x74]
	adds r6, #0x14
	str r6, [sp, #0xa8]
_08032D68:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08032D72
	b _08032F2A
_08032D72:
	ldr r2, [sp, #0x70]
	cmp r7, r2
	ble _08032D7A
	b _08032F2A
_08032D7A:
	bl sub_08007510
	cmp r0, #0
	bne _08032DE6
	bl sub_08007604
	cmp r0, #0
	bne _08032DE6
	bl sub_08007544
	cmp r0, #0
	bne _08032DE6
	bl sub_080075AC
	cmp r0, #0
	bne _08032DE6
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
	ldr r3, [sp, #0xa8]
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r4, [sp, #0xa4]
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r1, #0x1e
	ldr r6, _080330D0 @ =0x03003972
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	mov r4, sl
	ldrh r3, [r4]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08004344
_08032DE6:
	ldr r6, [sp, #0x58]
	ldr r0, [sp, #0xa0]
	adds r3, r6, r0
	movs r1, #0
	str r1, [sp]
	add r0, sp, #0x10
	movs r1, #0xa
	mov r2, sl
	bl sub_08026C40
	ldr r2, [sp, #0x9c]
	strh r0, [r2]
	bl GetMultiplayerId
	ldr r3, _080330D4 @ =gPlayers
	mov sb, r3
	movs r4, #0xd4
	mov r8, r4
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	mov r1, sb
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, sb
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0x94]
	bl sub_08005FC4
	ldr r3, [sp, #0xa8]
	ldr r0, [r3]
	asrs r0, r0, #8
	movs r4, #0
	ldrsh r1, [r5, r4]
	subs r2, r0, r1
	ldr r6, [sp, #0xa4]
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, #0x1e
	ldr r3, _080330D0 @ =0x03003972
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r6, [sp, #0x94]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, r0, r1
	adds r0, r2, #0
	muls r0, r2, r0
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08032F2A
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #6
	bhi _08032F2A
	bl sub_08007544
	cmp r0, #0
	bne _08032F2A
	cmp r6, #0xf
	bhi _08032F2A
	bl GetMultiplayerId
	ldr r2, [sp, #0x48]
	ldrh r1, [r2]
	lsls r1, r1, #2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	mov r5, sb
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	beq _08032F2A
	bl GetMultiplayerId
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	add r0, sb
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08032F2A
	bl GetMultiplayerId
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	add r0, sb
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sb
	adds r0, #0x70
	ldr r1, _080330D8 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	add r1, sb
	ldr r0, [sp, #0x48]
	bl CalcDamageToPlayer
	mov r1, r8
	muls r1, r4, r1
	add r1, sb
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r3, [sp, #0x48]
	ldrh r1, [r3]
	lsls r1, r1, #2
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x2c]
	str r0, [r1]
_08032F2A:
	ldr r6, [sp, #0x9c]
	subs r6, #2
	str r6, [sp, #0x9c]
	movs r0, #2
	rsbs r0, r0, #0
	add sl, r0
	ldr r1, [sp, #0xa0]
	subs r1, #2
	str r1, [sp, #0xa0]
	ldr r2, [sp, #0xa4]
	subs r2, #4
	str r2, [sp, #0xa4]
	ldr r3, [sp, #0xa8]
	subs r3, #4
	str r3, [sp, #0xa8]
	subs r7, #1
	cmp r7, #0
	blt _08032F50
	b _08032D68
_08032F50:
	movs r7, #5
	ldr r4, _080330D4 @ =gPlayers
	mov sl, r4
	movs r6, #0xa
	mov sb, r6
	ldr r0, [sp, #0x64]
	adds r0, #0xa
	mov r8, r0
	ldr r6, [sp, #0x60]
	adds r6, #0xa
	ldr r5, [sp, #0x68]
	adds r5, #0xa
_08032F68:
	ldr r0, [sp, #0x5c]
	add r0, sb
	ldrh r4, [r0]
	cmp r4, #1
	bne _08033018
	ldrh r0, [r5]
	cmp r0, #0
	bne _0803301E
	bl sub_08007510
	cmp r0, #0
	bne _08032FCC
	bl sub_08007604
	cmp r0, #0
	bne _08032FCC
	bl sub_08007544
	cmp r0, #0
	bne _08032FCC
	bl sub_080075AC
	cmp r0, #0
	bne _08032FCC
	lsls r1, r7, #2
	ldr r2, [sp, #0x74]
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r3, [sp, #0x78]
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	adds r1, #0x1e
	ldr r2, _080330D0 @ =0x03003972
	movs r3, #0
	ldrsh r2, [r2, r3]
	mov ip, r2
	add r1, ip
	ldrh r3, [r6]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08004344
_08032FCC:
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #8
	adds r2, r6, #0
	mov r3, r8
	bl sub_08026C40
	strh r0, [r5]
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	mov r1, sl
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	movs r2, #0xd4
	muls r0, r2, r0
	ldr r3, _080330DC @ =0x030045DC
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08005FC4
_08033018:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08033024
_0803301E:
	ldr r1, [sp, #0x6c]
	adds r1, #1
	str r1, [sp, #0x6c]
_08033024:
	movs r2, #2
	rsbs r2, r2, #0
	add sb, r2
	add r8, r2
	subs r6, #2
	subs r5, #2
	subs r7, #1
	cmp r7, #0
	bge _08032F68
	ldr r0, _080330E0 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08033048
	ldr r3, [sp, #0x70]
	adds r3, #1
	str r3, [sp, #0x70]
_08033048:
	bl WaitFrame
_0803304C:
	ldr r4, [sp, #0x6c]
	cmp r4, #5
	bgt _0803307C
	bl sub_08007750
	cmp r0, #0
	bne _0803307C
	bl sub_080074CC
	cmp r0, #0
	bne _0803307C
	ldr r0, _080330E4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803307C
	bl sub_08007578
	cmp r0, #0
	bne _0803307C
	b _08032D38
_0803307C:
	ldr r0, [sp, #0x4c]
	bl Free
	ldr r0, [sp, #0x50]
	bl Free
	ldr r0, [sp, #0x54]
	bl Free
	ldr r0, [sp, #0x58]
	bl Free
	ldr r0, [sp, #0x60]
	bl Free
	ldr r0, [sp, #0x64]
	bl Free
	ldr r0, [sp, #0x5c]
	bl Free
	ldr r0, [sp, #0x68]
	bl Free
	ldr r0, [sp, #0x74]
	bl Free
	ldr r0, [sp, #0x78]
	bl Free
	movs r6, #0
	bl GetCurrentThread
	str r6, [r0, #8]
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330D0: .4byte 0x03003972
_080330D4: .4byte gPlayers
_080330D8: .4byte 0x0000FFFE
_080330DC: .4byte 0x030045DC
_080330E0: .4byte gFrameCounter
_080330E4: .4byte gUnknown_030063D8

	thumb_func_start sub_080330E8
sub_080330E8: @ 0x080330E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	str r0, [sp, #0x5c]
	ldr r0, _08033168 @ =0x0000FFFF
	ands r1, r0
	str r1, [sp, #0x60]
	ldr r0, _0803316C @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	str r2, [sp, #0x68]
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x80]
	cmp r2, r0
	bge _08033132
	str r0, [sp, #0x68]
	adds r2, r0, #0
_08033118:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08033124
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x64]
_08033124:
	ldr r4, [sp, #0x68]
	subs r4, #1
	str r4, [sp, #0x68]
	adds r1, #8
	cmp r4, #0
	bne _08033118
	str r2, [sp, #0x68]
_08033132:
	ldr r0, [sp, #0x5c]
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	bl sub_080076A8
	cmp r0, #0
	beq _08033170
	movs r0, #0x1e
	ldr r1, [sp, #0x80]
	strh r0, [r1]
	movs r0, #0xf
	strh r0, [r1, #2]
	movs r0, #0x14
	strh r0, [r1, #4]
	b _0803317E
	.align 2, 0
_08033168: .4byte 0x0000FFFF
_0803316C: .4byte gUnknown_030063D8
_08033170:
	movs r0, #0x3c
	ldr r2, [sp, #0x80]
	strh r0, [r2]
	movs r0, #0x1e
	strh r0, [r2, #2]
	movs r0, #0x28
	strh r0, [r2, #4]
_0803317E:
	ldr r3, [sp, #0x60]
	lsls r6, r3, #0x10
	b _08033224
_08033184:
	bl WaitFrame
_08033188:
	bl sub_08007604
	cmp r0, #0
	bne _08033184
	ldr r4, [sp, #0x5c]
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	bne _0803319C
	bl _08033BF6
_0803319C:
	ldr r1, [sp, #0x60]
	lsls r0, r1, #2
	ldr r2, [sp, #0x64]
	adds r0, r0, r2
	adds r5, r0, #0
	adds r5, #0x20
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #3
	ldr r3, [sp, #0x60]
	lsls r0, r3, #3
	adds r0, r0, r2
	adds r4, r0, #0
	adds r4, #0x10
	ldrh r2, [r0, #0x10]
	lsls r2, r2, #3
	add r0, sp, #0x54
	movs r3, #0
	bl Lerp1024
	ldrh r1, [r5, #2]
	lsls r1, r1, #3
	ldrh r2, [r4, #2]
	lsls r2, r2, #3
	add r0, sp, #0x58
	movs r3, #0
	bl Lerp1024
	bl sub_08007510
	cmp r0, #0
	bne _0803321A
	bl sub_08007604
	cmp r0, #0
	bne _0803321A
	bl sub_08007544
	cmp r0, #0
	bne _0803321A
	bl sub_080075AC
	cmp r0, #0
	bne _0803321A
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _08033278 @ =gMapLayer_03003910
	adds r2, #0x62
	movs r4, #0
	ldrsh r2, [r2, r4]
	adds r1, r1, r2
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	lsrs r2, r6, #0x10
	movs r3, #0
	bl sub_08004344
_0803321A:
	ldr r0, [sp, #0x68]
	adds r0, #1
	str r0, [sp, #0x68]
	bl WaitFrame
_08033224:
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x80]
	ldrh r1, [r1]
	cmp r2, r1
	bge _08033256
	bl sub_08007750
	cmp r0, #0
	bne _08033256
	bl sub_080074CC
	cmp r0, #0
	bne _08033256
	ldr r0, _0803327C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033256
	bl sub_08007578
	cmp r0, #0
	beq _08033188
_08033256:
	movs r2, #0
	str r2, [sp, #0x68]
	bl sub_08007544
	cmp r0, #0
	bne _08033270
	bl sub_080075AC
	cmp r0, #0
	bne _08033270
	movs r0, #0x83
	bl PlaySE
_08033270:
	mov r3, sp
	adds r3, #0x52
	str r3, [sp, #0x6c]
	b _08033464
	.align 2, 0
_08033278: .4byte gMapLayer_03003910
_0803327C: .4byte gUnknown_030063D8
_08033280:
	bl WaitFrame
_08033284:
	bl sub_08007604
	cmp r0, #0
	bne _08033280
	ldr r4, [sp, #0x5c]
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	bne _08033298
	bl _08033BF6
_08033298:
	add r6, sp, #0x54
	ldr r1, [sp, #0x60]
	lsls r0, r1, #2
	ldr r2, [sp, #0x64]
	adds r0, r0, r2
	movs r3, #0x20
	adds r3, r3, r0
	mov sl, r3
	ldrh r5, [r0, #0x20]
	lsls r5, r5, #3
	lsls r0, r1, #3
	adds r0, r0, r2
	movs r4, #0x10
	adds r4, r4, r0
	mov sb, r4
	ldrh r4, [r0, #0x10]
	lsls r4, r4, #3
	ldr r0, [sp, #0x68]
	lsls r0, r0, #0xa
	mov r8, r0
	ldr r2, [sp, #0x80]
	ldrh r1, [r2]
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Lerp1024
	add r6, sp, #0x58
	mov r3, sl
	ldrh r5, [r3, #2]
	lsls r5, r5, #3
	mov r0, sb
	ldrh r4, [r0, #2]
	lsls r4, r4, #3
	ldr r2, [sp, #0x80]
	ldrh r1, [r2]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Lerp1024
	bl sub_08007510
	cmp r0, #0
	bne _08033344
	bl sub_08007604
	cmp r0, #0
	bne _08033344
	bl sub_08007544
	cmp r0, #0
	bne _08033344
	bl sub_080075AC
	cmp r0, #0
	bne _08033344
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _080334B0 @ =gMapLayer_03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x60]
	lsls r2, r4, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033344:
	ldr r1, [sp, #0x80]
	ldrh r0, [r1]
	ldr r2, [sp, #0x68]
	subs r0, r0, r2
	movs r1, #3
	bl __divsi3
	cmp r0, #0
	bne _08033358
	movs r0, #1
_08033358:
	ldr r3, [sp, #0x68]
	adds r3, r3, r0
	str r3, [sp, #0x68]
	bl GetMultiplayerId
	ldr r7, _080334B4 @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x50
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0x6c]
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x54]
	subs r2, r2, r0
	str r2, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r0, _080334B0 @ =gMapLayer_03003910
	adds r0, #0x62
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	ldr r4, [sp, #0x6c]
	movs r3, #0
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	str r1, [sp, #0x58]
	adds r0, r2, #0
	muls r0, r2, r0
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08033460
	bl sub_08007544
	cmp r0, #0
	bne _08033460
	cmp r4, #0x1f
	bhi _08033460
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	beq _08033460
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08033460
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _080334B8 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldr r0, [sp, #0x5c]
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r4, [sp, #0x5c]
	ldrh r1, [r4]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r4, #0x2c]
	str r0, [r1]
_08033460:
	bl WaitFrame
_08033464:
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #0x80]
	ldrh r0, [r0]
	cmp r1, r0
	bge _08033498
	bl sub_08007750
	cmp r0, #0
	bne _08033498
	bl sub_080074CC
	cmp r0, #0
	bne _08033498
	ldr r0, _080334BC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033498
	bl sub_08007578
	cmp r0, #0
	bne _08033498
	b _08033284
_08033498:
	movs r1, #0
	str r1, [sp, #0x68]
	ldr r2, [sp, #0x60]
	lsls r0, r2, #3
	ldr r3, [sp, #0x64]
	adds r4, r0, r3
	adds r6, r4, #0
	adds r6, #0x10
	adds r5, r4, #0
	adds r5, #0x14
	b _0803354C
	.align 2, 0
_080334B0: .4byte gMapLayer_03003910
_080334B4: .4byte gPlayers
_080334B8: .4byte 0x0000FFFE
_080334BC: .4byte gUnknown_030063D8
_080334C0:
	bl WaitFrame
_080334C4:
	bl sub_08007604
	cmp r0, #0
	bne _080334C0
	ldr r1, [sp, #0x5c]
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _080334D6
	b _08033BF6
_080334D6:
	ldrh r1, [r4, #0x10]
	lsls r1, r1, #3
	ldrh r2, [r4, #0x14]
	lsls r2, r2, #3
	add r0, sp, #0x54
	movs r3, #0
	bl Lerp1024
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	ldrh r2, [r5, #2]
	lsls r2, r2, #3
	add r0, sp, #0x58
	movs r3, #0
	bl Lerp1024
	bl sub_08007510
	cmp r0, #0
	bne _08033542
	bl sub_08007604
	cmp r0, #0
	bne _08033542
	bl sub_08007544
	cmp r0, #0
	bne _08033542
	bl sub_080075AC
	cmp r0, #0
	bne _08033542
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _080335A0 @ =gMapLayer_03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r3, [sp, #0x60]
	lsls r2, r3, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033542:
	ldr r0, [sp, #0x68]
	adds r0, #1
	str r0, [sp, #0x68]
	bl WaitFrame
_0803354C:
	ldr r1, [sp, #0x80]
	ldrh r0, [r1, #2]
	ldr r2, [sp, #0x68]
	cmp r2, r0
	bge _0803357E
	bl sub_08007750
	cmp r0, #0
	bne _0803357E
	bl sub_080074CC
	cmp r0, #0
	bne _0803357E
	ldr r0, _080335A4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803357E
	bl sub_08007578
	cmp r0, #0
	beq _080334C4
_0803357E:
	movs r3, #0
	str r3, [sp, #0x68]
	bl sub_08007544
	cmp r0, #0
	bne _08033598
	bl sub_080075AC
	cmp r0, #0
	bne _08033598
	movs r0, #0x84
	bl PlaySE
_08033598:
	mov r4, sp
	adds r4, #0x52
	str r4, [sp, #0x70]
	b _08033774
	.align 2, 0
_080335A0: .4byte gMapLayer_03003910
_080335A4: .4byte gUnknown_030063D8
_080335A8:
	bl WaitFrame
_080335AC:
	bl sub_08007604
	cmp r0, #0
	bne _080335A8
	ldr r1, [sp, #0x5c]
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _080335BE
	b _08033BF6
_080335BE:
	add r6, sp, #0x54
	ldr r2, [sp, #0x60]
	lsls r0, r2, #3
	ldr r3, [sp, #0x64]
	adds r0, r0, r3
	movs r4, #0x10
	adds r4, r4, r0
	mov sl, r4
	ldrh r5, [r0, #0x10]
	lsls r5, r5, #3
	movs r1, #0x14
	adds r1, r1, r0
	mov sb, r1
	ldrh r4, [r0, #0x14]
	lsls r4, r4, #3
	ldr r2, [sp, #0x68]
	lsls r2, r2, #0xa
	mov r8, r2
	ldr r3, [sp, #0x80]
	ldrh r1, [r3]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Lerp1024
	add r6, sp, #0x58
	mov r4, sl
	ldrh r5, [r4, #2]
	lsls r5, r5, #3
	mov r0, sb
	ldrh r4, [r0, #2]
	lsls r4, r4, #3
	ldr r2, [sp, #0x80]
	ldrh r1, [r2]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Lerp1024
	bl sub_08007510
	cmp r0, #0
	bne _08033668
	bl sub_08007604
	cmp r0, #0
	bne _08033668
	bl sub_08007544
	cmp r0, #0
	bne _08033668
	bl sub_080075AC
	cmp r0, #0
	bne _08033668
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _080337C8 @ =gMapLayer_03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x60]
	lsls r2, r4, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033668:
	ldr r0, [sp, #0x68]
	adds r0, #2
	str r0, [sp, #0x68]
	bl GetMultiplayerId
	ldr r7, _080337CC @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x50
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0x70]
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r2, [sp, #0x54]
	subs r2, r2, r0
	str r2, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r0, _080337C8 @ =gMapLayer_03003910
	adds r0, #0x62
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	ldr r3, [sp, #0x70]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r1, r1, r0
	str r1, [sp, #0x58]
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08033770
	bl sub_08007544
	cmp r0, #0
	bne _08033770
	cmp r4, #0x1f
	bhi _08033770
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08033770
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08033770
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _080337D0 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldr r0, [sp, #0x5c]
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_08033770:
	bl WaitFrame
_08033774:
	ldr r4, [sp, #0x68]
	ldr r3, [sp, #0x80]
	ldrh r3, [r3]
	cmp r4, r3
	bge _080337A8
	bl sub_08007750
	cmp r0, #0
	bne _080337A8
	bl sub_080074CC
	cmp r0, #0
	bne _080337A8
	ldr r0, _080337D4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080337A8
	bl sub_08007578
	cmp r0, #0
	bne _080337A8
	b _080335AC
_080337A8:
	bl sub_08007544
	cmp r0, #0
	bne _080337BE
	bl sub_080075AC
	cmp r0, #0
	bne _080337BE
	movs r0, #0x84
	bl PlaySE
_080337BE:
	mov r4, sp
	adds r4, #0x52
	str r4, [sp, #0x74]
	b _080339A4
	.align 2, 0
_080337C8: .4byte gMapLayer_03003910
_080337CC: .4byte gPlayers
_080337D0: .4byte 0x0000FFFE
_080337D4: .4byte gUnknown_030063D8
_080337D8:
	bl WaitFrame
_080337DC:
	bl sub_08007604
	cmp r0, #0
	bne _080337D8
	ldr r1, [sp, #0x5c]
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _080337EE
	b _08033BF6
_080337EE:
	add r6, sp, #0x54
	ldr r2, [sp, #0x60]
	lsls r0, r2, #3
	ldr r3, [sp, #0x64]
	adds r0, r0, r3
	movs r4, #0x10
	adds r4, r4, r0
	mov sl, r4
	ldrh r5, [r0, #0x10]
	lsls r5, r5, #3
	movs r1, #0x14
	adds r1, r1, r0
	mov sb, r1
	ldrh r4, [r0, #0x14]
	lsls r4, r4, #3
	ldr r2, [sp, #0x68]
	lsls r2, r2, #0xa
	mov r8, r2
	ldr r3, [sp, #0x80]
	ldrh r1, [r3]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Lerp1024
	add r6, sp, #0x58
	mov r4, sl
	ldrh r5, [r4, #2]
	lsls r5, r5, #3
	mov r0, sb
	ldrh r4, [r0, #2]
	lsls r4, r4, #3
	ldr r2, [sp, #0x80]
	ldrh r1, [r2]
	mov r0, r8
	bl __divsi3
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Lerp1024
	bl sub_08007510
	cmp r0, #0
	bne _08033898
	bl sub_08007604
	cmp r0, #0
	bne _08033898
	bl sub_08007544
	cmp r0, #0
	bne _08033898
	bl sub_080075AC
	cmp r0, #0
	bne _08033898
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _080339EC @ =gMapLayer_03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x60]
	lsls r2, r4, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033898:
	ldr r0, [sp, #0x68]
	subs r0, #2
	str r0, [sp, #0x68]
	bl GetMultiplayerId
	ldr r7, _080339F0 @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r4, r4, #4
	asrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x50
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0x74]
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r2, [sp, #0x54]
	subs r2, r2, r0
	str r2, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r0, _080339EC @ =gMapLayer_03003910
	adds r0, #0x62
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	ldr r3, [sp, #0x74]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r1, r1, r0
	str r1, [sp, #0x58]
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _080339A0
	bl sub_08007544
	cmp r0, #0
	bne _080339A0
	cmp r4, #0x1f
	bhi _080339A0
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _080339A0
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080339A0
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _080339F4 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldr r0, [sp, #0x5c]
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_080339A0:
	bl WaitFrame
_080339A4:
	ldr r3, [sp, #0x68]
	cmp r3, #0
	ble _080339D4
	bl sub_08007750
	cmp r0, #0
	bne _080339D4
	bl sub_080074CC
	cmp r0, #0
	bne _080339D4
	ldr r0, _080339F8 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080339D4
	bl sub_08007578
	cmp r0, #0
	bne _080339D4
	b _080337DC
_080339D4:
	movs r4, #0
	str r4, [sp, #0x68]
	ldr r1, [sp, #0x60]
	lsls r0, r1, #3
	ldr r2, [sp, #0x64]
	adds r4, r0, r2
	adds r6, r4, #0
	adds r6, #0x10
	adds r5, r4, #0
	adds r5, #0x14
	b _08033A88
	.align 2, 0
_080339EC: .4byte gMapLayer_03003910
_080339F0: .4byte gPlayers
_080339F4: .4byte 0x0000FFFE
_080339F8: .4byte gUnknown_030063D8
_080339FC:
	bl WaitFrame
_08033A00:
	bl sub_08007604
	cmp r0, #0
	bne _080339FC
	ldr r3, [sp, #0x5c]
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	bne _08033A12
	b _08033BF6
_08033A12:
	ldrh r1, [r4, #0x10]
	lsls r1, r1, #3
	ldrh r2, [r4, #0x14]
	lsls r2, r2, #3
	add r0, sp, #0x54
	movs r3, #0
	bl Lerp1024
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	ldrh r2, [r5, #2]
	lsls r2, r2, #3
	add r0, sp, #0x58
	movs r3, #0
	bl Lerp1024
	bl sub_08007510
	cmp r0, #0
	bne _08033A7E
	bl sub_08007604
	cmp r0, #0
	bne _08033A7E
	bl sub_08007544
	cmp r0, #0
	bne _08033A7E
	bl sub_080075AC
	cmp r0, #0
	bne _08033A7E
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _08033AEC @ =gMapLayer_03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r3, [sp, #0x60]
	lsls r2, r3, #0x10
	movs r3, #1
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08004344
_08033A7E:
	ldr r0, [sp, #0x68]
	adds r0, #1
	str r0, [sp, #0x68]
	bl WaitFrame
_08033A88:
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x80]
	ldrh r1, [r1, #4]
	cmp r2, r1
	bge _08033ABA
	bl sub_08007750
	cmp r0, #0
	bne _08033ABA
	bl sub_080074CC
	cmp r0, #0
	bne _08033ABA
	ldr r0, _08033AF0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033ABA
	bl sub_08007578
	cmp r0, #0
	beq _08033A00
_08033ABA:
	ldr r2, [sp, #0x80]
	ldrh r2, [r2]
	str r2, [sp, #0x68]
	bl sub_08007544
	cmp r0, #0
	bne _08033AD6
	bl sub_080075AC
	cmp r0, #0
	bne _08033AD6
	movs r0, #0x83
	bl PlaySE
_08033AD6:
	mov r3, sp
	adds r3, #0x54
	str r3, [sp, #0x78]
	ldr r7, [sp, #0x80]
	mov r4, sp
	adds r4, #0x58
	str r4, [sp, #0x7c]
	ldr r0, [sp, #0x60]
	lsls r0, r0, #0x10
	mov sl, r0
	b _08033BBA
	.align 2, 0
_08033AEC: .4byte gMapLayer_03003910
_08033AF0: .4byte gUnknown_030063D8
_08033AF4:
	ldr r1, [sp, #0x5c]
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	beq _08033BF6
	ldr r2, [sp, #0x60]
	lsls r0, r2, #2
	ldr r3, [sp, #0x64]
	adds r0, r0, r3
	movs r4, #0x20
	adds r4, r4, r0
	mov sb, r4
	ldrh r5, [r0, #0x20]
	lsls r5, r5, #3
	lsls r0, r2, #3
	adds r0, r0, r3
	movs r1, #0x10
	adds r1, r1, r0
	mov r8, r1
	ldrh r4, [r0, #0x10]
	lsls r4, r4, #3
	ldr r2, [sp, #0x68]
	lsls r6, r2, #0xa
	ldrh r1, [r7]
	adds r0, r6, #0
	bl __divsi3
	adds r3, r0, #0
	ldr r0, [sp, #0x78]
	adds r1, r5, #0
	adds r2, r4, #0
	bl Lerp1024
	mov r3, sb
	ldrh r5, [r3, #2]
	lsls r5, r5, #3
	mov r0, r8
	ldrh r4, [r0, #2]
	lsls r4, r4, #3
	ldrh r1, [r7]
	adds r0, r6, #0
	bl __divsi3
	adds r3, r0, #0
	ldr r0, [sp, #0x7c]
	adds r1, r5, #0
	adds r2, r4, #0
	bl Lerp1024
	bl sub_08007510
	cmp r0, #0
	bne _08033B9E
	bl sub_08007604
	cmp r0, #0
	bne _08033B9E
	bl sub_08007544
	cmp r0, #0
	bne _08033B9E
	bl sub_080075AC
	cmp r0, #0
	bne _08033B9E
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r1, #0x1e
	ldr r2, _08033BFC @ =gMapLayer_03003910
	adds r2, #0x62
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r4, sl
	lsrs r2, r4, #0x10
	movs r3, #0
	bl sub_08004344
_08033B9E:
	ldr r1, [sp, #0x68]
	rsbs r0, r1, #0
	movs r1, #3
	bl __divsi3
	cmp r0, #0
	bne _08033BB0
	movs r0, #1
	rsbs r0, r0, #0
_08033BB0:
	ldr r2, [sp, #0x68]
	adds r2, r2, r0
	str r2, [sp, #0x68]
	bl WaitFrame
_08033BBA:
	ldr r3, [sp, #0x68]
	cmp r3, #0
	ble _08033BE8
	bl sub_08007750
	cmp r0, #0
	bne _08033BE8
	bl sub_080074CC
	cmp r0, #0
	bne _08033BE8
	ldr r0, _08033C00 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033BE8
	bl sub_08007578
	cmp r0, #0
	beq _08033AF4
_08033BE8:
	bl GetCurrentThread
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	bl ThreadExit
_08033BF6:
	movs r4, #0
	str r4, [sp, #0x68]
	b _08033C76
	.align 2, 0
_08033BFC: .4byte gMapLayer_03003910
_08033C00: .4byte gUnknown_030063D8
_08033C04:
	ldr r5, [sp, #0x68]
	adds r5, #1
	b _08033C0E
_08033C0A:
	bl WaitFrame
_08033C0E:
	bl sub_08007604
	cmp r0, #0
	bne _08033C0A
	movs r0, #7
	ldr r1, [sp, #0x68]
	ands r0, r1
	cmp r0, #0
	bne _08033C70
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08033C30
	adds r0, #0xf
_08033C30:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	adds r4, r1, r0
	bl Random
	ldr r2, [sp, #0x58]
	adds r2, #0x1e
	ldr r1, _08033CC0 @ =gMapLayer_03003910
	adds r1, #0x62
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08033C5C
	adds r1, #0xf
_08033C5C:
	asrs r1, r1, #4
	lsls r1, r1, #4
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #6
	bl sub_08033E6C
_08033C70:
	str r5, [sp, #0x68]
	bl WaitFrame
_08033C76:
	ldr r4, [sp, #0x68]
	cmp r4, #0x3b
	bgt _08033CA4
	bl sub_08007750
	cmp r0, #0
	bne _08033CA4
	bl sub_080074CC
	cmp r0, #0
	bne _08033CA4
	ldr r0, _08033CC4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033CA4
	bl sub_08007578
	cmp r0, #0
	beq _08033C04
_08033CA4:
	bl GetCurrentThread
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033CC0: .4byte gMapLayer_03003910
_08033CC4: .4byte gUnknown_030063D8
