	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802CA30
sub_0802CA30: @ 0x0802CA30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	ldr r0, _0802CDC0 @ =0x00100005
	bl GetDataRecord
	str r0, [sp, #0x6c]
	ldr r0, _0802CDC4 @ =0x00110005
	bl GetDataRecord
	str r0, [sp, #0x68]
	ldr r0, _0802CDC8 @ =0x00130005
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r0, #0xd4
	ldr r2, [sp, #0x5c]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802CDCC @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x70]
	mov r5, sp
	adds r5, #0x20
	str r5, [sp, #0xac]
	mov r7, sp
	adds r7, #0x2c
	str r7, [sp, #0x90]
	mov r0, sp
	adds r0, #0x38
	str r0, [sp, #0x9c]
	mov r1, sp
	adds r1, #0x40
	str r1, [sp, #0xa0]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0xa4]
	mov r3, sp
	adds r3, #0x50
	str r3, [sp, #0xa8]
	adds r7, r5, #0
	ldr r3, [sp, #0x64]
	adds r3, #0xd0
	adds r6, r0, #0
	movs r4, #0
	adds r5, r3, #0
_0802CAB4:
	ldr r0, [sp, #0x70]
	lsls r1, r0, #2
	adds r2, r7, r1
	ldr r0, [r3]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [r2]
	ldr r2, [sp, #0x90]
	adds r1, r2, r1
	ldr r0, [r3]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [r1]
	ldr r0, [sp, #0x70]
	lsls r1, r0, #1
	adds r0, r6, r1
	strh r4, [r0]
	ldr r2, [sp, #0xa0]
	adds r0, r2, r1
	strh r4, [r0]
	ldr r2, [sp, #0xa4]
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, [sp, #0xa8]
	adds r1, r0, r1
	ldr r2, [sp, #0x70]
	lsls r0, r2, #3
	adds r0, #1
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r0, #2
	bls _0802CAB4
	ldr r2, _0802CDD0 @ =0x080FB9FC
	ldr r0, [r5]
	ldrb r1, [r0, #3]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x10
	str r1, [sp, #0x7c]
	ldr r3, [sp, #0x84]
	ldr r5, [sp, #0x5c]
	cmp r3, r5
	bne _0802CB68
	ldr r7, [sp, #0x64]
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x7c]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x74]
	adds r0, #1
	str r0, [r7, #0x7c]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0802CB40
	rsbs r1, r1, #0
_0802CB40:
	adds r0, r1, #0
	cmp r1, #0
	bge _0802CB48
	adds r0, #0xf
_0802CB48:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	ldr r0, _0802CDD4 @ =gPlayerStats
	adds r0, #0x50
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [sp, #0x80]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
_0802CB68:
	ldr r2, [sp, #0x5c]
	lsls r2, r2, #2
	str r2, [sp, #0x94]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x88]
	lsls r0, r0, #1
	ldr r3, _0802CDD8 @ =0x0805289C
	adds r0, r0, r3
	str r0, [sp, #0x8c]
_0802CB7C:
	movs r5, #0
	str r5, [sp, #0x78]
	movs r7, #0
	str r7, [sp, #0x70]
_0802CB84:
	ldr r0, [sp, #0x70]
	lsls r1, r0, #1
	ldr r3, [sp, #0xa8]
	adds r2, r3, r1
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	str r1, [sp, #0x98]
	cmp r7, #0
	beq _0802CB9E
	b _0802CDA2
_0802CB9E:
	movs r0, #1
	strh r0, [r2]
	ldr r5, [sp, #0x70]
	lsls r6, r5, #2
	ldr r0, [sp, #0xac]
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [sp, #0x88]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802CDD8 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #0x28
	adds r1, r0, #0
	muls r1, r3, r1
	mov r5, r8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [sp, #0x90]
	adds r0, r0, r6
	mov sb, r0
	ldr r1, [sp, #0x8c]
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r3, r0
	mov r3, sb
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x58
	mov r5, sp
	adds r5, #0x5a
	movs r2, #0x30
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x9c]
	ldr r1, [sp, #0x98]
	adds r0, r0, r1
	mov sl, r0
	ldr r3, [sp, #0xa0]
	adds r2, r3, r1
	str r7, [sp]
	movs r0, #5
	mov r1, sl
	ldr r3, [sp, #0x6c]
	bl sub_08004214
	adds r2, r0, #0
	ldr r7, [sp, #0xa4]
	ldr r1, [sp, #0x98]
	adds r0, r7, r1
	strh r2, [r0]
	ldr r0, _0802CDDC @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	str r6, [sp, #0xb4]
	adds r6, r4, #0
	cmp r0, #0
	bne _0802CCAC
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _0802CCAC
	bl sub_08007510
	cmp r0, #0
	bne _0802CCAC
	bl sub_08007604
	cmp r0, #0
	bne _0802CCAC
	bl sub_08007544
	cmp r0, #0
	bne _0802CCAC
	mov r2, r8
	ldr r5, [r2]
	asrs r5, r5, #0xc
	mov r3, sb
	ldr r4, [r3]
	asrs r4, r4, #0xc
	bl sub_08007544
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08006008
	movs r5, #0
	ldrsh r4, [r6, r5]
	ldr r2, _0802CDE0 @ =0x080FBB24
	ldr r7, [sp, #0x7c]
	lsls r3, r7, #2
	adds r1, r3, r2
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r4, r4, r1
	movs r5, #0x5a
	add r5, sp
	movs r7, #0
	ldrsh r1, [r5, r7]
	adds r2, #2
	adds r3, r3, r2
	movs r7, #0
	ldrsh r2, [r3, r7]
	adds r1, r1, r2
	mov r2, sl
	ldrh r3, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r7, [sp, #0x6c]
	str r7, [sp, #8]
	ldr r0, [sp, #0x68]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #5
	bl sub_08004344
_0802CCAC:
	ldr r1, [sp, #0x84]
	ldr r2, [sp, #0x5c]
	cmp r1, r2
	bne _0802CD90
	ldr r3, [sp, #0xa4]
	ldr r5, [sp, #0x98]
	adds r0, r3, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802CD9C
	bl GetMultiplayerId
	ldr r7, [sp, #0x84]
	cmp r7, r0
	bne _0802CCE0
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802CDB2
	bl sub_080077C0
	cmp r0, #0
	bne _0802CDB2
_0802CCE0:
	movs r4, #0
	ldr r2, _0802CDE4 @ =gActiveEnemyMask
	mov sb, r2
	movs r3, #1
	ldr r7, [sp, #0xb4]
	ldr r5, [sp, #0x90]
	adds r5, r5, r7
	mov r8, r5
_0802CCF0:
	adds r1, r3, #0
	lsls r1, r4
	mov r2, sb
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802CD86
	ldr r2, _0802CDE8 @ =gEnemies
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r0, [sp, #0xac]
	adds r1, r0, r7
	ldr r0, [r5, #0x10]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #0xc
	strh r0, [r6]
	ldr r0, [r5, #0x14]
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #0xc
	movs r1, #0x5a
	add r1, sp
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0802CD32
	rsbs r0, r0, #0
_0802CD32:
	cmp r0, #0x13
	bgt _0802CD86
	movs r2, #0x5a
	add r2, sp
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802CD44
	rsbs r0, r0, #0
_0802CD44:
	cmp r0, #0x13
	bgt _0802CD86
	ldrh r0, [r5, #0xa]
	cmp r0, #8
	beq _0802CD86
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x74]
	cmp r0, r1
	beq _0802CD86
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r1, [r0]
	movs r0, #0x6e
	subs r0, r0, r1
	ldr r2, [sp, #0x80]
	muls r0, r2, r0
	movs r1, #0x3c
	str r3, [sp, #0xb0]
	bl __divsi3
	strh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x28]
	adds r1, r1, r0
	strh r1, [r5, #0x28]
	movs r0, #7
	strh r0, [r5, #0xa]
	add r0, sp, #0x5c
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	ldr r1, [sp, #0x74]
	str r1, [r5, #0x30]
	ldr r3, [sp, #0xb0]
	strh r3, [r5, #0x36]
_0802CD86:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802CCF0
_0802CD90:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x98]
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802CDA2
_0802CD9C:
	ldr r5, [sp, #0x78]
	adds r5, #1
	str r5, [sp, #0x78]
_0802CDA2:
	ldr r0, [sp, #0x70]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r0, #2
	bhi _0802CDB2
	b _0802CB84
_0802CDB2:
	ldr r7, [sp, #0x78]
	cmp r7, #2
	bhi _0802CDEC
	bl WaitFrame
	b _0802CB7C
	.align 2, 0
_0802CDC0: .4byte 0x00100005
_0802CDC4: .4byte 0x00110005
_0802CDC8: .4byte 0x00130005
_0802CDCC: .4byte gPlayers
_0802CDD0: .4byte 0x080FB9FC
_0802CDD4: .4byte gPlayerStats
_0802CDD8: .4byte 0x0805289C
_0802CDDC: .4byte gUnknown_030063D8
_0802CDE0: .4byte 0x080FBB24
_0802CDE4: .4byte gActiveEnemyMask
_0802CDE8: .4byte gEnemies
_0802CDEC:
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x5c]
	cmp r0, r1
	bne _0802CE16
	bl sub_08007510
	cmp r0, #0
	bne _0802CE16
	bl sub_080076E0
	cmp r0, #0
	bne _0802CE16
	bl sub_08007604
	cmp r0, #0
	bne _0802CE16
	ldr r2, [sp, #0x64]
	ldrh r1, [r2, #0x10]
	ldr r0, _0802CE38 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x10]
_0802CE16:
	ldr r2, _0802CE3C @ =gUnknown_030067F0
	ldr r3, [sp, #0x94]
	adds r2, r3, r2
	movs r1, #1
	ldr r5, [sp, #0x60]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CE38: .4byte 0x0000FFFE
_0802CE3C: .4byte gUnknown_030067F0
