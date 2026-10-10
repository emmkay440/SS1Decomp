	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804CA84
sub_0804CA84: @ 0x0804CA84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
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
	ldr r1, _0804CAF0 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _0804CAF4 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CAF8 @ =0x00001F03
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CAFC @ =0x00001E02
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #8
	bl SetBgCnt
	cmp r7, #4
	bls _0804CAE4
	b _0804CBF6
_0804CAE4:
	lsls r0, r7, #2
	ldr r1, _0804CB00 @ =_0804CB04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CAF0: .4byte 0xFFFF0000
_0804CAF4: .4byte 0x00001C08
_0804CAF8: .4byte 0x00001F03
_0804CAFC: .4byte 0x00001E02
_0804CB00: .4byte _0804CB04
_0804CB04: @ jump table
	.4byte _0804CB38 @ case 0
	.4byte _0804CB58 @ case 1
	.4byte _0804CB76 @ case 2
	.4byte _0804CBA8 @ case 3
	.4byte _0804CB18 @ case 4
_0804CB18:
	ldr r0, _0804CB34 @ =0x00001F83
	add r1, sp, #8
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0x4d
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	b _0804CB6C
	.align 2, 0
_0804CB34: .4byte 0x00001F83
_0804CB38:
	ldr r0, _0804CB54 @ =0x00001F83
	add r1, sp, #8
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0x2d
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	b _0804CB6C
	.align 2, 0
_0804CB54: .4byte 0x00001F83
_0804CB58:
	movs r0, #0x27
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x26
	bl GetDataRecord
	mov r8, r0
	movs r0, #0xe0
	lsls r0, r0, #5
_0804CB6C:
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _0804CBF6
_0804CB76:
	movs r0, #0x28
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x29
	bl GetDataRecord
	mov r8, r0
	movs r0, #0xe0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _0804CBA4 @ =0x00005D02
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #8
	bl SetBgCnt
	b _0804CBF6
	.align 2, 0
_0804CBA4: .4byte 0x00005D02
_0804CBA8:
	movs r0, #0x2b
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x2c
	bl GetDataRecord
	mov r8, r0
	movs r0, #0x2a
	bl GetDataRecord
	mov sb, r0
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _0804CC2C @ =0x00009403
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CC30 @ =0x00009202
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CC34 @ =0x00009001
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #8
	bl SetBgCnt
_0804CBF6:
	cmp r7, #3
	beq _0804CC68
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CC38 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	cmp r7, #1
	bne _0804CC40
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CC3C @ =0x0600F000
	adds r2, r4, #0
	b _0804CC54
	.align 2, 0
_0804CC2C: .4byte 0x00009403
_0804CC30: .4byte 0x00009202
_0804CC34: .4byte 0x00009001
_0804CC38: .4byte 0x0600F800
_0804CC3C: .4byte 0x0600F000
_0804CC40:
	cmp r7, #2
	bne _0804CCB8
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CC64 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #5
_0804CC54:
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	b _0804CCB8
	.align 2, 0
_0804CC64: .4byte 0x0600E800
_0804CC68:
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CCDC @ =0x0600A000
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CCE0 @ =0x06009000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	mov r0, sb
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CCE4 @ =0x06008000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
_0804CCB8:
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804CCFE
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804CCEC
	ldr r1, _0804CCE8 @ =0x06004000
	b _0804CCF0
	.align 2, 0
_0804CCDC: .4byte 0x0600A000
_0804CCE0: .4byte 0x06009000
_0804CCE4: .4byte 0x06008000
_0804CCE8: .4byte 0x06004000
_0804CCEC:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804CCF0:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804CD0E
_0804CCFE:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804CD0E:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804CD48 @ =gBgRegsBuffer
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	cmp r7, #1
	beq _0804CD70
	cmp r7, #1
	bgt _0804CD4C
	cmp r7, #0
	beq _0804CD58
	b _0804CF44
	.align 2, 0
_0804CD48: .4byte gBgRegsBuffer
_0804CD4C:
	cmp r7, #2
	beq _0804CE04
	cmp r7, #3
	bne _0804CD56
	b _0804CEA0
_0804CD56:
	b _0804CF44
_0804CD58:
	ldr r0, _0804CD68 @ =gUnknown_030009D8
	ldr r1, _0804CD6C @ =0x00100061
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	b _0804CF44
	.align 2, 0
_0804CD68: .4byte gUnknown_030009D8
_0804CD6C: .4byte 0x00100061
_0804CD70:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	ldr r0, _0804CD98 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804CD8E
	b _0804CF44
_0804CD8E:
	lsls r0, r0, #2
	ldr r1, _0804CD9C @ =_0804CDA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CD98: .4byte gLanguage
_0804CD9C: .4byte _0804CDA0
_0804CDA0: @ jump table
	.4byte _0804CDB4 @ case 0
	.4byte _0804CDC4 @ case 1
	.4byte _0804CDD4 @ case 2
	.4byte _0804CDE4 @ case 3
	.4byte _0804CDF4 @ case 4
_0804CDB4:
	ldr r0, _0804CDBC @ =gUnknown_030009D8
	ldr r1, _0804CDC0 @ =0x0010006F
	b _0804CE8C
	.align 2, 0
_0804CDBC: .4byte gUnknown_030009D8
_0804CDC0: .4byte 0x0010006F
_0804CDC4:
	ldr r0, _0804CDCC @ =gUnknown_030009D8
	ldr r1, _0804CDD0 @ =0x0010007A
	b _0804CE8C
	.align 2, 0
_0804CDCC: .4byte gUnknown_030009D8
_0804CDD0: .4byte 0x0010007A
_0804CDD4:
	ldr r0, _0804CDDC @ =gUnknown_030009D8
	ldr r1, _0804CDE0 @ =0x0010007D
	b _0804CE8C
	.align 2, 0
