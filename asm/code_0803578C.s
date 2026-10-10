	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803578C
sub_0803578C: @ 0x0803578C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	adds r7, r0, #0
	ldr r0, _0803593C @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r4, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0x98]
	cmp r4, r0
	bhs _080357C4
	adds r2, r0, #0
_080357B2:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _080357BC
	ldr r0, [r1, #4]
	adds r6, r1, r0
_080357BC:
	adds r4, #1
	adds r1, #8
	cmp r4, r2
	blo _080357B2
_080357C4:
	ldrh r0, [r6, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x54]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r3, #0
	mov r8, r3
	movs r0, #0xff
	strh r0, [r7, #2]
	ldrh r0, [r6]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r6, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _08035940 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	mov r4, r8
	strh r4, [r7, #8]
	strh r4, [r7, #0xa]
	strh r4, [r7, #0xc]
	strh r4, [r7, #0x28]
	mov r6, r8
	str r6, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x54]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0x8c]
	mov r0, r8
	strh r0, [r6]
	adds r1, r7, #0
	adds r1, #0x4a
	str r1, [sp, #0x90]
	strh r0, [r1]
	movs r2, #0x4c
	adds r2, r2, r7
	mov sb, r2
	strh r0, [r2]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r3, #0x72
	adds r3, r3, r7
	mov sl, r3
	ldrh r4, [r3]
	ldr r6, _08035944 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r0, sl
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x6e
	str r1, [sp, #0x94]
	ldrh r4, [r1]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	ldr r2, [sp, #0x94]
	strh r4, [r2]
	mov r3, sl
	ldrh r0, [r3]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	ldr r4, [sp, #0x54]
	ldr r0, [r4, #0x28]
	ldrh r1, [r4, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r0, _08035948 @ =gUnknown_0300680C
	mov r5, r8
	str r5, [r0]
	ldr r1, [r4, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x5c]
	adds r0, #0x15
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x5c]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x5c]
	adds r0, #6
	strb r0, [r1, #0x1d]
	bl sub_08033DF4
	bl sub_08007544
	ldr r6, [sp, #0x8c]
	str r6, [sp, #0x9c]
	ldr r1, [sp, #0x90]
	str r1, [sp, #0xa0]
	mov r2, sb
	str r2, [sp, #0xa4]
	adds r3, r7, #0
	adds r3, #0x4e
	str r3, [sp, #0xa8]
	cmp r0, #0
	bne _08035932
	bl sub_080075AC
	cmp r0, #0
	bne _08035932
	ldr r5, _0803594C @ =gPlayers
	movs r4, #0xd4
_080358FE:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _080358FE
	bl GetMultiplayerId
	ldr r5, _0803594C @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #4
	strh r1, [r0, #0xa]
_08035932:
	ldr r0, [sp, #0x98]
	movs r1, #0x29
	bl sub_0802934C
	b _08035954
	.align 2, 0
_0803593C: .4byte gUnknown_030063D8
_08035940: .4byte gMapLayer_03003910
_08035944: .4byte 0x080FB740
_08035948: .4byte gUnknown_0300680C
_0803594C: .4byte gPlayers
_08035950:
	bl WaitFrame
_08035954:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _08035950
	movs r4, #0
	str r4, [sp, #0x68]
	ldr r5, _08035990 @ =0x0000FFFF
	str r5, [sp, #0x6c]
	movs r6, #1
	str r6, [sp, #0x70]
	movs r0, #0
	str r0, [sp, #0x64]
	str r0, [r7, #0x54]
	movs r1, #0xfa
	lsls r1, r1, #2
	str r1, [sp, #0x60]

_08035972:
	bl sub_080271D0
	cmp r0, #0
	beq _0803597C
	b _08036020
_0803597C:
	ldr r2, [sp, #0x64]
	cmp r2, #0x14
	bls _08035984
	b _08035BD8
_08035984:
	lsls r0, r2, #2
	ldr r1, _08035994 @ =_08035998
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035990: .4byte 0x0000FFFF
_08035994: .4byte _08035998
_08035998: @ jump table
	.4byte _080359EC @ case 0
	.4byte _080359FC @ case 1
	.4byte _08035A2C @ case 2
	.4byte _08035A6C @ case 3
	.4byte _08035BD8 @ case 4
	.4byte _08035BD8 @ case 5
	.4byte _08035BD8 @ case 6
	.4byte _08035A9C @ case 7
	.4byte _08035AB0 @ case 8
	.4byte _08035BD8 @ case 9
	.4byte _08035BCC @ case 10
	.4byte _08035BD8 @ case 11
	.4byte _08035BD8 @ case 12
	.4byte _08035BD8 @ case 13
	.4byte _08035BD8 @ case 14
	.4byte _08035BD8 @ case 15
	.4byte _08035BD8 @ case 16
	.4byte _08035BD8 @ case 17
	.4byte _08035BD8 @ case 18
	.4byte _08035BD8 @ case 19
	.4byte _08035B0C @ case 20
_080359EC:
	movs r3, #1
	str r3, [sp, #0x64]
	movs r0, #0
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	movs r4, #0
	str r4, [sp, #0x88]
	b _08035BD8
_080359FC:
	add r0, sp, #0x4c
	movs r2, #0xa0
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0x88]
	bl Lerp1024
	add r0, sp, #0x50
	movs r2, #0x5a
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0x88]
	bl Lerp1024
	ldr r5, [sp, #0x88]
	adds r5, #0x10
	str r5, [sp, #0x88]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r5, r0
	bgt _08035A28
	b _08035BD8
_08035A28:
	movs r6, #2
	b _08035BD6
_08035A2C:
	bl sub_08007510
	cmp r0, #0
	bne _08035A5A
	bl sub_08007544
	cmp r0, #0
	bne _08035A5A
	bl sub_080075AC
	cmp r0, #0
	bne _08035A5A
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08035A68 @ =0x00090077
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
_08035A5A:
	ldr r0, [sp, #0x64]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	b _08035BD8
	.align 2, 0
_08035A68: .4byte 0x00090077
_08035A6C:
	bl sub_08007510
	cmp r0, #0
	bne _08035A96
	bl sub_08007544
	cmp r0, #0
	bne _08035A96
	bl sub_080075AC
	cmp r0, #0
	bne _08035A96
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	cmp r0, #0
	bne _08035A90
	b _08035BD8
_08035A90:
	movs r0, #7
	str r0, [sp, #0x64]
	b _08035BD8
_08035A96:
	movs r1, #7
	str r1, [sp, #0x64]
	b _08035BD8
_08035A9C:
	movs r2, #8
	str r2, [sp, #0x64]
	movs r0, #0xa0
	rsbs r0, r0, #0
	str r0, [sp, #0x4c]
	adds r0, #0x46
	str r0, [sp, #0x50]
	movs r3, #0
	str r3, [sp, #0x88]
	b _08035BD8
_08035AB0:
	add r0, sp, #0x4c
	movs r1, #0xa0
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x88]
	bl Lerp1024
	add r0, sp, #0x50
	movs r1, #0x5a
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x88]
	bl Lerp1024
	ldr r4, [sp, #0x88]
	adds r4, #0x10
	str r4, [sp, #0x88]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bgt _08035ADC
	b _08035BD8
_08035ADC:
	bl GetMultiplayerId
	ldr r2, _08035B04 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08035B08 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r4, #0
_08035AF2:
	bl sub_08036D28
	adds r4, #1
	cmp r4, #3
	bls _08035AF2
	movs r5, #0xb
	str r5, [sp, #0x64]
	b _08035BD8
	.align 2, 0
_08035B04: .4byte gPlayers
_08035B08: .4byte 0x0000FFFE
_08035B0C:
	bl sub_08016FA0
	cmp r0, #0
	bne _08035B6C
	bl sub_080271D0
	cmp r0, #0
	bne _08035B6C
	bl sub_08007544
	cmp r0, #0
	bne _08035B6C
	bl sub_08007510
	cmp r0, #0
	bne _08035B6C
	bl sub_080075AC
	cmp r0, #0
	bne _08035B6C
	bl sub_080076E0
	adds r4, r0, #0
	cmp r4, #0
	bne _08035B6C
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	cmp r0, #0
	beq _08035BD8
	ldr r6, [sp, #0xa8]
	ldrh r0, [r6]
	cmp r0, #0
	beq _08035BD8
	movs r0, #0x21
	ldr r1, [sp, #0x9c]
	strh r0, [r1]
	ldr r2, [sp, #0xa0]
	strh r4, [r2]
	ldr r3, [sp, #0xa4]
	strh r4, [r3]
	movs r4, #0
	str r4, [sp, #0x70]
	movs r5, #0xa
	str r5, [sp, #0x64]
	bl sub_080077AC
	b _08035BAC
_08035B6C:
	movs r0, #0
	movs r1, #0x21
	ldr r6, [sp, #0x9c]
	strh r1, [r6]
	ldr r1, [sp, #0xa0]
	strh r0, [r1]
	ldr r2, [sp, #0xa4]
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0x70]
	movs r4, #0xa
	str r4, [sp, #0x64]
	bl sub_08016FA0
	cmp r0, #0
	bne _08035BD8
	bl sub_08007544
	cmp r0, #0
	bne _08035BD8
	bl sub_08007510
	cmp r0, #0
	bne _08035BD8
	bl sub_080075AC
	cmp r0, #0
	bne _08035BD8
	bl sub_080076E0
	cmp r0, #0
	bne _08035BD8
_08035BAC:
	bl GetMultiplayerId
	ldr r2, _08035BC4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08035BC8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	b _08035BD8
	.align 2, 0
_08035BC4: .4byte gPlayers
_08035BC8: .4byte 0x0000FFFE
_08035BCC:
	ldr r5, [sp, #0xa8]
	ldrh r0, [r5]
	cmp r0, #0
	beq _08035BD8
	movs r6, #0x15
_08035BD6:
	str r6, [sp, #0x64]
_08035BD8:
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #6]
	strh r4, [r7, #4]
	ldr r0, [sp, #0x64]
	cmp r0, #0xb
	beq _08035BE8
	b _08035D3A
_08035BE8:
	ldr r0, [sp, #0x60]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	ldr r0, [r7, #0x54]
	cmp r0, #1
	beq _08035C1C
	cmp r0, #1
	blo _08035C06
	cmp r0, #2
	beq _08035CBC
	cmp r0, #3
	beq _08035CF4
	b _08035D3A
_08035C06:
	adds r0, r7, #0
	movs r1, #0x3c
	bl sub_0800C8F8
	str r0, [sp, #0x74]
	cmp r0, #3
	bhi _08035C18
	movs r0, #1
	b _08035CEE
_08035C18:
	movs r0, #2
	b _08035CEE
_08035C1C:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08035C58 @ =gPlayers
	movs r2, #0xd4
	ldr r6, [sp, #0x74]
	muls r2, r6, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r4, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08035C60
	ldr r0, _08035C5C @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _08035C6E
	.align 2, 0
_08035C58: .4byte gPlayers
_08035C5C: .4byte 0x0000FFBF
_08035C60:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08035C70
	ldr r0, _08035C88 @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_08035C6E:
	strh r0, [r7, #4]
_08035C70:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035C90
	ldr r0, _08035C8C @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _08035C9E
	.align 2, 0
_08035C88: .4byte 0x0000FF7F
_08035C8C: .4byte 0x0000FFDF
_08035C90:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035CA0
	ldr r0, _08035CB8 @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_08035C9E:
	strh r0, [r7, #4]
_08035CA0:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bls _08035D3A
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x37
	str r0, [r7, #0x5c]
	b _08035D3A
	.align 2, 0
_08035CB8: .4byte 0x0000FFEF
_08035CBC:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	str r0, [sp, #0x74]
	cmp r0, #3
	bhi _08035CEC
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _08035D3A
	ldr r1, [sp, #0x54]
	ldrh r0, [r1, #8]
	ldr r2, [sp, #0x60]
	cmp r0, r2
	bhs _08035D3A
	movs r3, #0
	str r3, [sp, #0x60]
	movs r0, #1
	strh r0, [r7, #6]
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x3c
	str r0, [r7, #0x5c]
	b _08035D3A
_08035CEC:
	movs r0, #3
_08035CEE:
	str r0, [r7, #0x54]
	str r4, [r7, #0x5c]
	b _08035D3A
_08035CF4:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	str r0, [sp, #0x74]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08035D4C @ =gPlayers
	movs r2, #0xd4
	ldr r5, [sp, #0x74]
	muls r2, r5, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _08035D3A
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bls _08035D3A
	str r4, [r7, #0x54]
_08035D3A:
	ldrh r0, [r7, #0xa]
	cmp r0, #1
	beq _08035D9C
	cmp r0, #1
	bgt _08035D50
	cmp r0, #0
	beq _08035D5E
	b _08036020
	.align 2, 0
_08035D4C: .4byte gPlayers
_08035D50:
	cmp r0, #6
	bne _08035D56
	b _08035F1C
_08035D56:
	cmp r0, #7
	bne _08035D5C
	b _08035FDA
_08035D5C:
	b _08036020
_08035D5E:
	ldrh r0, [r7, #8]
	ldr r6, [sp, #0x9c]
	strh r0, [r6]
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035D8A
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _08035D78
	subs r0, #1
	b _08035D7A
_08035D78:
	ldrh r0, [r7, #8]
_08035D7A:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0xa4]
	strh r1, [r2]
	ldr r3, [sp, #0xa0]
	strh r1, [r3]
_08035D8A:
	ldrh r1, [r7, #4]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _08035D96
	b _08036020
_08035D96:
	movs r0, #1
	strh r0, [r7, #0xa]
	b _08036020
_08035D9C:
	movs r4, #0
	str r4, [sp, #0x68]
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08035DB0
	movs r5, #5
	str r5, [sp, #0x68]
	b _08035DBC
_08035DB0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08035DBC
	movs r6, #1
	str r6, [sp, #0x68]
_08035DBC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035DE2
	ldr r0, [sp, #0x68]
	cmp r0, #5
	bne _08035DD0
	movs r1, #4
	str r1, [sp, #0x68]
	b _08035E06
_08035DD0:
	ldr r2, [sp, #0x68]
	cmp r2, #1
	bne _08035DDC
	movs r3, #2
	str r3, [sp, #0x68]
	b _08035E06
_08035DDC:
	movs r4, #3
	str r4, [sp, #0x68]
	b _08035E06
_08035DE2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035E06
	ldr r5, [sp, #0x68]
	cmp r5, #5
	bne _08035DF6
	movs r6, #6
	str r6, [sp, #0x68]
	b _08035E06
_08035DF6:
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne _08035E02
	movs r1, #8
	str r1, [sp, #0x68]
	b _08035E06
_08035E02:
	movs r2, #7
	str r2, [sp, #0x68]
_08035E06:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035E30
	ldr r3, [sp, #0x68]
	cmp r3, #0
	beq _08035E1C
	adds r0, r3, #0
	subs r0, #1
	b _08035E1E
_08035E1C:
	ldrh r0, [r7, #8]
_08035E1E:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r4, [sp, #0xa4]
	strh r1, [r4]
	ldr r5, [sp, #0xa0]
	strh r1, [r5]
	b _08035F06
_08035E30:
	ldr r6, [sp, #0x68]
	cmp r6, #0
	bne _08035E3A
	strh r6, [r7, #0xa]
	b _08035F06
_08035E3A:
	ldr r0, [sp, #0x68]
	subs r0, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	str r5, [r7, #0x18]
	ldr r6, [r7, #0x14]
	str r6, [r7, #0x1c]
	ldr r1, _08035F10 @ =0x080FB5D0
	mov sb, r1
	movs r2, #8
	ldrsh r0, [r7, r2]
	lsls r3, r0, #3
	adds r2, r3, r1
	ldr r4, _08035F14 @ =0x080FB5AC
	mov sl, r4
	movs r1, #0x68
	adds r1, r1, r7
	mov r8, r1
	ldrh r1, [r1]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r2, _08035F18 @ =0x080FB5D4
	adds r3, r3, r2
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08035F06
	subs r0, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r3, r0, #3
	mov r4, sb
	adds r2, r3, r4
	mov r4, r8
	ldrh r1, [r4]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r1, _08035F18 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08035F06
	movs r2, #8
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, sb
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #3
	ldr r5, _08035F18 @ =0x080FB5D4
	adds r1, r1, r5
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_08035F06:
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r6, [sp, #0x9c]
	strh r0, [r6]
	b _08036020
	.align 2, 0
_08035F10: .4byte 0x080FB5D0
_08035F14: .4byte 0x080FB5AC
_08035F18: .4byte 0x080FB5D4
_08035F1C:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1]
	ldr r2, [sp, #0x80]
	cmp r0, r2
	bne _08035F54
	ldr r3, [sp, #0xa8]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08035F42
	ldr r4, [sp, #0x84]
	cmp r4, #6
	bne _08035F42
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r5, #0
	str r5, [sp, #0x60]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
_08035F42:
	ldr r6, [sp, #0x9c]
	ldrh r0, [r6]
	ldr r1, [sp, #0x80]
	cmp r0, r1
	bne _08035F54
	ldr r2, [sp, #0x84]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	beq _0803601C
_08035F54:
	ldrh r4, [r7, #0xa]
	str r4, [sp, #0x84]
	ldrh r0, [r7, #8]
	adds r0, #0x18
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08035FA6
	bl sub_08007544
	cmp r0, #0
	bne _08035F82
	bl sub_080075AC
	cmp r0, #0
	bne _08035F82
	movs r0, #0x93
	bl PlaySE
_08035F82:
	bl sub_080076A8
	cmp r0, #0
	beq _08035F92
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1d
	b _08035F98
_08035F92:
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1b
_08035F98:
	strh r0, [r1]
	ldrh r0, [r7]
	movs r1, #1
	ldr r2, [sp, #0x74]
	bl sub_0802EEA8
	b _08035FD4
_08035FA6:
	bl sub_08007544
	cmp r0, #0
	bne _08035FBC
	bl sub_080075AC
	cmp r0, #0
	bne _08035FBC
	movs r0, #0x94
	bl PlaySE
_08035FBC:
	adds r0, r7, #0
	adds r0, #0x88
	movs r1, #0x23
	strh r1, [r0]
	ldrh r0, [r7]
	movs r1, #2
	ldr r2, [sp, #0x74]
	bl sub_0802EEA8
	movs r0, #0x77
	bl PlaySE
_08035FD4:
	ldr r6, [sp, #0x9c]
	ldrh r6, [r6]
	b _0803601A
_08035FDA:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1]
	ldr r2, [sp, #0x80]
	cmp r0, r2
	bne _0803600C
	ldr r3, [sp, #0xa8]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08035FFA
	ldr r4, [sp, #0x84]
	cmp r4, #7
	bne _08035FFA
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r5, #0
	str r5, [sp, #0x60]
_08035FFA:
	ldr r6, [sp, #0x9c]
	ldrh r0, [r6]
	ldr r1, [sp, #0x80]
	cmp r0, r1
	bne _0803600C
	ldr r2, [sp, #0x84]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	beq _0803601C
_0803600C:
	ldrh r4, [r7, #0xa]
	str r4, [sp, #0x84]
	ldrh r0, [r7, #8]
	adds r0, #0x10
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	ldrh r6, [r5]
_0803601A:
	str r6, [sp, #0x80]
_0803601C:
	movs r0, #0
	str r0, [sp, #0x70]
_08036020:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _080360EA
	movs r1, #0x14
	str r1, [sp, #0x6c]
	ldrh r2, [r7, #0x28]
	str r2, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x7c]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080360E4
	bl sub_08016FA0
	cmp r0, #0
	bne _0803609C
	bl sub_080271D0
	cmp r0, #0
	bne _0803609C
	bl sub_08007544
	cmp r0, #0
	bne _0803609C
	bl sub_08007510
	cmp r0, #0
	bne _0803609C
	bl sub_080075AC
	cmp r0, #0
	bne _0803609C
	bl sub_080076E0
	cmp r0, #0
	bne _0803609C
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080360D8 @ =0x00090078
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	bl GetMultiplayerId
	ldr r2, _080360DC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007798
_0803609C:
	movs r4, #0x14
	str r4, [sp, #0x64]
	movs r1, #0
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r0, #0x20
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	ldr r6, [sp, #0xa0]
	strh r1, [r6]
	ldr r0, [sp, #0xa4]
	strh r1, [r0]
	str r1, [sp, #0x70]
	ldr r0, _080360E0 @ =gUnknown_0300680C
	movs r4, #1
	str r4, [r0]
	movs r0, #2
	bl FadeOutBGM
	ldrh r3, [r7, #2]
	ldr r2, [sp, #0x70]
	str r2, [sp]
	str r4, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	b _080360EA
	.align 2, 0
_080360D8: .4byte 0x00090078
_080360DC: .4byte gPlayers
_080360E0: .4byte gUnknown_0300680C
_080360E4:
	add r3, sp, #0x7c
	ldrh r3, [r3]
	strh r3, [r7, #0xa]
_080360EA:
	ldr r0, [sp, #0x6c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x6c]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803615C
	ldr r4, [sp, #0x78]
	cmp r4, #0
	bne _08036110
	ldr r5, _0803610C @ =0x0000FFFF
	str r5, [sp, #0x6c]
	b _08036160
	.align 2, 0
_0803610C: .4byte 0x0000FFFF
_08036110:
	bl sub_08007544
	cmp r0, #0
	bne _0803613E
	bl sub_08007510
	cmp r0, #0
	bne _0803613E
	bl sub_08007604
	cmp r0, #0
	bne _0803613E
	bl sub_080075AC
	cmp r0, #0
	bne _0803613E
	ldr r6, [sp, #0x7c]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x78]
	bl sub_0800EA74
_0803613E:
	movs r0, #2
	ldr r1, [sp, #0x6c]
	ands r0, r1
	cmp r0, #0
	beq _08036160
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #0x10
	ldr r3, _08036158 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	b _08036160
	.align 2, 0
_08036158: .4byte 0xFFFF0000
_0803615C:
	ldr r4, _08036484 @ =0x0000FFFF
	str r4, [sp, #0x6c]
_08036160:
	ldr r5, [sp, #0x9c]
	ldrh r1, [r5]
	ldr r6, [sp, #0x70]
	str r6, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	bl sub_08026C40
	ldr r1, [sp, #0xa8]
	strh r0, [r1]
	bl sub_08007510
	cmp r0, #0
	bne _08036200
	bl sub_080271D0
	cmp r0, #0
	bne _08036200
	bl sub_08007544
	cmp r0, #0
	bne _08036200
	bl sub_080075AC
	mov r8, r0
	cmp r0, #0
	bne _08036200
	ldr r0, [sp, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x4c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08005F60
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	movs r2, #0x30
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r5, #0
	ldrsh r1, [r6, r5]
	ldr r6, [sp, #0x9c]
	ldrh r2, [r6]
	ldr r5, [sp, #0xa0]
	ldrh r3, [r5]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08036200:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08036236
	bl sub_080074CC
	cmp r0, #0
	bne _08036236
	ldr r0, _08036488 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08036236
	bl sub_08007578
	cmp r0, #0
	bne _08036236
	ldr r6, [sp, #0x64]
	cmp r6, #0x15
	beq _08036236
	bl _08035972
_08036236:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	ldr r1, _0803648C @ =gActiveEnemyMask
	ldrh r0, [r7]
	lsls r4, r0
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	ldr r0, [sp, #0x5c]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _080362B8
	ldr r4, _08036490 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080362B8
	ldr r0, _08036494 @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _080362B8
	bl sub_08007544
	cmp r0, #0
	bne _080362B8
	bl sub_08007510
	cmp r0, #0
	bne _080362B8
	bl sub_08007604
	cmp r0, #0
	bne _080362B8
	bl sub_080075AC
	cmp r0, #0
	bne _080362B8
	bl sub_080076E0
	cmp r0, #0
	bne _080362B8
	ldr r0, _08036498 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_080362B8:
	bl sub_08007750
	cmp r0, #0
	beq _080362C2
	b _080363CC
_080362C2:
	bl sub_080074CC
	cmp r0, #0
	beq _080362CC
	b _080363CC
_080362CC:
	ldr r4, _08036488 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080363CC
	bl sub_08007578
	cmp r0, #0
	bne _080363CC
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _080363CC
	ldr r4, _0803649C @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _08036320
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036320
	ldr r3, _080364A0 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08036320
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08036320:
	ldr r4, _08036490 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x54]
	bl CalcExpGain
	str r0, [sp, #0x70]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x70]
	bl AddExp
	adds r5, r0, #0
	movs r4, #0x13
	ldr r6, _08036484 @ =0x0000FFFF
_0803634E:
	ldr r0, [r7, #0x14]
	ldr r1, _080364A4 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _08036382
	bl sub_08007510
	cmp r0, #0
	bne _08036382
	bl sub_080075AC
	cmp r0, #0
	bne _08036382
	ldr r0, _08036498 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08036382
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	bl sub_08024320
_08036382:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bne _0803634E
	cmp r5, #0
	beq _080363CC
	bl sub_08007544
	cmp r0, #0
	bne _080363AA
	bl sub_080075AC
	cmp r0, #0
	bne _080363AA
	movs r0, #0x25
	bl PlaySE
_080363AA:
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _08036490 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_080363CC:
	bl sub_08007750
	cmp r0, #0
	bne _0803646A
	bl sub_080074CC
	cmp r0, #0
	bne _0803646A
	ldr r4, _08036488 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803646A
	bl sub_08007578
	cmp r0, #0
	bne _0803646A
	ldr r0, _080364A8 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _080364AC @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08036454
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08036454
	ldr r2, _080364B0 @ =gPlayerStats
	ldr r4, _080364B4 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r5, #0x9d
	lsls r5, r5, #2
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
	ldr r6, _080364B8 @ =0x00000275
	adds r2, r2, r6
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08036454:
	bl sub_0800F53C
	ldr r4, _080364BC @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0803646A
	ldr r0, [r4]
	bl KillThread
_0803646A:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036484: .4byte 0x0000FFFF
_08036488: .4byte gUnknown_030063D8
_0803648C: .4byte gActiveEnemyMask
_08036490: .4byte gPlayers
_08036494: .4byte gUnknown_030064D8
_08036498: .4byte gMapLayer_03003910
_0803649C: .4byte 0x03003D94
_080364A0: .4byte 0x00000157
_080364A4: .4byte 0xFFFFFE00
_080364A8: .4byte 0x00000BB8
_080364AC: .4byte gUnknown_03003D08
_080364B0: .4byte gPlayerStats
_080364B4: .4byte 0x00000272
_080364B8: .4byte 0x00000275
_080364BC: .4byte gUnknownThreadPtr_030063E4

	thumb_func_start sub_080364C0
sub_080364C0: @ 0x080364C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	ldr r0, _080364EC @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	cmp r2, r0
	bhs _08036502
	adds r3, r0, #0
_080364E0:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _080364F0
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _080364FA
	.align 2, 0
_080364EC: .4byte gUnknown_030063D8
_080364F0:
	cmp r0, #3
	bne _080364FA
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x4c]
_080364FA:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _080364E0
_08036502:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x48]
	ldrh r0, [r7]
	adds r0, #0xf0
	movs r4, #0
	strh r0, [r7, #2]
	ldr r0, _08036664 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r1, [sp, #0x4c]
	adds r0, r0, r1
	subs r0, #4
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r0, #4
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	strh r4, [r7, #8]
	strh r4, [r7, #0xa]
	strh r4, [r7, #0xc]
	strh r4, [r7, #0x28]
	str r4, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x48]
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r5, #0x72
	adds r5, r5, r7
	mov sl, r5
	ldrh r0, [r5]
	movs r1, #5
	bl __udivsi3
	strh r0, [r7, #0x38]
	movs r0, #0x74
	adds r0, r0, r7
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	movs r1, #0x48
	adds r1, r1, r7
	mov r8, r1
	movs r0, #0x2a
	strh r0, [r1]
	adds r6, r7, #0
	adds r6, #0x4a
	strh r4, [r6]
	adds r5, r7, #0
	adds r5, #0x4c
	strh r4, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	adds r2, r7, #0
	adds r2, #0x6c
	ldrh r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	ldrh r0, [r7]
	movs r1, #1
	ands r1, r0
	movs r0, #3
	mov r4, sl
	str r4, [sp, #0x84]
	mov r3, sb
	str r3, [sp, #0x88]
	mov r4, r8
	str r4, [sp, #0x74]
	str r6, [sp, #0x78]
	str r5, [sp, #0x7c]
	str r2, [sp, #0x80]
	cmp r1, #0
	beq _080365D0
	movs r0, #1
_080365D0:
	adds r4, r7, #0
	adds r4, #0x86
	strb r0, [r4]
	ldr r5, [sp, #0x48]
	ldr r0, [r5, #0x28]
	ldrh r1, [r5, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r1, [r5, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x50]
	adds r0, #0x15
	ldrh r2, [r5, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x50]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x50]
	adds r0, #6
	strb r0, [r1, #0x1d]
	movs r2, #0
	ldr r0, _08036668 @ =0x0000FFFF
	str r0, [sp, #0x58]
	movs r1, #1
	str r1, [sp, #0x5c]
	str r2, [r7, #0x54]
	movs r2, #0xfa
	lsls r2, r2, #2
	str r2, [sp, #0x54]
	ldr r0, _0803666C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r0, [r0]
	str r4, [sp, #0x8c]
	cmp r0, #0
	beq _08036636
	b _08036CF4
_08036636:
	bl sub_080271D0
	adds r5, r0, #0
	cmp r5, #0
	beq _08036642
	b _08036B78
_08036642:
	ldr r0, [sp, #0x54]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
	movs r6, #0
	strh r5, [r7, #6]
	strh r5, [r7, #4]
	ldr r3, [sp, #0x8c]
	ldrb r4, [r3]
	cmp r4, #1
	beq _08036670
	cmp r4, #3
	bne _08036660
	b _0803677A
_08036660:
	b _0803686E
	.align 2, 0
_08036664: .4byte gMapLayer_03003910
_08036668: .4byte 0x0000FFFF
_0803666C: .4byte gUnknown_030063D8
_08036670:
	ldr r0, [r7, #0x54]
	cmp r0, #1
	beq _0803669E
	cmp r0, #1
	blo _08036686
	cmp r0, #2
	beq _08036740
	cmp r0, #3
	bne _08036684
	b _08036828
_08036684:
	b _0803686E
_08036686:
	adds r0, r7, #0
	movs r1, #0x1e
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _0803669A
	str r4, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _0803686E
_0803669A:
	movs r0, #2
	b _08036774
_0803669E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _080366DC @ =gPlayers
	movs r2, #0xd4
	ldr r4, [sp, #0x60]
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080366E4
	ldr r0, _080366E0 @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _080366F2
	.align 2, 0
_080366DC: .4byte gPlayers
_080366E0: .4byte 0x0000FFBF
_080366E4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080366F4
	ldr r0, _0803670C @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_080366F2:
	strh r0, [r7, #4]
_080366F4:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036714
	ldr r0, _08036710 @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _08036722
	.align 2, 0
_0803670C: .4byte 0x0000FF7F
_08036710: .4byte 0x0000FFDF
_08036714:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08036724
	ldr r0, _0803673C @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_08036722:
	strh r0, [r7, #4]
_08036724:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _08036732
	b _0803686E
_08036732:
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x37
	str r0, [r7, #0x5c]
	b _0803686E
	.align 2, 0
_0803673C: .4byte 0x0000FFEF
_08036740:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _08036772
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	bne _08036756
	b _0803686E
_08036756:
	ldr r5, [sp, #0x80]
	ldrh r0, [r5]
	ldr r1, [sp, #0x54]
	cmp r0, r1
	blo _08036762
	b _0803686E
_08036762:
	movs r2, #0
	str r2, [sp, #0x54]
	strh r4, [r7, #6]
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x3c
	str r0, [r7, #0x5c]
	b _0803686E
_08036772:
	movs r0, #3
_08036774:
	str r0, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _0803686E
_0803677A:
	strh r5, [r7, #6]
	strh r5, [r7, #4]
	ldr r6, [r7, #0x54]
	cmp r6, #1
	beq _080367AA
	cmp r6, #1
	blo _0803678E
	cmp r6, #2
	beq _08036828
	b _0803686E
_0803678E:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _080367A2
	movs r0, #1
	str r0, [r7, #0x54]
	b _08036820
_080367A2:
	movs r0, #2
	str r0, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _08036820
_080367AA:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _08036820
	ldr r1, _08036818 @ =gPlayers
	movs r0, #0xd4
	ldr r2, [sp, #0x60]
	muls r0, r2, r0
	adds r1, #0xd0
	adds r4, r0, r1
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _08036820
	bl sub_08007604
	cmp r0, #0
	bne _08036820
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, [r4]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #0xb4
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803681C
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _0803681C
	ldr r3, [sp, #0x80]
	ldrh r0, [r3]
	ldr r4, [sp, #0x54]
	cmp r0, r4
	bhs _0803681C
	movs r5, #0
	str r5, [sp, #0x54]
	movs r0, #2
	str r0, [r7, #0x54]
	movs r0, #0x3a
	str r0, [r7, #0x5c]
	strh r6, [r7, #6]
	b _0803686E
	.align 2, 0
_08036818: .4byte gPlayers
_0803681C:
	strh r5, [r7, #6]
	b _0803686E
_08036820:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	b _0803686E
_08036828:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08036880 @ =gPlayers
	movs r2, #0xd4
	ldr r4, [sp, #0x60]
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r5, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _0803686E
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bls _0803686E
	str r5, [r7, #0x54]
_0803686E:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bls _08036876
	b _08036B78
_08036876:
	lsls r0, r0, #2
	ldr r1, _08036884 @ =_08036888
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08036880: .4byte gPlayers
_08036884: .4byte _08036888
_08036888: @ jump table
	.4byte _080368AC @ case 0
	.4byte _080368DE @ case 1
	.4byte _08036B78 @ case 2
	.4byte _08036B78 @ case 3
	.4byte _08036B78 @ case 4
	.4byte _08036B78 @ case 5
	.4byte _08036A38 @ case 6
	.4byte _08036AAC @ case 7
	.4byte _08036AF8 @ case 8
_080368AC:
	ldrh r0, [r7, #8]
	adds r0, #0x2a
	movs r2, #0
	ldr r5, [sp, #0x74]
	strh r0, [r5]
	ldrh r1, [r7, #6]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080368CE
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r0, [sp, #0x7c]
	strh r2, [r0]
	ldr r1, [sp, #0x78]
	strh r2, [r1]
_080368CE:
	ldrh r1, [r7, #4]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _080368DA
	b _08036B78
_080368DA:
	strh r3, [r7, #0xa]
	b _08036B78
_080368DE:
	movs r2, #0
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080368EE
	movs r2, #5
	b _080368F8
_080368EE:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080368F8
	movs r2, #1
_080368F8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036914
	cmp r2, #5
	bne _08036908
	movs r2, #4
	b _0803692E
_08036908:
	cmp r2, #1
	bne _08036910
	movs r2, #2
	b _0803692E
_08036910:
	movs r2, #3
	b _0803692E
_08036914:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803692E
	cmp r2, #5
	bne _08036924
	movs r2, #6
	b _0803692E
_08036924:
	cmp r2, #1
	bne _0803692C
	movs r2, #8
	b _0803692E
_0803692C:
	movs r2, #7
_0803692E:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08036954
	cmp r2, #0
	beq _08036940
	subs r0, r2, #1
	b _08036942
_08036940:
	ldrh r0, [r7, #8]
_08036942:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0x7c]
	strh r1, [r2]
	ldr r3, [sp, #0x78]
	strh r1, [r3]
	b _08036A20
_08036954:
	cmp r2, #0
	bne _0803695C
	strh r2, [r7, #0xa]
	b _08036A20
_0803695C:
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	str r5, [r7, #0x18]
	ldr r6, [r7, #0x14]
	str r6, [r7, #0x1c]
	ldr r4, _08036A2C @ =0x080FB5D0
	mov sb, r4
	movs r1, #8
	ldrsh r0, [r7, r1]
	lsls r3, r0, #3
	adds r2, r3, r4
	ldr r4, _08036A30 @ =0x080FB5AC
	mov sl, r4
	movs r1, #0x68
	adds r1, r1, r7
	mov r8, r1
	ldrh r1, [r1]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r2, _08036A34 @ =0x080FB5D4
	adds r3, r3, r2
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08036A20
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r3, r0, #3
	mov r4, sb
	adds r2, r3, r4
	mov r4, r8
	ldrh r1, [r4]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r1, _08036A34 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08036A20
	movs r2, #8
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, sb
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #3
	ldr r5, _08036A34 @ =0x080FB5D4
	adds r1, r1, r5
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_08036A20:
	ldrh r0, [r7, #8]
	adds r0, #0x32
	ldr r1, [sp, #0x74]
	strh r0, [r1]
	b _08036B78
	.align 2, 0
_08036A2C: .4byte 0x080FB5D0
_08036A30: .4byte 0x080FB5AC
_08036A34: .4byte 0x080FB5D4
_08036A38:
	ldr r2, [sp, #0x74]
	ldrh r0, [r2]
	ldr r3, [sp, #0x6c]
	cmp r0, r3
	bne _08036A72
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08036A60
	ldr r4, [sp, #0x70]
	ldrh r5, [r7, #0xa]
	cmp r4, r5
	bne _08036A60
	movs r0, #0
	strh r0, [r7, #0xa]
	str r0, [sp, #0x54]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
_08036A60:
	ldr r1, [sp, #0x74]
	ldrh r0, [r1]
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bne _08036A72
	ldr r3, [sp, #0x70]
	ldrh r4, [r7, #0xa]
	cmp r3, r4
	beq _08036AA6
_08036A72:
	ldrh r5, [r7, #0xa]
	str r5, [sp, #0x70]
	ldrh r0, [r7, #8]
	adds r0, #0x3a
	ldr r1, [sp, #0x74]
	strh r0, [r1]
	bl sub_080076A8
	cmp r0, #0
	beq _08036A8E
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1d
	b _08036A94
_08036A8E:
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1b
_08036A94:
	strh r0, [r1]
	ldrh r0, [r7]
	movs r1, #1
	ldr r2, [sp, #0x60]
	bl sub_0802EEA8
	ldr r2, [sp, #0x74]
	ldrh r2, [r2]
	str r2, [sp, #0x6c]
_08036AA6:
	movs r3, #0
	str r3, [sp, #0x5c]
	b _08036B78
_08036AAC:
	ldr r4, [sp, #0x74]
	ldrh r0, [r4]
	ldr r5, [sp, #0x6c]
	cmp r0, r5
	bne _08036AE2
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08036AD0
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0xa]
	cmp r0, r1
	bne _08036AD0
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r2, #0
	str r2, [sp, #0x54]
_08036AD0:
	ldr r3, [sp, #0x74]
	ldrh r0, [r3]
	ldr r4, [sp, #0x6c]
	cmp r0, r4
	bne _08036AE2
	ldr r5, [sp, #0x70]
	ldrh r0, [r7, #0xa]
	cmp r5, r0
	beq _08036AF2
_08036AE2:
	ldrh r1, [r7, #0xa]
	str r1, [sp, #0x70]
	ldrh r0, [r7, #8]
	adds r0, #0x10
	ldr r2, [sp, #0x74]
	strh r0, [r2]
	ldrh r3, [r2]
	str r3, [sp, #0x6c]
_08036AF2:
	movs r4, #0
	str r4, [sp, #0x5c]
	b _08036B78
_08036AF8:
	ldr r5, [sp, #0x74]
	ldrh r0, [r5]
	ldr r1, [sp, #0x6c]
	cmp r0, r1
	bne _08036B64
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08036B52
	ldr r2, [sp, #0x70]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	bne _08036B52
	ldr r0, _08036BA8 @ =gUnknown_0300680C
	ldr r4, [r0]
	cmp r4, #0
	bne _08036B52
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r5, [sp, #0x4c]
	adds r0, r0, r5
	subs r0, #4
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r5
	subs r0, #4
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r1, [sp, #0x84]
	ldrh r0, [r1]
	movs r1, #5
	bl __udivsi3
	strh r0, [r7, #0x38]
	ldr r2, [sp, #0x88]
	ldrh r0, [r2]
	strh r0, [r7, #0x3a]
	strh r4, [r7, #0xa]
	movs r3, #0
	str r3, [sp, #0x54]
_08036B52:
	ldr r4, [sp, #0x74]
	ldrh r0, [r4]
	ldr r5, [sp, #0x6c]
	cmp r0, r5
	bne _08036B64
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0xa]
	cmp r0, r1
	beq _08036B74
_08036B64:
	ldrh r2, [r7, #0xa]
	str r2, [sp, #0x70]
	ldrh r0, [r7, #8]
	adds r0, #0x22
	ldr r3, [sp, #0x74]
	strh r0, [r3]
	ldrh r4, [r3]
	str r4, [sp, #0x6c]
_08036B74:
	movs r5, #0
	str r5, [sp, #0x5c]
_08036B78:
	ldr r0, _08036BA8 @ =gUnknown_0300680C
	ldr r0, [r0]
	cmp r0, #0
	beq _08036B84
	movs r0, #8
	strh r0, [r7, #0xa]
_08036B84:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _08036BB2
	movs r0, #0x14
	str r0, [sp, #0x58]
	ldrh r1, [r7, #0x28]
	str r1, [sp, #0x64]
	movs r2, #0
	str r2, [sp, #0x68]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08036BAC
	movs r0, #8
	strh r0, [r7, #0xa]
	b _08036BB2
	.align 2, 0
_08036BA8: .4byte gUnknown_0300680C
_08036BAC:
	add r3, sp, #0x68
	ldrh r3, [r3]
	strh r3, [r7, #0xa]
_08036BB2:
	ldr r0, [sp, #0x58]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x58]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08036C24
	ldr r4, [sp, #0x64]
	cmp r4, #0
	bne _08036BD8
	ldr r5, _08036BD4 @ =0x0000FFFF
	str r5, [sp, #0x58]
	b _08036C28
	.align 2, 0
_08036BD4: .4byte 0x0000FFFF
_08036BD8:
	bl sub_08007544
	cmp r0, #0
	bne _08036C06
	bl sub_08007510
	cmp r0, #0
	bne _08036C06
	bl sub_08007604
	cmp r0, #0
	bne _08036C06
	bl sub_080075AC
	cmp r0, #0
	bne _08036C06
	ldr r0, [sp, #0x68]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x64]
	bl sub_0800EA74
_08036C06:
	movs r0, #2
	ldr r1, [sp, #0x58]
	ands r0, r1
	cmp r0, #0
	beq _08036C28
	ldr r2, [sp, #0x68]
	lsls r0, r2, #0x10
	ldr r3, _08036C20 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	b _08036C28
	.align 2, 0
_08036C20: .4byte 0xFFFF0000
_08036C24:
	ldr r4, _08036D1C @ =0x0000FFFF
	str r4, [sp, #0x58]
_08036C28:
	bl sub_08007510
	cmp r0, #0
	bne _08036CBC
	bl sub_08007604
	cmp r0, #0
	bne _08036CBC
	bl sub_08007544
	cmp r0, #0
	bne _08036CBC
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08036CBC
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	str r3, [sp, #0x90]
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	movs r2, #0x30
	str r2, [sp]
	ldr r3, [sp, #0x90]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x74]
	ldrh r1, [r0]
	ldr r2, [sp, #0x5c]
	str r2, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r5, #0
	ldrsh r1, [r6, r5]
	ldr r3, [sp, #0x74]
	ldrh r2, [r3]
	ldr r5, [sp, #0x78]
	ldrh r3, [r5]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08036CBC:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08036CF4
	bl sub_080074CC
	cmp r0, #0
	bne _08036CF4
	ldr r4, _08036D20 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08036CF4
	bl sub_08007578
	cmp r0, #0
	bne _08036CF4
	ldr r0, [r4]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08036CF4
	b _08036636
_08036CF4:
	ldr r2, _08036D24 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x50]
	bl sub_0800CB84
	bl ThreadExit
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036D1C: .4byte 0x0000FFFF
_08036D20: .4byte gUnknown_030063D8
_08036D24: .4byte gActiveEnemyMask
