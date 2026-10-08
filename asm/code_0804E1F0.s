	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804E1F0
sub_0804E1F0: @ 0x0804E1F0
	bx lr
	.align 2, 0
_0804E1F4:
	.byte 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x02, 0xD0, 0x02, 0x28, 0x0F, 0xD0
	.byte 0x12, 0xE0, 0x05, 0x49, 0x08, 0x68, 0x01, 0x30, 0x08, 0x60, 0x04, 0x4A, 0x40, 0x42, 0x01, 0x09
	.byte 0x11, 0x81, 0x80, 0x08, 0x90, 0x81, 0x07, 0xE0, 0x48, 0x0A, 0x00, 0x03, 0x60, 0x1C, 0x00, 0x03
	.byte 0x02, 0x49, 0x08, 0x89, 0x01, 0x38, 0x08, 0x81, 0x70, 0x47, 0x00, 0x00, 0x60, 0x1C, 0x00, 0x03

	thumb_func_start sub_0804E230
sub_0804E230: @ 0x0804E230
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bne _0804E28E
	ldr r1, _0804E29C @ =0x03000A4C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bne _0804E250
	movs r0, #0
	str r0, [r1]
_0804E250:
	ldr r4, _0804E2A0 @ =0x03000A50
	ldr r1, [r4]
	subs r1, #1
	str r1, [r4]
	ldr r5, _0804E2A4 @ =0x030009D8
	ldr r0, _0804E2A8 @ =0x03000A54
	mov r8, r0
	ldr r2, [r0]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08026B90
	ldr r6, _0804E2AC @ =0x03000A44
	ldr r3, _0804E2B0 @ =0x03000A46
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_08026C40
	ldr r1, [r4]
	mov r0, r8
	ldr r2, [r0]
	ldrh r0, [r6]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
_0804E28E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E29C: .4byte 0x03000A4C
_0804E2A0: .4byte 0x03000A50
_0804E2A4: .4byte 0x030009D8
_0804E2A8: .4byte 0x03000A54
_0804E2AC: .4byte 0x03000A44
_0804E2B0: .4byte 0x03000A46

	thumb_func_start sub_0804E2B4
sub_0804E2B4: @ 0x0804E2B4
	push {lr}
	bl sub_0800277C
	cmp r0, #0
	beq _0804E2CC
	ldr r0, _0804E2C8 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	b _0804E2D2
	.align 2, 0
_0804E2C8: .4byte gKeysNew
_0804E2CC:
	ldr r0, _0804E2DC @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
_0804E2D2:
	ands r0, r1
	cmp r0, #0
	beq _0804E2E0
	movs r0, #1
	b _0804E2E2
	.align 2, 0
_0804E2DC: .4byte gKeysNew
_0804E2E0:
	movs r0, #0
_0804E2E2:
	pop {r1}
	bx r1
	.align 2, 0

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
	ldr r2, _0804E3A0 @ =0x03000A58
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
_0804E3A0: .4byte 0x03000A58
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
	ldr r1, _0804E3E0 @ =0x03000A58
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
_0804E3E0: .4byte 0x03000A58
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
	ldr r1, _0804E41C @ =0x03000A58
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
_0804E41C: .4byte 0x03000A58
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
	ldr r2, _0804E504 @ =0x03000A58
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
_0804E504: .4byte 0x03000A58
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
	ldr r1, _0804E6B8 @ =0x03000A58
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
_0804E6B8: .4byte 0x03000A58
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
	ldr r2, _0804E764 @ =0x03000A58
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
_0804E764: .4byte 0x03000A58
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

	thumb_func_start sub_0804E80C
sub_0804E80C: @ 0x0804E80C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl FlushPaletteBuffer
	movs r3, #0
	movs r6, #0x1f
	movs r7, #0x1f
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sb, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov r8, r0
	ldr r0, _0804E8B4 @ =0xFFFFFC1F
	mov ip, r0
_0804E82E:
	lsls r1, r3, #5
	ldr r0, _0804E8B8 @ =gPaletteBuffer
	adds r2, r1, r0
	movs r4, #0
	adds r5, r3, #1
