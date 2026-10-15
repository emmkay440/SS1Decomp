	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801CFB0
sub_0801CFB0: @ 0x0801CFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x7c
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x4c]
	ldr r0, _0801D074 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x88
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x38]
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x3c]
	adds r0, r1, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r5, sp
	subs r5, r5, r0
	mov sp, r5
	adds r5, #0x10
	str r5, [r7, #0x40]
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x44]
	lsls r0, r1, #2
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x48]
	movs r5, #0
	str r5, [r7, #0x64]
	cmp r5, r1
	bhs _0801D060
	movs r0, #0
	mov sb, r0
	movs r6, #0
	mov r8, r3
	ldr r5, [r7, #0x3c]
	ldr r4, [r7, #0x38]
_0801D022:
	strh r6, [r4]
	strh r6, [r5]
	ldr r2, [r7, #0x40]
	ldr r3, [r7, #0x64]
	adds r1, r2, r3
	movs r0, #1
	strb r0, [r1]
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	ldr r2, [r7, #0x44]
	ldr r3, [r7, #0x64]
	adds r0, r2, r3
	mov r1, sb
	strb r1, [r0]
	adds r5, #2
	adds r4, #2
	adds r3, #1
	str r3, [r7, #0x64]
	ldr r0, _0801D074 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r3, r0
	blo _0801D022
_0801D060:
	ldr r0, _0801D074 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	b _0801D290
	.align 2, 0
_0801D074: .4byte gUnknown_030063D8
_0801D078:
	bl sub_080075AC
	cmp r0, #0
	beq _0801D082
	b _0801D28C
_0801D082:
	bl sub_08007544
	cmp r0, #0
	beq _0801D08C
	b _0801D28C
_0801D08C:
	bl sub_08007510
	cmp r0, #0
	bne _0801D0B6
	bl sub_08007544
	cmp r0, #0
	bne _0801D0B6
	bl sub_08007604
	cmp r0, #0
	bne _0801D0B6
	ldr r0, _0801D0F8 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801D0B6
	adds r0, r7, #0
	bl sub_08026B74
_0801D0B6:
	ldr r0, _0801D0FC @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r2, [r0, #0x24]
	mov r8, r2
	movs r3, #0
	str r3, [r7, #0x64]
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r3, r0
	blo _0801D0CC
	b _0801D28C
_0801D0CC:
	adds r5, r7, #0
	adds r5, #0x34
	str r5, [r7, #0x50]
	adds r0, r7, #0
	adds r0, #0x36
	str r0, [r7, #0x54]
_0801D0D8:
	movs r1, #0
	mov sb, r1
	ldr r2, [r7, #0x64]
	lsls r2, r2, #1
	mov sl, r2
	ldr r3, [r7, #0x40]
	ldr r5, [r7, #0x64]
	adds r3, r3, r5
	str r3, [r7, #0x58]
	adds r5, #1
	str r5, [r7, #0x5c]
	mov r0, r8
	adds r0, #0xc
	str r0, [r7, #0x60]
	b _0801D1C0
	.align 2, 0
_0801D0F8: .4byte gFrameCounter
_0801D0FC: .4byte gUnknown_030063D8
_0801D100:
	ldr r3, _0801D1EC @ =gPlayers
	movs r0, #0xd4
	mov r4, sb
	muls r4, r0, r4
	adds r0, r3, #0
	adds r0, #0xd0
	adds r0, r4, r0
	ldr r2, [r0]
	ldrh r1, [r2]
	lsrs r1, r1, #7
	mov r5, r8
	ldrh r0, [r5]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801D120
	rsbs r1, r1, #0
_0801D120:
	cmp r1, #1
	bgt _0801D1BC
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	mov r2, r8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801D136
	rsbs r0, r0, #0
_0801D136:
	cmp r0, #1
	bgt _0801D1BC
	movs r0, #0
	ldr r5, [r7, #0x58]
	strb r0, [r5]
	str r3, [r7, #0x68]
	bl sub_08007670
	ldr r3, [r7, #0x68]
	cmp r0, #0
	bne _0801D19E
	adds r0, r3, #0
	adds r0, #0x98
	adds r6, r4, r0
	ldr r1, [r7, #0x64]
	lsls r0, r1, #2
	ldr r2, [r7, #0x48]
	adds r5, r2, r0
	ldr r1, [r6]
	ldr r0, [r5]
	cmp r1, r0
	beq _0801D19E
	bl GetMultiplayerId
	ldr r3, [r7, #0x68]
	cmp sb, r0
	bne _0801D19E
	adds r2, r4, r3
	ldrh r0, [r2, #0xc]
	cmp r0, #7
	beq _0801D19E
	cmp r0, #8
	beq _0801D19E
	cmp r0, #9
	beq _0801D19E
	movs r0, #7
	strh r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x54
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r0, [r5]
	str r0, [r6]
	adds r1, #0x1c
	ldr r0, _0801D1F0 @ =0x0000FFFE
	strh r0, [r1]
_0801D19E:
	ldr r5, [r7, #0x44]
	ldr r0, [r7, #0x64]
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #1
	bne _0801D1BC
	ldr r3, [r7, #0x64]
	lsls r1, r3, #2
	ldr r5, [r7, #0x48]
	adds r1, r5, r1
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #0
	strb r0, [r2]
_0801D1BC:
	movs r1, #1
	add sb, r1
_0801D1C0:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801D100
	ldr r2, [r7, #0x58]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0801D1F4
	mov r3, r8
	ldrh r1, [r3, #8]
	ldr r2, [r7, #0x38]
	add r2, sl
	ldr r3, [r7, #0x3c]
	add r3, sl
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08026C40
	ldr r5, [r7, #0x58]
	strb r0, [r5]
	b _0801D20E
	.align 2, 0
_0801D1EC: .4byte gPlayers
_0801D1F0: .4byte 0x0000FFFE
_0801D1F4:
	ldr r1, [r7, #0x38]
	add r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801D204
	subs r0, #1
	strh r0, [r1]
	b _0801D20E
_0801D204:
	ldr r0, [r7, #0x44]
	ldr r2, [r7, #0x64]
	adds r1, r0, r2
	movs r0, #1
	strb r0, [r1]
_0801D20E:
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r2, [r7, #0x50]
	ldr r3, [r7, #0x54]
	bl sub_08005FC4
	movs r4, #3
	bl sub_08007510
	cmp r0, #0
	bne _0801D276
	bl sub_08007544
	cmp r0, #0
	bne _0801D276
	bl sub_08007604
	cmp r0, #0
	bne _0801D276
	adds r0, r7, #0
	bl sub_08026B74
	ldr r1, [r7, #0x50]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [r7, #0x54]
	movs r5, #0
	ldrsh r1, [r3, r5]
	mov r3, r8
	ldrh r2, [r3, #8]
	ldr r3, [r7, #0x38]
	add r3, sl
	ldrh r3, [r3]
	str r4, [sp]
	adds r4, r7, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
_0801D276:
	ldr r5, [r7, #0x5c]
	str r5, [r7, #0x64]
	ldr r0, [r7, #0x60]
	mov r8, r0
	ldr r0, _0801D2C0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r5, r0
	bhs _0801D28C
	b _0801D0D8
_0801D28C:
	bl WaitFrame
_0801D290:
	bl sub_080074CC
	cmp r0, #0
	bne _0801D2AA
	ldr r0, _0801D2C0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801D2AA
	b _0801D078
_0801D2AA:
	ldr r1, [r7, #0x4c]
	mov sp, r1
	add sp, #0x7c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D2C0: .4byte gUnknown_030063D8

	thumb_func_start sub_0801D2C4
sub_0801D2C4: @ 0x0801D2C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x54]
	ldr r0, _0801D38C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x8a
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x38]
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x3c]
	adds r0, r1, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r4, sp
	subs r4, r4, r0
	mov sp, r4
	adds r4, #0x10
	str r4, [r7, #0x40]
	mov r5, sp
	subs r5, r5, r0
	mov sp, r5
	adds r5, #0x10
	str r5, [r7, #0x44]
	lsls r0, r1, #2
	mov r6, sp
	subs r6, r6, r0
	mov sp, r6
	adds r6, #0x10
	str r6, [r7, #0x48]
	movs r0, #0
	mov sb, r0
	cmp sb, r1
	bhs _0801D372
	movs r1, #0
	mov r8, r1
	movs r6, #0
	ldr r2, [r7, #0x48]
	mov sl, r2
	adds r5, r3, #0
	ldr r4, [r7, #0x38]
_0801D338:
	strh r6, [r4]
	strh r6, [r5]
	ldr r1, [r7, #0x40]
	add r1, sb
	movs r0, #1
	strb r0, [r1]
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r3, sl
	adds r3, #4
	mov sl, r3
	subs r3, #4
	stm r3!, {r0}
	ldr r0, [r7, #0x44]
	add r0, sb
	mov r1, r8
	strb r1, [r0]
	adds r5, #2
	adds r4, #2
	movs r2, #1
	add sb, r2
	ldr r0, _0801D38C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x8a
	ldrh r0, [r0]
	cmp sb, r0
	blo _0801D338
_0801D372:
	bl GetMultiplayerId
	str r0, [r7, #0x4c]
	ldr r0, _0801D38C @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x14]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	b _0801D5A6
	.align 2, 0
_0801D38C: .4byte gUnknown_030063D8
_0801D390:
	bl sub_080075AC
	cmp r0, #0
	beq _0801D39A
	b _0801D5A2
_0801D39A:
	bl sub_08007544
	cmp r0, #0
	beq _0801D3A4
	b _0801D5A2
_0801D3A4:
	ldr r0, [r4]
	ldr r3, [r0, #0x28]
	mov r8, r3
	movs r5, #0
	mov sb, r5
	adds r0, #0x8a
	ldrh r0, [r0]
	cmp sb, r0
	blo _0801D3B8
	b _0801D5A2
_0801D3B8:
	adds r6, r7, #0
	adds r6, #0x34
	str r6, [r7, #0x68]
	adds r0, r7, #0
	adds r0, #0x36
	str r0, [r7, #0x6c]
_0801D3C4:
	movs r4, #0
	movs r3, #0
	movs r6, #0
	mov r1, sb
	lsls r1, r1, #1
	str r1, [r7, #0x60]
	ldr r2, [r7, #0x40]
	add r2, sb
	str r2, [r7, #0x58]
	mov r5, sb
	adds r5, #1
	str r5, [r7, #0x5c]
	mov r0, r8
	adds r0, #0x1c
	str r0, [r7, #0x64]
	mov r2, r8
	adds r2, #4
_0801D3E6:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0801D406
	ldr r1, _0801D424 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0x92
	ldrh r1, [r0]
	ldrh r0, [r2]
	subs r0, #1
	asrs r1, r0
	movs r5, #1
	ands r1, r5
	cmp r1, #0
	beq _0801D404
	adds r3, #1
_0801D404:
	adds r4, #1
_0801D406:
	adds r2, #2
	adds r6, #1
	cmp r6, #7
	bls _0801D3E6
	cmp r4, r3
	bls _0801D4DC
	movs r6, #0
	mov r0, sb
	lsls r0, r0, #2
	str r0, [r7, #0x50]
	ldr r1, [r7, #0x48]
	adds r1, r1, r0
	mov sl, r1
	b _0801D4D4
	.align 2, 0
_0801D424: .4byte gUnknown_030063D8
_0801D428:
	movs r0, #0xd4
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, _0801D500 @ =gPlayers
	adds r0, #0xd0
	adds r0, r4, r0
	ldr r2, [r0]
	ldrh r1, [r2]
	lsrs r1, r1, #7
	mov r3, r8
	ldrh r0, [r3]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801D446
	rsbs r1, r1, #0
_0801D446:
	cmp r1, #1
	bgt _0801D4D2
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	mov r5, r8
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801D45C
	rsbs r0, r0, #0
_0801D45C:
	cmp r0, #1
	bgt _0801D4D2
	movs r1, #0
	ldr r0, [r7, #0x58]
	strb r1, [r0]
	bl sub_08007670
	cmp r0, #0
	bne _0801D4BC
	ldr r0, _0801D500 @ =gPlayers
	adds r0, #0x98
	adds r5, r4, r0
	ldr r2, [r7, #0x48]
	ldr r0, [r7, #0x50]
	adds r3, r2, r0
	ldr r1, [r5]
	ldr r0, [r3]
	cmp r1, r0
	beq _0801D4BC
	ldr r1, [r7, #0x4c]
	cmp r6, r1
	bne _0801D4BC
	ldr r0, _0801D500 @ =gPlayers
	adds r2, r4, r0
	ldrh r0, [r2, #0xc]
	cmp r0, #7
	beq _0801D4BC
	cmp r0, #8
	beq _0801D4BC
	cmp r0, #9
	beq _0801D4BC
	movs r0, #7
	strh r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x54
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldr r0, [r3]
	str r0, [r5]
	adds r1, #0x1c
	ldr r0, _0801D504 @ =0x0000FFFE
	strh r0, [r1]
_0801D4BC:
	ldr r1, [r7, #0x44]
	add r1, sb
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801D4D2
	mov r5, sl
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	movs r0, #0
	strb r0, [r1]
_0801D4D2:
	adds r6, #1
_0801D4D4:
	bl sub_08001EC4
	cmp r6, r0
	blo _0801D428
_0801D4DC:
	ldr r1, [r7, #0x58]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801D508
	mov r2, r8
	ldrh r1, [r2, #0x18]
	ldr r3, [r7, #0x38]
	ldr r4, [r7, #0x60]
	adds r2, r3, r4
	ldr r5, [r7, #0x3c]
	adds r3, r5, r4
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08026C40
	ldr r6, [r7, #0x58]
	strb r0, [r6]
	b _0801D522
	.align 2, 0
_0801D500: .4byte gPlayers
_0801D504: .4byte 0x0000FFFE
_0801D508:
	ldr r0, [r7, #0x38]
	ldr r2, [r7, #0x60]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801D51A
	subs r0, #1
	strh r0, [r1]
	b _0801D522
_0801D51A:
	ldr r0, [r7, #0x44]
	add r0, sb
	movs r3, #1
	strb r3, [r0]
_0801D522:
	mov r4, r8
	ldrh r0, [r4]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [r7, #0x68]
	ldr r3, [r7, #0x6c]
	bl sub_08005FC4
	movs r4, #3
	bl sub_08007510
	cmp r0, #0
	bne _0801D58C
	bl sub_08007544
	cmp r0, #0
	bne _0801D58C
	bl sub_08007604
	cmp r0, #0
	bne _0801D58C
	adds r0, r7, #0
	bl sub_08026B74
	ldr r5, [r7, #0x68]
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [r7, #0x6c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r5, r8
	ldrh r2, [r5, #0x18]
	ldr r6, [r7, #0x38]
	ldr r5, [r7, #0x60]
	adds r3, r6, r5
	ldrh r3, [r3]
	str r4, [sp]
	adds r4, r7, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
_0801D58C:
	ldr r6, [r7, #0x5c]
	mov sb, r6
	ldr r0, [r7, #0x64]
	mov r8, r0
	ldr r1, _0801D5D4 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0x8a
	ldrh r0, [r0]
	cmp sb, r0
	bhs _0801D5A2
	b _0801D3C4
_0801D5A2:
	bl WaitFrame
_0801D5A6:
	bl sub_080074CC
	cmp r0, #0
	bne _0801D5C0
	ldr r4, _0801D5D4 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801D5C0
	b _0801D390
_0801D5C0:
	ldr r2, [r7, #0x54]
	mov sp, r2
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D5D4: .4byte gUnknown_030063D8

	thumb_func_start sub_0801D5D8
sub_0801D5D8: @ 0x0801D5D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x54]
	ldr r0, _0801D6A0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x8c
	ldrh r2, [r0]
	lsls r1, r2, #1
	adds r1, #3
	lsrs r1, r1, #2
	lsls r1, r1, #2
	mov r3, sp
	subs r3, r3, r1
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x38]
	mov r4, sp
	subs r4, r4, r1
	mov sp, r4
	adds r4, #0x10
	str r4, [r7, #0x3c]
	adds r0, r2, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r5, sp
	subs r5, r5, r0
	mov sp, r5
	adds r5, #0x10
	str r5, [r7, #0x40]
	mov r6, sp
	subs r6, r6, r0
	mov sp, r6
	adds r6, #0x10
	str r6, [r7, #0x44]
	mov r0, sp
	subs r0, r0, r1
	mov sp, r0
	adds r0, #0x10
	str r0, [r7, #0x48]
	lsls r0, r2, #2
	mov r1, sp
	subs r1, r1, r0
	mov sp, r1
	adds r1, #0x10
	str r1, [r7, #0x4c]
	movs r3, #0
	mov r8, r3
	cmp r8, r2
	bhs _0801D698
	movs r4, #0
	mov sl, r4
	movs r2, #0
	ldr r6, [r7, #0x48]
	mov sb, r1
	ldr r5, [r7, #0x3c]
	ldr r4, [r7, #0x38]
_0801D656:
	strh r2, [r4]
	strh r2, [r5]
	ldr r1, [r7, #0x40]
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	str r2, [r7, #0x6c]
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	stm r1!, {r0}
	ldr r0, [r7, #0x44]
	add r0, r8
	mov r3, sl
	strb r3, [r0]
	ldr r2, [r7, #0x6c]
	strh r2, [r6]
	adds r6, #2
	adds r5, #2
	adds r4, #2
	movs r0, #1
	add r8, r0
	ldr r0, _0801D6A0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x8c
	ldrh r0, [r0]
	cmp r8, r0
	blo _0801D656
_0801D698:
	bl GetMultiplayerId
	str r0, [r7, #0x50]
	b _0801D8F4
	.align 2, 0
_0801D6A0: .4byte gUnknown_030063D8
_0801D6A4:
	bl sub_080075AC
	cmp r0, #0
	beq _0801D6AE
	b _0801D8F0
_0801D6AE:
	bl sub_08007544
	cmp r0, #0
	beq _0801D6B8
	b _0801D8F0
_0801D6B8:
	bl sub_08007510
	cmp r0, #0
	bne _0801D6E2
	bl sub_08007544
	cmp r0, #0
	bne _0801D6E2
	bl sub_08007604
	cmp r0, #0
	bne _0801D6E2
	ldr r0, _0801D6F0 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801D6E2
	adds r0, r7, #0
	bl sub_08026B74
_0801D6E2:
	ldr r0, _0801D6F4 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r6, [r0, #0x2c]
	movs r1, #0
	mov r8, r1
	b _0801D8E6
	.align 2, 0
_0801D6F0: .4byte gFrameCounter
_0801D6F4: .4byte gUnknown_030063D8
_0801D6F8:
	ldr r1, [r6, #8]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	mov r3, r8
	lsls r2, r3, #1
	ldr r4, [r7, #0x48]
	adds r3, r4, r2
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r2, [r7, #0x64]
	ldr r5, [r7, #0x40]
	add r5, r8
	str r5, [r7, #0x58]
	ldrh r1, [r6, #4]
	cmp r0, r1
	bls _0801D72C
	movs r2, #0
	strb r2, [r5]
	movs r4, #0
	strh r4, [r3]
_0801D72C:
	ldr r5, [r7, #0x58]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801D82C
	movs r0, #0
	mov sb, r0
	mov r1, r8
	adds r1, #1
	str r1, [r7, #0x5c]
	adds r2, r7, #0
	adds r2, #0x34
	str r2, [r7, #0x68]
	movs r3, #0x36
	adds r3, r3, r7
	mov sl, r3
	adds r4, r6, #0
	adds r4, #0xc
	str r4, [r7, #0x60]
	b _0801D7FE
_0801D752:
	movs r0, #0xd4
	mov r4, sb
	muls r4, r0, r4
	ldr r0, _0801D824 @ =gPlayers
	adds r0, #0xd0
	adds r0, r4, r0
	ldr r2, [r0]
	ldrh r1, [r2]
	lsrs r1, r1, #7
	ldrh r0, [r6]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801D76E
	rsbs r1, r1, #0
_0801D76E:
	cmp r1, #1
	bgt _0801D7FA
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801D782
	rsbs r0, r0, #0
_0801D782:
	cmp r0, #1
	bgt _0801D7FA
	bl sub_08007670
	cmp r0, #0
	bne _0801D7DE
	ldr r0, _0801D824 @ =gPlayers
	adds r0, #0x98
	adds r5, r4, r0
	mov r1, r8
	lsls r0, r1, #2
	ldr r2, [r7, #0x4c]
	adds r3, r2, r0
	ldr r1, [r5]
	ldr r0, [r3]
	cmp r1, r0
	beq _0801D7DE
	ldr r0, [r7, #0x50]
	cmp sb, r0
	bne _0801D7DE
	ldr r1, _0801D824 @ =gPlayers
	adds r2, r4, r1
	ldrh r0, [r2, #0xc]
	cmp r0, #7
	beq _0801D7DE
	cmp r0, #8
	beq _0801D7DE
	cmp r0, #9
	beq _0801D7DE
	movs r0, #7
	strh r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x54
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldr r0, [r3]
	str r0, [r5]
	adds r1, #0x1c
	ldr r0, _0801D828 @ =0x0000FFFE
	strh r0, [r1]
_0801D7DE:
	ldr r2, [r7, #0x44]
	add r2, r8
	ldrb r0, [r2]
	cmp r0, #1
	bne _0801D7FA
	mov r5, r8
	lsls r1, r5, #2
	ldr r0, [r7, #0x4c]
	adds r1, r0, r1
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r1, #0
	strb r1, [r2]
_0801D7FA:
	movs r2, #1
	add sb, r2
_0801D7FE:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801D752
	ldrh r1, [r6, #6]
	ldr r3, [r7, #0x38]
	ldr r4, [r7, #0x64]
	adds r2, r3, r4
	ldr r5, [r7, #0x3c]
	adds r3, r5, r4
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08026C40
	ldr r1, [r7, #0x58]
	strb r0, [r1]
	b _0801D876
	.align 2, 0
_0801D824: .4byte gPlayers
_0801D828: .4byte 0x0000FFFE
_0801D82C:
	ldr r2, [r7, #0x38]
	ldr r3, [r7, #0x64]
	adds r1, r2, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801D856
	subs r0, #1
	strh r0, [r1]
	mov r4, r8
	adds r4, #1
	str r4, [r7, #0x5c]
	adds r5, r7, #0
	adds r5, #0x34
	str r5, [r7, #0x68]
	movs r0, #0x36
	adds r0, r0, r7
	mov sl, r0
	adds r1, r6, #0
	adds r1, #0xc
	str r1, [r7, #0x60]
	b _0801D876
_0801D856:
	ldr r1, [r7, #0x44]
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	mov r2, r8
	adds r2, #1
	str r2, [r7, #0x5c]
	adds r3, r7, #0
	adds r3, #0x34
	str r3, [r7, #0x68]
	movs r4, #0x36
	adds r4, r4, r7
	mov sl, r4
	adds r5, r6, #0
	adds r5, #0xc
	str r5, [r7, #0x60]
_0801D876:
	ldrh r0, [r6]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [r7, #0x68]
	mov r3, sl
	bl sub_08005FC4
	movs r4, #3
	bl sub_08007510
	cmp r0, #0
	bne _0801D8DC
	bl sub_08007544
	cmp r0, #0
	bne _0801D8DC
	bl sub_08007604
	cmp r0, #0
	bne _0801D8DC
	adds r0, r7, #0
	bl sub_08026B74
	ldr r3, [r7, #0x68]
	movs r5, #0
	ldrsh r0, [r3, r5]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r6, #6]
	ldr r5, [r7, #0x38]
	ldr r6, [r7, #0x64]
	adds r3, r5, r6
	ldrh r3, [r3]
	str r4, [sp]
	adds r4, r7, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
_0801D8DC:
	ldr r0, [r7, #0x5c]
	mov r8, r0
	ldr r6, [r7, #0x60]
	ldr r0, _0801D924 @ =gUnknown_030063D8
	ldr r0, [r0]
_0801D8E6:
	adds r0, #0x8c
	ldrh r0, [r0]
	cmp r8, r0
	bhs _0801D8F0
	b _0801D6F8
_0801D8F0:
	bl WaitFrame
_0801D8F4:
	bl sub_080074CC
	cmp r0, #0
	bne _0801D90E
	ldr r0, _0801D924 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801D90E
	b _0801D6A4
_0801D90E:
	ldr r1, [r7, #0x54]
	mov sp, r1
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D924: .4byte gUnknown_030063D8
