	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804A468
sub_0804A468: @ 0x0804A468
	push {r4, lr}
	movs r3, #0
	movs r1, #0
	ldr r0, _0804A4A4 @ =gUnknown_03000838
	ldrb r2, [r0]
	cmp r3, r2
	bhs _0804A49C
	ldr r0, _0804A4A8 @ =gUnknown_0300084C
	ldr r4, [r0]
_0804A47A:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A492
	cmp r0, #5
	beq _0804A492
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804A492:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804A47A
_0804A49C:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A4A4: .4byte gUnknown_03000838
_0804A4A8: .4byte gUnknown_0300084C

	thumb_func_start sub_0804A4AC
sub_0804A4AC: @ 0x0804A4AC
	push {r4, r5, r6, lr}
	sub sp, #8
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
	ldr r1, _0804A56C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804A570 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804A574 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x14
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804A578 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x15
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804A57C @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804A596
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804A584
	ldr r1, _0804A580 @ =0x06004000
	b _0804A588
	.align 2, 0
_0804A56C: .4byte 0xFFFF0000
_0804A570: .4byte 0x00001F03
_0804A574: .4byte 0x00001E02
_0804A578: .4byte 0x0600F800
_0804A57C: .4byte 0x0600F000
_0804A580: .4byte 0x06004000
_0804A584:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804A588:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804A5A6
_0804A596:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804A5A6:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804A5EC @ =gPaletteBuffer
	movs r4, #0
	strh r4, [r0]
	ldr r0, _0804A5F0 @ =0x03000890
	ldr r1, _0804A5F4 @ =0x0010004D
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _0804A5F8 @ =gBgRegsBuffer
	strh r4, [r1, #0xc]
	movs r0, #0x1b
	strh r0, [r1, #0xe]
	strh r4, [r1, #8]
	movs r0, #0x60
	strh r0, [r1, #0xa]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A5EC: .4byte gPaletteBuffer
_0804A5F0: .4byte 0x03000890
_0804A5F4: .4byte 0x0010004D
_0804A5F8: .4byte gBgRegsBuffer

	thumb_func_start sub_0804A5FC
sub_0804A5FC: @ 0x0804A5FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov r8, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r5, #0
_0804A61A:
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A61A
	movs r0, #0x6a
	bl PlaySE
	movs r5, #0
	ldr r2, _0804A8AC @ =gUnknown_03000889
	mov sb, r2
_0804A63A:
	lsls r7, r5, #0x10
	lsrs r6, r7, #0x10
	movs r5, #1
	ands r5, r6
	cmp r5, #0
	bne _0804A658
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl __modsi3
	mov r1, sb
	strb r0, [r1]
_0804A658:
	ldr r1, _0804A8B0 @ =gBgRegsBuffer
	ldr r4, _0804A8AC @ =gUnknown_03000889
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r2, #0
	mov ip, r2
	strh r0, [r1, #8]
	movs r0, #0
	ldrsb r0, [r4, r0]
	strh r0, [r1, #0xc]
	cmp r5, #0
	bne _0804A676
	ldrh r0, [r1, #0xa]
	subs r0, #1
	strh r0, [r1, #0xa]
_0804A676:
	movs r3, #3
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	bne _0804A686
	ldrh r0, [r1, #0xe]
	adds r0, #1
	strh r0, [r1, #0xe]
_0804A686:
	asrs r5, r7, #0x10
	cmp r5, #0x2d
	ble _0804A6AA
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #0x78
	subs r1, r1, r0
	lsls r0, r5, #1
	movs r2, #0x87
	lsls r2, r2, #1
	subs r2, r2, r0
	mov r0, ip
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r3, #0
	bl sub_0802706C
_0804A6AA:
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0804A8B8 @ =gUnknown_0300088A
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0x59
	ble _0804A63A
	movs r7, #0
	mov sl, r2
	adds r5, r4, #0
	str r0, [sp, #0xc]
	mov r1, sl
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	movs r2, #0
	mov sb, r2
_0804A6DE:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	ldr r2, _0804A8BC @ =0x0805289C
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #1
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804A718
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl __modsi3
	strb r0, [r5]
_0804A718:
	ldr r1, _0804A8B0 @ =gBgRegsBuffer
	movs r0, #0
	ldrsb r0, [r5, r0]
	strh r0, [r1, #8]
	movs r0, #0
	ldrsb r0, [r5, r0]
	strh r0, [r1, #0xc]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp, #0xc]
	subs r2, r0, r2
	mov r1, sb
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldr r1, _0804A8B8 @ =gUnknown_0300088A
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08005F60
	bl WaitFrame
	lsls r1, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _0804A6DE
	movs r0, #0x6a
	bl StopSE
	movs r7, #0
	ldr r5, _0804A8BC @ =0x0805289C
_0804A774:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	asrs r0, r0, #0x14
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804A774
	movs r0, #0x6c
	bl PlaySE
	movs r7, #0
	movs r0, #0
	mov sb, r0
_0804A7CC:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	ldr r1, _0804A8BC @ =0x0805289C
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	mov r0, sb
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	adds r5, #1
	lsls r5, r5, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0x3b
	ble _0804A7CC
	movs r0, #0x3b
	bl PlaySE
	movs r7, #0
	ldr r1, _0804A8BC @ =0x0805289C
	mov sb, r1
	ldr r5, _0804A8C0 @ =0x00000103
_0804A846:
	mov r0, sl
	asrs r2, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	movs r0, #0
	bl sub_0804AB10
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_0804AA10
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	ble _0804A846
	ldr r4, _0804A8BC @ =0x0805289C
	b _0804A90A
	.align 2, 0
_0804A8AC: .4byte gUnknown_03000889
_0804A8B0: .4byte gBgRegsBuffer
_0804A8B4: .4byte 0x03000890
_0804A8B8: .4byte gUnknown_0300088A
_0804A8BC: .4byte 0x0805289C
_0804A8C0: .4byte 0x00000103
_0804A8C4:
	mov r0, sl
	asrs r2, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804AA04 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804AA08 @ =0x00007FBC
	bl sub_0804AA10
	movs r0, #0
	bl sub_0804AB10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl WaitFrame
_0804A90A:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_0804ABD8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804A8C4
	movs r7, #0
	movs r6, #0
	ldr r2, _0804AA0C @ =0x0805289C
	mov sb, r2
_0804A92A:
	movs r0, #0x10
	lsls r5, r7, #0x10
	asrs r5, r5, #0x10
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	asrs r0, r0, #0x14
	subs r2, r2, r0
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, _0804AA04 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	adds r5, #1
	lsls r5, r5, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0xf
	ble _0804A92A
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r7, #0
	ldr r6, _0804AA0C @ =0x0805289C
_0804A996:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x2c
	bne _0804A9A4
	movs r0, #6
	bl sub_0800F3A0
_0804A9A4:
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	asrs r0, r0, #0x14
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804AA04 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A996
	movs r0, #0x3b
	bl StopSE
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AA04: .4byte 0x03000890
_0804AA08: .4byte 0x00007FBC
_0804AA0C: .4byte 0x0805289C

	thumb_func_start sub_0804AA10
sub_0804AA10: @ 0x0804AA10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _0804AB08 @ =gUnknown_03000888
	ldrb r0, [r2]
	cmp r0, #0x63
	bls _0804AA24
	movs r0, #0
	strb r0, [r2]
_0804AA24:
	movs r3, #0
	movs r1, #0
	ldrb r2, [r2]
	lsls r5, r4, #0x10
	cmp r3, r2
	bhs _0804AA56
	ldr r0, _0804AB0C @ =gUnknown_0300088C
	ldr r4, [r0]
_0804AA34:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AA4C
	cmp r0, #2
	beq _0804AA4C
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804AA4C:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804AA34
_0804AA56:
	adds r4, r3, #0
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0804AA66
	rsbs r1, r1, #0
_0804AA66:
	asrs r0, r5, #0x10
	cmp r1, r0
	ble _0804AAFE
	cmp r4, #0x13
	bhi _0804AAFE
	ldr r6, _0804AB08 @ =gUnknown_03000888
	ldrb r1, [r6]
	ldr r7, _0804AB0C @ =gUnknown_0300088C
	ldr r2, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	bl Random
	ldrb r2, [r6]
	ldr r5, [r7]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r4, r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0804AA9E
	rsbs r0, r0, #0
_0804AA9E:
	movs r1, #0xf0
	bl __modsi3
	strh r0, [r4, #8]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0, #0xa]
	bl Random
	lsls r0, r0, #0x10
	ldrb r1, [r6]
	ldr r2, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #2
	strb r1, [r0, #1]
	bl Random
	ldr r4, _0804AB08 @ =gUnknown_03000888
	ldrb r2, [r4]
	ldr r1, _0804AB0C @ =gUnknown_0300088C
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0804AAE8
	rsbs r2, r2, #0
_0804AAE8:
	adds r0, r2, #0
	cmp r2, #0
	bge _0804AAF0
	adds r0, r2, #3
_0804AAF0:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	strb r0, [r1, #2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0804AAFE:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AB08: .4byte gUnknown_03000888
_0804AB0C: .4byte gUnknown_0300088C

	thumb_func_start sub_0804AB10
sub_0804AB10: @ 0x0804AB10
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0804AB74 @ =gUnknown_0300088C
	ldr r4, [r0]
	movs r5, #0
	ldr r6, _0804AB78 @ =0x03000890
_0804AB1C:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0804AB5E
	ldrb r1, [r4, #1]
	adds r2, r4, #4
	adds r3, r4, #6
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08026C40
	movs r0, #8
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	ldrb r3, [r4, #1]
	ldrh r0, [r4, #4]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_0802706C
	ldrb r0, [r4, #2]
	adds r0, #2
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _0804AB5E
	movs r0, #2
	strb r0, [r4]
_0804AB5E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0xc
	cmp r5, #0x63
	bls _0804AB1C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AB74: .4byte gUnknown_0300088C
_0804AB78: .4byte 0x03000890
