	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801E014
sub_0801E014: @ 0x0801E014
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xcc
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801E080 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0xa4]
	mov r1, sp
	adds r1, #0x64
	str r1, [sp, #0xbc]
	mov r2, sp
	adds r2, #0x6c
	str r2, [sp, #0xc0]
	mov r3, sp
	adds r3, #0x7c
	str r3, [sp, #0xc4]
	mov r4, sp
	adds r4, #0x84
	str r4, [sp, #0xc8]
	mov r5, sp
	adds r5, #0x30
	str r5, [sp, #0xb4]
	movs r6, #0
_0801E052:
	ldr r0, [sp, #0xa4]
	lsls r4, r0, #0x10
	asrs r5, r4, #0xf
	ldr r1, [sp, #0xbc]
	adds r0, r1, r5
	strh r6, [r0]
	ldr r2, [sp, #0xc0]
	adds r0, r2, r5
	strh r6, [r0]
	ldr r3, [sp, #0xc4]
	adds r0, r3, r5
	strh r6, [r0]
	bl sub_080074F0
	adds r1, r0, #0
	str r4, [sp, #0xb8]
	cmp r1, #0
	beq _0801E084
	ldr r4, [sp, #0xc8]
	adds r1, r4, r5
	movs r0, #1
	strh r0, [r1]
	b _0801E08A
	.align 2, 0
_0801E080: .4byte gPlayers
_0801E084:
	ldr r2, [sp, #0xc8]
	adds r0, r2, r5
	strh r1, [r0]
_0801E08A:
	ldr r3, [sp, #0xb8]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r5, r0, #0x10
	str r5, [sp, #0xa4]
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0801E052
	bl GetMultiplayerId
	bl sub_08007638
	cmp r0, #0
	beq _0801E0EA
	ldr r0, _0801E0C0 @ =gUnknown_030063D8
	ldr r0, [r0]
	add r1, sp, #0x10
	ldr r0, [r0, #0x38]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	movs r0, #3
	b _0801E0D6
	.align 2, 0
_0801E0C0: .4byte gUnknown_030063D8
_0801E0C4:
	lsls r0, r4, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x10
	movs r0, #0
	strh r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0801E0D6:
	str r0, [sp, #0xa4]
	ldr r1, [sp, #0xa4]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	bl sub_08001EC4
	subs r0, #1
	cmp r4, r0
	bgt _0801E0C4
	b _0801E0FE
_0801E0EA:
	ldr r0, _0801E110 @ =gUnknown_030063D8
	ldr r0, [r0]
	add r1, sp, #0x10
	ldr r0, [r0, #0x38]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
_0801E0FE:
	ldr r1, _0801E114 @ =0x00100043
	movs r3, #1
	rsbs r3, r3, #0
	ldr r0, [sp, #0xb4]
	movs r2, #0xd
	bl sub_08026ADC
	b _0801E58E
	.align 2, 0
_0801E110: .4byte gUnknown_030063D8
_0801E114: .4byte 0x00100043
_0801E118:
	bl sub_08007604
	cmp r0, #0
	beq _0801E122
	b _0801E58A
_0801E122:
	movs r0, #0
	str r0, [sp, #0xa4]
	mov r1, sp
	adds r1, #0x8c
	str r1, [sp, #0xac]
_0801E12C:
	ldr r2, [sp, #0xa4]
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	lsls r6, r4, #1
	mov r7, sp
	adds r7, r7, r6
	adds r7, #0x10
	ldrh r0, [r7]
	str r1, [sp, #0xb8]
	cmp r0, #0
	bne _0801E144
	b _0801E576
_0801E144:
	ldr r3, [sp, #0xc4]
	adds r5, r3, r6
	ldrh r0, [r5]
	add r1, sp, #0x18
	mov r8, r1
	cmp r0, #0
	beq _0801E154
	b _0801E372
_0801E154:
	ldr r2, _0801E248 @ =gUnknown_030063D8
	mov sl, r2
	ldr r0, [r2]
	adds r0, #0x94
	ldrh r0, [r0]
	asrs r0, r4
	movs r3, #1
	mov sb, r3
	ands r0, r3
	cmp r0, #0
	beq _0801E174
	movs r0, #0x22
	bl PlaySE
	mov r0, sb
	strh r0, [r5]
_0801E174:
	bl sub_08007544
	cmp r0, #0
	beq _0801E17E
	b _0801E372
_0801E17E:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0801E186
	b _0801E372
_0801E186:
	ldr r0, [sp, #0xa8]
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #7
	ldrh r1, [r7]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801E19A
	rsbs r0, r0, #0
_0801E19A:
	cmp r0, #2
	ble _0801E1A0
	b _0801E372
_0801E1A0:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	mov r2, r8
	adds r1, r2, r6
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801E1B4
	rsbs r0, r0, #0
_0801E1B4:
	cmp r0, #2
	ble _0801E1BA
	b _0801E372
_0801E1BA:
	ldr r3, [sp, #0xa8]
	ldrh r0, [r3, #0xc]
	subs r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801E1D0
	ldrh r1, [r3, #0x10]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r3, #0x10]
_0801E1D0:
	bl sub_080076E0
	cmp r0, #0
	beq _0801E1DA
	b _0801E372
_0801E1DA:
	bl sub_08007510
	cmp r0, #0
	beq _0801E1E4
	b _0801E372
_0801E1E4:
	ldr r0, _0801E24C @ =gKeysNew
	ldrh r1, [r0]
	ldr r5, [sp, #0xa8]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801E1F4
	b _0801E372
_0801E1F4:
	ldrh r0, [r5, #0xc]
	cmp r0, #9
	bne _0801E1FC
	b _0801E372
_0801E1FC:
	bl sub_080074F0
	cmp r0, #0
	bne _0801E206
	b _0801E356
_0801E206:
	bl sub_08001F64
	cmp r0, #0
	bne _0801E210
	b _0801E334
_0801E210:
	mov r0, sl
	ldr r2, [r0]
	adds r2, #0x94
	mov r0, sb
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	bl sub_080076A8
	cmp r0, #0
	beq _0801E298
	bl sub_08007638
	cmp r0, #0
	beq _0801E254
	bl GetPlayerClass
	adds r1, r0, #0
	lsls r2, r4, #2
	ldr r3, [sp, #0xac]
	adds r2, r3, r2
	ldr r0, _0801E250 @ =0x000F001A
	movs r3, #0
	bl sub_080130F4
	b _0801E2DA
	.align 2, 0
_0801E248: .4byte gUnknown_030063D8
_0801E24C: .4byte gKeysNew
_0801E250: .4byte 0x000F001A
_0801E254:
	lsls r4, r4, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0801E278 @ =0x000F001B
	cmp r1, r0
	bne _0801E280
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r5, [sp, #0xac]
	adds r2, r5, r4
	ldr r0, _0801E27C @ =0x000F001C
	movs r3, #0
	bl sub_080130F4
	b _0801E2DA
	.align 2, 0
_0801E278: .4byte 0x000F001B
_0801E27C: .4byte 0x000F001C
_0801E280:
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r0, [sp, #0xac]
	adds r2, r0, r4
	ldr r0, _0801E294 @ =0x000F0019
	movs r3, #0
	bl sub_080130F4
	b _0801E2DA
	.align 2, 0
_0801E294: .4byte 0x000F0019
_0801E298:
	bl sub_08007638
	cmp r0, #0
	beq _0801E2BE
	lsls r4, r4, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r2, [sp, #0xac]
	adds r4, r2, r4
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0801E2DA
_0801E2BE:
	lsls r4, r4, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r3, [sp, #0xac]
	adds r4, r3, r4
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
_0801E2DA:
	add r5, sp, #0x8c
	ldr r0, [sp, #0xb8]
	asrs r4, r0, #0x10
	lsls r1, r4, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0xf
	ldr r2, _0801E330 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	lsls r4, r4, #2
	adds r4, r5, r4
	adds r3, r4, #0
	bl sub_0800FA74
	ldr r3, [r0, #0x10]
	movs r1, #0x80
	orrs r3, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	ldr r2, [r0, #4]
	asrs r2, r2, #0xc
	movs r0, #1
	str r0, [sp]
	adds r0, r3, #0
	adds r3, r4, #0
	bl SpawnFieldItem
	ldr r2, [sp, #0xa4]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	b _0801E366
	.align 2, 0
_0801E330: .4byte gMapLayer_03003910
_0801E334:
	ldr r3, [sp, #0xa4]
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	mov r5, sl
	ldr r2, [r5]
	adds r2, #0x94
	mov r0, sb
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	b _0801E366
_0801E356:
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x94
	mov r1, sb
	lsls r1, r4
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_0801E366:
	ldr r0, _0801E418 @ =gKeysNew
	ldr r3, [sp, #0xa8]
	ldrh r2, [r3, #6]
	ldrh r1, [r0]
	bics r1, r2
	strh r1, [r0]
_0801E372:
	ldr r4, [sp, #0xb8]
	asrs r7, r4, #0x10
	lsls r6, r7, #1
	mov r5, sp
	adds r5, r5, r6
	adds r5, #0x10
	ldrh r0, [r5]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	mov r1, r8
	adds r4, r1, r6
	ldrh r1, [r4]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r2, sp, #0x9c
	mov sl, r2
	mov r3, sp
	adds r3, #0x9e
	str r3, [sp, #0xb0]
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	mov sb, r2
	str r2, [sp, #4]
	mov r2, sl
	bl sub_08005FC4
	ldrh r0, [r5]
	lsls r0, r0, #3
	ldrh r1, [r4]
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xa0]
	ldr r3, [sp, #0xc4]
	adds r4, r3, r6
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801E41C
	bl sub_080075AC
	cmp r0, #0
	beq _0801E3D0
	b _0801E576
_0801E3D0:
	bl sub_08007510
	cmp r0, #0
	beq _0801E3DA
	b _0801E576
_0801E3DA:
	bl sub_08007544
	cmp r0, #0
	beq _0801E3E4
	b _0801E576
_0801E3E4:
	bl sub_08007604
	cmp r0, #0
	beq _0801E3EE
	b _0801E576
_0801E3EE:
	mov r4, sl
	movs r5, #0
	ldrsh r0, [r4, r5]
	ldr r2, [sp, #0xb0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xa0]
	str r4, [sp]
	add r2, sp, #0x4c
	str r2, [sp, #4]
	ldr r5, [sp, #0xb4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	b _0801E576
	.align 2, 0
_0801E418: .4byte gKeysNew
_0801E41C:
	ldrh r1, [r4]
	ldr r0, [sp, #0xbc]
	adds r5, r0, r6
	ldr r2, [sp, #0xc0]
	adds r3, r2, r6
	mov r0, sb
	str r0, [sp]
	ldr r0, [sp, #0xb4]
	adds r2, r5, #0
	bl sub_08026C40
	add r1, sp, #0x74
	adds r1, r1, r6
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E48E
	bl sub_080075AC
	cmp r0, #0
	beq _0801E448
	b _0801E576
_0801E448:
	bl sub_08007510
	cmp r0, #0
	beq _0801E452
	b _0801E576
_0801E452:
	bl sub_08007544
	cmp r0, #0
	beq _0801E45C
	b _0801E576
_0801E45C:
	bl sub_08007604
	cmp r0, #0
	beq _0801E466
	b _0801E576
_0801E466:
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xb0]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r4]
	ldrh r3, [r5]
	ldr r4, [sp, #0xa0]
	str r4, [sp]
	add r4, sp, #0x4c
	str r4, [sp, #4]
	ldr r5, [sp, #0xb4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0xc]
	bl sub_08004344
	b _0801E576
_0801E48E:
	ldr r1, [sp, #0xc8]
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801E576
	bl sub_080076A8
	cmp r0, #0
	beq _0801E504
	bl sub_08007638
	cmp r0, #0
	beq _0801E4C0
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r0, _0801E4BC @ =0x000F001A
	add r2, sp, #0x8c
	movs r3, #0
	bl sub_080130F4
	b _0801E546
	.align 2, 0
_0801E4BC: .4byte 0x000F001A
_0801E4C0:
	lsls r4, r7, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0801E4E4 @ =0x000F001B
	cmp r1, r0
	bne _0801E4EC
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r3, [sp, #0xac]
	adds r2, r3, r4
	ldr r0, _0801E4E8 @ =0x000F001C
	movs r3, #0
	bl sub_080130F4
	b _0801E546
	.align 2, 0
_0801E4E4: .4byte 0x000F001B
_0801E4E8: .4byte 0x000F001C
_0801E4EC:
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r5, [sp, #0xac]
	adds r2, r5, r4
	ldr r0, _0801E500 @ =0x000F0019
	movs r3, #0
	bl sub_080130F4
	b _0801E546
	.align 2, 0
_0801E500: .4byte 0x000F0019
_0801E504:
	bl sub_08007638
	cmp r0, #0
	beq _0801E52A
	lsls r4, r7, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r0, [sp, #0xac]
	adds r4, r0, r4
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0801E546
_0801E52A:
	lsls r4, r7, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r2, [sp, #0xac]
	adds r4, r2, r4
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
_0801E546:
	add r5, sp, #0x8c
	ldr r4, [sp, #0xb8]
	asrs r3, r4, #0x10
	lsls r4, r3, #1
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x10
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	mov r2, r8
	adds r1, r2, r4
	ldrh r1, [r1]
	lsls r1, r1, #0xf
	ldr r2, _0801E5B8 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	lsls r3, r3, #2
	adds r3, r5, r3
	bl sub_0800FA74
	ldr r3, [sp, #0xc8]
	adds r4, r3, r4
	movs r0, #1
	strh r0, [r4]
_0801E576:
	ldr r4, [sp, #0xb8]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r4, r5
	lsrs r1, r0, #0x10
	str r1, [sp, #0xa4]
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _0801E58A
	b _0801E12C
_0801E58A:
	bl WaitFrame
_0801E58E:
	bl sub_080074CC
	cmp r0, #0
	bne _0801E5A8
	ldr r0, _0801E5BC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801E5A8
	b _0801E118
_0801E5A8:
	add sp, #0xcc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E5B8: .4byte gMapLayer_03003910
_0801E5BC: .4byte gUnknown_030063D8

	thumb_func_start sub_0801E5C0
sub_0801E5C0: @ 0x0801E5C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	ldr r0, _0801E624 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	mov sb, r0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801E628 @ =gPlayers
	adds r7, r1, r0
	movs r0, #0
	str r0, [sp, #0x5c]
	movs r1, #1
	str r1, [sp, #0x54]
	movs r2, #0
	str r2, [sp, #0x58]
	bl GetMultiplayerId
	ldr r0, _0801E62C @ =0x000900DC
	bl GetDataRecord
	adds r5, r0, #0
	mov r3, sb
	ldrh r0, [r3, #4]
	cmp r0, #0
	bne _0801E630
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801E60E
	rsbs r0, r0, #0
_0801E60E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	b _0801E634
	.align 2, 0
_0801E624: .4byte gUnknown_030063D8
_0801E628: .4byte gPlayers
_0801E62C: .4byte 0x000900DC
_0801E630:
	mov r0, sb
	ldrh r0, [r0, #4]
_0801E634:
	str r0, [sp, #0x60]
	movs r1, #0xa
	adds r1, r1, r5
	mov sl, r1
	movs r4, #0
	ldrh r0, [r5, #8]
	cmp r4, r0
	bhs _0801E672
	ldr r1, [sp, #0x60]
	subs r1, #1
	cmp r4, r1
	beq _0801E672
	adds r3, r0, #0
_0801E64E:
	mov r2, sl
	ldrh r0, [r2]
	adds r2, r4, #1
	cmp r0, #0
	beq _0801E664
_0801E658:
	movs r4, #2
	add sl, r4
	mov r5, sl
	ldrh r0, [r5]
	cmp r0, #0
	bne _0801E658
_0801E664:
	movs r0, #2
	add sl, r0
	adds r4, r2, #0
	cmp r4, r3
	bhs _0801E672
	cmp r4, r1
	bne _0801E64E
_0801E672:
	mov r0, sl
	bl sub_0800ED80
	ldr r1, _0801E6A0 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0xf
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r1, _0801E6A4 @ =0x00100043
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xb
	bl sub_08026ADC
	b _0801EA44
	.align 2, 0
_0801E6A0: .4byte gUnknown_03003CA0
_0801E6A4: .4byte 0x00100043
_0801E6A8:
	bl sub_080075AC
	cmp r0, #0
	beq _0801E6B2
	b _0801EA40
_0801E6B2:
	bl sub_08007510
	cmp r0, #0
	beq _0801E6BC
	b _0801EA40
_0801E6BC:
	bl sub_08007544
	cmp r0, #0
	beq _0801E6C6
	b _0801EA40
_0801E6C6:
	bl sub_08007604
	cmp r0, #0
	beq _0801E6D0
	b _0801EA40
_0801E6D0:
	ldr r0, _0801E7F4 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801E714
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #7
	mov r3, sb
	ldrh r1, [r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801E6F2
	rsbs r0, r0, #0
_0801E6F2:
	cmp r0, #2
	bgt _0801E710
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	mov r4, sb
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801E708
	rsbs r0, r0, #0
_0801E708:
	movs r5, #1
	str r5, [sp, #0x58]
	cmp r0, #2
	ble _0801E714
_0801E710:
	movs r0, #0
	str r0, [sp, #0x58]
_0801E714:
	ldr r1, [sp, #0x5c]
	cmp r1, #0
	beq _0801E71C
	b _0801E9D4
_0801E71C:
	ldr r2, [sp, #0x58]
	cmp r2, #0
	bne _0801E724
	b _0801E9CE
_0801E724:
	ldr r0, _0801E7F8 @ =gUnknownThread_03006680
	bl IsThreadInList
	cmp r0, #0
	bne _0801E786
	bl sub_080076E0
	cmp r0, #0
	bne _0801E786
	bl sub_08007670
	cmp r0, #0
	bne _0801E786
	ldr r5, _0801E7FC @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r6, [r0]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r2, [r0, #0x16]
	mov r0, r8
	adds r1, r6, #0
	bl FindFieldItemNear
	cmp r0, #0
	bne _0801E786
	ldr r3, [sp, #0x50]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x78
	mov r0, sl
	movs r2, #0x8c
	bl sub_0800EB30
_0801E786:
	ldrh r0, [r7, #0xc]
	subs r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801E79A
	ldrh r1, [r7, #0x10]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r7, #0x10]
_0801E79A:
	ldr r0, _0801E800 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801E7A8
	b _0801E9CE
_0801E7A8:
	bl sub_080076E0
	cmp r0, #0
	beq _0801E7B2
	b _0801E9CE
_0801E7B2:
	ldrh r0, [r7, #0xc]
	cmp r0, #8
	bne _0801E7BA
	b _0801E9CE
_0801E7BA:
	cmp r0, #9
	bne _0801E7C0
	b _0801E9CE
_0801E7C0:
	movs r0, #0x22
	bl PlaySE
	movs r4, #1
	str r4, [sp, #0x5c]
	ldr r5, [sp, #0x60]
	cmp r5, #0xb
	bne _0801E7EC
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xb
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	cmp r0, #0
	bne _0801E7EC
	movs r0, #1
	str r0, [sp, #0x60]
_0801E7EC:
	movs r4, #0
	ldr r1, [r7, #0x1c]
	b _0801E80C
	.align 2, 0
_0801E7F4: .4byte gFrameCounter
_0801E7F8: .4byte gUnknownThread_03006680
_0801E7FC: .4byte gPlayers
_0801E800: .4byte gKeysNew
_0801E804:
	adds r1, #2
	adds r4, #1
	cmp r4, #2
	bhi _0801E816
_0801E80C:
	ldrh r0, [r1]
	cmp r0, #0
	bne _0801E804
	cmp r4, #2
	bls _0801E81E
_0801E816:
	ldr r1, [sp, #0x60]
	cmp r1, #8
	bhi _0801E81E
	b _0801E9CE
_0801E81E:
	ldr r0, [sp, #0x60]
	subs r0, #1
	cmp r0, #0xa
	bls _0801E828
	b _0801E9CE
_0801E828:
	lsls r0, r0, #2
	ldr r1, _0801E834 @ =_0801E838
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E834: .4byte _0801E838
_0801E838: @ jump table
	.4byte _0801E864 @ case 0
	.4byte _0801E874 @ case 1
	.4byte _0801E884 @ case 2
	.4byte _0801E894 @ case 3
	.4byte _0801E8A4 @ case 4
	.4byte _0801E8C4 @ case 5
	.4byte _0801E8E4 @ case 6
	.4byte _0801E904 @ case 7
	.4byte _0801E924 @ case 8
	.4byte _0801E93C @ case 9
	.4byte _0801E9CE @ case 10
_0801E864:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #7
	b _0801E912
_0801E874:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #8
	b _0801E912
_0801E884:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #9
	b _0801E912
_0801E894:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #0xa
	b _0801E912
_0801E8A4:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #5
	strh r0, [r1]
	ldr r1, [r7, #0x20]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x32
	strh r1, [r0, #0xa]
	b _0801E914
_0801E8C4:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #5
	strh r0, [r1]
	ldr r1, [r7, #0x20]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x32
	strh r1, [r0, #0xc]
	b _0801E914
_0801E8E4:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #5
	strh r0, [r1]
	ldr r1, [r7, #0x20]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x32
	strh r1, [r0, #0xe]
	b _0801E914
_0801E904:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #0xb
_0801E912:
	strh r0, [r1]
_0801E914:
	adds r0, r7, #0
	adds r0, #0x24
	adds r0, r0, r2
	ldr r1, _0801E920 @ =0x00001770
	strh r1, [r0]
	b _0801E9CE
	.align 2, 0
_0801E920: .4byte 0x00001770
_0801E924:
	adds r0, r7, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r1, [r0]
	adds r0, #0x2a
	strh r1, [r0]
	b _0801E9CE
_0801E93C:
	movs r1, #0x71
	rsbs r1, r1, #0
	ldr r0, [sp, #0x48]
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	ldr r1, _0801E9A8 @ =0xFFFFC07F
	ands r0, r1
	str r0, [sp, #0x48]
	bl Random
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0xf
	ldr r2, _0801E9AC @ =0xFF807FFF
	ldr r0, [sp, #0x48]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x48]
	bl sub_08001F64
	adds r4, r0, #0
	cmp r4, #0
	beq _0801E9B4
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0xf
	ldrh r1, [r2, #2]
	lsls r1, r1, #0xf
	ldr r2, _0801E9B0 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	add r4, sp, #0x48
	adds r3, r4, #0
	bl sub_0800FA74
	str r0, [sp, #0x4c]
	bl sub_08001F64
	adds r3, r0, #0
	ldr r5, [sp, #0x4c]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r1, [r5]
	asrs r1, r1, #0xc
	ldr r2, [r5, #4]
	asrs r2, r2, #0xc
	str r3, [sp]
	adds r3, r4, #0
	bl SpawnFieldItem
	b _0801E9CE
	.align 2, 0
_0801E9A8: .4byte 0xFFFFC07F
_0801E9AC: .4byte 0xFF807FFF
_0801E9B0: .4byte gMapLayer_03003910
_0801E9B4:
	ldr r1, [sp, #0x4c]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #3
	ldrh r2, [r2, #2]
	lsls r2, r2, #3
	add r3, sp, #0x48
	str r4, [sp]
	bl SpawnFieldItem
_0801E9CE:
	ldr r3, [sp, #0x5c]
	cmp r3, #0
	beq _0801E9DE
_0801E9D4:
	ldr r0, [sp, #0x54]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
_0801E9DE:
	movs r0, #1
	ldr r4, [sp, #0x54]
	ands r0, r4
	cmp r0, #0
	beq _0801EA40
	mov r5, sb
	ldrh r0, [r5]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r5, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #3
	ldrh r1, [r1, #2]
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08006008
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
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
	movs r2, #2
	movs r3, #0
	bl sub_08004344
_0801EA40:
	bl WaitFrame
_0801EA44:
	bl sub_080074CC
	cmp r0, #0
	bne _0801EA64
	ldr r0, _0801EA74 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801EA64
	ldr r5, [sp, #0x54]
	cmp r5, #0x3b
	bhi _0801EA64
	b _0801E6A8
_0801EA64:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EA74: .4byte gUnknown_030063D8
