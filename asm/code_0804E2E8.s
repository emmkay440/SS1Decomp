	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804E2E8
sub_0804E2E8: @ 0x0804E2E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E312
	movs r7, #0
	movs r0, #0x20
	b _0804E336
_0804E312:
	cmp r4, #1
	bne _0804E31E
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E338
_0804E31E:
	cmp r4, #2
	bne _0804E32A
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E338
_0804E32A:
	cmp r6, #3
	bne _0804E338
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E336:
	str r0, [sp]
_0804E338:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	blo _0804E342
	b _0804E454
_0804E342:
	mov r2, r8
	lsls r2, r2, #0x18
	mov ip, r2
	asrs r7, r2, #0x18
	movs r0, #0x1f
	mov r8, r0
	mov r2, r8
	adds r0, r7, #0
	ands r2, r0
	str r2, [sp, #4]
	ldr r2, _0804E398 @ =0xFFFFFC1F
	mov sl, r2
	movs r0, #0x7d
	rsbs r0, r0, #0
	mov sb, r0
_0804E360:
	lsls r0, r1, #5
	ldr r2, _0804E39C @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #8]
	lsls r5, r1, #6
_0804E36E:
	lsls r1, r6, #2
	adds r0, r1, r5
	ldr r2, _0804E3A0 @ =gUnknown_03000A58
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp r7, r0
	bgt _0804E3B0
	cmp r7, #0
	blt _0804E3A4
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #4]
	orrs r0, r1
	strb r0, [r3]
	b _0804E3C2
	.align 2, 0
_0804E398: .4byte 0xFFFFFC1F
_0804E39C: .4byte gPaletteBuffer
_0804E3A0: .4byte gUnknown_03000A58
_0804E3A4:
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _0804E3C2
_0804E3B0:
	lsrs r0, r2, #0x1b
	mov r2, r8
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E3C2:
	mov r0, ip
	asrs r2, r0, #0x18
	adds r0, r4, r5
	ldr r1, _0804E3E0 @ =gUnknown_03000A58
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E3EE
	cmp r2, #0
	blt _0804E3E4
	movs r0, #0x1f
	ands r0, r2
	b _0804E3F0
	.align 2, 0
_0804E3E0: .4byte gUnknown_03000A58
_0804E3E4:
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	strh r0, [r3]
	b _0804E3FC
_0804E3EE:
	lsrs r0, r1, #0x1b
_0804E3F0:
	lsls r0, r0, #5
	ldrh r2, [r3]
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
_0804E3FC:
	mov r0, ip
	asrs r2, r0, #0x18
	adds r0, r4, r5
	ldr r1, _0804E41C @ =gUnknown_03000A58
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E42A
	cmp r2, #0
	blt _0804E420
	adds r0, r2, #0
	mov r2, r8
	ands r0, r2
	b _0804E430
	.align 2, 0
_0804E41C: .4byte gUnknown_03000A58
_0804E420:
	ldrb r1, [r3, #1]
	mov r0, sb
	ands r0, r1
	strb r0, [r3, #1]
	b _0804E43C
_0804E42A:
	lsrs r0, r1, #0x1b
	mov r1, r8
	ands r0, r1
_0804E430:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_0804E43C:
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E36E
	ldr r2, [sp, #8]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [sp]
	cmp r1, r0
	blo _0804E360
_0804E454:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
