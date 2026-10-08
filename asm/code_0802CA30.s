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
	ldr r0, _0802CDDC @ =0x030063D8
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
_0802CDDC: .4byte 0x030063D8
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

	thumb_func_start sub_0802CE40
sub_0802CE40: @ 0x0802CE40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r7, #0
	ldr r1, _0802CEC8 @ =gUnknown_030067F0
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802CE6E
	movs r3, #1
_0802CE5C:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802CEBE
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802CE5C
_0802CE6E:
	cmp r7, #0xf
	bhi _0802CEBE
	ldr r5, _0802CECC @ =gUnknown_030067C0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802CED0 @ =sub_0802CA30
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl CreateThread
	ldr r0, _0802CEC8 @ =gUnknown_030067F0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802CEBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CEC8: .4byte gUnknown_030067F0
_0802CECC: .4byte gUnknown_030067C0
_0802CED0: .4byte sub_0802CA30

	thumb_func_start sub_0802CED4
sub_0802CED4: @ 0x0802CED4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	movs r0, #0xd4
	ldr r2, [sp, #0x48]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802CF94 @ =gPlayers
	adds r1, r1, r0
	mov r8, r1
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	ldr r1, _0802CF98 @ =0x00100001
	movs r3, #0x80
	lsls r3, r3, #0x18
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	mov r7, r8
	adds r7, #0xd0
	ldr r1, [r7]
	ldr r0, [r1, #4]
	lsls r0, r0, #9
	lsrs r6, r0, #0x18
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x54]
	ldrh r0, [r1, #6]
	lsrs r0, r0, #7
	str r0, [sp, #0x70]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x48]
	ldr r0, [sp, #0x7c]
	cmp r3, r0
	bne _0802CF46
	mov r1, r8
	ldr r0, [r1, #0x7c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	ldr r0, _0802CF9C @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	str r0, [sp, #0x60]
_0802CF46:
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	lsrs r2, r2, #0x10
	str r2, [sp, #0x4c]
	cmp r2, #0
	bne _0802CF5A
	movs r3, #1
	str r3, [sp, #0x4c]
_0802CF5A:
	ldr r1, _0802CFA0 @ =0x080548F8
	ldr r3, [sp, #0x4c]
	subs r3, #1
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x6c]
	movs r5, #0
	ldr r2, _0802CFA4 @ =gActiveEnemyMask
	movs r0, #1
	ldr r1, [r2]
	ands r1, r0
	str r7, [sp, #0x84]
	str r3, [sp, #0x88]
	adds r3, r2, #0
	ldr r7, _0802CFA8 @ =0x080FB9FC
	mov sb, r7
	ldr r0, _0802CFAC @ =0x0805289C
	mov sl, r0
	mov r7, r8
	adds r7, #0x72
	ldr r2, [sp, #0x48]
	lsls r2, r2, #2
	str r2, [sp, #0x8c]
	cmp r1, #0
	beq _0802CFB4
	ldr r0, _0802CFB0 @ =gEnemies
	ldr r4, [r0]
	b _0802CFD6
	.align 2, 0
_0802CF94: .4byte gPlayers
_0802CF98: .4byte 0x00100001
_0802CF9C: .4byte gPlayerStats
_0802CFA0: .4byte 0x080548F8
_0802CFA4: .4byte gActiveEnemyMask
_0802CFA8: .4byte 0x080FB9FC
_0802CFAC: .4byte 0x0805289C
_0802CFB0: .4byte gEnemies
_0802CFB4:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _0802CFE6
	movs r1, #1
	lsls r1, r5
	ldr r0, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0802CFB4
	ldr r2, _0802D10C @ =gEnemies
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
_0802CFD6:
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	beq _0802CFB4
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _0802CFB4
	cmp r5, #4
	bls _0802CFE8
_0802CFE6:
	movs r6, #0
_0802CFE8:
	ldr r3, [sp, #0x84]
	ldr r1, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0x64]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [sp, #0x68]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r0, r1, #0x10
	str r0, [sp, #0x74]
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	ldr r2, [sp, #0x64]
	adds r2, r2, r0
	str r2, [sp, #0x64]
	lsls r1, r1, #1
	add r1, sl
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x68]
	adds r1, r1, r0
	str r1, [sp, #0x68]
	cmp r6, #0
	beq _0802D0A6
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r2, sp, #0x44
	strh r0, [r2]
	ldr r1, [r4, #0x14]
	ldr r3, [sp, #0x68]
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x18
	adds r1, r5, #0
	cmp r1, #0x80
	ble _0802D078
	ldr r6, _0802D110 @ =0xFFFFFF00
	adds r0, r6, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802D078:
	str r5, [sp, #0x74]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D08E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
_0802D08E:
	ldr r2, [sp, #0x74]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802D0A6
	ldr r3, _0802D110 @ =0xFFFFFF00
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
_0802D0A6:
	mov r4, r8
	ldrh r0, [r4, #0xc]
	cmp r0, #0xa
	beq _0802D0CA
	ldr r6, [sp, #0x4c]
	cmp r6, #1
	beq _0802D0CA
	bl sub_08007544
	cmp r0, #0
	bne _0802D0CA
	bl sub_080075AC
	cmp r0, #0
	bne _0802D0CA
	movs r0, #0x18
	bl PlaySE
_0802D0CA:
	ldr r2, _0802D114 @ =0x08054904
	ldr r1, [sp, #0x88]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r7]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _0802D132
	ldr r0, _0802D118 @ =gUnknown_030067F0
	ldr r3, [sp, #0x8c]
	adds r4, r3, r0
	adds r6, r2, #0
	movs r0, #1
	ldr r1, [sp, #0x50]
	lsls r0, r1
	mvns r5, r0
_0802D0EA:
	mov r2, r8
	ldrh r0, [r2, #0xc]
	cmp r0, #7
	beq _0802D102
	ldr r0, _0802D11C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D120
_0802D102:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802D478
	.align 2, 0
_0802D10C: .4byte gEnemies
_0802D110: .4byte 0xFFFFFF00
_0802D114: .4byte 0x08054904
_0802D118: .4byte gUnknown_030067F0
_0802D11C: .4byte 0x030063D8
_0802D120:
	bl WaitFrame
	ldr r3, [sp, #0x88]
	lsls r0, r3, #1
	adds r0, r0, r6
	ldrh r1, [r7]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0802D0EA
_0802D132:
	ldr r4, [sp, #0x4c]
	cmp r4, #1
	bne _0802D140
	ldr r6, [sp, #0x70]
	lsls r0, r6, #2
	adds r0, #0xa
	b _0802D148
_0802D140:
	ldr r7, [sp, #0x70]
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, #0xd
_0802D148:
	str r0, [sp, #0x70]
	mov r1, r8
	ldrh r0, [r1, #0xc]
	cmp r0, #0xa
	beq _0802D16E
	ldr r2, [sp, #0x4c]
	cmp r2, #1
	bne _0802D16E
	bl sub_08007544
	cmp r0, #0
	bne _0802D16E
	bl sub_080075AC
	cmp r0, #0
	bne _0802D16E
	movs r0, #0x17
	bl PlaySE
_0802D16E:
	ldr r3, [sp, #0x84]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x78]
	add r4, sp, #0x44
	mov sl, r4
	mov r6, sp
	adds r6, #0x46
	str r6, [sp, #0x80]
	b _0802D436
_0802D184:
	movs r6, #0
	movs r5, #0
_0802D188:
	ldr r0, _0802D22C @ =gActiveEnemyMask
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0]
	ands r0, r1
	adds r7, r5, #1
	mov sb, r7
	cmp r0, #0
	bne _0802D19C
	b _0802D328
_0802D19C:
	ldr r2, _0802D230 @ =gEnemies
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	ldrh r2, [r7, #0xa]
	cmp r2, #9
	bne _0802D1B0
	b _0802D328
_0802D1B0:
	ldr r0, [r7, #0x10]
	ldr r1, [sp, #0x64]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	mov r3, sl
	strh r0, [r3]
	ldr r0, [r7, #0x14]
	ldr r4, [sp, #0x68]
	subs r0, r0, r4
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x80]
	strh r0, [r1]
	movs r4, #0
	ldrsh r1, [r3, r4]
	cmp r1, #0
	bge _0802D1D4
	rsbs r1, r1, #0
_0802D1D4:
	cmp r1, #0xf
	ble _0802D1DA
	b _0802D328
_0802D1DA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D1E4
	rsbs r0, r0, #0
_0802D1E4:
	cmp r0, #0xf
	ble _0802D1EA
	b _0802D328
_0802D1EA:
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	beq _0802D1F4
	b _0802D328
_0802D1F4:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802D208
	ldr r0, _0802D234 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _0802D238
_0802D208:
	movs r4, #0
	cmp r2, #8
	beq _0802D24E
	ldr r0, [r7, #0x30]
	ldr r2, [sp, #0x58]
	cmp r0, r2
	beq _0802D24E
	ldrh r3, [r7, #0x38]
	ldrh r2, [r7, #0x28]
	subs r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0802D24E
	adds r1, r3, #0
	eors r1, r2
	b _0802D248
	.align 2, 0
_0802D22C: .4byte gActiveEnemyMask
_0802D230: .4byte gEnemies
_0802D234: .4byte gMapLayer_03003910
_0802D238:
	movs r4, #0
	cmp r2, #0
	beq _0802D24E
	cmp r2, #8
	beq _0802D24E
	ldr r1, [r7, #0x30]
	ldr r3, [sp, #0x58]
	eors r1, r3
_0802D248:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
_0802D24E:
	adds r5, #1
	mov sb, r5
	cmp r4, #0
	beq _0802D328
	ldr r4, _0802D2F0 @ =gPlayerStats
	movs r6, #0x26
	ldrsh r0, [r4, r6]
	adds r1, r7, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	bl sub_0801841C
	cmp r0, #0
	beq _0802D304
	mov r0, r8
	ldrh r2, [r0, #0xc]
	add r1, sp, #0x54
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrh r6, [r0, #0x14]
	add r3, sp, #0x5c
	ldrh r3, [r3]
	strh r3, [r0, #0x14]
	adds r4, #0x6c
	ldrh r5, [r4]
	add r0, sp, #0x60
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, r8
	adds r1, r7, #0
	str r2, [sp, #0x90]
	bl sub_08017150
	strh r0, [r7, #0x2a]
	strh r5, [r4]
	ldr r2, [sp, #0x90]
	mov r1, r8
	strh r2, [r1, #0xc]
	strh r6, [r1, #0x14]
	ldrh r0, [r7, #0x2a]
	ldrh r2, [r7, #0x28]
	adds r0, r0, r2
	strh r0, [r7, #0x28]
	ldr r3, [sp, #0x58]
	str r3, [r7, #0x30]
	movs r0, #7
	strh r0, [r7, #0xa]
	add r4, sp, #0x7c
	ldrh r4, [r4]
	strh r4, [r7, #0x34]
	movs r0, #1
	strh r0, [r7, #0x36]
	movs r4, #0
	mov r6, r8
	adds r6, #0xa2
	mov r0, r8
	adds r0, #0xc8
	ldr r5, [r0]
	ldr r2, _0802D2F4 @ =0x0000FFFF
_0802D2C4:
	ldrh r0, [r6]
	adds r0, r0, r4
	movs r1, #5
	str r2, [sp, #0x90]
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x94
	muls r0, r1, r0
	adds r1, r0, r5
	ldrh r0, [r1]
	ldr r2, [sp, #0x90]
	cmp r0, r2
	beq _0802D2F8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802D2C4
	b _0802D326
	.align 2, 0
_0802D2F0: .4byte gPlayerStats
_0802D2F4: .4byte 0x0000FFFF
_0802D2F8:
	adds r0, r1, #0
	adds r1, r7, #0
	movs r2, #0x94
	bl memcpy
	b _0802D326
_0802D304:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	bl sub_08018474
	ldr r6, [sp, #0x58]
	str r6, [r7, #0x30]
	bl sub_08007544
	cmp r0, #0
	bne _0802D326
	bl sub_080075AC
	cmp r0, #0
	bne _0802D326
	movs r0, #0x55
	bl PlaySE
_0802D326:
	movs r6, #1
_0802D328:
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _0802D334
	b _0802D188
_0802D334:
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	beq _0802D340
	ldr r1, [sp, #0x54]
	cmp r1, #5
	beq _0802D346
_0802D340:
	cmp r6, #0
	beq _0802D346
	b _0802D466
_0802D346:
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802D366
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802D366
	b _0802D466
_0802D366:
	ldr r2, _0802D488 @ =0x0805289C
	ldr r3, [sp, #0x74]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r6, [sp, #0x6c]
	muls r0, r6, r0
	ldr r7, [sp, #0x64]
	adds r7, r7, r0
	str r7, [sp, #0x64]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r6, r0
	ldr r3, [sp, #0x68]
	adds r3, r3, r0
	str r3, [sp, #0x68]
	ldr r0, _0802D48C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802D432
	bl sub_08007510
	cmp r0, #0
	bne _0802D432
	bl sub_08007604
	cmp r0, #0
	bne _0802D432
	bl sub_08007544
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D432
	asrs r5, r7, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r6, [sp, #0x68]
	asrs r4, r6, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, sl
	ldr r3, [sp, #0x80]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	ldr r5, [sp, #0x78]
	mov r7, sl
	movs r1, #0
	ldrsh r4, [r7, r1]
	ldr r2, _0802D490 @ =0x080FBB24
	lsls r3, r5, #2
	adds r1, r3, r2
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r4, r4, r1
	ldr r7, [sp, #0x80]
	movs r6, #0
	ldrsh r1, [r7, r6]
	adds r2, #2
	adds r3, r3, r2
	movs r7, #0
	ldrsh r2, [r3, r7]
	adds r1, r1, r2
	ldr r3, _0802D494 @ =0x08054900
	ldr r6, [sp, #0x88]
	lsls r2, r6, #1
	adds r2, r2, r3
	ldrh r2, [r2]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08004344
_0802D432:
	bl WaitFrame
_0802D436:
	ldr r0, [sp, #0x70]
	adds r7, r0, #0
	subs r7, #1
	str r7, [sp, #0x70]
	cmp r0, #0
	beq _0802D466
	bl GetMultiplayerId
	ldr r1, [sp, #0x48]
	cmp r1, r0
	beq _0802D44E
	b _0802D184
_0802D44E:
	mov r2, r8
	ldrh r0, [r2, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802D466
	bl sub_080077C0
	cmp r0, #0
	bne _0802D466
	b _0802D184
_0802D466:
	ldr r2, _0802D498 @ =gUnknown_030067F0
	ldr r3, [sp, #0x8c]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x50]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802D478:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D488: .4byte 0x0805289C
_0802D48C: .4byte 0x030063D8
_0802D490: .4byte 0x080FBB24
_0802D494: .4byte 0x08054900
_0802D498: .4byte gUnknown_030067F0

	thumb_func_start sub_0802D49C
sub_0802D49C: @ 0x0802D49C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	movs r7, #0
	ldr r1, _0802D52C @ =gUnknown_030067F0
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802D4CE
	movs r3, #1
_0802D4BC:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802D520
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802D4BC
_0802D4CE:
	cmp r7, #0xf
	bhi _0802D520
	ldr r5, _0802D530 @ =gUnknown_030067C0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802D534 @ =sub_0802CED4
	str r1, [r4, #0xc]
	ldr r1, _0802D538 @ =0x000007FC
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	mov r0, sb
	lsls r2, r0, #0x10
	orrs r2, r7
	adds r0, r4, #0
	mov r1, r8
	bl CreateThread
	ldr r0, _0802D52C @ =gUnknown_030067F0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802D520:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D52C: .4byte gUnknown_030067F0
_0802D530: .4byte gUnknown_030067C0
_0802D534: .4byte sub_0802CED4
_0802D538: .4byte 0x000007FC

	thumb_func_start sub_0802D53C
sub_0802D53C: @ 0x0802D53C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	str r0, [sp, #0x48]
	adds r6, r1, #0
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	ldr r2, _0802D5A4 @ =gEnemies
	movs r0, #0x94
	ldr r3, [sp, #0x48]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	adds r4, r7, #0
	adds r4, #0x8c
	ldr r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x18
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	ldr r0, [r4]
	adds r1, r7, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	bl sub_0800EA00
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r4, #1
	str r4, [sp, #0x54]
	add r1, sp, #0x10
	adds r0, r2, #5
	strb r0, [r1, #0x1c]
	movs r0, #0xf
	adds r1, r6, #0
	ands r1, r0
	str r1, [sp, #0x50]
	lsrs r6, r6, #0x10
	cmp r6, #3
	bls _0802D5A8
	movs r0, #0xa
	b _0802D5B6
	.align 2, 0
_0802D5A4: .4byte gEnemies
_0802D5A8:
	movs r0, #0xd4
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0802D66C @ =gPlayers
	adds r5, r1, r0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
_0802D5B6:
	ldr r2, [r7, #0x10]
	mov sl, r2
	ldr r3, [r7, #0x14]
	mov sb, r3
	cmp r0, #3
	bhi _0802D678
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r2, sp, #0x44
	strh r0, [r2]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r1, r2, #0
	cmp r1, #0x80
	ble _0802D608
	ldr r5, _0802D670 @ =0xFFFFFF00
	adds r0, r5, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802D608:
	str r2, [sp, #0x58]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D61E
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D61E:
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802D636
	ldr r2, _0802D670 @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D636:
	ldr r3, [sp, #0x58]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	ldr r2, _0802D674 @ =0x080FB9FC
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0802D65A
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802D65A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D664
	rsbs r0, r0, #0
_0802D664:
	cmp r0, #3
	ble _0802D68A
	lsls r0, r1, #0x14
	b _0802D686
	.align 2, 0
_0802D66C: .4byte gPlayers
_0802D670: .4byte 0xFFFFFF00
_0802D674: .4byte 0x080FB9FC
_0802D678:
	ldr r0, _0802D6CC @ =0x080FB9FC
	movs r5, #8
	ldrsh r1, [r7, r5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x14
_0802D686:
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D68A:
	adds r0, r7, #0
	adds r0, #0x4a
	ldr r1, _0802D6D0 @ =0x08054904
	ldrh r2, [r0]
	ldrh r1, [r1, #2]
	mov r8, r0
	ldr r6, [sp, #0x48]
	lsls r6, r6, #2
	str r6, [sp, #0x68]
	cmp r2, r1
	bhs _0802D6E8
	ldr r0, _0802D6D4 @ =gUnknown_030067A0
	adds r4, r6, r0
	adds r6, r1, #0
	movs r0, #1
	ldr r1, [sp, #0x50]
	lsls r0, r1
	mvns r5, r0
_0802D6AE:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	beq _0802D6C4
	ldr r0, _0802D6D8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D6DC
_0802D6C4:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802D966
	.align 2, 0
_0802D6CC: .4byte 0x080FB9FC
_0802D6D0: .4byte 0x08054904
_0802D6D4: .4byte gUnknown_030067A0
_0802D6D8: .4byte 0x030063D8
_0802D6DC:
	bl WaitFrame
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, r6
	blo _0802D6AE
_0802D6E8:
	ldr r3, [sp, #0x54]
	lsls r0, r3, #3
	adds r0, #0xa
	str r0, [sp, #0x54]
	bl sub_080075AC
	cmp r0, #0
	bne _0802D70E
	bl sub_08007544
	cmp r0, #0
	bne _0802D70E
	bl sub_08007604
	cmp r0, #0
	bne _0802D70E
	movs r0, #0x17
	bl PlaySE
_0802D70E:
	ldr r0, [sp, #0x54]
	adds r4, r0, #0
	subs r4, #1
	str r4, [sp, #0x54]
	cmp r0, #0
	bne _0802D71C
	b _0802D954
_0802D71C:
	add r5, sp, #0x44
	mov r8, r5
	mov r6, sp
	adds r6, #0x46
	str r6, [sp, #0x64]
_0802D726:
	movs r0, #0
	str r0, [sp, #0x5c]
	movs r6, #0
	b _0802D82A
_0802D72E:
	ldr r3, _0802D7F8 @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov r4, sl
	subs r0, r0, r4
	lsrs r0, r0, #0xc
	mov r5, r8
	strh r0, [r5]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	ldr r4, [sp, #0x64]
	strh r0, [r4]
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _0802D76A
	rsbs r1, r1, #0
_0802D76A:
	cmp r1, #7
	bgt _0802D824
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D778
	rsbs r0, r0, #0
_0802D778:
	cmp r0, #7
	bgt _0802D824
	ldr r5, [sp, #0x60]
	cmp r5, r6
	bne _0802D824
	adds r5, r2, r3
	ldrh r1, [r5, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D824
	ldrh r2, [r5, #0xc]
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802D824
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r4, r5, #0
	adds r4, #0x80
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802D824
	cmp r2, #9
	beq _0802D824
	bl sub_08007544
	cmp r0, #0
	bne _0802D824
	bl sub_080077C0
	cmp r0, #0
	bne _0802D824
	ldr r0, [sp, #0x4c]
	adds r0, #0x6a
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	bl sub_0801841C
	cmp r0, #0
	beq _0802D7FC
	adds r0, r7, #0
	adds r1, r5, #0
	bl CalcDamageToPlayer
	adds r1, r5, #0
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r5, #0xc]
	movs r4, #1
	str r4, [sp, #0x5c]
	b _0802D824
	.align 2, 0
_0802D7F8: .4byte gPlayers
_0802D7FC:
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	str r1, [r0]
	bl sub_080075AC
	cmp r0, #0
	bne _0802D824
	bl sub_08007544
	cmp r0, #0
	bne _0802D824
	bl sub_08007604
	cmp r0, #0
	bne _0802D824
	movs r0, #0x55
	bl PlaySE
_0802D824:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802D82A:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802D83C
	bl sub_08007670
	cmp r0, #0
	bne _0802D83C
	b _0802D72E
_0802D83C:
	ldr r5, [sp, #0x5c]
	cmp r5, #0
	beq _0802D844
	b _0802D954
_0802D844:
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _0802D862
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0802D954
_0802D862:
	ldr r2, _0802D978 @ =0x0805289C
	ldr r0, [sp, #0x58]
	lsls r6, r0, #0x10
	asrs r1, r6, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r4, #0x3c
	muls r0, r4, r0
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r4, r0
	add sb, r0
	ldr r0, _0802D97C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802D922
	bl sub_08007510
	cmp r0, #0
	bne _0802D922
	bl sub_08007604
	cmp r0, #0
	bne _0802D922
	bl sub_08007544
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D922
	mov r0, sl
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, r8
	ldr r3, [sp, #0x64]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	ldr r2, _0802D980 @ =0x08054908
	asrs r1, r6, #0x14
	adds r1, r1, r2
	mov r2, r8
	movs r3, #0
	ldrsh r5, [r2, r3]
	ldr r4, _0802D984 @ =0x080FBB24
	ldrb r2, [r1]
	lsls r3, r2, #2
	adds r1, r3, r4
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r5, r5, r1
	mov ip, r5
	ldr r5, [sp, #0x64]
	movs r6, #0
	ldrsh r1, [r5, r6]
	adds r4, #2
	adds r3, r3, r4
	movs r4, #0
	ldrsh r3, [r3, r4]
	adds r1, r1, r3
	adds r2, #0x21
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, ip
	movs r3, #0
	bl sub_08004344
_0802D922:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _0802D954
	ldr r0, _0802D97C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802D954
	bl sub_08007578
	cmp r0, #0
	bne _0802D954
	ldr r0, [sp, #0x54]
	adds r5, r0, #0
	subs r5, #1
	str r5, [sp, #0x54]
	cmp r0, #0
	beq _0802D954
	b _0802D726
_0802D954:
	ldr r2, _0802D988 @ =gUnknown_030067A0
	ldr r6, [sp, #0x68]
	adds r2, r6, r2
	movs r1, #1
	ldr r0, [sp, #0x50]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802D966:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D978: .4byte 0x0805289C
_0802D97C: .4byte 0x030063D8
_0802D980: .4byte 0x08054908
_0802D984: .4byte 0x080FBB24
_0802D988: .4byte gUnknown_030067A0

	thumb_func_start sub_0802D98C
sub_0802D98C: @ 0x0802D98C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	movs r7, #0
	ldr r1, _0802DA20 @ =gUnknown_030067A0
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802D9BE
	movs r3, #1
_0802D9AC:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802DA12
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802D9AC
_0802D9BE:
	cmp r7, #0xf
	bhi _0802DA12
	ldr r5, _0802DA24 @ =gUnknown_030067D0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802DA28 @ =sub_0802D53C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	mov r0, sb
	lsls r2, r0, #0x10
	orrs r2, r7
	adds r0, r4, #0
	mov r1, r8
	bl CreateThread
	ldr r0, _0802DA20 @ =gUnknown_030067A0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802DA12:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DA20: .4byte gUnknown_030067A0
_0802DA24: .4byte gUnknown_030067D0
_0802DA28: .4byte sub_0802D53C

	thumb_func_start sub_0802DA2C
sub_0802DA2C: @ 0x0802DA2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldr r1, _0802DA64 @ =0x080FBB84
	lsls r0, r2, #4
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r0, r6]
	mov sb, r1
	adds r3, #0x88
	ldrh r0, [r3]
	subs r0, #2
	cmp r0, #0x23
	bhi _0802DB12
	lsls r0, r0, #2
	ldr r1, _0802DA68 @ =_0802DA6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DA64: .4byte 0x080FBB84
_0802DA68: .4byte _0802DA6C
_0802DA6C: @ jump table
	.4byte _0802DAFC @ case 0
	.4byte _0802DB00 @ case 1
	.4byte _0802DB04 @ case 2
	.4byte _0802DB08 @ case 3
	.4byte _0802DB0C @ case 4
	.4byte _0802DB10 @ case 5
	.4byte _0802DAFC @ case 6
	.4byte _0802DB00 @ case 7
	.4byte _0802DB04 @ case 8
	.4byte _0802DB08 @ case 9
	.4byte _0802DB0C @ case 10
	.4byte _0802DB10 @ case 11
	.4byte _0802DAFC @ case 12
	.4byte _0802DB00 @ case 13
	.4byte _0802DB04 @ case 14
	.4byte _0802DB08 @ case 15
	.4byte _0802DB0C @ case 16
	.4byte _0802DB10 @ case 17
	.4byte _0802DAFC @ case 18
	.4byte _0802DB00 @ case 19
	.4byte _0802DB04 @ case 20
	.4byte _0802DB08 @ case 21
	.4byte _0802DB0C @ case 22
	.4byte _0802DB10 @ case 23
	.4byte _0802DAFC @ case 24
	.4byte _0802DB00 @ case 25
	.4byte _0802DB04 @ case 26
	.4byte _0802DB08 @ case 27
	.4byte _0802DB0C @ case 28
	.4byte _0802DB10 @ case 29
	.4byte _0802DAFC @ case 30
	.4byte _0802DB00 @ case 31
	.4byte _0802DB04 @ case 32
	.4byte _0802DB08 @ case 33
	.4byte _0802DB0C @ case 34
	.4byte _0802DB10 @ case 35
_0802DAFC:
	movs r4, #0
	b _0802DB12
_0802DB00:
	movs r4, #1
	b _0802DB12
_0802DB04:
	movs r4, #2
	b _0802DB12
_0802DB08:
	movs r4, #3
	b _0802DB12
_0802DB0C:
	movs r4, #4
	b _0802DB12
_0802DB10:
	movs r4, #5
_0802DB12:
	lsls r6, r2, #4
	adds r0, r4, #1
	mov r8, r0
	cmp r2, #1
	bne _0802DB8A
	lsls r1, r4, #2
	adds r1, r1, r4
	movs r2, #0x38
	ldrsh r0, [r5, r2]
	subs r0, #0x46
	subs r4, r1, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DB40
	rsbs r0, r0, #0
_0802DB40:
	cmp r4, r0
	bls _0802DB8A
	movs r4, #0
_0802DB46:
	ldr r0, [r5, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802DB56
	cmp r0, #4
	bne _0802DB84
_0802DB56:
	movs r0, #4
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x24
	adds r1, r1, r2
	ldrh r2, [r5, #0x38]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r2
	strh r0, [r1]
	movs r4, #3
	bl sub_080075AC
	cmp r0, #0
	bne _0802DB84
	bl sub_08007544
	cmp r0, #0
	bne _0802DB84
	movs r0, #0x29
	bl PlaySE
_0802DB84:
	adds r4, #1
	cmp r4, #2
	bls _0802DB46
_0802DB8A:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DB98
	rsbs r0, r0, #0
_0802DB98:
	movs r1, #0x32
	bl __umodsi3
	adds r0, #0x64
	mov r1, r8
	mov r2, sb
	muls r2, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	add r1, sl
	muls r1, r2, r1
	muls r0, r1, r0
	ldr r1, _0802DBCC @ =0x0001D4C0
	bl __udivsi3
	adds r3, r0, #0
	ldr r1, _0802DBD0 @ =0x080FBB84
	adds r0, r6, r1
	ldrh r2, [r0, #2]
	cmp r2, #2
	beq _0802DBE0
	cmp r2, #2
	bgt _0802DBD4
	cmp r2, #1
	beq _0802DBDA
	b _0802DBEA
	.align 2, 0
_0802DBCC: .4byte 0x0001D4C0
_0802DBD0: .4byte 0x080FBB84
_0802DBD4:
	cmp r2, #3
	beq _0802DBE6
	b _0802DBEA
_0802DBDA:
	movs r2, #0x36
	ldrsh r7, [r5, r2]
	b _0802DBEA
_0802DBE0:
	movs r0, #0x38
	ldrsh r7, [r5, r0]
	b _0802DBEA
_0802DBE6:
	movs r2, #0x3a
	ldrsh r7, [r5, r2]
_0802DBEA:
	adds r0, r6, r1
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0802DC00
	movs r0, #0x6e
	subs r0, r0, r7
	muls r0, r3, r0
	movs r1, #0x3c
	bl __udivsi3
	adds r3, r0, #0
_0802DC00:
	cmp r3, #0
	bne _0802DC06
	movs r3, #1
_0802DC06:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802DC18
sub_0802DC18: @ 0x0802DC18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	ldr r2, _0802DC68 @ =gEnemies
	movs r0, #0x94
	ldr r3, [sp, #0x5c]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov sb, r0
	ldr r5, [sp, #0x60]
	lsrs r5, r5, #0x10
	mov r8, r5
	movs r0, #0xff
	ldr r6, [sp, #0x60]
	ands r6, r0
	str r6, [sp, #0x60]
	mov r0, sb
	adds r0, #0x88
	ldrh r0, [r0]
	subs r0, #2
	cmp r0, #0x17
	bhi _0802DCF2
	lsls r0, r0, #2
	ldr r1, _0802DC6C @ =_0802DC70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DC68: .4byte gEnemies
_0802DC6C: .4byte _0802DC70
_0802DC70: @ jump table
	.4byte _0802DCD0 @ case 0
	.4byte _0802DCD6 @ case 1
	.4byte _0802DCDC @ case 2
	.4byte _0802DCE2 @ case 3
	.4byte _0802DCE8 @ case 4
	.4byte _0802DCEE @ case 5
	.4byte _0802DCF2 @ case 6
	.4byte _0802DCF2 @ case 7
	.4byte _0802DCF2 @ case 8
	.4byte _0802DCF2 @ case 9
	.4byte _0802DCF2 @ case 10
	.4byte _0802DCF2 @ case 11
	.4byte _0802DCF2 @ case 12
	.4byte _0802DCF2 @ case 13
	.4byte _0802DCF2 @ case 14
	.4byte _0802DCF2 @ case 15
	.4byte _0802DCF2 @ case 16
	.4byte _0802DCF2 @ case 17
	.4byte _0802DCD0 @ case 18
	.4byte _0802DCD6 @ case 19
	.4byte _0802DCDC @ case 20
	.4byte _0802DCE2 @ case 21
	.4byte _0802DCE8 @ case 22
	.4byte _0802DCEE @ case 23
_0802DCD0:
	movs r0, #0
	str r0, [sp, #0x6c]
	b _0802DCF2
_0802DCD6:
	movs r1, #1
	str r1, [sp, #0x6c]
	b _0802DCF2
_0802DCDC:
	movs r2, #2
	str r2, [sp, #0x6c]
	b _0802DCF2
_0802DCE2:
	movs r3, #3
	str r3, [sp, #0x6c]
	b _0802DCF2
_0802DCE8:
	movs r5, #4
	str r5, [sp, #0x6c]
	b _0802DCF2
_0802DCEE:
	movs r6, #5
	str r6, [sp, #0x6c]
_0802DCF2:
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x64]
	add r6, sp, #0x58
	movs r4, #0
	strh r4, [r6]
	mov r5, sp
	adds r5, #0x5a
	strh r4, [r5]
	mov r1, sb
	ldr r1, [r1, #0x10]
	str r1, [sp, #0x70]
	mov r2, sb
	ldr r2, [r2, #0x14]
	str r2, [sp, #0x74]
	ldr r1, _0802DDF8 @ =0x00100006
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r0, #8
	strb r0, [r1]
	strh r4, [r6]
	strh r4, [r5]
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	strh r4, [r6]
	strh r4, [r5]
	ldr r1, _0802DDFC @ =0x080FB9FC
	mov r3, sb
	movs r2, #8
	ldrsh r0, [r3, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r2, r2, #0x14
	ldr r3, [sp, #0x64]
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	str r3, [sp, #0x64]
	ldr r3, [sp, #0x6c]
	lsls r1, r3, #0x13
	lsrs r1, r1, #0x10
	str r1, [sp, #0x68]
	lsrs r0, r0, #0x11
	str r0, [sp, #0x7c]
	ldr r3, _0802DE00 @ =0x0805289C
	lsrs r0, r2, #0x10
	mov sl, r0
	asrs r7, r2, #0x10
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x70]
	adds r1, r1, r0
	str r1, [sp, #0x70]
	lsls r0, r7, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0x74]
	adds r3, r3, r0
	str r3, [sp, #0x74]
	mov r5, r8
	cmp r5, #2
	bls _0802DDA2
	b _0802DECE
_0802DDA2:
	ldr r1, _0802DE04 @ =gPlayers
	movs r0, #0xd4
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r2, [sp, #0x70]
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r4, sp, #0x54
	strh r0, [r4]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x56
	strh r1, [r5]
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	subs r1, r3, r7
	cmp r1, #0x80
	ble _0802DE0C
	ldr r6, _0802DE08 @ =0xFFFFFF00
	adds r0, r6, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0802DE1E
	.align 2, 0
_0802DDF8: .4byte 0x00100006
_0802DDFC: .4byte 0x080FB9FC
_0802DE00: .4byte 0x0805289C
_0802DE04: .4byte gPlayers
_0802DE08: .4byte 0xFFFFFF00
_0802DE0C:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802DE1E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	adds r2, r0, #0
	orrs r2, r3
_0802DE1E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802DE30
	adds r0, #7
_0802DE30:
	asrs r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov sl, r3
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DE4C
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802DE4C:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802DE64
	ldr r2, _0802DEB0 @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802DE64:
	movs r0, #0xff
	mov r3, sl
	ands r3, r0
	lsrs r1, r3, #4
	ldr r2, _0802DEB4 @ =0x080FB9FC
	mov r6, sb
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r3, [r0]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #8
	ble _0802DE8C
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802DE8C:
	ldr r0, _0802DEB8 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #7
	beq _0802DEBC
	mov r0, sb
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _0802DEBC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DEAA
	rsbs r0, r0, #0
_0802DEAA:
	lsls r0, r3, #0x14
	b _0802DED4
	.align 2, 0
_0802DEB0: .4byte 0xFFFFFF00
_0802DEB4: .4byte 0x080FB9FC
_0802DEB8: .4byte gMapLayer_03003910
_0802DEBC:
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	b _0802DED6
_0802DECE:
	mov r0, r8
	subs r0, #4
	lsls r0, r0, #0x10
_0802DED4:
	lsrs r0, r0, #0x10
_0802DED6:
	mov sl, r0
	mov r6, sb
	ldrh r6, [r6, #8]
	str r6, [sp, #0x78]
	mov r0, sb
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r0, [sp, #0x5c]
	lsls r0, r0, #2
	str r0, [sp, #0x90]
	cmp r1, #0
	bne _0802DF2C
_0802DEF0:
	bl sub_08007750
	cmp r0, #0
	bne _0802DF2C
	bl sub_080074CC
	cmp r0, #0
	bne _0802DF2C
	ldr r0, _0802DF6C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802DF2C
	bl sub_08007578
	cmp r0, #0
	bne _0802DF2C
	mov r1, sb
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bne _0802DF22
	b _0802E1EA
_0802DF22:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802DEF0
_0802DF2C:
	bl sub_080075AC
	cmp r0, #0
	bne _0802DF42
	bl sub_08007544
	cmp r0, #0
	bne _0802DF42
	movs r0, #0x28
	bl PlaySE
_0802DF42:
	ldr r1, [sp, #0x64]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	cmp r1, #0
	bne _0802DF52
	b _0802E1EA
_0802DF52:
	mov r2, sp
	adds r2, #0x54
	str r2, [sp, #0x8c]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x84]
	lsls r0, r0, #1
	ldr r5, _0802DF70 @ =0x0805289C
	adds r0, r0, r5
	str r0, [sp, #0x88]
_0802DF68:
	movs r6, #0
	b _0802E042
	.align 2, 0
_0802DF6C: .4byte 0x030063D8
_0802DF70: .4byte 0x0805289C
_0802DF74:
	mov r0, sb
	ldrh r1, [r0, #0x26]
	ldr r4, _0802E0BC @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r3, [r0]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0802E03C
	ldrh r0, [r3]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r1, [sp, #0x70]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	ldr r5, [sp, #0x8c]
	strh r0, [r5]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	ldr r1, [sp, #0x74]
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x56
	strh r1, [r0]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0802DFC0
	rsbs r0, r0, #0
_0802DFC0:
	cmp r0, #7
	bgt _0802E03C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DFCE
	rsbs r0, r0, #0
_0802DFCE:
	cmp r0, #7
	bgt _0802E03C
	ldr r5, [sp, #0x80]
	cmp r5, r6
	bne _0802E03C
	adds r4, r2, r4
	ldrh r2, [r4, #0xc]
	adds r0, r2, #0
	cmp r0, #8
	beq _0802E03C
	cmp r0, #9
	beq _0802E03C
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802E03C
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802E03C
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r5, r0
	ldr r1, [r1, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802E03C
	bl sub_08007544
	cmp r0, #0
	bne _0802E03C
	movs r0, #0
	ldr r1, [sp, #0x6c]
	adds r2, r4, #0
	mov r3, sb
	bl sub_0802DA2C
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, sb
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r4, #0xc]
_0802E03C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802E042:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802E05A
	bl sub_080077C0
	cmp r0, #0
	bne _0802E03C
	bl sub_08007670
	cmp r0, #0
	beq _0802DF74
_0802E05A:
	ldr r5, [sp, #0x64]
	ldr r6, [sp, #0x7c]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802E07E
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802E07E
	b _0802E1EA
_0802E07E:
	bl sub_080076A8
	cmp r0, #0
	beq _0802E0C4
	ldr r0, [sp, #0x84]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802E0C0 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x70]
	adds r3, r3, r0
	str r3, [sp, #0x70]
	ldr r5, [sp, #0x88]
	movs r6, #0
	ldrsh r1, [r5, r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x74]
	adds r1, r1, r0
	str r1, [sp, #0x74]
	mov r2, sl
	lsls r2, r2, #0x10
	mov r8, r2
	b _0802E0F6
	.align 2, 0
_0802E0BC: .4byte gPlayers
_0802E0C0: .4byte 0x0805289C
_0802E0C4:
	ldr r0, [sp, #0x84]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _0802E20C @ =0x0805289C
	adds r0, r0, r3
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r6, [sp, #0x70]
	adds r6, r6, r0
	str r6, [sp, #0x70]
	ldr r0, [sp, #0x88]
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x74]
	adds r3, r3, r0
	str r3, [sp, #0x74]
	mov r5, sl
	lsls r5, r5, #0x10
	mov r8, r5
_0802E0F6:
	ldr r6, [sp, #0x70]
	asrs r5, r6, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x74]
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x54
	mov r7, sp
	adds r7, #0x56
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x78]
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r4, #0
	add r2, sp, #0x58
	mov r3, sp
	adds r3, #0x5a
	bl sub_08026C40
	ldr r0, _0802E210 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802E1AE
	bl sub_08007510
	cmp r0, #0
	bne _0802E1AE
	bl sub_08007604
	cmp r0, #0
	bne _0802E1AE
	bl sub_08007544
	cmp r0, #0
	bne _0802E1AE
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, _0802E214 @ =0x080FB720
	mov r3, r8
	asrs r1, r3, #0x14
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r6, _0802E218 @ =0x080FBB24
	adds r1, r2, r6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r7, r6]
	ldr r3, _0802E21C @ =0x080FBB26
	adds r2, r2, r3
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	add r2, sp, #0x58
	ldrh r3, [r2]
	str r5, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802E1AE:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0802E1EA
	bl sub_080074CC
	cmp r0, #0
	bne _0802E1EA
	ldr r0, _0802E210 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E1EA
	bl sub_08007578
	cmp r0, #0
	bne _0802E1EA
	ldr r1, [sp, #0x64]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	cmp r1, #0
	beq _0802E1EA
	b _0802DF68
_0802E1EA:
	ldr r2, _0802E220 @ =gUnknown_030067A0
	ldr r3, [sp, #0x90]
	adds r2, r3, r2
	movs r1, #1
	ldr r5, [sp, #0x60]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E20C: .4byte 0x0805289C
_0802E210: .4byte 0x030063D8
_0802E214: .4byte 0x080FB720
_0802E218: .4byte 0x080FBB24
_0802E21C: .4byte 0x080FBB26
_0802E220: .4byte gUnknown_030067A0

	thumb_func_start sub_0802E224
sub_0802E224: @ 0x0802E224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	mov sb, r0
	str r1, [sp, #0x28]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r2, _0802E270 @ =gEnemies
	movs r0, #0x94
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [sp, #0x28]
	lsrs r7, r0, #0x10
	movs r0, #0xff
	ldr r1, [sp, #0x28]
	ands r1, r0
	str r1, [sp, #0x28]
	mov r0, r8
	adds r0, #0x88
	ldrh r0, [r0]
	subs r0, #8
	cmp r0, #0x17
	bhi _0802E2FA
	lsls r0, r0, #2
	ldr r1, _0802E274 @ =_0802E278
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802E270: .4byte gEnemies
_0802E274: .4byte _0802E278
_0802E278: @ jump table
	.4byte _0802E2D8 @ case 0
	.4byte _0802E2DE @ case 1
	.4byte _0802E2E4 @ case 2
	.4byte _0802E2EA @ case 3
	.4byte _0802E2F0 @ case 4
	.4byte _0802E2F6 @ case 5
	.4byte _0802E2FA @ case 6
	.4byte _0802E2FA @ case 7
	.4byte _0802E2FA @ case 8
	.4byte _0802E2FA @ case 9
	.4byte _0802E2FA @ case 10
	.4byte _0802E2FA @ case 11
	.4byte _0802E2FA @ case 12
	.4byte _0802E2FA @ case 13
	.4byte _0802E2FA @ case 14
	.4byte _0802E2FA @ case 15
	.4byte _0802E2FA @ case 16
	.4byte _0802E2FA @ case 17
	.4byte _0802E2D8 @ case 18
	.4byte _0802E2DE @ case 19
	.4byte _0802E2E4 @ case 20
	.4byte _0802E2EA @ case 21
	.4byte _0802E2F0 @ case 22
	.4byte _0802E2F6 @ case 23
_0802E2D8:
	movs r2, #0
	str r2, [sp, #0x3c]
	b _0802E2FA
_0802E2DE:
	movs r3, #1
	str r3, [sp, #0x3c]
	b _0802E2FA
_0802E2E4:
	movs r5, #2
	str r5, [sp, #0x3c]
	b _0802E2FA
_0802E2EA:
	movs r6, #3
	str r6, [sp, #0x3c]
	b _0802E2FA
_0802E2F0:
	movs r0, #4
	str r0, [sp, #0x3c]
	b _0802E2FA
_0802E2F6:
	movs r1, #5
	str r1, [sp, #0x3c]
_0802E2FA:
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0x34]
	add r5, sp, #0x24
	movs r2, #0
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	mov r3, r8
	ldr r3, [r3, #0x10]
	str r3, [sp, #0x40]
	mov r6, r8
	ldr r6, [r6, #0x14]
	mov sl, r6
	ldr r1, _0802E400 @ =0x080FB9FC
	mov r3, r8
	movs r6, #8
	ldrsh r0, [r3, r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
	ldrh r0, [r3, #8]
	str r0, [sp, #0x48]
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	strh r2, [r5]
	strh r2, [r4]
	ldr r0, _0802E404 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802E408 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x2c]
	ldr r0, _0802E40C @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x34]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xd
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	ldr r3, [sp, #0x3c]
	lsls r0, r3, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp, #0x38]
	ldr r2, _0802E410 @ =0x0805289C
	ldr r6, [sp, #0x44]
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x40]
	adds r1, r1, r0
	str r1, [sp, #0x40]
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add sl, r0
	cmp r7, #2
	bls _0802E3AA
	b _0802E4DA
_0802E3AA:
	ldr r1, _0802E414 @ =gPlayers
	movs r0, #0xd4
	muls r0, r7, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r3, [sp, #0x40]
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	add r4, sp, #0x20
	strh r0, [r4]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	mov r5, sl
	subs r1, r1, r5
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x22
	strh r1, [r5]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	subs r3, r2, r6
	cmp r3, #0x80
	ble _0802E41C
	ldr r3, _0802E418 @ =0xFFFFFF00
	adds r0, r3, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0802E42E
	.align 2, 0
_0802E400: .4byte 0x080FB9FC
_0802E404: .4byte 0x00100004
_0802E408: .4byte 0x00110004
_0802E40C: .4byte 0x00130004
_0802E410: .4byte 0x0805289C
_0802E414: .4byte gPlayers
_0802E418: .4byte 0xFFFFFF00
_0802E41C:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r3, r0
	bge _0802E42E
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	adds r1, r0, #0
	orrs r1, r2
_0802E42E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x44]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802E440
	adds r0, #3
_0802E440:
	asrs r0, r0, #2
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x44]
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802E45C
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
_0802E45C:
	ldr r1, [sp, #0x44]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802E474
	ldr r2, _0802E4BC @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
_0802E474:
	ldr r3, [sp, #0x44]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	ldr r2, _0802E4C0 @ =0x080FB9FC
	mov r6, r8
	movs r3, #8
	ldrsh r1, [r6, r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0802E49A
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802E49A:
	ldr r0, _0802E4C4 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #7
	beq _0802E4C8
	mov r0, r8
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _0802E4C8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802E4B8
	rsbs r0, r0, #0
_0802E4B8:
	lsls r0, r2, #0x14
	b _0802E4DE
	.align 2, 0
_0802E4BC: .4byte 0xFFFFFF00
_0802E4C0: .4byte 0x080FB9FC
_0802E4C4: .4byte gMapLayer_03003910
_0802E4C8:
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	b _0802E4E0
_0802E4DA:
	subs r0, r7, #4
	lsls r0, r0, #0x10
_0802E4DE:
	lsrs r0, r0, #0x10
_0802E4E0:
	str r0, [sp, #0x44]
	mov r0, r8
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r4, r0, #0
	mov r6, sb
	lsls r6, r6, #2
	str r6, [sp, #0x60]
	cmp r1, #0
	bne _0802E530
_0802E4F4:
	bl sub_08007750
	cmp r0, #0
	bne _0802E530
	bl sub_080074CC
	cmp r0, #0
	bne _0802E530
	ldr r0, _0802E578 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E530
	bl sub_08007578
	cmp r0, #0
	bne _0802E530
	mov r1, r8
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bne _0802E526
	b _0802E7E8
_0802E526:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802E4F4
_0802E530:
	bl sub_080075AC
	cmp r0, #0
	bne _0802E546
	bl sub_08007544
	cmp r0, #0
	bne _0802E546
	movs r0, #0x29
	bl PlaySE
_0802E546:
	ldr r2, [sp, #0x34]
	lsls r0, r2, #0xf
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	adds r1, r2, #0
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	cmp r1, #0
	bne _0802E55E
	b _0802E7E8
_0802E55E:
	mov r3, sp
	adds r3, #0x20
	str r3, [sp, #0x5c]
	ldr r5, [sp, #0x44]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x54]
	lsls r0, r0, #1
	ldr r6, _0802E57C @ =0x0805289C
	adds r0, r0, r6
	str r0, [sp, #0x58]
_0802E574:
	movs r6, #0
	b _0802E64E
	.align 2, 0
_0802E578: .4byte 0x030063D8
_0802E57C: .4byte 0x0805289C
_0802E580:
	mov r0, r8
	ldrh r1, [r0, #0x26]
	ldr r4, _0802E6BC @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r3, [r0]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0802E648
	ldrh r0, [r3]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r1, [sp, #0x40]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	ldr r5, [sp, #0x5c]
	strh r0, [r5]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov r1, sl
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x22
	strh r1, [r0]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0802E5CC
	rsbs r0, r0, #0
_0802E5CC:
	cmp r0, #7
	bgt _0802E648
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802E5DA
	rsbs r0, r0, #0
_0802E5DA:
	cmp r0, #7
	bgt _0802E648
	ldr r5, [sp, #0x50]
	cmp r5, r6
	bne _0802E648
	adds r4, r2, r4
	ldrh r2, [r4, #0xc]
	adds r0, r2, #0
	cmp r0, #8
	beq _0802E648
	cmp r0, #9
	beq _0802E648
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802E648
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802E648
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r5, r0
	ldr r1, [r1, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802E648
	bl sub_08007544
	cmp r0, #0
	bne _0802E648
	movs r0, #1
	ldr r1, [sp, #0x3c]
	adds r2, r4, #0
	mov r3, r8
	bl sub_0802DA2C
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r4, #0xc]
_0802E648:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802E64E:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802E666
	bl sub_080077C0
	cmp r0, #0
	bne _0802E648
	bl sub_08007670
	cmp r0, #0
	beq _0802E580
_0802E666:
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x4c]
	ldr r0, [sp, #0x40]
	mov r1, sl
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802E68A
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802E68A
	b _0802E7E8
_0802E68A:
	bl sub_080076A8
	cmp r0, #0
	beq _0802E6C4
	ldr r0, [sp, #0x54]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802E6C0 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x40]
	adds r3, r3, r0
	str r3, [sp, #0x40]
	ldr r5, [sp, #0x58]
	movs r6, #0
	ldrsh r1, [r5, r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	b _0802E6EA
	.align 2, 0
_0802E6BC: .4byte gPlayers
_0802E6C0: .4byte 0x0805289C
_0802E6C4:
	ldr r0, [sp, #0x54]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802E80C @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x40]
	adds r3, r3, r0
	str r3, [sp, #0x40]
	ldr r5, [sp, #0x58]
	movs r6, #0
	ldrsh r1, [r5, r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
_0802E6EA:
	add sl, r0
	ldr r0, [sp, #0x44]
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r1, [sp, #0x40]
	asrs r5, r1, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	asrs r4, r2, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x20
	mov r7, sp
	adds r7, #0x22
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x48]
	adds r0, #0x25
	ldr r3, [sp, #0x38]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	ldr r3, [sp, #0x30]
	bl sub_08004214
	ldr r0, _0802E810 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802E7AC
	bl sub_08007510
	cmp r0, #0
	bne _0802E7AC
	bl sub_08007604
	cmp r0, #0
	bne _0802E7AC
	bl sub_08007544
	cmp r0, #0
	bne _0802E7AC
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, _0802E814 @ =0x080FB720
	mov r3, sb
	asrs r1, r3, #0x14
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r6, _0802E818 @ =0x080FBB24
	adds r1, r2, r6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r7, r6]
	ldr r3, _0802E81C @ =0x080FBB26
	adds r2, r2, r3
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	mov r2, sp
	ldrh r3, [r2, #0x24]
	str r5, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r6, [sp, #0x30]
	str r6, [sp, #8]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802E7AC:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0802E7E8
	bl sub_080074CC
	cmp r0, #0
	bne _0802E7E8
	ldr r0, _0802E810 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E7E8
	bl sub_08007578
	cmp r0, #0
	bne _0802E7E8
	ldr r1, [sp, #0x34]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	cmp r1, #0
	beq _0802E7E8
	b _0802E574
_0802E7E8:
	ldr r2, _0802E820 @ =gUnknown_030067A0
	ldr r3, [sp, #0x60]
	adds r2, r3, r2
	movs r1, #1
	ldr r5, [sp, #0x28]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E80C: .4byte 0x0805289C
_0802E810: .4byte 0x030063D8
_0802E814: .4byte 0x080FB720
_0802E818: .4byte 0x080FBB24
_0802E81C: .4byte 0x080FBB26
_0802E820: .4byte gUnknown_030067A0

	thumb_func_start sub_0802E824
sub_0802E824: @ 0x0802E824
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r4, r0, #0
	str r1, [sp, #0x38]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r2, _0802E86C @ =gEnemies
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov sl, r0
	movs r0, #0xff
	ldr r1, [sp, #0x38]
	ands r1, r0
	str r1, [sp, #0x38]
	mov r0, sl
	adds r0, #0x88
	ldrh r0, [r0]
	subs r0, #0xe
	cmp r0, #0x17
	bhi _0802E8F4
	lsls r0, r0, #2
	ldr r1, _0802E870 @ =_0802E874
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802E86C: .4byte gEnemies
_0802E870: .4byte _0802E874
_0802E874: @ jump table
	.4byte _0802E8D4 @ case 0
	.4byte _0802E8DA @ case 1
	.4byte _0802E8DE @ case 2
	.4byte _0802E8E4 @ case 3
	.4byte _0802E8EA @ case 4
	.4byte _0802E8F0 @ case 5
	.4byte _0802E8F4 @ case 6
	.4byte _0802E8F4 @ case 7
	.4byte _0802E8F4 @ case 8
	.4byte _0802E8F4 @ case 9
	.4byte _0802E8F4 @ case 10
	.4byte _0802E8F4 @ case 11
	.4byte _0802E8F4 @ case 12
	.4byte _0802E8F4 @ case 13
	.4byte _0802E8F4 @ case 14
	.4byte _0802E8F4 @ case 15
	.4byte _0802E8F4 @ case 16
	.4byte _0802E8F4 @ case 17
	.4byte _0802E8D4 @ case 18
	.4byte _0802E8DA @ case 19
	.4byte _0802E8DE @ case 20
	.4byte _0802E8E4 @ case 21
	.4byte _0802E8EA @ case 22
	.4byte _0802E8F0 @ case 23
_0802E8D4:
	movs r2, #0
	str r2, [sp, #0x48]
	b _0802E8F4
_0802E8DA:
	movs r3, #1
	b _0802E8F2
_0802E8DE:
	movs r0, #2
	str r0, [sp, #0x48]
	b _0802E8F4
_0802E8E4:
	movs r1, #3
	str r1, [sp, #0x48]
	b _0802E8F4
_0802E8EA:
	movs r2, #4
	str r2, [sp, #0x48]
	b _0802E8F4
_0802E8F0:
	movs r3, #5
_0802E8F2:
	str r3, [sp, #0x48]
_0802E8F4:
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x44]
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	movs r7, #0
	adds r1, #0x14
	str r1, [sp, #0x74]
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x64]
	mov r3, sl
	adds r3, #0x4a
	str r3, [sp, #0x70]
	lsls r4, r4, #2
	str r4, [sp, #0x68]
	adds r4, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x64]
_0802E91A:
	lsls r1, r7, #1
	adds r0, r4, r1
	strh r2, [r0]
	adds r1, r3, r1
	strh r2, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0802E91A
	ldr r0, _0802E980 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x40]
	ldr r0, _0802E984 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x3c]
	ldr r0, _0802E988 @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r4, sl
	ldr r4, [r4, #0x10]
	mov sb, r4
	mov r0, sl
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x4c]
	ldr r1, _0802E98C @ =0x080FB9FC
	mov r2, sl
	movs r3, #8
	ldrsh r0, [r2, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	movs r6, #0
	movs r4, #0
	str r4, [sp, #0x54]
	movs r7, #0
	add r0, sp, #0x20
	mov r8, r0
	b _0802EAD8
	.align 2, 0
_0802E980: .4byte 0x00100004
_0802E984: .4byte 0x00110004
_0802E988: .4byte 0x00130004
_0802E98C: .4byte 0x080FB9FC
_0802E990:
	ldrh r0, [r4, #0xc]
	cmp r0, #8
	bne _0802E998
	b _0802EAD2
_0802E998:
	cmp r0, #9
	bne _0802E99E
	b _0802EAD2
_0802E99E:
	mov r2, sl
	ldrh r1, [r2, #0x26]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	beq _0802E9B4
	b _0802EAD2
_0802E9B4:
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E9C0
	b _0802EAD2
_0802E9C0:
	ldrh r0, [r2]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov r3, sb
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	add r4, sp, #0x34
	strh r0, [r4]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	ldr r0, [sp, #0x4c]
	subs r1, r1, r0
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x36
	strh r1, [r5]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1b
	ldr r3, [sp, #0x58]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0802EA0C
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802EA0C:
	ldr r0, _0802EA94 @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x68
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #7
	bne _0802EA34
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EA34
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802EA2E
	rsbs r0, r0, #0
_0802EA2E:
	cmp r0, #8
	bgt _0802EA34
	movs r2, #1
_0802EA34:
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0802EA58
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EA58
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802EA52
	rsbs r0, r0, #0
_0802EA52:
	cmp r0, #4
	bgt _0802EA58
	movs r2, #1
_0802EA58:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802EA62
	rsbs r0, r0, #0
_0802EA62:
	cmp r0, #1
	bgt _0802EAD2
	ldr r0, [sp, #0x44]
	cmp r0, #5
	beq _0802EABE
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0802EA98
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EA98
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x13
	cmp r4, #0
	bge _0802EA8C
	rsbs r4, r4, #0
_0802EA8C:
	ldr r0, [sp, #0x44]
	adds r0, #4
	lsls r1, r0, #2
	b _0802EAAA
	.align 2, 0
_0802EA94: .4byte gMapLayer_03003910
_0802EA98:
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x13
	cmp r4, #0
	bge _0802EAA4
	rsbs r4, r4, #0
_0802EAA4:
	ldr r0, [sp, #0x44]
	adds r0, #4
	lsls r1, r0, #1
_0802EAAA:
	cmp r4, r1
	bge _0802EAD2
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802EABA
	rsbs r0, r0, #0
_0802EABA:
	cmp r0, r1
	bge _0802EAD2
_0802EABE:
	ldr r0, [sp, #0x54]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x54]
	add r0, r8
	strb r7, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802EAD2:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802EAD8:
	bl sub_08001EC4
	cmp r7, r0
	bhs _0802EAFC
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0802EB64 @ =gPlayers
	adds r4, r1, r0
	bl sub_080077C0
	cmp r0, #0
	bne _0802EAD2
	bl sub_08007670
	cmp r0, #0
	bne _0802EAFC
	b _0802E990
_0802EAFC:
	ldr r1, [sp, #0x70]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802EB42
_0802EB04:
	bl sub_08007750
	cmp r0, #0
	bne _0802EB42
	bl sub_080074CC
	cmp r0, #0
	bne _0802EB42
	ldr r0, _0802EB68 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EB42
	bl sub_08007578
	cmp r0, #0
	bne _0802EB42
	mov r2, sl
	ldrh r0, [r2, #0xa]
	cmp r0, #7
	bne _0802EB36
	b _0802EC88
_0802EB36:
	bl WaitFrame
	ldr r3, [sp, #0x70]
	ldrh r0, [r3]
	cmp r0, #0
	beq _0802EB04
_0802EB42:
	bl sub_080075AC
	cmp r0, #0
	bne _0802EB72
	bl sub_08007544
	cmp r0, #0
	bne _0802EB72
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EB6C
	movs r0, #0x77
	bl PlaySE
	b _0802EB72
	.align 2, 0
_0802EB64: .4byte gPlayers
_0802EB68: .4byte 0x030063D8
_0802EB6C:
	movs r0, #0x2a
	bl PlaySE
_0802EB72:
	cmp r6, #0
	beq _0802EB78
	b _0802EC9C
_0802EB78:
	ldr r1, _0802EC7C @ =0x080FB9FC
	mov r4, sl
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _0802EC80 @ =0x0805289C
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	add sb, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x4c]
	adds r1, r1, r0
	movs r2, #0
	str r2, [sp, #0x50]
	ldr r3, [sp, #0x44]
	adds r3, #0x17
	str r3, [sp, #0x6c]
	mov r4, sb
	asrs r4, r4, #0xc
	mov sl, r4
	asrs r1, r1, #0xc
	mov sb, r1
	add r0, sp, #0x34
	mov r8, r0
	mov r7, sp
	adds r7, #0x36
	lsls r4, r4, #0x10
	str r4, [sp, #0x60]
	ldr r5, [sp, #0x74]
_0802EBDC:
	mov r2, sb
	lsls r1, r2, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x60]
	asrs r0, r4, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	adds r3, r7, #0
	bl sub_08005FC4
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	str r2, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x40]
	bl sub_08004214
	cmp r0, #0
	beq _0802EC28
	ldr r0, [sp, #0x50]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
_0802EC28:
	ldr r0, _0802EC84 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802EC70
	bl sub_08007510
	cmp r0, #0
	bne _0802EC70
	bl sub_08007604
	cmp r0, #0
	bne _0802EC70
	bl sub_08007544
	cmp r0, #0
	bne _0802EC70
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldrh r3, [r5]
	str r6, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r2, [sp, #0x40]
	str r2, [sp, #8]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802EC70:
	bl WaitFrame
	ldr r3, [sp, #0x50]
	cmp r3, #0
	beq _0802EBDC
	b _0802EE7A
	.align 2, 0
_0802EC7C: .4byte 0x080FB9FC
_0802EC80: .4byte 0x0805289C
_0802EC84: .4byte 0x030063D8
_0802EC88:
	ldr r2, _0802EC98 @ =gUnknown_030067A0
	ldr r4, [sp, #0x68]
	adds r2, r4, r2
	movs r1, #1
	ldr r0, [sp, #0x38]
	lsls r1, r0
	b _0802EE86
	.align 2, 0
_0802EC98: .4byte gUnknown_030067A0
_0802EC9C:
	movs r1, #0
	str r1, [sp, #0x50]
	b _0802EDA8
_0802ECA2:
	movs r7, #0
	ldr r3, [sp, #0x54]
	cmp r7, r3
	bhs _0802ED7A
	add r4, sp, #0x34
	mov sb, r4
	movs r0, #0x36
	add r0, sp
	mov r8, r0
_0802ECB4:
	add r0, sp, #0x20
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r0, #0xd4
	muls r1, r0, r1
	ldr r0, _0802EDB4 @ =gPlayers
	adds r4, r1, r0
	adds r4, #0xd0
	ldr r1, [r4]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, sb
	mov r3, r8
	bl sub_08005FC4
	ldr r1, [r4]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [sp, #0x44]
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r7, #1
	ldr r3, [sp, #0x74]
	adds r4, r3, r2
	ldr r0, [sp, #0x64]
	adds r2, r0, r2
	movs r1, #0
	str r1, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x40]
	bl sub_08004214
	cmp r0, #0
	beq _0802ED24
	ldr r0, [sp, #0x50]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
_0802ED24:
	ldr r0, _0802EDB8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802ED6E
	bl sub_08007510
	cmp r0, #0
	bne _0802ED6E
	bl sub_08007604
	cmp r0, #0
	bne _0802ED6E
	bl sub_08007544
	cmp r0, #0
	bne _0802ED6E
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r4]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r2, [sp, #0x40]
	str r2, [sp, #8]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
_0802ED6E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0x54]
	cmp r7, r0
	blo _0802ECB4
_0802ED7A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0802EDB0
	bl sub_080074CC
	cmp r0, #0
	bne _0802EDB0
	ldr r0, _0802EDB8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EDB0
	bl sub_08007578
	cmp r0, #0
	bne _0802EDB0
	ldr r1, [sp, #0x50]
_0802EDA8:
	ldr r2, [sp, #0x54]
	cmp r1, r2
	bhs _0802EDB0
	b _0802ECA2
_0802EDB0:
	movs r7, #0
	b _0802EE4E
	.align 2, 0
_0802EDB4: .4byte gPlayers
_0802EDB8: .4byte 0x030063D8
_0802EDBC:
	ldrh r0, [r4, #0xc]
	cmp r0, #8
	beq _0802EE48
	cmp r0, #9
	beq _0802EE48
	mov r3, sl
	ldrh r1, [r3, #0x26]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0802EE48
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802EE48
	movs r0, #2
	ldr r1, [sp, #0x48]
	adds r2, r4, #0
	bl sub_0802DA2C
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r3, #0x2c]
	str r0, [r1]
	movs r0, #7
	strh r0, [r4, #0xc]
	bl sub_080075AC
	cmp r0, #0
	bne _0802EE20
	bl sub_08007544
	cmp r0, #0
	bne _0802EE20
	movs r0, #0x1a
	bl PlaySE
_0802EE20:
	bl sub_08007750
	cmp r0, #0
	bne _0802EE7A
	bl sub_080074CC
	cmp r0, #0
	bne _0802EE7A
	ldr r0, _0802EE9C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EE7A
	bl sub_08007578
	cmp r0, #0
	bne _0802EE7A
_0802EE48:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802EE4E:
	ldr r4, [sp, #0x54]
	cmp r7, r4
	bhs _0802EE7A
	add r0, sp, #0x20
	adds r0, r0, r7
	ldrb r2, [r0]
	movs r0, #0xd4
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802EEA0 @ =gPlayers
	adds r4, r1, r0
	ldr r0, [sp, #0x5c]
	cmp r0, r2
	bne _0802EE20
	bl sub_080077C0
	cmp r0, #0
	bne _0802EE48
	bl sub_08007670
	cmp r0, #0
	beq _0802EDBC
_0802EE7A:
	ldr r2, _0802EEA4 @ =gUnknown_030067A0
	ldr r1, [sp, #0x68]
	adds r2, r1, r2
	movs r1, #1
	ldr r3, [sp, #0x38]
	lsls r1, r3
_0802EE86:
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EE9C: .4byte 0x030063D8
_0802EEA0: .4byte gPlayers
_0802EEA4: .4byte gUnknown_030067A0

	thumb_func_start sub_0802EEA8
sub_0802EEA8: @ 0x0802EEA8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	mov sb, r2
	movs r4, #0
	ldr r1, _0802EF08 @ =gUnknown_030067A0
	lsls r0, r6, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802EEDC
	movs r3, #1
_0802EECA:
	adds r4, #1
	cmp r4, #0xf
	bhi _0802EF62
	adds r1, r3, #0
	lsls r1, r4
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802EECA
_0802EEDC:
	cmp r4, #0xf
	bhi _0802EF62
	ldr r0, _0802EF0C @ =gUnknown_030067D0
	lsls r3, r6, #2
	adds r0, r3, r0
	ldr r1, [r0]
	lsls r2, r4, #2
	adds r0, r2, r4
	lsls r0, r0, #3
	adds r1, r0, r1
	movs r0, #0x34
	str r0, [r1, #8]
	mov r8, r3
	adds r7, r2, #0
	cmp r5, #1
	beq _0802EF18
	cmp r5, #1
	blo _0802EF10
	cmp r5, #2
	beq _0802EF20
	b _0802EF24
	.align 2, 0
_0802EF08: .4byte gUnknown_030067A0
_0802EF0C: .4byte gUnknown_030067D0
_0802EF10:
	ldr r0, _0802EF14 @ =sub_0802DC18
	b _0802EF22
	.align 2, 0
_0802EF14: .4byte sub_0802DC18
_0802EF18:
	ldr r0, _0802EF1C @ =sub_0802E224
	b _0802EF22
	.align 2, 0
_0802EF1C: .4byte sub_0802E224
_0802EF20:
	ldr r0, _0802EF70 @ =sub_0802E824
_0802EF22:
	str r0, [r1, #0xc]
_0802EF24:
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r1, r0, #0
	ldr r0, _0802EF74 @ =gUnknown_030067D0
	add r0, r8
	ldr r2, [r0]
	adds r0, r7, r4
	lsls r0, r0, #3
	adds r0, r0, r2
	str r1, [r0, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x24]
	mov r1, sb
	lsls r2, r1, #0x10
	orrs r2, r4
	adds r1, r6, #0
	bl CreateThread
	ldr r2, _0802EF78 @ =gUnknown_030067A0
	add r2, r8
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0802EF62:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EF70: .4byte sub_0802E824
_0802EF74: .4byte gUnknown_030067D0
_0802EF78: .4byte gUnknown_030067A0

	thumb_func_start sub_0802EF7C
sub_0802EF7C: @ 0x0802EF7C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802EFC0 @ =gUnknown_030067F0
	lsls r4, r5, #2
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0802EFC4 @ =0x03006800
	str r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	bl Alloc
	ldr r1, _0802EFC8 @ =gUnknown_030067C0
	adds r4, r4, r1
	str r0, [r4]
	cmp r5, #0
	bne _0802EFB8
	ldr r4, _0802EFCC @ =0x03006790
	movs r0, #0xa0
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _0802EFD0 @ =0x03006808
	movs r0, #0xc0
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
_0802EFB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802EFC0: .4byte gUnknown_030067F0
_0802EFC4: .4byte 0x03006800
_0802EFC8: .4byte gUnknown_030067C0
_0802EFCC: .4byte 0x03006790
_0802EFD0: .4byte 0x03006808

	thumb_func_start sub_0802EFD4
sub_0802EFD4: @ 0x0802EFD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802EFE8 @ =gUnknown_030067C0
	lsls r1, r4, #2
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0802EFFE
	adds r5, r1, #0
	b _0802EFF0
	.align 2, 0
_0802EFE8: .4byte gUnknown_030067C0
_0802EFEC:
	bl WaitFrame
_0802EFF0:
	ldr r0, _0802F01C @ =gUnknown_030067C0
	adds r0, r5, r0
	ldr r0, [r0]
	bl IsThreadInList
	cmp r0, #0
	bne _0802EFEC
_0802EFFE:
	ldr r0, _0802F01C @ =gUnknown_030067C0
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	bl Free
	movs r0, #0
	str r0, [r4]
	ldr r1, _0802F020 @ =0x03006790
	ldr r0, [r1]
	cmp r0, #0
	beq _0802F032
	adds r4, r1, #0
	b _0802F028
	.align 2, 0
_0802F01C: .4byte gUnknown_030067C0
_0802F020: .4byte 0x03006790
_0802F024:
	bl WaitFrame
_0802F028:
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	bne _0802F024
_0802F032:
	ldr r5, _0802F050 @ =0x03006790
	ldr r0, [r5]
	bl Free
	ldr r4, _0802F054 @ =0x03006808
	ldr r0, [r4]
	bl Free
	movs r0, #0
	str r0, [r5]
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F050: .4byte 0x03006790
_0802F054: .4byte 0x03006808

	thumb_func_start sub_0802F058
sub_0802F058: @ 0x0802F058
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0802F0A4 @ =gPlayers
	adds r6, r1, r0
	ldr r1, _0802F0A8 @ =0x080FBB84
	lsls r0, r5, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r5, #0
	beq _0802F08A
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802F08A:
	adds r0, r6, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	blt _0802F0AC
	adds r0, r1, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0802F0AE
	.align 2, 0
_0802F0A4: .4byte gPlayers
_0802F0A8: .4byte 0x080FBB84
_0802F0AC:
	movs r0, #0
_0802F0AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
