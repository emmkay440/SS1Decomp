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

	thumb_func_start sub_0804E464
sub_0804E464: @ 0x0804E464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
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
	bne _0804E48E
	movs r7, #0
	movs r0, #0x20
	b _0804E4B2
_0804E48E:
	cmp r4, #1
	bne _0804E49A
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E4B4
_0804E49A:
	cmp r4, #2
	bne _0804E4A6
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E4B4
_0804E4A6:
	cmp r6, #3
	bne _0804E4B4
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E4B2:
	str r0, [sp]
_0804E4B4:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804E592
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sb, r0
	ldr r2, _0804E504 @ =gUnknown_03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
_0804E4CC:
	lsls r0, r1, #5
	ldr r2, _0804E508 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	mov sl, r0
	lsls r5, r1, #6
_0804E4DA:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	add r0, sb
	adds r4, r1, #0
	cmp r0, #0x1f
	bgt _0804E50C
	lsrs r0, r2, #0x1b
	add r0, sb
	mov r1, ip
	ands r0, r1
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0804E514
	.align 2, 0
_0804E504: .4byte gUnknown_03000A58
_0804E508: .4byte gPaletteBuffer
_0804E50C:
	ldrb r0, [r3]
	mov r2, ip
	orrs r0, r2
	strb r0, [r3]
_0804E514:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	adds r0, r2, r0
	cmp r0, #0x1f
	bgt _0804E53C
	lsrs r1, r1, #0x1b
	adds r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _0804E538 @ =0xFFFFFC1F
	ands r0, r2
	b _0804E544
	.align 2, 0
_0804E538: .4byte 0xFFFFFC1F
_0804E53C:
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
_0804E544:
	orrs r0, r1
	strh r0, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	adds r0, r2, r0
	cmp r0, #0x1f
	bgt _0804E572
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0804E57A
_0804E572:
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
_0804E57A:
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E4DA
	mov r2, sl
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [sp]
	cmp r1, r0
	blo _0804E4CC
_0804E592:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E5A4
sub_0804E5A4: @ 0x0804E5A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r7, r4, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	str r3, [sp]
	bl FlushPaletteBuffer
	ldr r3, [sp]
	cmp r4, #0
	bne _0804E5D0
	movs r3, #0
	movs r0, #0x20
	b _0804E5F2
_0804E5D0:
	cmp r4, #1
	bne _0804E5DC
	movs r3, #0
	movs r1, #0x10
	mov sl, r1
	b _0804E5F4
_0804E5DC:
	cmp r4, #2
	bne _0804E5E6
	movs r3, #0x10
	movs r0, #0x20
	b _0804E5F2
_0804E5E6:
	cmp r7, #3
	bne _0804E5F4
	adds r3, r6, #0
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E5F2:
	mov sl, r0
_0804E5F4:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1f
	ble _0804E5FE
	movs r5, #0x1f
_0804E5FE:
	adds r2, r3, #0
	cmp r2, sl
	bhs _0804E6A0
	lsls r0, r5, #0x18
	asrs r6, r0, #0x18
	movs r5, #0x1f
	ldr r1, _0804E6B0 @ =0x0000FFE1
	adds r7, r6, r1
_0804E60E:
	lsls r0, r2, #5
	ldr r1, _0804E6B4 @ =gPaletteBuffer
	adds r3, r0, r1
	movs r0, #0
	mov ip, r0
	lsls r1, r2, #6
	mov r8, r1
	adds r2, #1
	mov sb, r2
_0804E620:
	mov r1, ip
	lsls r0, r1, #2
	add r0, r8
	ldr r1, _0804E6B8 @ =gUnknown_03000A58
	adds r4, r0, r1
	ldrb r0, [r4]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	subs r0, r5, r0
	cmp r6, r0
	ble _0804E648
	lsrs r0, r1, #0x1b
	adds r0, r0, r7
	ands r0, r5
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E648:
	ldrh r0, [r4]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	subs r0, r5, r0
	cmp r6, r0
	ble _0804E666
	lsrs r0, r1, #0x1b
	adds r0, r0, r7
	ands r0, r5
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804E6BC @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
_0804E666:
	ldrb r0, [r4, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	subs r0, r5, r0
	cmp r6, r0
	ble _0804E686
	lsrs r0, r1, #0x1b
	adds r0, r0, r7
	ands r0, r5
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_0804E686:
	adds r3, #2
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #0xf
	bls _0804E620
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, sl
	blo _0804E60E
_0804E6A0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E6B0: .4byte 0x0000FFE1
_0804E6B4: .4byte gPaletteBuffer
_0804E6B8: .4byte gUnknown_03000A58
_0804E6BC: .4byte 0xFFFFFC1F

	thumb_func_start sub_0804E6C0
sub_0804E6C0: @ 0x0804E6C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
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
	bne _0804E6EA
	movs r7, #0
	movs r0, #0x20
	b _0804E70E
_0804E6EA:
	cmp r4, #1
	bne _0804E6F6
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E710
_0804E6F6:
	cmp r4, #2
	bne _0804E702
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E710
_0804E702:
	cmp r6, #3
	bne _0804E710
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E70E:
	str r0, [sp]
_0804E710:
	adds r1, r7, #0
	ldr r4, [sp]
	cmp r1, r4
	bhs _0804E7FA
	mov r0, r8
	lsls r7, r0, #0x18
	ldr r2, _0804E764 @ =gUnknown_03000A58
	mov ip, r2
	asrs r4, r7, #0x18
	mov r8, r4
	movs r0, #0x1f
	mov sl, r0
_0804E728:
	lsls r0, r1, #5
	ldr r2, _0804E768 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r4, r1, #1
	mov sb, r4
	lsls r5, r1, #6
_0804E736:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, ip
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	mov r4, r8
	subs r0, r0, r4
	adds r4, r1, #0
	cmp r0, #0
	blt _0804E76C
	lsrs r0, r2, #0x1b
	mov r1, r8
	subs r0, r0, r1
	mov r2, sl
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0804E776
	.align 2, 0
_0804E764: .4byte gUnknown_03000A58
_0804E768: .4byte gPaletteBuffer
_0804E76C:
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_0804E776:
	adds r0, r4, r5
	add r0, ip
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	asrs r2, r7, #0x18
	subs r0, r0, r2
	cmp r0, #0
	blt _0804E7A0
	lsrs r1, r1, #0x1b
	subs r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _0804E79C @ =0xFFFFFC1F
	ands r0, r2
	orrs r0, r1
	b _0804E7A6
	.align 2, 0
_0804E79C: .4byte 0xFFFFFC1F
_0804E7A0:
	ldrh r1, [r3]
	ldr r0, _0804E7D4 @ =0xFFFFFC1F
	ands r0, r1
_0804E7A6:
	strh r0, [r3]
	adds r0, r4, r5
	add r0, ip
	ldrb r0, [r0, #1]
	lsls r2, r0, #0x19
	lsrs r0, r2, #0x1b
	asrs r1, r7, #0x18
	subs r0, r0, r1
	cmp r0, #0
	blt _0804E7D8
	lsrs r0, r2, #0x1b
	subs r0, r0, r1
	mov r4, sl
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0804E7E2
	.align 2, 0
_0804E7D4: .4byte 0xFFFFFC1F
_0804E7D8:
	ldrb r1, [r3, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
_0804E7E2:
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E736
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804E728
_0804E7FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