_0804CDDC: .4byte gUnknown_030009D8
_0804CDE0: .4byte 0x0010007D
_0804CDE4:
	ldr r0, _0804CDEC @ =gUnknown_030009D8
	ldr r1, _0804CDF0 @ =0x0010008B
	b _0804CE8C
	.align 2, 0
_0804CDEC: .4byte gUnknown_030009D8
_0804CDF0: .4byte 0x0010008B
_0804CDF4:
	ldr r0, _0804CDFC @ =gUnknown_030009D8
	ldr r1, _0804CE00 @ =0x00100092
	b _0804CE8C
	.align 2, 0
_0804CDFC: .4byte gUnknown_030009D8
_0804CE00: .4byte 0x00100092
_0804CE04:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #4
	bl sub_080044E4
	ldr r0, _0804CE2C @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804CE22
	b _0804CF44
_0804CE22:
	lsls r0, r0, #2
	ldr r1, _0804CE30 @ =_0804CE34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CE2C: .4byte gLanguage
_0804CE30: .4byte _0804CE34
_0804CE34: @ jump table
	.4byte _0804CE48 @ case 0
	.4byte _0804CE58 @ case 1
	.4byte _0804CE68 @ case 2
	.4byte _0804CE78 @ case 3
	.4byte _0804CE88 @ case 4
_0804CE48:
	ldr r0, _0804CE50 @ =gUnknown_030009D8
	ldr r1, _0804CE54 @ =0x0010006D
	b _0804CE8C
	.align 2, 0
_0804CE50: .4byte gUnknown_030009D8
_0804CE54: .4byte 0x0010006D
_0804CE58:
	ldr r0, _0804CE60 @ =gUnknown_030009D8
	ldr r1, _0804CE64 @ =0x00100079
	b _0804CE8C
	.align 2, 0
_0804CE60: .4byte gUnknown_030009D8
_0804CE64: .4byte 0x00100079
_0804CE68:
	ldr r0, _0804CE70 @ =gUnknown_030009D8
	ldr r1, _0804CE74 @ =0x0010008F
	b _0804CE8C
	.align 2, 0
_0804CE70: .4byte gUnknown_030009D8
_0804CE74: .4byte 0x0010008F
_0804CE78:
	ldr r0, _0804CE80 @ =gUnknown_030009D8
	ldr r1, _0804CE84 @ =0x0010008A
	b _0804CE8C
	.align 2, 0
_0804CE80: .4byte gUnknown_030009D8
_0804CE84: .4byte 0x0010008A
_0804CE88:
	ldr r0, _0804CE98 @ =gUnknown_030009D8
	ldr r1, _0804CE9C @ =0x00100091
_0804CE8C:
	movs r2, #0
	movs r3, #2
	bl sub_08026ADC
	b _0804CF44
	.align 2, 0
_0804CE98: .4byte gUnknown_030009D8
_0804CE9C: .4byte 0x00100091
_0804CEA0:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0xc
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	ldr r0, _0804CEC8 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _0804CF38
	lsls r0, r0, #2
	ldr r1, _0804CECC @ =_0804CED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CEC8: .4byte gLanguage
_0804CECC: .4byte _0804CED0
_0804CED0: @ jump table
	.4byte _0804CEE4 @ case 0
	.4byte _0804CEF4 @ case 1
	.4byte _0804CF04 @ case 2
	.4byte _0804CF14 @ case 3
	.4byte _0804CF2C @ case 4
_0804CEE4:
	ldr r0, _0804CEEC @ =0x03000A10
	ldr r1, _0804CEF0 @ =0x0010006E
	b _0804CF18
	.align 2, 0
_0804CEEC: .4byte 0x03000A10
_0804CEF0: .4byte 0x0010006E
_0804CEF4:
	ldr r0, _0804CEFC @ =0x03000A10
	ldr r1, _0804CF00 @ =0x00100078
	b _0804CF18
	.align 2, 0
_0804CEFC: .4byte 0x03000A10
_0804CF00: .4byte 0x00100078
_0804CF04:
	ldr r0, _0804CF0C @ =0x03000A10
	ldr r1, _0804CF10 @ =0x0010007C
	b _0804CF18
	.align 2, 0
_0804CF0C: .4byte 0x03000A10
_0804CF10: .4byte 0x0010007C
_0804CF14:
	ldr r0, _0804CF24 @ =0x03000A10
	ldr r1, _0804CF28 @ =0x00100089
_0804CF18:
	movs r2, #0
	movs r3, #6
	bl sub_08026ADC
	b _0804CF38
	.align 2, 0
_0804CF24: .4byte 0x03000A10
_0804CF28: .4byte 0x00100089
_0804CF2C:
	ldr r0, _0804CF54 @ =0x03000A10
	ldr r1, _0804CF58 @ =0x00100090
	movs r2, #0
	movs r3, #6
	bl sub_08026ADC
_0804CF38:
	ldr r0, _0804CF5C @ =gUnknown_030009D8
	ldr r1, _0804CF60 @ =0x00100060
	movs r2, #0
	movs r3, #6
	bl sub_08026ADC
_0804CF44:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CF54: .4byte 0x03000A10
_0804CF58: .4byte 0x00100090
_0804CF5C: .4byte gUnknown_030009D8
_0804CF60: .4byte 0x00100060

	thumb_func_start sub_0804CF64
sub_0804CF64: @ 0x0804CF64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #1
	bl sub_0800F348
	movs r0, #0xa2
	bl PlaySE
	movs r6, #0
	ldr r4, _0804CFB8 @ =gKeysNew
