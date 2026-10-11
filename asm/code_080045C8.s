	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080045C8
sub_080045C8: @ 0x080045C8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	movs r0, #0
	movs r1, #0
	bl SetBgMode
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	bl DisableDisplayLayers
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _0800466C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08004670 @ =0x00001C08
	orrs r0, r1
	str r0, [sp]
	movs r0, #0
	mov r1, sp
	bl SetBgCnt
	ldr r1, _08004674 @ =0x080FB0F8
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	movs r2, #0xe8
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	mov r1, sp
	strh r0, [r1]
	movs r0, #1
	bl SetBgCnt
	ldr r1, _08004678 @ =0x00001E02
	mov r0, sp
	strh r1, [r0]
	movs r0, #2
	mov r1, sp
	bl SetBgCnt
	ldr r1, _0800467C @ =0x00001F03
	mov r0, sp
	strh r1, [r0]
	movs r0, #3
	mov r1, sp
	bl SetBgCnt
	ldr r0, [r7]
	bl GetDataRecord
	adds r6, r0, #0
	ldrh r0, [r7]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r5, r0, #0
	movs r4, #0
_08004656:
	bl sub_08007670
	cmp r0, #0
	bne _08004666
	bl sub_080074CC
	cmp r0, #0
	beq _08004680
_08004666:
	bl ClearCopyQueue
	b _080046D8
	.align 2, 0
_0800466C: .4byte 0xFFFF0000
_08004670: .4byte 0x00001C08
_08004674: .4byte 0x080FB0F8
_08004678: .4byte 0x00001E02
_0800467C: .4byte 0x00001F03
_08004680:
	lsls r1, r4, #0xb
	adds r0, r6, r1
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08004656
	ldr r0, [r7]
	cmp r0, #0
	bge _080046C4
	bl sub_080076A8
	cmp r0, #0
	beq _080046B8
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0
	b _080046BC
_080046B8:
	movs r0, #0
	adds r1, r5, #0
_080046BC:
	movs r2, #0xf
	bl LoadPalette
	b _080046CE
_080046C4:
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0xf
	bl LoadPalette
_080046CE:
	ldr r1, _080046E0 @ =gPaletteBuffer
	movs r0, #0
	strh r0, [r1]
	bl WaitFrame
_080046D8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080046E0: .4byte gPaletteBuffer

	thumb_func_start sub_080046E4
sub_080046E4: @ 0x080046E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	adds r4, r1, #0
	adds r7, r4, #0
	adds r7, #0x10
	ldr r0, _08004810 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0800471A
	bl sub_08007638
	movs r5, #0x28
	cmp r0, #0
	bne _0800471C
