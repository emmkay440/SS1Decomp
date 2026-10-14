	.include "asm/macros.inc"

	.syntax unified
	.text

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
	ldr r0, _0804EE2C @ =gLanguage
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
_0804EE2C: .4byte gLanguage
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
	ldr r0, _0804EFF0 @ =gLanguage
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
_0804EFF0: .4byte gLanguage
_0804EFF4: .4byte _0804EFF8
_0804EFF8: @ jump table
	.4byte _0804F00C @ case 0
	.4byte _0804F01C @ case 1
	.4byte _0804F02C @ case 2
	.4byte _0804F03C @ case 3
	.4byte _0804F04C @ case 4
_0804F00C:
	ldr r0, _0804F014 @ =gUnknown_03001258
	ldr r1, _0804F018 @ =0x00100070
	b _0804F050
	.align 2, 0
_0804F014: .4byte gUnknown_03001258
_0804F018: .4byte 0x00100070
_0804F01C:
	ldr r0, _0804F024 @ =gUnknown_03001258
	ldr r1, _0804F028 @ =0x00100076
	b _0804F050
	.align 2, 0
_0804F024: .4byte gUnknown_03001258
_0804F028: .4byte 0x00100076
_0804F02C:
	ldr r0, _0804F034 @ =gUnknown_03001258
	ldr r1, _0804F038 @ =0x0010007E
	b _0804F050
	.align 2, 0
_0804F034: .4byte gUnknown_03001258
_0804F038: .4byte 0x0010007E
_0804F03C:
	ldr r0, _0804F044 @ =gUnknown_03001258
	ldr r1, _0804F048 @ =0x00100086
	b _0804F050
	.align 2, 0
_0804F044: .4byte gUnknown_03001258
_0804F048: .4byte 0x00100086
_0804F04C:
	ldr r0, _0804F05C @ =gUnknown_03001258
	ldr r1, _0804F060 @ =0x00100085
_0804F050:
	movs r2, #0
	movs r3, #2
	bl sub_08026ADC
	b _0804F0DA
	.align 2, 0
_0804F05C: .4byte gUnknown_03001258
_0804F060: .4byte 0x00100085
_0804F064:
	ldr r4, _0804F084 @ =0x03001290
	movs r6, #3
_0804F068:
	bl GetPlayerColorScheme
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