_0804E838:
	ldrb r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _0804E854
	ldr r1, [r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_0804E854:
	ldrh r3, [r2]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0804E872
	ldr r1, [r2]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r7
	lsls r1, r1, #5
	mov r0, ip
	ands r0, r3
	orrs r0, r1
	strh r0, [r2]
_0804E872:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _0804E892
	ldr r1, [r2]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	lsls r1, r1, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #1]
_0804E892:
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804E838
	lsls r0, r5, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0804E82E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E8B4: .4byte 0xFFFFFC1F
_0804E8B8: .4byte gPaletteBuffer

	thumb_func_start sub_0804E8BC
sub_0804E8BC: @ 0x0804E8BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
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
	bne _0804E8E6
	movs r7, #0
	movs r0, #0x20
	b _0804E90A
_0804E8E6:
	cmp r4, #1
	bne _0804E8F2
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E90C
_0804E8F2:
	cmp r4, #2
	bne _0804E8FE
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E90C
_0804E8FE:
	cmp r6, #3
	bne _0804E90C
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E90A:
	str r0, [sp]
_0804E90C:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804E9E8
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sl, r0
	ldr r2, _0804E960 @ =0x03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
	mov sb, sl
	mov r2, ip
	mov r0, sb
	ands r2, r0
	mov sb, r2
_0804E92E:
	lsls r0, r1, #5
	ldr r2, _0804E964 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #4]
	lsls r5, r1, #6
_0804E93C:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp sl, r0
	bgt _0804E968
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r3]
	b _0804E97A
	.align 2, 0
_0804E960: .4byte 0x03000A58
_0804E964: .4byte gPaletteBuffer
_0804E968:
	lsrs r0, r2, #0x1b
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E97A:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E990
	movs r0, #0x1f
	ands r0, r2
	b _0804E992
_0804E990:
	lsrs r0, r1, #0x1b
_0804E992:
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804E9B8 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E9BC
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	b _0804E9C2
	.align 2, 0
_0804E9B8: .4byte 0xFFFFFC1F
_0804E9BC:
	lsrs r0, r1, #0x1b
	mov r2, ip
	ands r0, r2
_0804E9C2:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E93C
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804E92E
_0804E9E8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804E9F8
sub_0804E9F8: @ 0x0804E9F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
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
	bne _0804EA22
	movs r7, #0
	movs r0, #0x20
	b _0804EA46
_0804EA22:
	cmp r4, #1
	bne _0804EA2E
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804EA48
_0804EA2E:
	cmp r4, #2
	bne _0804EA3A
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804EA48
_0804EA3A:
	cmp r6, #3
	bne _0804EA48
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804EA46:
	str r0, [sp]
_0804EA48:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804EB24
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sl, r0
	ldr r2, _0804EA9C @ =0x03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
	mov sb, sl
	mov r2, ip
	mov r0, sb
	ands r2, r0
	mov sb, r2
_0804EA6A:
	lsls r0, r1, #5
	ldr r2, _0804EAA0 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #4]
	lsls r5, r1, #6
_0804EA78:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp sl, r0
	blt _0804EAA4
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r3]
	b _0804EAB6
	.align 2, 0
_0804EA9C: .4byte 0x03000A58
_0804EAA0: .4byte gPaletteBuffer
_0804EAA4:
	lsrs r0, r2, #0x1b
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804EAB6:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	blt _0804EACC
	movs r0, #0x1f
	ands r0, r2
	b _0804EACE
_0804EACC:
	lsrs r0, r1, #0x1b
_0804EACE:
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804EAF4 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	blt _0804EAF8
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	b _0804EAFE
	.align 2, 0
_0804EAF4: .4byte 0xFFFFFC1F
_0804EAF8:
	lsrs r0, r1, #0x1b
	mov r2, ip
	ands r0, r2
_0804EAFE:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804EA78
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804EA6A
_0804EB24:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804EB34
sub_0804EB34: @ 0x0804EB34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
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
	bne _0804EB5C
	movs r7, #0
	movs r0, #0x20
	b _0804EB7E
_0804EB5C:
	cmp r4, #1
	bne _0804EB68
	movs r7, #0
	movs r1, #0x10
	mov sb, r1
	b _0804EB80
_0804EB68:
	cmp r4, #2
	bne _0804EB72
	movs r7, #0x10
	movs r0, #0x20
	b _0804EB7E
_0804EB72:
	cmp r6, #3
	bne _0804EB80
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804EB7E:
	mov sb, r0
_0804EB80:
	adds r3, r7, #0
	cmp r3, sb
	bhs _0804EBE6
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x1f
	adds r5, r0, #0
	ands r5, r1
	lsls r7, r5, #2
	ldr r1, _0804EBF4 @ =gPaletteBuffer
	mov sl, r1
	movs r1, #0x20
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0x1f
	ands r1, r0
	lsls r6, r1, #5
	ldr r0, _0804EBF8 @ =0xFFFFFC1F
	mov ip, r0
