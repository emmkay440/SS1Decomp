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
