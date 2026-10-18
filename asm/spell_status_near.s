	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802BA34
sub_0802BA34: @ 0x0802BA34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0xd4
	mov r8, r0
	ldr r1, [sp, #4]
	mov r0, r8
	muls r0, r1, r0
	ldr r5, _0802BAB4 @ =gPlayers
	adds r6, r0, r5
	bl GetMultiplayerId
	mov sl, r0
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r7, r0, #0x1d
	mov sb, r7
	ldr r2, [sp, #4]
	cmp sl, r2
	bne _0802BAF6
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r5, r0, r5
	ldr r1, _0802BAB8 @ =0x080FBB84
	lsls r0, r7, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r7, #0
	beq _0802BA9E
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802BA9E:
	adds r0, r5, #0
	adds r0, #0x78
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802BABC
	movs r0, #0
	b _0802BABE
	.align 2, 0
_0802BAB4: .4byte gPlayers
_0802BAB8: .4byte 0x080FBB84
_0802BABC:
	adds r0, r1, #1
_0802BABE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802BADC
	ldr r0, _0802BAD8 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	strh r4, [r6, #0x12]
	strh r4, [r6, #0x14]
	b _0802BD18
	.align 2, 0
_0802BAD8: .4byte 0x0009001B
_0802BADC:
	adds r2, r6, #0
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802BAF6
	movs r0, #0
	strh r0, [r2]
_0802BAF6:
	adds r0, r6, #0
	adds r0, #0x72
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r0, [sp, #4]
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	cmp r1, #1
	bhi _0802BB1A
_0802BB08:
	ldrh r0, [r6, #0xc]
	cmp r0, #7
	bne _0802BB10
	b _0802BD06
_0802BB10:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #1
	bls _0802BB08
_0802BB1A:
	ldr r1, [sp, #4]
	cmp sl, r1
	bne _0802BB36
	bl sub_08007544
	cmp r0, #0
	bne _0802BB36
	bl sub_080075AC
	cmp r0, #0
	bne _0802BB36
	movs r0, #0x2e
	bl PlaySE
_0802BB36:
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	str r0, [sp, #0xc]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x10]
	movs r5, #0
	movs r4, #0
	movs r2, #0x76
	adds r2, r2, r6
	mov r8, r2
	b _0802BBBC
_0802BB56:
	movs r0, #0xd4
	muls r0, r4, r0
	ldr r1, _0802BC6C @ =gPlayers
	adds r0, r0, r1
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _0802BBB6
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldr r2, [sp, #0xc]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r7, #5
	beq _0802BBAA
	lsls r0, r2, #0x10
	asrs r1, r0, #0x13
	cmp r1, #0
	bge _0802BB94
	rsbs r1, r1, #0
_0802BB94:
	adds r0, r7, #1
	lsls r2, r0, #1
	cmp r1, r2
	bge _0802BBB6
	lsls r0, r3, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802BBA6
	rsbs r0, r0, #0
_0802BBA6:
	cmp r0, r2
	bge _0802BBB6
_0802BBAA:
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	add r0, sp
	strb r4, [r0]
_0802BBB6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802BBBC:
	bl sub_08001EC4
	cmp r4, r0
	blo _0802BB56
	movs r4, #0
	cmp r4, r5
	bhs _0802BBDE
_0802BBCA:
	mov r2, sp
	adds r0, r2, r4
	ldrb r0, [r0]
	bl sub_0802C66C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0802BBCA
_0802BBDE:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802BBF2
_0802BBE6:
	bl WaitFrame
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802BBE6
_0802BBF2:
	ldr r0, [sp, #4]
	cmp sl, r0
	bne _0802BC70
	movs r5, #0
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r2, r2, r0
	mov r8, r2
_0802BC0A:
	ldr r0, [r6, #0x1c]
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802BC1A
	cmp r0, #6
	bne _0802BC58
_0802BC1A:
	bl sub_08007510
	cmp r0, #0
	beq _0802BC26
	bl sub_08046104
_0802BC26:
	ldr r0, [r6, #0x1c]
	adds r0, r4, r0
	movs r1, #6
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r0, r4
	movs r1, #0xe1
	lsls r1, r1, #4
	strh r1, [r0]
	mov r0, r8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x20]
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r0, r1, r0
	strh r7, [r0, #0xa]
	ldr r0, [r6, #0x20]
	adds r0, r1, r0
	strh r7, [r0, #0xc]
	ldr r0, [r6, #0x20]
	adds r1, r1, r0
	strh r7, [r1, #0xe]
	movs r5, #0xd
_0802BC58:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xc
	bls _0802BC0A
	movs r0, #0
	strh r0, [r6, #0x12]
	strh r0, [r6, #0x14]
	b _0802BD06
	.align 2, 0
_0802BC6C: .4byte gPlayers
_0802BC70:
	movs r4, #0
	cmp r4, r5
	bhs _0802BD06
	movs r0, #0xd4
	mov r1, sl
	muls r1, r0, r1
_0802BC7C:
	mov r2, sp
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, sl
	bne _0802BCFC
	ldr r0, _0802BCF8 @ =gPlayers
	adds r6, r1, r0
	movs r5, #0
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r2, r2, r0
	mov r8, r2
_0802BC9C:
	ldr r0, [r6, #0x1c]
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802BCAC
	cmp r0, #6
	bne _0802BCEA
_0802BCAC:
	bl sub_08007510
	cmp r0, #0
	beq _0802BCB8
	bl sub_08046104
_0802BCB8:
	ldr r0, [r6, #0x1c]
	adds r0, r4, r0
	movs r1, #6
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r0, r4
	movs r1, #0xe1
	lsls r1, r1, #4
	strh r1, [r0]
	mov r0, r8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x20]
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r0, r1, r0
	strh r7, [r0, #0xa]
	ldr r0, [r6, #0x20]
	adds r0, r1, r0
	strh r7, [r0, #0xc]
	ldr r0, [r6, #0x20]
	adds r1, r1, r0
	strh r7, [r1, #0xe]
	movs r5, #0xd
_0802BCEA:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xc
	bls _0802BC9C
	b _0802BD06
	.align 2, 0
_0802BCF8: .4byte gPlayers
_0802BCFC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0802BC7C
_0802BD06:
	ldr r2, _0802BD28 @ =gUnknown_030067F0
	ldr r1, [sp, #0x14]
	adds r2, r1, r2
	movs r1, #1
	ldr r0, [sp, #8]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802BD18:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BD28: .4byte gUnknown_030067F0
