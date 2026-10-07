	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start GameMain
GameMain: @ 0x08001970
	push {r4, lr}
	ldr r4, _080019CC @ =0x03003CA8
	movs r0, #1
	strh r0, [r4]
	bl sub_0800EC38
	bl sub_0802177C
	bl sub_08022A38
	bl sub_0800EE58
	bl sub_0800F174
	bl sub_08001DF8
	bl sub_08026AD0
	bl InitSaveFlash
	bl sub_08022AB4
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl StartSoundThread
	ldr r1, _080019D0 @ =0x03006878
	movs r0, #0
	str r0, [r1]
	ldrh r0, [r4]
	cmp r0, #0
	bne _080019D8
	ldr r1, _080019D4 @ =0x03003CA0
	movs r0, #0xd
	b _080019DC
	.align 2, 0
_080019CC: .4byte 0x03003CA8
_080019D0: .4byte 0x03006878
_080019D4: .4byte 0x03003CA0
_080019D8:
	ldr r1, _080019FC @ =0x03003CA0
	movs r0, #7
_080019DC:
	strh r0, [r1]
	bl sub_080022BC
	bl StartTitleMenu
	bl WaitFrame
	bl WaitFrame
_080019EE:
	bl WaitFrame
	bl sub_0800EC74
	bl sub_080041E0
	b _080019EE
	.align 2, 0
_080019FC: .4byte 0x03003CA0

	thumb_func_start sub_08001A00
sub_08001A00: @ 0x08001A00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	bl sub_08001504
	ldr r1, _08001A2C @ =0x03003140
	movs r0, #1
	str r0, [r1]
	ldr r1, _08001A30 @ =0x030030C4
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	movs r1, #0
	mov r0, sp
_08001A1E:
	stm r0!, {r1}
	adds r5, #1
	cmp r5, #3
	bls _08001A1E
	ldr r5, _08001A34 @ =0x030030C0
	ldr r4, _08001A30 @ =0x030030C4
	b _08001A5C
	.align 2, 0
_08001A2C: .4byte 0x03003140
_08001A30: .4byte 0x030030C4
_08001A34: .4byte 0x030030C0
_08001A38:
	ldr r0, [r4]
	str r0, [r5]
	ldr r0, _08001AB8 @ =0x030030B0
	ldr r1, _08001ABC @ =0x03003100
	bl sub_080015FC
	str r0, [r4]
	bl sub_08001848
	ldr r0, [r4]
	movs r1, #0xe0
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08001A5C
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
_08001A5C:
	ldr r0, [sp]
	cmp r0, #0x3b
	bhi _08001A74
	bl WaitFrame
	ldr r0, _08001AC0 @ =0x03003140
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08001A38
_08001A74:
	movs r0, #0
	str r0, [sp]
	ldr r4, _08001AC0 @ =0x03003140
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	bl GetMultiplayerId
	adds r7, r0, #0
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	bne _08001B4E
	ldr r0, _08001AC4 @ =0x030030C4
	mov r8, r0
	adds r6, r4, #0
_08001A9A:
	bl WaitFrame
	ldr r0, _08001AC8 @ =0x030030C0
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _08001AB8 @ =0x030030B0
	ldr r1, _08001ABC @ =0x03003100
	bl sub_080015FC
	mov r1, r8
	str r0, [r1]
	movs r5, #0
	mov r4, sp
	b _08001AFE
	.align 2, 0
_08001AB8: .4byte 0x030030B0
_08001ABC: .4byte 0x03003100
_08001AC0: .4byte 0x03003140
_08001AC4: .4byte 0x030030C4
_08001AC8: .4byte 0x030030C0
_08001ACC:
	cmp r5, r7
	beq _08001AFA
	movs r0, #1
	lsls r0, r5
	mov r2, r8
	ldr r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08001AE8
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08001AF8
_08001AE8:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	b _08001AFA
_08001AF8:
	str r0, [r4]
_08001AFA:
	adds r4, #4
	adds r5, #1
_08001AFE:
	bl sub_08001EC4
	cmp r5, r0
	blo _08001ACC
	movs r5, #0
	mov r4, sp
	b _08001B12
_08001B0C:
	str r0, [r4]
_08001B0E:
	adds r4, #4
	adds r5, #1
_08001B12:
	bl sub_08001EC4
	cmp r5, r0
	bhs _08001B3E
	cmp r5, r7
	beq _08001B0E
	ldr r0, [r4]
	cmp r0, #0x3c
	bls _08001B0E
	ldr r2, _08001B70 @ =0x03003140
	ldr r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08001B0C
	movs r0, #8
	orrs r1, r0
	str r1, [r2]
	movs r0, #0xfa
	lsls r0, r0, #5
	bl _08000400
_08001B3E:
	bl sub_08001848
	ldr r0, [r6]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08001A9A
_08001B4E:
	bl sub_0800185C
	ldr r1, _08001B70 @ =0x03003140
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r1]
	ldr r1, _08001B74 @ =0x030030C4
	movs r0, #0
	str r0, [r1]
	bl ThreadExit
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001B70: .4byte 0x03003140
_08001B74: .4byte 0x030030C4

	thumb_func_start sub_08001B78
sub_08001B78: @ 0x08001B78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _08001BAC @ =0x03003140
	ldr r2, [r1]
	lsrs r0, r2, #1
	movs r3, #1
	ands r0, r3
	mov sb, r1
	cmp r0, #0
	bne _08001B98
	b _08001DE8
_08001B98:
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _08001BB4
	ldr r0, _08001BB0 @ =0x030030C4
	ldr r0, [r0]
	lsrs r0, r0, #7
	ands r0, r3
	b _08001BB6
	.align 2, 0
_08001BAC: .4byte 0x03003140
_08001BB0: .4byte 0x030030C4
_08001BB4:
	movs r0, #1
_08001BB6:
	cmp r0, #0
	bne _08001BBC
	b _08001D1A
_08001BBC:
	movs r0, #0
	mov ip, r0
	mov r1, sb
	ldr r0, [r1]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001BF4
	movs r1, #0
	movs r2, #0
	ldr r0, _08001BF0 @ =0x030030C4
	movs r4, #0x80
	lsls r4, r4, #1
	ldr r3, [r0]
_08001BDA:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08001BE6
	adds r2, #1
_08001BE6:
	adds r1, #1
	cmp r1, #3
	bls _08001BDA
	b _08001BF6
	.align 2, 0
_08001BF0: .4byte 0x030030C4
_08001BF4:
	movs r2, #1
_08001BF6:
	adds r7, r2, #0
	movs r2, #1
	cmp r2, r7
	bhs _08001C64
	ldr r0, _08001C14 @ =0x03003140
	ldr r6, [r0]
	movs r0, #2
	ands r6, r0
_08001C06:
	cmp r6, #0
	beq _08001C24
	ldr r0, _08001C18 @ =REG_SIOCNT
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b _08001C26
	.align 2, 0
_08001C14: .4byte 0x03003140
_08001C18: .4byte REG_SIOCNT
_08001C1C:
	ldr r1, _08001C20 @ =0x030030B0
	b _08001C48
	.align 2, 0
_08001C20: .4byte 0x030030B0
_08001C24:
	movs r0, #0
_08001C26:
	movs r1, #0
	adds r5, r2, #1
	lsls r3, r2, #4
	ldr r4, _08001C3C @ =0x03003100
_08001C2E:
	cmp r2, r1
	bne _08001C40
	cmp r2, r0
	beq _08001C1C
	adds r1, r3, r4
	b _08001C48
	.align 2, 0
_08001C3C: .4byte 0x03003100
_08001C40:
	adds r1, #1
	cmp r1, #3
	bls _08001C2E
	movs r1, #0
_08001C48:
	ldrb r0, [r1, #8]
	cmp r0, #0x4f
	bne _08001C5E
	ldrb r0, [r1, #9]
	cmp r0, #0x4b
	bne _08001C5E
	ldrb r0, [r1, #0xa]
	cmp r0, r8
	bne _08001C5E
	movs r0, #1
	add ip, r0
_08001C5E:
	adds r2, r5, #0
	cmp r2, r7
	blo _08001C06
_08001C64:
	subs r0, r7, #1
	cmp ip, r0
	blo _08001CC2
	movs r3, #0
	mov r1, sb
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001C90
	ldr r0, _08001C84 @ =REG_SIOCNT
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r1, r0, #0x1e
	b _08001C92
	.align 2, 0
_08001C84: .4byte REG_SIOCNT
_08001C88:
	ldr r1, _08001C8C @ =0x030030B0
	b _08001CB0
	.align 2, 0
_08001C8C: .4byte 0x030030B0
_08001C90:
	movs r1, #0
_08001C92:
	movs r0, #0
	ldr r2, _08001CA4 @ =0x03003100
_08001C96:
	cmp r3, r0
	bne _08001CA8
	cmp r0, r1
	beq _08001C88
	lsls r0, r0, #4
	adds r1, r0, r2
	b _08001CB0
	.align 2, 0
_08001CA4: .4byte 0x03003100
_08001CA8:
	adds r0, #1
	cmp r0, #3
	bls _08001C96
	movs r1, #0
_08001CB0:
	movs r0, #0x4e
	strb r0, [r1, #8]
	movs r0, #0x4f
	strb r0, [r1, #9]
	movs r0, #0x53
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	movs r0, #0
	b _08001DEA
_08001CC2:
	movs r3, #0
	mov r1, sb
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001CE8
	ldr r0, _08001CDC @ =REG_SIOCNT
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r1, r0, #0x1e
	b _08001CEA
	.align 2, 0
_08001CDC: .4byte REG_SIOCNT
_08001CE0:
	ldr r1, _08001CE4 @ =0x030030B0
	b _08001D08
	.align 2, 0
_08001CE4: .4byte 0x030030B0
_08001CE8:
	movs r1, #0
_08001CEA:
	movs r0, #0
	ldr r2, _08001CFC @ =0x03003100
_08001CEE:
	cmp r3, r0
	bne _08001D00
	cmp r0, r1
	beq _08001CE0
	lsls r0, r0, #4
	adds r1, r0, r2
	b _08001D08
	.align 2, 0
_08001CFC: .4byte 0x03003100
_08001D00:
	adds r0, #1
	cmp r0, #3
	bls _08001CEE
	movs r1, #0
_08001D08:
	movs r0, #0x4f
	strb r0, [r1, #8]
	movs r0, #0x4b
	strb r0, [r1, #9]
	movs r0, #0x53
	strb r0, [r1, #0xa]
	mov r0, r8
	strb r0, [r1, #0xb]
	b _08001DE8
_08001D1A:
	mov r1, sb
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001D34
	ldr r0, _08001D30 @ =REG_SIOCNT
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b _08001D36
	.align 2, 0
_08001D30: .4byte REG_SIOCNT
_08001D34:
	movs r0, #0
_08001D36:
	adds r3, r0, #0
	mov r1, sb
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001D5C
	ldr r0, _08001D50 @ =REG_SIOCNT
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r1, r0, #0x1e
	b _08001D5E
	.align 2, 0
_08001D50: .4byte REG_SIOCNT
_08001D54:
	ldr r1, _08001D58 @ =0x030030B0
	b _08001D7C
	.align 2, 0
_08001D58: .4byte 0x030030B0
_08001D5C:
	movs r1, #0
_08001D5E:
	movs r0, #0
	ldr r2, _08001D70 @ =0x03003100
_08001D62:
	cmp r3, r0
	bne _08001D74
	cmp r0, r1
	beq _08001D54
	lsls r0, r0, #4
	adds r1, r0, r2
	b _08001D7C
	.align 2, 0
_08001D70: .4byte 0x03003100
_08001D74:
	adds r0, #1
	cmp r0, #3
	bls _08001D62
	movs r1, #0
_08001D7C:
	movs r0, #0x4f
	strb r0, [r1, #8]
	movs r0, #0x4b
	strb r0, [r1, #9]
	mov r0, r8
	strb r0, [r1, #0xa]
	movs r3, #0
	mov r1, sb
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001DAC
	ldr r0, _08001DA0 @ =REG_SIOCNT
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r1, r0, #0x1e
	b _08001DAE
	.align 2, 0
_08001DA0: .4byte REG_SIOCNT
_08001DA4:
	ldr r1, _08001DA8 @ =0x030030B0
	b _08001DCC
	.align 2, 0
_08001DA8: .4byte 0x030030B0
_08001DAC:
	movs r1, #0
_08001DAE:
	movs r0, #0
	ldr r2, _08001DC0 @ =0x03003100
_08001DB2:
	cmp r3, r0
	bne _08001DC4
	cmp r0, r1
	beq _08001DA4
	lsls r0, r0, #4
	adds r1, r0, r2
	b _08001DCC
	.align 2, 0
_08001DC0: .4byte 0x03003100
_08001DC4:
	adds r0, #1
	cmp r0, #3
	bls _08001DB2
	movs r1, #0
_08001DCC:
	ldrb r0, [r1, #8]
	cmp r0, #0x4f
	beq _08001DE8
	ldrb r0, [r1, #9]
	cmp r0, #0x4b
	beq _08001DE8
	ldrb r0, [r1, #0xa]
	cmp r0, #0x53
	beq _08001DE8
	ldrb r0, [r1, #0xb]
	cmp r0, r8
	beq _08001DE8
	movs r0, #0
	b _08001DEA
_08001DE8:
	movs r0, #1
_08001DEA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001DF8
sub_08001DF8: @ 0x08001DF8
	ldr r1, _08001E04 @ =0x03003140
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r1]
	bx lr
	.align 2, 0
_08001E04: .4byte 0x03003140

	thumb_func_start sub_08001E08
sub_08001E08: @ 0x08001E08
	push {r4, lr}
	ldr r4, _08001E38 @ =0x030030D0
	ldr r0, _08001E3C @ =sub_08001A00
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl CreateThread
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001E38: .4byte 0x030030D0
_08001E3C: .4byte sub_08001A00

	thumb_func_start sub_08001E40
sub_08001E40: @ 0x08001E40
	ldr r0, _08001E50 @ =0x03003140
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x17
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08001E50: .4byte 0x03003140

	thumb_func_start GetMultiplayerId
GetMultiplayerId: @ 0x08001E54
	ldr r0, _08001E64 @ =0x03003140
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08001E68
	movs r0, #0
	b _08001E70
	.align 2, 0
_08001E64: .4byte 0x03003140
_08001E68:
	ldr r0, _08001E74 @ =REG_SIOCNT
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
_08001E70:
	bx lr
	.align 2, 0
_08001E74: .4byte REG_SIOCNT

	thumb_func_start sub_08001E78
sub_08001E78: @ 0x08001E78
	adds r3, r0, #0
	ldr r0, _08001E90 @ =0x03003140
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001EA0
	ldr r0, _08001E94 @ =REG_SIOCNT
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b _08001EA2
	.align 2, 0
_08001E90: .4byte 0x03003140
_08001E94: .4byte REG_SIOCNT
_08001E98:
	ldr r0, _08001E9C @ =0x030030B0
	b _08001EC2
	.align 2, 0
_08001E9C: .4byte 0x030030B0
_08001EA0:
	movs r0, #0
_08001EA2:
	movs r1, #0
	ldr r2, _08001EB4 @ =0x03003100
_08001EA6:
	cmp r3, r1
	bne _08001EB8
	cmp r1, r0
	beq _08001E98
	adds r0, r2, #0
	b _08001EC2
	.align 2, 0
_08001EB4: .4byte 0x03003100
_08001EB8:
	adds r2, #0x10
	adds r1, #1
	cmp r1, #3
	bls _08001EA6
	movs r0, #0
_08001EC2:
	bx lr

	thumb_func_start sub_08001EC4
sub_08001EC4: @ 0x08001EC4
	push {r4, lr}
	ldr r0, _08001EF4 @ =0x03003140
	ldr r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001EFC
	movs r1, #0
	movs r2, #0
	ldr r0, _08001EF8 @ =0x030030C4
	movs r4, #0x80
	lsls r4, r4, #1
	ldr r3, [r0]
_08001EE0:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08001EEC
	adds r2, #1
_08001EEC:
	adds r1, #1
	cmp r1, #3
	bls _08001EE0
	b _08001EFE
	.align 2, 0
_08001EF4: .4byte 0x03003140
_08001EF8: .4byte 0x030030C4
_08001EFC:
	movs r2, #1
_08001EFE:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001F08
sub_08001F08: @ 0x08001F08
	ldr r0, _08001F18 @ =0x03003140
	ldr r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08001F1C
	movs r0, #0
	b _08001F22
	.align 2, 0
_08001F18: .4byte 0x03003140
_08001F1C:
	lsrs r0, r1, #3
	movs r1, #1
	ands r0, r1
_08001F22:
	bx lr

	thumb_func_start sub_08001F24
sub_08001F24: @ 0x08001F24
	ldr r0, _08001F30 @ =0x03003140
	ldr r1, [r0]
	movs r2, #4
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08001F30: .4byte 0x03003140

	thumb_func_start sub_08001F34
sub_08001F34: @ 0x08001F34
	ldr r0, _08001F44 @ =0x03003140
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08001F44: .4byte 0x03003140
_08001F48:
	.byte 0x03, 0x48, 0x01, 0x68, 0x02, 0x20, 0x08, 0x40
	.byte 0x00, 0x28, 0x03, 0xD1, 0x00, 0x20, 0x04, 0xE0, 0x40, 0x31, 0x00, 0x03, 0x08, 0x09, 0x01, 0x21
	.byte 0x08, 0x40, 0x70, 0x47

	thumb_func_start sub_08001F64
sub_08001F64: @ 0x08001F64
	ldr r0, _08001F74 @ =0x03003140
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08001F78
	movs r0, #1
	b _08001F82
	.align 2, 0
_08001F74: .4byte 0x03003140
_08001F78:
	ldr r0, _08001F84 @ =0x030030C4
	ldr r0, [r0]
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
_08001F82:
	bx lr
	.align 2, 0
_08001F84: .4byte 0x030030C4

	thumb_func_start sub_08001F88
sub_08001F88: @ 0x08001F88
	ldr r0, _08001F94 @ =0x03003140
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08001F94: .4byte 0x03003140

	thumb_func_start sub_08001F98
sub_08001F98: @ 0x08001F98
	ldr r0, _08001FA4 @ =0x03003140
	ldr r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08001FA4: .4byte 0x03003140

	thumb_func_start sub_08001FA8
sub_08001FA8: @ 0x08001FA8
	push {lr}
	ldr r2, _08001FCC @ =0x03003140
	ldr r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08001FC6
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2]
	movs r0, #0xfa
	lsls r0, r0, #5
	bl SignalEvent
_08001FC6:
	pop {r0}
	bx r0
	.align 2, 0
_08001FCC: .4byte 0x03003140

	thumb_func_start sub_08001FD0
sub_08001FD0: @ 0x08001FD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x3c
	bl sub_0800F2DC
	cmp r0, #0
	bne _080020D0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #0
	bl DisableDisplayLayers
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0
	bl EnableDisplayLayers
	ldr r1, _08002070 @ =0xFFFF0000
	ldr r0, [sp, #0x38]
	ands r0, r1
	ldr r1, _08002074 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #0x38]
	add r4, sp, #0x38
	movs r0, #0
	adds r1, r4, #0
	bl SetBgCnt
	ldr r0, _08002078 @ =0x00001D03
	strh r0, [r4]
	movs r0, #1
	adds r1, r4, #0
	bl SetBgCnt
	movs r0, #0xc4
	bl GetDataRecord
	adds r5, r0, #0
	ldr r0, [r5]
	bl GetDataRecord
	adds r7, r0, #0
	adds r4, r5, #0
	ldm r4!, {r0}
	ldr r1, _0800207C @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r4, #0
	bl LZ77DecompressAlloc
	mov r8, r0
	ldr r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r4
	cmp r0, #0
	beq _08002094
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r4, r0
	cmp r4, #0
	beq _08002084
	ldr r1, _08002080 @ =0x06004000
	b _08002088
	.align 2, 0
_08002070: .4byte 0xFFFF0000
_08002074: .4byte 0x00001C08
_08002078: .4byte 0x00001D03
_0800207C: .4byte 0x0000FFFF
_08002080: .4byte 0x06004000
_08002084:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08002088:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r7, #0
	bl CpuFastSet
	b _080020A2
_08002094:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r7, #0
	bl CpuFastSet
_080020A2:
	ldr r1, _080020CC @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #2
	mov r0, r8
	bl CpuFastSet
	mov r0, r8
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl LoadPalette
	bl DisplayOn
	movs r0, #0x1e
	bl sub_0800F1EC
	b _080021BC
	.align 2, 0
_080020CC: .4byte 0x0600E800
_080020D0:
	movs r0, #1
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r0, _0800219C @ =0x00001C08
	add r4, sp, #0x38
	strh r0, [r4]
	movs r0, #0
	adds r1, r4, #0
	bl SetBgCnt
	ldr r0, _080021A0 @ =0x00001D03
	strh r0, [r4]
	movs r0, #1
	adds r1, r4, #0
	bl SetBgCnt
	movs r0, #0xc4
	bl GetDataRecord
	adds r5, r0, #0
	ldr r0, [r5]
	bl GetDataRecord
	adds r7, r0, #0
	ldm r5!, {r0}
	ldr r1, _080021A4 @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r5, #0
	bl LZ77DecompressAlloc
	mov r8, r0
	movs r5, #0
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r4, r7, #0
_08002142:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0xf
	bls _08002142
	ldr r1, _080021A8 @ =0x0600E800
	adds r2, r0, #0
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0xf
	bl LoadPalette
	ldr r1, _080021AC @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	bl sub_0800F2DC
	cmp r0, #2
	bne _080021B0
	movs r0, #6
	bl sub_0800F348
	b _080021BC
	.align 2, 0
_0800219C: .4byte 0x00001C08
_080021A0: .4byte 0x00001D03
_080021A4: .4byte 0x0000FFFF
_080021A8: .4byte 0x0600E800
_080021AC: .4byte gBgRegsBuffer
_080021B0:
	movs r0, #6
	bl sub_0800F308
	b _080021BC
_080021B8:
	bl WaitFrame
_080021BC:
	bl sub_0800F298
	cmp r0, #0
	beq _080021B8
	movs r4, #0
_080021C6:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x3b
	bls _080021C6
	movs r0, #0x3c
	bl sub_0800F244
	b _080021DC
_080021D8:
	bl WaitFrame
_080021DC:
	bl sub_0800F298
	cmp r0, #0
	beq _080021D8
	movs r0, #0xc3
	bl GetDataRecord
	adds r5, r0, #0
	ldr r0, [r5]
	bl GetDataRecord
	adds r7, r0, #0
	ldm r5!, {r0}
	ldr r1, _0800226C @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r5, #0
	bl LZ77DecompressAlloc
	mov r8, r0
	movs r5, #0
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r4, r7, #0
_08002216:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0xf
	bls _08002216
	ldr r1, _08002270 @ =0x0600E800
	adds r2, r0, #0
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl LoadPalette
	ldr r1, _08002274 @ =0x00100095
	add r0, sp, #4
	movs r2, #0
	movs r3, #0xf
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F1EC
	b _0800227C
	.align 2, 0
_0800226C: .4byte 0x0000FFFF
_08002270: .4byte 0x0600E800
_08002274: .4byte 0x00100095
_08002278:
	bl WaitFrame
_0800227C:
	bl sub_0800F298
	cmp r0, #0
	beq _08002278
	movs r4, #0
_08002286:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x3b
	bls _08002286
	movs r0, #0x3c
	bl sub_0800F244
	b _0800229C
_08002298:
	bl WaitFrame
_0800229C:
	bl sub_0800F298
	cmp r0, #0
	beq _08002298
	bl WaitFrame
	movs r0, #0x14
	bl SignalEvent
	add sp, #0x3c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080022BC
sub_080022BC: @ 0x080022BC
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r2, r0, #0
	ldr r0, _080022F0 @ =0x03003150
	ldr r1, _080022F4 @ =sub_08001FD0
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r2, #0
	str r2, [r0]
	str r2, [r0, #0x18]
	movs r1, #1
	str r1, [r0, #8]
	str r2, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_080022F0: .4byte 0x03003150
_080022F4: .4byte sub_08001FD0

	thumb_func_start TitleMenuThread
TitleMenuThread: @ 0x080022F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	bl WaitFrame
	ldr r2, _08002434 @ =gPlayerStats
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x1c
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08002438 @ =0xFFFFF07F
	ands r0, r1
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r2]
	ldr r1, _0800243C @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r2]
	movs r0, #1
	bl SetMusicEnabled
	mov r0, sp
	adds r0, #0x3c
	str r0, [sp, #0x44]
	add r1, sp, #0x38
	mov sl, r1
	movs r2, #0x3a
	add r2, sp
	mov sb, r2
_08002356:
	movs r0, #0x14
	bl _08000400
	ldr r0, _08002440 @ =gDispCnt
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800236C
	bl DisplayOn
_0800236C:
	bl sub_08001F88
	cmp r0, #0
	beq _08002378
	bl sub_08001E40
_08002378:
	movs r3, #0
	str r3, [sp, #0x40]
	movs r7, #0
	bl ClearCopyQueue
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	str r7, [sp]
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
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _08002444 @ =0xFFFF0000
	ldr r0, [sp, #0x3c]
	ands r0, r1
	ldr r1, _08002448 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #0x3c]
	movs r0, #0
	ldr r1, [sp, #0x44]
	bl SetBgCnt
	movs r1, #0xe8
	lsls r1, r1, #5
	add r0, sp, #0x3c
	strh r1, [r0]
	movs r0, #1
	ldr r1, [sp, #0x44]
	bl SetBgCnt
	ldr r0, _0800244C @ =gBgRegsBuffer
	strh r7, [r0]
	strh r7, [r0, #2]
	strh r7, [r0, #4]
	strh r7, [r0, #6]
	strh r7, [r0, #8]
	strh r7, [r0, #0xa]
	strh r7, [r0, #0xc]
	strh r7, [r0, #0xe]
	movs r0, #1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r4]
	bl GetDataRecord
	adds r6, r0, #0
	adds r5, r4, #0
	ldm r5!, {r0}
	ldr r1, _08002450 @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov r8, r0
	adds r0, r5, #0
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r4, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r4
	cmp r0, #0
	beq _08002468
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r4, r0
	cmp r4, #0
	beq _08002458
	ldr r1, _08002454 @ =0x06004000
	b _0800245C
	.align 2, 0
_08002434: .4byte gPlayerStats
_08002438: .4byte 0xFFFFF07F
_0800243C: .4byte 0xFFFE0FFF
_08002440: .4byte gDispCnt
_08002444: .4byte 0xFFFF0000
_08002448: .4byte 0x00001C08
_0800244C: .4byte gBgRegsBuffer
_08002450: .4byte 0x0000FFFF
_08002454: .4byte 0x06004000
_08002458:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0800245C:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r6, #0
	bl QueueCopy
	b _0800248A
_08002468:
	movs r4, #0
_0800246A:
	lsls r1, r4, #0xa
	adds r0, r6, r1
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	bl QueueCopy
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1f
	bls _0800246A
_0800248A:
	ldr r1, _080024C0 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r5, #0
	bl QueueCopy
	bl WaitFrame
	adds r0, r5, #0
	bl Free
	movs r0, #0
	mov r1, r8
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _080024C4 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08002518
	lsls r0, r0, #2
	ldr r1, _080024C8 @ =_080024CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080024C0: .4byte 0x0600E800
_080024C4: .4byte 0x03003CA8
_080024C8: .4byte _080024CC
_080024CC: @ jump table
	.4byte _080024E0 @ case 0
	.4byte _080024E8 @ case 1
	.4byte _080024F0 @ case 2
	.4byte _080024F8 @ case 3
	.4byte _0800250C @ case 4
_080024E0:
	ldr r1, _080024E4 @ =0x0010006C
	b _080024FA
	.align 2, 0
_080024E4: .4byte 0x0010006C
_080024E8:
	ldr r1, _080024EC @ =0x00100075
	b _080024FA
	.align 2, 0
_080024EC: .4byte 0x00100075
_080024F0:
	ldr r1, _080024F4 @ =0x00100074
	b _080024FA
	.align 2, 0
_080024F4: .4byte 0x00100074
_080024F8:
	ldr r1, _08002508 @ =0x00100082
_080024FA:
	add r0, sp, #4
	movs r2, #0xe
	movs r3, #1
	bl sub_08026ADC
	b _08002518
	.align 2, 0
_08002508: .4byte 0x00100082
_0800250C:
	ldr r1, _08002534 @ =0x0010008C
	add r0, sp, #4
	movs r2, #0xe
	movs r3, #1
	bl sub_08026ADC
_08002518:
	bl sub_08021804
	bl WaitFrame
	bl WaitFrame
	bl sub_0800F2DC
	cmp r0, #0
	bne _0800253C
	movs r0, #0x1e
	bl sub_0800F1EC
	b _08002542
	.align 2, 0
_08002534: .4byte 0x0010008C
_08002538:
	movs r7, #1
	b _08002632
_0800253C:
	movs r0, #0x1e
	bl sub_0800F348
_08002542:
	ldr r4, _0800257C @ =0x030031A8
	movs r0, #0
	str r0, [r4]
	movs r3, #1
	mov r8, r3
	movs r6, #0
	mov r0, sl
	strh r6, [r0]
	mov r1, sb
	strh r6, [r1]
	movs r0, #0
	bl PlaySE
	movs r5, #1
_0800255E:
	cmp r6, #0
	beq _080025BC
	ldr r0, _08002580 @ =gKeysRepeat
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08002584
	movs r2, #0
	str r2, [sp, #0x40]
	movs r0, #0xe
	bl PlaySE
	str r5, [r4]
	b _080025D4
	.align 2, 0
_0800257C: .4byte 0x030031A8
_08002580: .4byte gKeysRepeat
_08002584:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800259C
	movs r3, #0
	str r3, [sp, #0x40]
	movs r0, #0xe
	bl PlaySE
	ldr r0, [sp, #0x40]
	str r0, [r4]
	b _080025D4
_0800259C:
	ldr r0, _080025B8 @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080025D4
	movs r1, #0
	str r1, [sp, #0x40]
	movs r0, #0xf
	bl PlaySE
	movs r2, #0
	mov r8, r2
	b _080025D4
	.align 2, 0
_080025B8: .4byte gKeysNew
_080025BC:
	ldr r0, _08002604 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080025D4
	movs r6, #1
	movs r0, #0xf
	bl PlaySE
	movs r3, #0
	str r3, [sp, #0x40]
_080025D4:
	movs r1, #0xe1
	lsls r1, r1, #3
	ldr r0, [sp, #0x40]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0x40]
	cmp r0, r1
	bhi _08002538
	movs r0, #0xe1
	lsls r0, r0, #2
	cmp r2, r0
	bls _080025EE
	movs r6, #0
_080025EE:
	cmp r6, #0
	beq _08002608
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	movs r3, #0
	bl sub_08026B90
	b _08002628
	.align 2, 0
_08002604: .4byte gKeysNew
_08002608:
	str r5, [sp]
	add r0, sp, #4
	movs r1, #4
	mov r2, sl
	mov r3, sb
	bl sub_08026C40
	mov r3, sl
	ldrh r0, [r3]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	movs r3, #4
	bl sub_08026B90
_08002628:
	bl WaitFrame
	mov r0, r8
	cmp r0, #0
	bne _0800255E
_08002632:
	movs r0, #2
	bl FadeOutAllMusicPlayers
	movs r0, #2
	bl FadeOutBGM
	cmp r6, #0
	beq _0800264C
	movs r0, #0
	mov r1, sl
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2]
_0800264C:
	cmp r7, #0
	beq _08002658
	movs r0, #0x1e
	bl sub_0800F3DC
	b _0800265E
_08002658:
	movs r0, #0x1e
	bl sub_0800F244
_0800265E:
	ldr r5, _08002664 @ =0x030031A8
	mov r4, sl
	b _080026D4
	.align 2, 0
_08002664: .4byte 0x030031A8
_08002668:
	cmp r6, #0
	beq _080026B0
	cmp r7, #0
	bne _0800269E
	ldr r1, [r5]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	add r0, sp, #4
	adds r2, r4, #0
	mov r3, sb
	bl sub_08026C40
	ldr r3, [r5]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	bl sub_08026B90
	b _080026D0
_0800269E:
	ldrh r0, [r5]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	movs r3, #0
	bl sub_08026B90
	b _080026D0
_080026B0:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #4
	movs r1, #4
	adds r2, r4, #0
	mov r3, sb
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	movs r3, #4
	bl sub_08026B90
_080026D0:
	bl WaitFrame
_080026D4:
	bl sub_0800F298
	cmp r0, #0
	beq _08002668
	bl SndMPlayAllStop
	add r0, sp, #4
	bl sub_08026B64
	cmp r7, #0
	beq _080026F0
	ldr r1, _08002704 @ =0x030031A8
	movs r0, #2
	str r0, [r1]
_080026F0:
	ldr r0, _08002704 @ =0x030031A8
	ldr r0, [r0]
	cmp r0, #1
	beq _08002716
	cmp r0, #1
	blo _08002708
	cmp r0, #2
	beq _08002728
	b _08002356
	.align 2, 0
_08002704: .4byte 0x030031A8
_08002708:
	bl sub_08001F88
	cmp r0, #0
	beq _08002722
	bl sub_08001E40
	b _08002722
_08002716:
	bl sub_08001F88
	cmp r0, #0
	bne _08002722
	bl sub_08001E08
_08002722:
	bl StartSaveSelect
	b _08002356
_08002728:
	bl sub_08001F88
	cmp r0, #0
	beq _08002734
	bl sub_08001E40
_08002734:
	ldr r1, _08002740 @ =0x03006920
	movs r0, #0
	strb r0, [r1]
	bl sub_0804C9C4
	b _08002356
	.align 2, 0
_08002740: .4byte 0x03006920

	thumb_func_start StartTitleMenu
StartTitleMenu: @ 0x08002744
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	adds r2, r0, #0
	ldr r0, _08002774 @ =0x03003180
	ldr r1, _08002778 @ =TitleMenuThread
	str r1, [r0, #0xc]
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0
	str r1, [r0, #0x24]
	movs r1, #1
	str r1, [r0, #8]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_08002774: .4byte 0x03003180
_08002778: .4byte TitleMenuThread

	thumb_func_start sub_0800277C
sub_0800277C: @ 0x0800277C
	movs r1, #0
	ldr r0, _0800278C @ =0x030031A8
	ldr r0, [r0]
	cmp r0, #2
	bne _08002788
	movs r1, #1
_08002788:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_0800278C: .4byte 0x030031A8

	thumb_func_start sub_08002790
sub_08002790: @ 0x08002790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	movs r0, #1
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r0, _080027D8 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08002854
	lsls r0, r0, #2
	ldr r1, _080027DC @ =_080027E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080027D8: .4byte 0x03003CA8
_080027DC: .4byte _080027E0
_080027E0: @ jump table
	.4byte _080027F4 @ case 0
	.4byte _08002804 @ case 1
	.4byte _08002814 @ case 2
	.4byte _08002824 @ case 3
	.4byte _08002840 @ case 4
_080027F4:
	movs r0, #0xa3
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002800 @ =0x0010005F
	b _0800282E
	.align 2, 0
_08002800: .4byte 0x0010005F
_08002804:
	movs r0, #0xa2
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002810 @ =0x00100081
	b _0800282E
	.align 2, 0
_08002810: .4byte 0x00100081
_08002814:
	movs r0, #0xa6
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002820 @ =0x00100080
	b _0800282E
	.align 2, 0
_08002820: .4byte 0x00100080
_08002824:
	movs r0, #0xa5
	movs r1, #1
	bl sub_080060A0
	ldr r1, _0800283C @ =0x0010007F
_0800282E:
	add r0, sp, #4
	movs r2, #0
	movs r3, #3
	bl sub_08026ADC
	b _08002854
	.align 2, 0
_0800283C: .4byte 0x0010007F
_08002840:
	movs r0, #0xa9
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002884 @ =0x00100093
	add r0, sp, #4
	movs r2, #0
	movs r3, #3
	bl sub_08026ADC
_08002854:
	ldr r1, _08002888 @ =0xFFFF0000
	ldr r0, [sp, #0x3c]
	ands r0, r1
	movs r1, #0xec
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #0x3c]
	add r1, sp, #0x3c
	movs r0, #1
	bl SetBgCnt
	bl WaitFrame
	bl WaitFrame
	movs r0, #6
	bl sub_0800F308
	bl GetMultiplayerId
	cmp r0, #0
	bne _080028A6
	movs r0, #0
	b _080028AA
	.align 2, 0
_08002884: .4byte 0x00100093
_08002888: .4byte 0xFFFF0000
_0800288C:
	movs r0, #0xf
	bl PlaySE
	movs r0, #0
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0x47
	strb r0, [r4, #8]
	movs r0, #0x4f
	strb r0, [r4, #9]
_080028A2:
	movs r5, #1
	b _08002AF8
_080028A6:
	bl GetMultiplayerId
_080028AA:
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0x30
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	movs r0, #0
	strb r0, [r4, #0xc]
	mov r1, sp
	adds r1, #0x3a
	movs r2, #0
	strh r2, [r1]
	add r0, sp, #0x38
	strh r2, [r0]
	mov sb, r0
	b _080028E6
_080028CA:
	bl sub_08001EC4
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
_080028E6:
	bl sub_0800F298
	cmp r0, #0
	beq _080028CA
	ldr r0, _08002914 @ =0x03003F80
	mov sl, r0
_080028F2:
	bl GetMultiplayerId
	cmp r0, #0
	beq _080028FC
	b _08002A00
_080028FC:
	movs r7, #0
	ldr r4, _08002918 @ =0x08052B6C
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	str r7, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	movs r5, #1
	adds r6, r4, #4
	b _08002946
	.align 2, 0
_08002914: .4byte 0x03003F80
_08002918: .4byte 0x08052B6C
_0800291C:
	adds r0, r5, #0
	bl sub_08001E78
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x4f
	bne _08002942
	ldrb r0, [r4, #9]
	cmp r0, #0x4b
	bne _08002942
	adds r7, #1
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	movs r0, #0
	str r0, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
_08002942:
	adds r6, #4
	adds r5, #1
_08002946:
	bl sub_08001EC4
	cmp r5, r0
	blo _0800291C
	bl sub_08001F98
	cmp r0, #0
	beq _08002990
	bl sub_08001EC4
	subs r0, #1
	cmp r7, r0
	bne _08002990
	movs r4, #1
	str r4, [sp]
	add r0, sp, #4
	movs r1, #2
	mov r2, sb
	mov r3, sp
	adds r3, #0x3a
	bl sub_08026C40
	mov r1, sb
	ldrh r0, [r1]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #2
	bl sub_08026B90
	ldr r0, _080029BC @ =gKeysNew
	ldrh r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08002990
	b _0800288C
_08002990:
	movs r0, #0
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #8
	bl sub_080076A8
	cmp r0, #0
	beq _080029C8
	mov r1, sl
	ldr r0, [r1]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x16
	ldr r1, _080029C0 @ =0x03003D08
	str r0, [r1]
	strh r0, [r4, #8]
	ldr r1, _080029C4 @ =0x00001819
	b _080029D8
	.align 2, 0
_080029BC: .4byte gKeysNew
_080029C0: .4byte 0x03003D08
_080029C4: .4byte 0x00001819
_080029C8:
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r1, _080029F4 @ =0x03003D08
	str r0, [r1]
	strh r0, [r4, #8]
	ldr r1, _080029F8 @ =0x00001818
_080029D8:
	adds r0, r1, #0
	strh r0, [r5, #2]
_080029DC:
	ldr r0, _080029FC @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002ADA
	movs r0, #0x10
	bl PlaySE
	movs r5, #0
	b _08002AF8
	.align 2, 0
_080029F4: .4byte 0x03003D08
_080029F8: .4byte 0x00001818
_080029FC: .4byte gKeysNew
_08002A00:
	bl GetMultiplayerId
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	movs r0, #0x4f
	strb r0, [r4, #8]
	movs r0, #0x4b
	strb r0, [r4, #9]
	movs r0, #0
	bl sub_08001E78
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x47
	bne _08002A2C
	ldrb r0, [r4, #9]
	cmp r0, #0x4f
	bne _08002A2C
	b _080028A2
_08002A2C:
	movs r5, #0
	ldr r6, _08002A38 @ =0x08052B6C
	ldr r7, _08002A3C @ =0x03003D08
	mov r8, r6
	b _08002AD0
	.align 2, 0
_08002A38: .4byte 0x08052B6C
_08002A3C: .4byte 0x03003D08
_08002A40:
	adds r0, r5, #0
	bl sub_08001E78
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x4f
	bne _08002A68
	ldrb r0, [r4, #9]
	cmp r0, #0x4b
	bne _08002A68
	mov r0, r8
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	movs r0, #0
	str r0, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	b _08002ACA
_08002A68:
	cmp r5, #0
	bne _08002ACA
	ldrb r0, [r4, #0xa]
	adds r1, r0, #0
	cmp r1, #0x18
	bne _08002A9A
	ldrb r0, [r4, #0xb]
	cmp r0, #0x18
	bne _08002A9A
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	str r5, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	ldrb r1, [r4, #8]
	str r1, [r7]
	ldrb r0, [r4, #9]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r7]
	bl sub_08007694
	b _08002ACA
_08002A9A:
	cmp r5, #0
	bne _08002ACA
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bne _08002ACA
	ldrb r0, [r4, #0xb]
	cmp r0, #0x18
	bne _08002ACA
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	str r5, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	ldrb r1, [r4, #8]
	str r1, [r7]
	ldrb r0, [r4, #9]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r7]
	bl sub_08007680
_08002ACA:
	movs r1, #4
	add r8, r1
	adds r5, #1
_08002AD0:
	bl sub_08001EC4
	cmp r5, r0
	blo _08002A40
	b _080029DC
_08002ADA:
	bl sub_08001EC4
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	b _080028F2
_08002AF8:
	cmp r5, #1
	bne _08002B08
	movs r0, #6
	bl sub_0800F3A0
	bl WaitFrame
	b _08002B12
_08002B08:
	movs r0, #0xa
	bl sub_0800F244
_08002B0E:
	bl WaitFrame
_08002B12:
	bl sub_0800F298
	cmp r0, #0
	beq _08002B0E
	cmp r5, #0
	beq _08002B24
	cmp r5, #1
	beq _08002B3E
	b _08002B44
_08002B24:
	bl GetMultiplayerId
	bl sub_08001E78
	adds r4, r0, #0
	strb r5, [r4, #8]
	strb r5, [r4, #9]
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xb]
	movs r0, #0x14
	bl SignalEvent
	b _08002B44
_08002B3E:
	movs r0, #1
	bl sub_08007490
_08002B44:
	bl ThreadExit
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08002B58
sub_08002B58: @ 0x08002B58
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #1
	bl Alloc
	adds r2, r0, #0
	ldr r0, _08002B84 @ =0x030031B0
	ldr r1, _08002B88 @ =sub_08002790
	str r1, [r0, #0xc]
	adds r1, r2, #0
	adds r1, #0xfc
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #1
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x24]
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_08002B84: .4byte 0x030031B0
_08002B88: .4byte sub_08002790

	thumb_func_start GetDataRecord
GetDataRecord: @ 0x08002B8C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08002BA8 @ =0x080FC200
	lsls r0, r3, #4
	lsrs r4, r0, #0x14
	cmp r4, #0x17
	bhi _08002C2E
	lsls r0, r4, #2
	ldr r1, _08002BAC @ =_08002BB0
	adds r1, r0, r1
	ldr r1, [r1]
	adds r5, r0, #0
	mov pc, r1
	.align 2, 0
_08002BA8: .4byte 0x080FC200
_08002BAC: .4byte _08002BB0
_08002BB0: @ jump table
	.4byte _08002C22 @ case 0
	.4byte _08002C22 @ case 1
	.4byte _08002C22 @ case 2
	.4byte _08002C22 @ case 3
	.4byte _08002C22 @ case 4
	.4byte _08002C22 @ case 5
	.4byte _08002C22 @ case 6
	.4byte _08002C22 @ case 7
	.4byte _08002C22 @ case 8
	.4byte _08002C22 @ case 9
	.4byte _08002C22 @ case 10
	.4byte _08002C22 @ case 11
	.4byte _08002C22 @ case 12
	.4byte _08002C22 @ case 13
	.4byte _08002C22 @ case 14
	.4byte _08002C22 @ case 15
	.4byte _08002C22 @ case 16
	.4byte _08002C22 @ case 17
	.4byte _08002C10 @ case 18
	.4byte _08002C16 @ case 19
	.4byte _08002C1C @ case 20
	.4byte _08002C2E @ case 21
	.4byte _08002C22 @ case 22
	.4byte _08002C22 @ case 23
_08002C10:
	ldr r0, [r2, #0xc]
	adds r2, r2, r0
	b _08002C32
_08002C16:
	ldr r0, [r2, #0x4c]
	adds r2, r2, r0
	b _08002C32
_08002C1C:
	ldr r0, [r2, #0x14]
	adds r2, r2, r0
	b _08002C32
_08002C22:
	adds r0, r2, #0
	adds r0, #8
	adds r0, r0, r5
	ldr r0, [r0]
	adds r2, r2, r0
	b _08002C32
_08002C2E:
	movs r0, #0
	b _08002E0C
_08002C32:
	cmp r4, #0x17
	bls _08002C38
	b _08002E0A
_08002C38:
	ldr r0, _08002C40 @ =0x08002C44
	adds r0, r5, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002C40: .4byte 0x08002C44
_08002C44:
	.byte 0xA4, 0x2C, 0x00, 0x08, 0xC8, 0x2D, 0x00, 0x08, 0xA4, 0x2C, 0x00, 0x08
	.byte 0xC8, 0x2D, 0x00, 0x08, 0xBC, 0x2C, 0x00, 0x08, 0xC8, 0x2C, 0x00, 0x08, 0xD4, 0x2C, 0x00, 0x08
	.byte 0xE0, 0x2C, 0x00, 0x08, 0xEC, 0x2C, 0x00, 0x08, 0xF8, 0x2C, 0x00, 0x08, 0x80, 0x2D, 0x00, 0x08
	.byte 0x8C, 0x2D, 0x00, 0x08, 0x98, 0x2D, 0x00, 0x08, 0xA4, 0x2D, 0x00, 0x08, 0xB0, 0x2D, 0x00, 0x08
	.byte 0xBC, 0x2D, 0x00, 0x08, 0xB0, 0x2C, 0x00, 0x08, 0xC8, 0x2D, 0x00, 0x08, 0xD4, 0x2D, 0x00, 0x08
	.byte 0xD4, 0x2D, 0x00, 0x08, 0xD4, 0x2D, 0x00, 0x08, 0x0A, 0x2E, 0x00, 0x08, 0xEC, 0x2D, 0x00, 0x08
	.byte 0x08, 0x2E, 0x00, 0x08, 0x01, 0x48, 0x18, 0x40, 0x98, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x01, 0x48, 0x18, 0x40, 0x92, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40
	.byte 0x8C, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0x86, 0xE0, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0x80, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x01, 0x48, 0x18, 0x40, 0x7A, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40
	.byte 0x74, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x14, 0x1C, 0x05, 0x48, 0x00, 0x88, 0x05, 0x28
	.byte 0x00, 0xD9, 0x82, 0xE0, 0x80, 0x00, 0x03, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00
	.byte 0xA8, 0x3C, 0x00, 0x03, 0x18, 0x2D, 0x00, 0x08, 0x30, 0x2D, 0x00, 0x08, 0x44, 0x2D, 0x00, 0x08
	.byte 0x4C, 0x2D, 0x00, 0x08, 0x54, 0x2D, 0x00, 0x08, 0x5C, 0x2D, 0x00, 0x08, 0x64, 0x2D, 0x00, 0x08
	.byte 0x03, 0x48, 0x18, 0x40, 0x80, 0x00, 0x21, 0x1D, 0x09, 0x18, 0x08, 0x68, 0x22, 0x18, 0x64, 0xE0
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x48, 0x0E, 0xE0, 0x07, 0x01, 0x09, 0x00, 0x00, 0x48, 0x0A, 0xE0
	.byte 0x0E, 0x02, 0x09, 0x00, 0x00, 0x48, 0x06, 0xE0, 0x15, 0x03, 0x09, 0x00, 0x00, 0x48, 0x02, 0xE0
	.byte 0x1C, 0x04, 0x09, 0x00, 0x04, 0x48, 0x19, 0x18, 0x04, 0x48, 0x01, 0x40, 0x89, 0x00, 0x20, 0x1D
	.byte 0x40, 0x18, 0x00, 0x68, 0x22, 0x18, 0x48, 0xE0, 0x23, 0x05, 0x09, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x01, 0x48, 0x18, 0x40, 0x2A, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40
	.byte 0x24, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0x1E, 0xE0, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0x18, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x01, 0x48, 0x18, 0x40, 0x12, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40
	.byte 0x0C, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0xC0, 0x00, 0x06, 0xE0
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x04, 0x48, 0x18, 0x40, 0x40, 0x00, 0x01, 0x30, 0x80, 0x00, 0x11, 0x1D
	.byte 0x09, 0x18, 0x08, 0x68, 0x12, 0x18, 0x10, 0xE0, 0xFF, 0xFF, 0x00, 0x00, 0x04, 0x48, 0x18, 0x40
	.byte 0x41, 0x00, 0x09, 0x18, 0x89, 0x00, 0x09, 0x18, 0x49, 0x01, 0x02, 0x48, 0x0A, 0x18, 0x04, 0xE0
	.byte 0xFF, 0xFF, 0x00, 0x00, 0xD8, 0xAB, 0x0F, 0x08, 0x02, 0x4A
_08002E0A:
	adds r0, r2, #0
_08002E0C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08002E14:
	.byte 0x5C, 0xAB, 0x0F, 0x08

	thumb_func_start sub_08002E18
sub_08002E18: @ 0x08002E18
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r5, _08002E34 @ =0x080FC200
	adds r4, r5, #0
	ldr r0, _08002E38 @ =0x00000FFF
	ands r3, r0
	cmp r3, #0x17
	bhi _08002EBE
	lsls r0, r3, #2
	ldr r1, _08002E3C @ =_08002E40
	adds r1, r0, r1
	ldr r1, [r1]
	adds r6, r0, #0
	mov pc, r1
	.align 2, 0
_08002E34: .4byte 0x080FC200
_08002E38: .4byte 0x00000FFF
_08002E3C: .4byte _08002E40
_08002E40: @ jump table
	.4byte _08002EB2 @ case 0
	.4byte _08002EB2 @ case 1
	.4byte _08002EB2 @ case 2
	.4byte _08002EB2 @ case 3
	.4byte _08002EB2 @ case 4
	.4byte _08002EB2 @ case 5
	.4byte _08002EB2 @ case 6
	.4byte _08002EB2 @ case 7
	.4byte _08002EB2 @ case 8
	.4byte _08002EB2 @ case 9
	.4byte _08002EB2 @ case 10
	.4byte _08002EB2 @ case 11
	.4byte _08002EB2 @ case 12
	.4byte _08002EB2 @ case 13
	.4byte _08002EB2 @ case 14
	.4byte _08002EB2 @ case 15
	.4byte _08002EB2 @ case 16
	.4byte _08002EB2 @ case 17
	.4byte _08002EA0 @ case 18
	.4byte _08002EA6 @ case 19
	.4byte _08002EAC @ case 20
	.4byte _08002EBE @ case 21
	.4byte _08002EB2 @ case 22
	.4byte _08002EB2 @ case 23
_08002EA0:
	ldr r0, [r4, #0xc]
	adds r1, r5, r0
	b _08002EC2
_08002EA6:
	ldr r0, [r4, #0x4c]
	adds r1, r5, r0
	b _08002EC2
_08002EAC:
	ldr r0, [r4, #0x14]
	adds r1, r5, r0
	b _08002EC2
_08002EB2:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r6
	ldr r0, [r0]
	adds r1, r5, r0
	b _08002EC2
_08002EBE:
	movs r0, #0
	b _08002F40
_08002EC2:
	cmp r3, #0x17
	bhi _08002F3E
	ldr r0, _08002ED0 @ =0x08002ED4
	adds r0, r6, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002ED0: .4byte 0x08002ED4
_08002ED4:
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x3E, 0x2F, 0x00, 0x08, 0x38, 0x2F, 0x00, 0x08
	.byte 0x3C, 0x2F, 0x00, 0x08, 0x0A, 0x68, 0x02, 0xE0, 0x03, 0x22, 0x00, 0xE0, 0x01, 0x22
_08002F3E:
	adds r0, r2, #0
_08002F40:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002F48
sub_08002F48: @ 0x08002F48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	ldr r4, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	ldr r0, _08002F88 @ =0x030031E4
	ldr r4, [r0]
	cmp r4, #0x80
	bls _08002F8C
_08002F82:
	movs r0, #0
	b _080030B2
	.align 2, 0
_08002F88: .4byte 0x030031E4
_08002F8C:
	ldr r0, [r5, #4]
	adds r7, r5, r0
	ldr r0, [r5, #8]
	adds r1, r5, r0
	ldrh r5, [r5, #2]
	cmp r2, r5
	blo _08002F9C
	b _080030B0
_08002F9C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrh r0, [r2, #4]
	cmp r0, r3
	bhi _08002FAC
	b _080030B0
_08002FAC:
	ldr r0, [r2, #8]
	adds r0, r0, r2
	lsls r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r0, [r7, #8]
	adds r6, r7, r0
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	str r0, [sp, #0x10]
	lsls r1, r4, #3
	ldr r0, _080030C4 @ =gOamBuffer
	adds r3, r1, r0
	movs r0, #0
	mov r8, r0
	ldrh r1, [r7, #2]
	cmp r8, r1
	bhs _080030B0
	movs r1, #3
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	movs r2, #0x3f
	mov ip, r2
	ldr r0, _080030C8 @ =0x000003FF
	mov sb, r0
	ldr r1, _080030CC @ =0xFFFFFC00
	mov sl, r1
_08002FF0:
	ldrh r0, [r6]
	strh r0, [r3]
	ldrh r0, [r6, #2]
	strh r0, [r3, #2]
	ldrh r0, [r6, #4]
	strh r0, [r3, #4]
	ldrh r0, [r6, #2]
	lsls r5, r0, #0x17
	asrs r5, r5, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]

	non_word_aligned_thumb_func_start sub_08003006
sub_08003006: @ 0x08003006
	ldr r2, [sp, #4]
	adds r4, r4, r2
	ldr r0, [sp]
	adds r5, r5, r0
	ldrb r1, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #0x14]
	orrs r0, r1
	ldr r1, [sp, #8]
	lsls r2, r1, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #5]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bls _08003044
	ldrb r1, [r3, #1]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #3]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #3]
	movs r4, #0xa0
_08003044:
	adds r0, r4, #0
	adds r0, #0x40
	cmp r0, #0xe0
	bls _0800305E
	ldrb r1, [r3, #1]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #3]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #3]
	movs r4, #0xa0
_0800305E:
	ldr r2, _080030D0 @ =0x000001FF
	adds r0, r2, #0
	ands r5, r0
	ldrh r1, [r3, #2]
	ldr r0, _080030D4 @ =0xFFFFFE00
	ands r0, r1
	orrs r0, r5
	strh r0, [r3, #2]
	strb r4, [r3]
	ldrh r2, [r3, #4]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp, #0x10]
	subs r1, r1, r0
	mov r0, sb
	ands r1, r0
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	mov r2, sb
	ands r1, r2
	mov r2, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r1, _080030D8 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x80
	bls _080030A2
	b _08002F82
_080030A2:
	movs r2, #1
	add r8, r2
	adds r3, #8
	adds r6, #8
	ldrh r0, [r7, #2]
	cmp r8, r0
	blo _08002FF0
_080030B0:
	movs r0, #1
_080030B2:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080030C4: .4byte gOamBuffer
_080030C8: .4byte 0x000003FF
_080030CC: .4byte 0xFFFFFC00
_080030D0: .4byte 0x000001FF
_080030D4: .4byte 0xFFFFFE00
_080030D8: .4byte 0x030031E4

	thumb_func_start sub_080030DC
sub_080030DC: @ 0x080030DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, [r2, #4]
	adds r1, r1, r2
	mov sb, r1
	ldr r1, [r2, #8]
	adds r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1, #4]
	cmp r0, r3
	bhi _0800310C
	b _0800335A
_0800310C:
	ldr r0, [r1, #8]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r0, sb
	ldr r7, [r0, #8]
	add r7, sb
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	str r0, [sp, #4]
	movs r1, #0
	mov sl, r1
	mov r2, sb
	ldrh r2, [r2, #2]
	cmp sl, r2
	blo _0800313A
	b _0800335A
_0800313A:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
_08003144:
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x16
	ldr r2, [sp, #4]
	subs r1, r1, r2
	lsls r1, r1, #5
	ldr r3, [sp, #0x28]
	adds r5, r3, r1
	lsrs r0, r0, #0xc
	ldr r1, [sp]
	adds r4, r1, r0
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _080031EA
	cmp r0, #1
	bgt _0800316C
	cmp r0, #0
	beq _08003172
	b _0800334A
_0800316C:
	cmp r0, #2
	beq _08003256
	b _0800334A
_08003172:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	bne _0800317C
	b _080032C4
_0800317C:
	cmp r0, #1
	bgt _08003188
	cmp r0, #0
	bne _08003186
	b _0800329C
_08003186:
	b _0800334A
_08003188:
	cmp r0, #2
	beq _08003192
	cmp r0, #3
	beq _080031B0
	b _0800334A
_08003192:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	b _08003206
_080031B0:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	b _08003220
_080031EA:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _08003214
	cmp r0, #1
	bgt _080031FC
	cmp r0, #0
	beq _080032D2
	b _0800334A
_080031FC:
	cmp r0, #2
	beq _08003206
	cmp r0, #4
	beq _08003220
	b _0800334A
_08003206:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_08003214:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	b _0800334A
_08003220:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	b _0800334A
_08003256:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _08003272
	cmp r0, #1
	bgt _08003268
	cmp r0, #0
	beq _0800328E
	b _0800334A
_08003268:
	cmp r0, #2
	beq _080032A8
	cmp r0, #4
	beq _080032DE
	b _0800334A
_08003272:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_0800328E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_0800329C:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	b _0800334A
_080032A8:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_080032C4:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_080032D2:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	b _0800334A
_080032DE:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
_0800334A:
	movs r2, #1
	add sl, r2
	adds r7, #8
	mov r3, sb
	ldrh r3, [r3, #2]
	cmp sl, r3
	bhs _0800335A
	b _08003144
_0800335A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800336C
sub_0800336C: @ 0x0800336C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r4, [sp, #0x34]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _080033A4 @ =0x030031E4
	ldr r7, [r0]
	cmp r7, #0x80
	bhi _0800339E
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _080033AC
_0800339E:
	movs r0, #1
	rsbs r0, r0, #0
	b _080034F6
	.align 2, 0
_080033A4: .4byte 0x030031E4
_080033A8:
	movs r0, #0
	b _080034F6
_080033AC:
	ldr r2, _08003498 @ =0x030031E8
	ldr r0, [r2]
	mov sl, r0
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov ip, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add ip, r0
	mov r1, ip
	ldr r0, [r1, #8]
	adds r6, r1, r0
	lsls r1, r7, #3
	ldr r0, _0800349C @ =gOamBuffer
	adds r5, r1, r0
	movs r0, #0
	mov r8, r0
	mov sb, r0
	mov r1, ip
	ldrh r1, [r1, #2]
	cmp r8, r1
	bhs _080034E6
_080033F0:
	adds r7, r6, #0
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r2, [sp, #4]
	adds r4, r4, r2
	ldr r0, [sp]
	adds r3, r3, r0
	movs r1, #3
	ldr r0, [sp, #8]
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x30]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800344A
	cmp r4, #0xa0
	bgt _0800344A
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	bge _0800345C
_0800344A:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_0800345C:
	ldr r1, _080034A0 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r1, [r5, #2]
	ldr r0, _080034A4 @ =0xFFFFFE00
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5]
	mov r1, r8
	add r1, sl
	ldr r2, _080034A8 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #4]
	ldr r0, _080034AC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _080034B4
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	ldr r1, _080034B0 @ =0x080FB0B8
	adds r0, r0, r1
	b _080034BE
	.align 2, 0
_08003498: .4byte 0x030031E8
_0800349C: .4byte gOamBuffer
_080034A0: .4byte 0x000001FF
_080034A4: .4byte 0xFFFFFE00
_080034A8: .4byte 0x000003FF
_080034AC: .4byte 0xFFFFFC00
_080034B0: .4byte 0x080FB0B8
_080034B4:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	ldr r2, _08003508 @ =0x080FB0C8
	adds r0, r0, r2
_080034BE:
	ldr r0, [r0]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _0800350C @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x80
	bls _080034D6
	b _080033A8
_080034D6:
	movs r2, #1
	add sb, r2
	adds r5, #8
	adds r6, #8
	mov r0, ip
	ldrh r0, [r0, #2]
	cmp sb, r0
	blo _080033F0
_080034E6:
	ldr r1, _08003510 @ =0x030031E8
	ldr r0, [r1]
	add r0, r8
	str r0, [r1]
	mov r2, sl
	lsls r0, r2, #5
	ldr r1, _08003514 @ =0x06010000
	adds r0, r0, r1
_080034F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003508: .4byte 0x080FB0C8
_0800350C: .4byte 0x030031E4
_08003510: .4byte 0x030031E8
_08003514: .4byte 0x06010000

	thumb_func_start sub_08003518
sub_08003518: @ 0x08003518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r4, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _08003550 @ =0x030031E4
	ldr r6, [r0]
	cmp r6, #0x7f
	bhi _0800354A
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08003558
_0800354A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08003702
	.align 2, 0
_08003550: .4byte 0x030031E4
_08003554:
	movs r0, #0
	b _08003702
_08003558:
	ldr r0, _08003600 @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov sb, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r1, sb
	ldr r0, [r1, #8]
	add r0, sb
	mov r8, r0
	lsls r1, r6, #3
	ldr r0, _08003604 @ =gOamBuffer
	adds r4, r1, r0
	ldr r2, [sp, #0x14]
	lsls r0, r2, #5
	ldr r3, _08003608 @ =0x06010000
	adds r3, r0, r3
	str r3, [sp, #0xc]
	movs r6, #0
	mov sl, r6
	movs r0, #0
	str r0, [sp, #0x10]
	mov r1, sb
	ldrh r1, [r1, #2]
	cmp sl, r1
	blo _080035AC
	b _080036F2
_080035AC:
	mov ip, r8
	ldrh r2, [r4, #6]
	str r2, [sp, #0x18]
	mov r3, r8
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [r4]
	str r1, [r4, #4]
	ldrh r7, [r4, #2]
	lsls r3, r7, #0x17
	asrs r3, r3, #0x17
	movs r5, #0
	ldrsb r5, [r4, r5]
	ldr r0, [sp, #4]
	adds r5, r5, r0
	ldr r1, [sp]
	adds r3, r3, r1
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080035E6
	cmp r5, #0xa0
	bgt _080035E6
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r5, r0
	bge _0800360C
_080035E6:
	movs r0, #0xa0
	strb r0, [r4]
	ldrb r2, [r4, #1]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #1]
	ldrb r0, [r4, #3]
	ands r1, r0
	strb r1, [r4, #3]
	subs r4, #8
	b _080036DC
	.align 2, 0
_08003600: .4byte 0x030031E8
_08003604: .4byte gOamBuffer
_08003608: .4byte 0x06010000
_0800360C:
	ldr r2, [sp, #0xc]
	adds r2, r2, r6
	str r2, [sp, #0xc]
	movs r0, #3
	ldr r2, [sp, #8]
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r4, #5]
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x40]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r6, _0800367C @ =0x000001FF
	adds r0, r6, #0
	ands r3, r0
	ldr r1, _08003680 @ =0xFFFFFE00
	adds r0, r1, #0
	ands r0, r7
	orrs r0, r3
	strh r0, [r4, #2]
	strb r5, [r4]
	ldr r2, [sp, #0x14]
	add r2, sl
	ldr r3, _08003684 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r6, _08003688 @ =0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08003690
	ldr r0, _0800368C @ =0x080FB0B8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r6, [r1]
	mov r1, sl
	adds r0, r1, r6
	b _080036A0
	.align 2, 0
_0800367C: .4byte 0x000001FF
_08003680: .4byte 0xFFFFFE00
_08003684: .4byte 0x000003FF
_08003688: .4byte 0xFFFFFC00
_0800368C: .4byte 0x080FB0B8
_08003690:
	ldr r0, _08003714 @ =0x080FB0C8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r6, [r1]
	mov r2, sl
	adds r0, r2, r6
_080036A0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r3, sp
	ldrh r3, [r3, #0x18]
	strh r3, [r4, #6]
	ldr r1, _08003718 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _080036BA
	b _08003554
_080036BA:
	lsls r6, r6, #5
	mov r1, ip
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r1, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r2, [sp, #0x48]
	adds r0, r2, r0
	ldr r1, [sp, #0xc]
	adds r2, r6, #0
	bl QueueCopy
_080036DC:
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x10]
	adds r4, #8
	movs r0, #8
	add r8, r0
	mov r1, sb
	ldrh r1, [r1, #2]
	cmp r3, r1
	bhs _080036F2
	b _080035AC
_080036F2:
	ldr r0, _0800371C @ =0x030031E8
	ldr r1, [r0]
	add r1, sl
	str r1, [r0]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #5
	ldr r3, _08003720 @ =0x06010000
	adds r0, r0, r3
_08003702:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003714: .4byte 0x080FB0C8
_08003718: .4byte 0x030031E4
_0800371C: .4byte 0x030031E8
_08003720: .4byte 0x06010000

	thumb_func_start sub_08003724
sub_08003724: @ 0x08003724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r4, [sp, #0x50]
	ldr r6, [sp, #0x58]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r5, [sp, #0x68]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r7, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x1c]
	ldr r0, _08003778 @ =0x030031E4
	ldr r3, [r0]
	cmp r3, #0x7f
	bhi _08003770
	ldrh r0, [r6, #2]
	cmp r0, r2
	bhs _08003780
_08003770:
	movs r0, #1
	rsbs r0, r0, #0
	b _0800399E
	.align 2, 0
_08003778: .4byte 0x030031E4
_0800377C:
	movs r0, #0
	b _0800399E
_08003780:
	ldr r0, _08003898 @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r0, _0800389C @ =0x030031E0
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r6, #8]
	adds r1, r6, r1
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	mov r2, sb
	lsls r0, r2, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r1, r0
	lsls r1, r3, #3
	ldr r0, _080038A0 @ =gOamBuffer
	adds r5, r1, r0
	ldr r3, [sp, #0x24]
	lsls r0, r3, #5
	ldr r1, _080038A4 @ =0x06010000
	adds r1, r1, r0
	mov sl, r1
	movs r3, #0
	mov sb, r3
	movs r7, #0
	movs r0, #0
	str r0, [sp, #0x20]
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp sb, r1
	blo _080037DC
	b _08003964
_080037DC:
	adds r6, r2, #0
_080037DE:
	ldrh r2, [r5, #6]
	mov ip, r2
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r0, [sp, #0xc]
	adds r4, r4, r0
	ldr r1, [sp, #8]
	adds r3, r3, r1
	movs r0, #3
	ldr r2, [sp, #0x10]
	ands r2, r0
	lsls r2, r2, #2
	str r2, [sp, #0x2c]
	ldrb r1, [r5, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [sp, #0x2c]
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x54]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08003840
	cmp r4, #0xa0
	bgt _08003840
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	bge _08003852
_08003840:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_08003852:
	ldr r1, _080038A8 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r5, #2]
	ldr r2, _080038AC @ =0xFFFFFE00
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5]
	ldr r2, [sp, #0x24]
	add r2, sb
	ldr r3, _080038B0 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r5, #4]
	ldr r3, _080038B4 @ =0xFFFFFC00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #4]
	add sl, r7
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _080038BC
	ldr r0, _080038B8 @ =0x080FB0B8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r1, sb
	adds r0, r1, r7
	b _080038CC
	.align 2, 0
_08003898: .4byte 0x030031E8
_0800389C: .4byte 0x030031E0
_080038A0: .4byte gOamBuffer
_080038A4: .4byte 0x06010000
_080038A8: .4byte 0x000001FF
_080038AC: .4byte 0xFFFFFE00
_080038B0: .4byte 0x000003FF
_080038B4: .4byte 0xFFFFFC00
_080038B8: .4byte 0x080FB0B8
_080038BC:
	ldr r0, _080039B0 @ =0x080FB0C8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r2, sb
	adds r0, r2, r7
_080038CC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r5, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #1]
	movs r1, #3
	ldr r2, [sp, #0x28]
	ands r1, r2
	lsls r1, r1, #1
	ldrb r2, [r5, #3]
	subs r3, #0xb
	adds r0, r3, #0
	ands r2, r0
	orrs r2, r1
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #2
	movs r3, #1
	ands r0, r3
	ands r0, r3
	lsls r0, r0, #4
	subs r3, #0x12
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #3
	movs r3, #1
	ands r0, r3
	ands r0, r3
	lsls r0, r0, #5
	subs r3, #0x22
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #3]
	mov r0, ip
	strh r0, [r5, #6]
	ldr r1, _080039B4 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _08003930
	b _0800377C
_08003930:
	lsls r7, r7, #5
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r1, [sp, #0x5c]
	adds r0, r1, r0
	mov r1, sl
	adds r2, r7, #0
	bl QueueCopy
	ldr r2, [sp, #0x20]
	adds r2, #1
	str r2, [sp, #0x20]
	adds r5, #8
	adds r6, #8
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r2, r3
	bhs _08003964
	b _080037DE
_08003964:
	ldr r1, _080039B8 @ =gOamBuffer
	ldr r4, _080039BC @ =0x030031E0
	ldr r0, [r4]
	lsls r2, r0, #5
	adds r1, r2, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _080039C0 @ =0xFFFF0000
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	ldr r3, [sp, #0x14]
	orrs r0, r3
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r2
	ldr r2, [sp, #0x1c]
	orrs r0, r2
	str r0, [sp, #4]
	adds r1, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	ldr r1, _080039C4 @ =0x030031E8
	ldr r0, [r1]
	add r0, sb
	str r0, [r1]
	ldr r0, [r4]
_0800399E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080039B0: .4byte 0x080FB0C8
_080039B4: .4byte 0x030031E4
_080039B8: .4byte gOamBuffer
_080039BC: .4byte 0x030031E0
_080039C0: .4byte 0xFFFF0000
_080039C4: .4byte 0x030031E8

	thumb_func_start sub_080039C8
sub_080039C8: @ 0x080039C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r4, [sp, #0x50]
	ldr r7, [sp, #0x58]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r5, [sp, #0x68]
	ldr r6, [sp, #0x6c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x1c]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _08003A20 @ =0x030031E4
	ldr r0, [r4]
	cmp r0, #0x7f
	bhi _08003A1A
	ldrh r0, [r7, #2]
	cmp r0, r2
	bhs _08003A24
_08003A1A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08003CE0
	.align 2, 0
_08003A20: .4byte 0x030031E4
_08003A24:
	bl sub_0800F298
	movs r1, #0
	cmp r0, #0
	beq _08003A30
	adds r1, r6, #0
_08003A30:
	adds r6, r1, #0
	ldr r0, _08003B60 @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r0, _08003B64 @ =0x030031E0
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, [r7, #4]
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r7, #8]
	adds r1, r7, r1
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	mov r3, sl
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #3
	ldr r1, _08003B68 @ =gOamBuffer
	adds r4, r0, r1
	ldr r3, [sp, #0x24]
	lsls r0, r3, #5
	ldr r1, _08003B6C @ =0x06010000
	adds r1, r0, r1
	str r1, [sp, #0x20]
	movs r3, #0
	mov sl, r3
	movs r7, #0
	movs r0, #0
	mov sb, r0
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp sl, r1
	blo _08003A92
	b _08003C44
_08003A92:
	movs r3, #3
	ands r6, r3
	lsls r6, r6, #2
	str r6, [sp, #0x2c]
	adds r6, r2, #0
_08003A9C:
	ldrh r0, [r4, #6]
	mov ip, r0
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r4]
	str r1, [r4, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r5, #0
	ldrsb r5, [r6, r5]
	ldr r1, [sp, #0xc]
	adds r5, r5, r1
	ldr r2, [sp, #8]
	adds r3, r3, r2
	ldr r0, [sp, #0x10]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4, #5]
	subs r1, #0x10
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x54]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldrb r1, [r4, #1]
	subs r0, #0x1c
	ands r0, r1
	ldr r1, [sp, #0x2c]
	orrs r0, r1
	strb r0, [r4, #1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08003B02
	cmp r5, #0xa0
	bgt _08003B02
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r5, r0
	bge _08003B14
_08003B02:
	ldrb r2, [r4, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	ands r1, r0
	strb r1, [r4, #1]
	movs r5, #0xa0
_08003B14:
	ldr r2, _08003B70 @ =0x000001FF
	adds r0, r2, #0
	ands r3, r0
	ldrh r0, [r4, #2]
	ldr r2, _08003B74 @ =0xFFFFFE00
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r4, #2]
	strb r5, [r4]
	ldr r2, [sp, #0x24]
	add r2, sl
	ldr r3, _08003B78 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r3, _08003B7C @ =0xFFFFFC00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	ldr r0, [sp, #0x20]
	adds r0, r0, r7
	str r0, [sp, #0x20]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08003B84
	ldr r0, _08003B80 @ =0x080FB0B8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r1, sl
	adds r0, r1, r7
	b _08003B94
	.align 2, 0
_08003B60: .4byte 0x030031E8
_08003B64: .4byte 0x030031E0
_08003B68: .4byte gOamBuffer
_08003B6C: .4byte 0x06010000
_08003B70: .4byte 0x000001FF
_08003B74: .4byte 0xFFFFFE00
_08003B78: .4byte 0x000003FF
_08003B7C: .4byte 0xFFFFFC00
_08003B80: .4byte 0x080FB0B8
_08003B84:
	ldr r0, _08003CA4 @ =0x080FB0C8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r2, sl
	adds r0, r2, r7
_08003B94:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r0, [r4, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r6, #3]
	lsls r2, r1, #0x1c
	lsrs r2, r2, #0x1d
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r2, r0
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	orrs r2, r1
	ldr r3, [sp, #0x28]
	adds r2, r2, r3
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #1
	ldrb r3, [r4, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r3, r0
	orrs r3, r2
	ldr r2, [sp, #0x28]
	lsrs r0, r2, #2
	movs r1, #1
	ands r0, r1
	ands r0, r1
	lsls r0, r0, #4
	movs r2, #0x11
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r3, r1
	orrs r3, r0
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #3
	movs r2, #1
	ands r0, r2
	ands r0, r2
	lsls r0, r0, #5
	subs r2, #0x22
	adds r1, r2, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #3]
	mov r3, ip
	strh r3, [r4, #6]
	ldr r1, _08003CA8 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bhi _08003CB8
	lsls r7, r7, #5
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r1, [sp, #0x5c]
	adds r0, r1, r0
	ldr r1, [sp, #0x20]
	adds r2, r7, #0
	bl QueueCopy
	movs r2, #1
	add sb, r2
	adds r4, #8
	adds r6, #8
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp sb, r3
	bhs _08003C44
	b _08003A9C
_08003C44:
	ldr r6, _08003CAC @ =gOamBuffer
	ldr r2, _08003CB0 @ =0x030031E0
	ldr r0, [r2]
	lsls r1, r0, #5
	adds r6, r1, r6
	adds r0, #1
	str r0, [r2]
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08003CBC
	ldr r0, [r1, #4]
	adds r4, r1, r0
	movs r2, #0
	mov sb, r2
	ldrh r3, [r1]
	cmp sb, r3
	bhs _08003CD4
	ldr r7, _08003CB4 @ =0xFFFF0000
	mov r5, sp
_08003C6C:
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	ands r0, r7
	orrs r0, r1
	str r0, [r5, #4]
	adds r1, r6, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	adds r6, #0x20
	ldr r1, _08003CB0 @ =0x030031E0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	add sb, r0
	mov r1, r8
	ldrh r1, [r1]
	cmp sb, r1
	blo _08003C6C
	b _08003CD4
	.align 2, 0
_08003CA4: .4byte 0x080FB0C8
_08003CA8: .4byte 0x030031E4
_08003CAC: .4byte gOamBuffer
_08003CB0: .4byte 0x030031E0
_08003CB4: .4byte 0xFFFF0000
_08003CB8:
	movs r0, #0
	b _08003CE0
_08003CBC:
	mov r0, sp
	ldrh r2, [r0, #0x14]
	strh r2, [r0]
	ldrh r3, [r0, #0x18]
	strh r3, [r0, #2]
	ldrh r1, [r0, #0x1c]
	strh r1, [r0, #4]
	adds r1, r6, #6
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
_08003CD4:
	ldr r1, _08003CF0 @ =0x030031E8
	ldr r0, [r1]
	add r0, sl
	str r0, [r1]
	ldr r0, _08003CF4 @ =0x030031E0
	ldr r0, [r0]
_08003CE0:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003CF0: .4byte 0x030031E8
_08003CF4: .4byte 0x030031E0

	thumb_func_start sub_08003CF8
sub_08003CF8: @ 0x08003CF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, _08003D30 @ =0x030031E4
	ldr r6, [r0]
	cmp r6, #0x7f
	bhi _08003D2A
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08003D38
_08003D2A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08003F7C
	.align 2, 0
_08003D30: .4byte 0x030031E4
_08003D34:
	movs r0, #0
	b _08003F7C
_08003D38:
	ldr r0, _08003E3C @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, _08003E40 @ =0x030031E0
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	adds r7, r4, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r0, [r7, #8]
	adds r2, r7, r0
	lsls r1, r6, #3
	ldr r0, _08003E44 @ =gOamBuffer
	adds r5, r1, r0
	ldr r1, [sp, #0x18]
	lsls r0, r1, #5
	ldr r3, _08003E48 @ =0x06010000
	adds r3, r0, r3
	str r3, [sp, #0x14]
	movs r4, #0
	mov sl, r4
	mov r8, r4
	mov sb, r4
	ldrh r0, [r7, #2]
	cmp sl, r0
	blo _08003D8A
	b _08003F12
_08003D8A:
	adds r6, r2, #0
_08003D8C:
	ldrh r1, [r5, #6]
	mov ip, r1
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r2, [sp, #0xc]
	adds r4, r4, r2
	ldr r0, [sp, #8]
	adds r3, r3, r0
	movs r0, #3
	ldr r2, [sp, #0x10]
	ands r2, r0
	lsls r2, r2, #2
	str r2, [sp, #0x20]
	ldrb r1, [r5, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [sp, #0x20]
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x48]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08003DEE
	cmp r4, #0xa0
	bgt _08003DEE
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	bge _08003E00
_08003DEE:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_08003E00:
	ldr r1, _08003E4C @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r5, #2]
	ldr r2, _08003E50 @ =0xFFFFFE00
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5]
	ldr r2, [sp, #0x18]
	add r2, sl
	ldr r3, _08003E54 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r5, #4]
	ldr r4, _08003E58 @ =0xFFFFFC00
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #4]
	ldr r0, [sp, #0x14]
	add r0, r8
	str r0, [sp, #0x14]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08003E60
	ldr r1, _08003E5C @ =0x080FB0B8
	b _08003E62
	.align 2, 0
_08003E3C: .4byte 0x030031E8
_08003E40: .4byte 0x030031E0
_08003E44: .4byte gOamBuffer
_08003E48: .4byte 0x06010000
_08003E4C: .4byte 0x000001FF
_08003E50: .4byte 0xFFFFFE00
_08003E54: .4byte 0x000003FF
_08003E58: .4byte 0xFFFFFC00
_08003E5C: .4byte 0x080FB0B8
_08003E60:
	ldr r1, _08003F8C @ =0x080FB0C8
_08003E62:
	ldrb r2, [r6, #3]
	lsrs r0, r2, #6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	mov r0, sl
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r7]
	cmp r0, #0
	beq _08003ECC
	lsls r3, r2, #0x1c
	lsrs r3, r3, #0x1d
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r3, r0
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r3, r0
	ldr r1, [sp, #0x1c]
	adds r3, r3, r1
	movs r1, #3
	ands r1, r3
	lsls r1, r1, #1
	ldrb r2, [r5, #3]
	movs r4, #0xf
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r2, r0
	orrs r2, r1
	lsrs r1, r3, #2
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #4
	subs r4, #2
	adds r0, r4, #0
	ands r2, r0
	orrs r2, r1
	lsrs r3, r3, #3
	movs r0, #1
	ands r3, r0
	lsls r3, r3, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r2, r0
	orrs r2, r3
	strb r2, [r5, #3]
_08003ECC:
	mov r2, ip
	strh r2, [r5, #6]
	ldr r1, _08003F90 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _08003EDE
	b _08003D34
_08003EDE:
	mov r3, r8
	lsls r3, r3, #5
	mov r8, r3
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r4, [sp, #0x50]
	adds r0, r4, r0
	ldr r1, [sp, #0x14]
	mov r2, r8
	bl QueueCopy
	movs r0, #1
	add sb, r0
	adds r5, #8
	adds r6, #8
	ldrh r1, [r7, #2]
	cmp sb, r1
	bhs _08003F12
	b _08003D8C
_08003F12:
	ldr r6, _08003F94 @ =gOamBuffer
	ldrh r0, [r7]
	cmp r0, #0
	beq _08003F70
	ldr r2, _08003F98 @ =0x030031E0
	ldr r0, [r2]
	lsls r1, r0, #5
	adds r6, r1, r6
	adds r0, #1
	str r0, [r2]
	ldr r0, [r7, #4]
	adds r4, r7, r0
	movs r2, #0
	mov sb, r2
	ldrh r3, [r7]
	cmp sb, r3
	bhs _08003F70
	ldr r0, _08003F9C @ =0xFFFF0000
	mov r8, r0
	mov r5, sp
_08003F3A:
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	mov r2, r8
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	adds r1, r6, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	adds r6, #0x20
	ldr r1, _08003F98 @ =0x030031E0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r3, #1
	add sb, r3
	ldrh r0, [r7]
	cmp sb, r0
	blo _08003F3A
_08003F70:
	ldr r1, _08003FA0 @ =0x030031E8
	ldr r0, [r1]
	add r0, sl
	str r0, [r1]
	ldr r0, _08003F98 @ =0x030031E0
	ldr r0, [r0]
_08003F7C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003F8C: .4byte 0x080FB0C8
_08003F90: .4byte 0x030031E4
_08003F94: .4byte gOamBuffer
_08003F98: .4byte 0x030031E0
_08003F9C: .4byte 0xFFFF0000
_08003FA0: .4byte 0x030031E8

	thumb_func_start sub_08003FA4
sub_08003FA4: @ 0x08003FA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	ldr r0, [sp, #0x54]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _08003FE4 @ =0x030031E4
	ldr r6, [r0]
	cmp r6, #0x7f
	bhi _08003FDE
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08003FEC
_08003FDE:
	movs r0, #1
	rsbs r0, r0, #0
	b _080041B2
	.align 2, 0
_08003FE4: .4byte 0x030031E4
_08003FE8:
	movs r0, #0
	b _080041B2
_08003FEC:
	ldr r0, _080040A4 @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov sb, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r1, sb
	ldr r0, [r1, #8]
	add r0, sb
	mov r8, r0
	lsls r1, r6, #3
	ldr r0, _080040A8 @ =gOamBuffer
	adds r4, r1, r0
	ldr r2, [sp, #0x18]
	lsls r0, r2, #5
	ldr r5, _080040AC @ =0x06010000
	adds r5, r0, r5
	str r5, [sp, #0x10]
	movs r0, #0
	mov sl, r0
	movs r7, #0
	movs r1, #0
	str r1, [sp, #0x14]
	mov r2, sb
	ldrh r2, [r2, #2]
	cmp sl, r2
	blo _08004042
	b _080041A2
_08004042:
	mov r0, ip
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #2
	str r0, [sp, #0x20]
_0800404C:
	mov r0, r8
	str r0, [sp, #0xc]
	ldrh r1, [r4, #6]
	str r1, [sp, #0x1c]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4]
	str r1, [r4, #4]
	ldrh r2, [r4, #2]
	mov ip, r2
	mov r0, ip
	lsls r5, r0, #0x17
	asrs r5, r5, #0x17
	movs r6, #0
	ldrsb r6, [r4, r6]
	ldr r1, [sp, #4]
	adds r6, r6, r1
	ldr r2, [sp]
	adds r5, r5, r2
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800408A
	cmp r6, #0xa0
	bgt _0800408A
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r6, r0
	bge _080040B0
_0800408A:
	movs r0, #0xa0
	strb r0, [r4]
	ldrb r2, [r4, #1]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #1]
	ldrb r0, [r4, #3]
	ands r1, r0
	strb r1, [r4, #3]
	subs r4, #8
	b _0800418C
	.align 2, 0
_080040A4: .4byte 0x030031E8
_080040A8: .4byte gOamBuffer
_080040AC: .4byte 0x06010000
_080040B0:
	ldr r0, [sp, #8]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #1]
	ldr r2, [sp, #0x10]
	adds r2, r2, r7
	str r2, [sp, #0x10]
	ldrb r0, [r4, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	ldr r0, [sp, #0x20]
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x48]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r1, _0800412C @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	ldr r2, _08004130 @ =0xFFFFFE00
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	orrs r0, r5
	strh r0, [r4, #2]
	strb r6, [r4]
	ldr r2, [sp, #0x18]
	add r2, sl
	ldr r5, _08004134 @ =0x000003FF
	adds r0, r5, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r5, _08004138 @ =0xFFFFFC00
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	lsrs r3, r3, #6
	cmp r3, #0
	beq _08004140
	ldr r0, _0800413C @ =0x080FB0B8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r1, sl
	adds r0, r1, r7
	b _08004150
	.align 2, 0
_0800412C: .4byte 0x000001FF
_08004130: .4byte 0xFFFFFE00
_08004134: .4byte 0x000003FF
_08004138: .4byte 0xFFFFFC00
_0800413C: .4byte 0x080FB0B8
_08004140:
	ldr r0, _080041C4 @ =0x080FB0C8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r2, sl
	adds r0, r2, r7
_08004150:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r5, sp
	ldrh r5, [r5, #0x1c]
	strh r5, [r4, #6]
	ldr r1, _080041C8 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _0800416A
	b _08003FE8
_0800416A:
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xa
	orrs r0, r1
	lsls r7, r7, #5
	lsls r0, r0, #5
	ldr r1, [sp, #0x50]
	adds r0, r1, r0
	ldr r1, [sp, #0x10]
	adds r2, r7, #0
	bl QueueCopy
_0800418C:
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
	adds r4, #8
	movs r5, #8
	add r8, r5
	mov r0, sb
	ldrh r0, [r0, #2]
	cmp r2, r0
	bhs _080041A2
	b _0800404C
_080041A2:
	ldr r0, _080041CC @ =0x030031E8
	ldr r1, [r0]
	add r1, sl
	str r1, [r0]
	ldr r1, [sp, #0x18]
	lsls r0, r1, #5
	ldr r2, _080041D0 @ =0x06010000
	adds r0, r0, r2
_080041B2:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080041C4: .4byte 0x080FB0C8
_080041C8: .4byte 0x030031E4
_080041CC: .4byte 0x030031E8
_080041D0: .4byte 0x06010000

	thumb_func_start sub_080041D4
sub_080041D4: @ 0x080041D4
	push {lr}
	bl sub_080041E0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080041E0
sub_080041E0: @ 0x080041E0
	ldr r0, _080041FC @ =0x030031E4
	movs r1, #0
	str r1, [r0]
	ldr r0, _08004200 @ =0x030031E8
	str r1, [r0]
	ldr r0, _08004204 @ =0x030031F4
	str r1, [r0]
	ldr r0, _08004208 @ =0x030031E0
	str r1, [r0]
	ldr r0, _0800420C @ =0x030031EC
	str r1, [r0]
	ldr r0, _08004210 @ =0x030031F0
	str r1, [r0]
	bx lr
	.align 2, 0
_080041FC: .4byte 0x030031E4
_08004200: .4byte 0x030031E8
_08004204: .4byte 0x030031F4
_08004208: .4byte 0x030031E0
_0800420C: .4byte 0x030031EC
_08004210: .4byte 0x030031F0

	thumb_func_start sub_08004214
sub_08004214: @ 0x08004214
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r3, #2]
	cmp r0, r1
	bhs _08004228
	movs r0, #0
	b _08004282
_08004228:
	ldr r0, [r3, #8]
	adds r3, r3, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	ldrh r0, [r3, #4]
	ldrh r1, [r4]
	cmp r0, r1
	bhi _08004240
	movs r0, #0
	strh r0, [r4]
_08004240:
	ldr r0, [r3, #8]
	adds r2, r3, r0
	ldrh r5, [r4]
	lsls r0, r5, #2
	adds r2, r2, r0
	movs r7, #0
	ldrh r1, [r6]
	ldrh r0, [r2, #2]
	cmp r0, r1
	bhi _0800427C
	adds r0, r5, #1
	strh r0, [r4]
	strh r7, [r6]
	ldrh r0, [r3, #4]
	ldrh r1, [r4]
	cmp r0, r1
	bhi _08004280
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0800426C
	strh r7, [r4]
	b _08004280
_0800426C:
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r6]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r4]
	movs r7, #1
	b _08004280
_0800427C:
	adds r0, r1, #1
	strh r0, [r6]
_08004280:
	adds r0, r7, #0
_08004282:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08004288
sub_08004288: @ 0x08004288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrh r0, [r2, #2]
	cmp r0, r3
	blo _08004332
	ldr r0, [r2, #4]
	adds r6, r2, r0
	ldr r1, [r2, #8]
	adds r1, r2, r1
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r4, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r6, r0
	ldr r0, [r6, #8]
	adds r4, r6, r0
	ldr r7, [sp, #0x24]
	movs r5, #0
	movs r3, #0
	ldrh r0, [r6, #2]
	cmp r3, r0
	bhs _08004332
	ldr r2, _08004308 @ =0x080FB0D8
	mov sl, r2
	ldr r0, _0800430C @ =0x080FB0E8
	mov sb, r0
_080042DE:
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r4, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	mov r2, r8
	adds r1, r2, r0
	adds r7, r7, r5
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08004310
	ldrb r0, [r4, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	add r0, sl
	b _08004318
	.align 2, 0
_08004308: .4byte 0x080FB0D8
_0800430C: .4byte 0x080FB0E8
_08004310:
	ldrb r0, [r4, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	add r0, sb
_08004318:
	ldr r5, [r0]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r5, #0
	str r3, [sp]
	bl QueueCopy
	ldr r3, [sp]
	adds r3, #1
	adds r4, #8
	ldrh r0, [r6, #2]
	cmp r3, r0
	blo _080042DE
_08004332:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004344
sub_08004344: @ 0x08004344
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	ldr r0, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _0800436C @ =0x030031F4
	ldr r3, [r6]
	cmp r3, #0x31
	bls _08004370
	movs r0, #0
	b _0800440C
	.align 2, 0
_0800436C: .4byte 0x030031F4
_08004370:
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _080043B8 @ =0x03003200
	adds r2, r0, r1
	adds r0, r3, #1
	str r0, [r6]
	mov r0, r8
	str r0, [r2, #8]
	str r5, [r2, #0xc]
	movs r1, #0
	mov r0, ip
	strh r0, [r2, #0x10]
	strh r7, [r2, #0x12]
	adds r0, r2, #0
	adds r0, #0x22
	strb r4, [r0]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #0x1c]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r2, #0x18]
	str r1, [r2]
	str r1, [r2, #4]
	ldr r0, _080043BC @ =0x030031F0
	ldr r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080043CC
	ldr r0, _080043C0 @ =0x030031EC
	str r2, [r0]
	str r2, [r3]
	str r1, [r2]
	str r1, [r2, #4]
	b _0800440A
	.align 2, 0
_080043B8: .4byte 0x03003200
_080043BC: .4byte 0x030031F0
_080043C0: .4byte 0x030031EC
_080043C4:
	str r2, [r6]
	str r2, [r1]
	str r1, [r2, #4]
	b _0800440A
_080043CC:
	ldr r0, _080043D4 @ =0x030031EC
	ldr r1, [r0]
	adds r6, r0, #0
	b _080043DA
	.align 2, 0
_080043D4: .4byte 0x030031EC
_080043D8:
	ldr r1, [r1, #4]
_080043DA:
	cmp r1, #0
	beq _08004400
	ldr r0, [r1, #0xc]
	cmp r0, r5
	bge _080043D8
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, r4
	blo _080043D8
	ldr r0, [r1]
	cmp r0, #0
	beq _080043C4
	str r2, [r0, #4]
	str r1, [r2, #4]
	ldr r0, [r1]
	str r0, [r2]
	str r2, [r1]
	b _0800440A
_08004400:
	ldr r0, [r3]
	str r2, [r0, #4]
	str r0, [r2]
	str r1, [r2, #4]
	str r2, [r3]
_0800440A:
	adds r0, r2, #0
_0800440C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08004418
sub_08004418: @ 0x08004418
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, _08004438 @ =0x030031F4
	ldr r2, [r3]
	cmp r2, #0x31
	bls _0800443C
	movs r0, #0
	b _08004490
	.align 2, 0
_08004438: .4byte 0x030031F4
_0800443C:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0800447C @ =0x03003200
	adds r1, r0, r1
	adds r0, r2, #1
	str r0, [r3]
	str r7, [r1, #8]
	mov r0, ip
	str r0, [r1, #0xc]
	strh r6, [r1, #0x10]
	strh r4, [r1, #0x12]
	adds r0, r1, #0
	adds r0, #0x22
	strb r5, [r0]
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x1c]
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r1, #0x18]
	ldr r3, _08004480 @ =0x030031F0
	ldr r2, [r3]
	cmp r2, #0
	beq _08004484
	str r1, [r2, #4]
	str r2, [r1]
	movs r0, #0
	str r0, [r1, #4]
	str r1, [r3]
	b _0800448E
	.align 2, 0
_0800447C: .4byte 0x03003200
_08004480: .4byte 0x030031F0
_08004484:
	ldr r0, _08004498 @ =0x030031EC
	str r1, [r0]
	str r1, [r3]
	str r2, [r1]
	str r2, [r1, #4]
_0800448E:
	adds r0, r1, #0
_08004490:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004498: .4byte 0x030031EC

	thumb_func_start sub_0800449C
sub_0800449C: @ 0x0800449C
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _080044D8 @ =0x030031EC
	ldr r5, [r0]
	cmp r5, #0
	beq _080044CE
_080044A8:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldrh r2, [r5, #0x10]
	ldrh r3, [r5, #0x12]
	adds r4, r5, #0
	adds r4, #0x22
	ldrb r4, [r4]
	str r4, [sp]
	ldr r4, [r5, #0x1c]
	str r4, [sp, #4]
	ldr r4, [r5, #0x14]
	str r4, [sp, #8]
	ldr r4, [r5, #0x18]
	str r4, [sp, #0xc]
	bl sub_08003518
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _080044A8
_080044CE:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080044D8: .4byte 0x030031EC

	thumb_func_start sub_080044DC
sub_080044DC: @ 0x080044DC
	ldrh r0, [r0, #2]
	subs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_080044E4
sub_080044E4: @ 0x080044E4
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	ldr r6, _08004520 @ =gBgRegsBuffer
	mov ip, r6
	lsrs r2, r2, #0xa
	orrs r0, r2
	lsrs r1, r1, #8
	orrs r0, r1
	mov r1, ip
	adds r1, #0x40
	strh r0, [r1]
	lsrs r4, r4, #8
	orrs r3, r4
	mov r0, ip
	adds r0, #0x42
	strh r3, [r0]
	adds r0, #2
	strh r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004520: .4byte gBgRegsBuffer

	thumb_func_start sub_08004524
sub_08004524: @ 0x08004524
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r4, _08004548 @ =gBgRegsBuffer
	lsrs r1, r1, #0x14
	orrs r0, r1
	lsrs r2, r2, #0x10
	orrs r0, r2
	lsrs r3, r3, #0xc
	orrs r0, r3
	strh r0, [r4, #0x3c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004548: .4byte gBgRegsBuffer

	thumb_func_start sub_0800454C
sub_0800454C: @ 0x0800454C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r1, _080045C0 @ =0x03003C90
	movs r0, #0
	stm r1!, {r0}
	ldr r2, _080045C4 @ =0x03003910
	str r0, [r2, #8]
	movs r3, #1
	adds r5, r2, #0
	movs r2, #0
	adds r4, r5, #0
	adds r4, #0x18
	movs r6, #0x14
	mov r8, r1
_0800456C:
	movs r0, #0x80
	lsls r0, r0, #4
	str r2, [sp]
	str r3, [sp, #4]
	bl Alloc
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	adds r7, r5, #0
	adds r7, #8
	adds r0, r6, r7
	ldr r2, [sp]
	str r2, [r0]
	strh r2, [r4]
	strh r2, [r4, #2]
	adds r4, #0x14
	adds r6, #0x14
	ldr r3, [sp, #4]
	adds r3, #1
	cmp r3, #3
	bls _0800456C
	movs r1, #0
	adds r0, r7, #0
	subs r0, #8
	str r1, [r0, #0x54]
	adds r0, #0x6c
	strh r1, [r0]
	bl sub_0801702C
	adds r1, r7, #0
	adds r1, #0x60
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080045C0: .4byte 0x03003C90
_080045C4: .4byte 0x03003910

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
	ldr r0, _08004810 @ =0x03003910
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
	ldr r3, _08004810 @ =0x03003910
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
	ldr r0, _08004814 @ =0x03003C90
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
_08004810: .4byte 0x03003910
_08004814: .4byte 0x03003C90
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
	ldr r4, _08004928 @ =0x03003C00
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
	ldr r0, _0800492C @ =0x03003C90
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
_08004928: .4byte 0x03003C00
_0800492C: .4byte 0x03003C90
_08004930: .4byte REG_BG0CNT

	thumb_func_start sub_08004934
sub_08004934: @ 0x08004934
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r2, _08004A18 @ =0x03003C90
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
_08004A18: .4byte 0x03003C90

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
	ldr r2, _08004ADC @ =0x03003C90
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
_08004ADC: .4byte 0x03003C90
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
	ldr r3, _08004B1C @ =0x03003C00
	b _08004B28
	.align 2, 0
_08004B18: .4byte gBgRegsBuffer
_08004B1C: .4byte 0x03003C00
_08004B20:
	lsls r1, r7, #2
	adds r2, r1, r7
	lsls r2, r2, #2
	ldr r3, _08004C38 @ =0x03003910
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
	ldr r2, _08004C38 @ =0x03003910
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
	ldr r2, _08004C38 @ =0x03003910
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
_08004C38: .4byte 0x03003910
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
	ldr r0, _08004DDC @ =0x03003C90
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
_08004DDC: .4byte 0x03003C90

	thumb_func_start sub_08004DE0
sub_08004DE0: @ 0x08004DE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r6, _08004E08 @ =0x03003910
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
_08004E08: .4byte 0x03003910
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
	ldr r2, _08004EEC @ =0x03003910
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
_08004EEC: .4byte 0x03003910
_08004EF0: .4byte 0x080FB0F8
_08004EF4: .4byte 0x03003BD0

	thumb_func_start sub_08004EF8
sub_08004EF8: @ 0x08004EF8
	push {r4, r5, r6, lr}
	ldr r5, _08004F30 @ =0x03003C00
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldr r4, _08004F34 @ =0x080FB0F8
	ldr r0, [r4, #0x10]
	bl GetDataRecord
	adds r6, r5, #0
	adds r6, #0x8c
	str r0, [r6]
	movs r1, #0
	bl sub_080045C8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08004F38
	ldr r0, [r6]
	adds r0, #0x10
	b _08004F40
	.align 2, 0
_08004F30: .4byte 0x03003C00
_08004F34: .4byte 0x080FB0F8
_08004F38:
	ldr r0, [r6]
	adds r0, #0x10
	bl LZ77DecompressAlloc
_08004F40:
	str r0, [r5, #0x50]
	ldr r3, _08004FA8 @ =0x03003C00
	ldr r2, [r3, #0x50]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r4, #2
	ldrsh r0, [r2, r4]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r2, r0
	str r0, [r3, #0x54]
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x58
	movs r5, #0
	strh r1, [r0]
	ldrh r0, [r2, #2]
	adds r1, r3, #0
	adds r1, #0x5a
	strh r0, [r1]
	str r5, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x5c
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	ldr r4, _08004FAC @ =0x03003BA0
	ldr r0, _08004FB0 @ =sub_080055F8
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x50
	str r0, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl CreateThread
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08004FA8: .4byte 0x03003C00
_08004FAC: .4byte 0x03003BA0
_08004FB0: .4byte sub_080055F8

	thumb_func_start sub_08004FB4
sub_08004FB4: @ 0x08004FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	beq _08005078
	ldr r0, _0800506C @ =0x03003C00
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r0, [r0]
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _08005070 @ =0x080FB0F8
	ldr r2, _08005074 @ =0x06007000
	mov sb, r2
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r6, r1, r2
	adds r7, r0, #4
	movs r5, #0
_08004FEC:
	ldrh r0, [r7]
	cmp r0, #0
	beq _0800503A
	ldr r2, _0800506C @ =0x03003C00
	adds r0, r2, #0
	adds r0, #0x84
	adds r3, r5, r0
	ldrh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3]
	ldrh r0, [r7]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _08005024
	movs r4, #0
	strh r4, [r3]
	adds r0, r2, #0
	adds r0, #0x7c
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08005024
	strh r4, [r1]
_08005024:
	adds r0, r2, #0
	adds r0, #0x7c
	adds r0, r5, r0
	ldrh r0, [r0]
	lsls r0, r0, #8
	adds r0, r6, r0
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl QueueCopy
_0800503A:
	movs r0, #0x80
	lsls r0, r0, #3
	add sb, r0
	adds r6, r6, r0
	adds r7, #2
	adds r5, #2
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #3
	bls _08004FEC
	bl sub_0800F298
	cmp r0, #0
	bne _0800505A
	b _08005198
_0800505A:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	b _08005198
	.align 2, 0
_0800506C: .4byte 0x03003C00
_08005070: .4byte 0x080FB0F8
_08005074: .4byte 0x06007000
_08005078:
	ldr r0, _080050B8 @ =0x03003910
	adds r5, r0, #0
	adds r5, #0x68
	ldrh r0, [r5]
	cmp r0, #0
	bne _08005086
	b _08005198
_08005086:
	cmp r0, #8
	bne _08005094
	bl sub_08007638
	cmp r0, #0
	beq _08005094
	b _08005198
_08005094:
	ldrh r0, [r5]
	cmp r0, #4
	bne _080050BC
	bl sub_08007510
	cmp r0, #0
	bne _080050DC
	movs r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #0x10
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	b _080050FE
	.align 2, 0
_080050B8: .4byte 0x03003910
_080050BC:
	cmp r0, #6
	bne _080050EE
	bl sub_08007510
	cmp r0, #0
	bne _080050DC
	movs r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #7
	bl sub_080044E4
	b _080050FE
_080050DC:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	b _080050FE
_080050EE:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
_080050FE:
	ldr r4, _080051A8 @ =0x03003910
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r0, [r0]
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	mov r8, r0
	adds r7, r4, #0
	mov sl, r7
	ldr r2, _080051AC @ =0x06007000
	mov sb, r2
	adds r4, #0x7c
	movs r0, #0xe0
	lsls r0, r0, #7
	adds r6, r1, r0
	movs r5, #0
_08005124:
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r5, r0
	ldr r1, _080051B0 @ =0x080FB0FC
	adds r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #0
	beq _08005182
	adds r0, r7, #0
	adds r0, #0x84
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _08005166
	movs r1, #0
	strh r1, [r2]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08005166
	strh r1, [r4]
_08005166:
	mov r0, sl
	adds r0, #0x84
	adds r0, r5, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005182
	ldrh r0, [r4]
	lsls r0, r0, #8
	adds r0, r6, r0
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl QueueCopy
_08005182:
	movs r2, #0x80
	lsls r2, r2, #3
	add sb, r2
	adds r4, #2
	adds r6, r6, r2
	adds r5, #2
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	bls _08005124
_08005198:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080051A8: .4byte 0x03003910
_080051AC: .4byte 0x06007000
_080051B0: .4byte 0x080FB0FC

	thumb_func_start sub_080051B4
sub_080051B4: @ 0x080051B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08005214 @ =0x03003910
	movs r1, #0x6c
	adds r1, r1, r7
	mov r8, r1
	strh r0, [r1]
	ldr r4, _08005218 @ =0x080FB0F8
	lsls r0, r0, #2
	adds r5, r7, #0
	adds r5, #0x68
	ldrh r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	adds r4, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetDataRecord
	adds r6, r7, #0
	adds r6, #0x8c
	str r0, [r6]
	ldr r0, [r7, #0x50]
	bl Free
	mov r3, r8
	ldrh r1, [r3]
	lsls r1, r1, #2
	ldrh r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r4
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _0800521C
	ldr r0, [r6]
	adds r0, #0x10
	str r0, [r7, #0x50]
	b _08005234
	.align 2, 0
_08005214: .4byte 0x03003910
_08005218: .4byte 0x080FB0F8
_0800521C:
	adds r4, r7, #0
	adds r5, r6, #0
_08005220:
	ldr r0, [r5]
	adds r0, #0x10
	bl LZ77DecompressAlloc
	str r0, [r4, #0x50]
	bl WaitFrame
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08005220
_08005234:
	ldr r4, _08005274 @ =0x03003910
	ldr r2, [r4, #0x50]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r2, r0
	str r0, [r4, #0x54]
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	movs r3, #0
	strh r1, [r0]
	ldrh r0, [r2, #2]
	adds r1, r4, #0
	adds r1, #0x5a
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x5e
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005274: .4byte 0x03003910

	thumb_func_start sub_08005278
sub_08005278: @ 0x08005278
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r1, _08005294 @ =0x03003910
	movs r0, #1
	str r0, [r1, #0x78]
	movs r0, #0xa
	add r0, sp
	mov r8, r0
	b _0800529C
	.align 2, 0
_08005294: .4byte 0x03003910
_08005298:
	bl WaitFrame
_0800529C:
	ldr r0, _080052EC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080052B4
	bl sub_08007544
	cmp r0, #0
	beq _08005298
_080052B4:
	bl GetMultiplayerId
	str r0, [sp, #0xc]
	bl sub_08007544
	cmp r0, #0
	beq _080052F4
	ldr r3, _080052F0 @ =gPlayers
	movs r0, #0xd4
	ldr r1, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x58
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	add r1, sp, #8
	strh r0, [r1]
	adds r3, #0x5c
	adds r2, r2, r3
	ldr r0, [r2]
	asrs r0, r0, #0xf
	subs r0, #0xb
	mov r2, r8
	strh r0, [r2]
	b _080052FC
	.align 2, 0
_080052EC: .4byte 0x030063D8
_080052F0: .4byte gPlayers
_080052F4:
	add r0, sp, #8
	mov r1, r8
	bl sub_080216E0
_080052FC:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0]
	subs r0, #0xf
	strh r0, [r1]
	mov r3, r8
	ldrh r0, [r3]
	subs r0, #0xb
	strh r0, [r3]
	bl WaitFrame
	bl WaitFrame
	ldr r4, _0800537C @ =0x03003910
	ldr r1, [r4, #0x50]
	add r0, sp, #8
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	add r0, sp, #8
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	add r0, sp, #8
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_080046E4
	bl sub_08001F98
	cmp r0, #0
	bne _0800539E
	ldr r1, _08005380 @ =0x080FB0F8
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	cmp r0, r1
	bne _0800538C
	cmp r2, #8
	beq _08005384
	movs r0, #0xb
	bl PlayBGM
	b _0800539E
	.align 2, 0
_0800537C: .4byte 0x03003910
_08005380: .4byte 0x080FB0F8
_08005384:
	movs r0, #0xc
	bl PlayBGM
	b _0800539E
_0800538C:
	cmp r2, #8
	bhi _08005398
	adds r0, r2, #0
	bl PlayBGM
	b _0800539E
_08005398:
	movs r0, #8
	bl PlayBGM
_0800539E:
	ldr r1, _080053AC @ =0x03003910
	mov sb, r1
	add r7, sp, #8
	ldr r2, _080053B0 @ =gPlayers
	str r2, [sp, #0x10]
	b _08005566
	.align 2, 0
_080053AC: .4byte 0x03003910
_080053B0: .4byte gPlayers
_080053B4:
	mov r3, sb
	ldr r0, [r3, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080053C2
	b _0800553C
_080053C2:
	bl sub_08001F98
	cmp r0, #0
	bne _080053D0
	movs r0, #2
	bl FadeOutBGM
_080053D0:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	ldr r0, _0800543C @ =0x000514C8
	bl _08000400
	mov r1, sb
	ldr r0, [r1, #0x78]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080053F4
	b _0800557E
_080053F4:
	bl sub_080074CC
	cmp r0, #0
	beq _080053FE
	b _0800557E
_080053FE:
	bl sub_08001F98
	cmp r0, #0
	bne _0800547A
	ldr r1, _08005440 @ =0x080FB0F8
	mov r0, sb
	adds r0, #0x68
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #1
	mov r1, sb
	adds r1, #0x6c
	ldrh r1, [r1]

	thumb_func_start sub_08005420
sub_08005420: @ 0x08005420
	cmp r0, r1
	bne _08005468
	cmp r2, #8
	beq _08005448
	ldr r0, _08005444 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #1
	beq _0800546C
	movs r0, #0xb
	bl PlayBGM
	b _0800547A
	.align 2, 0
_0800543C: .4byte 0x000514C8
_08005440: .4byte 0x080FB0F8
_08005444: .4byte 0x030063D8
_08005448:
	ldr r0, _0800545C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #1
	bne _08005460
	movs r0, #0xd
	bl PlayBGM
	b _0800547A
	.align 2, 0
_0800545C: .4byte 0x030063D8
_08005460:
	movs r0, #0xc
	bl PlayBGM
	b _0800547A
_08005468:
	cmp r2, #8
	bhi _08005474
_0800546C:
	adds r0, r2, #0
	bl PlayBGM
	b _0800547A
_08005474:
	movs r0, #8
	bl PlayBGM
_0800547A:
	movs r0, #0xd4
	ldr r3, [sp, #0xc]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [sp, #0x10]
	adds r0, #0x58
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	strh r0, [r7]
	mov r2, r8
	ldr r0, _080055E8 @ =0x030045DC
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #0xf
	subs r0, #0xb
	strh r0, [r2]
	ldrh r1, [r7]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080054B0
	movs r0, #0
	strh r0, [r7]
_080054B0:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080054BE
	movs r0, #0
	strh r0, [r2]
_080054BE:
	ldrh r0, [r7]
	ldr r4, _080055EC @ =0x03003910
	adds r1, r4, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	cmp r0, r1
	ble _080054D0
	strh r1, [r7]
_080054D0:
	adds r1, r4, #0
	adds r1, #0x5e
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080054E0
	movs r0, #0
	strh r0, [r1]
_080054E0:
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrh r0, [r0]
	subs r0, #0x14
	cmp r1, r0
	ble _080054F0
	strh r0, [r2]
_080054F0:
	ldr r1, [r4, #0x50]
	ldrh r2, [r7]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	ldrh r2, [r7]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	ldrh r2, [r7]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_080046E4
	movs r1, #1
	mov sl, r1
	ldr r0, [r4, #0x78]
	subs r1, #0xe
	ands r0, r1
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r1, [r1]
	bl sub_080045C8
	movs r0, #6
	bl sub_0800F308
_0800553C:
	movs r6, #1
	ldr r4, _080055F0 @ =0x0300396E
	subs r5, r4, #2
_08005542:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	mov r3, sl
	bl sub_08004AE4
	adds r6, #1
	cmp r6, #3
	bls _08005542
	movs r0, #0
	mov sl, r0
	bl sub_08004FB4
	bl WaitFrame
_08005566:
	mov r1, sb
	ldr r0, [r1, #0x78]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	bne _0800557E
	bl sub_080074CC
	adds r4, r0, #0
	cmp r4, #0
	bne _0800557E
	b _080053B4
_0800557E:
	movs r6, #1
	ldr r2, _080055EC @ =0x03003910
	movs r7, #0
_08005584:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0800559E
	strh r7, [r1, #0xe]
	strh r7, [r1, #0xc]
	strh r7, [r1, #2]
	strh r7, [r1]
_0800559E:
	ldr r4, [r2, #0x78]
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _080055BE
	ldr r1, _080055F4 @ =0x03003C90
	lsls r0, r6, #2
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _080055BE
	str r2, [sp, #0x14]
	bl Free
	str r4, [r5]
	ldr r2, [sp, #0x14]
_080055BE:
	adds r6, #1
	cmp r6, #3
	bls _08005584
	ldr r4, _080055EC @ =0x03003910
	ldr r0, [r4, #0x50]
	bl Free
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r4, #0x78]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080055E8: .4byte 0x030045DC
_080055EC: .4byte 0x03003910
_080055F0: .4byte 0x0300396E
_080055F4: .4byte 0x03003C90

	thumb_func_start sub_080055F8
sub_080055F8: @ 0x080055F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08005614 @ =0x03003C00
	movs r0, #1
	str r0, [r1, #0x78]
	movs r0, #2
	add r0, sp
	mov r8, r0
	b _0800561C
	.align 2, 0
_08005614: .4byte 0x03003C00
_08005618:
	bl WaitFrame
_0800561C:
	ldr r0, _0800566C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08005634
	bl sub_08007544
	cmp r0, #0
	beq _08005618
_08005634:
	bl GetMultiplayerId
	str r0, [sp, #4]
	bl sub_08007544
	cmp r0, #0
	beq _08005674
	ldr r3, _08005670 @ =gPlayers
	movs r0, #0xd4
	ldr r1, [sp, #4]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x58
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	mov r1, sp
	strh r0, [r1]
	adds r3, #0x5c
	adds r2, r2, r3
	ldr r0, [r2]
	asrs r0, r0, #0xf
	subs r0, #0xa
	mov r2, r8
	strh r0, [r2]
	b _0800567C
	.align 2, 0
_0800566C: .4byte 0x030063D8
_08005670: .4byte gPlayers
_08005674:
	mov r0, sp
	mov r1, r8
	bl sub_080216E0
_0800567C:
	ldr r4, _080056C4 @ =0x03003C00
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_0800481C
	bl sub_08001F98
	cmp r0, #0
	bne _080056BC
	movs r0, #0xa
	bl PlayBGM
_080056BC:
	ldr r1, _080056C8 @ =0x03003F88
	mov sb, r1
	b _080057EE
	.align 2, 0
_080056C4: .4byte 0x03003C00
_080056C8: .4byte 0x03003F88
_080056CC:
	ldr r0, [r4, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080057C4
	bl sub_08001F98
	cmp r0, #0
	bne _080056E4
	movs r0, #2
	bl FadeOutBGM
_080056E4:
	ldr r0, _0800586C @ =0x000514C9
	bl _08000400
	ldr r0, [r4, #0x78]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080056F6
	b _08005802
_080056F6:
	bl sub_080074CC
	adds r5, r0, #0
	cmp r5, #0
	beq _08005702
	b _08005802
_08005702:
	ldr r0, _08005870 @ =0x00120002
	bl GetDataRecord
	adds r1, r0, #0
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	mov r0, sb
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	mov r2, sb
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	lsls r0, r0, #0xa
	orrs r1, r0
	ldr r3, _08005874 @ =0x03002B32
	strh r1, [r3]
	movs r0, #0xd4
	ldr r2, [sp, #4]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r3, _08005878 @ =gPlayers
	adds r0, r1, r3
	strh r5, [r0, #0x16]
	mov r2, sp
	adds r0, r3, #0
	adds r0, #0x58
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	strh r0, [r2]
	ldr r0, _0800587C @ =0x030045DC
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #0xf
	subs r0, #0xa
	mov r1, r8
	strh r0, [r1]
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_0800481C
	movs r1, #1
	mov sl, r1
	bl sub_08001F98
	cmp r0, #0
	bne _080057A8
	movs r0, #0xa
	bl PlayBGM
_080057A8:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0
	bl sub_080045C8
	ldr r0, [r4, #0x78]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x78]
	movs r0, #6
	bl sub_0800F308
_080057C4:
	movs r6, #1
	ldr r5, _08005880 @ =0x03003C5E
	subs r7, r5, #2
_080057CA:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r5, r3]
	mov r3, sl
	bl sub_08004AE4
	adds r6, #1
	cmp r6, #3
	bls _080057CA
	movs r0, #0
	mov sl, r0
	bl sub_08004FB4
	bl WaitFrame
_080057EE:
	ldr r0, [r4, #0x78]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08005802
	bl sub_080074CC
	cmp r0, #0
	bne _08005802
	b _080056CC
_08005802:
	movs r6, #1
	ldr r2, _08005884 @ =0x03003C00
	movs r7, #0
_08005808:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08005822
	strh r7, [r1, #0xe]
	strh r7, [r1, #0xc]
	strh r7, [r1, #2]
	strh r7, [r1]
_08005822:
	ldr r4, [r2, #0x78]
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _08005842
	ldr r1, _08005888 @ =0x03003C90
	lsls r0, r6, #2
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _08005842
	str r2, [sp, #8]
	bl Free
	str r4, [r5]
	ldr r2, [sp, #8]
_08005842:
	adds r6, #1
	cmp r6, #3
	bls _08005808
	ldr r4, _08005884 @ =0x03003C00
	ldr r0, [r4, #0x50]
	bl Free
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r4, #0x78]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800586C: .4byte 0x000514C9
_08005870: .4byte 0x00120002
_08005874: .4byte 0x03002B32
_08005878: .4byte gPlayers
_0800587C: .4byte 0x030045DC
_08005880: .4byte 0x03003C5E
_08005884: .4byte 0x03003C00
_08005888: .4byte 0x03003C90

	thumb_func_start sub_0800588C
sub_0800588C: @ 0x0800588C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	ldr r1, [r0]
	lsls r1, r1, #4
	lsrs r5, r1, #0x10
	mov r2, sl
	ldr r1, [r2]
	lsls r1, r1, #4
	lsrs r4, r1, #0x10
	cmp r6, #0
	beq _08005930
	ldr r3, _0800592C @ =0x03003C00
	ldr r2, [r3, #0x78]
	movs r1, #0x10
	ands r2, r1
	lsls r7, r5, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r2, #0
	bne _080058E2
	adds r2, r3, #0
	adds r2, #0x60
	asrs r1, r7, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x78
	adds r2, r3, #0
	adds r2, #0x5c
	strh r1, [r2]
	adds r2, #6
	asrs r1, r4, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x58
	adds r2, r3, #0
	adds r2, #0x5e
	strh r1, [r2]
_080058E2:
	adds r4, r3, #0
	adds r4, #0x5c
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080058F2
	movs r1, #0
	strh r1, [r4]
_080058F2:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _08005906
	strh r1, [r4]
_08005906:
	adds r4, r3, #0
	adds r4, #0x5e
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08005916
	movs r1, #0
	strh r1, [r4]
_08005916:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #3
	cmp r2, r1
	ble _080059FC
	b _080059FA
	.align 2, 0
_0800592C: .4byte 0x03003C00
_08005930:
	ldr r3, _080059D4 @ =0x03003910
	ldr r1, [r3, #0x78]
	movs r2, #0x10
	mov ip, r2
	ands r1, r2
	lsls r7, r5, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r1, #0
	bne _08005966
	adds r2, r3, #0
	adds r2, #0x60
	asrs r1, r7, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x78
	adds r2, r3, #0
	adds r2, #0x5c
	strh r1, [r2]
	adds r2, #6
	asrs r1, r4, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x58
	adds r2, r3, #0
	adds r2, #0x5e
	strh r1, [r2]
_08005966:
	adds r5, r3, #0
	adds r5, #0x5c
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _08005974
	strh r6, [r5]
_08005974:
	movs r1, #0
	ldrsh r2, [r5, r1]
	adds r1, r3, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _08005988
	strh r1, [r5]
_08005988:
	adds r4, r3, #0
	adds r4, #0x5e
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08005996
	strh r6, [r4]
_08005996:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #3
	cmp r2, r1
	ble _080059AA
	strh r1, [r4]
_080059AA:
	ldr r1, [r3, #0x78]
	mov r2, ip
	ands r1, r2
	cmp r1, #0
	bne _080059D8
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r5]
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x64
	strh r1, [r2]
	subs r2, #2
	ldrh r1, [r4]
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x66
	strh r1, [r2]
	b _080059FC
	.align 2, 0
_080059D4: .4byte 0x03003910
_080059D8:
	adds r2, r3, #0
	adds r2, #0x60
	adds r1, r3, #0
	adds r1, #0x64
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	strh r1, [r5]
	movs r1, #0x62
	adds r1, r1, r3
	mov ip, r1
	adds r1, r3, #0
	adds r1, #0x66
	ldrh r1, [r1]
	mov r2, ip
	ldrh r2, [r2]
	adds r1, r1, r2
_080059FA:
	strh r1, [r4]
_080059FC:
	mov r3, sb
	ldr r2, [r3]
	ldr r1, _08005A28 @ =0x00000FFF
	ands r2, r1
	mov r4, sl
	ldr r3, [r4]
	ands r3, r1
	asrs r1, r7, #4
	adds r2, r2, r1
	mov r1, sb
	str r2, [r1]
	mov r2, r8
	asrs r1, r2, #4
	adds r3, r3, r1
	str r3, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005A28: .4byte 0x00000FFF

	thumb_func_start sub_08005A2C
sub_08005A2C: @ 0x08005A2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	asrs r1, r1, #0xf
	mov r8, r1
	asrs r2, r2, #0xf
	mov ip, r2
	cmp r3, #0
	beq _08005A90
	ldr r0, _08005A8C @ =0x03003C00
	ldr r6, [r0, #0x54]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, #0x58
	ldrh r0, [r0]
	mov sb, r0
_08005A54:
	movs r1, #2
	rsbs r1, r1, #0
	adds r2, r3, #1
	mov r0, r8
	adds r4, r0, r3
	mov r7, sp
	adds r0, r7, r3
	adds r3, r0, #2
_08005A64:
	mov r7, ip
	adds r0, r7, r1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	strb r0, [r3]
	adds r3, #5
	adds r1, #1
	cmp r1, #2
	ble _08005A64
	adds r3, r2, #0
	cmp r3, #2
	ble _08005A54
	b _08005AD4
	.align 2, 0
_08005A8C: .4byte 0x03003C00
_08005A90:
	ldr r0, _08005AE8 @ =0x03003910
	ldr r6, [r0, #0x54]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, #0x58
	ldrh r0, [r0]
	mov sb, r0
_08005A9E:
	movs r1, #2
	rsbs r1, r1, #0
	adds r2, r3, #1
	mov r0, r8
	adds r4, r0, r3
	mov r7, sp
	adds r0, r7, r3
	adds r3, r0, #2
_08005AAE:
	mov r7, ip
	adds r0, r7, r1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	strb r0, [r3]
	adds r3, #5
	adds r1, #1
	cmp r1, #2
	ble _08005AAE
	adds r3, r2, #0
	cmp r3, #2
	ble _08005A9E
_08005AD4:
	mov r0, sp
	ldrb r0, [r0, #0xc]
	cmp r0, #0xd
	bls _08005ADE
	b _08005ED8
_08005ADE:
	lsls r0, r0, #2
	ldr r1, _08005AEC @ =_08005AF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005AE8: .4byte 0x03003910
_08005AEC: .4byte _08005AF0
_08005AF0: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005B28 @ case 1
	.4byte _08005D1E @ case 2
	.4byte _08005D1E @ case 3
	.4byte _08005D54 @ case 4
	.4byte _08005D54 @ case 5
	.4byte _08005D88 @ case 6
	.4byte _08005D88 @ case 7
	.4byte _08005DC0 @ case 8
	.4byte _08005DC0 @ case 9
	.4byte _08005DF4 @ case 10
	.4byte _08005E28 @ case 11
	.4byte _08005E60 @ case 12
	.4byte _08005E98 @ case 13
_08005B28:
	cmp r5, #7
	bls _08005B2E
	b _08005ED8
_08005B2E:
	lsls r0, r5, #2
	ldr r1, _08005B38 @ =_08005B3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005B38: .4byte _08005B3C
_08005B3C: @ jump table
	.4byte _08005B5C @ case 0
	.4byte _08005C94 @ case 1
	.4byte _08005B98 @ case 2
	.4byte _08005CBE @ case 3
	.4byte _08005BEC @ case 4
	.4byte _08005CDE @ case 5
	.4byte _08005C44 @ case 6
	.4byte _08005CFE @ case 7
_08005B5C:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #1
	beq _08005B66
	b _08005ED0
_08005B66:
	mov r0, sp
	ldrb r0, [r0, #7]
	subs r0, #6
	cmp r0, #5
	bls _08005B72
	b _08005ED4
_08005B72:
	lsls r0, r0, #2
	ldr r1, _08005B7C @ =_08005B80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005B7C: .4byte _08005B80
_08005B80: @ jump table
	.4byte _08005D88 @ case 0
	.4byte _08005D88 @ case 1
	.4byte _08005DC0 @ case 2
	.4byte _08005DC0 @ case 3
	.4byte _08005DF4 @ case 4
	.4byte _08005E28 @ case 5
_08005B98:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	beq _08005BA4
_08005BA0:
	movs r0, #3
	b _08005EDA
_08005BA4:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	subs r0, #2
	cmp r0, #0xa
	bls _08005BB0
	b _08005ED4
_08005BB0:
	lsls r0, r0, #2
	ldr r1, _08005BBC @ =_08005BC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005BBC: .4byte _08005BC0
_08005BC0: @ jump table
	.4byte _08005D1E @ case 0
	.4byte _08005D1E @ case 1
	.4byte _08005ED4 @ case 2
	.4byte _08005ED4 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005DC0 @ case 6
	.4byte _08005DC0 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005E28 @ case 9
	.4byte _08005E60 @ case 10
_08005BEC:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #1
	beq _08005BF8
_08005BF4:
	movs r0, #5
	b _08005EDA
_08005BF8:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	subs r0, #2
	cmp r0, #0xb
	bls _08005C04
	b _08005ED4
_08005C04:
	lsls r0, r0, #2
	ldr r1, _08005C10 @ =_08005C14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005C10: .4byte _08005C14
_08005C14: @ jump table
	.4byte _08005D1E @ case 0
	.4byte _08005D1E @ case 1
	.4byte _08005D54 @ case 2
	.4byte _08005D54 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005ED4 @ case 6
	.4byte _08005ED4 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005ED4 @ case 9
	.4byte _08005E60 @ case 10
	.4byte _08005E98 @ case 11
_08005C44:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	beq _08005C50
_08005C4C:
	movs r0, #7
	b _08005EDA
_08005C50:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	subs r0, #4
	cmp r0, #9
	bls _08005C5C
	b _08005ED4
_08005C5C:
	lsls r0, r0, #2
	ldr r1, _08005C68 @ =_08005C6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005C68: .4byte _08005C6C
_08005C6C: @ jump table
	.4byte _08005D54 @ case 0
	.4byte _08005D54 @ case 1
	.4byte _08005D88 @ case 2
	.4byte _08005D88 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005DF4 @ case 6
	.4byte _08005ED4 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005E98 @ case 9
_08005C94:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08005C9E
	b _08005DBC
_08005C9E:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _08005CB2
	mov r0, sp
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08005CB0
	b _08005ED4
_08005CB0:
	b _08005DBC
_08005CB2:
	mov r0, sp
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08005CBC
	b _08005ED0
_08005CBC:
	b _08005DBC
_08005CBE:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08005CC8
	b _08005ECC
_08005CC8:
	mov r0, sp
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08005CD2
	b _08005ECC
_08005CD2:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08005CDC
	b _08005ED4
_08005CDC:
	b _08005BF4
_08005CDE:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08005CE8
	b _08005E94
_08005CE8:
	mov r0, sp
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _08005CF2
	b _08005E94
_08005CF2:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08005CFC
	b _08005ED4
_08005CFC:
	b _08005C4C
_08005CFE:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	bne _08005D08
	b _08005E5C
_08005D08:
	mov r0, sp
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _08005D12
	b _08005E5C
_08005D12:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08005D1C
	b _08005ED4
_08005D1C:
	b _08005C4C
_08005D1E:
	cmp r5, #7
	bls _08005D24
	b _08005ED8
_08005D24:
	lsls r0, r5, #2
	ldr r1, _08005D30 @ =_08005D34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D30: .4byte _08005D34
_08005D34: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005DBC @ case 2
	.4byte _08005DBC @ case 3
	.4byte _08005E94 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005D54:
	cmp r5, #7
	bls _08005D5A
	b _08005ED8
_08005D5A:
	lsls r0, r5, #2
	ldr r1, _08005D64 @ =_08005D68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D64: .4byte _08005D68
_08005D68: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ECC @ case 4
	.4byte _08005E5C @ case 5
	.4byte _08005E5C @ case 6
	.4byte _08005ED8 @ case 7
_08005D88:
	cmp r5, #7
	bls _08005D8E
	b _08005ED8
_08005D8E:
	lsls r0, r5, #2
	ldr r1, _08005D98 @ =_08005D9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D98: .4byte _08005D9C
_08005D9C: @ jump table
	.4byte _08005DBC @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005E94 @ case 6
	.4byte _08005E94 @ case 7
_08005DBC:
	movs r0, #2
	b _08005EDA
_08005DC0:
	cmp r5, #7
	bls _08005DC6
	b _08005ED8
_08005DC6:
	lsls r0, r5, #2
	ldr r1, _08005DD0 @ =_08005DD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005DD0: .4byte _08005DD4
_08005DD4: @ jump table
	.4byte _08005E5C @ case 0
	.4byte _08005ECC @ case 1
	.4byte _08005ECC @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005DF4:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E04 @ =_08005E08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E04: .4byte _08005E08
_08005E08: @ jump table
	.4byte _08005BA0 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005BF4 @ case 5
	.4byte _08005BF4 @ case 6
	.4byte _08005ED4 @ case 7
_08005E28:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E38 @ =_08005E3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E38: .4byte _08005E3C
_08005E3C: @ jump table
	.4byte _08005E5C @ case 0
	.4byte _08005ED4 @ case 1
	.4byte _08005BF4 @ case 2
	.4byte _08005BF4 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005E5C:
	movs r0, #8
	b _08005EDA
_08005E60:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E70 @ =_08005E74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E70: .4byte _08005E74
_08005E74: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED0 @ case 1
	.4byte _08005ED0 @ case 2
	.4byte _08005ED4 @ case 3
	.4byte _08005E94 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005E94:
	movs r0, #6
	b _08005EDA
_08005E98:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005EA8 @ =_08005EAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005EA8: .4byte _08005EAC
_08005EAC: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ECC @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005ED0 @ case 6
	.4byte _08005ED0 @ case 7
_08005ECC:
	movs r0, #4
	b _08005EDA
_08005ED0:
	movs r0, #1
	b _08005EDA
_08005ED4:
	movs r0, #0
	b _08005EDA
_08005ED8:
	adds r0, r5, #1
_08005EDA:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08005EE8:
	.byte 0x00, 0x04, 0x00, 0x0C, 0x81, 0x00, 0x09, 0x18
	.byte 0x89, 0x00, 0x05, 0x48, 0x09, 0x18, 0x88, 0x68, 0x00, 0x28, 0x04, 0xD0, 0x00, 0x20, 0xC8, 0x81
	.byte 0x88, 0x81, 0x48, 0x80, 0x08, 0x80, 0x70, 0x47, 0x10, 0x39, 0x00, 0x03, 0x00, 0x04, 0x00, 0x0C
	.byte 0x81, 0x00, 0x09, 0x18, 0x89, 0x00, 0x05, 0x48, 0x09, 0x18, 0x88, 0x68, 0x00, 0x28, 0x04, 0xD0
	.byte 0x00, 0x20, 0xC8, 0x81, 0x88, 0x81, 0x48, 0x80, 0x08, 0x80, 0x70, 0x47, 0x00, 0x3C, 0x00, 0x03
	.byte 0x06, 0x4A, 0x53, 0x6D, 0x00, 0x04, 0x09, 0x04, 0xC0, 0x14, 0xC9, 0x14, 0x58, 0x32, 0x12, 0x88
	.byte 0x51, 0x43, 0x40, 0x18, 0x40, 0x00, 0x1B, 0x18, 0x18, 0x1C, 0x70, 0x47, 0x10, 0x39, 0x00, 0x03

	thumb_func_start sub_08005F50
sub_08005F50: @ 0x08005F50
	ldr r0, _08005F5C @ =0x03003910
	ldr r1, [r0, #0x78]
	movs r2, #2
	orrs r1, r2
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08005F5C: .4byte 0x03003910

	thumb_func_start sub_08005F60
sub_08005F60: @ 0x08005F60
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	bl sub_08007544
	cmp r0, #0
	beq _08005F7C
	ldr r0, _08005F78 @ =0x03003C00
	b _08005F7E
	.align 2, 0
_08005F78: .4byte 0x03003C00
_08005F7C:
	ldr r0, _08005F90 @ =0x03003910
_08005F7E:
	adds r1, r0, #0
	adds r1, #0x60
	strh r4, [r1]
	adds r0, #0x62
	strh r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005F90: .4byte 0x03003910

	thumb_func_start sub_08005F94
sub_08005F94: @ 0x08005F94
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	bl sub_08007544
	cmp r0, #0
	bne _08005FB8
	ldr r1, _08005FC0 @ =0x03003910
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	strh r6, [r0, #4]
	strh r5, [r0, #6]
_08005FB8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005FC0: .4byte 0x03003910

	thumb_func_start sub_08005FC4
sub_08005FC4: @ 0x08005FC4
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r2, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r2, #0
	beq _08005FE0
	ldr r1, _08005FDC @ =0x03003C00
	b _08005FE2
	.align 2, 0
_08005FDC: .4byte 0x03003C00
_08005FE0:
	ldr r1, _08006004 @ =0x03003910
_08005FE2:
	adds r0, r1, #0
	adds r0, #0x5c
	ldrh r2, [r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r5]
	adds r1, #0x5e
	ldrh r1, [r1]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6]
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006004: .4byte 0x03003910

	thumb_func_start sub_08006008
sub_08006008: @ 0x08006008
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	lsrs r4, r4, #3
	lsrs r3, r3, #3
	cmp r2, #0
	beq _08006020
	ldr r1, _0800601C @ =0x03003C00
	b _08006022
	.align 2, 0
_0800601C: .4byte 0x03003C00
_08006020:
	ldr r1, _08006044 @ =0x03003910
_08006022:
	ldr r2, [r1, #0x54]
	adds r1, #0x58
	ldrh r1, [r1]
	muls r1, r3, r1
	adds r1, r4, r1
	lsls r1, r1, #1
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq _08006052
	cmp r1, #1
	bgt _08006048
	cmp r1, #0
	beq _0800604E
	b _08006058
	.align 2, 0
_08006044: .4byte 0x03003910
_08006048:
	cmp r1, #2
	beq _08006056
	b _08006058
_0800604E:
	movs r0, #2
	b _08006058
_08006052:
	movs r0, #1
	b _08006058
_08006056:
	movs r0, #3
_08006058:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start GetMapTileAttributes
GetMapTileAttributes: @ 0x08006060
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq _08006074
	ldr r0, _08006070 @ =0x03003C00
	b _08006076
	.align 2, 0
_08006070: .4byte 0x03003C00
_08006074:
	ldr r0, _0800609C @ =0x03003910
_08006076:
	ldr r3, [r0, #0x54]
	asrs r1, r4, #0xf
	asrs r2, r5, #0xf
	adds r0, #0x58
	ldrh r0, [r0]
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r0, [r0]
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x1c
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r0, r1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800609C: .4byte 0x03003910

	thumb_func_start sub_080060A0
sub_080060A0: @ 0x080060A0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r1, #0
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r4]
	bl GetDataRecord
	mov r8, r0
	ldm r4!, {r0}
	ldr r1, _08006110 @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r4, #0
	bl LZ77DecompressAlloc
	adds r6, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	mov r0, r8
	adds r1, r4, #0
	bl CpuFastSet
	adds r5, #0x1c
	lsls r5, r5, #0xb
	adds r5, r5, r4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r6, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r0, r6, #0
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl LoadPalette
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006110: .4byte 0x0000FFFF

	thumb_func_start sub_08006114
sub_08006114: @ 0x08006114
	ldr r3, _08006138 @ =0x080FB0F8
	ldr r2, _0800613C @ =0x03003910
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	ldrh r0, [r0]
	subs r0, #2
	adds r2, #0x6c
	ldrh r2, [r2]
	cmp r0, r2
	beq _08006140
	movs r0, #0
	b _08006142
	.align 2, 0
_08006138: .4byte 0x080FB0F8
_0800613C: .4byte 0x03003910
_08006140:
	movs r0, #1
_08006142:
	bx lr

	thumb_func_start sub_08006144
sub_08006144: @ 0x08006144
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	cmp r5, #1
	beq _080061BC
	ldr r0, _08006160 @ =gPlayerStats
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080061BC
	add r4, sp, #0xc
	b _08006168
	.align 2, 0
_08006160: .4byte gPlayerStats
_08006164:
	bl WaitFrame
_08006168:
	bl sub_0800F298
	cmp r0, #0
	beq _08006164
	ldr r1, _080061D0 @ =gBgRegsBuffer
	adds r2, r1, #0
	adds r2, #0x40
	movs r3, #0
	movs r0, #0xff
	strh r0, [r2]
	adds r1, #0x44
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _080061D4 @ =0x03006920
	strb r3, [r0]
	bl sub_0804C9C4
	bl WaitFrame
	movs r1, #0x80
	lsls r1, r1, #6
	movs r0, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r0, _080061D8 @ =0x11201100
	bl _08000400
	ldr r1, _080061DC @ =0xFFFF0000
	ldr r0, [sp, #0xc]
	ands r0, r1
	ldr r1, _080061E0 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r4, #0
	bl SetBgCnt
	bl sub_08021804
	bl sub_0800F53C
_080061BC:
	ldr r0, _080061E4 @ =gPlayerStats
	ldr r3, _080061E8 @ =0x00000275
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080061EC
	bl sub_08007700
	b _080061F0
	.align 2, 0
_080061D0: .4byte gBgRegsBuffer
_080061D4: .4byte 0x03006920
_080061D8: .4byte 0x11201100
_080061DC: .4byte 0xFFFF0000
_080061E0: .4byte 0x00001C08
_080061E4: .4byte gPlayerStats
_080061E8: .4byte 0x00000275
_080061EC:
	bl sub_08007714
_080061F0:
	bl GetThreadCount
	bl GetMultiplayerId
	bl sub_08001F24
	cmp r5, #1
	bne _08006218
	ldr r0, _08006210 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	ldr r1, _08006214 @ =gPlayerStats
	b _0800624A
	.align 2, 0
_08006210: .4byte 0x03003CA4
_08006214: .4byte gPlayerStats
_08006218:
	bl sub_080076A8
	cmp r0, #0
	beq _08006238
	ldr r2, _08006230 @ =0x03003D08
	ldr r1, _08006234 @ =gPlayerStats
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	lsls r0, r0, #0xc
	b _08006246
	.align 2, 0
_08006230: .4byte 0x03003D08
_08006234: .4byte gPlayerStats
_08006238:
	ldr r2, _080062B4 @ =0x03003D08
	ldr r1, _080062B8 @ =gPlayerStats
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x16
_08006246:
	lsrs r0, r0, #0x16
	str r0, [r2]
_0800624A:
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r4, r1, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bl SetMusicEnabled
	ldr r0, _080062BC @ =0x00120002
	bl GetDataRecord
	adds r1, r0, #0
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	ldr r2, _080062C0 @ =gPaletteBuffer
	ldrb r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	ldrh r0, [r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	lsls r0, r0, #0xa
	orrs r1, r0
	movs r3, #0xf1
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	bl sub_0800454C
	bl sub_0800C3C0
	bl sub_080186A8
	bl sub_08013C84
	bl sub_08022AB4
	bl sub_08018254
	bl WaitFrame
	movs r4, #0
	b _080062CE
	.align 2, 0
_080062B4: .4byte 0x03003D08
_080062B8: .4byte gPlayerStats
_080062BC: .4byte 0x00120002
_080062C0: .4byte gPaletteBuffer
_080062C4:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800AF90
	adds r4, #1
_080062CE:
	bl sub_08001EC4
	cmp r4, r0
	blo _080062C4
	bl sub_08027280
	bl sub_0802901C
	bl sub_08007554
	bl sub_08004EF8
	bl sub_08020F94
	bl sub_08021180
	bl sub_0802103C
	ldr r0, _08006314 @ =gPlayerStats
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	bne _08006318
	bl sub_080074F0
	cmp r0, #0

	non_word_aligned_thumb_func_start sub_08006306
sub_08006306: @ 0x08006306
	bne _08006318
	movs r0, #0x1e
	bl sub_0800F1EC
	movs r0, #1
	str r0, [r4]
	b _0800631E
	.align 2, 0
_08006314: .4byte gPlayerStats
_08006318:
	movs r0, #6
	bl sub_0800F308
_0800631E:
	bl sub_08007554
	b _0800635C
_08006324:
	bl sub_080229E0
	cmp r0, #0
	bne _08006358
	bl sub_080076E0
	cmp r0, #0
	bne _08006358
	bl sub_08007510
	cmp r0, #0
	bne _08006358
	bl sub_08007604
	cmp r0, #0
	bne _08006358
	bl sub_08007670
	cmp r0, #0
	bne _08006358
	bl sub_080077C0
	cmp r0, #0
	bne _08006358
	bl sub_0800ED74
_08006358:
	bl WaitFrame
_0800635C:
	bl sub_08001F08
	cmp r0, #0
	bne _08006374
	bl sub_08007578
	cmp r0, #0
	bne _08006374
	bl sub_080074CC
	cmp r0, #0
	beq _08006324
_08006374:
	bl SndMPlayAllStop
	b _0800637E
_0800637A:
	bl WaitFrame
_0800637E:
	bl sub_0800F298
	cmp r0, #0
	beq _0800637A
	bl sub_08001F08
	cmp r0, #0
	beq _0800639A
	bl sub_080244F4
	bl sub_08001FA8
	bl sub_08001E40
_0800639A:
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl sub_08029418
	bl sub_08007500
	bl sub_0800C46C
	bl sub_08018278
	bl sub_0800F2B0
	cmp r0, #0
	bne _080063D0
	bl sub_0800F3A0
	b _080063C8
_080063C4:
	bl WaitFrame
_080063C8:
	bl sub_0800F298
	cmp r0, #0
	beq _080063C4
_080063D0:
	ldr r1, _08006404 @ =gPlayerStats
	ldr r3, _08006408 @ =0x00000275
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl QuitToTitle
	ldr r1, _0800640C @ =0x03006920
	movs r0, #1
	strb r0, [r1]
	bl sub_0804C9C4
	ldr r0, _08006410 @ =0x11201100
	bl _08000400
	movs r0, #0
	bl SoftReset
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006404: .4byte gPlayerStats
_08006408: .4byte 0x00000275
_0800640C: .4byte 0x03006920
_08006410: .4byte 0x11201100

	thumb_func_start sub_08006414
sub_08006414: @ 0x08006414
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1b4
	movs r0, #0
	str r0, [sp, #0x180]
	movs r1, #0
	str r1, [sp, #0x18c]
	bl GetMultiplayerId
	mov sl, r0
	ldr r0, _0800644C @ =0x000900DE
	bl GetDataRecord
	str r0, [sp, #0x184]
	add r5, sp, #0x174
	movs r2, #0x47
	add r2, sp
	mov sb, r2
	mov r3, sp
	adds r3, #0x3c
	str r3, [sp, #0x1a0]
	mov r4, sp
	adds r4, #0x50
	str r4, [sp, #0x1a8]
	b _08006454
	.align 2, 0
_0800644C: .4byte 0x000900DE
_08006450:
	bl WaitFrame
_08006454:
	bl sub_0800F298
	cmp r0, #0
	beq _08006450
	ldr r6, _080064DC @ =0x03003CA4
	ldr r0, [r6]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6]
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0xb0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _080064E0 @ =0xFFFF0000
	add r4, sp, #0x174
	ldr r0, [r4]
	ands r0, r1
	movs r1, #0x9c
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4]
	movs r0, #1
	adds r1, r5, #0
	bl SetBgCnt
	ldr r0, _080064E4 @ =0x00009A01
	strh r0, [r4]
	movs r0, #2
	adds r1, r5, #0
	bl SetBgCnt
	movs r0, #0xf
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r4]
	bl GetDataRecord
	adds r7, r0, #0
	ldrh r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bge _080064F4
	ldr r0, [r6]
	lsrs r0, r0, #9
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080064E8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r2, r5
	movs r0, #0
	b _080064EC
	.align 2, 0
_080064DC: .4byte 0x03003CA4
_080064E0: .4byte 0xFFFF0000
_080064E4: .4byte 0x00009A01
_080064E8:
	movs r0, #0
	adds r1, r2, #0
_080064EC:
	movs r2, #0x10
	bl LoadPalette
	b _080064FE
_080064F4:
	movs r0, #0
	adds r1, r2, #0
	movs r2, #0x10
	bl LoadPalette
_080064FE:
	adds r0, r4, #4
	bl LZ77DecompressAlloc
	mov r8, r0
	bl WaitFrame
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08006556
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08006538
	ldr r1, _08006534 @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r7, #0
	bl QueueCopy
	ldr r7, [sp, #0x184]
	adds r7, #0xa
	str r7, [sp, #0x1a4]
	b _08006582
	.align 2, 0
_08006534: .4byte 0x06004000
_08006538:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r7, #0
	bl QueueCopy
	ldr r0, [sp, #0x184]
	adds r0, #0xa
	str r0, [sp, #0x1a4]
	b _08006582

	non_word_aligned_thumb_func_start sub_0800654E
sub_0800654E: @ 0x0800654E
	ands r0, r2
	strb r0, [r1, #3]
	bl _08007168
_08006556:
	movs r6, #0
	ldr r1, [sp, #0x184]
	adds r1, #0xa
	str r1, [sp, #0x1a4]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r4, r7, #0
_08006564:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #3
	bl QueueCopy
	bl WaitFrame
	movs r2, #0x80
	lsls r2, r2, #3
	adds r5, r5, r2
	adds r4, r4, r2
	adds r6, #1
	cmp r6, #0x1f
	bls _08006564
_08006582:
	bl WaitFrame
	ldr r1, _08006724 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	movs r0, #0x22
	bl GetDataRecord
	adds r4, r0, #0
	adds r0, r4, #4
	bl LZ77DecompressAlloc
	mov r8, r0
	bl WaitFrame
	movs r6, #0
	movs r1, #0x80
	lsls r1, r1, #1
	add r0, sp, #0x164
_080065BC:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #3
	bls _080065BC
	add r4, sp, #0x120
	ldr r1, _08006728 @ =0x00100062
	adds r0, r4, #0
	movs r2, #4
	movs r3, #1
	bl sub_08026ADC
	ldr r0, _0800672C @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #9
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080065EE
	ldr r1, [r4, #0xc]
	adds r1, #0xa0
	movs r0, #0x14
	movs r2, #1
	bl LoadPalette
_080065EE:
	bl WaitFrame
	ldr r1, _08006730 @ =0x0600E000
	movs r2, #0x80
	lsls r2, r2, #5
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	ldr r6, _08006734 @ =gBgRegsBuffer
	movs r5, #0
	strh r5, [r6, #8]
	strh r5, [r6, #0xa]
	strh r5, [r6, #4]
	strh r5, [r6, #6]
	ldr r0, _08006738 @ =gPlayers
	movs r1, #0xd4
	mov r3, sl
	muls r3, r1, r3
	adds r0, #0xd0
	adds r3, r3, r0
	ldr r4, [r3]
	ldrh r2, [r4]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldr r4, [r3]
	ldrh r2, [r4, #2]
	ldr r0, _0800673C @ =0xFFFFF000
	ands r0, r2
	strh r0, [r4, #2]
	ldr r2, [r3]
	ldrb r0, [r2, #3]
	ands r1, r0
	strb r1, [r2, #3]
	movs r0, #0xb7
	lsls r0, r0, #1
	add r0, sp
	strh r5, [r0]
	add r0, sp, #0x16c
	strh r5, [r0]
	bl sub_08001F64
	cmp r0, #0
	beq _0800665C
	movs r0, #0x70
	bl PlayBGM
_0800665C:
	movs r0, #6
	bl sub_0800F308
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	movs r3, #0x78
	str r3, [sp, #0x188]
	movs r0, #0xb
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #2
	movs r1, #0x14
	movs r2, #1
	movs r3, #5
	bl sub_080044E4
	ldrh r0, [r6, #0xa]
	cmp r0, #0x59
	bhi _080066E8
	adds r4, r6, #0
	add r6, sp, #0x120
	add r5, sp, #0x16c
	movs r7, #1
_08006692:
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	ldr r0, _08006740 @ =0x03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080066DE
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0xb7
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	ldr r2, [sp, #0x188]
	lsls r0, r2, #0x10
	ldr r1, _08006744 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x188]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r5]
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x70
	movs r3, #0
	bl sub_0802706C
_080066DE:
	bl WaitFrame
	ldrh r0, [r4, #0xa]
	cmp r0, #0x59
	bls _08006692
_080066E8:
	ldr r1, _08006748 @ =0x0010005B
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x1c
	movs r2, #0
	bl sub_08026ADC
	movs r0, #0xe
	mov r2, sb
	strb r0, [r2]
	movs r0, #0xd
	ldr r3, [sp, #0x1a0]
	strb r0, [r3]
_08006702:
	bl sub_0800ED74
	ldr r0, _0800674C @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800671A
	ldr r1, _08006734 @ =gBgRegsBuffer
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
_0800671A:
	movs r6, #0
	ldr r7, _08006750 @ =0x080FB504
	ldr r5, _08006754 @ =0x03004650
	b _0800679A
	.align 2, 0
_08006724: .4byte 0x0600D000
_08006728: .4byte 0x00100062
_0800672C: .4byte 0x03003CA4
_08006730: .4byte 0x0600E000
_08006734: .4byte gBgRegsBuffer
_08006738: .4byte gPlayers
_0800673C: .4byte 0xFFFFF000
_08006740: .4byte 0x03003D08
_08006744: .4byte 0xFFFF0000
_08006748: .4byte 0x0010005B
_0800674C: .4byte gFrameCounter
_08006750: .4byte 0x080FB504
_08006754: .4byte 0x03004650
_08006758:
	movs r0, #0x34
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, [sp, #0x1a8]
	adds r4, r0, r4
	movs r0, #0xd4
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r0, [r0]
	ldrb r0, [r0]
	movs r1, #0xc
	ands r1, r0
	ldr r0, _08006818 @ =0x03003CA8
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r1, [r1]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08026ADC
	strb r6, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xe
	strb r0, [r1]
	adds r4, #0x20
	movs r0, #0xd
	strb r0, [r4]
	adds r6, #1
_0800679A:
	bl sub_08001EC4
	cmp r6, r0
	blo _08006758
	ldr r2, [sp, #0x1a8]
	ldr r1, [r2, #0xc]
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x1e
	movs r2, #1
	bl LoadPalette
	ldr r4, [sp, #0x1a8]
	ldr r1, [r4, #0xc]
	adds r1, #0x80
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	ldr r0, _0800681C @ =0x03003D08
	ldr r0, [r0]
	str r0, [sp, #0x17c]
	ldr r1, _08006820 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	str r0, [sp, #0x178]
	ldr r7, [sp, #0x180]
	cmp r7, #0
	beq _080067EA
	ldr r1, _08006824 @ =gKeysRepeat
	movs r0, #0
	strh r0, [r1]
_080067EA:
	ldr r0, _08006824 @ =gKeysRepeat
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080067F8
	b _0800691C
_080067F8:
	movs r0, #0xe
	bl PlaySE
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	subs r0, #1
	cmp r0, #7
	bls _0800680C
	b _08006D42
_0800680C:
	lsls r0, r0, #2
	ldr r1, _08006828 @ =_0800682C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006818: .4byte 0x03003CA8
_0800681C: .4byte 0x03003D08
_08006820: .4byte gPlayers
_08006824: .4byte gKeysRepeat
_08006828: .4byte _0800682C
_0800682C: @ jump table
	.4byte _0800684C @ case 0
	.4byte _0800685C @ case 1
	.4byte _08006D42 @ case 2
	.4byte _0800687C @ case 3
	.4byte _0800689C @ case 4
	.4byte _080068BC @ case 5
	.4byte _080068DC @ case 6
	.4byte _080068FC @ case 7
_0800684C:
	ldr r1, _08006858 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	b _080068A6
	.align 2, 0
_08006858: .4byte gPlayers
_0800685C:
	ldr r1, _08006878 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	b _08006CF0
	.align 2, 0
_08006878: .4byte gPlayers
_0800687C:
	ldr r1, _08006898 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006898: .4byte gPlayers
_0800689C:
	ldr r1, _080068B8 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
_080068A6:
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r2]
	b _08006D42
	.align 2, 0
_080068B8: .4byte gPlayers
_080068BC:
	ldr r1, _080068D8 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_080068D8: .4byte gPlayers
_080068DC:
	ldr r1, _080068F8 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	b _08006CF0
	.align 2, 0
_080068F8: .4byte gPlayers
_080068FC:
	ldr r1, _08006918 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_08006918: .4byte gPlayers
_0800691C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08006926
	b _08006A58
_08006926:
	movs r0, #0xe
	bl PlaySE
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #7
	bls _08006938
	b _08006D42
_08006938:
	lsls r0, r0, #2
	ldr r1, _08006944 @ =_08006948
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006944: .4byte _08006948
_08006948: @ jump table
	.4byte _08006968 @ case 0
	.4byte _08006988 @ case 1
	.4byte _080069A8 @ case 2
	.4byte _080069C8 @ case 3
	.4byte _080069E8 @ case 4
	.4byte _08006A08 @ case 5
	.4byte _08006A18 @ case 6
	.4byte _08006A38 @ case 7
_08006968:
	ldr r1, _08006984 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	b _08006CF0
	.align 2, 0
_08006984: .4byte gPlayers
_08006988:
	ldr r1, _080069A4 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_080069A4: .4byte gPlayers
_080069A8:
	ldr r1, _080069C4 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	b _08006CF0
	.align 2, 0
_080069C4: .4byte gPlayers
_080069C8:
	ldr r1, _080069E4 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_080069E4: .4byte gPlayers
_080069E8:
	ldr r1, _08006A04 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	b _08006CF0
	.align 2, 0
_08006A04: .4byte gPlayers
_08006A08:
	ldr r1, _08006A14 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	b _08006CE2
	.align 2, 0
_08006A14: .4byte gPlayers
_08006A18:
	ldr r1, _08006A34 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	b _08006CF0
	.align 2, 0
_08006A34: .4byte gPlayers
_08006A38:
	ldr r1, _08006A54 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	b _08006CF0
	.align 2, 0
_08006A54: .4byte gPlayers
_08006A58:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08006A62
	b _08006BA8
_08006A62:
	movs r0, #0xe
	bl PlaySE
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #8
	bls _08006A74
	b _08006D42
_08006A74:
	lsls r0, r0, #2
	ldr r1, _08006A80 @ =_08006A84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006A80: .4byte _08006A84
_08006A84: @ jump table
	.4byte _08006AA8 @ case 0
	.4byte _08006AC8 @ case 1
	.4byte _08006AE8 @ case 2
	.4byte _08006B08 @ case 3
	.4byte _08006B28 @ case 4
	.4byte _08006B48 @ case 5
	.4byte _08006B68 @ case 6
	.4byte _08006D42 @ case 7
	.4byte _08006B88 @ case 8
_08006AA8:
	ldr r1, _08006AC4 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006AC4: .4byte gPlayers
_08006AC8:
	ldr r1, _08006AE4 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006AE4: .4byte gPlayers
_08006AE8:
	ldr r1, _08006B04 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006B04: .4byte gPlayers
_08006B08:
	ldr r1, _08006B24 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	b _08006CF0
	.align 2, 0
_08006B24: .4byte gPlayers
_08006B28:
	ldr r1, _08006B44 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x70
	b _08006CF0
	.align 2, 0
_08006B44: .4byte gPlayers
_08006B48:
	ldr r1, _08006B64 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_08006B64: .4byte gPlayers
_08006B68:
	ldr r1, _08006B84 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_08006B84: .4byte gPlayers
_08006B88:
	ldr r1, _08006BA4 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x70
	b _08006CF0
	.align 2, 0
_08006BA4: .4byte gPlayers
_08006BA8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08006BB2
	b _08006CFC
_08006BB2:
	movs r0, #0xe
	bl PlaySE
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #8
	bls _08006BC4
	b _08006D42
_08006BC4:
	lsls r0, r0, #2
	ldr r1, _08006BD0 @ =_08006BD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006BD0: .4byte _08006BD4
_08006BD4: @ jump table
	.4byte _08006BF8 @ case 0
	.4byte _08006C18 @ case 1
	.4byte _08006C38 @ case 2
	.4byte _08006C58 @ case 3
	.4byte _08006C78 @ case 4
	.4byte _08006D42 @ case 5
	.4byte _08006C98 @ case 6
	.4byte _08006CB8 @ case 7
	.4byte _08006CD8 @ case 8
_08006BF8:
	ldr r1, _08006C14 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_08006C14: .4byte gPlayers
_08006C18:
	ldr r1, _08006C34 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_08006C34: .4byte gPlayers
_08006C38:
	ldr r1, _08006C54 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_08006C54: .4byte gPlayers
_08006C58:
	ldr r1, _08006C74 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	b _08006CF0
	.align 2, 0
_08006C74: .4byte gPlayers
_08006C78:
	ldr r1, _08006C94 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006C94: .4byte gPlayers
_08006C98:
	ldr r1, _08006CB4 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_08006CB4: .4byte gPlayers
_08006CB8:
	ldr r1, _08006CD4 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	b _08006CF0
	.align 2, 0
_08006CD4: .4byte gPlayers
_08006CD8:
	ldr r1, _08006CF8 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
_08006CE2:
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x60
_08006CF0:
	orrs r0, r1
	strh r0, [r2]
	b _08006D42
	.align 2, 0
_08006CF8: .4byte gPlayers
_08006CFC:
	ldr r0, _08006D1C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08006D20
	ldr r3, [sp, #0x180]
	cmp r3, #0
	bne _08006D42
	movs r0, #0xf
	bl PlaySE
	movs r4, #1
	str r4, [sp, #0x180]
	b _08006D42
	.align 2, 0
_08006D1C: .4byte gKeysNew
_08006D20:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006D42
	ldr r5, [sp, #0x180]
	cmp r5, #0
	beq _08006D42
	movs r0, #0x10
	bl PlaySE
	movs r7, #0
	str r7, [sp, #0x180]
	ldr r2, [r4]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #3]
_08006D42:
	ldr r2, _08006D88 @ =gPlayers
	movs r0, #0xd4
	mov r1, sl
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0xd0
	adds r5, r1, r0
	ldr r4, [r5]
	ldrh r3, [r4]
	lsrs r1, r3, #4
	movs r0, #1
	lsls r0, r1
	ldr r1, [sp, #0x17c]
	ands r0, r1
	cmp r0, #0
	bne _08006D6E
	ldr r7, [sp, #0x178]
	lsls r1, r7, #4
	movs r0, #0xf
	ands r0, r3
	orrs r0, r1
	strh r0, [r4]
_08006D6E:
	ldr r4, [r5]
	ldrh r3, [r4]
	lsrs r1, r3, #4
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08006D8C
	movs r0, #0xf
	ands r0, r3
	movs r1, #0x80
	orrs r0, r1
	b _08006D94
	.align 2, 0
_08006D88: .4byte gPlayers
_08006D8C:
	cmp r1, #8
	ble _08006D96
	movs r0, #0xf
	ands r0, r3
_08006D94:
	strh r0, [r4]
_08006D96:
	ldr r0, [sp, #0x180]
	cmp r0, #0
	beq _08006DB4
	movs r0, #0xd4
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #3]
	movs r1, #0xf0
	orrs r0, r1
	strb r0, [r2, #3]
_08006DB4:
	movs r6, #0
	movs r0, #0x34
	mov r2, sl
	muls r2, r0, r2
	str r2, [sp, #0x190]
	ldr r5, [sp, #0x1a8]
	movs r3, #0
	str r3, [sp, #0x1b0]
	b _08006F6A
_08006DC6:
	movs r0, #0xd4
	muls r0, r6, r0
	ldr r4, _08006E08 @ =0x03004650
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x14
	cmp r4, #0
	beq _08006DDC
	b _08006F60
_08006DDC:
	cmp r6, sl
	bne _08006E14
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r7, _08006E0C @ =0x080FB564
	adds r1, r0, r7
	ldrh r1, [r1]
	ldr r2, _08006E10 @ =0x080FB566
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r3, sl
	adds r3, #9
	lsls r3, r3, #0x10
	str r4, [sp]
	ldr r4, [sp, #0x1a8]
	ldr r7, [sp, #0x190]
	adds r0, r4, r7
	lsrs r3, r3, #0x10
	bl sub_08026B90
	b _08006E34
	.align 2, 0
_08006E08: .4byte 0x03004650
_08006E0C: .4byte 0x080FB564
_08006E10: .4byte 0x080FB566
_08006E14:
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r2, _08006EA4 @ =0x080FB564
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _08006EA8 @ =0x080FB566
	adds r0, r0, r3
	ldrh r2, [r0]
	adds r3, r6, #5
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r5, #0
	bl sub_08026B90
_08006E34:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x154
	lsls r4, r6, #1
	adds r7, r0, r4
	add r3, sp, #0x15c
	adds r3, r3, r4
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	mov r1, sb
	adds r2, r7, #0
	bl sub_08026C40
	movs r0, #0xd4
	muls r0, r6, r0
	ldr r1, _08006EAC @ =0x03004650
	adds r2, r0, r1
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	cmp r0, #0xf
	beq _08006F00
	add r0, sp, #0x164
	adds r4, r0, r4
	ldrh r0, [r4]
	subs r0, #0x80
	movs r3, #0
	mov r8, r3
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bgt _08006EB0
	strh r1, [r4]
	ldr r0, [r2]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r4, _08006EA4 @ =0x080FB564
	adds r1, r0, r4
	ldrh r1, [r1]
	ldr r2, _08006EA8 @ =0x080FB566
	adds r0, r0, r2
	ldrh r2, [r0]
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r5, #0
	mov r3, sb
	bl sub_08026B90
	b _08006F60
	.align 2, 0
_08006EA4: .4byte 0x080FB564
_08006EA8: .4byte 0x080FB566
_08006EAC: .4byte 0x03004650
_08006EB0:
	ldr r0, [r2]
	ldrh r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #2
	ldr r3, _08006EF8 @ =0x080FB564
	adds r0, r1, r3
	ldrh r0, [r0]
	ldr r2, _08006EFC @ =0x080FB566
	adds r1, r1, r2
	ldrh r1, [r1]
	ldrh r3, [r7]
	mov r7, r8
	str r7, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x58
	ldr r7, [sp, #0x1b0]
	adds r2, r2, r7
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r7, #0
	ldrsh r2, [r4, r7]
	str r2, [sp, #0x10]
	movs r7, #0
	ldrsh r2, [r4, r7]
	str r2, [sp, #0x14]
	mov r2, r8
	str r2, [sp, #0x18]
	mov r2, sb
	bl sub_08003724
	b _08006F60
	.align 2, 0
_08006EF8: .4byte 0x080FB564
_08006EFC: .4byte 0x080FB566
_08006F00:
	add r0, sp, #0x164
	adds r4, r0, r4
	ldrh r0, [r4]
	adds r0, #0x80
	movs r3, #0
	mov r8, r3
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _08006F1C
	strh r1, [r4]
_08006F1C:
	ldr r0, [r2]
	ldrh r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #2
	ldr r2, _08006FB4 @ =0x080FB564
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r3, _08006FB8 @ =0x080FB566
	adds r1, r1, r3
	ldrh r1, [r1]
	ldrh r3, [r7]
	mov r7, r8
	str r7, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x58
	ldr r7, [sp, #0x1b0]
	adds r2, r2, r7
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r7, #0
	ldrsh r2, [r4, r7]
	str r2, [sp, #0x10]
	movs r7, #0
	ldrsh r2, [r4, r7]
	str r2, [sp, #0x14]
	mov r2, r8
	str r2, [sp, #0x18]
	mov r2, sb
	bl sub_08003724
_08006F60:
	adds r5, #0x34
	ldr r3, [sp, #0x1b0]
	adds r3, #0x34
	str r3, [sp, #0x1b0]
	adds r6, #1
_08006F6A:
	bl sub_08001EC4
	cmp r6, r0
	bhs _08006F74
	b _08006DC6
_08006F74:
	add r2, sp, #0x170
	movs r3, #0xb9
	lsls r3, r3, #1
	add r3, sp
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x1a8]
	movs r1, #4
	bl sub_08026C40
	movs r6, #0
	ldr r7, _08006FB4 @ =0x080FB564
	add r4, sp, #0x170
	adds r5, r7, #0
_08006F90:
	movs r0, #1
	lsls r0, r6
	ldr r1, [sp, #0x17c]
	ands r0, r1
	cmp r0, #0
	beq _08006FCC
	cmp r6, #0
	bne _08006FBC
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #0x1c
	movs r3, #0xd
	bl sub_08026B90
	b _08006FCC
	.align 2, 0
_08006FB4: .4byte 0x080FB564
_08006FB8: .4byte 0x080FB566
_08006FBC:
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #0x1c
	movs r3, #4
	bl sub_08026B90
_08006FCC:
	adds r5, #4
	adds r6, #1
	cmp r6, #8
	bls _08006F90
	ldr r5, [sp, #0x1a4]
	movs r6, #0
	ldr r2, [sp, #0x184]
	ldrh r0, [r2, #8]
	cmp r6, r0
	bhs _08007006
	ldr r3, [sp, #0x178]
	cmp r6, r3
	beq _08007006
	adds r1, r0, #0
_08006FE8:
	ldrh r0, [r5]
	adds r3, r6, #1
	cmp r0, #0
	beq _08006FF8
_08006FF0:
	adds r5, #2
	ldrh r0, [r5]
	cmp r0, #0
	bne _08006FF0
_08006FF8:
	adds r5, #2
	adds r6, r3, #0
	cmp r6, r1
	bhs _08007006
	ldr r4, [sp, #0x178]
	cmp r6, r4
	bne _08006FE8
_08007006:
	adds r0, r5, #0
	bl sub_0800ED80
	ldr r1, _08007074 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0xf
	asrs r0, r0, #0x10
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r5, #0
	movs r2, #0x8c
	bl sub_0800EB30
	ldr r0, _08007078 @ =0x03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08007062
	add r6, sp, #0x120
	add r4, sp, #0x16c
	movs r3, #0xb7
	lsls r3, r3, #1
	add r3, sp
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08026C40
	ldr r7, [sp, #0x188]
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r4]
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x70
	movs r3, #0
	bl sub_0802706C
_08007062:
	bl sub_08001F64
	cmp r0, #0
	beq _0800711A
	movs r4, #0
	movs r6, #0
	ldr r5, _0800707C @ =0x03004650
	b _08007094
	.align 2, 0
_08007074: .4byte 0x03003CA0
_08007078: .4byte 0x03003D08
_0800707C: .4byte 0x03004650
_08007080:
	movs r0, #0xd4
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	cmp r0, #0xf
	bne _08007092
	adds r4, #1
_08007092:
	adds r6, #1
_08007094:
	bl sub_08001EC4
	cmp r6, r0
	blo _08007080
	bl sub_08001EC4
	cmp r4, r0
	bne _08007128
	movs r4, #0
	movs r6, #1
	ldr r5, _080070AC @ =0x03004650
	b _080070CA
	.align 2, 0
_080070AC: .4byte 0x03004650
_080070B0:
	ldr r0, [r5]
	ldrh r1, [r0]
	lsrs r1, r1, #4
	movs r0, #0xd4
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	beq _080070C8
	adds r4, #1
_080070C8:
	adds r6, #1
_080070CA:
	bl sub_08001EC4
	cmp r6, r0
	blo _080070B0
	ldr r1, _08007110 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r2, r1, #0
	adds r2, #0xd0
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _080070EE
	movs r4, #0
_080070EE:
	cmp r4, #0
	bne _08007114
	ldr r1, [sp, #0x18c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18c]
	cmp r1, #0xa
	bls _08007128
	ldr r2, [r2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0xb0
	orrs r0, r1
	strb r0, [r2, #3]
	b _08007168
	.align 2, 0
_08007110: .4byte gPlayers
_08007114:
	movs r3, #0
	str r3, [sp, #0x18c]
	b _08007128
_0800711A:
	ldr r0, _08007160 @ =gPlayers
	adds r0, #0xd0
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	cmp r0, #0xb
	beq _08007168
_08007128:
	ldr r4, [sp, #0x178]
	cmp r4, #0
	bne _0800714A
	ldr r0, _08007160 @ =gPlayers
	movs r1, #0xd4
	mov r5, sl
	muls r5, r1, r5
	adds r1, r5, #0
	adds r0, #0xd0
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r2, [r1, #3]
	lsrs r0, r2, #4
	cmp r0, #0xf
	bne _0800714A
	bl sub_0800654E
_0800714A:
	ldr r0, _08007164 @ =0x03003CA4
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08007158
	b _08007464
_08007158:
	bl WaitFrame
	bl _08006702
	.align 2, 0
_08007160: .4byte gPlayers
_08007164: .4byte 0x03003CA4
_08007168:
	ldr r7, [sp, #0x178]
	cmp r7, #0
	beq _0800719C
	bl sub_08001F64
	cmp r0, #0
	bne _0800719C
	ldr r1, _080071C4 @ =gPlayers
	adds r1, #0xd0
	ldr r0, [r1]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	str r0, [sp, #0x178]
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r4, [sp, #0x178]
	lsls r3, r4, #4
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
_0800719C:
	movs r0, #6
	bl sub_0800F3A0
	bl sub_08001F64
	cmp r0, #0
	beq _080071B0
	movs r0, #2
	bl FadeOutBGM
_080071B0:
	movs r5, #0x90
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x19c]
	mov r0, sl
	adds r0, #9
	lsls r0, r0, #0x10
	str r0, [sp, #0x198]
	b _08007320
	.align 2, 0
_080071C4: .4byte gPlayers
_080071C8:
	bl sub_0800ED74
	movs r6, #0
	movs r0, #0x34
	mov r7, sl
	muls r7, r0, r7
	str r7, [sp, #0x194]
	ldr r7, [sp, #0x1a8]
	movs r0, #0
	str r0, [sp, #0x1ac]
	b _080072D8
_080071DE:
	movs r0, #0xd4
	muls r0, r6, r0
	ldr r1, _0800721C @ =0x03004650
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x14
	cmp r4, #0
	bne _080072CE
	cmp r6, sl
	bne _08007228
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r2, _08007220 @ =0x080FB564
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _08007224 @ =0x080FB566
	adds r0, r0, r3
	ldrh r2, [r0]
	str r4, [sp]
	ldr r4, [sp, #0x1a8]
	ldr r5, [sp, #0x194]
	adds r0, r4, r5
	ldr r4, [sp, #0x198]
	lsrs r3, r4, #0x10
	bl sub_08026B90
	b _08007248
	.align 2, 0
_0800721C: .4byte 0x03004650
_08007220: .4byte 0x080FB564
_08007224: .4byte 0x080FB566
_08007228:
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r5, _08007380 @ =0x080FB564
	adds r1, r0, r5
	ldrh r1, [r1]
	ldr r2, _08007384 @ =0x080FB566
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r3, r6, #5
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl sub_08026B90
_08007248:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r0, sp, #0x154
	lsls r4, r6, #1
	adds r5, r0, r4
	add r3, sp, #0x15c
	adds r3, r3, r4
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_08026C40
	add r0, sp, #0x164
	adds r4, r0, r4
	ldrh r0, [r4]
	adds r0, #0x80
	movs r1, #0
	mov sb, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _08007282
	strh r1, [r4]
_08007282:
	movs r0, #0xd4
	muls r0, r6, r0
	ldr r2, _08007388 @ =0x03004650
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #2
	ldr r3, _08007380 @ =0x080FB564
	adds r0, r1, r3
	ldrh r0, [r0]
	ldr r2, _08007384 @ =0x080FB566
	adds r1, r1, r2
	ldrh r1, [r1]
	ldrh r3, [r5]
	mov r5, sb
	str r5, [sp]
	adds r2, r7, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x58
	ldr r5, [sp, #0x1ac]
	adds r2, r2, r5
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	movs r5, #0
	ldrsh r2, [r4, r5]
	str r2, [sp, #0x10]
	movs r5, #0
	ldrsh r2, [r4, r5]
	str r2, [sp, #0x14]
	mov r2, sb
	str r2, [sp, #0x18]
	mov r2, r8
	bl sub_08003724
_080072CE:
	adds r7, #0x34
	ldr r3, [sp, #0x1ac]
	adds r3, #0x34
	str r3, [sp, #0x1ac]
	adds r6, #1
_080072D8:
	bl sub_08001EC4
	cmp r6, r0
	bhs _080072E2
	b _080071DE
_080072E2:
	ldr r0, _0800738C @ =0x03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800731C
	add r4, sp, #0x16c
	movs r5, #1
	str r5, [sp]
	ldr r0, [sp, #0x19c]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0xb7
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	ldr r7, [sp, #0x188]
	lsls r2, r7, #0x10
	ldrh r0, [r4]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x19c]
	movs r1, #0x70
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_0802706C
_0800731C:
	bl WaitFrame
_08007320:
	bl sub_0800F298
	cmp r0, #0
	bne _0800732A
	b _080071C8
_0800732A:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	bl sub_0800EC74
	movs r0, #0
	bl sub_0800EE44
	bl sub_0800ED08
	ldr r0, _08007390 @ =0x03003CA4
	ldr r1, [r0]
	lsrs r0, r1, #9
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080073C4
	ldr r0, [sp, #0x178]
	cmp r0, #8
	bne _080073B0
	lsrs r0, r1, #1
	ands r0, r2
	cmp r0, #0
	bne _0800739C
	ldr r0, _08007394 @ =gKeysHeld
	ldrh r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800739C
	ldr r1, _08007398 @ =0x03003910
	adds r2, r1, #0
	adds r2, #0x6a
	movs r0, #9
	strh r0, [r2]
	adds r2, r1, #0
	b _080073D2
	.align 2, 0
_08007380: .4byte 0x080FB564
_08007384: .4byte 0x080FB566
_08007388: .4byte 0x03004650
_0800738C: .4byte 0x03003D08
_08007390: .4byte 0x03003CA4
_08007394: .4byte gKeysHeld
_08007398: .4byte 0x03003910
_0800739C:
	ldr r0, _080073AC @ =0x03003910
	adds r2, r0, #0
	adds r2, #0x6a
	add r1, sp, #0x178
	ldrh r1, [r1]
	strh r1, [r2]
	b _080073D0
	.align 2, 0
_080073AC: .4byte 0x03003910
_080073B0:
	ldr r0, _080073C0 @ =0x03003910
	adds r2, r0, #0
	adds r2, #0x6a
	add r3, sp, #0x178
	ldrh r3, [r3]
	strh r3, [r2]
	b _080073D0
	.align 2, 0
_080073C0: .4byte 0x03003910
_080073C4:
	ldr r0, _08007424 @ =0x03003910
	adds r2, r0, #0
	adds r2, #0x6a
	add r4, sp, #0x178
	ldrh r4, [r4]
	strh r4, [r2]
_080073D0:
	adds r2, r0, #0
_080073D2:
	adds r6, r2, #0
	adds r6, #0x6e
	movs r5, #0
	movs r0, #1
	strh r0, [r6]
	ldr r4, _08007428 @ =0x03003CA4
	ldr r0, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	adds r1, r2, #0
	adds r1, #0x6a
	ldrh r0, [r1]
	cmp r0, #0
	bne _08007434
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r1]
	strh r5, [r6]
	ldr r0, _0800742C @ =0x000514C9
	bl SignalEvent
	ldr r0, [r4]
	movs r1, #8
	orrs r0, r1
	str r0, [r4]
	ldr r1, _08007430 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r0, r1
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x16]
	strh r5, [r0, #0xc]
	movs r0, #0
	bl sub_08019300
	b _08007464
	.align 2, 0
_08007424: .4byte 0x03003910
_08007428: .4byte 0x03003CA4
_0800742C: .4byte 0x000514C9
_08007430: .4byte gPlayers
_08007434:
	ldr r4, _08007474 @ =0x03006410
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08007446
	ldr r0, [r4]
	bl KillThread
_08007446:
	bl GetMultiplayerId
	ldr r2, _08007478 @ =gPlayers
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r6]
	strh r1, [r0, #0x16]
	ldr r0, _0800747C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9a
	strh r5, [r0]
	ldr r0, _08007480 @ =0x00000BB9
	bl SignalEvent
_08007464:
	add sp, #0x1b4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007474: .4byte 0x03006410
_08007478: .4byte gPlayers
_0800747C: .4byte 0x030063D8
_08007480: .4byte 0x00000BB9

	thumb_func_start sub_08007484
sub_08007484: @ 0x08007484
	ldr r1, _0800748C @ =0x03003CA4
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800748C: .4byte 0x03003CA4

	thumb_func_start sub_08007490
sub_08007490: @ 0x08007490
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080074C4 @ =0x03003CE0
	ldr r0, _080074C8 @ =sub_08006144
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x64
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080074C4: .4byte 0x03003CE0
_080074C8: .4byte sub_08006144

	thumb_func_start sub_080074CC
sub_080074CC: @ 0x080074CC
	ldr r0, _080074D8 @ =0x03003CA4
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080074D8: .4byte 0x03003CA4
_080074DC:
	.byte 0x03, 0x48, 0x01, 0x68
	.byte 0x02, 0x22, 0x52, 0x42, 0x11, 0x40, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0x3C, 0x00, 0x03

	thumb_func_start sub_080074F0
sub_080074F0: @ 0x080074F0
	ldr r0, _080074FC @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080074FC: .4byte 0x03003CA4

	thumb_func_start sub_08007500
sub_08007500: @ 0x08007500
	ldr r0, _0800750C @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0800750C: .4byte 0x03003CA4

	thumb_func_start sub_08007510
sub_08007510: @ 0x08007510
	ldr r0, _0800751C @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0800751C: .4byte 0x03003CA4

	thumb_func_start sub_08007520
sub_08007520: @ 0x08007520
	ldr r0, _0800752C @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #4
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0800752C: .4byte 0x03003CA4

	thumb_func_start sub_08007530
sub_08007530: @ 0x08007530
	ldr r0, _08007540 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007540: .4byte 0x03003CA4

	thumb_func_start sub_08007544
sub_08007544: @ 0x08007544
	ldr r0, _08007550 @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08007550: .4byte 0x03003CA4

	thumb_func_start sub_08007554
sub_08007554: @ 0x08007554
	ldr r0, _08007560 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #8
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007560: .4byte 0x03003CA4

	thumb_func_start sub_08007564
sub_08007564: @ 0x08007564
	ldr r0, _08007574 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007574: .4byte 0x03003CA4

	thumb_func_start sub_08007578
sub_08007578: @ 0x08007578
	ldr r0, _08007584 @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08007584: .4byte 0x03003CA4

	thumb_func_start sub_08007588
sub_08007588: @ 0x08007588
	ldr r0, _08007594 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007594: .4byte 0x03003CA4
_08007598:
	.byte 0x03, 0x48, 0x01, 0x68, 0x11, 0x22, 0x52, 0x42
	.byte 0x11, 0x40, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0x3C, 0x00, 0x03

	thumb_func_start sub_080075AC
sub_080075AC: @ 0x080075AC
	ldr r0, _080075B8 @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080075B8: .4byte 0x03003CA4
_080075BC:
	.byte 0x02, 0x48, 0x01, 0x68
	.byte 0x20, 0x22, 0x11, 0x43, 0x01, 0x60, 0x70, 0x47, 0xA4, 0x3C, 0x00, 0x03, 0x03, 0x48, 0x01, 0x68
	.byte 0x21, 0x22, 0x52, 0x42, 0x11, 0x40, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0x3C, 0x00, 0x03

	thumb_func_start sub_080075E0
sub_080075E0: @ 0x080075E0
	ldr r0, _080075EC @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080075EC: .4byte 0x03003CA4

	thumb_func_start sub_080075F0
sub_080075F0: @ 0x080075F0
	ldr r0, _08007600 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007600: .4byte 0x03003CA4

	thumb_func_start sub_08007604
sub_08007604: @ 0x08007604
	ldr r0, _08007610 @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08007610: .4byte 0x03003CA4

	thumb_func_start sub_08007614
sub_08007614: @ 0x08007614
	ldr r0, _08007620 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007620: .4byte 0x03003CA4

	thumb_func_start sub_08007624
sub_08007624: @ 0x08007624
	ldr r0, _08007634 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x81
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007634: .4byte 0x03003CA4

	thumb_func_start sub_08007638
sub_08007638: @ 0x08007638
	ldr r0, _08007644 @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08007644: .4byte 0x03003CA4

	thumb_func_start sub_08007648
sub_08007648: @ 0x08007648
	ldr r0, _08007658 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007658: .4byte 0x03003CA4

	thumb_func_start sub_0800765C
sub_0800765C: @ 0x0800765C
	ldr r0, _08007668 @ =0x03003CA4
	ldr r1, [r0]
	ldr r2, _0800766C @ =0xFFFFFEFF
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007668: .4byte 0x03003CA4
_0800766C: .4byte 0xFFFFFEFF

	thumb_func_start sub_08007670
sub_08007670: @ 0x08007670
	ldr r0, _0800767C @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0800767C: .4byte 0x03003CA4

	thumb_func_start sub_08007680
sub_08007680: @ 0x08007680
	ldr r0, _08007690 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007690: .4byte 0x03003CA4

	thumb_func_start sub_08007694
sub_08007694: @ 0x08007694
	ldr r0, _080076A0 @ =0x03003CA4
	ldr r1, [r0]
	ldr r2, _080076A4 @ =0xFFFFFDFF
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080076A0: .4byte 0x03003CA4
_080076A4: .4byte 0xFFFFFDFF

	thumb_func_start sub_080076A8
sub_080076A8: @ 0x080076A8
	ldr r0, _080076B4 @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #9
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080076B4: .4byte 0x03003CA4

	thumb_func_start sub_080076B8
sub_080076B8: @ 0x080076B8
	ldr r0, _080076C8 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080076C8: .4byte 0x03003CA4

	thumb_func_start sub_080076CC
sub_080076CC: @ 0x080076CC
	ldr r0, _080076D8 @ =0x03003CA4
	ldr r1, [r0]
	ldr r2, _080076DC @ =0xFFFFFBFF
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080076D8: .4byte 0x03003CA4
_080076DC: .4byte 0xFFFFFBFF

	thumb_func_start sub_080076E0
sub_080076E0: @ 0x080076E0
	ldr r0, _080076EC @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #0xa
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080076EC: .4byte 0x03003CA4
_080076F0:
	.byte 0x02, 0x48, 0x00, 0x68, 0x00, 0x0B, 0x01, 0x21, 0x08, 0x40, 0x70, 0x47, 0xA4, 0x3C, 0x00, 0x03

	thumb_func_start sub_08007700
sub_08007700: @ 0x08007700
	ldr r0, _08007710 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #5
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007710: .4byte 0x03003CA4

	thumb_func_start sub_08007714
sub_08007714: @ 0x08007714
	ldr r0, _08007720 @ =0x03003CA4
	ldr r1, [r0]
	ldr r2, _08007724 @ =0xFFFFEFFF
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007720: .4byte 0x03003CA4
_08007724: .4byte 0xFFFFEFFF

	thumb_func_start sub_08007728
sub_08007728: @ 0x08007728
	ldr r0, _08007738 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007738: .4byte 0x03003CA4

	thumb_func_start sub_0800773C
sub_0800773C: @ 0x0800773C
	ldr r0, _08007748 @ =0x03003CA4
	ldr r1, [r0]
	ldr r2, _0800774C @ =0xFFFFDFFF
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08007748: .4byte 0x03003CA4
_0800774C: .4byte 0xFFFFDFFF

	thumb_func_start sub_08007750
sub_08007750: @ 0x08007750
	ldr r0, _0800775C @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #0xd
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0800775C: .4byte 0x03003CA4

	thumb_func_start sub_08007760
sub_08007760: @ 0x08007760
	push {r4, lr}
	ldr r4, _08007790 @ =0x03003CB0
	ldr r0, _08007794 @ =sub_08006414
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x64
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007790: .4byte 0x03003CB0
_08007794: .4byte sub_08006414

	thumb_func_start sub_08007798
sub_08007798: @ 0x08007798
	ldr r0, _080077A8 @ =0x03003CA4
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080077A8: .4byte 0x03003CA4

	thumb_func_start sub_080077AC
sub_080077AC: @ 0x080077AC
	ldr r0, _080077B8 @ =0x03003CA4
	ldr r1, [r0]
	ldr r2, _080077BC @ =0xFFFFF7FF
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080077B8: .4byte 0x03003CA4
_080077BC: .4byte 0xFFFFF7FF

	thumb_func_start sub_080077C0
sub_080077C0: @ 0x080077C0
	ldr r0, _080077CC @ =0x03003CA4
	ldr r0, [r0]
	lsrs r0, r0, #0xb
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080077CC: .4byte 0x03003CA4

	thumb_func_start sub_080077D0
sub_080077D0: @ 0x080077D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x174
	adds r7, r0, #0
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x134]
	ldr r1, _08007958 @ =0x00100010
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	bl sub_08026ADC
	add r4, sp, #0x4c
	ldr r1, _0800795C @ =0x00100004
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_08026ADC
	ldr r1, [r4, #0xc]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r1, sp
	adds r1, #0x6d
	movs r4, #0
	movs r0, #8
	strb r0, [r1]
	bl sub_08026C78
	str r0, [sp, #0x12c]
	ldrh r0, [r7]
	bl sub_0802EF7C
	adds r0, r7, #0
	adds r0, #0x74
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	ldr r1, _08007960 @ =0x0000FFFF
	str r1, [sp, #0xb4]
	movs r2, #0
	str r2, [sp, #0xcc]
	movs r3, #0
	str r3, [sp, #0xf0]
	movs r4, #0x80
	lsls r4, r4, #4
	str r4, [sp, #0xd4]
	movs r0, #0
	str r0, [sp, #0xf4]
	movs r1, #0
	str r1, [sp, #0x120]
	str r2, [sp, #0x114]
	mov r3, sp
	adds r3, #0x8e
	str r3, [sp, #0x13c]
	add r4, sp, #0xcc
	ldrh r4, [r4]
	strh r4, [r3]
	add r0, sp, #0x8c
	add r1, sp, #0xcc
	ldrh r1, [r1]
	strh r1, [r0]
	str r2, [sp, #0x104]
	movs r3, #0x86
	add r3, sp
	add r4, sp, #0xcc
	ldrh r4, [r4]
	strh r4, [r3]
	add r0, sp, #0x84
	add r1, sp, #0xcc
	ldrh r1, [r1]
	strh r1, [r0]
	mov r2, sp
	adds r2, #0x8a
	str r2, [sp, #0x138]
	add r3, sp, #0xcc
	ldrh r3, [r3]
	strh r3, [r2]
	add r5, sp, #0x88
	add r4, sp, #0xcc
	ldrh r4, [r4]
	strh r4, [r5]
	movs r0, #0
	str r0, [sp, #0xe8]
	add r4, sp, #0x98
	ldr r1, [sp, #0xcc]
	str r1, [r4]
	str r1, [r4, #4]
	movs r2, #0
	str r2, [sp, #0xfc]
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r0, [r0]
	str r0, [sp, #0xe4]
	adds r0, r7, #0
	bl sub_0801574C
	adds r0, r7, #0
	bl sub_08016270
	bl sub_08016DC0
	adds r0, r7, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r1, [r0]
	adds r0, #0x2a
	strh r1, [r0]
	ldrh r0, [r7]
	lsls r0, r0, #0x18
	str r0, [r7, #0x7c]
	movs r6, #0
	adds r3, r7, #0
	adds r3, #0xc8
	str r3, [sp, #0x168]
	adds r4, r3, #0
_080078D6:
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #0x80
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	movs r0, #0x94
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	movs r1, #0x94
	bl bzero
	adds r6, #1
	cmp r6, #4
	bls _080078D6
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0xa0
	str r4, [sp, #0x160]
	adds r0, r7, #0
	adds r0, #0xc4
	str r0, [sp, #0x164]
	movs r4, #0
_08007908:
	ldr r1, [r7, #0x1c]
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r7, #0x20]
	adds r0, r0, r4
	movs r1, #0x1c
	bl bzero
	adds r4, #0x1c
	adds r6, #1
	cmp r6, #2
	bls _08007908
	movs r0, #0
	ldr r1, [sp, #0x160]
	strh r0, [r1]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _08007932
	b _08007A2E
_08007932:
	movs r0, #1
	bl sub_08026C80
	movs r0, #1
	bl sub_08026D0C
	adds r0, r7, #0
	bl sub_0800C2C8
	ldr r0, _08007964 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r2, r0, r1
	movs r6, #0
	ldrh r1, [r0, #0xc]
	b _0800796C
	.align 2, 0
_08007958: .4byte 0x00100010
_0800795C: .4byte 0x00100004
_08007960: .4byte 0x0000FFFF
_08007964: .4byte 0x080FB0F8
_08007968:
	adds r6, #1
	adds r2, #8
_0800796C:
	cmp r6, r1
	bhs _0800797C
	ldrh r0, [r2, #2]
	cmp r0, #3
	bne _08007968
	ldr r0, [r2, #4]
	adds r2, r2, r0
	str r2, [sp, #0x128]
_0800797C:
	ldr r0, _080079B8 @ =gPlayerStats
	ldr r2, _080079BC @ =0x00000272
	adds r1, r0, r2
	ldrh r1, [r1]
	lsrs r1, r1, #4
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r0, r1
	movs r2, #4
	ands r0, r2
	cmp r0, #0
	bne _080079C0
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	ldr r4, [sp, #0x128]
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0xf
	str r0, [r7, #0x58]
	ldrh r0, [r4, #0x1a]
	adds r0, #2
	lsls r0, r0, #0xf
	str r0, [r7, #0x5c]
	strh r2, [r7, #0xa]
	b _080079DC
	.align 2, 0
_080079B8: .4byte gPlayerStats
_080079BC: .4byte 0x00000272
_080079C0:
	ldrh r1, [r7, #0x10]
	ldr r0, _080079EC @ =0x0000FFFE
	ands r0, r1
	movs r1, #0
	strh r0, [r7, #0x10]
	ldr r2, [sp, #0x128]
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #0xf
	str r0, [r7, #0x58]
	ldrh r0, [r2, #0x16]
	adds r0, #2
	lsls r0, r0, #0xf
	str r0, [r7, #0x5c]
	strh r1, [r7, #0xa]
_080079DC:
	ldrh r0, [r7]
	cmp r0, #1
	beq _08007A06
	cmp r0, #1
	bgt _080079F0
	cmp r0, #0
	beq _080079FA
	b _08007A2E
	.align 2, 0
_080079EC: .4byte 0x0000FFFE
_080079F0:
	cmp r0, #2
	beq _08007A14
	cmp r0, #3
	beq _08007A24
	b _08007A2E
_080079FA:
	ldr r0, [r7, #0x5c]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	str r0, [r7, #0x5c]
	b _08007A2E
_08007A06:
	ldr r0, [r7, #0x58]
	ldr r4, _08007A10 @ =0xFFFFC000
	adds r0, r0, r4
	b _08007A2C
	.align 2, 0
_08007A10: .4byte 0xFFFFC000
_08007A14:
	ldr r0, [r7, #0x5c]
	ldr r1, _08007A20 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r7, #0x5c]
	b _08007A2E
	.align 2, 0
_08007A20: .4byte 0xFFFFC000
_08007A24:
	ldr r0, [r7, #0x58]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
_08007A2C:
	str r0, [r7, #0x58]
_08007A2E:
	movs r3, #3
	str r3, [sp, #0xd8]
	movs r4, #0
	str r4, [sp, #0x11c]
	movs r0, #0
	str r0, [sp, #0x100]
	movs r1, #0
	str r1, [sp, #0xdc]
	movs r2, #0
	str r2, [sp, #0x110]
	bl sub_0800AF24

	non_word_aligned_thumb_func_start sub_08007A46
sub_08007A46: @ 0x08007A46
	adds r3, r7, #0
	adds r3, #0x74
	str r3, [sp, #0x158]
	adds r4, r7, #0
	adds r4, #0x72
	str r4, [sp, #0x154]
	adds r0, r7, #0
	adds r0, #0x70
	str r0, [sp, #0x150]
	adds r1, r7, #0
	adds r1, #0x76
	str r1, [sp, #0x15c]
	mov r2, sp
	adds r2, #0x80
	str r2, [sp, #0x148]
	mov r3, sp
	adds r3, #0x82
	str r3, [sp, #0x14c]
	movs r4, #0xd0
	adds r4, r4, r7
	mov sb, r4
	b _08007A76
_08007A72:
	bl WaitFrame
_08007A76:
	bl sub_080075AC
	cmp r0, #0
	beq _08007AA2
	bl sub_080074CC
	cmp r0, #0
	bne _08007AA2
	bl sub_08007578
	cmp r0, #0
	beq _08007A72
	b _08007AA2
_08007A90:
	bl WaitFrame
	movs r0, #3
	str r0, [sp, #0xd8]
	movs r1, #0
	str r1, [sp, #0xcc]
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [sp, #0xd4]
_08007AA2:
	bl sub_08007544
	cmp r0, #0
	bne _08007ABA
	ldr r0, _08007ADC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08007A90
_08007ABA:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _08007AC2
	b _08008208
_08007AC2:
	ldr r0, _08007AE0 @ =gPlayerStats
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08007AE4
	movs r0, #2
	strh r0, [r7, #6]
	movs r0, #1
	b _08007AEA
	.align 2, 0
_08007ADC: .4byte 0x030063D8
_08007AE0: .4byte gPlayerStats
_08007AE4:
	movs r0, #1
	strh r0, [r7, #6]
	movs r0, #2
_08007AEA:
	strh r0, [r7, #8]
	bl sub_08007510
	cmp r0, #0
	bne _08007B8E
	bl sub_08007604
	cmp r0, #0
	bne _08007B8E
	bl sub_08016DC0
	adds r0, r7, #0
	bl sub_08017664
	ldr r0, [r7, #0x58]
	ldr r1, [r7, #0x5c]
	ldrh r2, [r7, #0x16]
	bl sub_08013D9C
	ldr r1, _08007B30 @ =gFrameCounter
	ldr r1, [r1]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #2
	add r1, sp
	adds r1, #0x98
	str r0, [r1]
	add r0, sp, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08007B34
	str r0, [sp, #0xe8]
	movs r4, #0
	str r4, [sp, #0xdc]
	b _08007B56
	.align 2, 0
_08007B30: .4byte gFrameCounter
_08007B34:
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	beq _08007B42
	str r0, [sp, #0xe8]
	movs r0, #0
	str r0, [sp, #0xdc]
	b _08007B56
_08007B42:
	ldr r0, [sp, #0xdc]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xdc]
	cmp r0, #2
	ble _08007B56
	movs r2, #0
	str r2, [sp, #0xe8]
	movs r3, #0
	str r3, [sp, #0xdc]
_08007B56:
	ldr r4, [sp, #0xe8]
	cmp r4, #0
	beq _08007B7C
	bl sub_08022A88
	cmp r0, #0
	bne _08007B7C
	bl sub_080076E0
	cmp r0, #0
	bne _08007B7C
	adds r2, r4, #0
	adds r2, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0x78
	movs r1, #0x8c
	bl sub_08023330
_08007B7C:
	ldr r0, [sp, #0x120]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x120]
	ldr r0, [sp, #0x110]
	lsls r0, r0, #0x10
	str r0, [sp, #0x144]
	b _08007D40
_08007B8E:
	bl sub_08007510
	ldr r1, [sp, #0x110]
	lsls r1, r1, #0x10
	str r1, [sp, #0x144]
	cmp r0, #0
	bne _08007B9E
	b _08007D40
_08007B9E:
	movs r6, #0
	adds r2, r7, #0
	adds r2, #0x24
	str r2, [sp, #0x140]
	movs r3, #0
	str r3, [sp, #0x16c]
	mov sl, r2
	mov r8, r3
_08007BAE:
	mov r4, sl
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08007BC4
	ldrh r0, [r7, #0xc]
	cmp r0, #8
	bne _08007BFC
_08007BC4:
	ldr r0, [r7, #0x1c]
	add r0, r8
	ldrh r0, [r0]
	cmp r0, #6
	bgt _08007BD6
	cmp r0, #5
	blt _08007BD6
	bl sub_08046104
_08007BD6:
	movs r0, #0x73
	bl StopSE
	movs r0, #0x74
	bl StopBGM
	movs r1, #0
	mov r0, sl
	strh r1, [r0]
	ldr r0, [r7, #0x1c]
	add r0, r8
	strh r1, [r0]
	ldr r0, [r7, #0x20]
	ldr r2, [sp, #0x16c]
	adds r0, r0, r2
	movs r1, #0x1c
	bl bzero
	b _08007C06
_08007BFC:
	cmp r1, #0
	bge _08007C06
	movs r4, #0
	mov r3, sl
	strh r4, [r3]
_08007C06:
	ldr r0, [r7, #0x1c]
	add r0, r8
	ldrh r0, [r0]
	cmp r0, #1
	beq _08007C16
	cmp r0, #2
	beq _08007C8C
	b _08007D2C
_08007C16:
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	bne _08007C1E
	b _08007D2C
_08007C1E:
	bl sub_08007670
	cmp r0, #0
	beq _08007C28
	b _08007D2C
_08007C28:
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	bne _08007D2C
	bl sub_080077C0
	cmp r0, #0
	bne _08007CAC
	ldr r0, [sp, #0x140]
	add r0, r8
	ldrb r5, [r0]
	cmp r5, #0
	bne _08007D2C
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007C5C
	movs r1, #1
_08007C5C:
	adds r4, r7, #0
	adds r4, #0x56
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	bl sub_08007544
	cmp r0, #0
	bne _08007CF2
	bl GetPlayerClass
	cmp r0, #2
	beq _08007D16
	cmp r0, #2
	bgt _08007C80
	cmp r0, #1
	beq _08007D0E
	b _08007C84
_08007C80:
	cmp r0, #3
	beq _08007D1E
_08007C84:
	movs r0, #0x45
	bl PlaySE
	b _08007D2C
_08007C8C:
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	beq _08007D2C
	bl sub_08007670
	cmp r0, #0
	bne _08007D2C
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	bne _08007D2C
	bl sub_080077C0
	cmp r0, #0
	beq _08007CBA
_08007CAC:
	ldr r0, [sp, #0x140]
	add r0, r8
	strh r4, [r0]
	ldr r0, [r7, #0x1c]
	add r0, r8
	strh r4, [r0]
	b _08007D2C
_08007CBA:
	ldr r0, [sp, #0x140]
	add r0, r8
	ldrh r0, [r0]
	movs r5, #0x7f
	ands r5, r0
	cmp r5, #0
	bne _08007D2C
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007CE0
	movs r1, #2
_08007CE0:
	adds r4, r7, #0
	adds r4, #0x56
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	bl sub_08007544
	cmp r0, #0
	beq _08007CF6
_08007CF2:
	strh r5, [r4]
	b _08007D2C
_08007CF6:
	bl GetPlayerClass
	cmp r0, #2
	beq _08007D16
	cmp r0, #2
	bgt _08007D08
	cmp r0, #1
	beq _08007D0E
	b _08007D26
_08007D08:
	cmp r0, #3
	beq _08007D1E
	b _08007D26
_08007D0E:
	movs r0, #0x46
	bl PlaySE
	b _08007D2C
_08007D16:
	movs r0, #0x9d
	bl PlaySE
	b _08007D2C
_08007D1E:
	movs r0, #0x9e
	bl PlaySE
	b _08007D2C
_08007D26:
	movs r0, #0x45
	bl PlaySE
_08007D2C:
	ldr r3, [sp, #0x16c]
	adds r3, #0x1c
	str r3, [sp, #0x16c]
	movs r4, #2
	add sl, r4
	add r8, r4
	adds r6, #1
	cmp r6, #2
	bhi _08007D40
	b _08007BAE
_08007D40:
	bl sub_08007604
	cmp r0, #0
	bne _08007D50
	bl sub_080075AC
	cmp r0, #0
	beq _08007D5C
_08007D50:
	movs r0, #0x73
	bl StopSE
	movs r0, #0x74
	bl StopSE
_08007D5C:
	bl GetPlayerClass
	cmp r0, #1
	beq _08007DAC
	cmp r0, #2
	bne _08007DC8
	ldr r0, _08007DA8 @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r0, [r1]
	cmp r0, #0
	beq _08007DC8
	ldr r2, [sp, #0xf4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf4]
	ldrh r0, [r1]
	movs r1, #7
	subs r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r2, r0
	ble _08007DC8
	ldrh r0, [r7]
	movs r1, #1
	bl sub_08016C34
	movs r0, #0
	movs r1, #1
	movs r2, #1
	movs r3, #0
	bl sub_08027790
	movs r0, #0
	str r0, [sp, #0xf4]
	b _08007DC8
	.align 2, 0
_08007DA8: .4byte gPlayerStats
_08007DAC:
	ldr r0, [sp, #0x118]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x118]
	cmp r0, #0x3c
	bls _08007DC8
	adds r1, r7, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r1, #0
	str r1, [sp, #0x118]
_08007DC8:
	ldrh r1, [r7, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08007DE4
	bl sub_080271D0
	cmp r0, #0
	bne _08007DE4
	bl sub_08007510
	adds r5, r0, #0
	cmp r5, #0
	beq _08007DE8
_08007DE4:
	movs r0, #0
	b _08007E7C
_08007DE8:
	ldrh r1, [r7, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08007E1C
	ldr r0, [r7, #0x58]
	ldr r1, [r7, #0x5c]
	ldr r2, [r7, #0x60]
	ldr r3, [r7, #0x64]
	movs r4, #8
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #2]
	strh r5, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007E80
	ldrh r1, [r7, #0x10]
	ldr r0, _08007E18 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r7, #0x10]
	b _08007E80
	.align 2, 0
_08007E18: .4byte 0x0000FFFB
_08007E1C:
	adds r5, r7, #0
	adds r5, #0xc2
	ldrh r0, [r5]
	ldr r2, [sp, #0x164]
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r2, _08007E74 @ =gKeysHeld
	ldrh r1, [r2]
	movs r4, #0xf0
	ands r4, r1
	strh r4, [r0]
	ldrh r0, [r5]
	adds r0, #1
	movs r1, #5
	str r2, [sp, #0x170]
	bl __modsi3
	strh r0, [r5]
	ldr r2, [sp, #0x170]
	cmp r4, #0
	beq _08007E60
	movs r6, #0
	adds r3, r2, #0
	ldr r4, [sp, #0x164]
	ldr r2, [r4]
_08007E50:
	ldrh r0, [r3]
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r3]
	adds r2, #2
	adds r6, #1
	cmp r6, #4
	bls _08007E50
_08007E60:
	bl sub_0800F430
	cmp r0, #0
	beq _08007E7C
	ldr r0, _08007E74 @ =gKeysHeld
	ldrh r0, [r0]
	strh r0, [r7, #2]
	ldr r0, _08007E78 @ =gKeysNew
	ldrh r0, [r0]
	b _08007E7E
	.align 2, 0
_08007E74: .4byte gKeysHeld
_08007E78: .4byte gKeysNew
_08007E7C:
	strh r0, [r7, #2]
_08007E7E:
	strh r0, [r7, #4]
_08007E80:
	ldrh r2, [r7, #0x10]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08007E98
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #4]
	bics r1, r0
	strh r1, [r7, #4]
	ldr r0, _08007EE8 @ =0x0000FFEF
	ands r0, r2
	strh r0, [r7, #0x10]
_08007E98:
	ldr r1, [sp, #0x144]
	ldr r2, _08007EEC @ =0xFFFF0000
	adds r0, r1, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x110]
	cmp r0, #0
	bge _08007EAA
	movs r4, #0
	str r4, [sp, #0x110]
_08007EAA:
	ldrh r1, [r7, #0xc]
	adds r0, r1, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #1
	bhi _08007EBC
	b _08008164
_08007EBC:
	ldrh r1, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08007EF4
	bl sub_080076E0
	cmp r0, #0
	beq _08007ED4
	b _08008164
_08007ED4:
	bl sub_08007604
	cmp r0, #0
	beq _08007EDE
	b _08008164
_08007EDE:
	ldr r0, _08007EF0 @ =0x00018A92
	bl SignalEvent
	b _08008164
	.align 2, 0
_08007EE8: .4byte 0x0000FFEF
_08007EEC: .4byte 0xFFFF0000
_08007EF0: .4byte 0x00018A92
_08007EF4:
	ldr r0, _08007F5C @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _08007F92
	ldrh r1, [r7, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08007F92
	bl sub_080076E0
	cmp r0, #0
	beq _08007F14
	b _08008164
_08007F14:
	bl sub_08007510
	cmp r0, #0
	beq _08007F1E
	b _08008164
_08007F1E:
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	bne _08007F26
	b _08008164
_08007F26:
	ldr r0, [sp, #0xe8]
	cmp r0, #0
	bne _08007F2E
	b _08008164
_08007F2E:
	bl sub_080074F0
	cmp r0, #0
	beq _08007F60
	ldr r1, [sp, #0x110]
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _08007F40
	b _08008164
_08007F40:
	ldr r2, [sp, #0xe8]
	ldr r0, [r2, #0x10]
	ldr r1, [r2]
	asrs r1, r1, #0xc
	ldr r2, [r2, #4]
	asrs r2, r2, #0xc
	ldr r3, [sp, #0xe8]
	adds r3, #0x18
	bl sub_08027648
	movs r3, #0x1e
	str r3, [sp, #0x110]
	b _08008164
	.align 2, 0
_08007F5C: .4byte gKeysNew
_08007F60:
	ldr r0, [sp, #0xe8]
	bl PickUpFieldItem
	cmp r0, #0
	bne _08007F78
	ldr r0, _08007F74 @ =0x0009000F
	movs r1, #0x1e
	bl sub_08027140
	b _08008164
	.align 2, 0
_08007F74: .4byte 0x0009000F
_08007F78:
	movs r0, #0x26
	bl PlaySE
	ldrh r1, [r7, #6]
	mvns r1, r1
	ldrh r2, [r7, #4]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r7, #4]
	ldrh r0, [r7, #2]
	ands r1, r0
	strh r1, [r7, #2]
	b _08008164
_08007F92:
	adds r1, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08007FD4
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bne _08007FA8
	b _08008164
_08007FA8:
	bl sub_08007510
	cmp r0, #0
	beq _08007FB2
	b _08008164
_08007FB2:
	bl sub_08007604
	cmp r0, #0
	beq _08007FBC
	b _08008164
_08007FBC:
	bl sub_080076E0
	cmp r0, #0
	beq _08007FC6
	b _08008164
_08007FC6:
	ldr r0, _08007FD0 @ =0x00018A93
	bl SignalEvent
	b _08008164
	.align 2, 0
_08007FD0: .4byte 0x00018A93
_08007FD4:
	ldrh r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _08008062
	bl sub_080076E0
	cmp r0, #0
	beq _08007FE6
	b _08008164
_08007FE6:
	bl sub_08007510
	cmp r0, #0
	beq _08007FF0
	b _08008164
_08007FF0:
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	bne _08007FF8
	b _08008164
_08007FF8:
	ldr r6, [sp, #0xe4]
	adds r6, #0x64
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r5, [sp, #0xe4]
	adds r5, #0x66
	adds r1, r5, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800800E
	b _08008164
_0800800E:
	ldr r4, [sp, #0xcc]
	cmp r4, #0
	beq _08008016
	b _08008164
_08008016:
	ldr r0, [sp, #0xd8]
	cmp r0, #3
	beq _0800801E
	b _08008164
_0800801E:
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, #0x84
	ldr r1, [sp, #0xe4]
	adds r0, r1, r0
	bl UseItem
	cmp r0, #0
	bne _08008032
	b _08008164
_08008032:
	ldrh r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	subs r0, #1
	lsls r1, r0, #2
	ldr r2, [sp, #0xe4]
	adds r1, r2, r1
	adds r1, #0x88
	ldrh r1, [r1]
	lsls r1, r1, #0x12
	lsrs r4, r1, #0x19
	bl sub_08013F20
	adds r0, r4, #0
	bl sub_08014CF0
	adds r4, r0, #0
	ldrh r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	adds r1, r4, #1
	strh r1, [r0]
	b _08008164
_08008062:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080080A0
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	beq _08008164
	bl sub_08007604
	cmp r0, #0
	bne _08008164
	bl sub_08007510
	cmp r0, #0
	bne _08008164
	bl sub_0800F298
	cmp r0, #0
	beq _08008164
	bl sub_080077C0
	cmp r0, #0
	bne _08008164
	bl sub_080076E0
	cmp r0, #0
	bne _08008164
	bl StartCharacterMenu
	b _08008164
_080080A0:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08008164
	bl sub_08016FA0
	cmp r0, #0
	bne _08008164
	ldrh r0, [r7, #0xc]
	cmp r0, #7
	beq _08008164
	cmp r0, #5
	beq _08008164
	cmp r0, #9
	beq _08008164
	bl sub_08007544
	cmp r0, #0
	bne _08008164
	bl sub_08007510
	cmp r0, #0
	bne _08008164
	bl sub_080271D0
	cmp r0, #0
	bne _08008164
	bl sub_080077C0
	cmp r0, #0
	bne _08008164
	bl sub_080076E0
	cmp r0, #0
	bne _08008164
	ldr r5, _08008128 @ =0x03003D94
	adds r0, r5, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _08008164
	movs r3, #0xab
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08008164
	ldr r4, _0800812C @ =0x00000157
	adds r1, r1, r4
	ldrb r0, [r5, #2]
	ldrb r1, [r1]
	cmp r0, r1
	blo _08008164
	bl sub_080074F0
	adds r4, r0, #0
	cmp r4, #0
	beq _08008130
	bl GetMultiplayerId
	adds r1, r0, #0
	movs r0, #1
	movs r2, #0
	bl sub_08027828
	b _08008164
	.align 2, 0
_08008128: .4byte 0x03003D94
_0800812C: .4byte 0x00000157
_08008130:
	ldr r3, _0800821C @ =gKeysNew
	ldrh r1, [r7, #6]
	mvns r1, r1
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldrh r0, [r7, #4]
	ands r1, r0
	movs r2, #0
	strh r1, [r7, #4]
	strh r4, [r7, #0xa]
	movs r0, #9
	strh r0, [r7, #0xc]
	movs r0, #0xc
	strh r0, [r7, #0xe]
	adds r0, r7, #0
	adds r0, #0x54
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	strb r2, [r5, #2]
	ldr r1, _08008220 @ =0x030064D8
	ldrh r0, [r7]
	adds r0, #1
	str r0, [r1]
_08008164:
	bl sub_08007544
	cmp r0, #0
	beq _080081F6
	ldr r0, _08008224 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080081F6
	bl sub_08007638
	movs r6, #1
	cmp r0, #0
	beq _08008188
	movs r6, #0
_08008188:
	cmp r6, #0
	beq _080081F6
	ldr r0, [r7, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x128]
	ldrh r1, [r2, #0x14]
	subs r0, r0, r1
	cmp r0, #0
	bge _0800819C
	rsbs r0, r0, #0
_0800819C:
	cmp r0, #2
	bgt _080081F6
	ldr r0, [r7, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x128]
	ldrh r1, [r3, #0x16]
	subs r0, r0, r1
	adds r0, #1
	cmp r0, #0
	bge _080081B2
	rsbs r0, r0, #0
_080081B2:
	cmp r0, #2
	bgt _080081F6
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	beq _080081F6
	ldrh r2, [r7, #0x10]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	bne _080081F6
	ldrh r1, [r7, #4]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _080081F6
	movs r0, #9
	strh r0, [r7, #0xc]
	strh r3, [r7, #0xe]
	movs r0, #1
	orrs r0, r2
	strh r0, [r7, #0x10]
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08008228 @ =0x00090015
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x130]
_080081F6:
	ldr r4, [sp, #0x160]
	ldrh r0, [r4]
	subs r0, #1
	movs r1, #0
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08008208
	strh r1, [r4]
_08008208:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bls _08008210
	b _0800892C
_08008210:
	lsls r0, r0, #2
	ldr r1, _0800822C @ =_08008230
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800821C: .4byte gKeysNew
_08008220: .4byte 0x030064D8
_08008224: .4byte 0x030063D8
_08008228: .4byte 0x00090015
_0800822C: .4byte _08008230
_08008230: @ jump table
	.4byte _0800825C @ case 0
	.4byte _0800836C @ case 1
	.4byte _0800883E @ case 2
	.4byte _080084C6 @ case 3
	.4byte _08008666 @ case 4
	.4byte _08008838 @ case 5
	.4byte _0800883E @ case 6
	.4byte _0800885E @ case 7
	.4byte _080088CA @ case 8
	.4byte _08008920 @ case 9
	.4byte _0800892C @ case 10
_0800825C:
	movs r5, #0
	movs r0, #0
	str r0, [sp, #0xf0]
	ldrh r2, [r7, #2]
	movs r0, #0xf0
	ands r0, r2
	cmp r0, #0
	beq _0800826E
	movs r5, #5
_0800826E:
	ldrh r1, [r7, #6]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800828C
	ldrh r0, [r7, #4]
	ands r1, r0
	cmp r1, #0
	bne _0800828C
	ldr r0, [sp, #0xfc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xfc]
	b _08008290
_0800828C:
	movs r1, #0
	str r1, [sp, #0xfc]
_08008290:
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	bne _080082BA
	bl sub_08016CE0
	cmp r0, #0
	beq _080082BA
	ldr r2, [sp, #0xfc]
	cmp r2, #5
	bls _080082BA
	movs r0, #3
	strh r0, [r7, #0xc]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x12]
	movs r3, #0
	str r3, [sp, #0xf0]
	movs r4, #0x80
	str r4, [sp, #0xf8]
	b _0800892C
_080082BA:
	ldrh r1, [r7, #4]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _08008360
	bl sub_08007544
	cmp r0, #0
	beq _080082CE
	b _0800892C
_080082CE:
	bl sub_08014220
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [sp, #0x120]
	cmp r0, r1
	bls _080082DE
	b _0800892C
_080082DE:
	movs r2, #0
	str r2, [sp, #0x120]
	bl GetPlayerClass
	cmp r0, #1
	beq _08008302
	cmp r0, #1
	bgt _080082F4
	cmp r0, #0
	beq _080082F8
	b _0800830E
_080082F4:
	cmp r0, #3
	bgt _0800830E
_080082F8:
	bl sub_080102C4
	cmp r0, #0
	beq _0800830E
	b _08008316
_08008302:
	bl sub_08016EDC
	cmp r0, #0
	beq _0800830E
	movs r3, #1
	str r3, [sp, #0x120]
_0800830E:
	ldr r4, [sp, #0x120]
	cmp r4, #0
	bne _08008316
	b _0800892C
_08008316:
	bl GetPlayerClass
	cmp r0, #1
	beq _0800832E
	cmp r0, #1
	bgt _08008328
	cmp r0, #0
	beq _08008340
	b _0800834E
_08008328:
	cmp r0, #3
	bgt _0800834E
	b _08008340
_0800832E:
	bl sub_08016EDC
	subs r0, #1
	movs r1, #0
	bl sub_0802F058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08008346
_08008340:
	movs r0, #2
	strh r0, [r7, #0xc]
	b _0800834E
_08008346:
	ldr r0, _0800835C @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
_0800834E:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	b _08008858
	.align 2, 0
_0800835C: .4byte 0x0009001B
_08008360:
	cmp r5, #0
	bne _08008366
	b _0800892C
_08008366:
	movs r0, #1
	strh r0, [r7, #0xc]
	b _0800892C
_0800836C:
	movs r5, #0
	ldrh r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800837C
	movs r5, #5
	b _08008386
_0800837C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008386
	movs r5, #1
_08008386:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080083A2
	cmp r5, #5
	bne _08008396
	movs r5, #4
	b _080083BC
_08008396:
	cmp r5, #1
	bne _0800839E
	movs r5, #2
	b _080083BC
_0800839E:
	movs r5, #3
	b _080083BC
_080083A2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080083BC
	cmp r5, #5
	bne _080083B2
	movs r5, #6
	b _080083BC
_080083B2:
	cmp r5, #1
	bne _080083BA
	movs r5, #8
	b _080083BC
_080083BA:
	movs r5, #7
_080083BC:
	ldrh r2, [r7, #6]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080083DA
	ldrh r0, [r7, #4]
	ands r2, r0
	cmp r2, #0
	bne _080083DA
	ldr r0, [sp, #0xfc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xfc]
	b _080083DE
_080083DA:
	movs r4, #0
	str r4, [sp, #0xfc]
_080083DE:
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	bne _08008408
	bl sub_08016CE0
	cmp r0, #0
	beq _08008408
	ldr r0, [sp, #0xfc]
	cmp r0, #5
	bls _08008408
	movs r0, #3
	strh r0, [r7, #0xc]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x12]
	movs r1, #0
	str r1, [sp, #0xf0]
	movs r2, #0x80
	str r2, [sp, #0xf8]
	b _0800892C
_08008408:
	ldrh r1, [r7, #4]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _080084BC
	bl sub_08014220
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #0x120]
	cmp r0, r3
	bhi _080084BC
	bl sub_08007544
	cmp r0, #0
	beq _0800842A
	b _0800892C
_0800842A:
	cmp r5, #0
	beq _08008432
	subs r0, r5, #1
	b _08008434
_08008432:
	ldrh r0, [r7, #0xa]
_08008434:
	strh r0, [r7, #0xa]
	movs r4, #0
	str r4, [sp, #0x120]
	bl GetPlayerClass
	cmp r0, #1
	beq _0800845A
	cmp r0, #1
	bgt _0800844C
	cmp r0, #0
	beq _08008450
	b _08008466
_0800844C:
	cmp r0, #3
	bgt _08008466
_08008450:
	bl sub_080102C4
	cmp r0, #0
	beq _08008466
	b _0800846E
_0800845A:
	bl sub_08016EDC
	cmp r0, #0
	beq _08008466
	movs r0, #1
	str r0, [sp, #0x120]
_08008466:
	ldr r1, [sp, #0x120]
	cmp r1, #0
	bne _0800846E
	b _0800892C
_0800846E:
	bl GetPlayerClass
	cmp r0, #1
	beq _08008486
	cmp r0, #1
	bgt _08008480
	cmp r0, #0
	beq _08008498
	b _080084A6
_08008480:
	cmp r0, #3
	bgt _080084A6
	b _08008498
_08008486:
	bl sub_08016EDC
	subs r0, #1
	movs r1, #0
	bl sub_0802F058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800849E
_08008498:
	movs r0, #2
	strh r0, [r7, #0xc]
	b _080084A6
_0800849E:
	ldr r0, _080084B8 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
_080084A6:
	movs r0, #0
	ldr r2, [sp, #0x158]
	strh r0, [r2]
	ldr r3, [sp, #0x154]
	strh r0, [r3]
	movs r4, #0
	str r4, [sp, #0x120]
	b _0800892C
	.align 2, 0
_080084B8: .4byte 0x0009001B
_080084BC:
	cmp r5, #0
	beq _080084C2
	b _0800881E
_080084C2:
	strh r5, [r7, #0xc]
	b _0800892C
_080084C6:
	movs r3, #0
	str r3, [sp, #0xfc]
	movs r5, #0
	ldrh r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080084DA
	movs r5, #5
	b _080084E4
_080084DA:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080084E4
	movs r5, #1
_080084E4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08008500
	cmp r5, #5
	bne _080084F4
	movs r5, #4
	b _0800851A
_080084F4:
	cmp r5, #1
	bne _080084FC
	movs r5, #2
	b _0800851A
_080084FC:
	movs r5, #3
	b _0800851A
_08008500:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800851A
	cmp r5, #5
	bne _08008510
	movs r5, #6
	b _0800851A
_08008510:
	cmp r5, #1
	bne _08008518
	movs r5, #8
	b _0800851A
_08008518:
	movs r5, #7
_0800851A:
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	bne _080085AC
	ldrh r0, [r7, #0x14]
	cmp r0, #0
	beq _0800859C
	movs r0, #5
	strh r0, [r7, #0xc]
	bl GetPlayerClass
	cmp r0, #1
	beq _08008554
	cmp r0, #1
	bgt _0800853E
	cmp r0, #0
	beq _08008548
	b _08008586
_0800853E:
	cmp r0, #2
	beq _08008586
	cmp r0, #3
	beq _0800854E
	b _08008586
_08008548:
	bl sub_0800BE8C
	b _08008586
_0800854E:
	bl sub_0800C140
	b _08008586
_08008554:
	bl sub_08016EDC
	subs r0, #1
	ldrh r1, [r7, #0x14]
	bl sub_0802F058
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0800856E
	movs r0, #6
	strh r0, [r7, #0xc]
	b _08008586
_0800856E:
	ldr r0, _08008598 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x12]
	movs r4, #0
	movs r0, #0
	str r0, [sp, #0xf0]
	movs r1, #0
	str r1, [sp, #0xf8]
	strh r4, [r7, #0xc]
_08008586:
	movs r0, #0
	ldr r3, [sp, #0x158]
	strh r0, [r3]
	ldr r4, [sp, #0x154]
	strh r0, [r4]
	str r0, [sp, #0x120]
	movs r1, #0
	str r1, [sp, #0xfc]
	b _0800892C
	.align 2, 0
_08008598: .4byte 0x0009001B
_0800859C:
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	movs r2, #0
	str r2, [sp, #0xf0]
	movs r3, #0
	str r3, [sp, #0xf8]
	strh r3, [r7, #0xc]
	b _0800875A
_080085AC:
	bl sub_08016CE0
	cmp r0, #0
	bne _080085BC
	strh r0, [r7, #0xc]
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	b _0800865A
_080085BC:
	ldr r1, [sp, #0xf0]
	ldr r2, [sp, #0xf8]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0xf0]
	cmp r3, #0xff
	bls _0800865A
	lsrs r0, r0, #0x18
	ldrh r4, [r7, #0x12]
	adds r0, r0, r4
	strh r0, [r7, #0x12]
	movs r1, #0xff
	ands r3, r1
	str r3, [sp, #0xf0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0800865A
	ldrh r0, [r7, #0x14]
	adds r0, #1
	strh r0, [r7, #0x14]
	adds r0, r2, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf8]
	bl sub_08016D4C
	ldrh r1, [r7, #0x14]
	cmp r0, r1
	bge _08008606
	bl sub_08016D4C
	strh r0, [r7, #0x14]
	movs r0, #0x11
	b _08008658
_08008606:
	subs r0, r1, #1
	cmp r0, #4
	bhi _08008656
	lsls r0, r0, #2
	ldr r1, _08008618 @ =_0800861C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008618: .4byte _0800861C
_0800861C: @ jump table
	.4byte _08008630 @ case 0
	.4byte _08008638 @ case 1
	.4byte _08008640 @ case 2
	.4byte _08008648 @ case 3
	.4byte _08008650 @ case 4
_08008630:
	movs r0, #0x90
	bl PlaySE
	b _08008656
_08008638:
	movs r0, #0x96
	bl PlaySE
	b _08008656
_08008640:
	movs r0, #0x97
	bl PlaySE
	b _08008656
_08008648:
	movs r0, #0x98
	bl PlaySE
	b _08008656
_08008650:
	movs r0, #0x99
	bl PlaySE
_08008656:
	movs r0, #0
_08008658:
	strh r0, [r7, #0x12]
_0800865A:
	cmp r5, #0
	bne _08008660
	b _0800892C
_08008660:
	movs r0, #4
	strh r0, [r7, #0xc]
	b _0800892C
_08008666:
	movs r0, #0
	str r0, [sp, #0xfc]
	movs r5, #0
	ldrh r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800867A
	movs r5, #5
	b _08008684
_0800867A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008684
	movs r5, #1
_08008684:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080086A0
	cmp r5, #5
	bne _08008694
	movs r5, #4
	b _080086BA
_08008694:
	cmp r5, #1
	bne _0800869C
	movs r5, #2
	b _080086BA
_0800869C:
	movs r5, #3
	b _080086BA
_080086A0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080086BA
	cmp r5, #5
	bne _080086B0
	movs r5, #6
	b _080086BA
_080086B0:
	cmp r5, #1
	bne _080086B8
	movs r5, #8
	b _080086BA
_080086B8:
	movs r5, #7
_080086BA:
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	bne _08008762
	ldrh r0, [r7, #0x14]
	cmp r0, #0
	beq _08008748
	bl GetPlayerClass
	cmp r0, #1
	beq _080086FE
	cmp r0, #1
	bgt _080086DA
	cmp r0, #0
	beq _080086E4
	b _08008730
_080086DA:
	cmp r0, #2
	beq _080086EE
	cmp r0, #3
	beq _080086F4
	b _08008730
_080086E4:
	movs r0, #5
	strh r0, [r7, #0xc]
	bl sub_0800BE8C
	b _08008730
_080086EE:
	movs r0, #5
	strh r0, [r7, #0xc]
	b _08008730
_080086F4:
	movs r0, #5
	strh r0, [r7, #0xc]
	bl sub_0800C140
	b _08008730
_080086FE:
	bl sub_08016EDC
	subs r0, #1
	ldrh r1, [r7, #0x14]
	bl sub_0802F058
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _08008718
	movs r0, #6
	strh r0, [r7, #0xc]
	b _08008730
_08008718:
	ldr r0, _08008744 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x12]
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0xf0]
	movs r3, #0
	str r3, [sp, #0xf8]
	strh r1, [r7, #0xc]
_08008730:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0x120]
	movs r4, #0
	str r4, [sp, #0xfc]
	b _0800892C
	.align 2, 0
_08008744: .4byte 0x0009001B
_08008748:
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x12]
	movs r0, #0
	str r0, [sp, #0x120]
	movs r1, #0
	str r1, [sp, #0xf0]
	movs r2, #0
	str r2, [sp, #0xf8]
	strh r0, [r7, #0xc]
_0800875A:
	movs r0, #0x21
	bl StopSE
	b _0800892C
_08008762:
	cmp r5, #0
	bne _0800876C
	movs r0, #3
	strh r0, [r7, #0xc]
	b _0800892C
_0800876C:
	bl sub_08016CE0
	cmp r0, #0
	bne _0800877C
	strh r0, [r7, #0xc]
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	b _0800881E
_0800877C:
	ldr r4, [sp, #0xf0]
	ldr r1, [sp, #0xf8]
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	str r2, [sp, #0xf0]
	cmp r2, #0xff
	bls _0800881E
	lsrs r0, r0, #0x18
	ldrh r3, [r7, #0x12]
	adds r0, r0, r3
	movs r4, #0
	strh r0, [r7, #0x12]
	movs r1, #0xff
	ands r2, r1
	str r2, [sp, #0xf0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0800881E
	ldrh r0, [r7, #0x14]
	adds r0, #1
	strh r0, [r7, #0x14]
	ldr r0, [sp, #0xf8]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf8]
	bl sub_08016D4C
	ldrh r1, [r7, #0x14]
	cmp r0, r1
	bge _080087CA
	bl sub_08016D4C
	strh r0, [r7, #0x14]
	movs r0, #0x11
	strh r0, [r7, #0x12]
	b _0800881E
_080087CA:
	strh r4, [r7, #0x12]
	ldrh r0, [r7, #0x14]
	subs r0, #1
	cmp r0, #4
	bhi _0800881E
	lsls r0, r0, #2
	ldr r1, _080087E0 @ =_080087E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080087E0: .4byte _080087E4
_080087E4: @ jump table
	.4byte _080087F8 @ case 0
	.4byte _08008800 @ case 1
	.4byte _08008808 @ case 2
	.4byte _08008810 @ case 3
	.4byte _08008818 @ case 4
_080087F8:
	movs r0, #0x90
	bl PlaySE
	b _0800881E
_08008800:
	movs r0, #0x96
	bl PlaySE
	b _0800881E
_08008808:
	movs r0, #0x97
	bl PlaySE
	b _0800881E
_08008810:
	movs r0, #0x98
	bl PlaySE
	b _0800881E
_08008818:
	movs r0, #0x99
	bl PlaySE
_0800881E:
	subs r0, r5, #1
	strh r0, [r7, #0xa]
	ldr r1, _08008834 @ =0x080FB5AC
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0800B78C
	b _0800892C
	.align 2, 0
_08008834: .4byte 0x080FB5AC
_08008838:
	movs r3, #0
	str r3, [sp, #0xfc]
	b _0800892C
_0800883E:
	ldr r4, [sp, #0x150]
	ldrh r0, [r4]
	ldr r1, [sp, #0xb4]
	cmp r0, r1
	bne _0800892C
	ldr r2, [sp, #0x15c]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0800892C
	movs r0, #0
	strh r0, [r7, #0xc]
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
_08008858:
	movs r3, #0
	str r3, [sp, #0x120]
	b _0800892C
_0800885E:
	ldr r4, [sp, #0x150]
	ldrh r0, [r4]
	ldr r1, [sp, #0xb4]
	cmp r0, r1
	bne _080088BC
	ldr r2, [sp, #0x15c]
	ldrh r0, [r2]
	cmp r0, #0
	beq _080088BC
	movs r3, #0
	str r3, [sp, #0xfc]
	adds r0, r7, #0
	bl ApplyPendingDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080088B0
	ldr r4, _080088AC @ =0x0000FFFD
	str r4, [sp, #0xb4]
	add r0, sp, #0xfc
	ldrh r1, [r0]
	ldr r0, [sp, #0x158]
	strh r1, [r0]
	add r1, sp, #0xfc
	ldrh r2, [r1]
	ldr r1, [sp, #0x154]
	strh r2, [r1]
	movs r0, #8
	strh r0, [r7, #0xc]
	movs r6, #0
	movs r1, #0
	ldr r0, [r7, #0x1c]
_0800889E:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #2
	bls _0800889E
	b _080088BC
	.align 2, 0
_080088AC: .4byte 0x0000FFFD
_080088B0:
	add r2, sp, #0xfc
	ldrh r2, [r2]
	strh r2, [r7, #0xc]
	movs r0, #0x14
	ldr r3, [sp, #0x160]
	strh r0, [r3]
_080088BC:
	movs r4, #0
	str r4, [sp, #0x120]
	strh r4, [r7, #0x12]
	add r1, sp, #0x120
	ldrh r1, [r1]
	strh r1, [r7, #0x14]
	b _08008910
_080088CA:
	ldr r4, [sp, #0x150]
	ldrh r0, [r4]
	ldr r1, [sp, #0xb4]
	cmp r0, r1
	bne _0800890A
	ldr r2, [sp, #0x15c]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0800890A
	movs r3, #0
	str r3, [sp, #0xfc]
	movs r0, #9
	strh r0, [r7, #0xc]
	movs r0, #0xb
	strh r0, [r7, #0xe]
	movs r0, #0x75
	bl StopSE
	movs r6, #0
	movs r1, #0
	ldr r0, [r7, #0x1c]
_080088F4:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #2
	bls _080088F4
	movs r4, #0x80
	str r4, [sp, #0xd4]
	ldr r0, _0800891C @ =0x00000111
	str r0, [sp, #0xd0]
	movs r1, #0
	str r1, [sp, #0xd8]
_0800890A:
	movs r0, #0
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
_08008910:
	movs r2, #0
	str r2, [sp, #0xf0]
	movs r3, #0
	str r3, [sp, #0xf8]
	b _0800892C
	.align 2, 0
_0800891C: .4byte 0x00000111
_08008920:
	movs r0, #0
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	movs r4, #0
	str r4, [sp, #0xf0]
	str r0, [sp, #0xf8]
_0800892C:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _08008934
	b _08008ADE
_08008934:
	bl sub_08007604
	cmp r0, #0
	bne _08008952
	bl sub_080074F0
	cmp r0, #0
	beq _0800894C
	adds r0, r7, #0
	bl sub_0800B4B4
	b _08008952
_0800894C:
	adds r0, r7, #0
	bl sub_0800B594
_08008952:
	bl sub_08007510
	cmp r0, #0
	bne _08008970
	adds r4, r7, #0
	adds r4, #0x58
	adds r5, r7, #0
	adds r5, #0x5c
	bl sub_08007544
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800588C
_08008970:
	movs r6, #0
	movs r1, #0xa2
	adds r1, r1, r7
	mov sl, r1
	ldr r2, [sp, #0x168]
	mov r8, r2
_0800897C:
	mov r3, sl
	ldrh r0, [r3]
	adds r0, r0, r6
	movs r1, #5
	bl __umodsi3
	adds r5, r0, #0
	mov r4, r8
	ldr r1, [r4]
	movs r0, #0x94
	adds r4, r5, #0
	muls r4, r0, r4
	adds r2, r4, r1
	ldrh r0, [r2]
	ldr r1, _080089D0 @ =0x0000FFFF
	cmp r0, r1
	beq _080089D4
	ldrh r0, [r7]
	ldrh r3, [r2, #2]
	ldrh r1, [r2, #0x28]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	ldrh r1, [r2, #0x3e]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	cmp r0, #0
	beq _080089DA
	mov r2, r8
	ldr r0, [r2]
	adds r0, r4, r0
	ldrh r2, [r0]
	ldr r1, _080089D0 @ =0x0000FFFF
	orrs r1, r2
	strh r1, [r0]
	mov r3, sl
	strh r5, [r3]
	b _080089DA
	.align 2, 0
_080089D0: .4byte 0x0000FFFF
_080089D4:
	adds r6, #1
	cmp r6, #4
	bls _0800897C
_080089DA:
	ldr r4, [sp, #0x108]
	cmp r4, #0
	bne _08008A02
	ldr r0, [r7, #0x54]
	cmp r0, #0
	beq _08008A02
	movs r0, #0x14
	str r0, [sp, #0x114]
	adds r1, r7, #0
	adds r1, #0x54
	adds r0, r7, #0
	adds r0, #0x56
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x108]
	movs r1, #0
	str r1, [sp, #0x10c]
_08008A02:
	ldr r0, [sp, #0x114]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x114]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08008A98
	ldr r2, [sp, #0x108]
	cmp r2, #0
	bne _08008A28
	ldr r3, _08008A24 @ =0x0000FFFF
	str r3, [sp, #0x114]
	b _08008AA0
	.align 2, 0
_08008A24: .4byte 0x0000FFFF
_08008A28:
	ldr r4, [sp, #0x148]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, #8
	strh r0, [r4]
	bl sub_08007510
	cmp r0, #0
	beq _08008A56
	bl sub_08007604
	cmp r0, #0
	bne _08008A7A
	ldr r2, [sp, #0x10c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x58
	movs r0, #0x24
	ldr r2, [sp, #0x108]
	movs r3, #1
	bl sub_08026E70
	b _08008A7A
_08008A56:
	bl sub_08007604
	cmp r0, #0
	bne _08008A7A
	ldr r3, [sp, #0x148]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r2, [sp, #0x14c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x10c]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	ldr r2, [sp, #0x108]
	movs r3, #1
	bl sub_08026E70
_08008A7A:
	movs r0, #2
	ldr r1, [sp, #0x114]
	ands r0, r1
	cmp r0, #0
	beq _08008AA0
	ldr r2, [sp, #0x10c]
	lsls r0, r2, #0x10
	ldr r3, _08008A94 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10c]
	b _08008AA0
	.align 2, 0
_08008A94: .4byte 0xFFFF0000
_08008A98:
	movs r4, #0
	str r4, [sp, #0x108]
	ldr r0, _08008AF4 @ =0x0000FFFF
	str r0, [sp, #0x114]
_08008AA0:
	ldrh r0, [r7, #0xc]
	cmp r0, #7
	beq _08008ADE
	adds r0, r7, #0
	bl ApplyPendingDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08008ADE
	ldrh r0, [r7, #0xc]
	cmp r0, #8
	beq _08008ADE
	cmp r0, #9
	beq _08008ADE
	ldr r1, _08008AF8 @ =0x0000FFFD
	str r1, [sp, #0xb4]
	movs r0, #0
	ldr r2, [sp, #0x158]
	strh r0, [r2]
	ldr r3, [sp, #0x154]
	strh r0, [r3]
	movs r0, #8
	strh r0, [r7, #0xc]
	movs r6, #0
	movs r1, #0
	ldr r0, [r7, #0x1c]
_08008AD4:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #2
	bls _08008AD4
_08008ADE:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bls _08008AE8
	bl _08009C7A
_08008AE8:
	lsls r0, r0, #2
	ldr r1, _08008AFC @ =_08008B00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008AF4: .4byte 0x0000FFFF
_08008AF8: .4byte 0x0000FFFD
_08008AFC: .4byte _08008B00
_08008B00: @ jump table
	.4byte _08008B94 @ case 0
	.4byte _08008EBC @ case 1
	.4byte _08009020 @ case 2
	.4byte _08008CFC @ case 3
	.4byte _08008E1C @ case 4
	.4byte _080091F8 @ case 5
	.4byte _0800941C @ case 6
	.4byte _0800951C @ case 7
	.4byte _08009692 @ case 8
	.4byte _08009730 @ case 9
	.4byte _08008B2C @ case 10
_08008B2C:
	mov r4, sb
	ldr r0, [r4]
	ldrh r5, [r0, #4]
	lsls r5, r5, #0x16
	lsrs r5, r5, #0x1a
	ldr r4, _08008B74 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r4, #0xd0
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r5, r0
	bne _08008B7C
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _08008B88
	cmp r0, #0
	blt _08008B88
	ldrb r0, [r1, #6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _08008B7C
	ldrh r1, [r7, #0x10]
	ldr r0, _08008B78 @ =0x0000FFFD
	bl _080099E4
	.align 2, 0
_08008B74: .4byte gPlayers
_08008B78: .4byte 0x0000FFFD
_08008B7C:
	ldrh r1, [r7, #0x10]
	movs r0, #2
	orrs r0, r1
	strh r0, [r7, #0x10]
	bl _08009C7A
_08008B88:
	ldrh r1, [r7, #0x10]
	ldr r0, _08008B90 @ =0x0000FFFD
	bl _080099E4
	.align 2, 0
_08008B90: .4byte 0x0000FFFD
_08008B94:
	mov r1, sb
	ldr r4, [r1]
	ldr r3, [sp, #0xe4]
	ldrh r2, [r3, #0x20]
	movs r5, #0xf
	ands r2, r5
	ldrb r3, [r4]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4]
	mov r4, sb
	ldr r3, [r4]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r2, [r3, #4]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #4]
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08008C48 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r4, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	mov r0, sb
	ldr r4, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08008C4C @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	mov r1, sb
	ldr r2, [r1]
	movs r4, #0xa
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r4, #3
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #7]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #7]
	ldrh r1, [r7, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08008C50
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	orrs r0, r4
	strb r0, [r1, #6]
	b _08008CA8
	.align 2, 0
_08008C48: .4byte 0xFFFFFC0F
_08008C4C: .4byte 0xFFFFF000
_08008C50:
	bl sub_08007510
	cmp r0, #0
	beq _08008C6A
	mov r4, sb
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	b _08008CA6
_08008C6A:
	adds r4, r7, #0
	adds r4, #0x7a
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #3
	bl __divsi3
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08008C9A
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	b _08008CA6
_08008C9A:
	mov r4, sb
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
_08008CA6:
	strb r0, [r2, #6]
_08008CA8:
	mov r0, sb
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	ldr r3, _08008CF4 @ =0xFFFFF003
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2, #6]
	movs r6, #0
	adds r5, r3, #0
_08008CBA:
	ldr r0, [r7, #0x1c]
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08008CEA
	mov r2, sb
	ldr r4, [r2]
	ldrh r3, [r4, #6]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x16
	adds r1, r0, #0
	subs r1, #1
	movs r0, #1
	lsls r0, r1
	orrs r2, r0
	ldr r1, _08008CF8 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	lsls r2, r2, #2
	adds r0, r5, #0
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #6]
_08008CEA:
	adds r6, #1
	cmp r6, #2
	bls _08008CBA
	b _0800900E
	.align 2, 0
_08008CF4: .4byte 0xFFFFF003
_08008CF8: .4byte 0x000003FF
_08008CFC:
	mov r4, sb
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r3]
	movs r6, #0x10
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r3, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	movs r4, #0xf
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	mov r0, sb
	ldr r3, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08008D94 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	mov r1, sb
	ldr r3, [r1]
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	mov r8, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r4, _08008D98 @ =0xFFFFFC0F
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	bl GetPlayerClass
	cmp r0, #1
	beq _08008DBE
	cmp r0, #1
	bgt _08008D9C
	cmp r0, #0
	beq _08008DA2
	b _0800900E
	.align 2, 0
_08008D94: .4byte 0xFFFFF000
_08008D98: .4byte 0xFFFFFC0F
_08008D9C:
	cmp r0, #3
	ble _08008DA2
	b _0800900E
_08008DA2:
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	b _0800900E
_08008DBE:
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_08016EDC
	ldr r3, [r4]
	subs r0, #1
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #0xd
	ldr r1, [r3, #4]
	ldr r2, _08008E18 @ =0xFFFE1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	b _0800900E
	.align 2, 0
_08008E18: .4byte 0xFFFE1FFF
_08008E1C:
	mov r3, sb
	ldr r4, [r3]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r4]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r1, sb
	ldr r4, [r1]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r4, #4]
	ldr r0, _08008EB4 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	mov r4, sb
	ldr r2, [r4]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r1, [r2, #4]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #4]
	ldr r4, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	mov r0, sb
	ldr r4, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08008EB8 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	mov r1, sb
	ldr r2, [r1]
	movs r4, #0xa
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	b _0800900E
	.align 2, 0
_08008EB4: .4byte 0xFFFFFC0F
_08008EB8: .4byte 0xFFFFF000
_08008EBC:
	mov r3, sb
	ldr r4, [r3]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r4]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r1, sb
	ldr r4, [r1]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r4, #4]
	ldr r0, _08008F70 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	mov r4, sb
	ldr r2, [r4]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r1, [r2, #4]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #4]
	ldr r4, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	mov r0, sb
	ldr r4, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08008F74 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	mov r1, sb
	ldr r2, [r1]
	movs r4, #0xa
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r4, #3
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	mov r3, sb
	ldr r2, [r3]
	ldrh r1, [r2, #6]
	ldr r0, _08008F78 @ =0xFFFFF003
	ands r0, r1
	strh r0, [r2, #6]
	ldrh r1, [r7, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08008F7C
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	orrs r0, r4
	strb r0, [r1, #6]
	b _08008FD4
	.align 2, 0
_08008F70: .4byte 0xFFFFFC0F
_08008F74: .4byte 0xFFFFF000
_08008F78: .4byte 0xFFFFF003
_08008F7C:
	bl sub_08007510
	cmp r0, #0
	beq _08008F96
	mov r4, sb
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	b _08008FD2
_08008F96:
	adds r4, r7, #0
	adds r4, #0x7a
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #3
	bl __divsi3
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08008FC6
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	b _08008FD2
_08008FC6:
	mov r4, sb
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
_08008FD2:
	strb r0, [r2, #6]
_08008FD4:
	movs r6, #0
	ldr r5, _08009018 @ =0xFFFFF003
_08008FD8:
	ldr r0, [r7, #0x1c]
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08009008
	mov r0, sb
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x16
	ldrh r1, [r1]
	subs r1, #1
	movs r0, #1
	lsls r0, r1
	orrs r2, r0
	ldr r1, _0800901C @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	lsls r2, r2, #2
	adds r0, r5, #0
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #6]
_08009008:
	adds r6, #1
	cmp r6, #2
	bls _08008FD8
_0800900E:
	movs r2, #0
	str r2, [sp, #0x11c]
	bl _08009C7A
	.align 2, 0
_08009018: .4byte 0xFFFFF003
_0800901C: .4byte 0x000003FF
_08009020:
	mov r4, sb
	ldr r3, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	movs r0, #0xf
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r3, [r4]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08009088 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r3, [r4]
	ldr r2, [sp, #0xe4]
	ldrh r1, [r2, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r3]
	movs r6, #0x10
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r3, [r4]
	movs r4, #0xa
	ldrsh r1, [r7, r4]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	bl GetPlayerClass
	adds r4, r0, #0
	cmp r4, #1
	beq _08009158
	cmp r4, #1
	bgt _0800908C
	cmp r4, #0
	beq _08009110
	b _080091E2
	.align 2, 0
_08009088: .4byte 0xFFFFF000
_0800908C:
	cmp r4, #2
	beq _08009096
	cmp r4, #3
	beq _08009110
	b _080091E2
_08009096:
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009108 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r3, [r4]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	bl sub_080102C4
	ldr r3, [r4]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	movs r0, #1
	bl sub_0802C174
	ldr r3, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r3, #4]
	ldr r2, _0800910C @ =0xFF807FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	adds r0, #0x4c
	ldrh r1, [r0]
	lsls r1, r1, #7
	ldrh r2, [r3, #6]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #6]
	b _080091E2
	.align 2, 0
_08009108: .4byte 0xFFFFFC0F
_0800910C: .4byte 0xFF807FFF
_08009110:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009154 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	bl sub_080102C4
	mov r2, sb
	ldr r3, [r2]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	b _080091E2
	.align 2, 0
_08009154: .4byte 0xFFFFFC0F
_08009158:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _080091EC @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #5]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	bl sub_08016EDC
	mov r1, sb
	ldr r3, [r1]
	subs r0, #1
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0xd
	ldr r1, [r3, #4]
	ldr r2, _080091F0 @ =0xFFFE1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	movs r0, #1
	bl sub_0802C174
	mov r1, sb
	ldr r3, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	ldrh r2, [r3, #6]
	ldr r1, _080091F4 @ =0xFFFFFE01
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, #6]
	bl Random
	mov r3, sb
	ldr r2, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080091D8
	rsbs r0, r0, #0
_080091D8:
	lsls r1, r0, #1
	ldrb r0, [r2, #7]
	ands r4, r0
	orrs r1, r4
	strb r1, [r2, #7]
_080091E2:
	movs r4, #0
	str r4, [sp, #0x11c]
	bl _08009C7A
	.align 2, 0
_080091EC: .4byte 0xFFFFFC0F
_080091F0: .4byte 0xFFFE1FFF
_080091F4: .4byte 0xFFFFFE01
_080091F8:
	mov r0, sb
	ldr r3, [r0]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	movs r4, #0xf

	non_word_aligned_thumb_func_start sub_08009206
sub_08009206: @ 0x08009206
	mov r8, r4
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	mov r0, sb
	ldr r3, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _0800926C @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	mov r1, sb
	ldr r3, [r1]
	ldr r2, [sp, #0xe4]
	ldrh r1, [r2, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r3]
	movs r6, #0x10
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r4, sb
	ldr r3, [r4]
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	bl GetPlayerClass
	adds r4, r0, #0
	cmp r4, #1
	bne _0800925E
	b _08009378
_0800925E:
	cmp r4, #1
	bgt _08009270
	cmp r4, #0
	beq _0800927C
	bl _08009C7A
	.align 2, 0
_0800926C: .4byte 0xFFFFF000
_08009270:
	cmp r4, #2
	beq _080092E0
	cmp r4, #3
	beq _0800927C
	bl _08009C7A
_0800927C:
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0xc]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _080092DC @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_080102C4
	ldr r3, [r4]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	bl _08009C7A
	.align 2, 0
_080092DC: .4byte 0xFFFFFC0F
_080092E0:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009370 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_080102C4
	mov r4, sb
	ldr r3, [r4]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	movs r0, #1
	bl sub_0802C174
	ldr r3, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r3, #4]
	ldr r2, _08009374 @ =0xFF807FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	adds r0, #0x4c
	ldrh r1, [r0]
	lsls r1, r1, #7
	ldrh r2, [r3, #6]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #6]
	bl _08009C7A
	.align 2, 0
_08009370: .4byte 0xFFFFFC0F
_08009374: .4byte 0xFF807FFF
_08009378:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009410 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_08016EDC
	mov r1, sb
	ldr r3, [r1]
	subs r0, #1
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0xd
	ldr r1, [r3, #4]
	ldr r2, _08009414 @ =0xFFFE1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	movs r0, #1
	bl sub_0802C174
	mov r1, sb
	ldr r3, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	ldrh r2, [r3, #6]
	ldr r1, _08009418 @ =0xFFFFFE01
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, #6]
	bl Random
	mov r3, sb
	ldr r2, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08009402
	rsbs r0, r0, #0
_08009402:
	lsls r1, r0, #1
	ldrb r0, [r2, #7]
	ands r4, r0
	orrs r1, r4
	strb r1, [r2, #7]
	bl _08009C7A
	.align 2, 0
_08009410: .4byte 0xFFFFFC0F
_08009414: .4byte 0xFFFE1FFF
_08009418: .4byte 0xFFFFFE01
_0800941C:
	mov r4, sb
	ldr r3, [r4]
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r4, #0xf
	mov r8, r4
	movs r5, #0xf
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r0, sb
	ldr r3, [r0]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	mov r1, sb
	ldr r3, [r1]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _0800950C @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	mov r2, sb
	ldr r4, [r2]
	ldr r3, [sp, #0xe4]
	ldrh r2, [r3, #0x20]
	mov r0, r8
	ands r2, r0
	ldrb r3, [r4]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4]
	mov r2, sb
	ldr r3, [r2]
	ldrh r0, [r7, #0xc]
	mov r4, r8
	ands r0, r4
	ldrb r2, [r3, #4]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #4]
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009510 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_08016EDC
	mov r2, sb
	ldr r3, [r2]
	subs r0, #1
	ands r0, r5
	lsls r0, r0, #0xd
	ldr r1, [r3, #4]
	ldr r2, _08009514 @ =0xFFFE1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	movs r0, #1
	bl sub_0802C174
	mov r4, sb
	ldr r3, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	ldrh r2, [r3, #6]
	ldr r1, _08009518 @ =0xFFFFFE01
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, #6]
	bl Random
	ldr r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080094FE
	rsbs r0, r0, #0
_080094FE:
	lsls r2, r0, #1
	ldrb r1, [r3, #7]
	movs r0, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #7]
	b _08009C7A
	.align 2, 0
_0800950C: .4byte 0xFFFFF000
_08009510: .4byte 0xFFFFFC0F
_08009514: .4byte 0xFFFE1FFF
_08009518: .4byte 0xFFFFFE01
_0800951C:
	mov r0, sb
	ldr r3, [r0]
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r5, #0xf
	movs r6, #0xf
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, sb
	ldr r3, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r3, [r4]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08009674 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	ands r1, r5
	ldrb r2, [r3]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	mov r3, sb
	ldr r2, [r3]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r1, [r2, #4]
	ands r4, r1
	orrs r4, r0
	strb r4, [r2, #4]
	ldr r3, [r3]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009678 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r4, sb
	ldr r3, [r4]
	adds r4, r7, #0
	adds r4, #0xa6
	ldrh r1, [r4]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, sb
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #5]
	movs r0, #0
	strh r0, [r4]
	ldr r1, [sp, #0x11c]
	cmp r1, #0
	beq _080095E2
	b _08009C7A
_080095E2:
	bl GetPlayerClass
	cmp r0, #3
	beq _080095EC
	b _08009C7A
_080095EC:
	ldr r4, [sp, #0xe4]
	adds r4, #0x50
	ldrh r0, [r4]
	cmp r0, #0
	bne _080095F8
	b _08009C7A
_080095F8:
	movs r2, #1
	str r2, [sp, #0x11c]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800960A
	rsbs r0, r0, #0
_0800960A:
	movs r1, #0x64
	bl __modsi3
	ldrh r2, [r4]
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, #0xf
	cmp r0, r1
	blt _0800961E
	b _08009C7A
_0800961E:
	adds r0, r7, #0
	adds r0, #0x7a
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r7, #0
	adds r1, #0x54
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r4, r7, #0
	adds r4, #0x9c
	cmp r0, #0
	ble _08009680
	ldr r0, [r4]
	cmp r0, #0
	beq _08009680
	subs r0, #1
	str r0, [r4]
	mov r0, sb
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #5]
	mov r1, sb
	ldr r3, [r1]
	ldr r2, _0800967C @ =0x080FB720
	ldr r1, [r4]
	lsls r1, r1, #1
	adds r0, r7, #0
	adds r0, #0xb8
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrb r1, [r0]
	strh r1, [r7, #0xa]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	b _0800968C
	.align 2, 0
_08009674: .4byte 0xFFFFF000
_08009678: .4byte 0xFFFFFC0F
_0800967C: .4byte 0x080FB720
_08009680:
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #5]
_0800968C:
	movs r0, #0
	str r0, [r4]
	b _08009C7A
_08009692:
	mov r0, sb
	ldr r4, [r0]
	movs r1, #0xa
	ldrsh r2, [r7, r1]
	lsls r2, r2, #4
	ldrb r3, [r4, #3]
	movs r5, #0xf
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #3]
	mov r2, sb
	ldr r3, [r2]
	ldr r0, [r7, #0x58]
	asrs r0, r0, #0xc
	lsls r0, r0, #4
	ldrh r2, [r3]
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	mov r4, sb
	ldr r3, [r4]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08009728 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	ands r1, r5
	ldrb r2, [r3]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	mov r3, sb
	ldr r2, [r3]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r1, [r2, #4]
	ands r4, r1
	orrs r4, r0
	strb r4, [r2, #4]
	ldr r3, [r3]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _0800972C @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	b _08009C7A
	.align 2, 0
_08009728: .4byte 0xFFFFF000
_0800972C: .4byte 0xFFFFFC0F
_08009730:
	mov r0, sb
	ldr r4, [r0]
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	lsls r1, r1, #4
	ldrb r2, [r4, #3]
	movs r5, #0xf
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	mov r0, sb
	ldr r4, [r0]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	mov r1, sb
	ldr r4, [r1]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _080097BC @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	mov r2, sb
	ldr r4, [r2]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r4, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	mov r4, sb
	ldr r2, [r4]
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #4
	ldrb r1, [r2, #5]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #5]
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _080097C0 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7, #0xe]
	subs r0, #2
	cmp r0, #0xa
	bls _080097B2
	b _08009C7A
_080097B2:
	lsls r0, r0, #2
	ldr r1, _080097C4 @ =_080097C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080097BC: .4byte 0xFFFFF000
_080097C0: .4byte 0xFFFFFC0F
_080097C4: .4byte _080097C8
_080097C8: @ jump table
	.4byte _080097F4 @ case 0
	.4byte _08009854 @ case 1
	.4byte _08009908 @ case 2
	.4byte _080099D0 @ case 3
	.4byte _080099F0 @ case 4
	.4byte _08009A24 @ case 5
	.4byte _08009ADC @ case 6
	.4byte _08009B1C @ case 7
	.4byte _08009B1C @ case 8
	.4byte _08009B9C @ case 9
	.4byte _08009C20 @ case 10
_080097F4:
	bl sub_08007510
	cmp r0, #0
	beq _08009808
	mov r0, sb
	ldr r1, [r0]
	ldr r2, [sp, #0xcc]
	asrs r0, r2, #0xc
	strh r0, [r1, #6]
	b _08009C7A
_08009808:
	ldr r3, [sp, #0xcc]
	ldr r4, [sp, #0xd4]
	subs r3, r3, r4
	str r3, [sp, #0xcc]
	mov r1, sb
	ldr r0, [r1]
	asrs r4, r3, #0xc
	strh r4, [r0, #6]
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r4, r0
	blt _0800982A
	b _08009C7A
_0800982A:
	movs r0, #0x75
	bl StopSE
	movs r0, #3
	strh r0, [r7, #0xe]
	mov r2, sb
	ldr r0, [r2]
	strh r4, [r0, #6]
	ldr r2, _08009850 @ =0x03003910
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	movs r0, #0x14
	bl sub_0800F3A0
	ldrh r0, [r7, #0x16]
	strh r0, [r7, #0x18]
	b _08009C7A
	.align 2, 0
_08009850: .4byte 0x03003910
_08009854:
	bl sub_0800F298
	cmp r0, #0
	bne _0800985E
	b _08009C7A
_0800985E:
	bl sub_08007554
	movs r0, #0x75
	bl StopSE
	bl SndMPlayAllStop
	ldr r0, _080098F4 @ =0x000514C9
	bl SignalEvent
	ldrh r1, [r7, #0x10]
	ldr r0, _080098F8 @ =0x0000FFFE

	non_word_aligned_thumb_func_start sub_08009876
sub_08009876: @ 0x08009876
	ands r0, r1
	strh r0, [r7, #0x10]
	bl sub_08026FD0
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0
	str r4, [sp, #0xcc]
	strh r4, [r0, #6]
	add r2, sp, #0xcc
	ldrh r2, [r2]
	strh r2, [r7, #0x16]
	ldr r0, [r7, #0x58]
	str r0, [r7, #0x68]
	ldr r0, [r7, #0x5c]
	str r0, [r7, #0x6c]
	ldr r3, [sp, #0x128]
	ldrh r2, [r3, #0x14]
	lsls r2, r2, #0xf
	str r2, [r7, #0x58]
	ldrh r0, [r3, #0x16]
	adds r0, #4
	lsls r0, r0, #0xf
	str r0, [r7, #0x5c]
	mov r4, sb
	ldr r3, [r4]
	lsrs r2, r2, #8
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	ldr r3, [r4]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _080098FC @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009900 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	add r0, sp, #0xcc
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldr r1, _08009904 @ =0x03003C00
	adds r0, r1, #0
	adds r0, #0x5c
	add r2, sp, #0xcc
	ldrh r2, [r2]
	strh r2, [r0]
	ldr r0, [r4]
	b _08009AB8
	.align 2, 0
_080098F4: .4byte 0x000514C9
_080098F8: .4byte 0x0000FFFE
_080098FC: .4byte 0xFFFFF000
_08009900: .4byte 0xFFFFFC0F
_08009904: .4byte 0x03003C00
_08009908:
	ldr r4, _08009980 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800991A
	b _08009C7A
_0800991A:
	ldr r0, [sp, #0x130]
	bl sub_0802294C
	cmp r0, #0
	bne _08009926
	b _08009C7A
_08009926:
	ldr r0, [sp, #0x130]
	bl sub_08022964
	cmp r0, #0
	beq _080099B0
	ldr r0, _08009984 @ =0x03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _08009990
	bl sub_08007638
	cmp r0, #0
	beq _08009990
	ldr r0, [r4]
	adds r0, #0x9e
	ldrh r4, [r0]
	cmp r4, #1
	bne _08009990
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _08009988 @ =0x000900DD
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x130]
	movs r0, #9
	strh r0, [r7, #0xc]
	ldrh r1, [r7, #0x10]
	ldr r0, _0800998C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7, #0x10]
	strh r4, [r7, #0xe]
	ldr r0, [r7, #0x58]
	asrs r0, r0, #0xc
	str r0, [r7, #0x60]
	ldr r0, [r7, #0x5c]
	asrs r0, r0, #0xc
	adds r0, #0x18
	str r0, [r7, #0x64]
	b _08009C7A
	.align 2, 0
_08009980: .4byte 0x030063D8
_08009984: .4byte 0x03003910
_08009988: .4byte 0x000900DD
_0800998C: .4byte 0x0000FFFE
_08009990:
	movs r3, #0x80
	lsls r3, r3, #4
	str r3, [sp, #0xd4]
	movs r0, #6
	strh r0, [r7, #0xe]
	movs r0, #0x75
	bl PlaySE
	ldr r2, _080099AC @ =0x03003C00
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	b _08009C7A
	.align 2, 0
_080099AC: .4byte 0x03003C00
_080099B0:
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _080099CC @ =0x000900DD
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x130]
	movs r0, #5
	strh r0, [r7, #0xe]
	b _08009C7A
	.align 2, 0
_080099CC: .4byte 0x000900DD
_080099D0:
	ldr r0, [sp, #0x130]
	bl sub_0802294C
	cmp r0, #0
	bne _080099DC
	b _08009C7A
_080099DC:
	movs r0, #0
	strh r0, [r7, #0xc]
	ldrh r1, [r7, #0x10]
	ldr r0, _080099EC @ =0x0000FFFE
_080099E4:
	ands r0, r1
	strh r0, [r7, #0x10]
	b _08009C7A
	.align 2, 0
_080099EC: .4byte 0x0000FFFE
_080099F0:
	ldr r4, [sp, #0xcc]
	ldr r0, [sp, #0xd4]
	subs r4, r4, r0
	str r4, [sp, #0xcc]
	mov r1, sb
	ldr r0, [r1]
	asrs r2, r4, #0xc
	strh r2, [r0, #6]
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r2, r0
	blt _08009A12
	b _08009C7A
_08009A12:
	movs r0, #7
	strh r0, [r7, #0xe]
	mov r3, sb
	ldr r0, [r3]
	strh r2, [r0, #6]
	ldr r2, _08009A20 @ =0x03003C00
	b _08009C06
	.align 2, 0
_08009A20: .4byte 0x03003C00
_08009A24:
	mov r4, sb
	ldr r1, [r4]
	ldr r2, [sp, #0xcc]
	asrs r0, r2, #0xc
	movs r4, #0
	strh r0, [r1, #6]
	bl sub_0800F298
	cmp r0, #0
	bne _08009A3A
	b _08009C7A
_08009A3A:
	bl sub_08007564
	movs r0, #0x75
	bl StopSE
	ldr r0, _08009AC4 @ =0x000514C8
	bl SignalEvent
	ldr r2, _08009AC8 @ =0x03003C00
	ldr r0, [r2, #0x78]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x78]
	ldrh r1, [r7, #0x10]
	ldr r0, _08009ACC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x68]
	str r0, [r7, #0x58]
	ldr r0, [r7, #0x6c]
	str r0, [r7, #0x5c]
	ldrh r0, [r7, #0x18]
	strh r0, [r7, #0x16]
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009AD0 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	mov r2, sb
	ldr r3, [r2]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08009AD4 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	movs r0, #8
	strh r0, [r7, #0xe]
	ldr r1, _08009AD8 @ =0x03003910
	adds r0, r1, #0
	adds r0, #0x5c
	strh r4, [r0]
	mov r3, sb
	ldr r0, [r3]
_08009AB8:
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	adds r1, #0x5e
	strh r0, [r1]
	b _08009C7A
	.align 2, 0
_08009AC4: .4byte 0x000514C8
_08009AC8: .4byte 0x03003C00
_08009ACC: .4byte 0x0000FFFE
_08009AD0: .4byte 0xFFFFFC0F
_08009AD4: .4byte 0xFFFFF000
_08009AD8: .4byte 0x03003910
_08009ADC:
	ldr r4, [sp, #0xcc]
	ldr r0, [sp, #0xd4]
	adds r4, r4, r0
	str r4, [sp, #0xcc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xd4]
	mov r2, sb
	ldr r0, [r2]
	asrs r1, r4, #0xc
	movs r2, #0
	strh r1, [r0, #6]
	movs r0, #0x64
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _08009B00
	b _08009C7A
_08009B00:
	movs r0, #0xa0
	ldr r3, [sp, #0x160]
	strh r0, [r3]
	ldrh r1, [r7, #0x10]
	ldr r0, _08009B18 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7, #0x10]
	strh r2, [r7, #0xc]
	movs r4, #0
	str r4, [sp, #0xd8]
	b _08009C7A
	.align 2, 0
_08009B18: .4byte 0x0000FFFE
_08009B1C:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, [sp, #0xcc]
	asrs r1, r2, #0xc
	strh r1, [r0, #6]
	bl sub_0800F298
	cmp r0, #0
	bne _08009B30
	b _08009C7A
_08009B30:
	ldrh r1, [r7, #0x10]
	ldr r0, _08009B94 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	adds r0, r7, #0
	ldr r1, [sp, #0x128]
	bl SpawnPlayer
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0xc]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009B98 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r0, [r4]
	movs r1, #0
	str r1, [sp, #0xcc]
	strh r1, [r0, #6]
	bl sub_08026FD0
	bl sub_08007638
	cmp r0, #0
	beq _08009C7A
	bl sub_08021078
	b _08009C7A
	.align 2, 0
_08009B94: .4byte 0x0000FFFE
_08009B98: .4byte 0xFFFFFC0F
_08009B9C:
	ldr r0, _08009BC0 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _08009BC8
	ldr r3, [sp, #0xd0]
	ldr r4, _08009BC4 @ =0xFFFFFEEF
	adds r3, r3, r4
	str r3, [sp, #0xd0]
	movs r0, #0x88
	lsls r0, r0, #1
	cmp r3, r0
	bgt _08009BDA
	adds r0, #1
	str r0, [sp, #0xd0]
	b _08009BDA
	.align 2, 0
_08009BC0: .4byte gKeysNew
_08009BC4: .4byte 0xFFFFFEEF
_08009BC8:
	ldr r1, [sp, #0xd0]
	adds r1, #0x10
	str r1, [sp, #0xd0]
	ldr r0, _08009C18 @ =0x000007FF
	cmp r1, r0
	ble _08009BDA
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [sp, #0xd0]
_08009BDA:
	ldr r3, [sp, #0xcc]
	ldr r4, [sp, #0xd0]
	subs r3, r3, r4
	str r3, [sp, #0xcc]
	mov r1, sb
	ldr r0, [r1]
	asrs r2, r3, #0xc
	strh r2, [r0, #6]
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08009C7A
	movs r0, #9
	strh r0, [r7, #0xe]
	mov r3, sb
	ldr r0, [r3]
	strh r2, [r0, #6]
	ldr r2, _08009C1C @ =0x03003910
_08009C06:
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	movs r0, #0x1e
	bl sub_0800F3A0
	b _08009C7A
	.align 2, 0
_08009C18: .4byte 0x000007FF
_08009C1C: .4byte 0x03003910
_08009C20:
	mov r4, sb
	ldr r3, [r4]
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r4, #0xf
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _08009C98 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _08009C48
	ldrh r0, [r7, #0xa]
	adds r0, #1
	strh r0, [r7, #0xa]
_08009C48:
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	cmp r0, #7
	ble _08009C7A
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r0, #0xd
	strh r0, [r7, #0xe]
	ldr r0, _08009C9C @ =0x03003D94
	bl sub_08014014
	adds r1, r0, #0
	mov r2, sb
	ldr r3, [r2]
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r1, [r0]
	ands r1, r4
	ldrb r2, [r3, #6]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
_08009C7A:
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bls _08009C8C
	bl sub_0800A676
_08009C8C:
	lsls r0, r0, #2
	ldr r1, _08009CA0 @ =_08009CA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009C98: .4byte gFrameCounter
_08009C9C: .4byte 0x03003D94
_08009CA0: .4byte _08009CA4
_08009CA4: @ jump table
	.4byte _08009CCC @ case 0
	.4byte _08009D38 @ case 1
	.4byte _08009DD8 @ case 2
	.4byte _08009F94 @ case 3
	.4byte _0800A0A8 @ case 4
	.4byte _0800A0EC @ case 5
	.4byte _0800A254 @ case 6
	.4byte _0800A310 @ case 7
	.4byte _0800A422 @ case 8
	.4byte _0800A4DE @ case 9
_08009CCC:
	ldrh r4, [r7, #0xc]
	cmp r4, #0xa
	beq _08009CE0
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
	b _08009D26
_08009CE0:
	movs r0, #0
	strh r0, [r7, #0x24]
	ldr r1, [r7, #0x1c]
	strh r0, [r1]
	movs r6, #0
	mov r2, sb
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	movs r3, #1
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	beq _08009D04
	strh r3, [r2]
	strh r4, [r7, #0x24]
	b _08009D26
_08009D04:
	adds r6, #1
	cmp r6, #9
	bhi _08009D26
	mov r3, sb
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08009D04
	adds r0, r6, #1
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r7, #0x24]
_08009D26:
	mov r4, sb
	ldr r1, [r4]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	b _08009DA4
_08009D38:
	ldrh r4, [r7, #0xc]
	cmp r4, #0xa
	beq _08009D4C
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
	b _08009D92
_08009D4C:
	movs r0, #0
	strh r0, [r7, #0x24]
	ldr r1, [r7, #0x1c]
	strh r0, [r1]
	movs r6, #0
	mov r2, sb
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	movs r3, #1
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	beq _08009D70
	strh r3, [r2]
	strh r4, [r7, #0x24]
	b _08009D92
_08009D70:
	adds r6, #1
	cmp r6, #9
	bhi _08009D92
	mov r3, sb
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08009D70
	adds r0, r6, #1
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r7, #0x24]
_08009D92:
	mov r4, sb
	ldr r1, [r4]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #8
_08009DA4:
	ldr r0, [sp, #0x150]
	strh r3, [r0]
	ldr r4, _08009DD4 @ =0x080FB630
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	movs r0, #1
	str r0, [sp, #0xe0]
	bl _0800A668
	.align 2, 0
_08009DD4: .4byte 0x080FB630
_08009DD8:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _08009DF4
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	bne _08009DF4
	b _08009F52
_08009DF4:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r0, [r1, #3]
	lsrs r3, r0, #4
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08009EF8
	cmp r0, #1
	bgt _08009E2A
	cmp r0, #0
	beq _08009E34
	b _08009F46
_08009E2A:
	cmp r0, #2
	beq _08009ECC
	cmp r0, #3
	beq _08009E98
	b _08009F46
_08009E34:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _08009E6C
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	subs r0, #1
	cmp r0, #1
	beq _08009E5E
	cmp r0, #1
	bgt _08009E50
	cmp r0, #0
	beq _08009E56
	b _08009E6C
_08009E50:
	cmp r0, #2
	beq _08009E66
	b _08009E6C
_08009E56:
	movs r0, #0x13
	bl PlaySE
	b _08009E6C
_08009E5E:
	movs r0, #0x14
	bl PlaySE
	b _08009E6C
_08009E66:
	movs r0, #0x15
	bl PlaySE
_08009E6C:
	ldr r3, _08009E94 @ =0x080FB680
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r3
	ldr r1, [r2]
	ldr r3, [sp, #0x150]
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	b _08009F46
	.align 2, 0
_08009E94: .4byte 0x080FB680
_08009E98:
	ldr r2, _08009EC8 @ =0x080FB680
	ldrb r1, [r1, #5]
	movs r0, #0xc
	ands r0, r1
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r3, r0
	ldr r4, [sp, #0x150]
	strh r0, [r4]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _08009F46
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08009F46
	movs r0, #0x14
	bl PlaySE
	b _08009F46
	.align 2, 0
_08009EC8: .4byte 0x080FB680
_08009ECC:
	ldr r2, _08009EF4 @ =0x080FB680
	ldrb r1, [r1, #5]
	movs r0, #0xc
	ands r0, r1
	adds r0, #0x28
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r3, r0
	ldr r2, [sp, #0x150]
	strh r0, [r2]
	ldrh r0, [r7]
	mov r3, sb
	ldr r1, [r3]
	ldrb r1, [r1, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	bl sub_0802D49C
	b _08009F46
	.align 2, 0
_08009EF4: .4byte 0x080FB680
_08009EF8:
	ldr r0, [r1, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	adds r1, r7, #0
	adds r1, #0xa8
	strh r0, [r1]
	mov r4, sb
	ldr r0, [r4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4]
	ldrb r0, [r0, #7]
	lsrs r0, r0, #1
	adds r1, #2
	strh r0, [r1]
	ldr r1, _08009F8C @ =0x080FB680
	ldr r2, _08009F90 @ =0x080FBB64
	ldr r0, [r4]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #1
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [sp, #0x150]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r7]
	bl sub_0802BFB0
_08009F46:
	ldr r3, [sp, #0x150]
	ldrh r3, [r3]
	str r3, [sp, #0xb4]
	ldr r0, [r7, #0x7c]
	adds r0, #1
	str r0, [r7, #0x7c]
_08009F52:
	ldr r4, [sp, #0x154]
	ldrh r0, [r4]
	cmp r0, #1
	bne _08009F86
	ldr r1, [sp, #0x158]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08009F86
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08009F86
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _08009F86
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08009F86
	movs r0, #0x19
	bl PlaySE
_08009F86:
	movs r3, #0
	str r3, [sp, #0xe0]
	b _0800A668
	.align 2, 0
_08009F8C: .4byte 0x080FB680
_08009F90: .4byte 0x080FBB64
_08009F94:
	mov r4, sb
	ldr r3, [r4]
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08009FDC
	cmp r0, #2
	beq _0800A02C
	ldrb r3, [r3, #3]
	lsrs r3, r3, #4
	ldr r0, [sp, #0x150]
	strh r3, [r0]
	ldr r4, _08009FD8 @ =0x080FB630
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	movs r0, #1
	b _0800A08C
	.align 2, 0
_08009FD8: .4byte 0x080FB630
_08009FDC:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _08009FF2
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	beq _0800A01C
_08009FF2:
	ldr r2, _0800A024 @ =0x080FB6D0
	ldr r1, _0800A028 @ =0x080FBB64
	ldr r0, [r3, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, #0x14
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [sp, #0x150]
	strh r1, [r0]
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	adds r1, r1, r0
	ldr r3, [sp, #0x150]
	strh r1, [r3]
_0800A01C:
	movs r4, #0
	str r4, [sp, #0xe0]
	b _0800A08E
	.align 2, 0
_0800A024: .4byte 0x080FB6D0
_0800A028: .4byte 0x080FBB64
_0800A02C:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _0800A042
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	beq _0800A08A
_0800A042:
	ldrb r0, [r3, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0800A050
	movs r0, #0x80
	b _0800A074
_0800A050:
	movs r0, #0
	ldr r2, [sp, #0x150]
	strh r0, [r2]
	ldr r3, _0800A0A4 @ =0x080FB630
	mov r4, sb
	ldr r1, [r4]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r3
	ldr r0, [r2]
_0800A074:
	ldr r1, [sp, #0x150]
	strh r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	ldr r3, [sp, #0x150]
	ldrh r3, [r3]
	adds r0, r0, r3
	ldr r4, [sp, #0x150]
	strh r0, [r4]
_0800A08A:
	movs r0, #0
_0800A08C:
	str r0, [sp, #0xe0]
_0800A08E:
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldr r2, [sp, #0x150]
	ldrh r2, [r2]
	str r2, [sp, #0xb4]
	b _0800A668
	.align 2, 0
_0800A0A4: .4byte 0x080FB630
_0800A0A8:
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #8
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A0E8 @ =0x080FB630
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r1, [sp, #0x150]
	strh r3, [r1]
	movs r2, #1
	str r2, [sp, #0xe0]
	b _0800A668
	.align 2, 0
_0800A0E8: .4byte 0x080FB630
_0800A0EC:
	ldr r3, [sp, #0x150]
	ldrh r0, [r3]
	ldr r4, [sp, #0xb4]
	cmp r0, r4
	bne _0800A108
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r2, [sp, #0xb8]
	cmp r0, r2
	bne _0800A108
	b _0800A246
_0800A108:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A11A
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
_0800A11A:
	movs r0, #0
	ldr r3, [sp, #0x158]
	strh r0, [r3]
	ldr r4, [sp, #0x154]
	strh r0, [r4]
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	ldr r1, [sp, #0x150]
	strh r0, [r1]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A144
	movs r0, #0x31
	bl PlaySE
_0800A144:
	mov r2, sb
	ldr r3, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800A214
	cmp r0, #1
	bgt _0800A15C
	cmp r0, #0
	beq _0800A166
	b _0800A23A
_0800A15C:
	cmp r0, #2
	beq _0800A1D4
	cmp r0, #3
	beq _0800A1F8
	b _0800A23A
_0800A166:
	ldrb r1, [r3, #5]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800A17E
	cmp r0, #1
	ble _0800A23A
	cmp r0, #2
	beq _0800A1C0
	cmp r0, #3
	beq _0800A1A0
	b _0800A23A
_0800A17E:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	movs r6, #0
	cmp r0, #2
	ble _0800A18A
	movs r6, #8
_0800A18A:
	ldr r0, _0800A19C @ =0x080FB6D0
	ldr r0, [r0, #4]
	adds r0, r0, r6
	ldr r3, [sp, #0x150]
	ldrh r3, [r3]
	adds r0, r0, r3
	ldr r4, [sp, #0x150]
	strh r0, [r4]
	b _0800A23A
	.align 2, 0
_0800A19C: .4byte 0x080FB6D0
_0800A1A0:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	subs r0, #1
	lsls r6, r0, #3
	ldr r0, _0800A1BC @ =0x080FB6D0
	ldr r0, [r0, #0xc]
	adds r0, r0, r6
	ldr r1, [sp, #0x150]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, [sp, #0x150]
	strh r0, [r2]
	b _0800A23A
	.align 2, 0
_0800A1BC: .4byte 0x080FB6D0
_0800A1C0:
	ldr r0, _0800A1D0 @ =0x080FB6D0
	ldr r1, [r0, #8]
	ldr r3, [sp, #0x150]
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	b _0800A23A
	.align 2, 0
_0800A1D0: .4byte 0x080FB6D0
_0800A1D4:
	ldr r2, _0800A1F4 @ =0x080FB680
	ldrb r1, [r3, #5]
	movs r0, #0xc
	ands r0, r1
	adds r0, #0x28
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r4, [sp, #0x150]
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r7]
	bl sub_0800C09C
	b _0800A23A
	.align 2, 0
_0800A1F4: .4byte 0x080FB680
_0800A1F8:
	ldr r2, _0800A210 @ =0x080FB6D0
	ldrb r1, [r3, #5]
	movs r0, #0xc
	ands r0, r1
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]

	non_word_aligned_thumb_func_start sub_0800A206
sub_0800A206: @ 0x0800A206
	ldr r2, [sp, #0x150]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	b _0800A23A
	.align 2, 0
_0800A210: .4byte 0x080FB6D0
_0800A214:
	ldr r2, _0800A24C @ =0x080FB680
	ldr r1, _0800A250 @ =0x080FBB64
	ldr r0, [r3, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, #0x18
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r3, [sp, #0x150]
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldrh r0, [r7]
	bl sub_0802BFB0
_0800A23A:
	ldr r4, [sp, #0x150]
	ldrh r4, [r4]
	str r4, [sp, #0xb4]
	ldr r0, [r7, #0x7c]
	adds r0, #1
	str r0, [r7, #0x7c]
_0800A246:
	movs r0, #0
	str r0, [sp, #0xe0]
	b _0800A668
	.align 2, 0
_0800A24C: .4byte 0x080FB680
_0800A250: .4byte 0x080FBB64
_0800A254:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _0800A270
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	bne _0800A270
	b _0800A4D8
_0800A270:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A282
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
_0800A282:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A308 @ =0x080FB680
	ldr r2, _0800A30C @ =0x080FBB64
	mov r0, sb
	ldr r1, [r0]
	ldr r0, [r1, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	adds r2, #1
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r3, r3, r0
	ldr r1, [sp, #0x150]
	strh r3, [r1]
	ldrh r0, [r7]
	bl sub_0802BFB0
	ldr r2, [sp, #0x150]
	ldrh r2, [r2]
	str r2, [sp, #0xb4]
	ldr r0, [r7, #0x7c]
	adds r0, #1
	str r0, [r7, #0x7c]
	mov r3, sb
	ldr r0, [r3]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	adds r1, r7, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #7]
	lsrs r0, r0, #1
	adds r1, #2
	strh r0, [r1]
	b _0800A4D8
	.align 2, 0
_0800A308: .4byte 0x080FB680
_0800A30C: .4byte 0x080FBB64
_0800A310:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _0800A32C
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	bne _0800A32C
	b _0800A4D8
_0800A32C:
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0800A352
	cmp r0, #2
	bgt _0800A344
	cmp r0, #1
	beq _0800A34A
	b _0800A376
_0800A344:
	cmp r0, #3
	beq _0800A35A
	b _0800A376
_0800A34A:
	movs r0, #0x46
	bl PlaySE
	b _0800A37C
_0800A352:
	movs r0, #0x9d
	bl PlaySE
	b _0800A37C
_0800A35A:
	ldrb r0, [r1, #5]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800A36E
	ldrh r0, [r7]
	bl sub_0802CE40
	ldr r0, [r7, #0x7c]
	adds r0, #1
	str r0, [r7, #0x7c]
_0800A36E:
	movs r0, #0x9e
	bl PlaySE
	b _0800A37C
_0800A376:
	movs r0, #0x45
	bl PlaySE
_0800A37C:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #0x10
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A3F4 @ =0x080FB630
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r1, [sp, #0x150]
	strh r3, [r1]
	ldrh r2, [r1]
	str r2, [sp, #0xb4]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A3D6
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
_0800A3D6:
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0800A4D8
	subs r0, #1
	cmp r0, #1
	beq _0800A4D8
	cmp r0, #1
	bgt _0800A3F8
	cmp r0, #0
	beq _0800A3FE
	b _0800A4D8
	.align 2, 0
_0800A3F4: .4byte 0x080FB630
_0800A3F8:
	cmp r0, #2
	beq _0800A410
	b _0800A4D8
_0800A3FE:
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	bl sub_08018290
	b _0800A4D8
_0800A410:
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	bl sub_08018314
	b _0800A4D8
_0800A422:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _0800A43C
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	beq _0800A4D8
_0800A43C:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #0x18
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A4B0 @ =0x080FB630
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r1, [sp, #0x150]
	strh r3, [r1]
	ldrh r2, [r1]
	str r2, [sp, #0xb4]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A4D8
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0800A4C2
	cmp r0, #2
	bgt _0800A4B4
	cmp r0, #1
	beq _0800A4BA
	b _0800A4D2
	.align 2, 0
_0800A4B0: .4byte 0x080FB630
_0800A4B4:
	cmp r0, #3
	beq _0800A4CA
	b _0800A4D2
_0800A4BA:
	movs r0, #0x9a
	bl PlaySE
	b _0800A4D8
_0800A4C2:
	movs r0, #0x69
	bl PlaySE
	b _0800A4D8
_0800A4CA:
	movs r0, #0x9e
	bl PlaySE
	b _0800A4D8
_0800A4D2:
	movs r0, #0x69
	bl PlaySE
_0800A4D8:
	movs r4, #0
	str r4, [sp, #0xe0]
	b _0800A668
_0800A4DE:
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #5]
	lsrs r0, r0, #4
	cmp r0, #0xf
	bls _0800A4EC
	b _0800A668
_0800A4EC:
	lsls r0, r0, #2
	ldr r1, _0800A4F8 @ =_0800A4FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A4F8: .4byte _0800A4FC
_0800A4FC: @ jump table
	.4byte _0800A53C @ case 0
	.4byte _0800A546 @ case 1
	.4byte _0800A564 @ case 2
	.4byte _0800A668 @ case 3
	.4byte _0800A5C6 @ case 4
	.4byte _0800A668 @ case 5
	.4byte _0800A564 @ case 6
	.4byte _0800A668 @ case 7
	.4byte _0800A564 @ case 8
	.4byte _0800A668 @ case 9
	.4byte _0800A668 @ case 10
	.4byte _0800A592 @ case 11
	.4byte _0800A5C0 @ case 12
	.4byte _0800A5FC @ case 13
	.4byte _0800A648 @ case 14
	.4byte _0800A53C @ case 15
_0800A53C:
	ldrh r1, [r7, #0x10]
	movs r0, #3
	orrs r0, r1
	strh r0, [r7, #0x10]
	b _0800A668
_0800A546:
	ldrh r0, [r7, #0x10]
	ldr r1, _0800A560 @ =0x0000FFFC
	ands r1, r0
	movs r2, #0
	movs r0, #4
	orrs r1, r0
	strh r1, [r7, #0x10]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _0800A55C
	b _0800A668
_0800A55C:
	strh r2, [r7, #0xc]
	b _0800A668
	.align 2, 0
_0800A560: .4byte 0x0000FFFC
_0800A564:
	mov r2, sb
	ldr r0, [r2]
	ldrb r3, [r0, #3]
	lsrs r3, r3, #4
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A5BC @ =0x080FB630
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r0, [sp, #0x150]
	strh r3, [r0]
_0800A592:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _0800A668
	mov r1, sb
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0xc
	str r0, [sp, #0xcc]
	movs r2, #0
	str r2, [sp, #0xd8]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ldr r3, [sp, #0xcc]
	ands r0, r3
	cmp r0, #0
	beq _0800A668
	movs r0, #0xf0
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [sp, #0xcc]
	b _0800A668
	.align 2, 0
_0800A5BC: .4byte 0x080FB630
_0800A5C0:
	movs r0, #0x6b
	bl PlaySE
_0800A5C6:
	mov r4, sb
	ldr r0, [r4]
	ldrb r3, [r0, #3]
	lsrs r3, r3, #4
	ldr r0, [sp, #0x150]
	strh r3, [r0]
	ldr r4, _0800A5F8 @ =0x080FB630
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	b _0800A668
	.align 2, 0
_0800A5F8: .4byte 0x080FB630
_0800A5FC:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A628
	ldr r1, [sp, #0x100]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x100]
	cmp r1, #5
	bls _0800A630
	movs r0, #0xe
	strh r0, [r7, #0xe]
	ldr r1, _0800A624 @ =0x030064D8
	ldrh r0, [r7]
	adds r0, #1
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x100]
	b _0800A630
	.align 2, 0
_0800A624: .4byte 0x030064D8
_0800A628:
	ldr r1, _0800A644 @ =0x030064D8
	ldrh r0, [r7]
	adds r0, #1
	str r0, [r1]
_0800A630:
	mov r1, sb
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r7, #0
	bl sub_08027188
	b _0800A668
	.align 2, 0
_0800A644: .4byte 0x030064D8
_0800A648:
	bl sub_0800F298
	cmp r0, #0
	beq _0800A668
	bl sub_08007604
	cmp r0, #0
	bne _0800A668
	ldr r0, _0800A738 @ =0x030064D8
	ldr r1, [r0]
	cmp r1, #0
	bne _0800A668
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A668
	strh r1, [r7, #0xc]
_0800A668:
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0800A6BA

	non_word_aligned_thumb_func_start sub_0800A676
sub_0800A676: @ 0x0800A676
	ldr r3, [sp, #0xcc]
	ldr r4, [sp, #0xd4]
	adds r3, r3, r4
	str r3, [sp, #0xcc]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r4, r0
	str r4, [sp, #0xd4]
	cmp r3, #0
	blt _0800A6A6
	movs r0, #0xc0
	lsls r0, r0, #4
	ldr r1, [sp, #0xd8]
	asrs r0, r1
	rsbs r0, r0, #0
	str r0, [sp, #0xd4]
	adds r1, #1
	str r1, [sp, #0xd8]
	ldr r2, _0800A73C @ =0xFFFFE000
	str r2, [sp, #0xcc]
	ldrh r1, [r7, #0x10]
	ldr r0, _0800A740 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r7, #0x10]
_0800A6A6:
	ldr r3, [sp, #0xd8]
	cmp r3, #2
	ble _0800A6BA
	movs r4, #3
	str r4, [sp, #0xd8]
	movs r0, #0
	str r0, [sp, #0xcc]
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [sp, #0xd4]
_0800A6BA:
	add r1, sp, #0x10
	ldrh r0, [r7]
	strb r0, [r1]
	movs r0, #4
	strb r0, [r1, #4]
	ldr r4, _0800A744 @ =0x080FB610
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetDataRecord
	mov r8, r0
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetDataRecord
	mov sl, r0
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xec]
	ldr r2, [sp, #0x150]
	ldrh r0, [r2]
	ldr r3, [sp, #0xe0]
	str r3, [sp]
	ldr r1, [sp, #0x154]
	ldr r2, [sp, #0x158]
	mov r3, r8
	bl sub_08004214
	ldr r4, [sp, #0x15c]
	strh r0, [r4]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A79A
	cmp r0, #9
	beq _0800A748
	mov r1, sb
	ldr r0, [r1]
	b _0800A75A
	.align 2, 0
_0800A738: .4byte 0x030064D8
_0800A73C: .4byte 0xFFFFE000
_0800A740: .4byte 0x0000FFBF
_0800A744: .4byte 0x080FB610
_0800A748:
	ldrh r0, [r7, #0xe]
	cmp r0, #2
	beq _0800A752
	cmp r0, #6
	bne _0800A756
_0800A752:
	movs r6, #0
	b _0800A776
_0800A756:
	mov r2, sb
	ldr r0, [r2]
_0800A75A:
	ldrh r5, [r0]
	lsrs r5, r5, #4
	ldrh r4, [r0, #2]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x14
	bl sub_08007544
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0800A776:
	bl sub_08007544
	adds r3, r0, #0
	mov r4, sb
	ldr r1, [r4]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0x148]
	ldr r3, [sp, #0x14c]
	bl sub_08005FC4
	b _0800A808
_0800A79A:
	mov r0, sb
	ldr r3, [r0]
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _0800A7B8
	ldrb r0, [r3, #5]
	lsrs r0, r0, #4
	cmp r0, #2
	beq _0800A7B4
	cmp r0, #6
	bne _0800A7B8
_0800A7B4:
	movs r6, #0
	b _0800A7DA
_0800A7B8:
	ldrh r0, [r3]
	lsrs r4, r0, #4
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x14
	movs r2, #0
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800A7D0
	movs r2, #1
_0800A7D0:
	adds r0, r4, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0800A7DA:
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r1]
	lsrs r4, r0, #4
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r3, r0, #0x14
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800A7FA
	movs r2, #1
_0800A7FA:
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x148]
	ldr r3, [sp, #0x14c]
	bl sub_08005FC4
_0800A808:
	ldrh r1, [r7, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800A814
	b _0800ACAA
_0800A814:
	ldr r4, _0800A880 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r1, [r0, #0x16]
	mov r3, sb
	ldr r0, [r3]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	beq _0800A832
	b _0800ACAA
_0800A832:
	bl sub_08007510
	cmp r0, #0
	beq _0800A83C
	b _0800A978
_0800A83C:
	bl sub_08007604
	cmp r0, #0
	beq _0800A846
	b _0800A9C4
_0800A846:
	ldrh r1, [r7, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800A884
	ldr r4, [sp, #0x148]
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0x14c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xcc]
	asrs r2, r4, #0xc
	adds r1, r1, r2
	ldr r3, [sp, #0x150]
	ldrh r2, [r3]
	ldr r4, [sp, #0x154]
	ldrh r3, [r4]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	mov r4, r8
	str r4, [sp, #8]
	mov r4, sl
	str r4, [sp, #0xc]
	bl sub_08004344
	b _0800A8A8
	.align 2, 0
_0800A880: .4byte gPlayers
_0800A884:
	ldr r0, _0800A974 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0800A8A8
	mov r0, sb
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldr r3, [sp, #0xcc]
	asrs r2, r3, #0xc
	adds r1, r1, r2
	bl sub_08029BB4
_0800A8A8:
	bl sub_08001F98
	cmp r0, #0
	bne _0800A8E2
	ldr r4, [sp, #0xcc]
	cmp r4, #0
	beq _0800A8E2
	mov r0, r8
	bl sub_080044DC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, [sp, #0x148]
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, [sp, #0x14c]
	movs r3, #0
	ldrsh r1, [r4, r3]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	mov r3, r8
	str r3, [sp, #8]
	mov r4, sl
	str r4, [sp, #0xc]
	movs r3, #0
	bl sub_08004344
_0800A8E2:
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _0800A9C4
	ldrb r0, [r1, #5]
	lsrs r0, r0, #4
	cmp r0, #2
	beq _0800A8FC
	cmp r0, #0xb
	bne _0800A9C4
_0800A8FC:
	ldr r3, [sp, #0x20]
	movs r4, #1
	str r4, [sp]
	movs r0, #0
	add r1, sp, #0x84
	mov r2, sp
	adds r2, #0x86
	bl sub_08004214
	ldr r3, [sp, #0x20]
	str r4, [sp]
	movs r0, #1
	add r1, sp, #0x88
	mov r2, sp
	adds r2, #0x8a
	bl sub_08004214
	ldr r1, [sp, #0x148]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x14c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0xcc]
	asrs r4, r2, #0xc
	adds r1, r1, r4
	subs r1, #0x18
	add r2, sp, #0x84
	ldrh r3, [r2]
	str r6, [sp]
	add r5, sp, #0x34
	str r5, [sp, #4]
	ldr r2, [sp, #0x20]
	str r2, [sp, #8]
	ldr r2, [sp, #0x18]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	ldr r3, [sp, #0x148]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x14c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, r1, r4
	adds r1, #8
	add r4, sp, #0x88
	ldrh r3, [r4]
	movs r2, #0
	str r2, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x20]
	str r2, [sp, #8]
	ldr r2, [sp, #0x18]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	b _0800A9C4
	.align 2, 0
_0800A974: .4byte gFrameCounter
_0800A978:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A9C4
	bl sub_08045F6C
	cmp r0, #8
	bne _0800A9A6
	ldr r0, [sp, #0x150]
	ldrh r2, [r0]
	ldr r1, [sp, #0x154]
	ldrh r3, [r1]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	movs r0, #0x1c
	movs r1, #0x58
	bl sub_08004344
	b _0800A9C4
_0800A9A6:
	ldr r3, [sp, #0x150]
	ldrh r2, [r3]
	ldr r4, [sp, #0x154]
	ldrh r3, [r4]
	str r6, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	mov r4, sl
	str r4, [sp, #0xc]
	movs r0, #0x24
	movs r1, #0x58
	bl sub_08004344
_0800A9C4:
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800A9D4
	b _0800AAF8
_0800A9D4:
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	subs r0, #3
	cmp r0, #1
	bls _0800A9E2
	b _0800AAF8
_0800A9E2:
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bgt _0800A9EE
	b _0800AAF8
_0800A9EE:
	cmp r0, #3
	ble _0800A9F8
	movs r1, #1
	str r1, [sp, #0x104]
	b _0800AA00
_0800A9F8:
	cmp r0, #0
	blt _0800AA00
	movs r2, #0
	str r2, [sp, #0x104]
_0800AA00:
	mov r3, sb
	ldr r0, [r3]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	cmp r0, #7
	bhi _0800AA5E
	lsls r0, r0, #2
	ldr r1, _0800AA18 @ =_0800AA1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AA18: .4byte _0800AA1C
_0800AA1C: @ jump table
	.4byte _0800AA5E @ case 0
	.4byte _0800AA3C @ case 1
	.4byte _0800AA42 @ case 2
	.4byte _0800AA48 @ case 3
	.4byte _0800AA5E @ case 4
	.4byte _0800AA54 @ case 5
	.4byte _0800AA4E @ case 6
	.4byte _0800AA54 @ case 7
_0800AA3C:
	ldr r0, [sp, #0x104]
	adds r0, #2
	b _0800AA58
_0800AA42:
	ldr r0, [sp, #0x104]
	adds r0, #4
	b _0800AA58
_0800AA48:
	ldr r0, [sp, #0x104]
	adds r0, #6
	b _0800AA58
_0800AA4E:
	ldr r0, [sp, #0x104]
	adds r0, #8
	b _0800AA58
_0800AA54:
	ldr r0, [sp, #0x104]
	adds r0, #0xa
_0800AA58:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x104]
_0800AA5E:
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	ldr r0, _0800AB14 @ =0x00100004
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0800AB18 @ =0x00110004
	bl GetDataRecord
	mov sl, r0
	ldr r0, _0800AB1C @ =0x00130004
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #1
	str r5, [sp]
	ldr r0, [sp, #0x104]
	add r1, sp, #0x8c
	mov r2, sp
	adds r2, #0x8e
	mov r3, r8
	bl sub_08004214
	bl GetMultiplayerId
	ldr r2, _0800AB20 @ =gPlayers
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r0, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800AAF8
	bl sub_08007510
	cmp r0, #0
	bne _0800AAF8
	bl sub_08007544
	cmp r0, #0
	bne _0800AAF8
	bl sub_080075AC
	cmp r0, #0
	bne _0800AAF8
	ldr r1, [sp, #0x148]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x14c]
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r1, #1
	add r2, sp, #0x8c
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x104]
	bl sub_08004344
	ldr r0, _0800AB24 @ =gFrameCounter
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _0800AAF8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
_0800AAF8:
	movs r2, #1
	movs r6, #0
_0800AAFC:
	ldr r0, [r7, #0x1c]
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #1
	cmp r0, #9
	bhi _0800AB74
	lsls r0, r0, #2
	ldr r1, _0800AB28 @ =_0800AB2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AB14: .4byte 0x00100004
_0800AB18: .4byte 0x00110004
_0800AB1C: .4byte 0x00130004
_0800AB20: .4byte gPlayers
_0800AB24: .4byte gFrameCounter
_0800AB28: .4byte _0800AB2C
_0800AB2C: @ jump table
	.4byte _0800AB54 @ case 0
	.4byte _0800AB54 @ case 1
	.4byte _0800AB5E @ case 2
	.4byte _0800AB5E @ case 3
	.4byte _0800AB74 @ case 4
	.4byte _0800AB74 @ case 5
	.4byte _0800AB74 @ case 6
	.4byte _0800AB74 @ case 7
	.4byte _0800AB74 @ case 8
	.4byte _0800AB70 @ case 9
_0800AB54:
	ldrh r0, [r7]
	adds r0, #0x10
	ldr r1, [sp, #0xec]
	adds r1, #0xe0
	b _0800AB66
_0800AB5E:
	ldrh r0, [r7]
	adds r0, #0x10
	ldr r1, [sp, #0xec]
	adds r1, #0xc0
_0800AB66:
	movs r2, #1
	bl LoadPalette
	movs r2, #0
	b _0800AB74
_0800AB70:
	movs r3, #0x64
	str r3, [sp, #0x120]
_0800AB74:
	adds r6, #1
	cmp r6, #2
	bls _0800AAFC
	cmp r2, #0
	bne _0800AB80
	b _0800AC8C
_0800AB80:
	ldrh r0, [r7]
	adds r0, #0x10
	mov r4, sb
	ldr r1, [r4]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #5
	ldr r2, [sp, #0xec]
	adds r1, r2, r1
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x124]
	adds r1, #2
	lsls r1, r1, #0x18
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r1
	lsrs r0, r0, #0x18
	str r0, [sp, #0x124]
	ldr r2, _0800AC14 @ =gPaletteBuffer
	ldrh r0, [r7]
	adds r0, #0x10
	lsls r0, r0, #5
	adds r2, #0x1e
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	movs r6, #0
	ldr r1, _0800AC18 @ =0x0805289C
	ldr r3, [sp, #0x124]
	lsls r0, r3, #1
	adds r5, r0, r1
	movs r4, #0x1f
	mov sl, r4
	add r4, sp, #0xa0
	mov ip, r2
	mov r8, r6
_0800ABD2:
	ldr r1, [r7, #0x1c]
	mov r2, r8
	adds r0, r2, r1
	ldrh r0, [r0]
	adds r2, r1, #0
	cmp r0, #6
	bgt _0800AC24
	cmp r0, #5
	blt _0800AC24
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r0, sl
	ands r1, r0
	ldr r0, [r4]
	movs r2, #0x20
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	lsls r2, r1, #5
	ldr r3, _0800AC1C @ =0xFFFFFC1F
	ands r0, r3
	orrs r0, r2
	lsls r1, r1, #0xa
	ldr r2, _0800AC20 @ =0xFFFF83FF
	ands r0, r2
	orrs r0, r1
	str r0, [r4]
	b _0800AC76
	.align 2, 0
_0800AC14: .4byte gPaletteBuffer
_0800AC18: .4byte 0x0805289C
_0800AC1C: .4byte 0xFFFFFC1F
_0800AC20: .4byte 0xFFFF83FF
_0800AC24:
	mov r1, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #6
	bls _0800AC82
	movs r2, #0
	ldrsh r3, [r5, r2]
	lsls r0, r3, #5
	subs r0, r0, r3
	asrs r0, r0, #8
	mov r1, sl
	ands r0, r1
	ldrb r2, [r4]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	ldr r0, _0800AD38 @ =0xFFFFFF00
	ldr r2, [r4]
	ands r2, r0
	orrs r2, r1
	str r2, [r4]
	lsls r0, r3, #3
	adds r0, r0, r3
	asrs r0, r0, #7
	mov r3, sl
	ands r0, r3
	lsls r0, r0, #5
	ldrh r3, [r4]
	ldr r1, _0800AD3C @ =0xFFFFFC1F
	ands r1, r3
	orrs r1, r0
	ldr r0, _0800AD40 @ =0xFFFF0000
	ands r2, r0
	orrs r2, r1
	str r2, [r4]
	ldrb r1, [r4, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
_0800AC76:
	ldrh r0, [r7]
	adds r0, #0x10
	lsls r0, r0, #5
	add r0, ip
	ldrh r1, [r4]
	strh r1, [r0]
_0800AC82:
	movs r0, #2
	add r8, r0
	adds r6, #1
	cmp r6, #2
	bls _0800ABD2
_0800AC8C:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800ACAA
	ldr r0, _0800AD44 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800ACAA
	ldr r1, [sp, #0xec]
	adds r1, #0x80
	movs r0, #0x14
	movs r2, #1
	bl LoadPalette
_0800ACAA:
	bl sub_080077C0
	cmp r0, #0
	bne _0800ADA2
	bl sub_08007510
	cmp r0, #0
	bne _0800ADA2
	bl sub_08007604
	cmp r0, #0
	bne _0800ADA2
	mov r5, sb
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0800ADA2
	cmp r0, #0
	blt _0800ADA2
	ldr r4, _0800AD48 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r1, [r0, #0x16]
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0800ADA2
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x1e
	lsrs r5, r0, #0x1e
	cmp r5, #1
	bne _0800AD4C
	bl sub_08022A88
	cmp r0, #0
	bne _0800ADA2
	ldrh r1, [r7, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800ADA2
	add r4, sp, #0x90
	mov r3, sp
	adds r3, #0x92
	str r5, [sp]
	ldr r0, [sp, #0x12c]
	movs r1, #5
	adds r2, r4, #0
	bl sub_08026C40
	ldr r2, [sp, #0x148]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, #0x14c]
	movs r3, #0
	ldrsh r2, [r0, r3]
	subs r2, #0x28
	ldrh r0, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #5
	bl sub_08026B90
	b _0800ADA2
	.align 2, 0
_0800AD38: .4byte 0xFFFFFF00
_0800AD3C: .4byte 0xFFFFFC1F
_0800AD40: .4byte 0xFFFF0000
_0800AD44: .4byte gFrameCounter
_0800AD48: .4byte gPlayers
_0800AD4C:
	cmp r5, #2
	bne _0800ADA2
	bl sub_08022A88
	cmp r0, #0
	bne _0800ADA2
	ldrh r0, [r7, #0x10]
	adds r3, r0, #0
	ands r3, r5
	cmp r3, #0
	bne _0800ADA2
	mov r4, sb
	ldr r0, [r4]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0800AD8A
	ldr r0, [sp, #0x148]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r4, [sp, #0x14c]
	movs r0, #0
	ldrsh r2, [r4, r0]
	subs r2, #0x28
	str r3, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #0x22
	bl sub_08026B90
	b _0800ADA2
_0800AD8A:
	ldr r2, [sp, #0x148]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x14c]
	movs r3, #0
	ldrsh r2, [r4, r3]
	subs r2, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #0x22
	bl sub_08026B90
_0800ADA2:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _0800ADAA
	b _0800AF20
_0800ADAA:
	ldrh r1, [r7, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800AE4E
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800AE56
	bl sub_08007510
	cmp r0, #0
	bne _0800AE56
	bl sub_08007604
	cmp r0, #0
	bne _0800AE56
	ldr r0, [sp, #0xbc]
	adds r4, r0, #0
	subs r4, #1
	str r4, [sp, #0xbc]
	cmp r0, #0
	bgt _0800ADEC
	movs r0, #0
	str r0, [sp, #0xbc]
	ldr r1, [sp, #0xc0]
	adds r1, #0x20
	str r1, [sp, #0xc0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _0800ADEC
	str r0, [sp, #0xc0]
_0800ADEC:
	add r2, sp, #0xa4
	mov r8, r2
	ldr r3, [sp, #0x148]
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r1, r1, #0xc
	movs r2, #0xf0
	lsls r2, r2, #0xb
	mov r0, r8
	ldr r3, [sp, #0xc0]
	bl sub_080270A4
	add r5, sp, #0xa8
	ldr r0, [sp, #0x14c]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0xcc]
	asrs r0, r3, #0xc
	subs r0, #0x28
	adds r1, r1, r0
	lsls r1, r1, #0xc
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, #0
	ldr r3, [sp, #0xc0]
	bl sub_080270A4
	add r4, sp, #0x90
	mov r3, sp
	adds r3, #0x92
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r1, #0xe
	adds r2, r4, #0
	bl sub_08026C40
	mov r0, r8
	ldr r1, [r0]
	asrs r1, r1, #0xc
	ldr r2, [r5]
	asrs r2, r2, #0xc
	ldrh r0, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #0xe
	bl sub_08026B90
	b _0800AE56
_0800AE4E:
	movs r1, #0x78
	str r1, [sp, #0xbc]
	movs r2, #0
	str r2, [sp, #0xc0]
_0800AE56:
	ldr r4, _0800AF10 @ =0x03003D94
	adds r0, r4, #0
	bl sub_08014014
	adds r1, r0, #0
	cmp r1, #0
	beq _0800AF20
	movs r3, #0xab
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AF20
	ldr r0, _0800AF14 @ =0x00000157
	adds r1, r1, r0
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800AF18
	bl sub_08007510
	cmp r0, #0
	bne _0800AF20
	bl sub_08007604
	cmp r0, #0
	bne _0800AF20
	ldr r0, [sp, #0xc4]
	adds r1, r0, #0
	subs r1, #1
	str r1, [sp, #0xc4]
	cmp r0, #0
	bgt _0800AEAC
	movs r2, #0
	str r2, [sp, #0xc4]
	ldr r3, [sp, #0xc8]
	adds r3, #0x20
	str r3, [sp, #0xc8]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	ble _0800AEAC
	str r0, [sp, #0xc8]
_0800AEAC:
	add r4, sp, #0xac
	mov r8, r4
	ldr r0, [sp, #0x148]
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0xc
	movs r2, #0xa0
	lsls r2, r2, #0xb
	mov r0, r8
	ldr r3, [sp, #0xc8]
	bl sub_080270A4
	add r5, sp, #0xb0
	ldr r3, [sp, #0x14c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0xcc]
	asrs r0, r2, #0xc
	subs r0, #0x28
	adds r1, r1, r0
	lsls r1, r1, #0xc
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, #0
	ldr r3, [sp, #0xc8]
	bl sub_080270A4
	add r4, sp, #0x94
	mov r3, sp
	adds r3, #0x96
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r1, #0x24
	adds r2, r4, #0
	bl sub_08026C40
	mov r3, r8
	ldr r1, [r3]
	asrs r1, r1, #0xc
	ldr r2, [r5]
	asrs r2, r2, #0xc
	ldrh r0, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #0x24
	bl sub_08026B90
	b _0800AF20
	.align 2, 0
_0800AF10: .4byte 0x03003D94
_0800AF14: .4byte 0x00000157
_0800AF18:
	movs r4, #0x78
	str r4, [sp, #0xc4]
	movs r0, #0
	str r0, [sp, #0xc8]
_0800AF20:
	bl WaitFrame

	thumb_func_start sub_0800AF24
sub_0800AF24: @ 0x0800AF24
	bl sub_080074CC
	cmp r0, #0
	bne _0800AF38
	bl sub_08007578
	cmp r0, #0
	bne _0800AF38
	bl sub_08007A46
_0800AF38:
	ldrh r0, [r7]
	bl sub_0802EFD4
	ldr r0, [r7, #0x1c]
	bl Free
	ldr r0, [r7, #0x20]
	bl Free
	ldr r1, [sp, #0x168]
	ldr r0, [r1]
	bl Free
	ldr r2, [sp, #0x164]
	ldr r0, [r2]
	bl Free
	movs r0, #0
	str r0, [r7, #0x1c]
	str r0, [r7, #0x20]
	ldr r3, [sp, #0x168]
	str r0, [r3]
	ldr r4, [sp, #0x164]
	str r0, [r4]
	ldr r0, _0800AF88 @ =0x00018A92
	bl SignalEvent
	ldr r0, _0800AF8C @ =0x00018A93
	bl SignalEvent
	bl ThreadExit
	add sp, #0x174
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF88: .4byte 0x00018A92
_0800AF8C: .4byte 0x00018A93

	thumb_func_start sub_0800AF90
sub_0800AF90: @ 0x0800AF90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	bl sub_08001E78
	ldr r7, _0800B008 @ =gPlayers
	movs r1, #0xd4
	mov r2, sb
	muls r2, r1, r2
	mov r8, r2
	adds r1, r7, #0
	adds r1, #0xd0
	add r1, r8
	str r0, [r1]
	adds r4, r2, r7
	movs r6, #0
	mov sl, r6
	mov r0, sb
	strh r0, [r4]
	bl GetMultiplayerId
	cmp sb, r0
	beq _0800B010
	movs r0, #0xa
	strh r0, [r4, #0xc]
	ldr r5, _0800B00C @ =0x03003F90
	mov r1, sb
	lsls r6, r1, #2
	adds r4, r6, r1
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x32
	str r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	bl Alloc
	str r0, [sp, #0xc4]
	adds r5, #0x20
	adds r4, r4, r5
	str r0, [r4]
	adds r0, r7, #0
	adds r0, #0xc8
	add r0, r8
	mov r2, sl
	str r2, [r0]
	adds r0, r7, #0
	adds r0, #0xc4
	add r0, r8
	str r2, [r0]
	mov sl, r6
	b _0800B05E
	.align 2, 0
_0800B008: .4byte gPlayers
_0800B00C: .4byte 0x03003F90
_0800B010:
	adds r0, r7, #0
	adds r0, #0xcc
	add r0, r8
	ldr r1, _0800B194 @ =gPlayerStats
	str r1, [r0]
	mov r6, sl
	strh r6, [r4, #0xc]
	ldr r3, _0800B198 @ =0x03003F90
	mov r0, sb
	lsls r4, r0, #2
	adds r2, r4, r0
	lsls r2, r2, #3
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0x31
	str r1, [r0]
	ldr r1, _0800B19C @ =0x03004030
	str r1, [sp, #0xc4]
	adds r3, #0x20
	adds r2, r2, r3
	mov r6, sl
	str r6, [r2]
	movs r0, #0xb9
	lsls r0, r0, #2
	bl Alloc
	adds r1, r7, #0
	adds r1, #0xc8
	add r1, r8
	str r0, [r1]
	movs r0, #0xa
	bl Alloc
	adds r1, r7, #0
	adds r1, #0xc4
	add r1, r8
	str r0, [r1]
	mov sl, r4
_0800B05E:
	movs r0, #6
	bl Alloc
	ldr r5, _0800B1A0 @ =gPlayers
	movs r1, #0xd4
	mov r4, sb
	muls r4, r1, r4
	adds r1, r5, #0
	adds r1, #0x1c
	adds r1, r4, r1
	str r0, [r1]
	movs r0, #0x54
	bl Alloc
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r0, [r1]
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0xc8
	adds r4, r4, r0
	mov r8, r5
	ldr r0, _0800B1A4 @ =0x0000FFFF
	adds r3, r0, #0
	movs r2, #0
_0800B092:
	ldr r1, [r4]
	adds r1, r2, r1
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r2, #0x94
	adds r6, #1
	cmp r6, #4
	bls _0800B092
	movs r6, #0
	ldr r3, _0800B1A0 @ =gPlayers
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x1c
	adds r7, r1, r0
	adds r0, #4
	adds r2, r1, r0
	movs r4, #0
	adds r0, #4
	adds r5, r1, r0
	movs r3, #0
_0800B0C0:
	ldr r1, [r7]
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #2]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #4]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #6]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #8]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #0xa]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #0xc]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #0xe]
	strh r4, [r5]
	adds r5, #2
	adds r3, #0x1c
	adds r6, #1
	cmp r6, #2
	bls _0800B0C0
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	mov r2, r8
	adds r5, r0, r2
	adds r0, r5, #0
	adds r0, #0xc2
	movs r7, #0
	strh r7, [r0]
	bl GetMultiplayerId
	cmp sb, r0
	bne _0800B152
	adds r4, r5, #0
	adds r4, #0x10
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0xc4
	bl memcpy
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	bl sub_0801574C
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0xc4
	bl memcpy
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	bl sub_08016270
_0800B152:
	ldr r3, _0800B198 @ =0x03003F90
	mov r0, sl
	add r0, sb
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r0, r1
	ldr r2, _0800B1A8 @ =sub_080077D0
	str r2, [r1]
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r0, r1
	ldr r4, [sp, #0xc4]
	ldr r6, _0800B1AC @ =0x0000047C
	adds r2, r4, r6
	str r2, [r1]
	adds r1, r3, #0
	adds r1, #0x24
	adds r1, r0, r1
	str r7, [r1]
	adds r0, r0, r3
	adds r1, r5, #0
	bl CreateThread
	add sp, #0xc8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B194: .4byte gPlayerStats
_0800B198: .4byte 0x03003F90
_0800B19C: .4byte 0x03004030
_0800B1A0: .4byte gPlayers
_0800B1A4: .4byte 0x0000FFFF
_0800B1A8: .4byte sub_080077D0
_0800B1AC: .4byte 0x0000047C

	thumb_func_start sub_0800B1B0
sub_0800B1B0: @ 0x0800B1B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r2, #0
	ldr r0, _0800B3CC @ =gPlayerStats
	mov ip, r0
	movs r4, #0
_0800B1C4:
	movs r0, #0xd4
	muls r0, r2, r0
	ldr r3, _0800B3D0 @ =gPlayers
	adds r1, r0, r3
	strh r4, [r1]
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	strh r4, [r1, #0xa]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0xc]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x16]
	strh r4, [r1, #0x2c]
	strh r4, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	strh r4, [r1, #0x34]
	strh r4, [r1, #0x36]
	strh r4, [r1, #0x38]
	strh r4, [r1, #0x3a]
	adds r0, r1, #0
	adds r0, #0x48
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #6
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	adds r0, #0x2c
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	str r4, [r1, #0x58]
	str r4, [r1, #0x5c]
	str r4, [r1, #0x7c]
	adds r0, #0x2a
	strh r4, [r0]
	subs r0, #0x4e
	strh r4, [r0]
	adds r0, #0x78
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	movs r3, #0
	adds r2, #1
	str r2, [sp]
	subs r0, #0x50
_0800B226:
	stm r0!, {r4}
	adds r3, #1
	cmp r3, #4
	bls _0800B226
	movs r3, #0
	movs r0, #0x66
	add r0, ip
	mov sl, r0
	mov r7, ip
	adds r7, #0x80
	mov r1, ip
	adds r1, #0x7c
	str r1, [sp, #4]
	movs r0, #0x84
	add r0, ip
	mov r8, r0
	subs r1, #0x10
	str r1, [sp, #0xc]
	mov r0, ip
	adds r0, #0x40
	str r0, [sp, #8]
	movs r1, #0
	mov r0, ip
_0800B254:
	strh r1, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0xf
	bls _0800B254
	mov r1, ip
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x24]
	strh r4, [r1, #0x26]
	strh r4, [r1, #0x28]
	strh r4, [r1, #0x2a]
	strh r4, [r1, #0x2c]
	strh r4, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	strh r4, [r1, #0x3c]
	movs r3, #0
	movs r6, #0x71
	rsbs r6, r6, #0
	ldr r0, _0800B3D4 @ =0xFFFFC07F
	mov sb, r0
	mov r2, ip
	adds r2, #0x70
	movs r5, #0x41
	rsbs r5, r5, #0
_0800B286:
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r6
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, [r2]
	ldr r1, _0800B3D8 @ =0x00007FFF
	ands r0, r1
	stm r2!, {r0}
	lsls r0, r3, #1
	add r0, sl
	strh r4, [r0]
	adds r3, #1
	cmp r3, #2
	bls _0800B286
	movs r3, #0
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sl, r0
	movs r6, #0x71
	rsbs r6, r6, #0
	ldr r1, _0800B3D4 @ =0xFFFFC07F
	mov sb, r1
	movs r5, #0x41
	rsbs r5, r5, #0
	mov r2, ip
	adds r2, #0x88
_0800B2CE:
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	ands r0, r6
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, [r2]
	ldr r1, _0800B3D8 @ =0x00007FFF
	ands r0, r1
	stm r2!, {r0}
	adds r3, #1
	cmp r3, #0x18
	bls _0800B2CE
	movs r3, #0
	ldr r6, _0800B3DC @ =0xFFFF8000
	adds r5, r1, #0
	mov r2, ip
	adds r2, #0xec
_0800B300:
	ldrh r0, [r2]
	adds r1, r6, #0
	ands r1, r0
	strh r1, [r2]
	ldr r0, [r2]
	ands r0, r5
	stm r2!, {r0}
	adds r3, #1
	cmp r3, #0x3b
	bls _0800B300
	ldr r0, [r7]
	ldr r3, _0800B3D8 @ =0x00007FFF
	ands r0, r3
	str r0, [r7]
	ldrh r1, [r7]
	ldr r0, _0800B3DC @ =0xFFFF8000
	ands r0, r1
	strh r0, [r7]
	mov r1, ip
	ldr r0, [r1, #0x7c]
	ands r0, r3
	str r0, [r1, #0x7c]
	ldr r3, [sp, #4]
	ldrh r1, [r3]
	ldr r0, _0800B3DC @ =0xFFFF8000
	ands r0, r1
	strh r0, [r3]
	mov r1, r8
	ldr r0, [r1]
	ldr r3, _0800B3D8 @ =0x00007FFF
	ands r0, r3
	str r0, [r1]
	ldrh r1, [r1]
	ldr r0, _0800B3DC @ =0xFFFF8000
	ands r0, r1
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x9b
	lsls r0, r0, #2
	add r0, ip
	str r4, [r0]
	ldr r3, [sp, #0xc]
	strh r4, [r3]
	ldr r0, _0800B3E0 @ =0x03003F80
	ldrh r1, [r0]
	ldr r0, _0800B3E4 @ =0xFFFFFC00
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _0800B3E0 @ =0x03003F80
	strh r0, [r1]
	ldr r1, [r1]
	ldr r0, _0800B3E8 @ =0xFFF003FF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #4
	orrs r1, r0
	ldr r3, _0800B3E0 @ =0x03003F80
	str r1, [r3]
	ldr r0, _0800B3EC @ =0x03003F82
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	ldr r1, _0800B3EC @ =0x03003F82
	strh r0, [r1]
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, ip
	strb r4, [r0]
	ldr r3, _0800B3F0 @ =0x03003F85
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r0, [sp, #8]
	strh r4, [r0]
	movs r3, #0
	movs r1, #0
	mov r0, ip
	adds r0, #0x44
_0800B3A8:
	strh r1, [r0, #2]
	strh r1, [r0]
	adds r0, #4
	adds r3, #1
	cmp r3, #7
	bls _0800B3A8
	ldr r2, [sp]
	cmp r2, #3
	bhi _0800B3BC
	b _0800B1C4
_0800B3BC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B3CC: .4byte gPlayerStats
_0800B3D0: .4byte gPlayers
_0800B3D4: .4byte 0xFFFFC07F
_0800B3D8: .4byte 0x00007FFF
_0800B3DC: .4byte 0xFFFF8000
_0800B3E0: .4byte 0x03003F80
_0800B3E4: .4byte 0xFFFFFC00
_0800B3E8: .4byte 0xFFF003FF
_0800B3EC: .4byte 0x03003F82
_0800B3F0: .4byte 0x03003F85
