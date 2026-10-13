	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802199C
sub_0802199C: @ 0x0802199C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp]
	adds r1, r0, #0
	adds r1, #0x30
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08021A18 @ =gBgRegsBuffer
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r0, _08021A1C @ =0x00120002
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	ldr r3, _08021A20 @ =gPaletteBuffer
	ldr r2, _08021A24 @ =gPlayerStats
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r2, r2, r1
	ldrb r1, [r2]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	ldrh r0, [r2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	lsls r0, r0, #0xa
	orrs r1, r0
	movs r2, #0xf1
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	movs r7, #0
	str r7, [sp, #0x14]
_08021A00:
	ldr r0, [sp]
	adds r0, #0x30
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #5
	bls _08021A0E
	b _08021B20
_08021A0E:
	lsls r0, r1, #2
	ldr r1, _08021A28 @ =_08021A2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021A18: .4byte gBgRegsBuffer
_08021A1C: .4byte 0x00120002
_08021A20: .4byte gPaletteBuffer
_08021A24: .4byte gPlayerStats
_08021A28: .4byte _08021A2C
_08021A2C: @ jump table
	.4byte _08021A44 @ case 0
	.4byte _08021A5A @ case 1
	.4byte _08021A74 @ case 2
	.4byte _08021ABC @ case 3
	.4byte _08021AC2 @ case 4
	.4byte _08021B0A @ case 5
_08021A44:
	ldr r2, _08021A70 @ =gUnknown_03006424
	ldr r0, [sp]
	adds r0, #0x31
	movs r1, #1
	ldrb r0, [r0]
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	bl ThreadExit
_08021A5A:
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #2
	strb r0, [r4]
	movs r0, #0
	bl sub_0800EE44
	b _08021B20
	.align 2, 0
_08021A70: .4byte gUnknown_03006424
_08021A74:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0
	bl sub_0800EE44
	ldr r0, [sp, #4]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r2, [sp]
	ldrh r2, [r2, #0x2c]
	cmp r0, r2
	blo _08021B20
	ldr r7, [sp]
	ldrh r7, [r7, #0x2c]
	str r7, [sp, #4]
	ldr r0, [sp, #8]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [sp]
	ldrh r1, [r1, #0x2e]
	cmp r0, r1
	blo _08021B20
	ldr r2, [sp]
	ldrh r2, [r2, #0x2e]
	str r2, [sp, #8]
	movs r0, #3
	strb r0, [r4]
	b _08021B20
_08021ABC:
	bl sub_0800ED74
	b _08021B20
_08021AC2:
	movs r0, #0
	bl sub_0800EE44
	ldr r0, [sp, #8]
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08021AE0
	movs r7, #0
	str r7, [sp, #8]
_08021AE0:
	ldr r0, [sp, #4]
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _08021AF4
	movs r0, #0
	str r0, [sp, #4]
_08021AF4:
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _08021B2C
	ldr r2, [sp, #8]
	cmp r2, #0
	bne _08021B20
	movs r0, #5
	strb r0, [r4]
	movs r7, #0
	str r7, [sp, #0x14]
	b _08021B20
_08021B0A:
	ldr r0, [sp, #0x14]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x14]
	cmp r0, #0x1e
	bls _08021B1A
	movs r0, #0
	strb r0, [r4]
_08021B1A:
	movs r0, #0
	bl sub_0800EE44
_08021B20:
	ldr r2, [sp, #4]
	cmp r2, #0
	bne _08021B2C
	ldr r7, [sp, #8]
	cmp r7, #0
	beq _08021C1E
_08021B2C:
	ldr r0, [sp, #4]
	lsrs r2, r0, #1
	ldr r7, [sp]
	ldrh r1, [r7, #0x28]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	movs r3, #1
	ldr r0, [sp, #4]
	ands r0, r3
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [sp, #8]
	lsrs r2, r0, #1
	ldrh r1, [r7, #0x2a]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, [sp, #8]
	ands r0, r3
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _08021C24 @ =gUnknown_03005DF0
	ldr r0, [sp, #0xc]
	subs r0, #1
	lsls r6, r0, #1
	ldr r3, [sp, #0x10]
	subs r3, #1
	lsls r3, r3, #6
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r1, _08021C28 @ =0x0000F001
	strh r1, [r0]
	adds r2, r5, #1
	lsls r2, r2, #6
	adds r0, r6, r2
	adds r0, r0, r7
	adds r1, #6
	strh r1, [r0]
	mov r0, ip
	adds r0, #1
	lsls r4, r0, #1
	adds r3, r4, r3
	adds r3, r3, r7
	ldr r0, _08021C2C @ =0x0000F003
	strh r0, [r3]
	adds r2, r4, r2
	adds r2, r2, r7
	adds r0, #6
	strh r0, [r2]
	ldr r1, [sp, #0x10]
	cmp r1, r5
	bhi _08021C1E
	str r6, [sp, #0x18]
	str r4, [sp, #0x1c]
_08021BB2:
	lsls r3, r1, #6
	ldr r2, [sp, #0x18]
	adds r0, r2, r3
	ldr r7, _08021C24 @ =gUnknown_03005DF0
	adds r0, r0, r7
	ldr r2, _08021C30 @ =0xFFFFF004
	strh r2, [r0]
	ldr r7, [sp, #0x1c]
	adds r0, r7, r3
	ldr r2, _08021C24 @ =gUnknown_03005DF0
	adds r0, r0, r2
	ldr r7, _08021C34 @ =0xFFFFF006
	strh r7, [r0]
	ldr r2, [sp, #0xc]
	adds r1, #1
	mov sb, r1
	cmp r2, ip
	bhi _08021C14
	ldr r4, _08021C24 @ =gUnknown_03005DF0
	ldr r0, [sp, #0x10]
	subs r0, #1
	lsls r0, r0, #6
	str r0, [sp, #0x20]
	ldr r0, _08021C38 @ =0x0000F005
	mov sl, r0
	adds r6, r3, #0
	adds r0, r5, #1
	lsls r3, r0, #6
	ldr r1, _08021C3C @ =0x0000F008
	mov r8, r1
_08021BEE:
	lsls r1, r2, #1
	ldr r7, [sp, #0x20]
	adds r0, r1, r7
	adds r0, r0, r4
	ldr r7, _08021C40 @ =0xFFFFF002
	strh r7, [r0]
	adds r0, r1, r6
	adds r0, r0, r4
	mov r7, sl
	strh r7, [r0]
	adds r1, r1, r3
	adds r1, r1, r4
	mov r0, r8
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, ip
	bls _08021BEE
_08021C14:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	bls _08021BB2
_08021C1E:
	bl WaitFrame
	b _08021A00
	.align 2, 0
_08021C24: .4byte gUnknown_03005DF0
_08021C28: .4byte 0x0000F001
_08021C2C: .4byte 0x0000F003
_08021C30: .4byte 0xFFFFF004
_08021C34: .4byte 0xFFFFF006
_08021C38: .4byte 0x0000F005
_08021C3C: .4byte 0x0000F008
_08021C40: .4byte 0xFFFFF002
