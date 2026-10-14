	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801CDE0
sub_0801CDE0: @ 0x0801CDE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x48]
	ldr r4, _0801CE58 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x86
	ldrh r0, [r0]
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
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801CE5C @ =gPlayers
	adds r1, r1, r0
	str r1, [r7, #0x40]
	movs r0, #0
	mov r8, r0
	ldr r0, [r4]
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r8, r0
	bhs _0801CE50
	movs r1, #0
	adds r2, r4, #0
_0801CE36:
	ldr r0, [r7, #0x38]
	add r0, r8
	strb r1, [r0]
	ldr r0, [r7, #0x3c]
	add r0, r8
	strb r1, [r0]
	movs r3, #1
	add r8, r3
	ldr r0, [r2]
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r8, r0
	blo _0801CE36
_0801CE50:
	adds r4, r7, #0
	adds r4, #0x36
	str r4, [r7, #0x44]
	b _0801CF7E
	.align 2, 0
_0801CE58: .4byte gUnknown_030063D8
_0801CE5C: .4byte gPlayers
_0801CE60:
	bl sub_080075AC
	cmp r0, #0
	beq _0801CE6A
	b _0801CF7A
_0801CE6A:
	bl sub_08007510
	cmp r0, #0
	beq _0801CE74
	b _0801CF7A
_0801CE74:
	bl sub_08007544
	cmp r0, #0
	bne _0801CF7A
	bl sub_08007604
	cmp r0, #0
	bne _0801CF7A
	ldr r0, [r4]
	ldr r6, [r0, #0x20]
	movs r1, #0
	mov r8, r1
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r8, r0
	bhs _0801CF7A
	mov sl, r4
	movs r2, #0x34
	adds r2, r2, r7
	mov sb, r2
_0801CE9C:
	mov r3, sl
	ldr r0, [r3]
	ldr r0, [r0, #0x20]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	ldr r4, [r7, #0x40]
	ldr r0, [r4, #0x58]
	asrs r0, r0, #0xf
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801CEBE
	rsbs r0, r0, #0
_0801CEBE:
	cmp r0, #0
	bgt _0801CEF6
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801CED2
	rsbs r0, r0, #0
_0801CED2:
	cmp r0, #0
	bgt _0801CEF6
	mov r3, sl
	ldr r2, [r3]
	adds r2, #0x92
	movs r0, #1
	mov r4, r8
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #4
	movs r2, #0
	movs r3, #0
	bl sub_08029270
_0801CEF6:
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x92
	ldrh r0, [r0]
	mov r2, r8
	asrs r0, r2
	movs r5, #1
	ands r0, r5
	ldr r3, [r7, #0x38]
	add r3, r8
	str r3, [r7, #0x4c]
	cmp r0, #0
	beq _0801CF24
	strb r5, [r3]
	ldr r4, [r7, #0x3c]
	add r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801CF24
	movs r0, #0x72
	bl PlaySE
	strb r5, [r4]
_0801CF24:
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
	mov r2, sb
	ldr r3, [r7, #0x44]
	bl sub_08005FC4
	mov r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [r7, #0x44]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r6, #8]
	ldr r4, [r7, #0x4c]
	ldrb r3, [r4]
	movs r4, #3
	str r4, [sp]
	adds r4, r7, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
	movs r0, #1
	add r8, r0
	adds r6, #0xc
	ldr r1, _0801CFAC @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r8, r0
	blo _0801CE9C
_0801CF7A:
	bl WaitFrame
_0801CF7E:
	bl sub_080074CC
	cmp r0, #0
	bne _0801CF98
	ldr r4, _0801CFAC @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801CF98
	b _0801CE60
_0801CF98:
	ldr r2, [r7, #0x48]
	mov sp, r2
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFAC: .4byte gUnknown_030063D8