_0804EBA8:
	lsls r0, r3, #5
	mov r1, sl
	adds r2, r0, r1
	movs r4, #0
	adds r3, #1
_0804EBB2:
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, ip
	ands r0, r1
	orrs r0, r6
	strh r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804EBB2
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, sb
	blo _0804EBA8
_0804EBE6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EBF4: .4byte gPaletteBuffer
_0804EBF8: .4byte 0xFFFFFC1F

	thumb_func_start sub_0804EBFC
sub_0804EBFC: @ 0x0804EBFC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0804EC14
	movs r4, #0
	movs r3, #0x20
	b _0804EC34
_0804EC14:
	cmp r0, #1
	bne _0804EC1E
	movs r4, #0
	movs r3, #0x10
	b _0804EC34
_0804EC1E:
	cmp r0, #2
	bne _0804EC28
	movs r4, #0x10
	movs r3, #0x20
	b _0804EC34
_0804EC28:
	cmp r2, #3
	bne _0804EC34
	adds r4, r1, #0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804EC34:
	adds r0, r4, #0
	cmp r0, r3
	bhs _0804EC6E
_0804EC3A:
	movs r4, #0
	lsls r6, r0, #6
	lsls r5, r0, #5
	adds r7, r0, #1
_0804EC42:
	lsls r0, r4, #2
	adds r0, r6, r0
	ldr r1, _0804EC78 @ =0x03000A58
	adds r0, r0, r1
	lsls r1, r4, #1
	adds r1, r5, r1
	ldr r2, _0804EC7C @ =gPaletteBuffer
	adds r1, r1, r2
	movs r2, #4
	str r3, [sp]
	bl memcpy
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #0xf
	bls _0804EC42
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	blo _0804EC3A
_0804EC6E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC78: .4byte 0x03000A58
_0804EC7C: .4byte gPaletteBuffer

	thumb_func_start sub_0804EC80
sub_0804EC80: @ 0x0804EC80
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0804EC98
	movs r4, #0
	movs r3, #0x20
	b _0804ECB8
_0804EC98:
	cmp r0, #1
	bne _0804ECA2
	movs r4, #0
	movs r3, #0x10
	b _0804ECB8
_0804ECA2:
	cmp r0, #2
	bne _0804ECAC
	movs r4, #0x10
	movs r3, #0x20
	b _0804ECB8
_0804ECAC:
	cmp r2, #3
	bne _0804ECB8
	adds r4, r1, #0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804ECB8:
	adds r0, r4, #0
	cmp r0, r3
	bhs _0804ECF2
_0804ECBE:
	movs r4, #0
	lsls r6, r0, #5
	lsls r5, r0, #6
	adds r7, r0, #1
_0804ECC6:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldr r1, _0804ECFC @ =gPaletteBuffer
	adds r0, r0, r1
	lsls r1, r4, #2
	adds r1, r5, r1
	ldr r2, _0804ED00 @ =0x03000A58
	adds r1, r1, r2
	movs r2, #4
	str r3, [sp]
	bl memcpy
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #0xf
	bls _0804ECC6
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	blo _0804ECBE
_0804ECF2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ECFC: .4byte gPaletteBuffer
_0804ED00: .4byte 0x03000A58

	thumb_func_start sub_0804ED04
sub_0804ED04: @ 0x0804ED04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804ED22
	movs r7, #0
	movs r0, #0x20
	b _0804ED42
_0804ED22:
	cmp r4, #1
	bne _0804ED2C
	movs r7, #0
	movs r0, #0x10
	b _0804ED42
_0804ED2C:
	cmp r4, #2
	bne _0804ED36
	movs r7, #0x10
	movs r0, #0x20
	b _0804ED42
_0804ED36:
	cmp r6, #3
	bne _0804ED44
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804ED42:
	mov r8, r0
_0804ED44:
	adds r0, r7, #0
	cmp r0, r8
	bhs _0804ED70
	ldr r7, _0804ED7C @ =gPaletteBuffer
_0804ED4C:
	movs r4, #0
	lsls r5, r0, #5
	adds r6, r0, #1
_0804ED52:
	lsls r0, r4, #1
	adds r0, r0, r7
	adds r0, r5, r0
	movs r1, #4
	bl bzero
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804ED52
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r8
	blo _0804ED4C
_0804ED70:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ED7C: .4byte gPaletteBuffer

	thumb_func_start sub_0804ED80