_0804CF94:
	lsls r1, r6, #0x16
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
	bl sub_0800277C
	cmp r0, #0
	beq _0804CFBC
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804CFC8
	bl _0804E192
	.align 2, 0
_0804CFB8: .4byte gKeysNew
_0804CFBC:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804CFCA
_0804CFC8:
	movs r1, #0
_0804CFCA:
	cmp r1, #0
	beq _0804CFD2
	bl _0804E192
_0804CFD2:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x7f
	ble _0804CF94
	movs r6, #0
	ldr r4, _0804CFF8 @ =gKeysNew
_0804CFE0:
	bl sub_0800277C
	cmp r0, #0
	beq _0804CFFC
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D008
	bl _0804E192
	.align 2, 0
_0804CFF8: .4byte gKeysNew
_0804CFFC:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D00A
_0804D008:
	movs r1, #0
_0804D00A:
	cmp r1, #0
	beq _0804D012
	bl _0804E192
_0804D012:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x77
	ble _0804CFE0
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D048 @ =0x000900EA
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D04C @ =gKeysNew
_0804D034:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D050
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D05C
	b _0804D5A6
	.align 2, 0
_0804D048: .4byte 0x000900EA
_0804D04C: .4byte gKeysNew
_0804D050:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D05E
_0804D05C:
	movs r1, #0
_0804D05E:
	cmp r1, #0
	beq _0804D064
	b _0804D5A6
_0804D064:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D034
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D0A0 @ =0x000900EB
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D0A4 @ =gKeysNew
_0804D08A:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D0A8
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D0B4
	b _0804D5A6
	.align 2, 0
_0804D0A0: .4byte 0x000900EB
_0804D0A4: .4byte gKeysNew
_0804D0A8:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D0B6
_0804D0B4:
	movs r1, #0
_0804D0B6:
	cmp r1, #0
	beq _0804D0BC
	b _0804D5A6
_0804D0BC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D08A
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D0F8 @ =0x000900EC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D0FC @ =gKeysNew
_0804D0E2:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D100
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D10C
	b _0804D5A6
	.align 2, 0
_0804D0F8: .4byte 0x000900EC
_0804D0FC: .4byte gKeysNew
_0804D100:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D10E
_0804D10C:
	movs r1, #0
_0804D10E:
	cmp r1, #0
	beq _0804D114
	b _0804D5A6
_0804D114:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D0E2
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D150 @ =0x000900ED
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D154 @ =gKeysNew
_0804D13A:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D158
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D164
	b _0804D5A6
	.align 2, 0
_0804D150: .4byte 0x000900ED
_0804D154: .4byte gKeysNew
_0804D158:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D166
_0804D164:
	movs r1, #0
_0804D166:
	cmp r1, #0
	beq _0804D16C
	b _0804D5A6
_0804D16C:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D13A
	movs r6, #0
	movs r7, #1
	ldr r5, _0804D1A4 @ =gKeysNew
_0804D180:
	adds r0, r6, #0
	ands r0, r7
	cmp r0, #0
	bne _0804D18C
	bl sub_0804E80C
_0804D18C:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D1A8
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D1B4
	bl _0804E192
	.align 2, 0
_0804D1A4: .4byte gKeysNew
_0804D1A8:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804D1B6
_0804D1B4:
	movs r4, #0
_0804D1B6:
	cmp r4, #0
	beq _0804D1BE
	bl _0804E192
_0804D1BE:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3b
	ble _0804D180
	movs r0, #0
	bl sub_0804CA84
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	add r0, sp, #8
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r1, #0x79
	mov r8, r1
	movs r2, #0x1d
	mov sl, r2
	movs r6, #0
	adds r7, r0, #0
	ldr r4, _0804D218 @ =gKeysNew
_0804D1F4:
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
	bl sub_0800277C
	cmp r0, #0
	beq _0804D21C
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D228
	bl _0804E192
	.align 2, 0
_0804D218: .4byte gKeysNew
_0804D21C:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D22A
_0804D228:
	movs r1, #0
_0804D22A:
	cmp r1, #0
	beq _0804D232
	bl _0804E192
_0804D232:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3f
	ble _0804D1F4
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D28C @ =0x000900EE
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D290 @ =gUnknown_030009D8
	movs r6, #1
	ldr r4, _0804D294 @ =gKeysNew
_0804D258:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D298
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D2A4
	b _0804D5A6
	.align 2, 0
_0804D28C: .4byte 0x000900EE
_0804D290: .4byte gUnknown_030009D8
_0804D294: .4byte gKeysNew
_0804D298:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D2A6
_0804D2A4:
	movs r1, #0
_0804D2A6:
	cmp r1, #0
	beq _0804D2AC
	b _0804D5A6
_0804D2AC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D258
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D30C @ =0x000900EF
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D310 @ =gUnknown_030009D8
	movs r6, #1
	ldr r4, _0804D314 @ =gKeysNew
_0804D2D6:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D318
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D324
	b _0804D5A6
	.align 2, 0
_0804D30C: .4byte 0x000900EF
_0804D310: .4byte gUnknown_030009D8
_0804D314: .4byte gKeysNew
_0804D318:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D326
_0804D324:
	movs r1, #0
_0804D326:
	cmp r1, #0
	beq _0804D32C
	b _0804D5A6
_0804D32C:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D2D6
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D38C @ =0x000900F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D390 @ =gUnknown_030009D8
	movs r6, #1
	ldr r4, _0804D394 @ =gKeysNew
_0804D356:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D398
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D3A4
	b _0804D5A6
	.align 2, 0
_0804D38C: .4byte 0x000900F0
_0804D390: .4byte gUnknown_030009D8
_0804D394: .4byte gKeysNew
_0804D398:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D3A6
_0804D3A4:
	movs r1, #0
