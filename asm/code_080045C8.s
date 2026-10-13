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
