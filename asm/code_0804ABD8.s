	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804ABD8
sub_0804ABD8: @ 0x0804ABD8
	push {r4, lr}
	movs r3, #0
	movs r1, #0
	ldr r0, _0804AC14 @ =gUnknown_03000888
	ldrb r2, [r0]
	cmp r3, r2
	bhs _0804AC0C
	ldr r0, _0804AC18 @ =gUnknown_0300088C
	ldr r4, [r0]
_0804ABEA:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AC02
	cmp r0, #2
	beq _0804AC02
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804AC02:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804ABEA
_0804AC0C:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804AC14: .4byte gUnknown_03000888
_0804AC18: .4byte gUnknown_0300088C

	thumb_func_start sub_0804AC1C
sub_0804AC1C: @ 0x0804AC1C
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
	ldr r1, _0804AD0C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804AD10 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804AD14 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804AD18 @ =0x00001D01
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x1e
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804AD1C @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1d
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804AD20 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1d
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804AD24 @ =0x0600E800
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
	beq _0804AD3E
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804AD2C
	ldr r1, _0804AD28 @ =0x06004000
	b _0804AD30
	.align 2, 0
_0804AD0C: .4byte 0xFFFF0000
_0804AD10: .4byte 0x00001F03
_0804AD14: .4byte 0x00001E02
_0804AD18: .4byte 0x00001D01
_0804AD1C: .4byte 0x0600F800
_0804AD20: .4byte 0x0600F000
_0804AD24: .4byte 0x0600E800
_0804AD28: .4byte 0x06004000
_0804AD2C:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804AD30:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804AD4E
_0804AD3E:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804AD4E:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804AD88 @ =0x030008D8
	ldr r1, _0804AD8C @ =0x00100053
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _0804AD90 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AD88: .4byte 0x030008D8
_0804AD8C: .4byte 0x00100053
_0804AD90: .4byte gBgRegsBuffer

	thumb_func_start sub_0804AD94
