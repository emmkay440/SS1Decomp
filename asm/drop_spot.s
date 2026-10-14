	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800FA74
sub_0800FA74: @ 0x0800FA74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, _0800FAA0 @ =0x000001B9
	bl sub_08001430
	str r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _0800FAB8
	b _0800FC50
	.align 2, 0
_0800FAA0: .4byte 0x000001B9
_0800FAA4:
	mov r2, sl
	str r2, [r4]
	str r6, [r4, #4]
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x14]
	bl Free
	adds r0, r4, #0
	b _0800FC58
_0800FAB8:
	ldr r0, _0800FB94 @ =gFieldItems
	ldr r4, [r0]
	movs r1, #0
	movs r6, #0
	str r6, [sp, #0x10]
	adds r3, r0, #0
	movs r2, #1
_0800FAC6:
	ldr r0, [r4, #0xc]
	ands r0, r2
	cmp r0, #0
	beq _0800FAD0
	adds r1, #1
_0800FAD0:
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
	adds r4, #0x1c
	cmp r0, #0xe
	bls _0800FAC6
	cmp r1, #0xe
	bls _0800FAFC
	ldr r4, [r3]
	ldr r2, _0800FB98 @ =gUnknown_030063BC
	ldr r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r3, #0
	str r3, [r0, #0xc]
	adds r1, #1
	str r1, [r2]
	cmp r1, #0xe
	bls _0800FAFC
	str r3, [r2]
_0800FAFC:
	movs r7, #0
_0800FAFE:
	adds r0, r7, #0
	subs r0, #0xa
	lsls r0, r0, #0xe
	ldr r1, [sp]
	adds r1, r1, r0
	mov sl, r1
	movs r5, #0
	adds r2, r7, #1
	mov sb, r2
_0800FB10:
	adds r0, r5, #0
	subs r0, #0xa
	lsls r0, r0, #0xe
	ldr r1, [sp, #4]
	adds r6, r1, r0
	movs r2, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0800FB24
	movs r2, #1
_0800FB24:
	mov r0, sl
	adds r1, r6, #0
	bl GetMapTileAttributes
	movs r1, #7
	ands r1, r0
	lsls r4, r5, #2
	adds r2, r5, #1
	mov r8, r2
	cmp r1, #0
	bne _0800FBA0
	ldr r0, _0800FB94 @ =gFieldItems
	ldr r2, [r0]
	movs r3, #0
_0800FB40:
	ldr r1, [r2, #0xc]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0800FB74
	ldr r0, [r2]
	mov r1, sl
	subs r0, r1, r0
	asrs r1, r0, #0xc
	cmp r1, #0
	bge _0800FB58
	rsbs r1, r1, #0
_0800FB58:
	ldr r0, [r2, #4]
	subs r0, r6, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _0800FB64
	rsbs r0, r0, #0
_0800FB64:
	cmp r1, #7
	bgt _0800FB74
	cmp r0, #7
	bgt _0800FB74
	ldr r0, [r2, #8]
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _0800FB9C
_0800FB74:
	adds r3, #1
	adds r2, #0x1c
	cmp r3, #0xe
	bls _0800FB40
	movs r0, #0
_0800FB7E:
	cmp r0, #0
	bne _0800FBA0
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r7
	ldr r2, [sp, #0x14]
	adds r0, r2, r0
	movs r1, #1
	b _0800FBAE
	.align 2, 0
_0800FB94: .4byte gFieldItems
_0800FB98: .4byte gUnknown_030063BC
_0800FB9C:
	adds r0, r2, #0
	b _0800FB7E
_0800FBA0:
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r7
	ldr r6, [sp, #0x14]
	adds r0, r6, r0
	movs r1, #0
_0800FBAE:
	strb r1, [r0]
	mov r5, r8
	cmp r5, #0x14
	ble _0800FB10
	mov r7, sb
	cmp r7, #0x14
	ble _0800FAFE
	ldr r0, _0800FC68 @ =gFieldItems
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp, #0x10]
_0800FBC4:
	ldr r0, [r4, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800FC44
	ldr r2, [sp]
	str r2, [r4]
	ldr r6, [sp, #4]
	str r6, [r4, #4]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	str r0, [r4, #0x18]
	ldr r1, _0800FC6C @ =gUnknown_030063B4
	ldr r0, [r1]
	str r0, [r4, #0x10]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _0800FBEE
	movs r2, #1
	str r2, [r1]
_0800FBEE:
	movs r0, #5
	str r0, [r4, #0x14]
	ldr r6, [sp, #8]
	str r6, [r4, #8]
	movs r3, #0
	mov sb, r3
_0800FBFA:
	rsbs r7, r3, #0
	mov r8, r7
	cmp r7, r3
	bge _0800FC38
	mov ip, sb
_0800FC04:
	lsls r1, r7, #0xe
	ldr r0, [r4]
	adds r0, r0, r1
	mov sl, r0
	mov r5, r8
	cmp r5, r3
	bge _0800FC32
	ldr r2, [r4, #4]
	ldr r0, [sp, #0x14]
	adds r0, #0xdc
	adds r0, r7, r0
	mov r6, ip
	adds r1, r6, r0
_0800FC1E:
	lsls r0, r5, #0xe
	adds r6, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800FC2A
	b _0800FAA4
_0800FC2A:
	adds r1, #0x15
	adds r5, #1
	cmp r5, r3
	blt _0800FC1E
_0800FC32:
	adds r7, #1
	cmp r7, r3
	blt _0800FC04
_0800FC38:
	movs r0, #0x15
	rsbs r0, r0, #0
	add sb, r0
	adds r3, #1
	cmp r3, #9
	ble _0800FBFA
_0800FC44:
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r4, #0x1c
	cmp r1, #0xe
	bls _0800FBC4
_0800FC50:
	ldr r0, [sp, #0x14]
	bl Free
	movs r0, #0
_0800FC58:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800FC68: .4byte gFieldItems
_0800FC6C: .4byte gUnknown_030063B4