sub_0804ED80: @ 0x0804ED80
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _0804EDE8 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	movs r4, #0
	ldr r1, _0804EDEC @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	cmp r6, #1
	bhi _0804EDF4
	ldr r0, _0804EDF0 @ =0x00001F83
	add r1, sp, #4
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _0804EE0C
	.align 2, 0
_0804EDE8: .4byte 0xFFFF0000
_0804EDEC: .4byte 0x00001E02
_0804EDF0: .4byte 0x00001F83
_0804EDF4:
	ldr r0, _0804EE28 @ =0x00001F03
	add r1, sp, #4
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
_0804EE0C:
	ldr r0, _0804EE2C @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804EE16
	b _0804EF30
_0804EE16:
	cmp r6, #0x1e
	bls _0804EE1C
	b _0804EF30
_0804EE1C:
	lsls r0, r6, #2
	ldr r1, _0804EE30 @ =_0804EE34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804EE28: .4byte 0x00001F03
_0804EE2C: .4byte 0x03003CA8
_0804EE30: .4byte _0804EE34
_0804EE34: @ jump table
	.4byte _0804EEB0 @ case 0
	.4byte _0804EEB4 @ case 1
	.4byte _0804EEB8 @ case 2
	.4byte _0804EEBC @ case 3
	.4byte _0804EEC0 @ case 4
	.4byte _0804EEC4 @ case 5
	.4byte _0804EEC8 @ case 6
	.4byte _0804EECC @ case 7
	.4byte _0804EED0 @ case 8
	.4byte _0804EED4 @ case 9
	.4byte _0804EED8 @ case 10
	.4byte _0804EEDC @ case 11
	.4byte _0804EEE0 @ case 12
	.4byte _0804EEE4 @ case 13
	.4byte _0804EEE8 @ case 14
	.4byte _0804EEEC @ case 15
	.4byte _0804EEF0 @ case 16
	.4byte _0804EEF4 @ case 17
	.4byte _0804EEF8 @ case 18
	.4byte _0804EEFC @ case 19
	.4byte _0804EF00 @ case 20
	.4byte _0804EF04 @ case 21
	.4byte _0804EF08 @ case 22
	.4byte _0804EF0C @ case 23
	.4byte _0804EF10 @ case 24
	.4byte _0804EF14 @ case 25
	.4byte _0804EF18 @ case 26
	.4byte _0804EF1C @ case 27
	.4byte _0804EF20 @ case 28
	.4byte _0804EF24 @ case 29
	.4byte _0804EF28 @ case 30
_0804EEB0:
	movs r0, #0x2e
	b _0804EF2A
_0804EEB4:
	movs r0, #0x2f
	b _0804EF2A
_0804EEB8:
	movs r0, #0x30
	b _0804EF2A
_0804EEBC:
	movs r0, #0x77
	b _0804EF2A
_0804EEC0:
	movs r0, #0x76
	b _0804EF2A
_0804EEC4:
	movs r0, #0x5f
	b _0804EF2A
_0804EEC8:
	movs r0, #0x75
	b _0804EF2A
_0804EECC:
	movs r0, #0x74
	b _0804EF2A
_0804EED0:
	movs r0, #0x73
	b _0804EF2A
_0804EED4:
	movs r0, #0x72
	b _0804EF2A
_0804EED8:
	movs r0, #0x71
	b _0804EF2A
_0804EEDC:
	movs r0, #0x70
	b _0804EF2A
_0804EEE0:
	movs r0, #0x6f
	b _0804EF2A
_0804EEE4:
	movs r0, #0x6e
	b _0804EF2A
_0804EEE8:
	movs r0, #0x78
	b _0804EF2A
_0804EEEC:
	movs r0, #0x6d
	b _0804EF2A
_0804EEF0:
	movs r0, #0x6c
	b _0804EF2A
_0804EEF4:
	movs r0, #0x6b
	b _0804EF2A
_0804EEF8:
	movs r0, #0x6a
	b _0804EF2A
_0804EEFC:
	movs r0, #0x69
	b _0804EF2A
_0804EF00:
	movs r0, #0x68
	b _0804EF2A
_0804EF04:
	movs r0, #0x67
	b _0804EF2A
_0804EF08:
	movs r0, #0x66
	b _0804EF2A
_0804EF0C:
	movs r0, #0x65
	b _0804EF2A
_0804EF10:
	movs r0, #0x64
	b _0804EF2A
_0804EF14:
	movs r0, #0x63
	b _0804EF2A
_0804EF18:
	movs r0, #0x62
	b _0804EF2A
_0804EF1C:
	movs r0, #0x61
	b _0804EF2A
_0804EF20:
	movs r0, #0x60
	b _0804EF2A
