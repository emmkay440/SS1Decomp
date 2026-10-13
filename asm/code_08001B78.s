	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08001B78
sub_08001B78: @ 0x08001B78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _08001BAC @ =gLinkStatus
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
	ldr r0, _08001BB0 @ =gUnknown_030030C4
	ldr r0, [r0]
	lsrs r0, r0, #7
	ands r0, r3
	b _08001BB6
	.align 2, 0
_08001BAC: .4byte gLinkStatus
_08001BB0: .4byte gUnknown_030030C4
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
	ldr r0, _08001BF0 @ =gUnknown_030030C4
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
_08001BF0: .4byte gUnknown_030030C4
_08001BF4:
	movs r2, #1
_08001BF6:
	adds r7, r2, #0
	movs r2, #1
	cmp r2, r7
	bhs _08001C64
	ldr r0, _08001C14 @ =gLinkStatus
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
_08001C14: .4byte gLinkStatus
_08001C18: .4byte REG_SIOCNT
_08001C1C:
	ldr r1, _08001C20 @ =gUnknown_030030B0
	b _08001C48
	.align 2, 0
_08001C20: .4byte gUnknown_030030B0
_08001C24:
	movs r0, #0
_08001C26:
	movs r1, #0
	adds r5, r2, #1
	lsls r3, r2, #4
	ldr r4, _08001C3C @ =gUnknown_03003100
_08001C2E:
	cmp r2, r1
	bne _08001C40
	cmp r2, r0
	beq _08001C1C
	adds r1, r3, r4
	b _08001C48
	.align 2, 0
_08001C3C: .4byte gUnknown_03003100
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
	ldr r1, _08001C8C @ =gUnknown_030030B0
	b _08001CB0
	.align 2, 0
_08001C8C: .4byte gUnknown_030030B0
_08001C90:
	movs r1, #0
_08001C92:
	movs r0, #0
	ldr r2, _08001CA4 @ =gUnknown_03003100
_08001C96:
	cmp r3, r0
	bne _08001CA8
	cmp r0, r1
	beq _08001C88
	lsls r0, r0, #4
	adds r1, r0, r2
	b _08001CB0
	.align 2, 0
_08001CA4: .4byte gUnknown_03003100
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
	ldr r1, _08001CE4 @ =gUnknown_030030B0
	b _08001D08
	.align 2, 0
_08001CE4: .4byte gUnknown_030030B0
_08001CE8:
	movs r1, #0
_08001CEA:
	movs r0, #0
	ldr r2, _08001CFC @ =gUnknown_03003100
_08001CEE:
	cmp r3, r0
	bne _08001D00
	cmp r0, r1
	beq _08001CE0
	lsls r0, r0, #4
	adds r1, r0, r2
	b _08001D08
	.align 2, 0
_08001CFC: .4byte gUnknown_03003100
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
	ldr r1, _08001D58 @ =gUnknown_030030B0
	b _08001D7C
	.align 2, 0
_08001D58: .4byte gUnknown_030030B0
_08001D5C:
	movs r1, #0
_08001D5E:
	movs r0, #0
	ldr r2, _08001D70 @ =gUnknown_03003100
_08001D62:
	cmp r3, r0
	bne _08001D74
	cmp r0, r1
	beq _08001D54
	lsls r0, r0, #4
	adds r1, r0, r2
	b _08001D7C
	.align 2, 0
_08001D70: .4byte gUnknown_03003100
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
	ldr r1, _08001DA8 @ =gUnknown_030030B0
	b _08001DCC
	.align 2, 0
_08001DA8: .4byte gUnknown_030030B0
_08001DAC:
	movs r1, #0
_08001DAE:
	movs r0, #0
	ldr r2, _08001DC0 @ =gUnknown_03003100
_08001DB2:
	cmp r3, r0
	bne _08001DC4
	cmp r0, r1
	beq _08001DA4
	lsls r0, r0, #4
	adds r1, r0, r2
	b _08001DCC
	.align 2, 0
_08001DC0: .4byte gUnknown_03003100
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