_0804D3A6:
	cmp r1, #0
	beq _0804D3AC
	b _0804D5A6
_0804D3AC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D356
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D40C @ =0x000900F1
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D410 @ =gUnknown_030009D8
	movs r6, #1
	ldr r4, _0804D414 @ =gKeysNew
_0804D3D6:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D418
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D424
	b _0804D5A6
	.align 2, 0
_0804D40C: .4byte 0x000900F1
_0804D410: .4byte gUnknown_030009D8
_0804D414: .4byte gKeysNew
_0804D418:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D426
_0804D424:
	movs r1, #0
_0804D426:
	cmp r1, #0
	beq _0804D42C
	b _0804D5A6
_0804D42C:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D3D6
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D48C @ =0x000900F2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D490 @ =gUnknown_030009D8
	movs r6, #1
	ldr r4, _0804D494 @ =gKeysNew
_0804D456:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D498
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D4A4
	b _0804D5A6
	.align 2, 0
_0804D48C: .4byte 0x000900F2
_0804D490: .4byte gUnknown_030009D8
_0804D494: .4byte gKeysNew
_0804D498:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D4A6
_0804D4A4:
	movs r1, #0
_0804D4A6:
	cmp r1, #0
	beq _0804D4AC
	b _0804D5A6
_0804D4AC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D456
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D50C @ =0x000900F3
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D510 @ =gUnknown_030009D8
	movs r6, #1
	ldr r4, _0804D514 @ =gKeysNew
_0804D4D6:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D518
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D524
	b _0804D5A6
	.align 2, 0
_0804D50C: .4byte 0x000900F3
_0804D510: .4byte gUnknown_030009D8
_0804D514: .4byte gKeysNew
_0804D518:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D526
_0804D524:
	movs r1, #0
_0804D526:
	cmp r1, #0
	bne _0804D5A6
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D4D6
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D588 @ =0x000900F4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D58C @ =gUnknown_030009D8
	movs r6, #1
	ldr r4, _0804D590 @ =gKeysNew
_0804D554:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D594
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D5A0
	b _0804D5A6
	.align 2, 0
_0804D588: .4byte 0x000900F4
_0804D58C: .4byte gUnknown_030009D8
_0804D590: .4byte gKeysNew
_0804D594:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D5A2
_0804D5A0:
	movs r1, #0
_0804D5A2:
	cmp r1, #0
	beq _0804D5B0