_0804EF24:
	movs r0, #0x4b
	b _0804EF2A
_0804EF28:
	movs r0, #0x42
_0804EF2A:
	bl GetDataRecord
	adds r5, r0, #0
_0804EF30:
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _0804EF6C @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r4, #0
	bl Free
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804EF86
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804EF74
	ldr r1, _0804EF70 @ =0x06004000
	b _0804EF78
	.align 2, 0
_0804EF6C: .4byte 0x0600F800
_0804EF70: .4byte 0x06004000
_0804EF74:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804EF78:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804EF96
_0804EF86:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804EF96:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r1, _0804EFD0 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	cmp r6, #1
	bne _0804EFC6
	b _0804F0DA
_0804EFC6:
	cmp r6, #1
	bgt _0804EFD4
	cmp r6, #0
	beq _0804EFDA
	b _0804F0DA
	.align 2, 0
_0804EFD0: .4byte gBgRegsBuffer
_0804EFD4:
	cmp r6, #0x1e
	beq _0804F064
	b _0804F0DA
_0804EFDA:
	ldr r0, _0804EFF0 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804EFE6
	b _0804F0DA
_0804EFE6:
	lsls r0, r0, #2
	ldr r1, _0804EFF4 @ =_0804EFF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804EFF0: .4byte 0x03003CA8
_0804EFF4: .4byte _0804EFF8
_0804EFF8: @ jump table
	.4byte _0804F00C @ case 0
	.4byte _0804F01C @ case 1
	.4byte _0804F02C @ case 2
	.4byte _0804F03C @ case 3
	.4byte _0804F04C @ case 4
_0804F00C:
	ldr r0, _0804F014 @ =0x03001258
	ldr r1, _0804F018 @ =0x00100070
	b _0804F050
	.align 2, 0
_0804F014: .4byte 0x03001258
_0804F018: .4byte 0x00100070
_0804F01C:
	ldr r0, _0804F024 @ =0x03001258
	ldr r1, _0804F028 @ =0x00100076
	b _0804F050
	.align 2, 0
_0804F024: .4byte 0x03001258
_0804F028: .4byte 0x00100076
_0804F02C:
	ldr r0, _0804F034 @ =0x03001258
	ldr r1, _0804F038 @ =0x0010007E
	b _0804F050
	.align 2, 0
_0804F034: .4byte 0x03001258
_0804F038: .4byte 0x0010007E
_0804F03C:
	ldr r0, _0804F044 @ =0x03001258
	ldr r1, _0804F048 @ =0x00100086
	b _0804F050
	.align 2, 0
_0804F044: .4byte 0x03001258
_0804F048: .4byte 0x00100086
_0804F04C:
	ldr r0, _0804F05C @ =0x03001258
	ldr r1, _0804F060 @ =0x00100085
_0804F050:
	movs r2, #0
	movs r3, #2
	bl sub_08026ADC
	b _0804F0DA
	.align 2, 0
_0804F05C: .4byte 0x03001258
_0804F060: .4byte 0x00100085
_0804F064:
	ldr r4, _0804F084 @ =0x03001290
	movs r6, #3
_0804F068:
	bl sub_0801708C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl GetPlayerClass
	cmp r0, #1
	beq _0804F09A
	cmp r0, #1
	bgt _0804F088
	cmp r0, #0
	beq _0804F092
	b _0804F0C4
	.align 2, 0
_0804F084: .4byte 0x03001290
_0804F088:
	cmp r0, #2
	beq _0804F0A4
	cmp r0, #3
	beq _0804F0B8
	b _0804F0C4
_0804F092:
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xd
	b _0804F0A8
_0804F09A:
	adds r0, r4, #0
	ldr r1, _0804F0A0 @ =0x00100002
	b _0804F0A8
	.align 2, 0
_0804F0A0: .4byte 0x00100002
_0804F0A4:
	adds r0, r4, #0
	ldr r1, _0804F0B4 @ =0x00100001
_0804F0A8:
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	b _0804F0C4
	.align 2, 0
_0804F0B4: .4byte 0x00100001
_0804F0B8:
	adds r0, r4, #0
	ldr r1, _0804F0E4 @ =0x00100003
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
_0804F0C4:
	lsls r0, r5, #5
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	movs r0, #0x10
	movs r2, #1
	bl LoadPalette
	adds r4, #0x34
	subs r6, #1
	cmp r6, #0
	bge _0804F068
_0804F0DA:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F0E4: .4byte 0x00100003

	thumb_func_start sub_0804F0E8
