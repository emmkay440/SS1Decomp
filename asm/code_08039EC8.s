	.include "asm/macros.inc"

	.syntax unified
	.text

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