_0804D5A6:
	ldr r0, [sp, #0xc]
	bl sub_080228D4
	bl _0804E192
_0804D5B0:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D554
	movs r3, #0
	str r3, [sp, #0xc]
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #4
	bl FadeOutAllMusicPlayers
	movs r6, #0
	ldr r4, _0804D5F8 @ =gKeysNew
_0804D5D4:
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804D5E0
	bl sub_0804E80C
_0804D5E0:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D5FC
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D608
	bl _0804E1AE
	.align 2, 0
_0804D5F8: .4byte gKeysNew
_0804D5FC:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D60A
_0804D608:
	movs r1, #0
_0804D60A:
	cmp r1, #0
	beq _0804D612
	bl _0804E1AE
_0804D612:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x77
	ble _0804D5D4
	movs r6, #0
	ldr r5, _0804D638 @ =gKeysNew
_0804D620:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D63C
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D648
	bl _0804E192
	.align 2, 0
_0804D638: .4byte gKeysNew
_0804D63C:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804D64A
_0804D648:
	movs r4, #0
_0804D64A:
	cmp r4, #0
	beq _0804D652
	bl _0804E192
_0804D652:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3b
	ble _0804D620
	movs r0, #1
	bl sub_0804CA84
	ldr r0, _0804D6B8 @ =gUnknown_03000A48
	str r4, [r0]
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #0xa3
	bl PlaySE
	movs r6, #0
	ldr r5, _0804D6BC @ =gBgRegsBuffer
	ldr r4, _0804D6C0 @ =gKeysNew
_0804D682:
	lsls r1, r6, #0x16
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E2E8
	ldr r1, _0804D6B8 @ =gUnknown_03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	strh r1, [r5, #8]
	lsrs r0, r0, #2
	strh r0, [r5, #0xc]
	bl sub_0800277C
	cmp r0, #0
	beq _0804D6C4
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D6D0
	bl _0804E192
	.align 2, 0
_0804D6B8: .4byte gUnknown_03000A48
_0804D6BC: .4byte gBgRegsBuffer
_0804D6C0: .4byte gKeysNew
_0804D6C4:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D6D2
_0804D6D0:
	movs r1, #0
_0804D6D2:
	cmp r1, #0
	beq _0804D6DA
	bl _0804E192
_0804D6DA:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x7f
	ble _0804D682
	movs r0, #0xf0
	mov r8, r0
	movs r0, #3
	movs r1, #0x11
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x11
	bl sub_0804ED04
	movs r6, #0
_0804D6FA:
	cmp r6, #0x3f
	bgt _0804D70A
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D70A:
	mov r0, r8
	subs r0, #0x10
	cmp r6, r0
	bge _0804D738
	subs r0, #0x10
	cmp r6, r0
	ble _0804D728
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D728:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804D764 @ =gUnknown_030009D8
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #2
	bl sub_08026B90
_0804D738:
	ldr r1, _0804D768 @ =gUnknown_03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0804D76C @ =gBgRegsBuffer
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	bl sub_0800277C
	cmp r0, #0
	beq _0804D774
	ldr r0, _0804D770 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D782
	bl _0804E192
	.align 2, 0
_0804D764: .4byte gUnknown_030009D8
_0804D768: .4byte gUnknown_03000A48
_0804D76C: .4byte gBgRegsBuffer
_0804D770: .4byte gKeysNew
_0804D774:
	ldr r0, _0804D7C8 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D784
_0804D782:
	movs r1, #0
_0804D784:
	cmp r1, #0
	beq _0804D78C
	bl _0804E192
_0804D78C:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804D6FA
	movs r6, #0
	ldr r3, _0804D7CC @ =gBgRegsBuffer
	mov r8, r3
	ldr r7, _0804D7C8 @ =gKeysNew
	ldr r5, _0804D7D0 @ =gUnknown_03000A48
_0804D7A0:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	mov r2, r8
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	bl sub_0800277C
	cmp r0, #0
	beq _0804D7D4
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D7E0
	bl _0804E192
	.align 2, 0
_0804D7C8: .4byte gKeysNew
_0804D7CC: .4byte gBgRegsBuffer
_0804D7D0: .4byte gUnknown_03000A48
_0804D7D4:
	ldrh r1, [r7]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804D7E2
_0804D7E0:
	movs r4, #0
_0804D7E2:
	cmp r4, #0
	beq _0804D7EA
	bl _0804E192
_0804D7EA:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x59
	ble _0804D7A0
	movs r3, #0xff
	lsls r3, r3, #1
	mov r8, r3
	ldr r0, _0804D93C @ =gUnknown_03000A4C
	str r4, [r0]
	ldr r5, _0804D940 @ =gUnknown_03000A50
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r5]
	ldr r4, _0804D944 @ =gUnknown_03000A54
	movs r0, #0x5a
	str r0, [r4]
	movs r7, #0
	ldr r0, _0804D948 @ =gUnknown_03000A44
	strh r7, [r0]
	ldr r0, _0804D94C @ =gUnknown_03000A46
	strh r7, [r0]
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	movs r6, #0
	mov sb, r5
	ldr r5, _0804D950 @ =gUnknown_030009D8
	mov sl, r4
_0804D82E:
	adds r0, r6, #0
	subs r0, #0x11
	cmp r0, #0xe
	bhi _0804D842
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D842:
	mov r4, r8
	subs r4, #0x10
	cmp r6, r4
	bge _0804D862
	mov r0, r8
	subs r0, #0x20
	cmp r6, r0
	ble _0804D862
	mov r0, r8
	subs r1, r0, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D862:
	cmp r6, #0x10
	ble _0804D87A
	cmp r6, r4
	bge _0804D87A
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804D950 @ =gUnknown_030009D8
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #3
	bl sub_08026B90
_0804D87A:
	cmp r6, #0x5a
	ble _0804D89C
	mov r1, r8
	asrs r0, r1, #1
	cmp r6, r0
	bge _0804D89C
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804D890
	adds r7, #1
_0804D890:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804D89C:
	cmp r6, r8
	bge _0804D8C0
	mov r2, r8
	asrs r0, r2, #1
	adds r0, #0x3c
	cmp r6, r0
	ble _0804D8C0
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804D8B4
	subs r7, #1
_0804D8B4:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804D8C0:
	ldr r1, _0804D954 @ =gUnknown_03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0804D958 @ =gBgRegsBuffer
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	movs r3, #0
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	cmp r6, #0x3c
	ble _0804D924
	ldr r1, _0804D93C @ =gUnknown_03000A4C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bne _0804D8E8
	str r3, [r1]
_0804D8E8:
	mov r0, sb
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	mov r0, sl
	ldr r2, [r0]
	str r3, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08026B90
	ldr r4, _0804D948 @ =gUnknown_03000A44
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	ldr r3, _0804D94C @ =gUnknown_03000A46
	bl sub_08026C40
	mov r2, sb
	ldr r1, [r2]
	mov r3, sl
	ldr r2, [r3]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
_0804D924:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D960
	ldr r0, _0804D95C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D96E
	bl _0804E192
	.align 2, 0
_0804D93C: .4byte gUnknown_03000A4C
_0804D940: .4byte gUnknown_03000A50
_0804D944: .4byte gUnknown_03000A54
_0804D948: .4byte gUnknown_03000A44
_0804D94C: .4byte gUnknown_03000A46
_0804D950: .4byte gUnknown_030009D8
_0804D954: .4byte gUnknown_03000A48
_0804D958: .4byte gBgRegsBuffer
_0804D95C: .4byte gKeysNew
_0804D960:
	ldr r0, _0804DA1C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D970
_0804D96E:
	movs r1, #0
_0804D970:
	cmp r1, #0
	beq _0804D978
	bl _0804E192
_0804D978:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	bge _0804D984
	b _0804D82E
_0804D984:
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r6, #0
	mov sl, r6
	ldr r7, _0804DA20 @ =gUnknown_03000A50
	ldr r5, _0804DA24 @ =gUnknown_030009D8
	ldr r0, _0804DA28 @ =gUnknown_03000A54
	mov sb, r0
	ldr r1, _0804DA2C @ =gUnknown_03000A44
	mov r8, r1
_0804D99C:
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E6C0
	ldr r1, _0804DA30 @ =gUnknown_03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0804DA34 @ =gBgRegsBuffer
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	ldr r1, _0804DA38 @ =gUnknown_03000A4C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bne _0804D9CC
	mov r2, sl
	str r2, [r1]
_0804D9CC:
	ldr r1, [r7]
	subs r1, #1
	str r1, [r7]
	mov r3, sb
	ldr r2, [r3]
	mov r0, sl
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08026B90
	movs r4, #1
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	mov r2, r8
	ldr r3, _0804DA3C @ =gUnknown_03000A46
	bl sub_08026C40
	ldr r1, [r7]
	mov r3, sb
	ldr r2, [r3]
	mov r3, r8
	ldrh r0, [r3]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804DA40
	ldr r0, _0804DA1C @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DA4E
	b _0804E192
	.align 2, 0
_0804DA1C: .4byte gKeysNew
_0804DA20: .4byte gUnknown_03000A50
_0804DA24: .4byte gUnknown_030009D8
_0804DA28: .4byte gUnknown_03000A54
_0804DA2C: .4byte gUnknown_03000A44
_0804DA30: .4byte gUnknown_03000A48
_0804DA34: .4byte gBgRegsBuffer
_0804DA38: .4byte gUnknown_03000A4C
_0804DA3C: .4byte gUnknown_03000A46
_0804DA40:
	ldr r0, _0804DAA4 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DA50
_0804DA4E:
	movs r1, #0
_0804DA50:
	cmp r1, #0
	beq _0804DA56
	b _0804E192
_0804DA56:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3f
	ble _0804D99C
	movs r0, #2
	bl sub_0804CA84
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r6, #0
	ldr r7, _0804DAA4 @ =gKeysNew
	ldr r5, _0804DAA8 @ =gBgRegsBuffer
_0804DA7C:
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	bl sub_0800277C
	cmp r0, #0
	beq _0804DAAC
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DAB8
	b _0804E192
	.align 2, 0
_0804DAA4: .4byte gKeysNew
_0804DAA8: .4byte gBgRegsBuffer
_0804DAAC:
	ldrh r1, [r7]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804DABA
_0804DAB8:
	movs r4, #0
_0804DABA:
	cmp r4, #0
	beq _0804DAC0
	b _0804E192
_0804DAC0:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3f
	ble _0804DA7C
	movs r0, #0xd2
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _0804DB50 @ =gUnknown_03000A48
	str r4, [r0]
	movs r0, #3
	movs r1, #0x11
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x11
	bl sub_0804ED04
	movs r6, #0
_0804DAE6:
	adds r0, r6, #0
	subs r0, #0x11
	cmp r0, #0xe
	bhi _0804DAFA
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804DAFA:
	mov r4, r8
	subs r4, #0x10
	cmp r6, r4
	bge _0804DB1A
	mov r0, r8
	subs r0, #0x20
	cmp r6, r0
	ble _0804DB1A
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804DB1A:
	cmp r6, #0x10
	ble _0804DB32
	cmp r6, r4
	bge _0804DB32
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804DB54 @ =gUnknown_030009D8
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
_0804DB32:
	ldr r0, _0804DB58 @ =gBgRegsBuffer
	ldrh r1, [r0, #8]
	subs r1, #1
	strh r1, [r0, #8]
	bl sub_0800277C
	cmp r0, #0
	beq _0804DB60
	ldr r0, _0804DB5C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DB6E
	b _0804E192
	.align 2, 0
_0804DB50: .4byte gUnknown_03000A48
_0804DB54: .4byte gUnknown_030009D8
_0804DB58: .4byte gBgRegsBuffer
_0804DB5C: .4byte gKeysNew
_0804DB60:
	ldr r0, _0804DBAC @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DB70
_0804DB6E:
	movs r1, #0
_0804DB70:
	cmp r1, #0
	beq _0804DB76
	b _0804E192
_0804DB76:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804DAE6
	movs r6, #0
	ldr r5, _0804DBAC @ =gKeysNew
	ldr r4, _0804DBB0 @ =gBgRegsBuffer
_0804DB86:
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804DB92
	bl sub_0804E80C
_0804DB92:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	bl sub_0800277C
	cmp r0, #0
	beq _0804DBB4
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DBC0
	b _0804E192
	.align 2, 0
_0804DBAC: .4byte gKeysNew
_0804DBB0: .4byte gBgRegsBuffer
_0804DBB4:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DBC2
_0804DBC0:
	movs r1, #0
_0804DBC2:
	cmp r1, #0
	beq _0804DBC8
	b _0804E192
_0804DBC8:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x7f
	ble _0804DB86
	movs r6, #0
	ldr r5, _0804DBEC @ =gKeysNew
_0804DBD6:
	bl sub_0800277C
	cmp r0, #0
	beq _0804DBF0
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DBFC
	b _0804E192
	.align 2, 0
_0804DBEC: .4byte gKeysNew
_0804DBF0:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804DBFE
_0804DBFC:
	movs r4, #0
_0804DBFE:
	cmp r4, #0
	beq _0804DC04
	b _0804E192
_0804DC04:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x25
	ble _0804DBD6
	movs r0, #3
	bl sub_0804CA84
	ldr r0, _0804DC8C @ =gBgRegsBuffer
	movs r3, #0xb0
	lsls r3, r3, #1
	strh r3, [r0, #6]
	adds r1, r3, #0
	strh r1, [r0, #0xa]
	adds r2, r3, #0
	strh r2, [r0, #0xe]
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	ldr r1, _0804DC90 @ =gUnknown_03000A44
	strh r4, [r1]
	ldr r0, _0804DC94 @ =gUnknown_03000A46
	strh r4, [r0]
	movs r6, #0
	ldr r3, _0804DC98 @ =gUnknown_030009D8
	mov r8, r3
	adds r5, r1, #0
	movs r7, #1
	ldr r4, _0804DC9C @ =gKeysNew
_0804DC48:
	lsls r1, r6, #0x15
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
	str r7, [sp]
	mov r0, r8
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0804DC94 @ =gUnknown_03000A46
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DCA0
	ldrh r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DCAC
	b _0804E192
	.align 2, 0
_0804DC8C: .4byte gBgRegsBuffer
_0804DC90: .4byte gUnknown_03000A44
_0804DC94: .4byte gUnknown_03000A46
_0804DC98: .4byte gUnknown_030009D8
_0804DC9C: .4byte gKeysNew
_0804DCA0:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DCAE
_0804DCAC:
	movs r1, #0
_0804DCAE:
	cmp r1, #0
	beq _0804DCB4
	b _0804E192
_0804DCB4:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0xff
	ble _0804DC48
	movs r0, #0xd2
	lsls r0, r0, #1
	mov r8, r0
	movs r0, #3
	movs r1, #0x15
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x15
	bl sub_0804ED04
	movs r6, #0
	ldr r7, _0804DD4C @ =gUnknown_030009D8
	ldr r5, _0804DD50 @ =gUnknown_03000A44
_0804DCDA:
	cmp r6, #0x1f
	bgt _0804DCEA
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DCEA:
	mov r0, r8
	subs r0, #0x20
	cmp r6, r0
	ble _0804DD02
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DD02:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804DD54 @ =0x03000A10
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	movs r4, #1
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0804DD58 @ =gUnknown_03000A46
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DD60
	ldr r0, _0804DD5C @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DD6E
	b _0804E192
	.align 2, 0
_0804DD4C: .4byte gUnknown_030009D8
_0804DD50: .4byte gUnknown_03000A44
_0804DD54: .4byte 0x03000A10
_0804DD58: .4byte gUnknown_03000A46
_0804DD5C: .4byte gKeysNew
_0804DD60:
	ldr r0, _0804DDC4 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DD70
_0804DD6E:
	movs r1, #0
_0804DD70:
	cmp r1, #0
	beq _0804DD76
	b _0804E192
_0804DD76:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804DCDA
	movs r6, #0
	ldr r3, _0804DDC8 @ =gUnknown_030009D8
	mov r8, r3
	ldr r5, _0804DDCC @ =gUnknown_03000A44
	movs r7, #1
	ldr r4, _0804DDC4 @ =gKeysNew
_0804DD8C:
	str r7, [sp]
	mov r0, r8
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0804DDD0 @ =gUnknown_03000A46
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DDD4
	ldrh r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DDE0
	b _0804E192
	.align 2, 0
_0804DDC4: .4byte gKeysNew
_0804DDC8: .4byte gUnknown_030009D8
_0804DDCC: .4byte gUnknown_03000A44
_0804DDD0: .4byte gUnknown_03000A46
_0804DDD4:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DDE2
_0804DDE0:
	movs r1, #0
_0804DDE2:
	cmp r1, #0
	beq _0804DDE8
	b _0804E192
_0804DDE8:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3b
	ble _0804DD8C
	movs r0, #0xd2
	lsls r0, r0, #1
	mov r8, r0
	movs r0, #3
	movs r1, #0x11
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x11
	bl sub_0804ED04
	movs r0, #3
	movs r1, #0x12
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x12
	bl sub_0804ED04
	movs r0, #3
	movs r1, #0x13
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x13
	bl sub_0804ED04
	movs r0, #3
	movs r1, #0x14
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x14
	bl sub_0804ED04
	movs r6, #0
	movs r7, #0
_0804DE3C:
	cmp r6, #0x1f
	bgt _0804DE4C
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DE4C:
	mov r0, r8
	subs r0, #0x10
	cmp r6, r0
	bge _0804DE78
	subs r0, #0x10
	cmp r6, r0
	ble _0804DE6A
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DE6A:
	str r7, [sp]
	ldr r0, _0804DF50 @ =0x03000A10
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #1
	bl sub_08026B90
_0804DE78:
	ldr r5, _0804DF54 @ =gUnknown_030009D8
	ldr r4, _0804DF58 @ =gUnknown_03000A44
	movs r3, #1
	mov sb, r3
	str r3, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	ldr r3, _0804DF5C @ =gUnknown_03000A46
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	adds r0, r6, #0
	subs r0, #0x3d
	cmp r0, #0x3e
	bhi _0804DEB6
	adds r1, r6, #0
	subs r1, #0x3c
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x14
	bl sub_0804E5A4
_0804DEB6:
	adds r0, r6, #0
	subs r0, #0x79
	cmp r0, #0x3e
	bhi _0804DECE
	adds r1, r6, #0
	subs r1, #0x78
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x13
	bl sub_0804E5A4
_0804DECE:
	adds r0, r6, #0
	subs r0, #0xb5
	cmp r0, #0x3e
	bhi _0804DEE6
	adds r1, r6, #0
	subs r1, #0xb4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x12
	bl sub_0804E5A4
_0804DEE6:
	adds r0, r6, #0
	subs r0, #0xf1
	cmp r0, #0x3e
	bhi _0804DEFE
	adds r1, r6, #0
	subs r1, #0xf0
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804DEFE:
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0x1e
	movs r2, #0x78
	movs r3, #4
	bl sub_08026B90
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0xd2
	movs r2, #0x78
	movs r3, #3
	bl sub_08026B90
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0x5a
	movs r2, #0x9b
	movs r3, #1
	bl sub_08026B90
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0x96
	movs r2, #0x99
	movs r3, #2
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DF64
	ldr r0, _0804DF60 @ =gKeysNew
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0804DF72
	b _0804E192
	.align 2, 0
_0804DF50: .4byte 0x03000A10
_0804DF54: .4byte gUnknown_030009D8
_0804DF58: .4byte gUnknown_03000A44
_0804DF5C: .4byte gUnknown_03000A46
_0804DF60: .4byte gKeysNew
_0804DF64:
	ldr r0, _0804E008 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DF74
_0804DF72:
	movs r1, #0
_0804DF74:
	cmp r1, #0
	beq _0804DF7A
	b _0804E192
_0804DF7A:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	bge _0804DF86
	b _0804DE3C
_0804DF86:
	movs r0, #0xb4
	mov r8, r0
	movs r6, #0
	ldr r4, _0804E00C @ =gUnknown_030009D8
	ldr r7, _0804E010 @ =gUnknown_03000A44
	movs r1, #1
	mov sb, r1
	movs r5, #0
_0804DF96:
	mov r2, sb
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	ldr r3, _0804E014 @ =gUnknown_03000A46
	bl sub_08026C40
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #0x78
	movs r3, #4
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0xd2
	movs r2, #0x78
	movs r3, #3
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x5a
	movs r2, #0x9b
	movs r3, #1
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x96
	movs r2, #0x99
	movs r3, #2
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804E018
	ldr r0, _0804E008 @ =gKeysNew
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0804E026
	b _0804E192
	.align 2, 0
_0804E008: .4byte gKeysNew
_0804E00C: .4byte gUnknown_030009D8
_0804E010: .4byte gUnknown_03000A44
_0804E014: .4byte gUnknown_03000A46
_0804E018:
	ldr r0, _0804E11C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804E028
_0804E026:
	movs r1, #0
_0804E028:
	cmp r1, #0
	beq _0804E02E
	b _0804E192
_0804E02E:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804DF96
	movs r3, #0xb4
	lsls r3, r3, #1
	mov r8, r3
	movs r6, #0
	ldr r0, _0804E120 @ =gUnknown_030009D8
	mov sb, r0
	ldr r1, _0804E124 @ =0xFFFFF9AC
	str r1, [sp, #0x10]
_0804E048:
	mov sl, r6
	movs r2, #0xb0
	lsls r2, r2, #1
	subs r0, r2, r6
	cmp r0, #0
	bge _0804E056
	mov sl, r2
_0804E056:
	movs r0, #1
	str r0, [sp]
	mov r0, sb
	movs r1, #0
	ldr r2, _0804E128 @ =gUnknown_03000A44
	ldr r3, _0804E12C @ =gUnknown_03000A46
	bl sub_08026C40
	mov r2, sl
	adds r2, #0x1e
	ldr r3, _0804E128 @ =gUnknown_03000A44
	ldrh r0, [r3]
	str r0, [sp]
	mov r0, sb
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	mov r4, sl
	adds r4, #0x78
	movs r5, #0
	str r5, [sp]
	mov r0, sb
	movs r1, #0x1e
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	str r5, [sp]
	mov r0, sb
	movs r1, #0xd2
	adds r2, r4, #0
	movs r3, #3
	bl sub_08026B90
	mov r2, sl
	adds r2, #0x9b
	str r5, [sp]
	mov r0, sb
	movs r1, #0x5a
	movs r3, #1
	bl sub_08026B90
	mov r2, sl
	adds r2, #0x99
	str r5, [sp]
	mov r0, sb
	movs r1, #0x96
	movs r3, #2
	bl sub_08026B90
	ldr r4, _0804E130 @ =gBgRegsBuffer
	movs r1, #0xb0
	lsls r1, r1, #1
	mov r2, sl
	subs r0, r1, r2
	movs r7, #0
	strh r0, [r4, #6]
	bl sub_0800ED74
	cmp r6, #0xf0
	bne _0804E0D8
	ldr r0, _0804E134 @ =0x0000FFC4
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
_0804E0D8:
	movs r1, #0x87
	lsls r1, r1, #1
	cmp r6, r1
	bne _0804E0E6
	ldr r0, _0804E138 @ =0x0000FFD8
	strh r0, [r4, #0xc]
	strh r5, [r4, #0xe]
_0804E0E6:
	cmp r6, #0xf0
	ble _0804E104
	movs r3, #0xb0
	lsls r3, r3, #1
	cmp sl, r3
	beq _0804E104
	adds r0, r6, #0
	subs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	cmp r6, r1
	ble _0804E104
	mov r0, sp
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0xe]
_0804E104:
	bl sub_0800277C
	cmp r0, #0
	beq _0804E13C
	ldr r0, _0804E11C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E14A
	b _0804E192
	.align 2, 0
_0804E11C: .4byte gKeysNew
_0804E120: .4byte gUnknown_030009D8
_0804E124: .4byte 0xFFFFF9AC
_0804E128: .4byte gUnknown_03000A44
_0804E12C: .4byte gUnknown_03000A46
_0804E130: .4byte gBgRegsBuffer
_0804E134: .4byte 0x0000FFC4
_0804E138: .4byte 0x0000FFD8
_0804E13C:
	ldr r0, _0804E170 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804E14C
_0804E14A:
	movs r1, #0
_0804E14C:
	cmp r1, #0
	bne _0804E192
	bl WaitFrame
	ldr r1, [sp, #0x10]
	adds r1, #6
	str r1, [sp, #0x10]
	adds r6, #1
	cmp r6, r8
	bge _0804E162
	b _0804E048
_0804E162:
	movs r0, #8
	bl FadeOutAllMusicPlayers
	movs r0, #0x78
	bl sub_0800F244
	b _0804E17C
	.align 2, 0
_0804E170: .4byte gKeysNew
_0804E174:
	bl sub_0800ED74
	bl WaitFrame
_0804E17C:
	bl sub_0800F298
	cmp r0, #0
	beq _0804E174
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	b _0804E1D2
_0804E192:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0804E1A8
	b _0804E19E
_0804E19A:
	bl WaitFrame
_0804E19E:
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804E19A
_0804E1A8:
	movs r0, #2
	bl FadeOutAllMusicPlayers
_0804E1AE:
	movs r0, #0x1e
	bl sub_0800F244
	b _0804E1BE
_0804E1B6:
	bl sub_0800ED74
	bl WaitFrame
_0804E1BE:
	bl sub_0800F298
	cmp r0, #0
	beq _0804E1B6
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
_0804E1D2:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