_0800471A:
	ldrh r5, [r4, #2]
_0800471C:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	movs r0, #3
	subs r0, r0, r6
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r7, r7, r0
	ldr r3, _08004810 @ =gMapLayer_03003910
	lsls r2, r6, #2
	adds r0, r2, r6
	lsls r0, r0, #2
	mov r8, r0
	adds r5, r0, r3
	movs r1, #0
	strh r6, [r5, #0x10]
	adds r0, r3, #0
	adds r0, #8
	add r0, r8
	str r7, [r0]
	ldrh r0, [r4]
	strh r0, [r5, #0xc]
	ldrh r0, [r4, #2]
	strh r0, [r5, #0xe]
	strh r1, [r5]
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	strh r1, [r5, #6]
	lsls r4, r6, #1
	ldr r0, _08004814 @ =gUnknown_03003C90
	adds r2, r2, r0
	ldr r2, [r2]
	str r2, [sp, #8]
	mov r2, sb
	lsls r0, r2, #0xf
	str r0, [sp]
	mov r1, sl
	lsls r0, r1, #0xf
	str r0, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	movs r2, #0
	str r3, [sp, #0xc]
	bl sub_0800588C
	ldr r3, [sp, #0xc]
	adds r0, r3, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov sb, r4
	cmp r0, #0
	bge _0800478A
	adds r0, #7
_0800478A:
	asrs r0, r0, #3
	strh r0, [r5]
	adds r1, r3, #0
	adds r1, #0x5e
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0800479C
	adds r0, #7
_0800479C:
	asrs r0, r0, #3
	strh r0, [r5, #2]
	ldrh r5, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r5, r0
	bge _080047DE
	mov r6, r8
	adds r4, r3, #0
	adds r7, r1, #0
_080047B6:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, r4
	bl sub_08004A1C
	adds r0, r5, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r5, r0
	blt _080047B6
_080047DE:
	ldr r0, _08004818 @ =REG_BG0CNT
	add r0, sb
	ldrh r0, [r0]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r0, [sp, #8]
	bl QueueCopy
	bl WaitFrame
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004810: .4byte gMapLayer_03003910
_08004814: .4byte gUnknown_03003C90
_08004818: .4byte REG_BG0CNT

	thumb_func_start sub_0800481C
sub_0800481C: @ 0x0800481C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	adds r6, r1, #0
	adds r6, #0x10
	movs r4, #0
	ldrsh r5, [r1, r4]
	movs r7, #2
	ldrsh r4, [r1, r7]
	muls r5, r4, r5
	movs r4, #3
	subs r4, r4, r0
	lsls r4, r4, #1
	muls r4, r5, r4
	adds r6, r6, r4
	ldr r4, _08004928 @ =gMapLayer_03003C00
	mov sl, r4
	lsls r5, r0, #2
	adds r4, r5, r0
	lsls r4, r4, #2
	mov sb, r4
	mov r7, sb
	add r7, sl
	movs r4, #0
	mov r8, r4
	strh r0, [r7, #0x10]
	mov r4, sl
	adds r4, #8
	add r4, sb
	str r6, [r4]
	ldrh r4, [r1]
	strh r4, [r7, #0xc]
	ldrh r1, [r1, #2]
	strh r1, [r7, #0xe]
	mov r1, r8
	strh r1, [r7]
	strh r1, [r7, #2]
	lsls r4, r0, #1
	ldr r0, _0800492C @ =gUnknown_03003C90
	adds r5, r5, r0
	ldr r5, [r5]
	str r5, [sp, #8]
	lsrs r2, r2, #1
	str r2, [sp]
	lsrs r3, r3, #1
	str r3, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	movs r2, #1
	bl sub_0800588C
	mov r0, sl
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0800489E
	adds r0, #7
_0800489E:
	asrs r0, r0, #3
	strh r0, [r7]
	mov r1, sl
	adds r1, #0x5e
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080048B0
	adds r0, #7
_080048B0:
	asrs r0, r0, #3
	strh r0, [r7, #2]
	ldrh r6, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r8, r4
	cmp r6, r0
	bge _080048F4
	mov r7, sb
	mov r4, sl
	adds r5, r1, #0
_080048CC:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, r4
	bl sub_08004A1C
	adds r0, r6, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r6, r0
	blt _080048CC
_080048F4:
	ldr r0, _08004930 @ =REG_BG0CNT
	add r0, r8
	ldrh r0, [r0]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r0, [sp, #8]
	bl QueueCopy
	bl WaitFrame
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004928: .4byte gMapLayer_03003C00
_0800492C: .4byte gUnknown_03003C90
_08004930: .4byte REG_BG0CNT

	thumb_func_start sub_08004934
sub_08004934: @ 0x08004934
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r2, _08004A18 @ =gUnknown_03003C90
	ldrh r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov ip, r0
	ldr r7, [r6, #8]
	lsrs r4, r1, #0x10
	cmp r1, #0
	bge _08004956
	movs r4, #0
_08004956:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _0800495E
	movs r3, #0
_0800495E:
	mov r2, sp
	lsls r4, r4, #0x10
	movs r1, #0xff
	lsls r0, r1, #0x10
	ands r0, r4
	asrs r0, r0, #0x13
	strh r0, [r2]
	mov r0, sp
	lsls r2, r3, #0x10
	lsls r1, r1, #0x10
	ands r1, r2
	asrs r1, r1, #0x13
	strh r1, [r0, #2]
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x15
	bls _08004986
	movs r5, #0x15
_08004986:
	asrs r1, r4, #0x13
	lsls r1, r1, #0x10
	asrs r0, r2, #0x13
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	add ip, r0
	lsrs r1, r1, #0xf
	adds r7, r7, r1
	movs r4, #0
	ldrh r0, [r6, #0xc]
	adds r1, r2, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, r5
	bhs _080049DA
	mov r3, sp
_080049B2:
	movs r0, #2
	ldrsh r1, [r3, r0]
	lsls r1, r1, #6
	add r1, ip
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	ldrh r0, [r6, #0xc]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, r5
	blo _080049B2
_080049DA:
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #2]
	cmp r4, #0x14
	bhi _08004A0E
	mov r3, sp
_080049E6:
	movs r0, #2
	ldrsh r1, [r3, r0]
	lsls r1, r1, #6
	add r1, ip
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	ldrh r0, [r6, #0xc]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, #0x14
	bls _080049E6
_08004A0E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004A18: .4byte gUnknown_03003C90

	thumb_func_start sub_08004A1C
sub_08004A1C: @ 0x08004A1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r2, _08004ADC @ =gUnknown_03003C90
	ldrh r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	ldr r7, [r6, #8]
	lsrs r2, r1, #0x10
	cmp r1, #0
	bge _08004A42
	movs r2, #0
_08004A42:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _08004A4A
	movs r4, #0
_08004A4A:
	mov r3, sp
	lsls r2, r2, #0x10
	movs r1, #0xff
	lsls r0, r1, #0x10
	ands r0, r2
	asrs r0, r0, #0x13
	strh r0, [r3]
	mov r0, sp
	lsls r4, r4, #0x10
	lsls r1, r1, #0x10
	ands r1, r4
	asrs r1, r1, #0x13
	strh r1, [r0, #2]
	ldrh r3, [r0]
	movs r0, #0x20
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sp
	lsls r1, r1, #5
	strh r1, [r0, #2]
	asrs r2, r2, #0x13
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	asrs r4, r4, #0x13
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r0, [r6, #0xc]
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	cmp r5, #0
	beq _08004AB2
	lsls r0, r4, #1
	adds r0, r7, r0
	mov r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r2, sp
	movs r3, #2
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	lsls r1, r1, #1
	add r1, r8
	adds r2, r5, #0
	bl CpuSet
_08004AB2:
	adds r0, r5, r4
	lsls r0, r0, #1
	adds r0, r7, r0
	mov r1, sp
	movs r2, #2
	ldrsh r1, [r1, r2]
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0x20
	subs r2, r2, r5
	ldr r3, _08004AE0 @ =0x001FFFFF
	ands r2, r3
	bl CpuSet
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004ADC: .4byte gUnknown_03003C90
_08004AE0: .4byte 0x001FFFFF

	thumb_func_start sub_08004AE4
sub_08004AE4: @ 0x08004AE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _08004B18 @ =gBgRegsBuffer
	str r0, [sp, #4]
	bl sub_08007544
	adds r1, r0, #0
	cmp r1, #0
	beq _08004B20
	lsls r1, r7, #2
	adds r2, r1, r7
	lsls r2, r2, #2
	ldr r3, _08004B1C @ =gMapLayer_03003C00
	b _08004B28
	.align 2, 0
_08004B18: .4byte gBgRegsBuffer
_08004B1C: .4byte gMapLayer_03003C00
_08004B20:
	lsls r1, r7, #2
	adds r2, r1, r7
	lsls r2, r2, #2
	ldr r3, _08004C38 @ =gMapLayer_03003910
_08004B28:
	adds r6, r2, r3
	str r1, [sp, #0xc]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r2, _08004C38 @ =gMapLayer_03003910
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r1, [r1]
	cmp r1, #7
	bne _08004B74
	adds r1, r2, #0
	adds r1, #0x6c
	ldrh r2, [r1]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	bne _08004B74
	cmp r7, #3
	bne _08004B74
	bl sub_08007544
	adds r1, r0, #0
	cmp r1, #0
	bne _08004B74
	movs r3, #0
	mov r8, r3
_08004B74:
	ldr r2, _08004C38 @ =gMapLayer_03003910
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r1, [r1]
	cmp r1, #9
	bne _08004B9C
	adds r1, r2, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	cmp r1, #0x11
	bne _08004B9C
	cmp r7, #3
	bne _08004B9C
	bl sub_08007544
	adds r1, r0, #0
	cmp r1, #0
	bne _08004B9C
	movs r1, #0
	mov r8, r1
_08004B9C:
	ldr r1, [r6, #8]
	cmp r1, #0
	bne _08004BA4
	b _08004DC2
_08004BA4:
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	adds r2, r4, #0
	str r1, [sp, #0x10]
	cmp r4, #0
	bge _08004BB2
	adds r2, r4, #7
_08004BB2:
	asrs r1, r2, #3
	ldrh r2, [r6]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r3, r1, #0x10
	adds r2, r3, #0
	mov sl, r1
	cmp r3, #0
	bge _08004BCC
	adds r2, r3, #7
_08004BCC:
	asrs r1, r2, #3
	ldrh r2, [r6, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r1, r5, #0x10
	asrs r5, r1, #0x10
	str r1, [sp, #0x14]
	cmp r5, #0
	ble _08004C3C
	adds r4, #0xf1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08004934
	subs r4, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0x18]
	lsls r3, r7, #1
	str r3, [sp, #8]
	cmp r2, r1
	bge _08004C94
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	adds r5, r1, #0
_08004C12:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	subs r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	mov r3, sl
	asrs r2, r3, #0x10
	bl sub_08004934
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r5
	blt _08004C12
	b _08004C94
	.align 2, 0
_08004C38: .4byte gMapLayer_03003910
_08004C3C:
	mov r1, r8
	lsls r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r2, r7, #1
	str r2, [sp, #8]
	cmp r5, #0
	bge _08004C94
	subs r4, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08004934
	rsbs r1, r5, #0
	adds r4, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _08004C94
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	adds r5, r1, #0
_08004C72:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	adds r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	mov r3, sl
	asrs r2, r3, #0x10
	bl sub_08004934
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r5
	blt _08004C72
_08004C94:
	ldr r1, [sp, #0x18]
	asrs r4, r1, #0x10
	cmp r4, #0
	ble _08004CEC
	lsrs r7, r1, #0x10
	ldr r2, [sp, #0x10]
	ldr r3, _08004CE8 @ =0xFFF80000
	adds r5, r2, r3
	asrs r1, r5, #0x10
	movs r0, #0xa1
	lsls r0, r0, #0x10
	add r0, sl
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08004A1C
	movs r2, #0
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _08004D36
	mov r8, r4
	adds r7, r1, #0
_08004CC4:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #3
	mov r0, r8
	subs r2, r0, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	asrs r1, r5, #0x10
	bl sub_08004A1C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r7
	blt _08004CC4
	b _08004D36
	.align 2, 0
_08004CE8: .4byte 0xFFF80000
_08004CEC:
	cmp r4, #0
	bge _08004D36
	ldr r1, [sp, #0x10]
	ldr r2, _08004DD4 @ =0xFFF80000
	adds r7, r1, r2
	asrs r1, r7, #0x10
	mov r3, sl
	asrs r5, r3, #0x10
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08004A1C
	rsbs r1, r4, #0
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _08004D36
	mov sb, r5
	mov r8, r1
	adds r5, r7, #0
_08004D16:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #3
	add r2, sb
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	asrs r1, r5, #0x10
	bl sub_08004A1C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r8
	blt _08004D16
_08004D36:
	ldr r2, [sp, #8]
	ldr r3, _08004DD8 @ =REG_BG0CNT
	adds r1, r2, r3
	ldrh r1, [r1]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _08004D5E
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bne _08004D5E
	ldr r2, [sp]
	cmp r2, #0
	beq _08004D6E
_08004D5E:
	ldr r0, _08004DDC @ =gUnknown_03003C90
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
_08004D6E:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _08004D7A
	ldr r2, [sp]
	cmp r2, #0
	beq _08004D88
_08004D7A:
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0x10
	cmp r1, #0
	bge _08004D84
	adds r1, #7
_08004D84:
	asrs r1, r1, #3
	strh r1, [r6]
_08004D88:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _08004D94
	ldr r2, [sp]
	cmp r2, #0
	beq _08004DA2
_08004D94:
	mov r3, sl
	asrs r1, r3, #0x10
	cmp r1, #0
	bge _08004D9E
	adds r1, #7
_08004D9E:
	asrs r1, r1, #3
	strh r1, [r6, #2]
_08004DA2:
	ldrh r1, [r6, #0x10]
	lsls r1, r1, #2
	ldr r2, [sp, #4]
	adds r2, r2, r1
	str r2, [sp, #4]
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0x10
	movs r2, #0xff
	ands r1, r2
	ldr r3, [sp, #4]
	strh r1, [r3]
	mov r3, sl
	asrs r1, r3, #0x10
	ands r1, r2
	ldr r2, [sp, #4]
	strh r1, [r2, #2]
_08004DC2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004DD4: .4byte 0xFFF80000
_08004DD8: .4byte REG_BG0CNT
_08004DDC: .4byte gUnknown_03003C90

	thumb_func_start sub_08004DE0
sub_08004DE0: @ 0x08004DE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r6, _08004E08 @ =gMapLayer_03003910
	ldr r0, [r6, #0x78]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08004E04
	ldr r4, _08004E0C @ =0x03003BD0
	adds r0, r4, #0
	bl IsThreadInList
	adds r1, r0, #0
	cmp r1, #0
	beq _08004E10
_08004E04:
	movs r0, #0
	b _08004EE0
	.align 2, 0
_08004E08: .4byte gMapLayer_03003910
_08004E0C: .4byte 0x03003BD0
_08004E10:
	ldr r0, _08004E64 @ =sub_08005278
	str r0, [r4, #0xc]
	ldr r0, _08004E68 @ =0x03003B9C
	str r0, [r4, #0x10]
	str r1, [r4, #0x20]
	movs r0, #0x50
	str r0, [r4, #8]
	str r1, [r4, #0x24]
	adds r0, r6, #0
	adds r0, #0x68
	strh r7, [r0]
	adds r0, #4
	mov r1, r8
	strh r1, [r0]
	ldr r1, _08004E6C @ =0x080FB0F8
	mov r0, r8
	lsls r4, r0, #2
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #5
	adds r4, r4, r0
	adds r1, #0x10
	adds r4, r4, r1
	ldr r0, [r4]
	bl GetDataRecord
	adds r5, r6, #0
	adds r5, #0x8c
	str r0, [r5]
	adds r1, r7, #0
	bl sub_080045C8
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08004E70
	ldr r0, [r5]
	adds r0, #0x10
	str r0, [r6, #0x50]
	b _08004E86
	.align 2, 0
_08004E64: .4byte sub_08005278
_08004E68: .4byte 0x03003B9C
_08004E6C: .4byte 0x080FB0F8
_08004E70:
	adds r4, r6, #0
_08004E72:
	ldr r0, [r5]
	adds r0, #0x10
	bl LZ77DecompressAlloc
	str r0, [r4, #0x50]
	bl WaitFrame
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08004E72
_08004E86:
	ldr r2, _08004EEC @ =gMapLayer_03003910
	ldr r3, [r2, #0x50]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #2
	ldrsh r0, [r3, r4]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r3, r0
	str r0, [r2, #0x54]
	adds r4, r2, #0
	cmp r7, #8
	bne _08004EBA
	ldr r0, _08004EF0 @ =0x080FB0F8
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, r8
	bne _08004EBA
	movs r0, #0x14
	strh r0, [r3, #2]
_08004EBA:
	ldrh r2, [r3]
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	strh r2, [r0]
	ldrh r0, [r3, #2]
	adds r2, r4, #0
	adds r2, #0x5a
	strh r0, [r2]
	str r1, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x5c
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08004EF4 @ =0x03003BD0
	bl CreateThread
	movs r0, #1
_08004EE0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004EEC: .4byte gMapLayer_03003910
_08004EF0: .4byte 0x080FB0F8
_08004EF4: .4byte 0x03003BD0
