	.include "asm/macros.inc"

	.syntax unified
	.text

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

