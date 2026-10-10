	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08027828
sub_08027828: @ 0x08027828
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	bl sub_08001F98
	cmp r0, #0
	beq _08027926
	ldr r5, _08027848 @ =gUnknown_03006758
	ldr r0, [r5]
	cmp r0, #0xb3
	bls _0802784C
_08027844:
	movs r0, #0
	b _08027928
	.align 2, 0
_08027848: .4byte gUnknown_03006758
_0802784C:
	bl sub_08001F64
	cmp r0, #0
	beq _080278B8
	cmp r7, #1
	bne _080278FC
	bl sub_08007604
	cmp r0, #0
	bne _08027844
	ldr r7, _080278A4 @ =gUnknown_030064D8
	ldr r4, [r7]
	cmp r4, #0
	bne _08027844
	ldr r5, _080278A8 @ =gUnknown_03006788
	ldr r0, [r5]
	cmp r0, #0
	beq _08027844
	ldr r1, _080278AC @ =gPlayers
	movs r0, #0xd4
	muls r0, r6, r0
	adds r3, r0, r1
	movs r2, #0
	strh r4, [r3, #0xa]
	movs r0, #9
	strh r0, [r3, #0xc]
	movs r0, #0xc
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	adds r0, #0x54
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldrh r1, [r3, #0x10]
	ldr r0, _080278B0 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r3, #0x10]
	ldr r0, _080278B4 @ =gPlayerStats
	adds r0, #0x86
	strb r2, [r0]
	str r4, [r5]
	adds r0, r6, #1
	str r0, [r7]
	b _08027926
	.align 2, 0
_080278A4: .4byte gUnknown_030064D8
_080278A8: .4byte gUnknown_03006788
_080278AC: .4byte gPlayers
_080278B0: .4byte 0x0000FEFF
_080278B4: .4byte gPlayerStats
_080278B8:
	ldr r0, _08027934 @ =gUnknown_03006720
	ldr r4, [r0]
	movs r2, #0
	movs r1, #0
	ldr r0, [r5]
	cmp r2, r0
	bhs _080278E2
	adds r3, r0, #0
_080278C8:
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _080278DA
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	bne _080278DA
	adds r2, #1
_080278DA:
	adds r1, #1
	adds r4, #0xc
	cmp r1, r3
	blo _080278C8
_080278E2:
	cmp r2, #0
	bne _08027926
	ldr r2, _08027938 @ =gPlayers
	movs r0, #0xd4
	adds r1, r6, #0
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1, #0x10]
_080278FC:
	ldr r1, _08027934 @ =gUnknown_03006720
	ldr r3, _0802793C @ =gUnknown_03006758
	ldr r2, [r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r4, r1, r0
	adds r2, #1
	str r2, [r3]
	movs r0, #0
	strh r0, [r4, #8]
	movs r0, #1
	strh r0, [r4, #0xa]
	lsls r1, r7, #4
	movs r0, #0xd
	orrs r0, r1
	strb r0, [r4, #4]
	strb r6, [r4]
	mov r0, r8
	strb r0, [r4, #5]
_08027926:
	movs r0, #1
_08027928:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08027934: .4byte gUnknown_03006720
_08027938: .4byte gPlayers
_0802793C: .4byte gUnknown_03006758

	thumb_func_start sub_08027940
sub_08027940: @ 0x08027940
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	movs r2, #1
	ldr r0, _08027A20 @ =gUnknown_03006758
	ldr r3, [r0]
	mov ip, r0
	cmp r2, r3
	bhs _08027990
	ldr r0, _08027A24 @ =gUnknown_03006720
	ldr r1, [r0]
	mov r8, r0
	adds r6, r3, #0
	adds r3, r1, #0
	adds r3, #0x10
	adds r4, r1, #0
	adds r4, #0xc
	movs r7, #1
_08027966:
	adds r5, r4, #0
	ldrh r1, [r3, #6]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0802797C
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08027A3C
_0802797C:
	adds r3, #0xc
	adds r4, r5, #0
	adds r4, #0xc
	adds r2, #1
	cmp r2, r6
	blo _08027966
_08027988:
	mov r1, ip
	ldr r0, [r1]
	cmp r2, r0
	blo _08027A46
_08027990:
	movs r2, #1
	mov r4, ip
	ldr r3, [r4]
	cmp r2, r3
	bhs _080279D6
	ldr r0, _08027A24 @ =gUnknown_03006720
	ldr r1, [r0]
	mov r8, r0
	adds r6, r3, #0
	adds r3, r1, #0
	adds r3, #0x10
	adds r4, r1, #0
	adds r4, #0xc
	movs r7, #1
_080279AC:
	adds r5, r4, #0
	ldrh r1, [r3, #6]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080279C2
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #7
	beq _08027A32
_080279C2:
	adds r3, #0xc
	adds r4, r5, #0
	adds r4, #0xc
	adds r2, #1
	cmp r2, r6
	blo _080279AC
_080279CE:
	mov r5, ip
	ldr r0, [r5]
	cmp r2, r0
	blo _08027A46
_080279D6:
	movs r2, #1
	mov r6, ip
	ldr r3, [r6]
	cmp r2, r3
	bhs _08027A1C
	ldr r0, _08027A24 @ =gUnknown_03006720
	ldr r1, [r0]
	mov r8, r0
	adds r6, r3, #0
	adds r3, r1, #0
	adds r3, #0x10
	adds r4, r1, #0
	adds r4, #0xc
	movs r7, #1
_080279F2:
	adds r5, r4, #0
	ldrh r1, [r3, #6]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08027A08
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	beq _08027A28
_08027A08:
	adds r3, #0xc
	adds r4, r5, #0
	adds r4, #0xc
	adds r2, #1
	cmp r2, r6
	blo _080279F2
_08027A14:
	mov r7, ip
	ldr r0, [r7]
	cmp r2, r0
	blo _08027A46
_08027A1C:
	movs r0, #0
	b _08027A80
	.align 2, 0
_08027A20: .4byte gUnknown_03006758
_08027A24: .4byte gUnknown_03006720
_08027A28:
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	b _08027A14
_08027A32:
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	b _080279CE
_08027A3C:
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	b _08027988
_08027A46:
	cmp r2, #0
	beq _08027A66
	ldr r4, _08027A8C @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r3, r0, #2
_08027A52:
	ldr r1, [r4]
	adds r1, r3, r1
	adds r0, r1, #0
	subs r0, #0xc
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	subs r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08027A52
_08027A66:
	mov r7, r8
	ldr r1, [r7]
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r2, [r7]
	ldrh r1, [r2, #0x16]
	movs r0, #4
	ands r0, r1
	movs r1, #9
	orrs r0, r1
	strh r0, [r2, #0x16]
	movs r0, #1
_08027A80:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08027A8C: .4byte gUnknown_03006720

	thumb_func_start sub_08027A90
sub_08027A90: @ 0x08027A90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl GetMultiplayerId
	bl sub_08001E78
	bl GetMultiplayerId
	movs r1, #4
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #0xa
	mov r8, r0
_08027AB0:
	bl WaitFrame
	bl GetMultiplayerId
	bl sub_08001E78
	adds r6, r0, #0
	ldr r5, _08027AEC @ =gUnknown_03006720
	ldr r2, [r5]
	ldrh r1, [r2, #0xa]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	movs r4, #0
	cmp r0, #0
	beq _08027AD2
	adds r4, r2, #0
_08027AD2:
	cmp r4, #0
	bne _08027AD8
	b _08027E08
_08027AD8:
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xf
	bhi _08027AB0
	lsls r0, r0, #2
	ldr r1, _08027AF0 @ =_08027AF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027AEC: .4byte gUnknown_03006720
_08027AF0: .4byte _08027AF4
_08027AF4: @ jump table
	.4byte _08027B34 @ case 0
	.4byte _08027B34 @ case 1
	.4byte _08027B8C @ case 2
	.4byte _08027B8C @ case 3
	.4byte _08027B34 @ case 4
	.4byte _08027B8C @ case 5
	.4byte _08027B8C @ case 6
	.4byte _08027B8C @ case 7
	.4byte _08027C5C @ case 8
	.4byte _08027B8C @ case 9
	.4byte _08027B34 @ case 10
	.4byte _08027B34 @ case 11
	.4byte _08027B8C @ case 12
	.4byte _08027B8C @ case 13
	.4byte _08027B8C @ case 14
	.4byte _08027B8C @ case 15
_08027B34:
	ldr r0, [r4]
	str r0, [r6, #8]
	ldr r0, [r4, #4]
	str r0, [r6, #0xc]
	bl WaitFrame
	movs r2, #0
	movs r0, #2
	strh r0, [r4, #0xa]
	ldr r1, _08027B84 @ =gUnknown_03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _08027B54
	str r2, [r1]
_08027B54:
	movs r2, #0
	ldr r0, [r1]
	ldr r6, _08027B88 @ =gUnknown_03006720
	cmp r2, r0
	blo _08027B60
	b _08027DEA
_08027B60:
	mov ip, r6
	mov sb, r1
	movs r3, #0
_08027B66:
	mov r1, ip
	ldr r0, [r1]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	adds r3, #0xc
	adds r2, #1
	mov r1, sb
	ldr r0, [r1]
	cmp r2, r0
	blo _08027B66
	b _08027DEA
	.align 2, 0
_08027B84: .4byte gUnknown_03006758
_08027B88: .4byte gUnknown_03006720
_08027B8C:
	ldrh r0, [r4, #0xa]
	ldr r2, _08027C4C @ =0x0000FFFE
	ands r2, r0
	movs r1, #0
	strh r2, [r4, #0xa]
	movs r0, #8
	ands r0, r2
	movs r1, #2
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #0xa]
	movs r5, #0
	movs r7, #0
_08027BA6:
	ldrh r1, [r4, #0xa]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08027BC6
	ldr r0, [r4]
	str r0, [r6, #8]
	ldr r0, [r4, #4]
	str r0, [r6, #0xc]
	bl WaitFrame
	adds r0, r5, #0
	adds r5, #1
	cmp r0, r8
	bls _08027BA6
	movs r7, #1
_08027BC6:
	cmp r7, #0
	bne _08027CAA
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _08027C0C
	ldr r0, _08027C50 @ =0x069DBE17
	bl SignalEvent
	bl sub_08001F98
	cmp r0, #0
	beq _08027C0C
	ldr r3, _08027C54 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08027C0C
	ldr r1, _08027C58 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	strh r7, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xcc
	strb r0, [r1, #4]
	strb r2, [r1, #5]
	strb r2, [r1, #6]
	strb r2, [r1, #7]
_08027C0C:
	ldr r1, _08027C54 @ =gUnknown_03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _08027C1C
	movs r0, #0
	str r0, [r1]
_08027C1C:
	movs r2, #0
	ldr r0, [r1]
	ldr r6, _08027C58 @ =gUnknown_03006720
	cmp r2, r0
	blo _08027C28
	b _08027DEA
_08027C28:
	mov sb, r6
	mov ip, r1
	movs r3, #0
_08027C2E:
	mov r4, sb
	ldr r0, [r4]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	adds r3, #0xc
	adds r2, #1
	mov r5, ip
	ldr r0, [r5]
	cmp r2, r0
	blo _08027C2E
	b _08027DEA
	.align 2, 0
_08027C4C: .4byte 0x0000FFFE
_08027C50: .4byte 0x069DBE17
_08027C54: .4byte gUnknown_03006758
_08027C58: .4byte gUnknown_03006720
_08027C5C:
	bl sub_08001F64
	cmp r0, #0
	bne _08027D04
	ldr r0, [r4]
	str r0, [r6, #8]
	ldr r0, [r4, #4]
	str r0, [r6, #0xc]
	ldrh r0, [r4, #0xa]
	ldr r2, _08027CBC @ =0x0000FFFE
	ands r2, r0
	movs r1, #0
	strh r2, [r4, #0xa]
	movs r0, #8
	ands r0, r2
	movs r1, #2
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #0xa]
	movs r5, #0
	movs r7, #0
_08027C86:
	ldrh r1, [r4, #0xa]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08027CA6
	ldr r0, [r4]
	str r0, [r6, #8]
	ldr r0, [r4, #4]
	str r0, [r6, #0xc]
	bl WaitFrame
	adds r0, r5, #0
	adds r5, #1
	cmp r0, r8
	bls _08027C86
	movs r7, #1
_08027CA6:
	cmp r7, #0
	beq _08027CC0
_08027CAA:
	bl sub_08027940
	cmp r0, #0
	beq _08027CB4
	b _08027AB0
_08027CB4:
	movs r0, #1
	strh r0, [r4, #0xa]
	b _08027AB0
	.align 2, 0
_08027CBC: .4byte 0x0000FFFE
_08027CC0:
	ldr r1, _08027CFC @ =gUnknown_03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _08027CCE
	str r7, [r1]
_08027CCE:
	movs r2, #0
	ldr r0, [r1]
	ldr r6, _08027D00 @ =gUnknown_03006720
	cmp r2, r0
	blo _08027CDA
	b _08027DEA
_08027CDA:
	mov sb, r6
	mov ip, r1
	movs r3, #0
_08027CE0:
	mov r7, sb
	ldr r0, [r7]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	adds r3, #0xc
	adds r2, #1
	mov r1, ip
	ldr r0, [r1]
	cmp r2, r0
	blo _08027CE0
	b _08027DEA
	.align 2, 0
_08027CFC: .4byte gUnknown_03006758
_08027D00: .4byte gUnknown_03006720
_08027D04:
	ldr r5, [r4]
	lsls r5, r5, #0xc
	lsrs r5, r5, #0x14
	lsls r5, r5, #0xc
	ldrh r6, [r4, #2]
	lsrs r6, r6, #4
	lsls r6, r6, #0xc
	ldr r4, _08027D94 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r4, #0xd0
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r2, [r0, #4]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1a
	adds r0, r5, #0
	adds r1, r6, #0
	bl FindFieldItemNear
	adds r6, r0, #0
	bl PickUpFieldItem
	cmp r0, #0
	beq _08027DA8
	movs r7, #0
	ldr r5, [r6, #0x10]
	bl sub_08001F98
	cmp r0, #0
	beq _08027D8A
	ldr r4, _08027D98 @ =gUnknown_03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _08027D8A
	ldr r1, _08027D9C @ =gUnknown_03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r4, #0
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r7, [r2, #8]
	ldr r0, _08027DA0 @ =0x00000FFF
	ands r5, r0
	lsls r3, r5, #8
	ldr r0, [r2]
	ldr r1, _08027DA4 @ =0xFFF000FF
	ands r0, r1
	orrs r0, r3
	str r0, [r2]
	strb r4, [r2]
	ldr r0, [r6, #0x18]
	str r0, [r2, #4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #4]
_08027D8A:
	movs r0, #0x26
	bl PlaySE
	b _08027DB0
	.align 2, 0
_08027D94: .4byte gPlayers
_08027D98: .4byte gUnknown_03006758
_08027D9C: .4byte gUnknown_03006720
_08027DA0: .4byte 0x00000FFF
_08027DA4: .4byte 0xFFF000FF
_08027DA8:
	ldr r0, _08027DFC @ =0x0009000F
	movs r1, #0x1e
	bl sub_08027140
_08027DB0:
	ldr r1, _08027E00 @ =gUnknown_03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _08027DC0
	movs r0, #0
	str r0, [r1]
_08027DC0:
	movs r2, #0
	ldr r0, [r1]
	ldr r6, _08027E04 @ =gUnknown_03006720
	cmp r2, r0
	bhs _08027DEA
	mov sb, r6
	mov ip, r1
	movs r3, #0
_08027DD0:
	mov r4, sb
	ldr r0, [r4]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	adds r3, #0xc
	adds r2, #1
	mov r5, ip
	ldr r0, [r5]
	cmp r2, r0
	blo _08027DD0
_08027DEA:
	ldr r0, [r6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1, #0xa]
	b _08027AB0
	.align 2, 0
_08027DFC: .4byte 0x0009000F
_08027E00: .4byte gUnknown_03006758
_08027E04: .4byte gUnknown_03006720
_08027E08:
	bl sub_08001F98
	cmp r0, #0
	bne _08027E12
	b _08027AB0
_08027E12:
	ldr r3, _08027E3C @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bls _08027E1C
	b _08027AB0
_08027E1C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r5]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	strh r7, [r1, #0xa]
	strh r4, [r1, #8]
	ldrb r2, [r1, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #4]
	b _08027AB0
	.align 2, 0
_08027E3C: .4byte gUnknown_03006758

	thumb_func_start sub_08027E40
sub_08027E40: @ 0x08027E40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	movs r0, #0
	mov sb, r0
	add r4, sp, #0x54
	ldr r1, _08027E58 @ =0x0000FFFF
	adds r5, r1, #0
	b _08027E68
	.align 2, 0
_08027E58: .4byte 0x0000FFFF
_08027E5C:
	ldrh r0, [r4]
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	movs r2, #1
	add sb, r2
_08027E68:
	bl sub_08001EC4
	cmp sb, r0
	blo _08027E5C
_08027E70:
	movs r3, #1
	str r3, [sp, #0x60]
	movs r4, #0
	mov sb, r4
	bl _08028D92

_08027E7C:
	bl GetMultiplayerId
	movs r5, #1
	add r5, sb
	mov sl, r5
	cmp sb, r0
	bne _08027E8E
	bl _08028D90
_08027E8E:
	mov r0, sb
	bl sub_08001E78
	adds r6, r0, #0
	mov r7, sb
	lsls r0, r7, #4
	adds r4, r0, #0
	add r4, sp
	adds r4, #4
	ldr r2, [r6, #0xc]
	ldr r1, [r4, #0xc]
	str r0, [sp, #0x6c]
	cmp r2, r1
	bne _08027EDC
	ldr r1, [r6, #8]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _08027EBC
	add r2, sp, #0x44
	lsls r3, r7, #2
	adds r1, r2, r3
	movs r0, #1
	b _08027EF2
_08027EBC:
	add r2, sp, #0x44
	mov r0, sb
	lsls r0, r0, #2
	mov r8, r0
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r0, r6, #0
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldr r0, [r0]
	str r0, [r4, #0xc]
	adds r7, r2, #0
	mov r4, r8
	b _08027EF8
_08027EDC:
	adds r1, r4, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r4, #0xc]
	add r2, sp, #0x44
	mov r7, sb
	lsls r3, r7, #2
	adds r1, r2, r3
	movs r0, #0
_08027EF2:
	str r0, [r1]
	adds r7, r2, #0
	adds r4, r3, #0
_08027EF8:
	ldrb r1, [r6, #0xc]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	movs r2, #1
	add r2, sb
	mov sl, r2
	adds r2, r1, #0
	cmp r0, #0xf
	bls _08027F0E
	bl _08028D90
_08027F0E:
	lsls r0, r0, #2
	ldr r1, _08027F18 @ =_08027F1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027F18: .4byte _08027F1C
_08027F1C: @ jump table
	.4byte _08028D90 @ case 0
	.4byte _08028228 @ case 1
	.4byte _080281D0 @ case 2
	.4byte _08027F78 @ case 3
	.4byte _08027F5C @ case 4
	.4byte _08027FD6 @ case 5
	.4byte _080281A0 @ case 6
	.4byte _080282BC @ case 7
	.4byte _0802809C @ case 8
	.4byte _08027FFA @ case 9
	.4byte _08027F8C @ case 10
	.4byte _0802842C @ case 11
	.4byte _080284AC @ case 12
	.4byte _080287E4 @ case 13
	.4byte _0802896C @ case 14
	.4byte _08028CE4 @ case 15
_08027F5C:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r3, #1
	add r3, sb
	mov sl, r3
	cmp r0, #0
	beq _08027F6E
	bl _08028D90
_08027F6E:
	adds r0, r6, #0
	bl sub_0800E634
	bl _08028D90
_08027F78:
	adds r0, r6, #0
	bl sub_0800C7D4
	movs r0, #3
	bl sub_08027700
	bl sub_08027940
	bl _08028D8A
_08027F8C:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r5, #1
	add r5, sb
	mov sl, r5
	cmp r0, #0
	beq _08027F9E
	bl _08028D90
_08027F9E:
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0xc]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r7, sb
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	ldrb r4, [r6, #0xf]
	lsls r3, r4, #0x1b
	lsrs r3, r3, #0x1f
	lsrs r4, r4, #5
	str r4, [sp]
	bl sub_0800E74C
	cmp r0, #0
	beq _08027FC6
	bl _08028D90
_08027FC6:
	ldr r1, [sp, #0x6c]
	add r1, sp
	adds r1, #4
	movs r0, #0xff
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	bl _08028D90
_08027FD6:
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _08027FE6
	ldr r0, [r6, #0xc]
	lsrs r0, r0, #4
	bl sub_08020F24
_08027FE6:
	movs r0, #5
	bl sub_08027700
	bl sub_08027940
	movs r0, #1
	add r0, sb
	mov sl, r0
	bl _08028D90
_08027FFA:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r1, #1
	add r1, sb
	mov sl, r1
	cmp r0, #0
	bne _08028096
	ldrb r1, [r6, #8]
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	bl sub_08014D28
	cmp r0, #0
	bne _08028096
	ldrb r4, [r6, #8]
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08028078
	movs r4, #0
	b _0802803E
_08028026:
	ldr r1, _08028048 @ =gPlayers
	movs r0, #0xd4
	muls r0, r4, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0802804C
	adds r4, #1
_0802803E:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028026
	b _08028096
	.align 2, 0
_08028048: .4byte gPlayers
_0802804C:
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x14
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	ldr r2, _08028074 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	adds r3, r6, #0
	adds r3, #0xc
	ldrb r5, [r6, #8]
	movs r4, #0x7f
	ands r4, r5
	str r4, [sp]
	bl sub_0800FC70
	b _08028096
	.align 2, 0
_08028074: .4byte gMapLayer_03003910
_08028078:
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x14
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	adds r3, r6, #0
	adds r3, #0xc
	adds r2, r5, #0
	ands r2, r4
	str r2, [sp]
	movs r2, #0
	bl sub_0800FC70
_08028096:
	movs r0, #9
	bl _08028CD2
_0802809C:
	bl sub_08001F64
	movs r2, #1
	add r2, sb
	mov sl, r2
	cmp r0, #0
	bne _080280AE
	bl _08028D90
_080280AE:
	adds r0, r7, r4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _08028186
	ldrb r1, [r6, #8]
	movs r4, #0x7f
	adds r0, r4, #0
	ands r0, r1
	mov r1, sb
	bl sub_08014D5C
	str r0, [sp, #0x68]
	ldr r3, [sp, #0x60]
	cmp r3, #0
	beq _08028142
	cmp r0, #0
	beq _08028142
	ldrb r0, [r6, #8]
	ands r4, r0
	adds r7, r6, #0
	adds r7, #0xc
	bl sub_08001F98
	cmp r0, #0
	beq _08028138
	ldr r5, _0802811C @ =gUnknown_03006758
	ldr r2, [r5]
	cmp r2, #0xb3
	bhi _08028138
	ldr r1, _08028120 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r5]
	movs r0, #1
	strh r0, [r3, #0xa]
	mov r5, r8
	strh r5, [r3, #8]
	mov r0, sb
	strb r0, [r3]
	lsls r2, r4, #8
	ldr r0, [r3]
	ldr r1, _08028124 @ =0xFFF000FF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	cmp r7, #0
	beq _08028128
	ldr r0, [r6, #0xc]
	str r0, [r3, #4]
	b _0802812A
	.align 2, 0
_0802811C: .4byte gUnknown_03006758
_08028120: .4byte gUnknown_03006720
_08028124: .4byte 0xFFF000FF
_08028128:
	str r7, [r3, #4]
_0802812A:
	ldrb r0, [r3, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #7
	orrs r1, r0
	strb r1, [r3, #4]
_08028138:
	ldr r0, [sp, #0x68]
	mov r1, sb
	bl sub_08013E40
	b _08028186
_08028142:
	movs r5, #0
	bl sub_08001F98
	cmp r0, #0
	beq _08028186
	ldr r4, _08028194 @ =gUnknown_03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _08028186
	ldr r1, _08028198 @ =gUnknown_03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r5, [r2, #8]
	mov r1, sb
	strb r1, [r2]
	ldr r0, [r2]
	ldr r1, _0802819C @ =0xFFF000FF
	ands r0, r1
	str r0, [r2]
	str r5, [r2, #4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r2, #4]
_08028186:
	movs r2, #0
	str r2, [sp, #0x60]
	movs r3, #1
	add r3, sb
	mov sl, r3
	bl _08028D90
	.align 2, 0
_08028194: .4byte gUnknown_03006758
_08028198: .4byte gUnknown_03006720
_0802819C: .4byte 0xFFF000FF
_080281A0:
	ldr r0, [r6, #8]
	movs r1, #0x7f
	lsrs r0, r0, #8
	ands r0, r1
	bl sub_08014D28
	str r0, [sp, #0x68]
	ldrb r0, [r6, #8]
	cmp r0, #0
	bne _080281BC
	ldr r0, [sp, #0x68]
	bl sub_08013E20
	b _080281C2
_080281BC:
	ldr r0, [sp, #0x68]
	bl sub_08013E60
_080281C2:
	movs r0, #6
	bl sub_08027700
	bl sub_08027940
	bl _08028D8A
_080281D0:
	mov r5, sb
	cmp r5, #0
	bne _0802820A
	ldr r0, [r6, #0xc]
	lsrs r0, r0, #4
	ldr r1, _08028218 @ =gUnknown_0300671C
	ldr r1, [r1]
	cmp r0, r1
	bne _0802820A
	ldr r0, _0802821C @ =0x069DBE17
	bl IsAnyThreadWaitingOn
	cmp r0, #0
	beq _080281F2
	ldr r1, _08028220 @ =gUnknown_030066E8
	movs r0, #1
	str r0, [r1]
_080281F2:
	ldr r0, _08028224 @ =gUnknownThread_03006760
	bl IsThreadInList
	cmp r0, #0
	beq _0802820A
	ldr r0, _08028220 @ =gUnknown_030066E8
	ldr r0, [r0]
	cmp r0, #0
	beq _0802820A
	movs r0, #2
	bl sub_08027700
_0802820A:
	bl sub_08027940
	movs r7, #1
	add r7, sb
	mov sl, r7
	bl _08028D90
	.align 2, 0
_08028218: .4byte gUnknown_0300671C
_0802821C: .4byte 0x069DBE17
_08028220: .4byte gUnknown_030066E8
_08028224: .4byte gUnknownThread_03006760
_08028228:
	ldr r0, _080282B4 @ =gUnknown_03006720
	ldr r2, [r0]
	ldrh r1, [r2, #0xa]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0
	str r1, [sp, #0x64]
	cmp r0, #0
	beq _0802823E
	str r2, [sp, #0x64]
_0802823E:
	movs r2, #1
	add r2, sb
	mov sl, r2
	ldr r4, [sp, #0x64]
	cmp r4, #0
	bne _0802824E
	bl _08028D90
_0802824E:
	ldrb r1, [r4, #4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldr r0, [r6, #0xc]
	lsrs r0, r0, #4
	cmp r1, r0
	beq _08028260
	bl _08028D90
_08028260:
	ldrh r1, [r4, #0xa]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0802826E
	bl _08028D90
_0802826E:
	movs r0, #1
	mov r5, sb
	lsls r0, r5
	ldrh r1, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	movs r5, #0
	movs r4, #0
	ldr r7, [sp, #0x64]
	ldrh r1, [r7, #8]
	movs r2, #1
_08028284:
	adds r0, r1, #0
	asrs r0, r4
	ands r0, r2
	cmp r0, #0
	beq _08028290
	adds r5, #1
_08028290:
	adds r4, #1
	cmp r4, #3
	bls _08028284
	bl sub_08001EC4
	subs r0, #1
	cmp r5, r0
	bhs _080282A4
	bl _08028D90
_080282A4:
	ldr r0, [sp, #0x64]
	ldrh r1, [r0, #0xa]
	movs r0, #4
	orrs r0, r1
	ldr r1, [sp, #0x64]
	strh r0, [r1, #0xa]
	bl _08028D90
	.align 2, 0
_080282B4: .4byte gUnknown_03006720
_080282B8:
	str r2, [sp, #0x64]
	b _08028304
_080282BC:
	movs r0, #7
	bl sub_08027700
	ldr r0, _08028398 @ =gUnknown_03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _0802839C @ =gUnknown_03006758
	ldr r0, [r0]
	movs r4, #1
	add r4, sb
	mov sl, r4
	cmp r3, r0
	bhs _08028300
	movs r7, #0xb
	adds r4, r0, #0
	movs r5, #4
_080282DC:
	ldrh r1, [r2, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080282F8
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080282F8
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _080282B8
_080282F8:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _080282DC
_08028300:
	movs r5, #0
	str r5, [sp, #0x64]
_08028304:
	ldr r7, [sp, #0x64]
	cmp r7, #0
	bne _0802830E
	bl _08028D90
_0802830E:
	ldrb r4, [r6, #8]
	bl GetMultiplayerId
	cmp r4, r0
	beq _0802831C
	bl _08028D90
_0802831C:
	ldr r0, [r6, #8]
	movs r1, #0x7f
	lsrs r0, r0, #8
	ands r0, r1
	bl sub_08014D28
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08028400
	bl PickUpFieldItem
	adds r7, r0, #0
	cmp r7, #0
	beq _080283A4
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r5, r0, #0x14
	movs r0, #0x7f
	ands r5, r0
	movs r6, #0
	bl sub_08001F98
	cmp r0, #0
	beq _0802838E
	ldr r4, _0802839C @ =gUnknown_03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _0802838E
	ldr r1, _08028398 @ =gUnknown_03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r4, #0
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r6, [r2, #8]
	lsls r3, r5, #8
	ldr r0, [r2]
	ldr r1, _080283A0 @ =0xFFF000FF
	ands r0, r1
	orrs r0, r3
	str r0, [r2]
	strb r4, [r2]
	ldr r1, [sp, #0x68]
	ldr r0, [r1, #0x18]
	str r0, [r2, #4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #4]
_0802838E:
	movs r0, #0x26
	bl PlaySE
	b _08028400
	.align 2, 0
_08028398: .4byte gUnknown_03006720
_0802839C: .4byte gUnknown_03006758
_080283A0: .4byte 0xFFF000FF
_080283A4:
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r5, r0, #0x14
	movs r0, #0x7f
	ands r5, r0
	movs r6, #1
	bl sub_08001F98
	cmp r0, #0
	beq _080283F8
	ldr r4, _0802841C @ =gUnknown_03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _080283F8
	ldr r1, _08028420 @ =gUnknown_03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r4, #1
	strh r6, [r2, #0xa]
	strh r7, [r2, #8]
	lsls r3, r5, #8
	ldr r0, [r2]
	ldr r1, _08028424 @ =0xFFF000FF
	ands r0, r1
	orrs r0, r3
	str r0, [r2]
	strb r4, [r2]
	ldr r3, [sp, #0x68]
	ldr r0, [r3, #0x18]
	str r0, [r2, #4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #4]
_080283F8:
	ldr r0, _08028428 @ =0x0009000F
	movs r1, #0x1e
	bl sub_08027140
_08028400:
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _08028410
	bl _08028D90
_08028410:
	ldrh r1, [r4, #0xa]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4, #0xa]
	bl _08028D90
	.align 2, 0
_0802841C: .4byte gUnknown_03006758
_08028420: .4byte gUnknown_03006720
_08028424: .4byte 0xFFF000FF
_08028428: .4byte 0x0009000F
_0802842C:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r5, #1
	add r5, sb
	mov sl, r5
	cmp r0, #0
	beq _0802843E
	bl _08028D90
_0802843E:
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08028488
	cmp r0, #1
	bgt _08028454
	cmp r0, #0
	beq _0802845C
	bl _08028D90
_08028454:
	cmp r0, #2
	beq _08028498
	bl _08028D90
_0802845C:
	movs r4, #0
	b _0802847C
_08028460:
	ldrb r0, [r6, #0xc]
	lsrs r0, r0, #4
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802847A
	bl GetMultiplayerId
	cmp r0, r4
	bne _0802847A
	bl sub_08016F00
_0802847A:
	adds r4, #1
_0802847C:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028460
	bl _08028D90
_08028488:
	ldr r1, [r6, #0xc]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	mov r0, sb
	bl sub_08016C34
	bl _08028D90
_08028498:
	ldr r0, [r6, #0xc]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	ldrh r1, [r6, #0xe]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	bl sub_08016F44
	bl _08028D90
_080284AC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0xf
	bls _080284B6
	b _080287CE
_080284B6:
	lsls r0, r0, #2
	ldr r1, _080284C0 @ =_080284C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080284C0: .4byte _080284C4
_080284C4: @ jump table
	.4byte _08028770 @ case 0
	.4byte _08028794 @ case 1
	.4byte _080287A0 @ case 2
	.4byte _080287B6 @ case 3
	.4byte _08028504 @ case 4
	.4byte _080287CE @ case 5
	.4byte _080287CE @ case 6
	.4byte _080287CE @ case 7
	.4byte _080287CE @ case 8
	.4byte _080287CE @ case 9
	.4byte _08028510 @ case 10
	.4byte _080287CE @ case 11
	.4byte _080287C8 @ case 12
	.4byte _080287CE @ case 13
	.4byte _080287CE @ case 14
	.4byte _080286AC @ case 15
_08028504:
	ldr r0, _0802850C @ =gUnknown_030063D8
	ldr r2, [r0]
	adds r2, #0x92
	b _08028690
	.align 2, 0
_0802850C: .4byte gUnknown_030063D8
_08028510:
	bl sub_08001F64
	cmp r0, #0
	bne _0802851A
	b _0802868A
_0802851A:
	ldr r0, _0802856C @ =gUnknown_030063D8
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x94
	ldrh r0, [r0]
	ldrb r2, [r6, #0xd]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08028532
	b _0802868A
_08028532:
	mov r8, r2
	ldr r7, [r3, #0x38]
	bl sub_080076A8
	cmp r0, #0
	beq _080285E4
	bl sub_08007638
	cmp r0, #0
	beq _08028578
	ldr r0, _08028570 @ =0x000F001A
	ldr r2, _08028574 @ =gPlayers
	movs r1, #0xd4
	mov r3, sb
	muls r3, r1, r3
	adds r1, r3, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0802864C
	.align 2, 0
_0802856C: .4byte gUnknown_030063D8
_08028570: .4byte 0x000F001A
_08028574: .4byte gPlayers
_08028578:
	mov r4, r8
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080285B0 @ =0x000F001B
	cmp r1, r0
	bne _080285B8
	adds r0, #1
	ldr r2, _080285B4 @ =gPlayers
	movs r1, #0xd4
	mov r5, sb
	muls r5, r1, r5
	adds r1, r5, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0802864C
	.align 2, 0
_080285B0: .4byte 0x000F001B
_080285B4: .4byte gPlayers
_080285B8:
	ldr r0, _080285DC @ =0x000F0019
	ldr r2, _080285E0 @ =gPlayers
	movs r1, #0xd4
	mov r3, sb
	muls r3, r1, r3
	adds r1, r3, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0802864C
	.align 2, 0
_080285DC: .4byte 0x000F0019
_080285E0: .4byte gPlayers
_080285E4:
	bl sub_08007638
	cmp r0, #0
	beq _08028620
	mov r4, r8
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _0802861C @ =gPlayers
	movs r1, #0xd4
	mov r5, sb
	muls r5, r1, r5
	adds r1, r5, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0802864C
	.align 2, 0
_0802861C: .4byte gPlayers
_08028620:
	mov r0, r8
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080286A0 @ =gPlayers
	movs r1, #0xd4
	mov r3, sb
	muls r3, r1, r3
	adds r1, r3, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
_0802864C:
	adds r5, r4, #0
	mov r4, r8
	lsls r2, r4, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	adds r1, r7, #0
	adds r1, #8
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0xf
	ldr r2, _080286A4 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	adds r3, r5, #0
	bl sub_0800FA74
	str r0, [sp, #0x68]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r7, [sp, #0x68]
	ldr r1, [r7]
	asrs r1, r1, #0xc
	ldr r2, [r7, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
_0802868A:
	ldr r0, _080286A8 @ =gUnknown_030063D8
	ldr r2, [r0]
	adds r2, #0x94
_08028690:
	movs r0, #1
	ldrb r6, [r6, #0xd]
	lsls r0, r6
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	b _080287CE
	.align 2, 0
_080286A0: .4byte gPlayers
_080286A4: .4byte gMapLayer_03003910
_080286A8: .4byte gUnknown_030063D8
_080286AC:
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _080286B6
	b _080287CE
_080286B6:
	ldr r4, _0802876C @ =gUnknown_030063D8
	ldr r1, [r4]
	adds r1, #0xac
	ldrb r0, [r6, #0xf]
	adds r1, r1, r0
	ldrb r3, [r6, #0xd]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r3
	movs r5, #0
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0xb4
	ldrb r3, [r6, #0xf]
	adds r1, r1, r3
	ldrb r0, [r6, #0xd]
	lsrs r0, r0, #4
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0xbc
	ldrb r7, [r6, #0xf]
	adds r0, r0, r7
	ldrb r1, [r6, #0xe]
	ands r2, r1
	strb r2, [r0]
	ldr r1, [r4]
	adds r1, #0xc4
	ldrb r0, [r6, #0xf]
	adds r1, r1, r0
	ldrb r0, [r6, #0xe]
	lsrs r0, r0, #4
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0xac
	ldrb r1, [r6, #0xf]
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08028714
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r0, r7, #0
	orrs r0, r1
	strb r0, [r2]
_08028714:
	ldr r0, [r4]
	adds r0, #0xb4
	ldrb r1, [r6, #0xf]
	adds r2, r0, r1
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08028730
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r0, r7, #0
	orrs r0, r1
	strb r0, [r2]
_08028730:
	ldr r0, [r4]
	adds r0, #0xbc
	ldrb r1, [r6, #0xf]
	adds r2, r0, r1
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0802874C
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r0, r7, #0
	orrs r0, r1
	strb r0, [r2]
_0802874C:
	ldr r0, [r4]
	adds r0, #0xc4
	ldrb r6, [r6, #0xf]
	adds r1, r0, r6
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _080287CE
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	orrs r0, r2
	strb r0, [r1]
	b _080287CE
	.align 2, 0
_0802876C: .4byte gUnknown_030063D8
_08028770:
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080287CE
	ldr r0, _08028790 @ =gUnknown_030063D8
	ldr r2, [r0]
	ldrb r1, [r6, #0xd]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r4, [r6, #0xe]
	adds r0, r0, r4
	adds r2, #0xcc
	adds r2, r2, r0
	ldrb r0, [r6, #0xf]
	strb r0, [r2]
	b _080287CE
	.align 2, 0
_08028790: .4byte gUnknown_030063D8
_08028794:
	ldr r0, _0802879C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa2
	b _080287BC
	.align 2, 0
_0802879C: .4byte gUnknown_030063D8
_080287A0:
	bl sub_08001F64
	cmp r0, #0
	bne _080287CE
	bl sub_08001F08
	cmp r0, #0
	bne _080287CE
	bl sub_080247D0
	b _080287CE
_080287B6:
	ldr r0, _080287C4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xa4
_080287BC:
	movs r1, #1
	strh r1, [r0]
	b _080287CE
	.align 2, 0
_080287C4: .4byte gUnknown_030063D8
_080287C8:
	ldr r0, _080287E0 @ =0x069DBE17
	bl SignalEvent
_080287CE:
	movs r0, #0xc
	bl sub_08027700
	bl sub_08027940
	movs r5, #1
	add r5, sb
	mov sl, r5
	b _08028D90
	.align 2, 0
_080287E0: .4byte 0x069DBE17
_080287E4:
	bl sub_08001F64
	movs r1, #1
	add r1, sb
	mov sl, r1
	cmp r0, #0
	bne _080287F4
	b _08028D90
_080287F4:
	ldrb r0, [r6, #0xc]
	lsrs r5, r0, #4
	cmp r5, #0
	beq _08028802
	cmp r5, #1
	beq _080288AC
	b _08028D90
_08028802:
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0802880C
	b _08028D90
_0802880C:
	ldr r0, _08028864 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x94
	ldrh r1, [r2]
	ldrb r4, [r6, #0xd]
	adds r0, r1, #0
	asrs r0, r4
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	bne _08028870
	adds r0, r7, #0
	lsls r0, r4
	orrs r1, r0
	strh r1, [r2]
	ldrb r4, [r6, #0xd]
	bl sub_08001F98
	cmp r0, #0
	bne _08028838
	b _08028D90
_08028838:
	ldr r3, _08028868 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bls _08028842
	b _08028D90
_08028842:
	ldr r1, _0802886C @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	strh r5, [r1, #8]
	strh r7, [r1, #0xa]
	movs r0, #0xe
	strb r0, [r1, #4]
	mov r2, sb
	strb r2, [r1]
	strb r4, [r1, #5]
	b _08028D90
	.align 2, 0
_08028864: .4byte gUnknown_030063D8
_08028868: .4byte gUnknown_03006758
_0802886C: .4byte gUnknown_03006720
_08028870:
	movs r6, #5
	bl sub_08001F98
	cmp r0, #0
	bne _0802887C
	b _08028D90
_0802887C:
	ldr r3, _080288A4 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bls _08028886
	b _08028D90
_08028886:
	ldr r1, _080288A8 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	strh r5, [r1, #8]
	strh r7, [r1, #0xa]
	movs r0, #0xe
	strb r0, [r1, #4]
	strb r6, [r1]
	strb r4, [r1, #5]
	b _08028D90
	.align 2, 0
_080288A4: .4byte gUnknown_03006758
_080288A8: .4byte gUnknown_03006720
_080288AC:
	ldr r0, _0802890C @ =gUnknown_03006788
	ldr r0, [r0]
	cmp r0, #0
	bne _080288BE
	ldr r0, _08028910 @ =gUnknown_03006718
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802891C
_080288BE:
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	bne _0802891C
	bl sub_080292D0
	bl sub_08001F98
	cmp r0, #0
	beq _080288FC
	ldr r3, _08028914 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _080288FC
	ldr r1, _08028918 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	strh r4, [r1, #8]
	movs r2, #1
	strh r5, [r1, #0xa]
	movs r0, #0x1e
	strb r0, [r1, #4]
	mov r3, sb
	strb r3, [r1]
	strb r2, [r1, #5]
_080288FC:
	ldr r1, _08028910 @ =gUnknown_03006718
	add r1, sb
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802890C @ =gUnknown_03006788
	str r2, [r0]
	b _08028D8A
	.align 2, 0
_0802890C: .4byte gUnknown_03006788
_08028910: .4byte gUnknown_03006718
_08028914: .4byte gUnknown_03006758
_08028918: .4byte gUnknown_03006720
_0802891C:
	ldr r0, _08028960 @ =gUnknown_03006718
	add r0, sb
	ldrb r4, [r0]
	movs r5, #1
	bl sub_08001F98
	movs r7, #1
	add r7, sb
	mov sl, r7
	cmp r0, #0
	bne _08028934
	b _08028D90
_08028934:
	ldr r3, _08028964 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bls _0802893E
	b _08028D90
_0802893E:
	ldr r1, _08028968 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r0, #0
	strh r0, [r1, #8]
	strh r5, [r1, #0xa]
	movs r0, #0x1e
	strb r0, [r1, #4]
	mov r0, sb
	strb r0, [r1]
	strb r4, [r1, #5]
	b _08028D90
	.align 2, 0
_08028960: .4byte gUnknown_03006718
_08028964: .4byte gUnknown_03006758
_08028968: .4byte gUnknown_03006720
_0802896C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08028986
	cmp r0, #1
	bne _0802897A
	b _08028B80
_0802897A:
	movs r1, #1
	add r1, sb
	mov sl, r1
	b _08028CD0
_08028982:
	str r2, [sp, #0x64]
	b _080289C8
_08028986:
	ldr r0, _08028A54 @ =gUnknown_03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08028A58 @ =gUnknown_03006758
	ldr r0, [r0]
	movs r4, #1
	add r4, sb
	mov sl, r4
	cmp r3, r0
	bhs _080289C4
	movs r7, #0xb
	adds r4, r0, #0
	movs r5, #4
_080289A0:
	ldrh r1, [r2, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080289BC
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080289BC
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	beq _08028982
_080289BC:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _080289A0
_080289C4:
	movs r5, #0
	str r5, [sp, #0x64]
_080289C8:
	ldr r7, [sp, #0x64]
	cmp r7, #0
	bne _080289D0
	b _08028CD0
_080289D0:
	ldr r0, _08028A5C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x94
	ldrh r5, [r0]
	ldrb r0, [r6, #0xd]
	asrs r5, r0
	movs r7, #1
	ands r5, r7
	cmp r5, #0
	beq _080289E6
	b _08028B64
_080289E6:
	ldrb r4, [r6, #8]
	bl GetMultiplayerId
	cmp r4, r0
	beq _080289F2
	b _08028B64
_080289F2:
	ldrb r4, [r6, #0xd]
	bl sub_08001F98
	cmp r0, #0
	beq _08028A24
	ldr r3, _08028A58 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028A24
	ldr r1, _08028A54 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	strh r5, [r1, #8]
	strh r7, [r1, #0xa]
	movs r0, #0xac
	strb r0, [r1, #4]
	strb r4, [r1, #5]
	strb r2, [r1, #6]
	strb r2, [r1, #7]
_08028A24:
	ldr r0, _08028A5C @ =gUnknown_030063D8
	ldr r3, [r0]
	adds r2, r3, #0
	adds r2, #0x94
	movs r0, #1
	ldrb r1, [r6, #0xd]
	lsls r0, r1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrb r6, [r6, #0xd]
	mov r8, r6
	ldr r7, [r3, #0x38]
	bl sub_080076A8
	cmp r0, #0
	beq _08028AA4
	bl sub_08007638
	cmp r0, #0
	beq _08028A64
	ldr r4, _08028A60 @ =0x000F001A
	b _08028A86
	.align 2, 0
_08028A54: .4byte gUnknown_03006720
_08028A58: .4byte gUnknown_03006758
_08028A5C: .4byte gUnknown_030063D8
_08028A60: .4byte 0x000F001A
_08028A64:
	mov r2, r8
	lsls r1, r2, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08028A7C @ =0x000F001B
	cmp r1, r0
	bne _08028A84
	ldr r4, _08028A80 @ =0x000F001C
	b _08028A86
	.align 2, 0
_08028A7C: .4byte 0x000F001B
_08028A80: .4byte 0x000F001C
_08028A84:
	ldr r4, _08028AA0 @ =0x000F0019
_08028A86:
	bl GetPlayerClass
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r5, sp, #0x5c
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_080130F4
	b _08028AF4
	.align 2, 0
_08028AA0: .4byte 0x000F0019
_08028AA4:
	bl sub_08007638
	cmp r0, #0
	beq _08028AD0
	mov r3, r8
	lsls r1, r3, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r4, sp, #0x5c
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _08028AF2
_08028AD0:
	mov r4, r8
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r4, sp, #0x5c
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
_08028AF2:
	adds r5, r4, #0
_08028AF4:
	bl sub_08001F64
	adds r4, r0, #0
	cmp r4, #0
	beq _08028B40
	mov r0, r8
	lsls r2, r0, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	adds r1, r7, #0
	adds r1, #8
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0xf
	ldr r2, _08028B3C @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	adds r3, r5, #0
	bl sub_0800FA74
	str r0, [sp, #0x68]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, [sp, #0x68]
	ldr r1, [r2]
	asrs r1, r1, #0xc
	ldr r2, [r2, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
	b _08028B64
	.align 2, 0
_08028B3C: .4byte gMapLayer_03003910
_08028B40:
	ldr r3, [sp, #0x68]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r1, r8
	lsls r3, r1, #1
	adds r1, r7, r3
	ldrh r1, [r1]
	lsls r1, r1, #3
	adds r2, r7, #0
	adds r2, #8
	adds r2, r2, r3
	ldrh r2, [r2]
	lsls r2, r2, #3
	str r4, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
_08028B64:
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	beq _08028B72
	b _08028CD0
_08028B72:
	ldrh r1, [r2, #0xa]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #0xa]
	b _08028CD0
_08028B7C:
	str r2, [sp, #0x64]
	b _08028BCC
_08028B80:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r3, #1
	add r3, sb
	mov sl, r3
	cmp r0, #0
	beq _08028B90
	b _08028CBC
_08028B90:
	ldr r0, _08028C94 @ =gUnknown_03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08028C98 @ =gUnknown_03006758
	ldr r0, [r0]
	cmp r3, r0
	bhs _08028BC8
	movs r7, #0xb
	adds r4, r0, #0
	movs r5, #4
_08028BA4:
	ldrh r1, [r2, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08028BC0
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08028BC0
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	beq _08028B7C
_08028BC0:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _08028BA4
_08028BC8:
	movs r4, #0
	str r4, [sp, #0x64]
_08028BCC:
	ldr r5, [sp, #0x64]
	cmp r5, #0
	bne _08028BD4
	b _08028CD0
_08028BD4:
	ldrb r4, [r6, #8]
	bl GetMultiplayerId
	cmp r4, r0
	bne _08028CBC
	ldr r4, _08028C9C @ =gUnknown_030064D8
	ldr r0, [r4]
	cmp r0, #0
	bne _08028CBC
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08028CBC
	ldr r7, _08028CA0 @ =gPlayers
	bl GetMultiplayerId
	movs r6, #0xd4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	beq _08028CA8
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08028CA8
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #7
	beq _08028CA8
	bl sub_08007544
	cmp r0, #0
	bne _08028CA8
	bl sub_08007510
	cmp r0, #0
	bne _08028CA8
	bl sub_080271D0
	cmp r0, #0
	bne _08028CA8
	bl sub_080077C0
	cmp r0, #0
	bne _08028CA8
	bl sub_080076E0
	adds r5, r0, #0
	cmp r5, #0
	bne _08028CA8
	bl sub_080292D0
	bl GetMultiplayerId
	adds r0, #1
	str r0, [r4]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r4, #0
	strh r5, [r0, #0xa]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #9
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xc
	strh r1, [r0, #0xe]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x54
	strh r5, [r0]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x56
	strh r5, [r0]
	ldr r0, _08028CA4 @ =gPlayerStats
	adds r0, #0x86
	strb r4, [r0]
	b _08028CBC
	.align 2, 0
_08028C94: .4byte gUnknown_03006720
_08028C98: .4byte gUnknown_03006758
_08028C9C: .4byte gUnknown_030064D8
_08028CA0: .4byte gPlayers
_08028CA4: .4byte gPlayerStats
_08028CA8:
	bl GetMultiplayerId
	ldr r2, _08028CDC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08028CE0 @ =0x0000FEFF
	ands r0, r2
	strh r0, [r1, #0x10]
_08028CBC:
	ldr r7, [sp, #0x64]
	ldrb r0, [r7, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	bne _08028CD0
	ldrh r1, [r7, #0xa]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #0xa]
_08028CD0:
	movs r0, #0xe

_08028CD2:
	bl sub_08027700
	bl sub_08027940
	b _08028D90
	.align 2, 0
_08028CDC: .4byte gPlayers
_08028CE0: .4byte 0x0000FEFF
_08028CE4:
	bl sub_08001F64
	cmp r0, #0
	beq _08028D80
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _08028D80
	add r0, sp, #0x54
	mov r2, sb
	lsls r1, r2, #1
	adds r2, r0, r1
	ldrb r1, [r6, #8]
	ldrh r0, [r2]
	cmp r0, r1
	beq _08028D80
	strh r1, [r2]
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x14
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	ldr r3, _08028D64 @ =gPlayers
	movs r2, #0xd4
	mov r4, sb
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r4, r2, r3
	ldr r2, [r4]
	ldrh r2, [r2, #4]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1a
	adds r5, r6, #0
	adds r5, #0xc
	adds r3, r5, #0
	bl sub_0800FA74
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08028D80
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _08028D68
	ldr r7, [sp, #0x68]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r1, [r7]
	asrs r1, r1, #0xc
	ldr r2, [r7, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
	b _08028D80
	.align 2, 0
_08028D64: .4byte gPlayers
_08028D68:
	ldr r1, [sp, #0x68]
	ldr r0, [r1, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #0xc
	ldr r3, [sp, #0x68]
	ldr r2, [r3, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
_08028D80:
	movs r0, #0xf
	bl sub_08027700
	bl sub_08027940
_08028D8A:
	movs r4, #1
	add r4, sb
	mov sl, r4
_08028D90:
	mov sb, sl

_08028D92:
	bl sub_08001EC4
	cmp sb, r0
	bhs _08028D9E
	bl _08027E7C
_08028D9E:
	ldr r1, _08028DAC @ =0x030066E4
	movs r0, #0
	str r0, [r1]
	bl WaitFrame
	bl _08027E70
	.align 2, 0
_08028DAC: .4byte 0x030066E4

	thumb_func_start sub_08028DB0
sub_08028DB0: @ 0x08028DB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r5, #1
	str r5, [r0]
	bl sub_08001F98
	cmp r0, #0
	bne _08028DCA
	b _08028F46
_08028DCA:
	bl GetMultiplayerId
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_08001F98
	cmp r0, #0
	beq _08028E04
	ldr r3, _08028E20 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028E04
	ldr r1, _08028E24 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r0, #0
	strh r0, [r1, #8]
	strh r5, [r1, #0xa]
	movs r0, #0xc
	strb r0, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xe
	strb r0, [r1, #6]
	strb r7, [r1, #7]
_08028E04:
	bl GetMultiplayerId
	ldr r4, _08028E28 @ =gUnknown_030063D8
	ldr r2, [r4]
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r2, #0xda
	adds r2, r2, r1
	strb r7, [r2]
	bl sub_08001F64
	cmp r0, #0
	beq _08028EDE
	b _08028E34
	.align 2, 0
_08028E20: .4byte gUnknown_03006758
_08028E24: .4byte gUnknown_03006720
_08028E28: .4byte gUnknown_030063D8
_08028E2C:
	ldr r0, _08028E3C @ =gUnknown_030066E8
	ldr r0, [r0]
	cmp r0, #0
	beq _08028EA8
_08028E34:
	movs r6, #0
	movs r4, #0
	movs r5, #0
	b _08028E54
	.align 2, 0
_08028E3C: .4byte gUnknown_030066E8
_08028E40:
	ldr r0, _08028EB4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xda
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, r7
	bne _08028E50
	adds r6, #1
_08028E50:
	adds r5, #0xf
	adds r4, #1
_08028E54:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028E40
	bl WaitFrame
	bl sub_08001EC4
	cmp r6, r0
	bne _08028E2C
	ldr r0, _08028EB8 @ =gUnknown_030066E8
	ldr r0, [r0]
	cmp r0, #0
	beq _08028EA8
	bl sub_08001F98
	cmp r0, #0
	beq _08028EA8
	ldr r3, _08028EBC @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028EA8
	ldr r1, _08028EC0 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xc
	strb r0, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xe
	strb r0, [r1, #6]
	movs r0, #0xff
	strb r0, [r1, #7]
_08028EA8:
	movs r4, #0
	ldr r7, _08028EB4 @ =gUnknown_030063D8
	movs r5, #0
	movs r6, #0
	b _08028ED0
	.align 2, 0
_08028EB4: .4byte gUnknown_030063D8
_08028EB8: .4byte gUnknown_030066E8
_08028EBC: .4byte gUnknown_03006758
_08028EC0: .4byte gUnknown_03006720
_08028EC4:
	ldr r0, [r7]
	adds r0, #0xda
	adds r0, r0, r5
	strb r6, [r0]
	adds r5, #0xf
	adds r4, #1
_08028ED0:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028EC4
	bl WaitFrame
	b _08028F46
_08028EDE:
	ldr r5, _08028F60 @ =gUnknown_030066E8
_08028EE0:
	bl WaitFrame
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0xda
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08028EF6
	ldr r0, [r5]
	cmp r0, #0
	bne _08028EE0
_08028EF6:
	movs r5, #0
	strb r5, [r1]
	bl GetMultiplayerId
	ldr r2, [r4]
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r2, #0xda
	adds r2, r2, r1
	strb r5, [r2]
	bl GetMultiplayerId
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_08001F98
	cmp r0, #0
	beq _08028F46
	ldr r3, _08028F64 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028F46
	ldr r1, _08028F68 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	strh r5, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xc
	strb r0, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xe
	strb r0, [r1, #6]
	strb r2, [r1, #7]
_08028F46:
	ldr r0, _08028F60 @ =gUnknown_030066E8
	movs r4, #0
	str r4, [r0]
	bl WaitFrame
	mov r0, r8
	str r4, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028F60: .4byte gUnknown_030066E8
_08028F64: .4byte gUnknown_03006758
_08028F68: .4byte gUnknown_03006720

	thumb_func_start sub_08028F6C
sub_08028F6C: @ 0x08028F6C
	push {r4, r5, r6, lr}
	bl sub_08001F64
	cmp r0, #0
	beq _08029008
	ldr r0, _08028FFC @ =gUnknown_03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08029000 @ =gUnknown_03006758
	ldr r0, [r0]
	cmp r3, r0
	bhs _08028FAE
	movs r6, #0xb
	adds r4, r0, #0
	movs r5, #4
_08028F8A:
	ldrh r1, [r2, #0xa]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08028FA6
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08028FA6
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	beq _08028FB0
_08028FA6:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _08028F8A
_08028FAE:
	movs r2, #0
_08028FB0:
	cmp r2, #0
	beq _08028FC2
	ldrh r0, [r2, #0xa]
	movs r1, #4
	orrs r1, r0
	strh r1, [r2, #0xa]
	ldr r0, _08029004 @ =0x069DBE17
	bl SignalEvent
_08028FC2:
	ldr r0, _08028FFC @ =gUnknown_03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08029000 @ =gUnknown_03006758
	ldr r0, [r0]
	cmp r3, r0
	bhs _0802900E
	movs r6, #0xb
	adds r4, r0, #0
	movs r5, #4
_08028FD6:
	ldrh r1, [r2, #0xa]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08028FF2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08028FF2
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	beq _08029010
_08028FF2:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _08028FD6
	b _0802900E
	.align 2, 0
_08028FFC: .4byte gUnknown_03006720
_08029000: .4byte gUnknown_03006758
_08029004: .4byte 0x069DBE17
_08029008:
	ldr r0, _08029018 @ =0x069DBE17
	bl SignalEvent
_0802900E:
	movs r2, #0
_08029010:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08029018: .4byte 0x069DBE17
