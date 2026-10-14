	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803FE70
sub_0803FE70: @ 0x0803FE70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	movs r5, #0
	ldr r0, _0803FEE0 @ =gMenuInventory
	ldr r2, [r0]
	movs r0, #0
_0803FE88:
	movs r3, #0
	adds r4, r0, #1
_0803FE8C:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0803FE9A
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_0803FE9A:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0803FE8C
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0803FE88
	adds r6, r5, #0
	bl sub_08040D44
	mov r8, r0
	ldr r1, _0803FEE4 @ =gUnknown_0300047B
	ldrb r2, [r1]
	cmp r2, #0
	bne _0803FEC0
	b _0803FFD2
_0803FEC0:
	ldr r0, _0803FEE8 @ =gUnknown_0300047C
	mov sl, r1
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r2, r0
	bne _0803FF48
	ldr r0, _0803FEEC @ =gUnknown_0300048C
	ldr r0, [r0]
	cmp r0, #0
	beq _0803FEF0
	subs r2, r6, r0
	cmp r6, r0
	bhs _0803FEFE
	subs r2, r0, r6
	b _0803FEFE
	.align 2, 0
_0803FEE0: .4byte gMenuInventory
_0803FEE4: .4byte gUnknown_0300047B
_0803FEE8: .4byte gUnknown_0300047C
_0803FEEC: .4byte gUnknown_0300048C
_0803FEF0:
	ldr r0, _0803FF08 @ =gUnknown_03000490
	ldr r0, [r0]
	mov r1, r8
	subs r2, r1, r0
	cmp r8, r0
	bhs _0803FEFE
	subs r2, r0, r1
_0803FEFE:
	cmp r2, #0x63
	bhi _0803FF0C
	movs r0, #0xa
	b _0803FF3E
	.align 2, 0
_0803FF08: .4byte gUnknown_03000490
_0803FF0C:
	ldr r0, _0803FF18 @ =0x000003E7
	cmp r2, r0
	bhi _0803FF1C
	movs r0, #0x10
	b _0803FF3E
	.align 2, 0
_0803FF18: .4byte 0x000003E7
_0803FF1C:
	ldr r0, _0803FF28 @ =0x0000270F
	cmp r2, r0
	bhi _0803FF2C
	movs r0, #0x14
	b _0803FF3E
	.align 2, 0
_0803FF28: .4byte 0x0000270F
_0803FF2C:
	ldr r0, _0803FF38 @ =0x0001869F
	cmp r2, r0
	bhi _0803FF3C
	movs r0, #0x1a
	b _0803FF3E
	.align 2, 0
_0803FF38: .4byte 0x0001869F
_0803FF3C:
	movs r0, #0x1e
_0803FF3E:
	strb r0, [r7]
	ldr r1, _0803FF80 @ =gUnknown_0300047B
	ldrb r0, [r7]
	strb r0, [r1]
	mov sl, r1
_0803FF48:
	mov sb, sl
	mov r1, sb
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803FFD2
	ldr r0, _0803FF84 @ =gUnknown_0300048C
	ldr r4, [r0]
	cmp r4, #0
	beq _0803FFB0
	cmp r6, r4
	bhs _0803FF8E
	subs r0, r4, r6
	ldrb r5, [r7]
	adds r1, r5, #0
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	beq _0803FF88
	mov r1, sb
	ldrb r0, [r1]
	subs r0, r5, r0
	muls r0, r2, r0
	subs r6, r4, r0
	b _0803FFB0
	.align 2, 0
_0803FF80: .4byte gUnknown_0300047B
_0803FF84: .4byte gUnknown_0300048C
_0803FF88:
	mov r0, sb
	strb r2, [r0]
	b _0803FFB0
_0803FF8E:
	subs r0, r6, r4
	ldrb r5, [r7]
	adds r1, r5, #0
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	beq _0803FFAA
	mov r1, sb
	ldrb r0, [r1]
	subs r0, r5, r0
	muls r0, r2, r0
	adds r6, r4, r0
	b _0803FFD2
_0803FFAA:
	mov r0, sb
	strb r2, [r0]
	b _0803FFD2
_0803FFB0:
	ldr r0, _0803FFF8 @ =gUnknown_03000490
	ldr r5, [r0]
	mov r1, r8
	subs r0, r5, r1
	ldrb r4, [r7]
	adds r1, r4, #0
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	beq _0803FFD2
	mov r1, sl
	ldrb r0, [r1]
	subs r0, r4, r0
	muls r0, r2, r0
	subs r5, r5, r0
	mov r8, r5
_0803FFD2:
	ldr r0, [sp]
	cmp r0, #0
	beq _0803FFDA
	str r6, [r0]
_0803FFDA:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0803FFE4
	mov r0, r8
	str r0, [r1]
_0803FFE4:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FFF8: .4byte gUnknown_03000490