sub_0804AD94: @ 0x0804AD94
	push {r4, lr}
	ldr r2, _0804ADE0 @ =gBgRegsBuffer
	ldr r0, _0804ADE4 @ =gUnknown_030008C9
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #8
	subs r0, r0, r1
	strh r0, [r2, #0xc]
	ldr r0, _0804ADE8 @ =gUnknown_030008CA
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	rsbs r0, r0, #0
	strh r0, [r2, #0xe]
	ldr r4, _0804ADEC @ =gUnknown_030008CC
	ldrb r1, [r4]
	lsrs r3, r1, #3
	strh r3, [r2, #8]
	ldrb r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
	strh r3, [r2, #4]
	ldrb r0, [r4]
	rsbs r0, r0, #0
	asrs r0, r0, #1
	strh r0, [r2, #6]
	adds r1, #0xa
	strb r1, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xef
	bls _0804ADD8
	movs r0, #0
	strb r0, [r4]
_0804ADD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804ADE0: .4byte gBgRegsBuffer
_0804ADE4: .4byte gUnknown_030008C9
_0804ADE8: .4byte gUnknown_030008CA
_0804ADEC: .4byte gUnknown_030008CC

	thumb_func_start sub_0804ADF0
sub_0804ADF0: @ 0x0804ADF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r0, #0x76
	bl PlaySE
	movs r5, #0
_0804AE10:
	bl WaitFrame
	bl sub_0804AD94
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0804AE10
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r5, #0
	ldr r7, _0804B01C @ =0x0000FFC4
_0804AE32:
	cmp r5, #0x3f
	bhi _0804AE48
	lsrs r3, r5, #2
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
_0804AE48:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl sub_0804AD94
	bl WaitFrame
	adds r4, #4
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x4f
	ble _0804AE32
	movs r0, #0x68
	bl PlaySE
	movs r0, #5
	mov r8, r0
	movs r5, #0
	ldr r6, _0804B024 @ =gBgRegsBuffer
_0804AE84:
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl sub_0804AD94
	rsbs r4, r4, #0
	adds r4, #0x4e
	strh r4, [r6, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0804AE84
	movs r2, #2
	mov r8, r2
	movs r5, #0
	ldr r3, _0804B024 @ =gBgRegsBuffer
	mov sl, r3
	mov sb, r5
_0804AEDA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	bl sub_0804AD94
	lsls r6, r7, #0x10
	asrs r4, r6, #0x10
	rsbs r0, r4, #0
	adds r0, #0x4e
	mov r3, sl
	strh r0, [r3, #0xe]
	ldr r0, _0804B028 @ =gUnknown_030008C9
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0804B02C @ =gUnknown_030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08005F60
	mov r0, sb
	str r0, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0804AEDA
	movs r5, #0
	mov sl, r6
_0804AF38:
	bl sub_0804AD94
	movs r6, #0
	str r6, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0804AF38
	str r6, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	movs r5, #0
_0804AF70:
	bl sub_0804AD94
	movs r6, #0
	str r6, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0804AF70
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x77
	bl PlaySE
	ldr r1, _0804B030 @ =gUnknown_030008CB
	movs r0, #0x1e
	strb r0, [r1]
	movs r5, #0
	mov sb, r5
	ldr r7, _0804B028 @ =gUnknown_030008C9
	ldr r6, _0804B02C @ =gUnknown_030008CA
	ldr r0, _0804B020 @ =0x030008D8
	mov r8, r0
_0804AFBE:
	lsrs r0, r5, #1
	movs r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x10
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
	adds r0, r5, #0
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0804B038
	ldr r4, _0804B030 @ =gUnknown_030008CB
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804B034
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r7]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r6]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0804B038
	.align 2, 0
_0804B01C: .4byte 0x0000FFC4
_0804B020: .4byte 0x030008D8
_0804B024: .4byte gBgRegsBuffer
_0804B028: .4byte gUnknown_030008C9
_0804B02C: .4byte gUnknown_030008CA
_0804B030: .4byte gUnknown_030008CB
_0804B034:
	strb r0, [r7]
	strb r0, [r6]
_0804B038:
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r2, r2, r0
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x50
	mov r2, sb
	str r2, [sp]
	ldr r3, _0804B13C @ =0x030008F4
	str r3, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r3, #0
	bl sub_08003FA4
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, #0xb4
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x50
	mov r3, sb
	str r3, [sp]
	ldr r2, _0804B13C @ =0x030008F4
	str r2, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r2, #2
	movs r3, #0
	bl sub_08003FA4
	bl sub_0804AD94
	movs r0, #0
	ldrsb r0, [r7, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r6, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bhi _0804B0CA
	b _0804AFBE
_0804B0CA:
	movs r5, #0
	ldr r7, _0804B140 @ =gUnknown_030008C9
	ldr r6, _0804B144 @ =gUnknown_030008CA
_0804B0D0:
	movs r0, #0xfa
	lsls r0, r0, #3
	bl sub_0804B2A8
	movs r0, #0
	bl sub_0804B3A4
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B148 @ =0x030008D8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0804B154
	ldr r4, _0804B14C @ =gUnknown_030008CB
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804B150
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r7]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r6]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0804B154
	.align 2, 0
_0804B13C: .4byte 0x030008F4
_0804B140: .4byte gUnknown_030008C9
_0804B144: .4byte gUnknown_030008CA
_0804B148: .4byte 0x030008D8
_0804B14C: .4byte gUnknown_030008CB
_0804B150:
	strb r0, [r7]
	strb r0, [r6]
_0804B154:
	bl sub_0804AD94
	movs r0, #0
	ldrsb r0, [r7, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r6, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _0804B0D0
_0804B176:
	movs r2, #0
	movs r5, #0
	ldr r0, _0804B220 @ =gUnknown_030008C8
	ldrb r1, [r0]
	cmp r5, r1
	bhs _0804B1A4
	ldr r0, _0804B224 @ =gUnknown_030008D0
	ldr r3, [r0]
_0804B186:
	lsls r0, r5, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B19A
	cmp r0, #3
	beq _0804B19A
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0804B19A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804B186
_0804B1A4:
	cmp r2, #0
	beq _0804B246
	movs r0, #0
	bl sub_0804B3A4
	ldr r6, _0804B228 @ =gUnknown_030008C9
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x78
	mov r0, sl
	asrs r2, r0, #0x10
	ldr r4, _0804B22C @ =gUnknown_030008CA
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B230 @ =0x030008D8
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	ldrsb r0, [r6, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r4, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _0804B23C
	ldr r5, _0804B234 @ =gUnknown_030008CB
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804B238
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r5]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r5]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0804B23C
	.align 2, 0
_0804B220: .4byte gUnknown_030008C8
_0804B224: .4byte gUnknown_030008D0
_0804B228: .4byte gUnknown_030008C9
_0804B22C: .4byte gUnknown_030008CA
_0804B230: .4byte 0x030008D8
_0804B234: .4byte gUnknown_030008CB
_0804B238:
	strb r0, [r6]
	strb r0, [r4]
_0804B23C:
	bl sub_0804AD94
	bl WaitFrame
	b _0804B176
_0804B246:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
_0804B25E:
	bl sub_0804AD94
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B2A4 @ =0x030008D8
	movs r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	cmp r5, #0x2c
	bne _0804B282
	movs r0, #6
	bl sub_0800F3A0
_0804B282:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0804B25E
	movs r0, #0x76
	bl StopSE
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B2A4: .4byte 0x030008D8

	thumb_func_start sub_0804B2A8
sub_0804B2A8: @ 0x0804B2A8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
	movs r1, #0
	ldr r0, _0804B314 @ =gUnknown_030008C8
	ldrb r2, [r0]
	cmp r4, r2
	bhs _0804B2DC
	ldr r0, _0804B318 @ =gUnknown_030008D0
	ldr r3, [r0]
_0804B2BE:
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B2D2
	cmp r0, #3
	beq _0804B2D2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0804B2D2:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804B2BE
_0804B2DC:
	bl Random
	lsls r0, r0, #0x10
	lsls r1, r5, #0x10
	cmp r0, r1
	ble _0804B394
	cmp r4, #0
	bne _0804B394
	ldr r1, _0804B31C @ =gUnknown_030008CB
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0x77
	bl PlaySE
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804B320
	ldr r0, _0804B314 @ =gUnknown_030008C8
	ldrb r0, [r0]
	ldr r1, _0804B318 @ =gUnknown_030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #1
	b _0804B32E
	.align 2, 0
_0804B314: .4byte gUnknown_030008C8
_0804B318: .4byte gUnknown_030008D0
_0804B31C: .4byte gUnknown_030008CB
_0804B320:
	ldr r0, _0804B34C @ =gUnknown_030008C8
	ldrb r0, [r0]
	ldr r1, _0804B350 @ =gUnknown_030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #2
_0804B32E:
	strb r1, [r0]
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804B354
	ldr r0, _0804B34C @ =gUnknown_030008C8
	ldrb r0, [r0]
	ldr r1, _0804B350 @ =gUnknown_030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x1e
	b _0804B362
	.align 2, 0
_0804B34C: .4byte gUnknown_030008C8
_0804B350: .4byte gUnknown_030008D0
_0804B354:
	ldr r0, _0804B39C @ =gUnknown_030008C8
	ldrb r0, [r0]
	ldr r1, _0804B3A0 @ =gUnknown_030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0xb4
_0804B362:
	strh r1, [r0, #2]
	bl Random
	ldr r5, _0804B39C @ =gUnknown_030008C8
	ldrb r4, [r5]
	ldr r1, _0804B3A0 @ =gUnknown_030008D0
	ldr r6, [r1]
	lsls r4, r4, #2
	adds r4, r4, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1e
	bl __umodsi3
	ldrh r1, [r4, #2]
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	strb r2, [r0, #1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0804B394:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B39C: .4byte gUnknown_030008C8
_0804B3A0: .4byte gUnknown_030008D0

	thumb_func_start sub_0804B3A4
sub_0804B3A4: @ 0x0804B3A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r0, _0804B3EC @ =gUnknown_030008D0
	ldr r4, [r0]
	movs r7, #0
	movs r0, #0x10
	mov r8, r0
	ldr r1, _0804B3F0 @ =0x030008F4
	mov sb, r1
	mov r6, sb
	subs r6, #0x1c
_0804B3C0:
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804B4AA
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhi _0804B3F4
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #1]
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r0, #0x1f
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _0804B4B6
	.align 2, 0
_0804B3EC: .4byte gUnknown_030008D0
_0804B3F0: .4byte 0x030008F4
_0804B3F4:
	ldrb r0, [r4, #1]
	movs r3, #0x12
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
	ldrb r3, [r4]
	cmp r3, #1
	bne _0804B450
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r1, _0804B448 @ =gUnknown_030008C9
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, _0804B44C @ =gUnknown_030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x50
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r2, #1
	movs r3, #0
	bl sub_08003FA4
	b _0804B482
	.align 2, 0
_0804B448: .4byte gUnknown_030008C9
_0804B44C: .4byte gUnknown_030008CA
_0804B450:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r1, _0804B4C4 @ =gUnknown_030008C9
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, _0804B4C8 @ =gUnknown_030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x50
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r2, #2
	movs r3, #0
	bl sub_08003FA4
_0804B482:
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bls _0804B4AA
	strb r1, [r4, #1]
	mov r0, r8
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #8
	movs r2, #1
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	strb r0, [r4]
_0804B4AA:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r4, #4
	cmp r7, #9
	bls _0804B3C0
_0804B4B6:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B4C4: .4byte gUnknown_030008C9
_0804B4C8: .4byte gUnknown_030008CA