sub_0804F0E8: @ 0x0804F0E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0x78
	mov r8, r0
	movs r1, #0xc8
	mov sb, r1
	ldr r0, _0804F2E4 @ =0x03001400
	ldr r1, [r0]
	mov sl, r0
	cmp r1, #0x78
	ble _0804F156
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F2EC @ =0x03001398
	ldr r3, _0804F2F0 @ =0x030013A8
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r2, sl
	ldr r0, [r2]
	movs r1, #0x1e
	bl __modsi3
	cmp r0, #0
	bne _0804F142
	ldr r0, [r6]
	subs r0, #1
	str r0, [r6]
_0804F142:
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xc8
	bl __modsi3
	cmp r0, #0
	bne _0804F156
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
_0804F156:
	mov r1, r8
	adds r1, #0xc8
	mov r2, sl
	ldr r0, [r2]
	cmp r0, r1
	ble _0804F1B2
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F2FC @ =0x0300139A
	ldr r3, _0804F300 @ =0x030013AA
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #4]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #4]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1d
	bl __modsi3
	cmp r0, #0
	bne _0804F19E
	ldr r0, [r6, #4]
	subs r0, #1
	str r0, [r6, #4]
_0804F19E:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F1B2
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
_0804F1B2:
	movs r1, #0xc8
	lsls r1, r1, #1
	add r1, r8
	mov r2, sl
	ldr r0, [r2]
	cmp r0, r1
	ble _0804F210
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F304 @ =0x0300139C
	ldr r3, _0804F308 @ =0x030013AC
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #8]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #8]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1c
	bl __modsi3
	cmp r0, #0
	bne _0804F1FC
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
_0804F1FC:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F210
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
_0804F210:
	movs r1, #0xa5
	lsls r1, r1, #2
	add r1, r8
	mov r2, sl
	ldr r0, [r2]
	cmp r0, r1
	ble _0804F26E
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F30C @ =0x0300139E
	ldr r3, _0804F310 @ =0x030013AE
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #0xc]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #0xc]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1b
	bl __modsi3
	cmp r0, #0
	bne _0804F25A
	ldr r0, [r6, #0xc]
	subs r0, #1
	str r0, [r6, #0xc]
_0804F25A:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F26E
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
_0804F26E:
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, r8
	mov r2, sl
	ldr r1, [r2]
	cmp r1, r0
	ble _0804F2CC
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F314 @ =0x030013A0
	ldr r3, _0804F318 @ =0x030013B0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #0x10]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #0x10]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1a
	bl __modsi3
	cmp r0, #0
	bne _0804F2B8
	ldr r0, [r6, #0x10]
	subs r0, #1
	str r0, [r6, #0x10]
_0804F2B8:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F2CC
	ldr r0, [r7, #0x10]
	adds r0, #1
	str r0, [r7, #0x10]
_0804F2CC:
	mov r1, sl
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F2E4: .4byte 0x03001400
_0804F2E8: .4byte 0x03001258
_0804F2EC: .4byte 0x03001398
_0804F2F0: .4byte 0x030013A8
_0804F2F4: .4byte 0x030013D0
_0804F2F8: .4byte 0x030013E8
_0804F2FC: .4byte 0x0300139A
_0804F300: .4byte 0x030013AA
_0804F304: .4byte 0x0300139C
_0804F308: .4byte 0x030013AC
_0804F30C: .4byte 0x0300139E
_0804F310: .4byte 0x030013AE
_0804F314: .4byte 0x030013A0
_0804F318: .4byte 0x030013B0

	thumb_func_start sub_0804F31C
sub_0804F31C: @ 0x0804F31C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r3, r0, #0
	movs r2, #0
	ldr r1, _0804F354 @ =0x030013A8
	ldr r0, _0804F358 @ =0x03001398
	movs r5, #3
_0804F32E:
	strh r2, [r0]
	strh r2, [r1]
	adds r1, #2
	adds r0, #2
	subs r5, #1
	cmp r5, #0
	bge _0804F32E
	cmp r3, #0
	beq _0804F342
	b _0804F758
_0804F342:
	ldr r0, _0804F35C @ =0x03001400
	str r3, [r0]
	movs r0, #0x78
	bl sub_0800F348
	movs r0, #0xa4
	bl PlaySE
	b _0804F364
	.align 2, 0
_0804F354: .4byte 0x030013A8
_0804F358: .4byte 0x03001398
_0804F35C: .4byte 0x03001400
_0804F360:
	bl WaitFrame
_0804F364:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F360
	movs r5, #0x77
_0804F36E:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F36E
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	movs r7, #0xb4
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r6, #0
_0804F392:
	cmp r4, #0x3f
	bgt _0804F3A2
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3A2:
	cmp r4, #0x74
	ble _0804F3B4
	subs r1, r7, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3B4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r6, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F3D2
	b _0804F910
_0804F3D2:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0xb4
	blt _0804F392
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0x80
	lsls r7, r7, #9
_0804F3EA:
	cmp r4, #0x3f
	bgt _0804F3FA
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3FA:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F410
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F410:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F42E
	b _0804F910
_0804F42E:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F3EA
	movs r6, #0x96
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0x80
	lsls r7, r7, #0xa
_0804F446:
	cmp r4, #0x3f
	bgt _0804F456
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F456:
	cmp r4, #0xec
	ble _0804F468
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F468:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F486
	b _0804F910
_0804F486:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F446
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xc0
	lsls r7, r7, #0xa
_0804F49E:
	cmp r4, #0x3f
	bgt _0804F4AE
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F4AE:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F4C4
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F4C4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F4E2
	b _0804F910
_0804F4E2:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F49E
	movs r4, #0
_0804F4EE:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F4FC
	b _0804F910
_0804F4FC:
	bl WaitFrame
	adds r4, #1

	non_word_aligned_thumb_func_start sub_0804F502
sub_0804F502: @ 0x0804F502
	cmp r4, #0x3c
	blt _0804F4EE
	movs r7, #0xb4
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r6, #0x80
	lsls r6, r6, #0xb
_0804F512:
	cmp r4, #0x3f
	bgt _0804F522
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F522:
	cmp r4, #0x74
	ble _0804F534
	subs r1, r7, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F534:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r6, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F552
	b _0804F910
_0804F552:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0xb4
	blt _0804F512
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xa0
	lsls r7, r7, #0xb
_0804F56A:
	cmp r4, #0x3f
	bgt _0804F57A
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F57A:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F590
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F590:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F5AE
	b _0804F910
_0804F5AE:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F56A
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xc0
	lsls r7, r7, #0xb
_0804F5C6:
	cmp r4, #0x3f
	bgt _0804F5D6
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F5D6:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F5EC
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F5EC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F60A
	b _0804F910
_0804F60A:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F5C6
	movs r6, #0x96
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xe0
	lsls r7, r7, #0xb
_0804F622:
	cmp r4, #0x3f
	bgt _0804F632
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F632:
	cmp r4, #0xec
	ble _0804F644
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F644:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F662
	b _0804F910
_0804F662:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F622
	movs r4, #0
_0804F66E:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F67C
	b _0804F910
_0804F67C:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x5a
	blt _0804F66E
	movs r0, #0x78
	bl sub_0800F3DC
	b _0804F69C
	.align 2, 0
_0804F690: .4byte 0x03001258
_0804F694:
	bl sub_0804F0E8
	bl WaitFrame
_0804F69C:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F694
	movs r5, #0x3b
_0804F6A6:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F6A6
	movs r0, #1
	bl sub_0804ED80
	movs r0, #0x78
	bl sub_0800F348
	b _0804F6C2
_0804F6BE:
	bl WaitFrame
_0804F6C2:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F6BE
	movs r5, #0x13
_0804F6CC:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F6CC
	movs r4, #0xa5
	lsls r4, r4, #2
	movs r5, #0
_0804F6DC:
	cmp r5, #0x3f
	bgt _0804F6EC
	lsls r1, r5, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804F6EC:
	bl sub_080076A8
	cmp r0, #0

	non_word_aligned_thumb_func_start sub_0804F6F2
sub_0804F6F2: @ 0x0804F6F2
	beq _0804F70C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F708 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x93
	movs r3, #8
	bl sub_08026B90
	b _0804F71A
	.align 2, 0
_0804F708: .4byte 0x03001258
_0804F70C:
	str r0, [sp]
	ldr r0, _0804F73C @ =0x03001258
	movs r1, #0x78
	movs r2, #0x93
	movs r3, #9
	bl sub_08026B90
_0804F71A:
	adds r0, r4, #0
	subs r0, #0xf0
	cmp r5, r0
	bne _0804F72E
	movs r0, #0xf0
	bl sub_0800F3DC
	movs r0, #8
	bl FadeOutAllMusicPlayers
_0804F72E:
	bl WaitFrame
	adds r5, #1
	cmp r5, r4
	blt _0804F6DC
	b _0804F744
	.align 2, 0
_0804F73C: .4byte 0x03001258
_0804F740:
	bl WaitFrame
_0804F744:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F740
	movs r5, #0xb3
_0804F74E:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F74E
_0804F758:
	movs r0, #0xa5
	bl PlaySE
	movs r0, #2
	bl sub_0804ED80
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
	movs r6, #0x96
	lsls r6, r6, #1
	ldr r4, _0804F8EC @ =0x00000167
_0804F772:
	cmp r5, r6
	bne _0804F77C
	movs r0, #0x3c
	bl sub_0800F3DC
_0804F77C:
	bl WaitFrame
	adds r5, #1
	cmp r5, r4
	ble _0804F772
	movs r5, #0
	movs r7, #0
	add r0, sp, #4
	mov r8, r0
	ldr r6, _0804F8F0 @ =0x03001398
	ldr r4, _0804F8F4 @ =0x030013A8
_0804F792:
	strh r7, [r6]
	strh r7, [r4]
	bl GetPlayerStats
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	adds r6, #2
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	ble _0804F792
	movs r0, #0x1e
	bl sub_0804ED80
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F7BC:
	ldr r0, _0804F8F0 @ =0x03001398
	ldrh r0, [r0]
	str r0, [sp]
	ldr r0, _0804F8F8 @ =0x03001290
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_08026B90
	ldr r4, [sp, #4]
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _0804F8FC @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x37
	bl sub_0800EB30
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r5, r0
	bne _0804F7FC
	movs r0, #0x3c
	bl sub_0800F3DC
_0804F7FC:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F8EC @ =0x00000167
	cmp r5, r0
	ble _0804F7BC
	movs r0, #3
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F81E:
	movs r0, #0x94
	.global _0804F820
_0804F820:
	lsls r0, r0, #1
	cmp r5, r0
	ble _0804F838
	movs r1, #0xb4
	lsls r1, r1, #1
	subs r1, r1, r5
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F838:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F8EC @ =0x00000167
	cmp r5, r0
	ble _0804F81E
	movs r5, #4
	movs r6, #0xb4
	lsls r6, r6, #1
_0804F84A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r4, #0
_0804F864:
	cmp r4, #0x3f
	bgt _0804F874
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F874:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F88A
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F88A:
	bl sub_0804F99C
	cmp r0, #0
	bne _0804F910
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F864
	adds r5, #1
	cmp r5, #0x1c
	ble _0804F84A
	movs r0, #0x1d
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F8C0:
	cmp r5, #0x3f
	bgt _0804F8D0
	lsls r1, r5, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F8D0:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F900 @ =0x00000257
	cmp r5, r0
	ble _0804F8C0
	movs r0, #0xf0
	bl sub_0800F3DC
	movs r0, #8
	bl FadeOutAllMusicPlayers
	b _0804F908
	.align 2, 0
_0804F8EC: .4byte 0x00000167
_0804F8F0: .4byte 0x03001398
_0804F8F4: .4byte 0x030013A8
_0804F8F8: .4byte 0x03001290
_0804F8FC: .4byte 0x03003CA0
_0804F900: .4byte 0x00000257
_0804F904:
	bl WaitFrame
_0804F908:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F904
_0804F910:
	movs r0, #2
	bl FadeOutAllMusicPlayers
	movs r0, #0x1e
	bl sub_0800F3DC
	b _0804F922
_0804F91E:
	bl WaitFrame
_0804F922:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F91E
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804F944
sub_0804F944: @ 0x0804F944
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r4, _0804F984 @ =0x030013E8
	movs r2, #0
	ldr r7, _0804F988 @ =0x030013B8
	ldr r1, _0804F98C @ =0x030013A8
	ldr r0, _0804F990 @ =0x03001398
	movs r5, #0xf0
	ldr r6, _0804F994 @ =0x030013D0
_0804F956:
	strh r2, [r0]
	strh r2, [r1]
	stm r7!, {r2}
	stm r6!, {r5}
	adds r1, #2
	adds r0, #2
	adds r3, #1
	cmp r3, #5
	ble _0804F956
	movs r0, #0x1e
	str r0, [r4]
	movs r0, #0x24
	str r0, [r4, #4]
	movs r0, #0x28
	str r0, [r4, #8]
	movs r0, #0x25
	str r0, [r4, #0xc]
	movs r0, #0x22
	str r0, [r4, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F984: .4byte 0x030013E8
_0804F988: .4byte 0x030013B8
_0804F98C: .4byte 0x030013A8
_0804F990: .4byte 0x03001398
_0804F994: .4byte 0x030013D0
_0804F998:
	.byte 0x70, 0x47, 0x00, 0x00
