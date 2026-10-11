	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08018940
sub_08018940: @ 0x08018940
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r5, _08018A10 @ =gUnknown_030063D8
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0x9a
	ldr r0, _08018A14 @ =gMapLayer_03003910
	adds r4, r0, #0
	adds r4, #0x68
	ldrh r1, [r4]
	ldrh r0, [r2]
	cmp r0, r1
	bne _08018964
	b _08018C1C
_08018964:
	strh r1, [r2]
	bl sub_08001F64
	cmp r0, #0
	bne _08018970
	b _08018A88
_08018970:
	movs r0, #0
	mov r8, r0
	ldr r3, _08018A18 @ =0x080FB0F8
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r8, r0
	blo _08018988
	b _08018AB6
_08018988:
	mov r1, r8
	lsls r2, r1, #2
	ldr r4, _08018A1C @ =0x03003978
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r0, r3, #0
	adds r0, #0x10
	adds r2, r2, r0
	ldr r0, [r2]
	bl GetDataRecord
	mov sl, r0
	ldr r0, [r0, #8]
	mov r5, sl
	adds r6, r5, r0
	movs r7, #0
	movs r0, #1
	add r0, r8
	mov sb, r0
	ldrh r1, [r5, #0xc]
	cmp r7, r1
	bhs _08018A68
	mov r2, r8
	lsls r0, r2, #4
	subs r5, r0, r2
	ldr r3, _08018A10 @ =gUnknown_030063D8
	mov r8, r3
_080189C4:
	ldrh r0, [r6, #2]
	cmp r0, #1
	beq _08018A5A
	cmp r0, #0xb
	bne _08018A30
	ldrh r1, [r6]
	cmp r1, #0
	beq _08018A2A
	bl Random
	ldr r2, _08018A10 @ =gUnknown_030063D8
	ldr r4, [r2]
	adds r4, #0xcc
	adds r4, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6]
	str r2, [sp, #0x1c]
	bl __umodsi3
	movs r3, #0
	strb r0, [r4]
	str r3, [sp, #0x20]
	bl Random
	movs r1, #3
	ands r1, r0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	cmp r1, #0
	bne _08018A20
	ldr r1, [r2]
	adds r1, #0xcc
	adds r1, r1, r5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08018A5A
	.align 2, 0
_08018A10: .4byte gUnknown_030063D8
_08018A14: .4byte gMapLayer_03003910
_08018A18: .4byte 0x080FB0F8
_08018A1C: .4byte 0x03003978
_08018A20:
	ldr r0, [r2]
	adds r0, #0xcc
	adds r0, r0, r5
	strb r3, [r0]
	b _08018A5A
_08018A2A:
	mov r4, r8
	ldr r0, [r4]
	b _08018A54
_08018A30:
	ldrh r1, [r6]
	cmp r1, #0
	beq _08018A50
	bl Random
	mov r1, r8
	ldr r4, [r1]
	adds r4, #0xcc
	adds r4, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6]
	bl __umodsi3
	strb r0, [r4]
	b _08018A5A
_08018A50:
	mov r2, r8
	ldr r0, [r2]
_08018A54:
	adds r0, #0xcc
	adds r0, r0, r5
	strb r1, [r0]
_08018A5A:
	adds r5, #1
	adds r7, #1
	adds r6, #8
	mov r3, sl
	ldrh r3, [r3, #0xc]
	cmp r7, r3
	blo _080189C4
_08018A68:
	mov r8, sb
	ldr r3, _08018A80 @ =0x080FB0F8
	ldr r4, _08018A84 @ =0x03003978
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r8, r0
	blo _08018988
	b _08018AB6
	.align 2, 0
_08018A80: .4byte 0x080FB0F8
_08018A84: .4byte 0x03003978
_08018A88:
	movs r6, #0
	mov r8, r6
	adds r4, r5, #0
	movs r3, #0xef
_08018A90:
	movs r7, #0
	mov r0, r8
	lsls r5, r0, #4
	movs r1, #1
	add r1, r8
	mov sb, r1
	subs r2, r5, r0
_08018A9E:
	ldr r0, [r4]
	adds r1, r7, r2
	adds r0, #0xcc
	adds r0, r0, r1
	strb r3, [r0]
	adds r7, #1
	cmp r7, #0xd
	bls _08018A9E
	mov r8, sb
	mov r2, r8
	cmp r2, #0x13
	bls _08018A90
_08018AB6:
	bl sub_080074F0
	cmp r0, #0
	bne _08018AC0
	b _08018C1C
_08018AC0:
	mov r0, sp
	movs r1, #1
	bl sub_0802934C
	b _08018ACE
_08018ACA:
	bl WaitFrame
_08018ACE:
	ldr r0, [sp]
	cmp r0, #0
	bne _08018ACA
	bl sub_08001F64
	cmp r0, #0
	beq _08018B9C
	movs r3, #0
	mov r8, r3
	ldr r4, _08018B38 @ =0x080FB0F8
	ldr r3, _08018B3C @ =gMapLayer_03003910
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r8, r0
	blo _08018AFA
	b _08018C1C
_08018AFA:
	mov r5, r8
	lsls r2, r5, #2
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0x10
	adds r2, r2, r0
	ldr r0, [r2]
	bl GetDataRecord
	mov sl, r0
	movs r7, #0
	movs r6, #1
	add r6, r8
	mov sb, r6
	ldrh r0, [r0, #0xc]
	cmp r7, r0
	bhs _08018B72
	lsls r5, r5, #4
	mov r1, r8
	lsls r1, r1, #0x18
	str r1, [sp, #0x18]
_08018B30:
	adds r2, r7, #1
	str r2, [sp, #0x28]
	lsls r4, r7, #0x18
	b _08018B44
	.align 2, 0
_08018B38: .4byte 0x080FB0F8
_08018B3C: .4byte gMapLayer_03003910
_08018B40:
	bl WaitFrame
_08018B44:
	lsrs r2, r4, #0x18
	ldr r0, _08018B90 @ =gUnknown_030063D8
	ldr r1, [r0]
	mov r3, r8
	subs r0, r5, r3
	adds r0, r7, r0
	adds r1, #0xcc
	adds r1, r1, r0
	ldrb r3, [r1]
	movs r0, #0
	ldr r6, [sp, #0x18]
	lsrs r1, r6, #0x18
	bl sub_08029270
	cmp r0, #0
	beq _08018B40
	bl WaitFrame
	ldr r7, [sp, #0x28]
	mov r0, sl
	ldrh r0, [r0, #0xc]
	cmp r7, r0
	blo _08018B30
_08018B72:
	mov r8, sb
	ldr r4, _08018B94 @ =0x080FB0F8
	ldr r3, _08018B98 @ =gMapLayer_03003910
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r8, r0
	blo _08018AFA
	b _08018C1C
	.align 2, 0
_08018B90: .4byte gUnknown_030063D8
_08018B94: .4byte 0x080FB0F8
_08018B98: .4byte gMapLayer_03003910
_08018B9C:
	ldr r4, _08018C68 @ =0x080FB0F8
	ldr r0, _08018C6C @ =gMapLayer_03003910
	adds r5, r0, #0
	adds r5, #0x68
	ldrh r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r0, r1, r4
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	bl GetDataRecord
	mov sl, r0
	ldr r0, _08018C70 @ =gUnknown_030063D8
	ldr r2, [r0]
	ldrh r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r1, [r0]
	subs r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	subs r0, #1
	mov r1, sl
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	adds r2, #0xcc
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0xef
	bne _08018C1C
	adds r6, r4, #0
	adds r4, r5, #0
_08018BF0:
	bl WaitFrame
	ldr r0, _08018C70 @ =gUnknown_030063D8
	ldr r2, [r0]
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	ldrh r1, [r0]
	subs r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	subs r0, #1
	mov r3, sl
	ldrh r3, [r3, #0xc]
	adds r0, r0, r3
	adds r2, #0xcc
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0xef
	beq _08018BF0
_08018C1C:
	ldr r3, _08018C68 @ =0x080FB0F8
	ldr r0, _08018C6C @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x68
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r3, #0x10
	adds r1, r1, r3
	ldr r0, [r1]
	bl GetDataRecord
	ldr r3, _08018C70 @ =gUnknown_030063D8
	ldr r2, [r3]
	str r0, [r2]
	ldr r1, [r0, #8]
	adds r1, r0, r1
	str r1, [r2, #4]
	adds r6, r1, #0
	movs r4, #0
	str r4, [sp, #8]
	mov r8, r4
	ldrh r0, [r0, #0xc]
	cmp r8, r0
	bhs _08018C8E
	ldrh r0, [r6, #2]
	adds r2, r3, #0
	cmp r0, #2
	bne _08018C74
	movs r5, #1
	str r5, [sp, #8]
	b _08018C8E
	.align 2, 0
_08018C68: .4byte 0x080FB0F8
_08018C6C: .4byte gMapLayer_03003910
_08018C70: .4byte gUnknown_030063D8
_08018C74:
	movs r0, #1
	add r8, r0
	adds r6, #8
	ldr r0, [r2]
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	cmp r8, r0
	bhs _08018C8E
	ldrh r0, [r6, #2]
	cmp r0, #2
	bne _08018C74
	movs r1, #1
	str r1, [sp, #8]
_08018C8E:
	ldr r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r4, _08018CDC @ =gUnknown_030063D8
	ldr r0, [r4]
	ldr r6, [r0, #4]
	adds r0, #0x9e
	movs r1, #0
	strh r1, [r0]
	movs r3, #0
	str r3, [sp, #0x10]
	movs r5, #0
	str r5, [sp, #0x14]
	bl sub_08007624
	bl sub_0800773C
	mov r8, r5
	ldr r0, [r4]
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	cmp r5, r0
	blo _08018CBC
	b _08019058
_08018CBC:
	ldrh r0, [r6, #2]
	movs r1, #8
	adds r1, r1, r6
	mov sl, r1
	movs r2, #1
	add r2, r8
	mov sb, r2
	cmp r0, #0xd
	bls _08018CD0
	b _08019046
_08018CD0:
	lsls r0, r0, #2
	ldr r1, _08018CE0 @ =_08018CE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018CDC: .4byte gUnknown_030063D8
_08018CE0: .4byte _08018CE4
_08018CE4: @ jump table
	.4byte _08018D1C @ case 0
	.4byte _08018D54 @ case 1
	.4byte _08018DD8 @ case 2
	.4byte _08019046 @ case 3
	.4byte _08018E20 @ case 4
	.4byte _08018E4C @ case 5
	.4byte _08018E68 @ case 6
	.4byte _08018E8C @ case 7
	.4byte _08018EB0 @ case 8
	.4byte _08018ED4 @ case 9
	.4byte _08018EF8 @ case 10
	.4byte _08018F44 @ case 11
	.4byte _08018F98 @ case 12
	.4byte _08018FBC @ case 13
_08018D1C:
	ldr r0, [r6, #4]
	adds r0, r6, r0
	ldr r4, _08018D4C @ =gUnknown_030063D8
	ldr r3, [r4]
	ldr r1, _08018D50 @ =gMapLayer_03003910
	adds r1, #0x6c
	ldrh r2, [r1]
	lsls r1, r2, #4
	subs r1, r1, r2
	add r1, r8
	adds r3, #0xcc
	adds r3, r3, r1
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [sp, #0xc]
	bl sub_08021124
	ldr r0, [r4]
	adds r0, #0xab
	movs r1, #0
	strb r1, [r0]
	b _08018E7C
	.align 2, 0
_08018D4C: .4byte gUnknown_030063D8
_08018D50: .4byte gMapLayer_03003910
_08018D54:
	bl sub_08001F64
	movs r4, #8
	adds r4, r4, r6
	mov sl, r4
	movs r5, #1
	add r5, r8
	mov sb, r5
	ldr r1, [sp, #0x10]
	adds r1, #1
	mov r8, r1
	cmp r0, #0
	beq _08018DC8
	bl sub_080210CC
	ldr r4, _08018DD4 @ =gUnknown_030063D8
	ldr r1, [r4]
	ldrh r0, [r6]
	adds r2, r1, #0
	adds r2, #0x9e
	strh r0, [r2]
	adds r1, #0xaa
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r6, #4]
	adds r0, r6, r0
	str r0, [sp, #0x24]
	ldrh r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	bl Alloc
	ldr r1, [r4]
	str r0, [r1, #8]
	adds r2, r0, #0
	movs r7, #0
	ldrh r3, [r6]
	cmp r7, r3
	bhs _08018DC8
_08018DA4:
	adds r1, r2, #0
	ldr r0, [sp, #0x24]
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	adds r2, #0x30
	ldr r4, [sp, #0x24]
	adds r4, #0x30
	str r4, [sp, #0x24]
	adds r7, #1
	ldrh r5, [r6]
	cmp r7, r5
	blo _08018DA4
_08018DC8:
	mov r6, r8
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	b _08019046
	.align 2, 0
_08018DD4: .4byte gUnknown_030063D8
_08018DD8:
	ldr r2, _08018E14 @ =0x080FB0F8
	ldr r0, _08018E18 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_0800C720
	bl sub_08007614
	ldr r0, _08018E1C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	movs r1, #0
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	adds r6, #8
	mov sl, r6
	movs r0, #1
	add r0, r8
	mov sb, r0
	b _08019046
	.align 2, 0
_08018E14: .4byte 0x080FB0F8
_08018E18: .4byte gMapLayer_03003910
_08018E1C: .4byte gUnknown_030063D8
_08018E20:
	ldr r5, _08018E48 @ =gUnknown_030063D8
	ldr r1, [r5]
	ldr r0, [r6, #4]
	adds r0, r6, r0
	str r0, [r1, #0x20]
	ldrh r0, [r6]
	adds r1, #0x86
	movs r4, #0
	strh r0, [r1]
	bl sub_080211D4
	ldr r0, [r5]
	adds r0, #0x92
	strh r4, [r0]
	adds r6, #8
	mov sl, r6
	movs r1, #1
	add r1, r8
	mov sb, r1
	b _08019046
	.align 2, 0
_08018E48: .4byte gUnknown_030063D8
_08018E4C:
	ldr r0, _08018E64 @ =gUnknown_030063D8
	ldr r1, [r0]
	ldr r0, [r6, #4]
	adds r0, r6, r0
	str r0, [r1, #0x24]
	ldrh r0, [r6]
	adds r1, #0x88
	strh r0, [r1]
	bl sub_08021228
	b _08018FAC
	.align 2, 0
_08018E64: .4byte gUnknown_030063D8
_08018E68:
	ldr r0, _08018E88 @ =gUnknown_030063D8
	ldr r1, [r0]
	ldr r0, [r6, #4]
	adds r0, r6, r0
	str r0, [r1, #0x28]
	ldrh r0, [r6]
	adds r1, #0x8a
	strh r0, [r1]
	bl sub_0802127C
_08018E7C:
	adds r6, #8
	mov sl, r6
	movs r3, #1
	add r3, r8
	mov sb, r3
	b _08019046
	.align 2, 0
_08018E88: .4byte gUnknown_030063D8
_08018E8C:
	ldr r0, _08018EAC @ =gUnknown_030063D8
	ldr r1, [r0]
	ldr r0, [r6, #4]
	adds r0, r6, r0
	str r0, [r1, #0x2c]
	ldrh r0, [r6]
	adds r1, #0x8c
	strh r0, [r1]
	bl sub_080212D0
	adds r6, #8
	mov sl, r6
	movs r4, #1
	add r4, r8
	mov sb, r4
	b _08019046
	.align 2, 0
_08018EAC: .4byte gUnknown_030063D8
_08018EB0:
	ldr r0, _08018ED0 @ =gUnknown_030063D8
	ldr r1, [r0]
	ldr r0, [r6, #4]
	adds r0, r6, r0
	str r0, [r1, #0x30]
	ldrh r0, [r6]
	adds r1, #0x8e
	strh r0, [r1]
	bl sub_08021324
	adds r6, #8
	mov sl, r6
	movs r5, #1
	add r5, r8
	mov sb, r5
	b _08019046
	.align 2, 0
_08018ED0: .4byte gUnknown_030063D8
_08018ED4:
	ldr r0, _08018EF4 @ =gUnknown_030063D8
	ldr r1, [r0]
	ldr r0, [r6, #4]
	adds r0, r6, r0
	str r0, [r1, #0x34]
	ldrh r0, [r6]
	adds r1, #0x90
	strh r0, [r1]
	bl sub_08021378
	adds r6, #8
	mov sl, r6
	movs r6, #1
	add r6, r8
	mov sb, r6
	b _08019046
	.align 2, 0
_08018EF4: .4byte gUnknown_030063D8
_08018EF8:
	ldr r0, _08018F3C @ =gUnknown_030063D8
	ldr r3, [r0]
	ldr r2, [r6, #4]
	adds r2, r6, r2
	str r2, [r3, #0x38]
	ldr r0, _08018F40 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	add r1, r8
	adds r0, r3, #0
	adds r0, #0xcc
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r2, r2, r0
	str r2, [r3, #0x38]
	adds r3, #0x94
	movs r0, #0
	strh r0, [r3]
	adds r6, #8
	mov sl, r6
	movs r0, #1
	add r0, r8
	mov sb, r0
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08018F34
	b _08019046
_08018F34:
	bl sub_080213CC
	b _08019046
	.align 2, 0
_08018F3C: .4byte gUnknown_030063D8
_08018F40: .4byte gMapLayer_03003910
_08018F44:
	ldr r0, _08018F90 @ =gUnknown_030063D8
	ldr r3, [r0]
	ldr r0, _08018F94 @ =gMapLayer_03003910
	adds r5, r0, #0
	adds r5, #0x6c
	ldrh r1, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	add r0, r8
	adds r4, r3, #0
	adds r4, #0xcc
	adds r0, r4, r0
	ldrb r0, [r0]
	movs r2, #8
	adds r2, r2, r6
	mov sl, r2
	movs r1, #1
	add r1, r8
	mov sb, r1
	cmp r0, #0
	beq _08019046
	ldr r2, [r6, #4]
	adds r2, r6, r2
	str r2, [r3, #0x3c]
	ldrh r1, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	add r0, r8
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #3
	subs r0, #8
	adds r2, r2, r0
	str r2, [r3, #0x3c]
	bl sub_08021420
	b _08019046
	.align 2, 0
_08018F90: .4byte gUnknown_030063D8
_08018F94: .4byte gMapLayer_03003910
_08018F98:
	ldr r0, _08018FB8 @ =gUnknown_030063D8
	ldr r1, [r0]
	ldr r0, [r6, #4]
	adds r0, r6, r0
	str r0, [r1, #0x40]
	ldrh r0, [r6]
	adds r1, #0x96
	strh r0, [r1]
	bl sub_08021474
_08018FAC:
	adds r6, #8
	mov sl, r6
	movs r2, #1
	add r2, r8
	mov sb, r2
	b _08019046
	.align 2, 0
_08018FB8: .4byte gUnknown_030063D8
_08018FBC:
	ldr r0, _08019170 @ =gUnknown_030063D8
	ldr r3, [r0]
	ldr r2, [r6, #4]
	adds r2, r6, r2
	str r2, [r3, #0x44]
	ldr r0, _08019174 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	add r1, r8
	adds r0, r3, #0
	adds r0, #0xcc
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r2, r2, r0
	str r2, [r3, #0x44]
	adds r5, r2, #0
	movs r7, #0
	adds r6, #8
	mov sl, r6
	movs r3, #1
	add r3, r8
	mov sb, r3
	adds r4, r5, #0
_08018FF0:
	lsls r1, r7, #1
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801903E
	adds r0, r5, #0
	adds r0, #8
	adds r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #0
	beq _0801903E
	movs r0, #0x71
	rsbs r0, r0, #0
	ldr r2, [sp, #4]
	ands r2, r0
	movs r0, #0x10
	orrs r2, r0
	str r2, [sp, #4]
	lsls r1, r7, #2
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r0, r1
	lsls r0, r0, #7
	ldr r1, _08019178 @ =0xFFFFC07F
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0xf
	ldrh r1, [r3]
	lsls r1, r1, #0xf
	ldr r2, _08019174 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	add r3, sp, #4
	bl sub_0800FA74
_0801903E:
	adds r4, #2
	adds r7, #1
	cmp r7, #3
	bls _08018FF0
_08019046:
	mov r8, sb
	mov r6, sl
	ldr r0, _08019170 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	cmp r8, r0
	bhs _08019058
	b _08018CBC
_08019058:
	ldr r4, _08019170 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xab
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r4]
	adds r1, #0x9c
	ldrh r2, [r1]
	movs r0, #2
	orrs r0, r2
	strh r0, [r1]
	ldr r3, _0801917C @ =0x080FB0F8
	ldr r0, _08019174 @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x68
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r3, #0x10
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r0, _08019180 @ =0x40020010
	cmp r1, r0
	beq _08019094
	b _080191B4
_08019094:
	bl sub_080214C8
	bl sub_08001F64
	cmp r0, #0
	beq _08019184
	movs r5, #0
	mov r8, r5
	adds r5, r4, #0
	movs r6, #0xf
_080190A8:
	bl Random
	ldr r4, [r5]
	adds r4, #0xac
	add r4, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	strb r0, [r4]
	bl Random
	ldr r4, [r5]
	adds r4, #0xb4
	add r4, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	strb r0, [r4]
	bl Random
	ldr r1, [r5]
	adds r1, #0xbc
	add r1, r8
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080190EA
	adds r0, #0xf
_080190EA:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	strb r0, [r1]
	bl Random
	ldr r4, [r5]
	adds r4, #0xc4
	add r4, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl __modsi3
	strb r0, [r4]
	ldr r0, [r5]
	adds r0, #0xc4
	mov r2, r8
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0801911C
	movs r0, #1
	strb r0, [r1]
_0801911C:
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0xac
	add r0, r8
	ldrb r0, [r0]
	adds r1, r6, #0
	ands r1, r0
	adds r0, r3, #0
	adds r0, #0xb4
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r3, #0
	adds r0, #0xbc
	add r0, r8
	ldrb r0, [r0]
	adds r2, r6, #0
	ands r2, r0
	adds r0, r3, #0
	adds r0, #0xc4
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	orrs r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r4, r8
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0xf
	bl sub_08029270
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #7
	bls _080190A8
	b _080191B4
	.align 2, 0
_08019170: .4byte gUnknown_030063D8
_08019174: .4byte gMapLayer_03003910
_08019178: .4byte 0xFFFFC07F
_0801917C: .4byte 0x080FB0F8
_08019180: .4byte 0x40020010
_08019184:
	movs r2, #0
	mov r8, r2
	adds r1, r4, #0
_0801918A:
	ldr r0, [r1]
	adds r0, #0xac
	add r0, r8
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, #0xb4
	add r0, r8
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, #0xbc
	add r0, r8
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, #0xc4
	add r0, r8
	strb r2, [r0]
	movs r3, #1
	add r8, r3
	mov r4, r8
	cmp r4, #7
	bls _0801918A
_080191B4:
	ldr r5, [sp, #0x10]
	cmp r5, #0
	bne _080191E2
	ldr r6, [sp, #0x14]
	cmp r6, #0
	bne _080191E2
	bl WaitFrame
	bl WaitFrame
	ldr r4, _080191F4 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	bne _080191DA
	ldr r0, _080191F8 @ =0x00000BB8
	bl SignalEvent
_080191DA:
	ldr r0, [r4]
	adds r0, #0xab
	movs r1, #1
	strb r1, [r0]
_080191E2:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080191F4: .4byte gUnknown_030063D8
_080191F8: .4byte 0x00000BB8

	thumb_func_start sub_080191FC
sub_080191FC: @ 0x080191FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r1, _08019238 @ =gUnknown_030063D8
	ldr r0, [r1]
	ldr r4, [r0, #4]
	ldr r0, [r0]
	ldrh r2, [r0, #0xc]
	movs r6, #0
	adds r7, r1, #0
	cmp r6, r2
	bhs _080192F6
	ldr r1, _0801923C @ =gUnknown_0300397C
	movs r0, #0x80
	lsls r0, r0, #8
	mov r8, r0
	ldr r0, _08019240 @ =0xFFFF8000
	mov ip, r0
_08019224:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _080192EE
	cmp r5, #0
	bne _08019244
	ldrh r0, [r1]
	strh r0, [r3, #0x16]
	ldr r2, [r7]
	ldrh r1, [r3, #0x16]
	b _0801924C
	.align 2, 0
_08019238: .4byte gUnknown_030063D8
_0801923C: .4byte gUnknown_0300397C
_08019240: .4byte 0xFFFF8000
_08019244:
	ldrh r0, [r1]
	strh r0, [r3, #0x18]
	ldr r2, [r7]
	ldrh r1, [r3, #0x18]
_0801924C:
	lsls r0, r1, #4
	subs r0, r0, r1
	adds r0, r6, r0
	adds r2, #0xcc
	adds r2, r2, r0
	ldrb r1, [r2]
	ldr r0, [r4, #4]
	adds r2, r4, r0
	cmp r5, #0
	beq _08019272
	lsls r0, r1, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r3, #0x68]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r3, #0x6c]
	b _08019284
_08019272:
	lsls r0, r1, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r3, #0x58]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r3, #0x5c]
	strh r5, [r3, #0xa]
_08019284:
	ldrh r0, [r3]
	cmp r0, #1
	beq _080192B2
	cmp r0, #1
	bgt _08019294
	cmp r0, #0
	beq _0801929E
	b _080192F6
_08019294:
	cmp r0, #2
	beq _080192C6
	cmp r0, #3
	beq _080192DA
	b _080192F6
_0801929E:
	cmp r5, #0
	beq _080192AA
	ldr r0, [r3, #0x6c]
	add r0, r8
	str r0, [r3, #0x6c]
	b _080192F6
_080192AA:
	ldr r0, [r3, #0x5c]
	add r0, r8
	str r0, [r3, #0x5c]
	b _080192F6
_080192B2:
	cmp r5, #0
	beq _080192BE
	ldr r0, [r3, #0x68]
	add r0, ip
	str r0, [r3, #0x68]
	b _080192F6
_080192BE:
	ldr r0, [r3, #0x58]
	add r0, ip
	str r0, [r3, #0x58]
	b _080192F6
_080192C6:
	cmp r5, #0
	beq _080192D2
	ldr r0, [r3, #0x6c]
	add r0, ip
	str r0, [r3, #0x6c]
	b _080192F6
_080192D2:
	ldr r0, [r3, #0x5c]
	add r0, ip
	str r0, [r3, #0x5c]
	b _080192F6
_080192DA:
	cmp r5, #0
	beq _080192E6
	ldr r0, [r3, #0x68]
	add r0, r8
	str r0, [r3, #0x68]
	b _080192F6
_080192E6:
	ldr r0, [r3, #0x58]
	add r0, r8
	str r0, [r3, #0x58]
	b _080192F6
_080192EE:
	adds r6, #1
	adds r4, #8
	cmp r6, r2
	blo _08019224
_080192F6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
