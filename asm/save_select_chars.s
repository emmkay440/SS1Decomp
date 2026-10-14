	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080473AC
sub_080473AC: @ 0x080473AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	str r0, [sp, #0x14]
	mov sl, r0
	ldr r0, _080473EC @ =gUnknown_03000764
	ldr r7, [r0]
	ldr r0, _080473F0 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080473CC
	adds r7, #0xe0
_080473CC:
	movs r1, #0
	mov r8, r1
_080473D0:
	mov r2, r8
	cmp r2, #1
	bls _080473DA
	movs r3, #0x78
	str r3, [sp, #0x14]
_080473DA:
	mov r0, r8
	cmp r0, #0
	beq _080473E4
	cmp r0, #2
	bne _080473F4
_080473E4:
	movs r1, #0
	mov sl, r1
	b _08047402
	.align 2, 0
_080473EC: .4byte gUnknown_03000764
_080473F0: .4byte gUnknown_030005F1
_080473F4:
	mov r2, sl
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xf
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov sl, r0
_08047402:
	ldr r0, _08047414 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi _0804746E
	lsls r0, r0, #2
	ldr r1, _08047418 @ =_0804741C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047414: .4byte gUnknown_030005F0
_08047418: .4byte _0804741C
_0804741C: @ jump table
	.4byte _08047450 @ case 0
	.4byte _08047450 @ case 1
	.4byte _08047450 @ case 2
	.4byte _08047458 @ case 3
	.4byte _08047458 @ case 4
	.4byte _08047548 @ case 5
	.4byte _08047450 @ case 6
	.4byte _08047458 @ case 7
	.4byte _08047450 @ case 8
	.4byte _08047458 @ case 9
	.4byte _08047458 @ case 10
	.4byte _08047450 @ case 11
	.4byte _08047450 @ case 12
_08047450:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08047548
	b _0804746E
_08047458:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0804746E
	ldr r0, _0804749C @ =gUnknown_030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r1, _080474A0 @ =gUnknown_030005F5
	ldrb r1, [r1]
	cmp r0, r1
	bne _08047548
_0804746E:
	ldr r0, _080474A0 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _0804749C @ =gUnknown_030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	cmp r1, r0
	bne _080474A8
	ldrb r1, [r7, #1]
	movs r0, #0x34
	muls r0, r1, r0
	ldr r1, _080474A4 @ =gUnknown_03000628
	adds r0, r0, r1
	adds r2, r7, #0
	adds r2, #0x34
	adds r3, r7, #0
	adds r3, #0x36
	movs r1, #1
	str r1, [sp]
	movs r1, #8
	bl sub_08026C40
	b _080474AE
	.align 2, 0
_0804749C: .4byte gUnknown_030005F1
_080474A0: .4byte gUnknown_030005F5
_080474A4: .4byte gUnknown_03000628
_080474A8:
	movs r0, #0
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
_080474AE:
	mov r0, r8
	adds r0, #0x10
	ldr r2, _080474E4 @ =gUnknown_03000628
	ldrb r3, [r7, #1]
	movs r1, #0x34
	muls r1, r3, r1
	adds r2, #0xc
	adds r1, r1, r2
	ldrb r2, [r7, #2]
	lsls r2, r2, #5
	ldr r1, [r1]
	adds r1, r1, r2
	movs r2, #1
	bl LoadPalette
	add r0, sp, #0x10
	mov r1, r8
	strb r1, [r0]
	ldrb r0, [r7, #1]
	cmp r0, #1
	beq _080474F8
	cmp r0, #1
	bgt _080474E8
	cmp r0, #0
	beq _080474F2
	b _08047508
	.align 2, 0
_080474E4: .4byte gUnknown_03000628
_080474E8:
	cmp r0, #2
	beq _080474FE
	cmp r0, #3
	beq _08047504
	b _08047508
_080474F2:
	movs r2, #0
	mov sb, r2
	b _08047508
_080474F8:
	movs r3, #1
	mov sb, r3
	b _08047508
_080474FE:
	movs r0, #1
	mov sb, r0
	b _08047508
_08047504:
	movs r1, #3
	mov sb, r1
_08047508:
	ldr r0, [sp, #0x14]
	adds r0, #0x14
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x22
	adds r1, r1, r2
	ldrh r3, [r7, #0x34]
	movs r2, #0
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r6, _0804756C @ =gUnknown_03000628
	ldrb r2, [r7, #1]
	movs r5, #0x34
	muls r2, r5, r2
	adds r4, r6, #0
	adds r4, #8
	adds r2, r2, r4
	ldr r2, [r2]
	str r2, [sp, #8]
	ldrb r2, [r7, #1]
	muls r2, r5, r2
	adds r2, r2, r6
	ldr r2, [r2]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08003518
_08047548:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r7, #0x38
	cmp r0, #3
	bhi _0804755A
	b _080473D0
_0804755A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804756C: .4byte gUnknown_03000628
