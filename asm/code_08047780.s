	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08047780
sub_08047780: @ 0x08047780
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r0, _080477E8 @ =gUnknown_03000764
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _080477EC @ =gUnknown_030005F8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080477A8
	movs r0, #0
	bl sub_0800EE44
_080477A8:
	ldr r0, _080477F0 @ =gUnknown_030005F0
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #5
	bne _080477B4
	b _08047B42
_080477B4:
	cmp r1, #0xa
	bne _080477BA
	b _08047B42
_080477BA:
	ldr r0, _080477F4 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080477C6
	movs r2, #0xe0
	add sb, r2
_080477C6:
	movs r3, #0
	mov sl, r3
_080477CA:
	mov r0, sb
	adds r0, #0x14
	str r0, [sp, #0x18]
	mov r1, sl
	cmp r1, #1
	bls _080477DA
	movs r2, #0x78
	str r2, [sp, #0xc]
_080477DA:
	mov r3, sl
	cmp r3, #0
	beq _080477E4
	cmp r3, #2
	bne _080477F8
_080477E4:
	movs r0, #0
	b _08047804
	.align 2, 0
_080477E8: .4byte gUnknown_03000764
_080477EC: .4byte gUnknown_030005F8
_080477F0: .4byte gUnknown_030005F0
_080477F4: .4byte gUnknown_030005F1
_080477F8:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r0, r0, #0x10
_08047804:
	str r0, [sp, #0x10]
	ldrb r0, [r4]
	cmp r0, #2
	bhi _08047848
	ldr r0, _08047834 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08047838 @ =gUnknown_030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	cmp r1, r0
	bne _08047848
	ldr r0, _0804783C @ =gUnknown_030005F6
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bgt _08047840
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0804784A
	.align 2, 0
_08047834: .4byte gUnknown_030005F5
_08047838: .4byte gUnknown_030005F1
_0804783C: .4byte gUnknown_030005F6
_08047840:
	ldr r3, _08047844 @ =0x0000FFFD
	b _0804784A
	.align 2, 0
_08047844: .4byte 0x0000FFFD
_08047848:
	movs r3, #0
_0804784A:
	ldrb r0, [r4]
	cmp r0, #7
	beq _08047858
	cmp r0, #9
	beq _08047858
	cmp r0, #0xa
	bne _0804788C
_08047858:
	ldr r0, _08047884 @ =gUnknown_030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, _08047888 @ =gUnknown_030005F5
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804788C
	ldr r1, [sp, #0xc]
	adds r1, #0x25
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	adds r2, #0x11
	ldr r0, [sp, #0x18]
	movs r3, #1
	bl sub_0800EDBC
	b _080478DE
	.align 2, 0
_08047884: .4byte gUnknown_030005F1
_08047888: .4byte gUnknown_030005F5
_0804788C:
	mov r0, sb
	ldrb r4, [r0]
	cmp r4, #0
	bne _080478F8
	ldr r0, _080478C4 @ =gUnknown_030005F0
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080478CC
	ldr r1, [sp, #0xc]
	adds r1, #0x38
	ldr r0, [sp, #0x10]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x1c
	adds r2, r2, r0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _080478C8 @ =gUnknown_030006F8
	movs r3, #0x12
	bl sub_0802706C
	b _080479DA
	.align 2, 0
_080478C4: .4byte gUnknown_030005F0
_080478C8: .4byte gUnknown_030006F8
_080478CC:
	ldr r0, _080478F0 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _080478F4 @ =gUnknown_030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	cmp r1, r0
	beq _080478DE
	b _080479DA
_080478DE:
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	mov r0, sb
	bl sub_08047D40
	b _080479DA
	.align 2, 0
_080478F0: .4byte gUnknown_030005F5
_080478F4: .4byte gUnknown_030005F1
_080478F8:
	ldr r0, _08047978 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #8
	beq _08047910
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x10
	mov r8, r1
	ldr r2, [sp, #0xc]
	lsls r6, r2, #0x10
	lsls r7, r3, #0x10
	cmp r0, #6
	bne _080479B6
_08047910:
	ldr r0, _0804797C @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08047980 @ =gUnknown_030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r2, [sp, #0x10]
	lsls r2, r2, #0x10
	mov r8, r2
	ldr r2, [sp, #0xc]
	lsls r6, r2, #0x10
	lsls r7, r3, #0x10
	cmp r1, r0
	bne _080479B6
	mov r3, sb
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _080479B6
	bl sub_08001F64
	cmp r0, #0
	beq _080479B6
	mov r0, sb
	ldrb r2, [r0, #4]
	cmp r2, #0
	beq _08047988
	asrs r5, r6, #0x10
	adds r1, r5, #0
	adds r1, #0x26
	mov r2, r8
	asrs r0, r2, #0x10
	asrs r4, r7, #0x10
	adds r4, r4, r0
	adds r4, #0x10
	movs r0, #1
	str r0, [sp]
	ldr r0, _08047984 @ =gUnknown_030006F8
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	adds r5, #0x48
	movs r0, #2
	str r0, [sp]
	ldr r0, _08047984 @ =gUnknown_030006F8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	b _080479B6
	.align 2, 0
_08047978: .4byte gUnknown_030005F0
_0804797C: .4byte gUnknown_030005F5
_08047980: .4byte gUnknown_030005F1
_08047984: .4byte gUnknown_030006F8
_08047988:
	asrs r5, r6, #0x10
	adds r1, r5, #0
	adds r1, #0x26
	mov r3, r8
	asrs r0, r3, #0x10
	asrs r4, r7, #0x10
	adds r4, r4, r0
	adds r4, #0x10
	str r2, [sp]
	ldr r0, _08047A3C @ =gUnknown_030006F8
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	adds r5, #0x48
	movs r0, #3
	str r0, [sp]
	ldr r0, _08047A3C @ =gUnknown_030006F8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
_080479B6:
	asrs r1, r6, #0x10
	adds r1, #0x25
	mov r2, r8
	asrs r0, r2, #0x10
	asrs r2, r7, #0x10
	adds r2, r2, r0
	adds r2, #0x11
	ldr r0, [sp, #0x18]
	movs r3, #1
	bl sub_0800EDBC
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	mov r0, sb
	bl sub_08047D40
_080479DA:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #0x38
	add sb, r0
	ldr r4, _08047A40 @ =gUnknown_030005F0
	mov r1, sl
	cmp r1, #3
	bhi _080479F2
	b _080477CA
_080479F2:
	ldr r3, _08047A44 @ =gUnknown_030005F5
	ldr r0, _08047A48 @ =gUnknown_030005F1
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldrb r0, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	ldrb r0, [r4]
	cmp r0, #3
	bne _08047AB0
	movs r2, #0
	str r2, [sp, #0xc]
	cmp r1, #1
	bls _08047A16
	movs r0, #0x78
	str r0, [sp, #0xc]
_08047A16:
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #6
	str r0, [sp, #0x10]
	ldrb r1, [r3]
	ldr r0, _08047A4C @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _08047A64
	cmp r0, #1
	bgt _08047A50
	cmp r0, #0
	beq _08047A5A
	b _08047A7C
	.align 2, 0
_08047A3C: .4byte gUnknown_030006F8
_08047A40: .4byte gUnknown_030005F0
_08047A44: .4byte gUnknown_030005F5
_08047A48: .4byte gUnknown_030005F1
_08047A4C: .4byte gUnknown_03000764
_08047A50:
	cmp r0, #2
	beq _08047A6C
	cmp r0, #3
	beq _08047A74
	b _08047A7C
_08047A5A:
	ldr r0, _08047A60 @ =0x00090023
	b _08047A76
	.align 2, 0
_08047A60: .4byte 0x00090023
_08047A64:
	ldr r0, _08047A68 @ =0x00090024
	b _08047A76
	.align 2, 0
_08047A68: .4byte 0x00090024
_08047A6C:
	ldr r0, _08047A70 @ =0x00090025
	b _08047A76
	.align 2, 0
_08047A70: .4byte 0x00090025
_08047A74:
	ldr r0, _08047AA8 @ =0x00090026
_08047A76:
	bl GetDataRecord
	str r0, [sp, #0x14]
_08047A7C:
	ldr r4, [sp, #0x14]
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, [sp, #0xc]
	adds r1, #0x4c
	ldr r2, _08047AAC @ =gUnknown_03003CA0
	ldrh r2, [r2]
	muls r0, r2, r0
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	subs r1, r1, r0
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x10
	adds r0, r4, #0
	bl sub_0800EB30
	b _08047B42
	.align 2, 0
_08047AA8: .4byte 0x00090026
_08047AAC: .4byte gUnknown_03003CA0
_08047AB0:
	cmp r0, #4
	bne _08047B42
	movs r0, #0
	str r0, [sp, #0xc]
	cmp r1, #1
	bls _08047AC0
	movs r1, #0x78
	str r1, [sp, #0xc]
_08047AC0:
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #6
	str r2, [sp, #0x10]
	ldrb r1, [r3]
	ldr r0, _08047AE8 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _08047B00
	cmp r0, #1
	bgt _08047AEC
	cmp r0, #0
	beq _08047AF6
	b _08047B18
	.align 2, 0
_08047AE8: .4byte gUnknown_03000764
_08047AEC:
	cmp r0, #2
	beq _08047B08
	cmp r0, #3
	beq _08047B10
	b _08047B18
_08047AF6:
	ldr r0, _08047AFC @ =0x00090027
	b _08047B12
	.align 2, 0
_08047AFC: .4byte 0x00090027
_08047B00:
	ldr r0, _08047B04 @ =0x00090028
	b _08047B12
	.align 2, 0
_08047B04: .4byte 0x00090028
_08047B08:
	ldr r0, _08047B0C @ =0x00090029
	b _08047B12
	.align 2, 0
_08047B0C: .4byte 0x00090029
_08047B10:
	ldr r0, _08047B58 @ =0x0009002A
_08047B12:
	bl GetDataRecord
	str r0, [sp, #0x14]
_08047B18:
	ldr r4, [sp, #0x14]
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, [sp, #0xc]
	adds r1, #0x4c
	ldr r2, _08047B5C @ =gUnknown_03003CA0
	ldrh r2, [r2]
	muls r0, r2, r0
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	subs r1, r1, r0
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x10
	adds r0, r4, #0
	bl sub_0800EB30
_08047B42:
	ldr r0, _08047B60 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #8
	bls _08047B4C
	b _08047D28
_08047B4C:
	lsls r0, r0, #2
	ldr r1, _08047B64 @ =_08047B68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047B58: .4byte 0x0009002A
_08047B5C: .4byte gUnknown_03003CA0
_08047B60: .4byte gUnknown_030005F0
_08047B64: .4byte _08047B68
_08047B68: @ jump table
	.4byte _08047B8C @ case 0
	.4byte _08047CE8 @ case 1
	.4byte _08047D00 @ case 2
	.4byte _08047BE4 @ case 3
	.4byte _08047C10 @ case 4
	.4byte _08047C3C @ case 5
	.4byte _08047CBC @ case 6
	.4byte _08047CBC @ case 7
	.4byte _08047BB8 @ case 8
_08047B8C:
	ldr r0, _08047BB0 @ =0x00090007
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047BB4 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047BB0: .4byte 0x00090007
_08047BB4: .4byte gUnknown_03003CA0
_08047BB8:
	ldr r0, _08047BDC @ =0x00090014
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047BE0 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047BDC: .4byte 0x00090014
_08047BE0: .4byte gUnknown_03003CA0
_08047BE4:
	ldr r0, _08047C08 @ =0x00090008
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047C0C @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047C08: .4byte 0x00090008
_08047C0C: .4byte gUnknown_03003CA0
_08047C10:
	ldr r0, _08047C34 @ =0x00090009
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047C38 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047C34: .4byte 0x00090009
_08047C38: .4byte gUnknown_03003CA0
_08047C3C:
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1, #2]
	mov sl, r0
	adds r5, r1, #0
_08047C46:
	ldr r0, _08047CA8 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08047CAC @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r2, sl
	lsls r1, r2, #1
	adds r0, #0x14
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r4, _08047CB0 @ =gUnknown_03003CA0
	ldrh r0, [r4]
	mov r1, sl
	muls r1, r0, r1
	adds r1, #0x4f
	add r0, sp, #8
	movs r2, #0x12
	movs r3, #1
	bl sub_0800EDBC
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0xf
	bls _08047C46
	add r0, sp, #8
	ldr r1, _08047CB4 @ =0x00000201
	strh r1, [r0]
	ldr r1, _08047CB8 @ =gUnknown_030005F4
	ldrb r0, [r1]
	cmp r0, #0xa
	bhi _08047D28
	adds r1, r0, #0
	ldrh r0, [r4]
	muls r1, r0, r1
	adds r1, #0x50
	add r0, sp, #8
	movs r2, #0x14
	movs r3, #1
	bl sub_0800EDBC
	b _08047D28
	.align 2, 0
_08047CA8: .4byte gUnknown_030005F5
_08047CAC: .4byte gUnknown_03000764
_08047CB0: .4byte gUnknown_03003CA0
_08047CB4: .4byte 0x00000201
_08047CB8: .4byte gUnknown_030005F4
_08047CBC:
	ldr r0, _08047CE0 @ =0x0009000D
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047CE4 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047CE0: .4byte 0x0009000D
_08047CE4: .4byte gUnknown_03003CA0
_08047CE8:
	ldr r0, _08047CFC @ =0x0009000B
	bl GetDataRecord
	adds r0, #0xa
	movs r1, #0x14
_08047CF2:
	movs r2, #0x8b
	bl sub_0800EB30
	b _08047D28
	.align 2, 0
_08047CFC: .4byte 0x0009000B
_08047D00:
	ldr r0, _08047D38 @ =0x0009000C
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047D3C @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
_08047D28:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047D38: .4byte 0x0009000C
_08047D3C: .4byte gUnknown_03003CA0
