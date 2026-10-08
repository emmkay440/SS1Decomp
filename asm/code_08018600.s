	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08018600
sub_08018600: @ 0x08018600
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov sl, r1
	bl sub_08026C78
	mov sb, r0
	asrs r0, r4, #0x10
	lsls r5, r0, #0xc
	movs r7, #0
	lsls r4, r4, #0x10
	mov r8, r4
	mov r6, sp
	adds r6, #0xa
	b _08018672
_08018626:
	bl sub_08007510
	cmp r0, #0
	bne _0801866A
	bl sub_08007604
	cmp r0, #0
	bne _0801866A
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	bne _0801866A
	lsls r1, r5, #4
	asrs r1, r1, #0x10
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	mov r2, r8
	asrs r0, r2, #0x10
	add r2, sp, #8
	adds r3, r6, #0
	bl sub_08005FC4
	add r0, sp, #8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	ldrsh r2, [r6, r0]
	str r4, [sp]
	mov r0, sb
	movs r3, #0x1f
	bl sub_08026B90
_0801866A:
	ldr r2, _080186A0 @ =0xFFFFFE00
	adds r5, r5, r2
	bl WaitFrame
_08018672:
	bl sub_080074CC
	cmp r0, #0
	bne _08018682
	adds r0, r7, #0
	adds r7, #1
	cmp r0, #0x13
	bls _08018626
_08018682:
	ldr r2, _080186A4 @ =gUnknown_030063C4
	movs r1, #1
	mov r0, sl
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080186A0: .4byte 0xFFFFFE00
_080186A4: .4byte gUnknown_030063C4

	thumb_func_start sub_080186A8
sub_080186A8: @ 0x080186A8
	push {r4, lr}
	ldr r4, _08018794 @ =0x030063D8
	movs r0, #0xfc
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
	movs r2, #0
	str r2, [r0]
	str r2, [r0, #8]
	str r2, [r0, #4]
	adds r3, r0, #0
	adds r3, #0x9a
	ldr r1, _08018798 @ =0x0000FFFF
	strh r1, [r3]
	adds r0, #0x9c
	strh r2, [r0]
	ldr r4, _0801879C @ =gSpawnerThreads
	movs r0, #0xc8
	bl Alloc
	str r0, [r4]
	ldr r4, _080187A0 @ =gUnknownThreadPtr_0300640C
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187A4 @ =gUnknownThreadPtr_03006410
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187A8 @ =gUnknownThreadPtr_03006404
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187AC @ =gUnknownThreadPtr_03006408
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187B0 @ =gUnknownThreadPtr_030063D0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187B4 @ =gUnknownThreadPtr_030063F4
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187B8 @ =gUnknownThreadPtr_030063F0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187BC @ =gUnknownThreadPtr_030063FC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187C0 @ =gUnknownThreadPtr_030063DC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187C4 @ =gUnknownThreadPtr_030063E0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187C8 @ =gUnknownThreadPtr_030063CC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187CC @ =gUnknownThreadPtr_030063F8
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187D0 @ =gUnknownThreadPtr_030063E8
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187D4 @ =gUnknownThreadPtr_030063D4
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187D8 @ =gUnknownThreadPtr_03006414
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187DC @ =gUnknownThreadPtr_030063EC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187E0 @ =gUnknownThreadPtr_030063E4
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187E4 @ =gUnknownThreadPtr_03006400
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	bl sub_08020F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018794: .4byte 0x030063D8
_08018798: .4byte 0x0000FFFF
_0801879C: .4byte gSpawnerThreads
_080187A0: .4byte gUnknownThreadPtr_0300640C
_080187A4: .4byte gUnknownThreadPtr_03006410
_080187A8: .4byte gUnknownThreadPtr_03006404
_080187AC: .4byte gUnknownThreadPtr_03006408
_080187B0: .4byte gUnknownThreadPtr_030063D0
_080187B4: .4byte gUnknownThreadPtr_030063F4
_080187B8: .4byte gUnknownThreadPtr_030063F0
_080187BC: .4byte gUnknownThreadPtr_030063FC
_080187C0: .4byte gUnknownThreadPtr_030063DC
_080187C4: .4byte gUnknownThreadPtr_030063E0
_080187C8: .4byte gUnknownThreadPtr_030063CC
_080187CC: .4byte gUnknownThreadPtr_030063F8
_080187D0: .4byte gUnknownThreadPtr_030063E8
_080187D4: .4byte gUnknownThreadPtr_030063D4
_080187D8: .4byte gUnknownThreadPtr_03006414
_080187DC: .4byte gUnknownThreadPtr_030063EC
_080187E0: .4byte gUnknownThreadPtr_030063E4
_080187E4: .4byte gUnknownThreadPtr_03006400

	thumb_func_start sub_080187E8
sub_080187E8: @ 0x080187E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080188F0 @ =0x030063D8
	ldr r0, [r1]
	bl Free
	ldr r1, _080188F4 @ =gSpawnerThreads
	ldr r0, [r1]
	bl Free
	ldr r1, _080188F8 @ =gUnknownThreadPtr_0300640C
	ldr r0, [r1]
	bl Free
	ldr r1, _080188FC @ =gUnknownThreadPtr_03006410
	ldr r0, [r1]
	bl Free
	ldr r1, _08018900 @ =gUnknownThreadPtr_03006404
	ldr r0, [r1]
	bl Free
	ldr r1, _08018904 @ =gUnknownThreadPtr_03006408
	ldr r0, [r1]
	bl Free
	ldr r1, _08018908 @ =gUnknownThreadPtr_030063D0
	ldr r0, [r1]
	bl Free
	ldr r1, _0801890C @ =gUnknownThreadPtr_030063F4
	ldr r0, [r1]
	bl Free
	ldr r1, _08018910 @ =gUnknownThreadPtr_030063F0
	ldr r0, [r1]
	bl Free
	ldr r1, _08018914 @ =gUnknownThreadPtr_030063FC
	ldr r0, [r1]
	bl Free
	ldr r1, _08018918 @ =gUnknownThreadPtr_030063DC
	ldr r0, [r1]
	bl Free
	ldr r1, _0801891C @ =gUnknownThreadPtr_030063E0
	ldr r0, [r1]
	bl Free
	ldr r1, _08018920 @ =gUnknownThreadPtr_030063CC
	ldr r0, [r1]
	bl Free
	ldr r7, _08018924 @ =gUnknownThreadPtr_030063F8
	ldr r0, [r7]
	bl Free
	ldr r0, _08018928 @ =gUnknownThreadPtr_030063E8
	mov sl, r0
	ldr r0, [r0]
	bl Free
	ldr r1, _0801892C @ =gUnknownThreadPtr_030063D4
	mov sb, r1
	ldr r0, [r1]
	bl Free
	ldr r0, _08018930 @ =gUnknownThreadPtr_03006414
	mov r8, r0
	ldr r0, [r0]
	bl Free
	ldr r6, _08018934 @ =gUnknownThreadPtr_030063EC
	ldr r0, [r6]
	bl Free
	ldr r5, _08018938 @ =gUnknownThreadPtr_030063E4
	ldr r0, [r5]
	bl Free
	ldr r4, _0801893C @ =gUnknownThreadPtr_03006400
	ldr r0, [r4]
	bl Free
	movs r0, #0
	ldr r1, _080188F0 @ =0x030063D8
	str r0, [r1]
	ldr r1, _080188F4 @ =gSpawnerThreads
	str r0, [r1]
	ldr r1, _080188F8 @ =gUnknownThreadPtr_0300640C
	str r0, [r1]
	ldr r1, _080188FC @ =gUnknownThreadPtr_03006410
	str r0, [r1]
	ldr r1, _08018900 @ =gUnknownThreadPtr_03006404
	str r0, [r1]
	ldr r1, _08018904 @ =gUnknownThreadPtr_03006408
	str r0, [r1]
	ldr r1, _08018908 @ =gUnknownThreadPtr_030063D0
	str r0, [r1]
	ldr r1, _0801890C @ =gUnknownThreadPtr_030063F4
	str r0, [r1]
	ldr r1, _08018910 @ =gUnknownThreadPtr_030063F0
	str r0, [r1]
	ldr r1, _08018914 @ =gUnknownThreadPtr_030063FC
	str r0, [r1]
	ldr r1, _08018918 @ =gUnknownThreadPtr_030063DC
	str r0, [r1]
	ldr r1, _0801891C @ =gUnknownThreadPtr_030063E0
	str r0, [r1]
	ldr r1, _08018920 @ =gUnknownThreadPtr_030063CC
	str r0, [r1]
	str r0, [r7]
	mov r1, sl
	str r0, [r1]
	mov r1, sb
	str r0, [r1]
	mov r1, r8
	str r0, [r1]
	str r0, [r6]
	str r0, [r5]
	str r0, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080188F0: .4byte 0x030063D8
_080188F4: .4byte gSpawnerThreads
_080188F8: .4byte gUnknownThreadPtr_0300640C
_080188FC: .4byte gUnknownThreadPtr_03006410
_08018900: .4byte gUnknownThreadPtr_03006404
_08018904: .4byte gUnknownThreadPtr_03006408
_08018908: .4byte gUnknownThreadPtr_030063D0
_0801890C: .4byte gUnknownThreadPtr_030063F4
_08018910: .4byte gUnknownThreadPtr_030063F0
_08018914: .4byte gUnknownThreadPtr_030063FC
_08018918: .4byte gUnknownThreadPtr_030063DC
_0801891C: .4byte gUnknownThreadPtr_030063E0
_08018920: .4byte gUnknownThreadPtr_030063CC
_08018924: .4byte gUnknownThreadPtr_030063F8
_08018928: .4byte gUnknownThreadPtr_030063E8
_0801892C: .4byte gUnknownThreadPtr_030063D4
_08018930: .4byte gUnknownThreadPtr_03006414
_08018934: .4byte gUnknownThreadPtr_030063EC
_08018938: .4byte gUnknownThreadPtr_030063E4
_0801893C: .4byte gUnknownThreadPtr_03006400

	thumb_func_start sub_08018940
sub_08018940: @ 0x08018940
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r5, _08018A10 @ =0x030063D8
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
	ldr r3, _08018A10 @ =0x030063D8
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
	ldr r2, _08018A10 @ =0x030063D8
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
_08018A10: .4byte 0x030063D8
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
	ldr r0, _08018B90 @ =0x030063D8
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
_08018B90: .4byte 0x030063D8
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
	ldr r0, _08018C70 @ =0x030063D8
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
	ldr r0, _08018C70 @ =0x030063D8
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
	ldr r3, _08018C70 @ =0x030063D8
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
_08018C70: .4byte 0x030063D8
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
	ldr r4, _08018CDC @ =0x030063D8
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
_08018CDC: .4byte 0x030063D8
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
	ldr r4, _08018D4C @ =0x030063D8
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
_08018D4C: .4byte 0x030063D8
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
	ldr r4, _08018DD4 @ =0x030063D8
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
_08018DD4: .4byte 0x030063D8
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
	ldr r0, _08018E1C @ =0x030063D8
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
_08018E1C: .4byte 0x030063D8
_08018E20:
	ldr r5, _08018E48 @ =0x030063D8
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
_08018E48: .4byte 0x030063D8
_08018E4C:
	ldr r0, _08018E64 @ =0x030063D8
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
_08018E64: .4byte 0x030063D8
_08018E68:
	ldr r0, _08018E88 @ =0x030063D8
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
_08018E88: .4byte 0x030063D8
_08018E8C:
	ldr r0, _08018EAC @ =0x030063D8
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
_08018EAC: .4byte 0x030063D8
_08018EB0:
	ldr r0, _08018ED0 @ =0x030063D8
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
_08018ED0: .4byte 0x030063D8
_08018ED4:
	ldr r0, _08018EF4 @ =0x030063D8
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
_08018EF4: .4byte 0x030063D8
_08018EF8:
	ldr r0, _08018F3C @ =0x030063D8
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
_08018F3C: .4byte 0x030063D8
_08018F40: .4byte gMapLayer_03003910
_08018F44:
	ldr r0, _08018F90 @ =0x030063D8
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
_08018F90: .4byte 0x030063D8
_08018F94: .4byte gMapLayer_03003910
_08018F98:
	ldr r0, _08018FB8 @ =0x030063D8
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
_08018FB8: .4byte 0x030063D8
_08018FBC:
	ldr r0, _08019170 @ =0x030063D8
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
	ldr r0, _08019170 @ =0x030063D8
	ldr r0, [r0]
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	cmp r8, r0
	bhs _08019058
	b _08018CBC
_08019058:
	ldr r4, _08019170 @ =0x030063D8
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
_08019170: .4byte 0x030063D8
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
	ldr r4, _080191F4 @ =0x030063D8
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
_080191F4: .4byte 0x030063D8
_080191F8: .4byte 0x00000BB8

	thumb_func_start sub_080191FC
sub_080191FC: @ 0x080191FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r1, _08019238 @ =0x030063D8
	ldr r0, [r1]
	ldr r4, [r0, #4]
	ldr r0, [r0]
	ldrh r2, [r0, #0xc]
	movs r6, #0
	adds r7, r1, #0
	cmp r6, r2
	bhs _080192F6
	ldr r1, _0801923C @ =0x0300397C
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
_08019238: .4byte 0x030063D8
_0801923C: .4byte 0x0300397C
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

	thumb_func_start sub_08019300
sub_08019300: @ 0x08019300
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08019370 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r3, #0
	ldrh r0, [r0, #0xc]
	cmp r3, r0
	bhs _08019334
	adds r4, r0, #0
_0801931A:
	ldrh r2, [r1, #2]
	cmp r2, #3
	bne _08019324
	ldr r0, [r1, #4]
	adds r6, r1, r0
_08019324:
	cmp r2, #0
	bne _0801932C
	ldr r0, [r1, #4]
	adds r7, r1, r0
_0801932C:
	adds r3, #1
	adds r1, #8
	cmp r3, r4
	blo _0801931A
_08019334:
	cmp r5, #0
	bne _08019378
	bl GetMultiplayerId
	ldr r5, _08019374 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	adds r0, #0x58
	adds r1, r1, r0
	ldrh r0, [r7]
	lsls r0, r0, #0xf
	str r0, [r1]
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	adds r0, #0x5c
	adds r1, r1, r0
	ldrh r0, [r7, #2]
	lsls r0, r0, #0xf
	str r0, [r1]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	b _080193AE
	.align 2, 0
_08019370: .4byte 0x080FB0F8
_08019374: .4byte gPlayers
_08019378:
	bl GetMultiplayerId
	ldr r5, _080193B8 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	adds r0, #0x58
	adds r1, r1, r0
	ldrh r0, [r6, #0x38]
	lsls r0, r0, #0xf
	str r0, [r1]
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	adds r0, #0x5c
	adds r1, r1, r0
	ldrh r0, [r6, #0x3a]
	lsls r0, r0, #0xf
	str r0, [r1]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #0
_080193AE:
	strh r1, [r0, #0xa]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080193B8: .4byte gPlayers

	thumb_func_start EnemySpawnerThread
EnemySpawnerThread: @ 0x080193BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x18]
	ldr r3, _0801940C @ =0x030063D8
	ldr r1, [r3]
	lsls r2, r0, #2
	adds r0, r1, #0
	adds r0, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	mov sl, r0
	ldr r4, [sp, #0x18]
	lsls r0, r4, #1
	adds r1, #0x7a
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	str r5, [sp, #0x1c]
	adds r0, r2, r4
	str r2, [sp, #0x28]
	lsls r1, r0, #1
	movs r2, #0
_080193F2:
	ldr r0, [r3]
	adds r0, #0x48
	adds r0, r0, r1
	strh r2, [r0]
	adds r1, #2
	adds r5, #1
	cmp r5, #4
	bls _080193F2
	ldr r0, [sp, #0x18]
	lsls r0, r0, #1
	str r0, [sp, #0x24]
	b _08019704
	.align 2, 0
_0801940C: .4byte 0x030063D8
_08019410:
	add r0, sp, #8
	adds r5, #1
	strb r5, [r0, #8]
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #3
	ldr r0, _080194B0 @ =0x00000FFF
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, [sp, #0x10]
	ldr r2, _080194B4 @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x10]
	add r4, sp, #8
	mov r3, sl
	ldrh r2, [r3, #2]
	lsls r2, r2, #7
	ldrh r3, [r4, #0xa]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #0xa]
	adds r2, r4, #0
	ldrb r0, [r2, #0xc]
	ands r1, r0
	strb r1, [r2, #0xc]
	adds r3, r2, #0
	ldr r0, _080194B8 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #0x3f
	ands r1, r0
	ldrb r2, [r3, #0xd]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
	movs r2, #0xff
	ands r2, r6
	lsls r2, r2, #0xe
	ldr r0, [sp, #0x14]
	ldr r1, _080194BC @ =0xFFC03FFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x14]
	adds r2, r3, #0
	ldrb r1, [r2, #0xc]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldr r7, [sp, #0x1c]
	adds r7, #1
_08019484:
	add r0, sp, #8
	bl SpawnEnemy
	cmp r0, #0
	bne _080194C4
	bl sub_080074CC
	cmp r0, #0
	bne _080194A6
	ldr r0, _080194C0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080194AA
_080194A6:
	bl ThreadExit
_080194AA:
	bl WaitFrame
	b _08019484
	.align 2, 0
_080194B0: .4byte 0x00000FFF
_080194B4: .4byte 0xFFF000FF
_080194B8: .4byte gMapLayer_03003910
_080194BC: .4byte 0xFFC03FFF
_080194C0: .4byte 0x030063D8
_080194C4:
	ldr r4, _080194C8 @ =0x0300397C
	b _080194EC
	.align 2, 0
_080194C8: .4byte 0x0300397C
_080194CC:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _080194E8
	ldr r0, _0801954C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080194EC
_080194E8:
	bl ThreadExit
_080194EC:
	mov r0, sl
	ldrh r1, [r0]
	lsls r1, r1, #3
	ldrh r2, [r0, #2]
	lsls r2, r2, #3
	ldrh r0, [r4]
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08027318
	cmp r0, #0
	beq _080194CC
	ldr r0, _0801954C @ =0x030063D8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xa0
	mov r2, r8
	strh r2, [r0]
	adds r2, r1, #0
	adds r2, #0x7a
	ldr r3, [sp, #0x24]
	adds r2, r2, r3
	ldr r4, [sp, #0x28]
	ldr r5, [sp, #0x18]
	adds r0, r4, r5
	ldrh r3, [r2]
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r1, #0x48
	adds r1, r1, r0
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	str r7, [sp, #0x1c]
	mov r4, sl
	ldrh r5, [r4, #0x2e]
	cmp r5, #0
	beq _08019624
	subs r0, r5, #1
	cmp r0, r8
	bne _08019624
	b _08019570
	.align 2, 0
_0801954C: .4byte 0x030063D8
_08019550:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _0801956C
	ldr r0, _08019584 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019570
_0801956C:
	bl ThreadExit
_08019570:
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	bl IsEnemyTypeActive
	cmp r0, #0
	beq _08019550
	bl WaitFrame
	b _080195B8
	.align 2, 0
_08019584: .4byte 0x030063D8
_08019588:
	movs r5, #1
	ldr r4, [sp, #0x18]
	ands r4, r5
	ldr r6, _080195DC @ =gFrameCounter
_08019590:
	bl WaitFrame
	ldr r0, [r6]
	ands r0, r5
	cmp r4, r0
	beq _08019590
	bl sub_080074CC
	cmp r0, #0
	bne _080195B4
	ldr r0, _080195E0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080195B8
_080195B4:
	bl ThreadExit
_080195B8:
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	bl IsEnemyTypeActive
	cmp r0, #0
	bne _08019588
	ldr r0, _080195E0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019612
	ldr r0, _080195E4 @ =0x00000BB8
	bl SignalEvent
	b _08019608
	.align 2, 0
_080195DC: .4byte gFrameCounter
_080195E0: .4byte 0x030063D8
_080195E4: .4byte 0x00000BB8
_080195E8:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _08019604
	ldr r0, _08019620 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019608
_08019604:
	bl ThreadExit
_08019608:
	movs r0, #1
	bl sub_08029068
	cmp r0, #0
	beq _080195E8
_08019612:
	ldr r0, _08019620 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xab
	movs r1, #1
	strb r1, [r0]
	b _080196F2
	.align 2, 0
_08019620: .4byte 0x030063D8
_08019624:
	bl WaitFrame
	movs r5, #0
	ldr r0, [sp, #0x20]
	cmp r5, r0
	bhs _080196F2
_08019630:
	movs r6, #0
	movs r7, #0
	ldr r1, [sp, #0x1c]
	cmp r6, r1
	bhs _08019698
	ldr r2, _08019688 @ =0x030063D8
	mov sb, r2
	ldr r3, [sp, #0x28]
	ldr r4, [sp, #0x18]
	adds r0, r3, r4
	lsls r4, r0, #1
_08019646:
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x48
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801968C
	bl IsEnemyTypeActive
	adds r3, r0, #0
	cmp r3, #0
	bne _0801968E
	mov r2, sb
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x48
	adds r0, r0, r4
	strh r3, [r0]
	adds r1, #0x7a
	ldr r0, [sp, #0x24]
	adds r2, r1, r0
	ldrh r1, [r2]
	subs r1, #1
	strh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	mov ip, r0
	mov r0, ip
	ands r1, r0
	cmp r1, #0
	beq _0801968E
	strh r3, [r2]
	b _0801968E
	.align 2, 0
_08019688: .4byte 0x030063D8
_0801968C:
	adds r6, #1
_0801968E:
	adds r4, #2
	adds r7, #1
	ldr r1, [sp, #0x1c]
	cmp r7, r1
	blo _08019646
_08019698:
	ldr r0, _080196B4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x7a
	ldr r2, [sp, #0x24]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _080196AE
	ldr r3, [sp, #0x1c]
	cmp r6, r3
	blo _080196B8
_080196AE:
	movs r0, #0
	strh r0, [r1]
	b _080196F2
	.align 2, 0
_080196B4: .4byte 0x030063D8
_080196B8:
	adds r7, r5, #1
	movs r5, #1
	ldr r4, [sp, #0x18]
	ands r4, r5
	ldr r6, _08019718 @ =gFrameCounter
_080196C2:
	bl WaitFrame
	ldr r0, [r6]
	ands r0, r5
	cmp r4, r0
	beq _080196C2
	bl sub_080074CC
	cmp r0, #0
	bne _080196E6
	ldr r0, _0801971C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080196EA
_080196E6:
	bl ThreadExit
_080196EA:
	adds r5, r7, #0
	ldr r4, [sp, #0x20]
	cmp r5, r4
	blo _08019630
_080196F2:
	mov r5, sl
	ldrh r0, [r5, #0xa]
	ldrh r1, [r5, #0xc]
	adds r0, r0, r1
	ldrh r1, [r5, #0xe]
	adds r6, r0, r1
	cmp r6, #0
	bne _08019704
	b _08019830
_08019704:
	mov r2, sl
	ldrh r0, [r2, #0x2c]
	cmp r0, #1
	beq _08019782
	cmp r0, #1
	bgt _08019720
	cmp r0, #0
	beq _08019726
	b _080197EA
	.align 2, 0
_08019718: .4byte gFrameCounter
_0801971C: .4byte 0x030063D8
_08019720:
	cmp r0, #2
	beq _080197B8
	b _080197EA
_08019726:
	movs r4, #0
	mov r6, sl
	adds r6, #0xa
_0801972C:
	adds r4, #1
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801976A
	cmp r4, #5
	bls _0801972C
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	movs r5, #0
	adds r1, r6, #0
_0801975A:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08019762
	mov r8, r5
_08019762:
	adds r1, #2
	adds r5, #1
	cmp r5, #2
	bls _0801975A
_0801976A:
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x3c
	str r0, [sp, #0x20]
	b _080197EA
_08019782:
	movs r4, #0
	mov r8, r4
	mov r1, sl
	adds r1, #0xa
	mov r5, sl
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	bne _080197A4
_08019792:
	adds r1, #2
	movs r0, #1
	add r8, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080197A4
	mov r2, r8
	cmp r2, #2
	bls _08019792
_080197A4:
	mov r3, r8
	cmp r3, #3
	bne _080197B0
	movs r4, #1
	rsbs r4, r4, #0
	mov r8, r4
_080197B0:
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [sp, #0x20]
	b _080197EA
_080197B8:
	movs r0, #0
	mov r8, r0
	mov r1, sl
	adds r1, #0xa
	mov r2, sl
	ldrh r0, [r2, #0xa]
	cmp r0, #0
	bne _080197DA
_080197C8:
	adds r1, #2
	movs r3, #1
	add r8, r3
	ldrh r0, [r1]
	cmp r0, #0
	bne _080197DA
	mov r4, r8
	cmp r4, #2
	bls _080197C8
_080197DA:
	mov r5, r8
	cmp r5, #3
	bne _080197E6
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
_080197E6:
	movs r1, #1
	str r1, [sp, #0x20]
_080197EA:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq _08019830
	mov r3, r8
	lsls r2, r3, #1
	mov r0, sl
	adds r0, #4
	adds r0, r0, r2
	ldrh r5, [r0]
	mov r1, sl
	adds r1, #0xa
	adds r1, r1, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r3, _0801982C @ =0x030063D8
	ldr r1, [r3]
	adds r1, #0xaa
	ldrb r2, [r1]
	adds r6, r2, #0
	adds r6, #8
	adds r0, r2, #1
	strb r0, [r1]
	adds r0, r3, #0
	cmp r2, #0xf7
	bhi _08019822
	b _08019410
_08019822:
	ldr r0, [r0]
	adds r0, #0xaa
	movs r1, #1
	strb r1, [r0]
	b _08019410
	.align 2, 0
_0801982C: .4byte 0x030063D8
_08019830:
	movs r6, #0
	movs r7, #0
	ldr r4, [sp, #0x1c]
	cmp r6, r4
	bhs _0801989C
	ldr r5, _0801988C @ =0x030063D8
	mov r8, r5
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x18]
	adds r0, r1, r2
	lsls r4, r0, #1
_08019846:
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0x48
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0
	beq _08019890
	bl IsEnemyTypeActive
	adds r3, r0, #0
	cmp r3, #0
	bne _08019892
	mov r5, r8
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x48
	adds r0, r0, r4
	strh r3, [r0]
	adds r1, #0x7a
	ldr r0, [sp, #0x24]
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	cmp r0, #0
	beq _08019888
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r2, r0
	cmp r2, #0
	beq _08019892
_08019888:
	strh r3, [r1]
	b _0801989C
	.align 2, 0
_0801988C: .4byte 0x030063D8
_08019890:
	adds r6, #1
_08019892:
	adds r4, #2
	adds r7, #1
	ldr r0, [sp, #0x1c]
	cmp r7, r0
	blo _08019846
_0801989C:
	ldr r0, _080198E4 @ =0x030063D8
	ldr r1, [r0]
	adds r1, #0x7a
	ldr r2, [sp, #0x24]
	adds r1, r1, r2
	ldrh r1, [r1]
	cmp r1, #0
	beq _080198EC
	ldr r3, [sp, #0x1c]
	cmp r6, r3
	bhs _080198EC
	movs r5, #1
	ldr r4, [sp, #0x18]
	ands r4, r5
	ldr r6, _080198E8 @ =gFrameCounter
_080198BA:
	bl WaitFrame
	ldr r0, [r6]
	ands r0, r5
	cmp r4, r0
	beq _080198BA
	bl sub_080074CC
	cmp r0, #0
	bne _080198DE
	ldr r0, _080198E4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019830
_080198DE:
	bl ThreadExit
	b _08019830
	.align 2, 0
_080198E4: .4byte 0x030063D8
_080198E8: .4byte gFrameCounter
_080198EC:
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x7a
	ldr r4, [sp, #0x24]
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08019930 @ =0x0000FFFF
	mov r5, sl
	strh r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r5, #2]
	adds r0, r2, #0
	adds r0, #0xc
	ldr r3, [sp, #0x28]
	adds r0, r0, r3
	str r1, [r0]
	adds r2, #0x84
	movs r1, #1
	ldr r4, [sp, #0x18]
	lsls r1, r4
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019930: .4byte 0x0000FFFF

	thumb_func_start StartEnemySpawner
StartEnemySpawner: @ 0x08019934
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov sb, r1
	ldr r0, _08019950 @ =gSpawnerThreads
	mov r8, r0
	lsls r1, r7, #2
	adds r0, r1, r7
	lsls r5, r0, #3
	adds r4, r1, #0
	b _08019958
	.align 2, 0
_08019950: .4byte gSpawnerThreads
_08019954:
	bl WaitFrame
_08019958:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r5
	bl IsThreadInList
	adds r6, r0, #0
	cmp r6, #0
	bne _08019954
	ldr r5, _080199A8 @ =gSpawnerThreads
	ldr r1, [r5]
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	ldr r0, _080199AC @ =EnemySpawnerThread
	str r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #4
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _080199B0 @ =0x000007FC
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x46
	str r0, [r4, #8]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, sb
	bl CreateThread
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080199A8: .4byte gSpawnerThreads
_080199AC: .4byte EnemySpawnerThread
_080199B0: .4byte 0x000007FC

	thumb_func_start sub_080199B4
sub_080199B4: @ 0x080199B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r3, _080199E0 @ =0x030063D8
	movs r2, #0
_080199C4:
	ldr r0, [r3]
	lsls r1, r6, #1
	adds r0, #0x7a
	adds r0, r0, r1
	strh r2, [r0]
	adds r6, #1
	cmp r6, #4
	bls _080199C4
	movs r0, #0
	mov r8, r0
	movs r1, #1
	mov sb, r1
	b _08019B66
	.align 2, 0
_080199E0: .4byte 0x030063D8
_080199E4:
	bl sub_0800F430
	cmp r0, #0
	bne _080199EE
	b _08019B62
_080199EE:
	bl sub_08001F64
	cmp r0, #0
	bne _080199F8
	b _08019B62
_080199F8:
	movs r6, #0
	ldr r0, [r4]
	adds r0, #0x84
	ldrh r0, [r0]
	mov r3, sb
	ands r0, r3
	mov ip, r4
	cmp r0, #0
	beq _08019A24
	adds r3, r4, #0
	movs r1, #1
_08019A0E:
	adds r6, #1
	cmp r6, #4
	bls _08019A16
	b _08019B20
_08019A16:
	ldr r0, [r3]
	adds r0, #0x84
	ldrh r0, [r0]
	asrs r0, r6
	ands r0, r1
	cmp r0, #0
	bne _08019A0E
_08019A24:
	cmp r6, #4
	bhi _08019B20
	mov r5, ip
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08019B20
	adds r7, r6, #0
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #4
	ldr r1, [r3, #8]
	adds r4, r1, r0
	ldr r5, _08019A54 @ =gPlayers
	movs r6, #0
	movs r3, #1
	add r8, r3
	b _08019B06
	.align 2, 0
_08019A54: .4byte gPlayers
_08019A58:
	ldr r0, _08019B90 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	adds r5, #0xd4
	mov sl, r5
	cmp r1, r0
	bne _08019B02
	ldrh r0, [r2]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r2, r1, #0x17
	ldrh r1, [r4]
	lsrs r0, r0, #7
	subs r1, r1, r0
	cmp r1, #0
	bge _08019A86
	rsbs r1, r1, #0
_08019A86:
	cmp r1, #0xf
	bgt _08019B02
	ldrh r0, [r4, #2]
	subs r0, r0, r2
	cmp r0, #0
	bge _08019A94
	rsbs r0, r0, #0
_08019A94:
	cmp r0, #9
	bgt _08019B02
	movs r2, #0
	ldr r0, _08019B94 @ =0x030063D8
	ldr r3, [r0]
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r1, [r1]
	mov r5, sb
	ands r1, r5
	mov ip, r0
	cmp r1, #0
	beq _08019AB4
	ldr r0, [r3, #0xc]
	cmp r0, r4
	beq _08019ADA
_08019AB4:
	adds r2, #1
	cmp r2, #4
	bhi _08019ADE
	mov r0, ip
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrh r0, [r0]
	asrs r0, r2
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _08019AB4
	lsls r0, r2, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _08019AB4
_08019ADA:
	cmp r2, #4
	bls _08019B02
_08019ADE:
	mov r5, ip
	ldr r2, [r5]
	lsls r1, r7, #2
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	str r4, [r0]
	adds r2, #0x84
	mov r0, sb
	lsls r0, r7
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	adds r0, r7, #0
	adds r1, r6, #0
	bl StartEnemySpawner
	movs r6, #4
_08019B02:
	adds r6, #1
	mov r5, sl
_08019B06:
	bl sub_08001EC4
	cmp r6, r0
	blo _08019A58
	ldr r1, _08019B94 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0x9e
	mov ip, r1
	ldrh r0, [r0]
	cmp r8, r0
	blo _08019B20
	movs r0, #0
	mov r8, r0
_08019B20:
	mov r1, ip
	ldr r0, [r1]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _08019B62
	movs r3, #0
	movs r6, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r3, r0
	bhs _08019B52
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, _08019B94 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r1, [r0]
_08019B42:
	ldr r0, [r4]
	cmp r0, r5
	bne _08019B4A
	adds r3, #1
_08019B4A:
	adds r6, #1
	adds r4, #0x30
	cmp r6, r1
	blo _08019B42
_08019B52:
	mov r5, ip
	ldr r0, [r5]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r3, r0
	bne _08019B62
	bl ThreadExit
_08019B62:
	bl WaitFrame
_08019B66:
	bl sub_080074CC
	cmp r0, #0
	bne _08019B80
	ldr r4, _08019B94 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019B80
	b _080199E4
_08019B80:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019B90: .4byte gMapLayer_03003910
_08019B94: .4byte 0x030063D8

	thumb_func_start sub_08019B98
sub_08019B98: @ 0x08019B98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r6, #0
	ldr r0, _08019BEC @ =0x030063D8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrh r0, [r0]
	mov sl, r0
	mov sb, r6
	adds r7, r1, #0
	adds r7, #0x7a
	mov ip, r6
_08019BBA:
	mov r1, sl
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	adds r3, r6, #1
	cmp r1, #0
	beq _08019BF8
	movs r4, #0
	ldrh r0, [r7]
	cmp r4, r0
	bhs _08019BF8
	ldr r0, _08019BEC @ =0x030063D8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x7a
	add r0, ip
	ldrh r5, [r0]
	mov r2, sb
	adds r1, #0x48
_08019BE0:
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, r8
	bne _08019BF0
	adds r0, r3, #0
	b _08019C30
	.align 2, 0
_08019BEC: .4byte 0x030063D8
_08019BF0:
	adds r2, #2
	adds r4, #1
	cmp r4, r5
	blo _08019BE0
_08019BF8:
	movs r0, #0xa
	add sb, r0
	adds r7, #2
	movs r0, #2
	add ip, r0
	adds r6, #1
	cmp r6, #4
	bls _08019BBA
	movs r6, #0
	ldr r0, _08019C24 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x84
	ldrh r1, [r0]
	movs r2, #1
_08019C14:
	adds r0, r1, #0
	asrs r0, r6
	ands r0, r2
	cmp r0, #0
	beq _08019C28
	adds r0, r6, #1
	b _08019C30
	.align 2, 0
_08019C24: .4byte 0x030063D8
_08019C28:
	adds r6, #1
	cmp r6, #4
	bls _08019C14
	movs r0, #0
_08019C30:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019C40
sub_08019C40: @ 0x08019C40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x104
	str r0, [sp, #0x9c]
	str r1, [sp, #0xa0]
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08019D7C @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0xc0]
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	bne _08019C66
	b _08019D8C
_08019C66:
	ldr r0, _08019D80 @ =0x0010003E
	bl GetDataRecord
	str r0, [sp, #0xa8]
	ldr r0, _08019D84 @ =0x0011003E
	bl GetDataRecord
	str r0, [sp, #0xa4]
	ldr r0, _08019D88 @ =0x0013003E
	bl GetDataRecord
	str r0, [sp, #0xac]
	add r1, sp, #0x5c
	movs r0, #5
	strb r0, [r1, #5]
	movs r0, #6
	strb r0, [r1, #6]
	movs r0, #7
	strb r0, [r1, #7]
	movs r2, #0
	str r2, [sp, #0xb8]
	mov sb, r2
	mov r3, sp
	adds r3, #0x94
	str r3, [sp, #0xf8]
	add r4, sp, #0x2c
	mov sl, r4
	add r0, sp, #0x50
	mov r8, r0
	add r7, sp, #0x20
	add r6, sp, #0x38
	add r5, sp, #0x44
	add r4, sp, #0x14
_08019CA8:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08019CB8
	adds r0, #0x1f
_08019CB8:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x82
	mov r1, sl
	str r0, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08019CF4
	rsbs r0, r0, #0
_08019CF4:
	adds r0, #1
	str r0, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08019D08
	adds r0, #0x1f
_08019D08:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x82
	str r0, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08019D42
	rsbs r0, r0, #0
_08019D42:
	adds r0, #1
	mov r2, r8
	str r0, [r2]
	mov r3, sl
	ldm r3!, {r0}
	lsls r0, r0, #8
	mov sl, r3
	subs r3, #4
	stm r3!, {r0}
	ldr r0, [r6]
	lsls r0, r0, #8
	stm r6!, {r0}
	ldr r0, [r5]
	lsls r0, r0, #7
	stm r5!, {r0}
	ldm r2!, {r0}
	lsls r0, r0, #7
	mov r8, r2
	subs r2, #4
	stm r2!, {r0}
	adds r7, #4
	adds r4, #4
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #2
	bls _08019CA8
	b _08019DF8
	.align 2, 0
_08019D7C: .4byte gPlayers
_08019D80: .4byte 0x0010003E
_08019D84: .4byte 0x0011003E
_08019D88: .4byte 0x0013003E
_08019D8C:
	bl sub_08006114
	cmp r0, #0
	bne _08019DD4
	ldr r4, _08019DD0 @ =gMapLayer_03003910
	adds r4, #0x8c
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl GetDataRecord
	str r0, [sp, #0xa8]
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xa4]
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xac]
	add r1, sp, #0x5c
	movs r0, #0xe
	strb r0, [r1, #0xe]
	mov r2, sp
	adds r2, #0x94
	str r2, [sp, #0xf8]
	b _08019DF8
	.align 2, 0
_08019DD0: .4byte gMapLayer_03003910
_08019DD4:
	ldr r0, _08019E44 @ =0x00100064
	bl GetDataRecord
	str r0, [sp, #0xa8]
	ldr r0, _08019E48 @ =0x00110064
	bl GetDataRecord
	str r0, [sp, #0xa4]
	ldr r0, _08019E4C @ =0x00130064
	bl GetDataRecord
	str r0, [sp, #0xac]
	add r1, sp, #0x5c
	movs r0, #0xf
	strb r0, [r1, #0xf]
	mov r3, sp
	adds r3, #0x94
	str r3, [sp, #0xf8]
_08019DF8:
	ldr r4, _08019E50 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xa2
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08019E54 @ =0x00000BB8
	bl _08000400
	bl sub_080074CC
	cmp r0, #0
	bne _08019E1E
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019E22
_08019E1E:
	bl ThreadExit
_08019E22:
	bl sub_08007544
	cmp r0, #0
	bne _08019E38
	bl sub_080075AC
	cmp r0, #0
	bne _08019E38
	movs r0, #0x5d
	bl PlaySE
_08019E38:
	movs r5, #0
	ldr r4, [sp, #0xf8]
	strh r5, [r4]
	movs r0, #0
	str r0, [sp, #0xbc]
	b _0801A5C6
	.align 2, 0
_08019E44: .4byte 0x00100064
_08019E48: .4byte 0x00110064
_08019E4C: .4byte 0x00130064
_08019E50: .4byte 0x030063D8
_08019E54: .4byte 0x00000BB8
_08019E58:
	ldr r0, [sp, #0xc0]
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _08019E98 @ =0x0000F00F
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #9
	bne _08019E70
	ldr r3, [sp, #0xb0]
	adds r3, #1
	str r3, [sp, #0xb0]
_08019E70:
	ldr r4, [sp, #0xa0]
	cmp r4, #0
	bne _08019ECE
	bl sub_08006114
	cmp r0, #0
	bne _08019EAE
	ldr r0, [sp, #0xb0]
	cmp r0, #0
	beq _08019E9C
	movs r1, #1
	str r1, [sp, #0xb0]
	mov r2, sp
	adds r2, #0x98
	str r2, [sp, #0xfc]
	movs r3, #0x9a
	add r3, sp
	mov sl, r3
	b _08019F4C
	.align 2, 0
_08019E98: .4byte 0x0000F00F
_08019E9C:
	ldr r4, [sp, #0xa0]
	str r4, [sp, #0xb0]
	mov r0, sp
	adds r0, #0x98
	str r0, [sp, #0xfc]
	movs r1, #0x9a
	add r1, sp
	mov sl, r1
	b _08019F4C
_08019EAE:
	movs r2, #1
	str r2, [sp]
	movs r0, #0
	ldr r1, [sp, #0xf8]
	mov r2, sp
	adds r2, #0x96
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	mov r3, sp
	adds r3, #0x98
	str r3, [sp, #0xfc]
	movs r4, #0x9a
	add r4, sp
	mov sl, r4
	b _08019F4C
_08019ECE:
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	ldr r1, [sp, #0xf8]
	mov r2, sp
	adds r2, #0x96
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	movs r1, #0
	mov sb, r1
	mov r2, sp
	adds r2, #0x8c
	str r2, [sp, #0xf4]
	mov r3, sp
	adds r3, #0x78
	str r3, [sp, #0xe8]
	mov r4, sp
	adds r4, #0x98
	str r4, [sp, #0xfc]
	movs r0, #0x9a
	add r0, sp
	mov sl, r0
	movs r1, #1
	mov r8, r1
	mov r7, sp
	adds r7, #0x72
	mov r6, sp
	adds r6, #0x86
	add r5, sp, #0x6c
	add r4, sp, #0x80
_08019F0C:
	mov r2, r8
	str r2, [sp]
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	mov r3, r8
	str r3, [sp]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r7, #0
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	adds r7, #2
	adds r6, #2
	adds r5, #2
	adds r4, #2
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #2
	bls _08019F0C
	str r0, [sp]
	movs r0, #3
	ldr r1, [sp, #0xf4]
	ldr r2, [sp, #0xe8]
	ldr r3, [sp, #0xa8]
	bl sub_08004214
_08019F4C:
	ldr r2, [sp, #0x9c]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r2, #6]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [sp, #0xfc]
	mov r3, sl
	bl sub_08005FC4
	bl sub_08007510
	cmp r0, #0
	beq _08019F74
	b _0801A322
_08019F74:
	bl sub_08007544
	cmp r0, #0
	beq _08019F7E
	b _0801A322
_08019F7E:
	bl sub_08007604
	cmp r0, #0
	beq _08019F88
	b _0801A322
_08019F88:
	bl sub_080075AC
	cmp r0, #0
	beq _08019F92
	b _0801A322
_08019F92:
	ldr r3, [sp, #0x9c]
	ldrh r0, [r3, #4]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb4]
	ldr r4, [sp, #0xa0]
	cmp r4, #0
	bne _08019FB0
	b _0801A1C4
_08019FB0:
	bl sub_08007510
	cmp r0, #0
	bne _08019FF4
	bl sub_08007604
	adds r1, r0, #0
	cmp r1, #0
	bne _08019FF4
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #0x1f
	movs r2, #1
	ldr r3, [sp, #0xb8]
	bl sub_080044E4
	ldr r0, _0801A1C0 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08019FEA
	ldr r0, [sp, #0xb8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
_08019FEA:
	ldr r0, [sp, #0xb8]
	cmp r0, #0x10
	bls _08019FF4
	movs r1, #0x10
	str r1, [sp, #0xb8]
_08019FF4:
	movs r0, #0x15
	ldr r1, [sp, #0xac]
	adds r1, #0xa0
	movs r2, #3
	bl LoadPalette
	ldr r2, [sp, #0xfc]
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r4, sl
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r4, [sp, #0xf8]
	ldrh r3, [r4]
	movs r2, #0
	str r2, [sp]
	add r2, sp, #0x5c
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r4, #1
	str r4, [sp, #0x10]
	movs r2, #0
	bl sub_08003FA4
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	add r4, sp, #0x80
	ldrh r3, [r4, #0xc]
	ldr r2, [sp, #0xb4]
	str r2, [sp]
	add r2, sp, #0x5c
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004418
	movs r3, #0
	mov sb, r3
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0xe0]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0xdc]
	mov r2, sp
	adds r2, #0x50
	str r2, [sp, #0xe4]
	str r4, [sp, #0xec]
	mov r3, sp
	adds r3, #0x86
	str r3, [sp, #0xf0]
	mov r7, sl
	ldr r4, [sp, #0xfc]
	str r4, [sp, #0xc4]
	add r6, sp, #0x38
	add r5, sp, #0x2c
	subs r0, #0x30
	str r0, [sp, #0x100]
	movs r1, #0
	mov r8, r1
	adds r2, #0xc
	str r2, [sp, #0xc8]
_0801A084:
	ldr r1, [sp, #0xe0]
	add r1, r8
	ldr r0, [r5]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r5]
	movs r3, #0
	ldrsh r1, [r7, r3]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801A0DE
	bl Random
	movs r4, #0
	ldrsh r2, [r7, r4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0801A0B4
	adds r0, #0x1f
_0801A0B4:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	str r0, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x100]
	str r0, [r1]
	ldr r0, [r5]
	lsls r0, r0, #8
	str r0, [r5]
_0801A0DE:
	ldr r1, [sp, #0xe4]
	add r1, r8
	ldr r0, [r6]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r6]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801A13E
	bl Random
	mov r4, sl
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0801A112
	adds r0, #0x1f
_0801A112:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	str r0, [r6]
	bl Random
	ldr r4, [sp, #0xdc]
	add r4, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4]
	ldr r0, [r6]
	lsls r0, r0, #8
	str r0, [r6]
_0801A13E:
	ldr r2, [sp, #0xc4]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r4, [sp, #0x100]
	ldm r4!, {r1}
	str r4, [sp, #0x100]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldm r5!, {r2}
	asrs r2, r2, #8
	adds r1, r1, r2
	mov r3, sb
	lsls r4, r3, #1
	ldr r3, [sp, #0xec]
	adds r2, r3, r4
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	ldr r2, [sp, #0xc8]
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	bl sub_08003FA4
	ldr r3, [sp, #0xc4]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r1, [sp, #0xdc]
	add r1, r8
	ldr r1, [r1]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldm r6!, {r2}
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r3, [sp, #0xf0]
	adds r4, r3, r4
	ldrh r3, [r4]
	movs r4, #0
	str r4, [sp]
	ldr r2, [sp, #0xc8]
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r4, #1
	str r4, [sp, #0x10]
	movs r2, #2
	bl sub_08003FA4
	movs r0, #4
	add r8, r0
	add sb, r4
	mov r1, sb
	cmp r1, #2
	bhi _0801A1BE
	b _0801A084
_0801A1BE:
	b _0801A322
	.align 2, 0
_0801A1C0: .4byte gFrameCounter
_0801A1C4:
	bl sub_08006114
	cmp r0, #0
	bne _0801A2C2
	movs r0, #0x1e
	ldr r2, [sp, #0xac]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r2, #1
	bl LoadPalette
	ldr r0, _0801A22C @ =0x030063D8
	ldr r0, [r0]
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _0801A258
	ldr r1, _0801A230 @ =gMapLayer_03003910
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #4
	beq _0801A208
	cmp r0, #9
	bne _0801A234
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0801A234
_0801A208:
	add r4, sp, #0x80
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	add r2, sp, #0x6c
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	b _0801A2DE
	.align 2, 0
_0801A22C: .4byte 0x030063D8
_0801A230: .4byte gMapLayer_03003910
_0801A234:
	ldr r3, [sp, #0xfc]
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xb0]
	lsls r3, r4, #0x10
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0xb4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	b _0801A2EE
_0801A258:
	ldr r0, _0801A294 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #4
	bne _0801A298
	add r4, sp, #0x80
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	add r2, sp, #0x6c
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	ldr r4, [sp, #0xb4]
	str r4, [sp]
	add r2, sp, #0x5c
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	b _0801A2BA
	.align 2, 0
_0801A294: .4byte gMapLayer_03003910
_0801A298:
	ldr r3, [sp, #0xfc]
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xb0]
	lsls r3, r4, #0x10
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0xb4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
_0801A2BA:
	movs r2, #0
	bl sub_08004344
	b _0801A322
_0801A2C2:
	ldr r0, _0801A2F8 @ =0x030063D8
	ldr r0, [r0]
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _0801A2FC
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0xf8]
	ldrh r3, [r2]
_0801A2DE:
	ldr r4, [sp, #0xb4]
	str r4, [sp]
	add r2, sp, #0x5c
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
_0801A2EE:
	movs r2, #0
	bl sub_08004418
	b _0801A322
	.align 2, 0
_0801A2F8: .4byte 0x030063D8
_0801A2FC:
	ldr r3, [sp, #0xfc]
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xf8]
	ldrh r3, [r4]
	ldr r2, [sp, #0xb4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_0801A322:
	bl sub_0800F430
	cmp r0, #0
	beq _0801A3F0
	bl sub_080271D0
	cmp r0, #0
	bne _0801A3F0
	bl sub_080076E0
	cmp r0, #0
	bne _0801A3F0
	ldr r1, [sp, #0xc0]
	ldrh r0, [r1, #0xc]
	cmp r0, #9
	beq _0801A3F0
	cmp r0, #5
	beq _0801A3F0
	bl sub_08016FA0
	cmp r0, #0
	bne _0801A3F0
	ldr r0, _0801A3E8 @ =gFrameCounter
	ldr r0, [r0]
	movs r2, #1
	ands r0, r2
	ldr r3, [sp, #0xc0]
	ldr r2, [r3, #0x58]
	ldr r3, [r3, #0x5c]
	cmp r0, #0
	beq _0801A3A6
	asrs r0, r2, #0xf
	ldr r4, [sp, #0xfc]
	strh r0, [r4]
	asrs r0, r3, #0xf
	mov r1, sl
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r4, [sp, #0x9c]
	ldrh r0, [r4, #4]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801A37C
	rsbs r1, r1, #0
_0801A37C:
	cmp r1, #1
	bgt _0801A3A2
	mov r0, sl
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, [sp, #0x9c]
	ldrh r0, [r4, #6]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801A392
	rsbs r1, r1, #0
_0801A392:
	cmp r1, #1
	bgt _0801A3A2
	ldr r1, [sp, #0xc0]
	ldrh r0, [r1, #0x16]
	movs r4, #1
	str r4, [sp, #0xbc]
	cmp r0, #0
	bne _0801A3A6
_0801A3A2:
	movs r0, #0
	str r0, [sp, #0xbc]
_0801A3A6:
	asrs r0, r2, #0xf
	ldr r1, [sp, #0xfc]
	strh r0, [r1]
	asrs r0, r3, #0xf
	mov r2, sl
	strh r0, [r2]
	ldr r3, [sp, #0xbc]
	cmp r3, #0
	beq _0801A430
	ldr r4, [sp, #0xc0]
	ldrh r1, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0801A430
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x10]
	ldr r0, _0801A3EC @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r4, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801A430
	movs r0, #9
	strh r0, [r4, #0xc]
	strh r2, [r4, #0xe]
	b _0801A430
	.align 2, 0
_0801A3E8: .4byte gFrameCounter
_0801A3EC: .4byte gKeysNew
_0801A3F0:
	bl sub_080271D0
	cmp r0, #0
	bne _0801A430
	bl sub_080076E0
	cmp r0, #0
	bne _0801A430
	ldr r3, [sp, #0xc0]
	ldrh r0, [r3, #0xc]
	cmp r0, #9
	bne _0801A430
	ldrh r3, [r3, #0xe]
	cmp r3, #0
	bne _0801A430
	ldr r4, [sp, #0xc0]
	ldrh r1, [r4, #0x10]
	movs r0, #0x10
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r4, #0x10]
	ldr r0, _0801A454 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r4, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801A430
	strh r3, [r4, #0xc]
	ldr r1, _0801A458 @ =0x0000FFFC
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4, #0x10]
_0801A430:
	bl sub_080074F0
	cmp r0, #0
	bne _0801A43A
	b _0801A5B0
_0801A43A:
	bl sub_08001F64
	cmp r0, #0
	bne _0801A444
	b _0801A59C
_0801A444:
	bl sub_08006114
	cmp r0, #0
	bne _0801A52E
	movs r5, #0
	mov sb, r5
	ldr r6, _0801A45C @ =0x03004650
	b _0801A4A6
	.align 2, 0
_0801A454: .4byte gKeysNew
_0801A458: .4byte 0x0000FFFC
_0801A45C: .4byte 0x03004650
_0801A460:
	movs r0, #0xd4
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	ldr r3, _0801A4C4 @ =0x0000F00F
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #9
	bne _0801A47E
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801A47E:
	bl sub_08001EC4
	cmp r0, #1
	ble _0801A4A2
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0801A4A2
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0801A4A2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801A4A2:
	movs r4, #1
	add sb, r4
_0801A4A6:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801A460
	bl sub_08001EC4
	cmp r5, r0
	bne _0801A59C
	movs r0, #1
	cmp r0, #0
	beq _0801A59C
	movs r5, #0
	mov sb, r5
	ldr r4, _0801A4C8 @ =0x03004650
	b _0801A4F6
	.align 2, 0
_0801A4C4: .4byte 0x0000F00F
_0801A4C8: .4byte 0x03004650
_0801A4CC:
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0801A4F2
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0801A4F2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801A4F2:
	movs r2, #1
	add sb, r2
_0801A4F6:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801A4CC
	bl sub_08001EC4
	cmp r5, r0
	beq _0801A59C
	ldr r0, _0801A514 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xa2
	movs r3, #1
	strh r3, [r0]
	b _0801A51C
	.align 2, 0
_0801A514: .4byte 0x030063D8
_0801A518:
	bl WaitFrame
_0801A51C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	cmp r0, #0
	beq _0801A518
	b _0801A59C
_0801A52E:
	movs r5, #0
	mov sb, r5
	ldr r6, _0801A53C @ =0x03004650
	ldr r0, _0801A540 @ =0x0000F00F
	adds r4, r0, #0
	b _0801A562
	.align 2, 0
_0801A53C: .4byte 0x03004650
_0801A540: .4byte 0x0000F00F
_0801A544:
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	ands r0, r4
	cmp r0, #9
	bne _0801A55E
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801A55E:
	movs r2, #1
	add sb, r2
_0801A562:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801A544
	bl sub_08001EC4
	cmp r5, r0
	bne _0801A59C
	movs r3, #1
	cmp r3, #0
	beq _0801A59C
	ldr r0, _0801A584 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xa2
	movs r4, #1
	strh r4, [r0]
	b _0801A58C
	.align 2, 0
_0801A584: .4byte 0x030063D8
_0801A588:
	bl WaitFrame
_0801A58C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	cmp r0, #0
	beq _0801A588
_0801A59C:
	ldr r0, _0801A5AC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xa2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801A5E0
	b _0801A5C2
	.align 2, 0
_0801A5AC: .4byte 0x030063D8
_0801A5B0:
	ldr r0, _0801A62C @ =gPlayers
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _0801A630 @ =0x0000F00F
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #9
	beq _0801A5E0
_0801A5C2:
	bl WaitFrame
_0801A5C6:
	bl sub_080074CC
	cmp r0, #0
	bne _0801A5E0
	ldr r0, _0801A634 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A5E0
	b _08019E58
_0801A5E0:
	bl sub_08001F98
	cmp r0, #0
	bne _0801A5EE
	movs r0, #2
	bl FadeOutBGM
_0801A5EE:
	bl sub_080074CC
	cmp r0, #0
	beq _0801A608
	ldr r0, _0801A634 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801A608
	b _0801AAB0
_0801A608:
	bl sub_08007544
	cmp r0, #0
	bne _0801A65E
	bl sub_080075AC
	cmp r0, #0
	bne _0801A65E
	movs r0, #0x74
	bl StopSE
	ldr r3, [sp, #0xa0]
	cmp r3, #0
	beq _0801A638
	movs r0, #0x24
	bl PlaySE
	b _0801A64E
	.align 2, 0
_0801A62C: .4byte gPlayers
_0801A630: .4byte 0x0000F00F
_0801A634: .4byte 0x030063D8
_0801A638:
	bl sub_08006114
	cmp r0, #0
	bne _0801A648
	movs r0, #0x65
	bl PlaySE
	b _0801A64E
_0801A648:
	movs r0, #0x24
	bl PlaySE
_0801A64E:
	movs r1, #0
	movs r0, #9
	ldr r4, [sp, #0xc0]
	strh r0, [r4, #0xc]
	strh r1, [r4, #0xe]
	movs r0, #6
	bl sub_0800F3A0
_0801A65E:
	mov r0, sp
	adds r0, #0x5c
	str r0, [sp, #0xcc]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xd0]
	ldr r2, [sp, #0xb4]
	str r2, [sp, #0xd4]
	ldr r3, [sp, #0xb0]
	lsls r3, r3, #0x10
	str r3, [sp, #0xd8]
	b _0801A9C6
_0801A676:
	bl sub_08007510
	adds r6, r0, #0
	cmp r6, #0
	beq _0801A682
	b _0801A9C2
_0801A682:
	ldr r7, _0801A89C @ =gMapLayer_03003910
	adds r1, r7, #0
	adds r1, #0x6c
	ldr r4, [sp, #0xc0]
	ldrh r0, [r4, #0x16]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0801A694
	b _0801A9C2
_0801A694:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r5, sp, #0x98
	mov r4, sp
	adds r4, #0x9a
	movs r2, #0x30
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08005FC4
	mov sl, r4
	ldr r2, [sp, #0xa0]
	cmp r2, #0
	bne _0801A6C0
	b _0801A8A0
_0801A6C0:
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0x1f
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x15
	ldr r1, [sp, #0xac]
	adds r1, #0xa0
	movs r2, #3
	bl LoadPalette
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0xf8]
	ldrh r3, [r2]
	str r6, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r2, #0
	bl sub_08003FA4
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0xd0]
	ldrh r3, [r2, #0xc]
	ldr r2, [sp, #0xd4]
	str r2, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	mov sb, r3
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0xe0]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0xdc]
	mov r2, sp
	adds r2, #0x50
	str r2, [sp, #0xe4]
	mov r3, sp
	adds r3, #0x80
	str r3, [sp, #0xec]
	adds r0, #0x42
	str r0, [sp, #0xf0]
	add r6, sp, #0x38
	add r5, sp, #0x2c
	add r1, sp, #0x14
	mov r8, r1
	movs r7, #0
_0801A74E:
	ldr r2, [sp, #0xe0]
	adds r1, r2, r7
	ldr r0, [r5]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r5]
	movs r4, #0x9a
	add r4, sp
	movs r3, #0
	ldrsh r1, [r4, r3]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801A7B0
	bl Random
	movs r3, #0x9a
	add r3, sp
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0801A786
	adds r0, #0x1f
_0801A786:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	str r0, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, r8
	str r0, [r4]
	ldr r0, [r5]
	lsls r0, r0, #8
	str r0, [r5]
_0801A7B0:
	ldr r0, [sp, #0xe4]
	adds r1, r0, r7
	ldr r0, [r6]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r6]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801A810
	bl Random
	mov r4, sl
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0801A7E4
	adds r0, #0x1f
_0801A7E4:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	str r0, [r6]
	bl Random
	ldr r2, [sp, #0xdc]
	adds r4, r2, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4]
	ldr r0, [r6]
	lsls r0, r0, #8
	str r0, [r6]
_0801A810:
	add r4, sp, #0x98
	movs r3, #0
	ldrsh r0, [r4, r3]
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r0, r1
	movs r4, #0x9a
	add r4, sp
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldm r5!, {r2}
	asrs r2, r2, #8
	adds r1, r1, r2
	mov r2, sb
	lsls r4, r2, #1
	ldr r3, [sp, #0xec]
	adds r2, r3, r4
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	bl sub_08003FA4
	add r1, sp, #0x98
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r2, [sp, #0xdc]
	adds r1, r2, r7
	ldr r1, [r1]
	adds r0, r0, r1
	movs r2, #0x9a
	add r2, sp
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldm r6!, {r2}
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r3, [sp, #0xf0]
	adds r4, r3, r4
	ldrh r3, [r4]
	movs r4, #0
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #8]
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0xc]
	movs r4, #1
	str r4, [sp, #0x10]
	movs r2, #2
	bl sub_08003FA4
	adds r7, #4
	add sb, r4
	mov r0, sb
	cmp r0, #2
	bhi _0801A89A
	b _0801A74E
_0801A89A:
	b _0801A9C2
	.align 2, 0
_0801A89C: .4byte gMapLayer_03003910
_0801A8A0:
	bl sub_08006114
	cmp r0, #0
	bne _0801A970
	movs r0, #0x1e
	ldr r2, [sp, #0xac]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r2, #1
	bl LoadPalette
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _0801A90E
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #4
	bne _0801A8EA
	movs r2, #1
	str r2, [sp]
	movs r0, #0
	ldr r1, [sp, #0xd0]
	add r2, sp, #0x6c
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r4, [sp, #0xd0]
	b _0801A986
_0801A8EA:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0xd4]
	str r3, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r3, [sp, #0xa4]
	str r3, [sp, #0xc]
	movs r2, #0
	ldr r4, [sp, #0xd8]
	lsrs r3, r4, #0x10
	bl sub_08004418
	b _0801A9C2
_0801A90E:
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #4
	bne _0801A94C
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	ldr r1, [sp, #0xd0]
	add r2, sp, #0x6c
	ldr r3, [sp, #0xa8]
	bl sub_08004214
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r4, [sp, #0xd0]
	ldrh r3, [r4]
	ldr r2, [sp, #0xd4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _0801A9C2
_0801A94C:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0xd4]
	str r3, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r3, [sp, #0xa4]
	str r3, [sp, #0xc]
	movs r2, #0
	ldr r4, [sp, #0xd8]
	lsrs r3, r4, #0x10
	bl sub_08004344
	b _0801A9C2
_0801A970:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _0801A9A0
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r4, [sp, #0xf8]
_0801A986:
	ldrh r3, [r4]
	ldr r2, [sp, #0xd4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	movs r2, #0
	bl sub_08004418
	b _0801A9C2
_0801A9A0:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r4, [sp, #0xf8]
	ldrh r3, [r4]
	ldr r2, [sp, #0xd4]
	str r2, [sp]
	add r4, sp, #0x5c
	str r4, [sp, #4]
	ldr r2, [sp, #0xa8]
	str r2, [sp, #8]
	ldr r4, [sp, #0xa4]
	str r4, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_0801A9C2:
	bl WaitFrame
_0801A9C6:
	bl sub_0800F298
	cmp r0, #0
	bne _0801A9EA
	bl sub_080074CC
	cmp r0, #0
	bne _0801A9EA
	ldr r0, _0801AA6C @ =0x030063D8
	mov r8, r0
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A9EA
	b _0801A676
_0801A9EA:
	ldr r1, [sp, #0xa0]
	cmp r1, #0
	beq _0801AA9C
	bl sub_080292D0
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	ldr r4, _0801AA70 @ =gMapLayer_03003910
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _0801AA7C
	bl sub_08007544
	cmp r0, #0
	bne _0801AAB0
	bl sub_080075AC
	adds r6, r0, #0
	cmp r6, #0
	bne _0801AAB0
	ldr r0, [r4, #0x78]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x78]
	bl sub_0801702C
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6e
	strh r6, [r0]
	ldr r0, _0801AA74 @ =0x000514C9
	bl SignalEvent
	bl sub_08007554
	bl GetMultiplayerId
	ldr r5, _0801AA78 @ =gPlayers
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x16]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0xc]
	movs r0, #1
	bl sub_08019300
	b _0801AAB0
	.align 2, 0
_0801AA6C: .4byte 0x030063D8
_0801AA70: .4byte gMapLayer_03003910
_0801AA74: .4byte 0x000514C9
_0801AA78: .4byte gPlayers
_0801AA7C:
	ldr r0, _0801AA94 @ =0x000514C8
	bl SignalEvent
	ldr r0, _0801AA98 @ =0x000514C9
	bl SignalEvent
	bl sub_08007500
	bl sub_08007588
	b _0801AAB0
	.align 2, 0
_0801AA94: .4byte 0x000514C8
_0801AA98: .4byte 0x000514C9
_0801AA9C:
	ldr r1, _0801AAC0 @ =gMapLayer_03003910
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r0, #1
	adds r1, #0x6e
	strh r0, [r1]
	ldr r0, _0801AAC4 @ =0x00000BB9
	bl SignalEvent
_0801AAB0:
	add sp, #0x104
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AAC0: .4byte gMapLayer_03003910
_0801AAC4: .4byte 0x00000BB9

	thumb_func_start sub_0801AAC8
sub_0801AAC8: @ 0x0801AAC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801AB1C @ =gPlayers
	adds r6, r1, r0
	ldr r1, _0801AB20 @ =0x00100064
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xf
	bl sub_08026ADC
	bl sub_080074CC
	cmp r0, #0
	bne _0801AB06
	ldr r0, _0801AB24 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801AB0A
_0801AB06:
	bl ThreadExit
_0801AB0A:
	ldr r0, _0801AB28 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	adds r1, r0, #0
	ldr r0, [r1, #8]
	adds r2, r1, r0
	movs r4, #0
	b _0801AB54
	.align 2, 0
_0801AB1C: .4byte gPlayers
_0801AB20: .4byte 0x00100064
_0801AB24: .4byte 0x030063D8
_0801AB28: .4byte 0x080FB0F8
_0801AB2C:
	adds r1, #0xa4
	movs r0, #0
	strh r0, [r1]
	b _0801AF10
_0801AB34:
	ldr r0, _0801AB40 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	movs r1, #1
	strh r1, [r0]
	b _0801ADEE
	.align 2, 0
_0801AB40: .4byte 0x030063D8
_0801AB44:
	adds r1, #0xa4
	movs r0, #0
	strh r0, [r1]
	b _0801ADEE
_0801AB4C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #8
_0801AB54:
	ldrh r0, [r1, #0xc]
	cmp r4, r0
	bhs _0801AB66
	ldrh r0, [r2, #2]
	cmp r0, #3
	bne _0801AB4C
	ldr r0, [r2, #4]
	adds r2, r2, r0
	mov sl, r2
_0801AB66:
	ldr r0, _0801AB78 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	movs r1, #0
	strh r1, [r0]
	ldr r7, _0801AB7C @ =0x03004650
_0801AB72:
	movs r5, #0
	movs r4, #0
	b _0801AB9E
	.align 2, 0
_0801AB78: .4byte 0x030063D8
_0801AB7C: .4byte 0x03004650
_0801AB80:
	movs r0, #0xd4
	muls r0, r4, r0
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0801AB98
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801AB98:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801AB9E:
	bl sub_08001EC4
	cmp r4, r0
	blt _0801AB80
	ldr r4, _0801ABCC @ =0x030063D8
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801AB2C
	bl WaitFrame
	bl sub_08001EC4
	cmp r5, r0
	blt _0801AB72
	bl sub_08007728
	mov sb, r4
	add r1, sp, #0x48
	mov r8, r1
	b _0801ADD4
	.align 2, 0
_0801ABCC: .4byte 0x030063D8
_0801ABD0:
	add r5, sp, #0x44
	movs r7, #1
	str r7, [sp]
	add r0, sp, #0x10
	movs r1, #0
	adds r2, r5, #0
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _0801AC40
	bl sub_08007604
	cmp r0, #0
	bne _0801AC40
	bl sub_080075AC
	cmp r0, #0
	bne _0801AC40
	mov r1, sl
	adds r1, #0x8c
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x4a
	movs r2, #0x30
	str r2, [sp]
	str r7, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_08005FC4
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldrh r3, [r5]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004418
_0801AC40:
	bl WaitFrame
	bl sub_0800F430
	cmp r0, #0
	beq _0801ACD8
	ldr r0, _0801ACD0 @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801ACD8
	bl sub_080076E0
	cmp r0, #0
	bne _0801ACD8
	ldrh r0, [r6, #0xc]
	cmp r0, #9
	beq _0801ACD8
	cmp r0, #5
	beq _0801ACD8
	bl sub_08007604
	cmp r0, #0
	bne _0801ACD8
	ldr r0, [r6, #0x58]
	asrs r0, r0, #0xf
	mov r1, r8
	strh r0, [r1]
	mov r3, sp
	adds r3, #0x4a
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #0xf
	strh r0, [r3]
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r2, sl
	adds r2, #0x8c
	ldrh r0, [r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801AC92
	rsbs r1, r1, #0
_0801AC92:
	cmp r1, #1
	bgt _0801AD1A
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrh r0, [r2, #2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801ACA4
	rsbs r1, r1, #0
_0801ACA4:
	cmp r1, #1
	bgt _0801AD1A
	bl sub_08007544
	cmp r0, #0
	beq _0801AD1A
	ldrh r1, [r6, #0x10]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r6, #0x10]
	ldr r0, _0801ACD4 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801AD1A
	movs r0, #9
	strh r0, [r6, #0xc]
	movs r0, #0xf
	strh r0, [r6, #0xe]
	b _0801AD1A
	.align 2, 0
_0801ACD0: .4byte gUnknown_030064D8
_0801ACD4: .4byte gKeysNew
_0801ACD8:
	bl sub_080076E0
	adds r3, r0, #0
	cmp r3, #0
	bne _0801AD1A
	ldrh r0, [r6, #0xc]
	cmp r0, #9
	bne _0801AD1A
	ldrh r0, [r6, #0xe]
	cmp r0, #0xf
	bne _0801AD1A
	ldrh r1, [r6, #0x10]
	movs r0, #0x10
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r6, #0x10]
	ldr r0, _0801AD38 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	ands r0, r1

	thumb_func_start sub_0801AD00
sub_0801AD00: @ 0x0801AD00
	cmp r0, #0
	bne _0801AD10
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801AD1A
_0801AD10:
	strh r3, [r6, #0xc]
	ldr r1, _0801AD3C @ =0x0000FFFC
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r6, #0x10]
_0801AD1A:
	bl sub_080074F0
	cmp r0, #0
	beq _0801ADAE
	bl sub_08001F64
	cmp r0, #0
	beq _0801ADA0
	movs r5, #0
	movs r4, #0
	ldr r2, _0801AD40 @ =0x03004650
	ldr r1, _0801AD44 @ =0x0000F009
	ldr r0, _0801AD48 @ =0x0000F00F
	adds r7, r0, #0
	b _0801AD68
	.align 2, 0
_0801AD38: .4byte gKeysNew
_0801AD3C: .4byte 0x0000FFFC
_0801AD40: .4byte 0x03004650
_0801AD44: .4byte 0x0000F009
_0801AD48: .4byte 0x0000F00F
_0801AD4C:
	movs r0, #0xd4
	muls r0, r4, r0
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	ands r0, r7
	cmp r0, r1
	bne _0801AD62
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801AD62:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801AD68:
	str r1, [sp, #0x4c]
	str r2, [sp, #0x50]
	bl sub_08001EC4
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	cmp r4, r0
	blt _0801AD4C
	bl sub_08001EC4
	cmp r5, r0
	bne _0801ADA0
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0xa4
	movs r1, #1
	strh r1, [r0]
	b _0801AD90
_0801AD8C:
	bl WaitFrame
_0801AD90:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	cmp r0, #0
	beq _0801AD8C
_0801ADA0:
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801ADFC
	b _0801ADC4
_0801ADAE:
	ldr r0, _0801AE18 @ =gPlayers
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _0801AE1C @ =0x0000F00F
	adds r0, r2, #0
	ands r0, r1
	ldr r1, _0801AE20 @ =0x0000F009
	cmp r0, r1
	bne _0801ADC4
	b _0801AB34
_0801ADC4:
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801ADD4
	b _0801AB44
_0801ADD4:
	bl sub_080074CC
	cmp r0, #0
	bne _0801ADEE
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801ADEE
	b _0801ABD0
_0801ADEE:
	ldr r0, _0801AE24 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801ADFC
	b _0801AF10
_0801ADFC:
	movs r0, #2
	bl FadeOutBGM
	movs r0, #0x24
	bl PlaySE
	movs r0, #6
	bl sub_0800F3A0
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	b _0801AE96
	.align 2, 0
_0801AE18: .4byte gPlayers
_0801AE1C: .4byte 0x0000F00F
_0801AE20: .4byte 0x0000F009
_0801AE24: .4byte 0x030063D8
_0801AE28:
	add r4, sp, #0x44
	movs r5, #1
	str r5, [sp]
	add r0, sp, #0x10
	movs r1, #0
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _0801AE92
	bl sub_08007604
	cmp r0, #0
	bne _0801AE92
	bl sub_080075AC
	cmp r0, #0
	bne _0801AE92
	mov r1, sl
	adds r1, #0x8c
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldrh r3, [r4]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004418
_0801AE92:
	bl WaitFrame
_0801AE96:
	bl sub_0800F298
	cmp r0, #0
	bne _0801AEB6
	bl sub_080074CC
	cmp r0, #0
	bne _0801AEB6
	ldr r0, _0801AF20 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801AE28
_0801AEB6:
	ldr r4, _0801AF24 @ =gUnknownThreadPtr_03006410
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0801AEC8
	ldr r0, [r4]
	bl KillThread
_0801AEC8:
	bl GetMultiplayerId
	ldr r2, _0801AF28 @ =gPlayers
	movs r1, #0xd4
	adds r3, r0, #0
	muls r3, r1, r3
	adds r3, r3, r2
	ldr r2, _0801AF2C @ =gMapLayer_03003910
	ldr r4, _0801AF30 @ =0x080FB0F8
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r0, [r0]
	subs r0, #1
	adds r2, #0x6e
	movs r4, #0
	strh r0, [r2]
	strh r0, [r3, #0x16]
	bl sub_08007564
	ldr r2, _0801AF34 @ =gMapLayer_03003C00
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r0, _0801AF38 @ =0x00000BB9
	bl SignalEvent
	ldr r0, _0801AF20 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xa4
	strh r4, [r0]
_0801AF10:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AF20: .4byte 0x030063D8
_0801AF24: .4byte gUnknownThreadPtr_03006410
_0801AF28: .4byte gPlayers
_0801AF2C: .4byte gMapLayer_03003910
_0801AF30: .4byte 0x080FB0F8
_0801AF34: .4byte gMapLayer_03003C00
_0801AF38: .4byte 0x00000BB9

	thumb_func_start sub_0801AF3C
sub_0801AF3C: @ 0x0801AF3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl GetMultiplayerId
	mov sl, r0
	movs r1, #0xd4
	mov r0, sl
	muls r0, r1, r0
	mov r8, r0
	ldr r3, _0801AF60 @ =gPlayers
	add r3, r8
	mov sb, r3
	b _0801B158
	.align 2, 0
_0801AF60: .4byte gPlayers
_0801AF64:
	ldr r0, _0801AF80 @ =0x00000BB9
	bl _08000400
	bl sub_080074CC
	cmp r0, #0
	beq _0801AF76
	bl ThreadExit
_0801AF76:
	mov r5, sb
	ldrh r0, [r5, #0x16]
	cmp r0, #0
	beq _0801AFA4
	b _0801AF9C
	.align 2, 0
_0801AF80: .4byte 0x00000BB9
_0801AF84:
	bl sub_08007670
	cmp r0, #0
	beq _0801AF8E
	b _0801B162
_0801AF8E:
	bl sub_080074CC
	cmp r0, #0
	beq _0801AF98
	b _0801B162
_0801AF98:
	bl WaitFrame
_0801AF9C:
	bl sub_0800F298
	cmp r0, #0
	beq _0801AF84
_0801AFA4:
	ldr r4, _0801B008 @ =0x030063D8
	ldr r2, [r4]
	adds r3, r2, #0
	adds r3, #0x9c
	ldrh r1, [r3]
	ldr r5, _0801B00C @ =0x0000FFFD
	adds r0, r5, #0
	ands r1, r0
	movs r0, #0
	strh r1, [r3]
	str r0, [r2]
	str r0, [r2, #4]
	adds r2, #0x84
	strh r0, [r2]
	movs r2, #0
	movs r3, #0
_0801AFC4:
	ldr r0, [r4]
	lsls r1, r2, #2
	adds r0, #0xc
	adds r0, r0, r1
	str r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _0801AFC4
	bl sub_08013CE4
	ldr r0, _0801B008 @ =0x030063D8
	ldr r1, [r0]
	adds r1, #0x9c
	ldrh r2, [r1]
	movs r0, #4
	orrs r0, r2
	strh r0, [r1]
	mov r1, sb
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	bne _0801B018
	ldr r0, _0801B010 @ =gMapLayer_03003910
	adds r0, #0x6e
	ldrh r0, [r0]
	bl sub_080051B4
	movs r4, #0
	ldr r5, _0801B014 @ =0x0000012B
_0801AFFC:
	bl WaitFrame
	adds r4, #1
	cmp r4, r5
	bls _0801AFFC
	b _0801B080
	.align 2, 0
_0801B008: .4byte 0x030063D8
_0801B00C: .4byte 0x0000FFFD
_0801B010: .4byte gMapLayer_03003910
_0801B014: .4byte 0x0000012B
_0801B018:
	bl sub_08027228
	ldr r0, _0801B050 @ =0x000514C8
	bl SignalEvent
	bl sub_08005F50
	movs r4, #0
_0801B028:
	bl sub_08007670
	cmp r0, #0
	beq _0801B032
	b _0801B162
_0801B032:
	bl sub_080074CC
	cmp r0, #0
	beq _0801B03C
	b _0801B162
_0801B03C:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x77
	bls _0801B028
	ldr r4, _0801B054 @ =gMapLayer_03003910
	adds r5, r4, #0
	adds r5, #0x6e
	b _0801B070
	.align 2, 0
_0801B050: .4byte 0x000514C8
_0801B054: .4byte gMapLayer_03003910
_0801B058:
	bl sub_08007670
	cmp r0, #0
	beq _0801B062
	b _0801B162
_0801B062:
	bl sub_080074CC
	cmp r0, #0
	beq _0801B06C
	b _0801B162
_0801B06C:
	bl WaitFrame
_0801B070:
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	ldrh r1, [r5]
	bl sub_08004DE0
	cmp r0, #0
	beq _0801B058
_0801B080:
	bl sub_08018940
	ldr r1, _0801B098 @ =gPlayers
	add r1, r8
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	beq _0801B09C
	adds r0, r1, #0
	movs r1, #0
	bl sub_080191FC
	b _0801B0A4
	.align 2, 0
_0801B098: .4byte gPlayers
_0801B09C:
	adds r0, r1, #0
	movs r1, #1
	bl sub_080191FC
_0801B0A4:
	movs r4, #0
	ldr r0, _0801B0B4 @ =gPlayers
	movs r7, #0
	movs r6, #0xa
	adds r5, r0, #0
	adds r5, #0xc
	b _0801B0C4
	.align 2, 0
_0801B0B4: .4byte gPlayers
_0801B0B8:
	cmp sl, r4
	beq _0801B0C0
	strh r6, [r5]
	strh r7, [r5, #4]
_0801B0C0:
	adds r5, #0xd4
	adds r4, #1
_0801B0C4:
	bl sub_08001EC4
	cmp r4, r0
	blo _0801B0B8
	ldr r0, _0801B0E0 @ =gMapLayer_03003910
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r1, #0x66
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	bl sub_0802934C
	b _0801B0FE
	.align 2, 0
_0801B0E0: .4byte gMapLayer_03003910
_0801B0E4:
	bl sub_08007670
	cmp r0, #0
	bne _0801B0F4
	bl sub_080074CC
	cmp r0, #0
	beq _0801B0FA
_0801B0F4:
	bl sub_080292D0
	b _0801B162
_0801B0FA:
	bl WaitFrame
_0801B0FE:
	ldr r0, [sp]
	cmp r0, #0
	bne _0801B0E4
	bl sub_08007544
	cmp r0, #0
	bne _0801B148
	ldr r4, _0801B13C @ =gPlayers
	add r4, r8
	strh r0, [r4, #0xc]
	bl sub_08007638
	cmp r0, #0
	beq _0801B11C
	movs r0, #1
_0801B11C:
	strh r0, [r4, #0x10]
	ldr r0, _0801B140 @ =0x030063D8
	ldr r2, [r0]
	adds r2, #0x9c
	ldrh r0, [r2]
	ldr r3, _0801B144 @ =0x0000FFFB
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	bl WaitFrame
	movs r0, #6
	bl sub_0800F308
	b _0801B158
	.align 2, 0
_0801B13C: .4byte gPlayers
_0801B140: .4byte 0x030063D8
_0801B144: .4byte 0x0000FFFB
_0801B148:
	ldr r0, _0801B174 @ =0x030063D8
	ldr r2, [r0]
	adds r2, #0x9c
	ldrh r0, [r2]
	ldr r5, _0801B178 @ =0x0000FFFB
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r2]
_0801B158:
	bl sub_080074CC
	cmp r0, #0
	bne _0801B162
	b _0801AF64
_0801B162:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B174: .4byte 0x030063D8
_0801B178: .4byte 0x0000FFFB

	thumb_func_start sub_0801B17C
sub_0801B17C: @ 0x0801B17C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	bl sub_0800F3A0
	b _0801B18C
_0801B188:
	bl WaitFrame
_0801B18C:
	bl sub_0800F298
	cmp r0, #0
	beq _0801B188
	bl sub_08007544
	cmp r0, #0
	beq _0801B1A4
	ldr r0, _0801B1A0 @ =gMapLayer_03003C00
	b _0801B1A6
	.align 2, 0
_0801B1A0: .4byte gMapLayer_03003C00
_0801B1A4:
	ldr r0, _0801B1F0 @ =gMapLayer_03003910
_0801B1A6:
	ldr r1, [r0, #0x78]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0x78]
	bl WaitFrame
	bl WaitFrame
	ldr r1, _0801B1F4 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	adds r0, r4, #0
	bl sub_0803F570
	bl sub_08007520
	ldr r0, _0801B1F8 @ =0x11201100
	bl _08000400
	bl sub_08007530
	bl sub_08007544
	cmp r0, #0
	beq _0801B200
	ldr r0, _0801B1FC @ =0x000514C9
	bl SignalEvent
	b _0801B206
	.align 2, 0
_0801B1F0: .4byte gMapLayer_03003910
_0801B1F4: .4byte gBgRegsBuffer
_0801B1F8: .4byte 0x11201100
_0801B1FC: .4byte 0x000514C9
_0801B200:
	ldr r0, _0801B20C @ =0x000514C8
	bl SignalEvent
_0801B206:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B20C: .4byte 0x000514C8

	thumb_func_start sub_0801B210
sub_0801B210: @ 0x0801B210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _0801B2BC @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r2, r0, r1
	movs r6, #0
	ldrh r0, [r0, #0xc]
	cmp r6, r0
	bhs _0801B250
	adds r1, r0, #0
_0801B232:
	ldrh r3, [r2, #2]
	cmp r3, #3
	bne _0801B23E
	ldr r0, [r2, #4]
	adds r0, r2, r0
	str r0, [sp, #0x1c]
_0801B23E:
	cmp r3, #0
	bne _0801B248
	ldr r0, [r2, #4]
	adds r0, r2, r0
	str r0, [sp, #0x24]
_0801B248:
	adds r6, #1
	adds r2, #8
	cmp r6, r1
	blo _0801B232
_0801B250:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801B2C0 @ =gPlayers
	adds r5, r1, r0
	bl sub_08001F98
	cmp r0, #0
	beq _0801B268
	bl _0801C64E
_0801B268:
	bl sub_080076A8
	cmp r0, #0
	beq _0801B274
	bl _0801C64E
_0801B274:
	ldr r0, _0801B2C4 @ =gPlayerStats
	ldr r1, _0801B2C8 @ =0x00000275
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r1, r0, #0x1e
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B28C
	bl _0801C64E
_0801B28C:
	ldr r0, _0801B2CC @ =gUnknown_03003D08
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801B29E
	bl _0801C64E
_0801B29E:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0801B2D0
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B2B4
	bl _0801C64E
_0801B2B4:
	bl sub_0802169C
	bl _0801C64E
	.align 2, 0
_0801B2BC: .4byte 0x080FB0F8
_0801B2C0: .4byte gPlayers
_0801B2C4: .4byte gPlayerStats
_0801B2C8: .4byte 0x00000275
_0801B2CC: .4byte gUnknown_03003D08
_0801B2D0:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0801B2EC
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B2E4
	bl _0801C64E
_0801B2E4:
	bl sub_08021658
	bl _0801C64E
_0801B2EC:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0801B308
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B300
	bl _0801C64E
_0801B300:
	bl sub_08021614
	bl _0801C64E
_0801B308:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0801B324
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B31C
	bl _0801C64E
_0801B31C:
	bl sub_080215D0
	bl _0801C64E
_0801B324:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801B340
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B338
	bl _0801C64E
_0801B338:
	bl sub_0802158C
	bl _0801C64E
_0801B340:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801B35C
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0801B354
	bl _0801C64E
_0801B354:
	bl sub_08021548
	bl _0801C64E
_0801B35C:
	movs r0, #4
	ands r2, r0
	cmp r2, #0
	bne _0801B368
	bl _0801C64E
_0801B368:
	bl sub_08021504
	bl _0801C64E

	thumb_func_start sub_0801B370
sub_0801B370: @ 0x0801B370
	ldr r3, _0801B3E8 @ =gPaletteBuffer
	ldr r4, _0801B3EC @ =gPlayerStats
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r2, r4, r0
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
	bl sub_08001F98
	cmp r0, #0
	bne _0801B472
	bl sub_080076A8
	cmp r0, #0
	bne _0801B472
	ldr r3, _0801B3F0 @ =0x00000275
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r2, r0, #0x1e
	adds r0, r2, #0
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0801B472
	ldr r0, _0801B3F4 @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801B472
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B3F8
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0801B472
	bl sub_0802169C
	b _0801B472
	.align 2, 0
_0801B3E8: .4byte gPaletteBuffer
_0801B3EC: .4byte gPlayerStats
_0801B3F0: .4byte 0x00000275
_0801B3F4: .4byte gUnknown_03003D08
_0801B3F8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B40E
	movs r1, #2
	ands r2, r1
	cmp r2, #0
	beq _0801B472
	bl sub_08021658
	b _0801B472
_0801B40E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801B424
	movs r3, #2
	ands r2, r3
	cmp r2, #0
	beq _0801B472
	bl sub_08021614
	b _0801B472
_0801B424:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801B43A
	movs r4, #2
	ands r2, r4
	cmp r2, #0
	beq _0801B472
	bl sub_080215D0
	b _0801B472
_0801B43A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801B450
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0801B472
	bl sub_0802158C
	b _0801B472
_0801B450:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801B466
	movs r1, #2
	ands r2, r1
	cmp r2, #0
	beq _0801B472
	bl sub_08021548
	b _0801B472
_0801B466:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0801B472
	bl sub_08021504
_0801B472:
	bl sub_080076E0
	cmp r0, #0
	beq _0801B47C
	b _0801B636
_0801B47C:
	bl sub_08007670
	cmp r0, #0
	beq _0801B486
	b _0801B636
_0801B486:
	bl sub_0800F298
	cmp r0, #0
	bne _0801B490
	b _0801B636
_0801B490:
	ldr r0, _0801B71C @ =gMapLayer_03003C00
	ldr r2, [r0, #0x78]
	movs r0, #0xc
	ands r2, r0
	cmp r2, #0
	beq _0801B49E
	b _0801B636
_0801B49E:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #4]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B4AE
	rsbs r0, r0, #0
_0801B4AE:
	cmp r0, #2
	bgt _0801B4EE
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r4, [sp, #0x1c]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B4C2
	rsbs r0, r0, #0
_0801B4C2:
	cmp r0, #2
	bgt _0801B4EE
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B4EE
	strh r2, [r5, #4]
	strh r2, [r5, #2]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #5
	strh r0, [r5, #0xa]
	movs r0, #4
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r1, _0801B720 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801B4EE:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #0xc]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B4FE
	rsbs r0, r0, #0
_0801B4FE:
	cmp r0, #2
	bgt _0801B540
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0xe]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B512
	rsbs r0, r0, #0
_0801B512:
	cmp r0, #2
	bgt _0801B540
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B540
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #2]
	movs r0, #5
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #2
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B720 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B540:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B550
	rsbs r0, r0, #0
_0801B550:
	cmp r0, #2
	bgt _0801B592
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x12]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B564
	rsbs r0, r0, #0
_0801B564:
	cmp r0, #2
	bgt _0801B592
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B592
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	movs r0, #5
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #3
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B720 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B592:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B5A2
	rsbs r0, r0, #0
_0801B5A2:
	cmp r0, #2
	bgt _0801B5E4
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B5B6
	rsbs r0, r0, #0
_0801B5B6:
	cmp r0, #2
	bgt _0801B5E4
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B5E4
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #3
	strh r0, [r5, #0xa]
	movs r0, #5
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B720 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B5E4:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B5F4
	rsbs r0, r0, #0
_0801B5F4:
	cmp r0, #2
	bgt _0801B636
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0xa]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B608
	rsbs r0, r0, #0
_0801B608:
	cmp r0, #2
	bgt _0801B636
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801B636
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #3
	strh r0, [r5, #0xa]
	movs r0, #7
	bl sub_0801B17C
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B720 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B636:
	bl sub_080076E0
	cmp r0, #0
	beq _0801B640
	b _0801B8A4
_0801B640:
	bl sub_08007670
	adds r2, r0, #0
	cmp r2, #0
	beq _0801B64C
	b _0801B8A4
_0801B64C:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x30]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B65C
	rsbs r0, r0, #0
_0801B65C:
	cmp r0, #2
	ble _0801B662
	b _0801B8A4
_0801B662:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r4, [sp, #0x1c]
	ldrh r1, [r4, #0x32]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B672
	rsbs r0, r0, #0
_0801B672:
	cmp r0, #2
	ble _0801B678
	b _0801B8A4
_0801B678:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801B684
	b _0801B8A4
_0801B684:
	movs r0, #5
	strh r0, [r5, #0xa]
	strh r2, [r5, #2]
	strh r2, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801B724 @ =0x00090086
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B6AC:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B6AC
	bl sub_08014DD8
	movs r1, #0
	cmp r0, #2
	ble _0801B6C6
	movs r1, #1
_0801B6C6:
	str r1, [sp, #0xc]
	bl sub_08014E08
	movs r1, #0
	cmp r0, #2
	ble _0801B6D4
	movs r1, #1
_0801B6D4:
	str r1, [sp, #0x10]
	bl sub_08014E38
	movs r1, #0
	cmp r0, #2
	ble _0801B6E2
	movs r1, #1
_0801B6E2:
	str r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0801B72C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0801B72C
	cmp r1, #0
	bne _0801B72C
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp]
	ldr r0, _0801B728 @ =0x00090087
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B70C:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B70C
	b _0801B89C
	.align 2, 0
_0801B71C: .4byte gMapLayer_03003C00
_0801B720: .4byte 0x0000FFFE
_0801B724: .4byte 0x00090086
_0801B728: .4byte 0x00090087
_0801B72C:
	movs r6, #0
_0801B72E:
	lsls r0, r6, #2
	add r0, sp
	adds r0, #0xc
	ldr r0, [r0]
	adds r2, r6, #1
	mov r8, r2
	cmp r0, #0
	bne _0801B740
	b _0801B86E
_0801B740:
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r3, _0801B7A8 @ =0x00090088
	adds r0, r6, r3
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B75A:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B75A
	adds r0, r4, #0
	bl sub_08022964
	cmp r0, #0
	beq _0801B848
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0801B7AC @ =0x0009008B
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	add r7, sp, #0x18
_0801B78A:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B78A
	cmp r6, #1
	beq _0801B7B6
	cmp r6, #1
	blo _0801B7B0
	cmp r6, #2
	beq _0801B7BC
	b _0801B7C0
	.align 2, 0
_0801B7A8: .4byte 0x00090088
_0801B7AC: .4byte 0x0009008B
_0801B7B0:
	bl sub_08013838
	b _0801B7C0
_0801B7B6:
	bl sub_08013894
	b _0801B7C0
_0801B7BC:
	bl sub_080138F0
_0801B7C0:
	ldr r0, _0801B838 @ =0x000F0006
	adds r4, r6, r0
	bl GetPlayerClass
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_080130F4
	adds r0, r7, #0
	bl AddItemToInventory
	movs r0, #0x26
	bl PlaySE
	ldr r0, _0801B83C @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #4
	bne _0801B80C
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0801B840 @ =0x000900FF
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B7FE:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B7FE
_0801B80C:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp]
	ldr r0, _0801B844 @ =0x00090100
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_08021E70
	adds r4, r0, #0
_0801B826:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B826
	b _0801B86E
	.align 2, 0
_0801B838: .4byte 0x000F0006
_0801B83C: .4byte 0x03003CA8
_0801B840: .4byte 0x000900FF
_0801B844: .4byte 0x00090100
_0801B848:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r0, _0801B930 @ =0x0009008C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B860:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B860
_0801B86E:
	mov r6, r8
	cmp r6, #2
	bhi _0801B876
	b _0801B72E
_0801B876:
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp]
	ldr r0, _0801B934 @ =0x0009008D
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801B88E:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801B88E
_0801B89C:
	ldrh r0, [r5, #0x10]
	ldr r4, _0801B938 @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801B8A4:
	bl sub_080076E0
	cmp r0, #0
	beq _0801B8AE
	b _0801BEE2
_0801B8AE:
	bl sub_08007670
	adds r2, r0, #0
	cmp r2, #0
	beq _0801B8BA
	b _0801BEE2
_0801B8BA:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r1, [sp, #0x1c]
	adds r1, #0x48
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801B8CC
	rsbs r0, r0, #0
_0801B8CC:
	ldr r6, [sp, #0x1c]
	adds r6, #0x4c
	ldr r7, [sp, #0x1c]
	adds r7, #0x50
	ldr r1, [sp, #0x1c]
	adds r1, #0x54
	mov r8, r1
	cmp r0, #2
	ble _0801B8E0
	b _0801BA64
_0801B8E0:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x4a
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801B8F2
	rsbs r1, r1, #0
_0801B8F2:
	cmp r1, #2
	ble _0801B8F8
	b _0801BA64
_0801B8F8:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801B904
	b _0801BA64
_0801B904:
	strh r2, [r5, #2]
	strh r2, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r0, _0801B93C @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B948
	ldr r2, _0801B940 @ =0x000900D4
	str r2, [sp, #0x20]
	ldr r3, _0801B944 @ =0x030063D8
	ldr r0, [r3]
	adds r0, #0xa8
	movs r4, #1
	strh r4, [r0]
	b _0801BA14
	.align 2, 0
_0801B930: .4byte 0x0009008C
_0801B934: .4byte 0x0009008D
_0801B938: .4byte 0x0000FFFE
_0801B93C: .4byte gUnknown_03003D08
_0801B940: .4byte 0x000900D4
_0801B944: .4byte 0x030063D8
_0801B948:
	movs r2, #0x80
	ands r2, r1
	cmp r2, #0
	beq _0801B968
	ldr r0, _0801B960 @ =0x000900CE
	str r0, [sp, #0x20]
	ldr r1, _0801B964 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BA12
	.align 2, 0
_0801B960: .4byte 0x000900CE
_0801B964: .4byte 0x030063D8
_0801B968:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801B984
	ldr r3, _0801B97C @ =0x000900C6
	str r3, [sp, #0x20]
	ldr r4, _0801B980 @ =0x030063D8
	ldr r0, [r4]
	b _0801BA10
	.align 2, 0
_0801B97C: .4byte 0x000900C6
_0801B980: .4byte 0x030063D8
_0801B984:
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _0801B9A4
	ldr r0, _0801B99C @ =0x000900BC
	str r0, [sp, #0x20]
	ldr r1, _0801B9A0 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BA12
	.align 2, 0
_0801B99C: .4byte 0x000900BC
_0801B9A0: .4byte 0x030063D8
_0801B9A4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801B9C0
	ldr r3, _0801B9B8 @ =0x000900B4
	str r3, [sp, #0x20]
	ldr r4, _0801B9BC @ =0x030063D8
	ldr r0, [r4]
	b _0801BA10
	.align 2, 0
_0801B9B8: .4byte 0x000900B4
_0801B9BC: .4byte 0x030063D8
_0801B9C0:
	movs r3, #8
	ands r3, r1
	cmp r3, #0
	beq _0801B9E0
	ldr r0, _0801B9D8 @ =0x000900AB
	str r0, [sp, #0x20]
	ldr r1, _0801B9DC @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BA12
	.align 2, 0
_0801B9D8: .4byte 0x000900AB
_0801B9DC: .4byte 0x030063D8
_0801B9E0:
	movs r2, #4
	ands r2, r1
	cmp r2, #0
	beq _0801BA00
	ldr r4, _0801B9F8 @ =0x000900A1
	str r4, [sp, #0x20]
	ldr r1, _0801B9FC @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	strh r3, [r0]
	b _0801BA14
	.align 2, 0
_0801B9F8: .4byte 0x000900A1
_0801B9FC: .4byte 0x030063D8
_0801BA00:
	movs r3, #2
	ands r1, r3
	cmp r1, #0
	beq _0801BA14
	ldr r4, _0801BAC4 @ =0x00090095
	str r4, [sp, #0x20]
	ldr r1, _0801BAC8 @ =0x030063D8
	ldr r0, [r1]
_0801BA10:
	adds r0, #0xa8
_0801BA12:
	strh r2, [r0]
_0801BA14:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r3, [sp, #0x20]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	ldr r1, _0801BAC8 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa6
	movs r2, #1
	strh r2, [r0]
	ldr r6, [sp, #0x1c]
	adds r6, #0x4c
	ldr r7, [sp, #0x1c]
	adds r7, #0x50
	ldr r3, [sp, #0x1c]
	adds r3, #0x54
	mov r8, r3
_0801BA44:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BA44
	ldr r4, _0801BAC8 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xa6
	movs r1, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	ldr r1, _0801BACC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801BA64:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BA72
	rsbs r0, r0, #0
_0801BA72:
	cmp r0, #2
	ble _0801BA78
	b _0801BBE2
_0801BA78:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x4e
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801BA8A
	rsbs r1, r1, #0
_0801BA8A:
	cmp r1, #2
	ble _0801BA90
	b _0801BBE2
_0801BA90:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801BA9C
	b _0801BBE2
_0801BA9C:
	movs r2, #0
	strh r2, [r5, #2]
	strh r2, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r0, _0801BAD0 @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BAD8
	ldr r3, _0801BAD4 @ =0x000900D5
	str r3, [sp, #0x20]
	ldr r4, _0801BAC8 @ =0x030063D8
	ldr r0, [r4]
	b _0801BB9C
	.align 2, 0
_0801BAC4: .4byte 0x00090095
_0801BAC8: .4byte 0x030063D8
_0801BACC: .4byte 0x0000FFFE
_0801BAD0: .4byte gUnknown_03003D08
_0801BAD4: .4byte 0x000900D5
_0801BAD8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801BAF8
	ldr r0, _0801BAF0 @ =0x000900CF
	str r0, [sp, #0x20]
	ldr r1, _0801BAF4 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BB9E
	.align 2, 0
_0801BAF0: .4byte 0x000900CF
_0801BAF4: .4byte 0x030063D8
_0801BAF8:
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	beq _0801BB18
	ldr r3, _0801BB10 @ =0x000900C7
	str r3, [sp, #0x20]
	ldr r4, _0801BB14 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #3
	strh r1, [r0]
	b _0801BBA0
	.align 2, 0
_0801BB10: .4byte 0x000900C7
_0801BB14: .4byte 0x030063D8
_0801BB18:
	movs r3, #0x20
	ands r3, r1
	cmp r3, #0
	beq _0801BB2C
	ldr r0, _0801BB28 @ =0x000900BD
	str r0, [sp, #0x20]
	b _0801BB98
	.align 2, 0
_0801BB28: .4byte 0x000900BD
_0801BB2C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BB4C
	ldr r2, _0801BB44 @ =0x000900B5
	str r2, [sp, #0x20]
	ldr r4, _0801BB48 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	strh r3, [r0]
	b _0801BBA0
	.align 2, 0
_0801BB44: .4byte 0x000900B5
_0801BB48: .4byte 0x030063D8
_0801BB4C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801BB6C
	ldr r0, _0801BB64 @ =0x000900AC
	str r0, [sp, #0x20]
	ldr r1, _0801BB68 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BB9E
	.align 2, 0
_0801BB64: .4byte 0x000900AC
_0801BB68: .4byte 0x030063D8
_0801BB6C:
	movs r2, #4
	ands r2, r1
	cmp r2, #0
	beq _0801BB8C
	ldr r3, _0801BB84 @ =0x000900A2
	str r3, [sp, #0x20]
	ldr r4, _0801BB88 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #2
	strh r1, [r0]
	b _0801BBA0
	.align 2, 0
_0801BB84: .4byte 0x000900A2
_0801BB88: .4byte 0x030063D8
_0801BB8C:
	movs r3, #2
	ands r1, r3
	cmp r1, #0
	beq _0801BBA0
	ldr r4, _0801BC44 @ =0x00090096
	str r4, [sp, #0x20]
_0801BB98:
	ldr r1, _0801BC48 @ =0x030063D8
	ldr r0, [r1]
_0801BB9C:
	adds r0, #0xa8
_0801BB9E:
	strh r2, [r0]
_0801BBA0:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r3, [sp, #0x20]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	ldr r1, _0801BC48 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa6
	movs r2, #2
	strh r2, [r0]
_0801BBC2:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BBC2
	ldr r3, _0801BC48 @ =0x030063D8
	ldr r0, [r3]
	adds r0, #0xa6
	movs r1, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	ldr r4, _0801BC4C @ =0x0000FFFE
	ands r0, r4
	strh r0, [r5, #0x10]
_0801BBE2:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldrh r1, [r7]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BBF0
	rsbs r0, r0, #0
_0801BBF0:
	cmp r0, #2
	ble _0801BBF6
	b _0801BD6A
_0801BBF6:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x52
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801BC08
	rsbs r1, r1, #0
_0801BC08:
	cmp r1, #2
	ble _0801BC0E
	b _0801BD6A
_0801BC0E:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801BC1A
	b _0801BD6A
_0801BC1A:
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r0, _0801BC50 @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0801BC58
	ldr r0, _0801BC54 @ =0x000900D6
	str r0, [sp, #0x20]
	ldr r1, _0801BC48 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BD26
	.align 2, 0
_0801BC44: .4byte 0x00090096
_0801BC48: .4byte 0x030063D8
_0801BC4C: .4byte 0x0000FFFE
_0801BC50: .4byte gUnknown_03003D08
_0801BC54: .4byte 0x000900D6
_0801BC58:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801BC74
	ldr r3, _0801BC6C @ =0x000900D0
	str r3, [sp, #0x20]
	ldr r4, _0801BC70 @ =0x030063D8
	ldr r0, [r4]
	b _0801BD24
	.align 2, 0
_0801BC6C: .4byte 0x000900D0
_0801BC70: .4byte 0x030063D8
_0801BC74:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801BC94
	ldr r0, _0801BC8C @ =0x000900C8
	str r0, [sp, #0x20]
	ldr r1, _0801BC90 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BD26
	.align 2, 0
_0801BC8C: .4byte 0x000900C8
_0801BC90: .4byte 0x030063D8
_0801BC94:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801BCB4
	ldr r3, _0801BCAC @ =0x000900BE
	str r3, [sp, #0x20]
	ldr r4, _0801BCB0 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #3
	strh r1, [r0]
	b _0801BD28
	.align 2, 0
_0801BCAC: .4byte 0x000900BE
_0801BCB0: .4byte 0x030063D8
_0801BCB4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BCD4
	ldr r0, _0801BCCC @ =0x000900B6
	str r0, [sp, #0x20]
	ldr r1, _0801BCD0 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BD26
	.align 2, 0
_0801BCCC: .4byte 0x000900B6
_0801BCD0: .4byte 0x030063D8
_0801BCD4:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801BCF4
	ldr r3, _0801BCEC @ =0x000900AD
	str r3, [sp, #0x20]
	ldr r4, _0801BCF0 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #2
	strh r1, [r0]
	b _0801BD28
	.align 2, 0
_0801BCEC: .4byte 0x000900AD
_0801BCF0: .4byte 0x030063D8
_0801BCF4:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801BD14
	ldr r2, _0801BD0C @ =0x000900A3
	str r2, [sp, #0x20]
	ldr r3, _0801BD10 @ =0x030063D8
	ldr r0, [r3]
	adds r0, #0xa8
	movs r4, #1
	strh r4, [r0]
	b _0801BD28
	.align 2, 0
_0801BD0C: .4byte 0x000900A3
_0801BD10: .4byte 0x030063D8
_0801BD14:
	movs r2, #2
	ands r1, r2
	cmp r1, #0
	beq _0801BD28
	ldr r0, _0801BDD0 @ =0x00090097
	str r0, [sp, #0x20]
	ldr r1, _0801BDD4 @ =0x030063D8
	ldr r0, [r1]
_0801BD24:
	adds r0, #0xa8
_0801BD26:
	strh r2, [r0]
_0801BD28:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r3, [sp, #0x20]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	ldr r1, _0801BDD4 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa6
	movs r1, #4
	strh r1, [r0]
_0801BD4A:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BD4A
	ldr r2, _0801BDD4 @ =0x030063D8
	ldr r0, [r2]
	adds r0, #0xa6
	movs r1, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	ldr r3, _0801BDD8 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801BD6A:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	mov r4, r8
	ldrh r1, [r4]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BD7A
	rsbs r0, r0, #0
_0801BD7A:
	cmp r0, #2
	ble _0801BD80
	b _0801BEE2
_0801BD80:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x56
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801BD92
	rsbs r1, r1, #0
_0801BD92:
	cmp r1, #2
	ble _0801BD98
	b _0801BEE2
_0801BD98:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801BDA4
	b _0801BEE2
_0801BDA4:
	movs r3, #0
	strh r3, [r5, #2]
	strh r3, [r5, #4]
	ldrh r0, [r5, #0x10]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5, #0x10]
	ldr r0, _0801BDDC @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0801BDE4
	ldr r0, _0801BDE0 @ =0x000900D7
	str r0, [sp, #0x20]
	ldr r1, _0801BDD4 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	strh r3, [r0]
	b _0801BEA0
	.align 2, 0
_0801BDD0: .4byte 0x00090097
_0801BDD4: .4byte 0x030063D8
_0801BDD8: .4byte 0x0000FFFE
_0801BDDC: .4byte gUnknown_03003D08
_0801BDE0: .4byte 0x000900D7
_0801BDE4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801BE00
	ldr r3, _0801BDF8 @ =0x000900D1
	str r3, [sp, #0x20]
	ldr r4, _0801BDFC @ =0x030063D8
	ldr r0, [r4]
	b _0801BE9C
	.align 2, 0
_0801BDF8: .4byte 0x000900D1
_0801BDFC: .4byte 0x030063D8
_0801BE00:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801BE20
	ldr r0, _0801BE18 @ =0x000900C9
	str r0, [sp, #0x20]
	ldr r1, _0801BE1C @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #2
	b _0801BE9E
	.align 2, 0
_0801BE18: .4byte 0x000900C9
_0801BE1C: .4byte 0x030063D8
_0801BE20:
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _0801BE30
	ldr r3, _0801BE2C @ =0x000900BF
	b _0801BE76
	.align 2, 0
_0801BE2C: .4byte 0x000900BF
_0801BE30:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BE4C
	ldr r3, _0801BE44 @ =0x000900B7
	str r3, [sp, #0x20]
	ldr r4, _0801BE48 @ =0x030063D8
	ldr r0, [r4]
	b _0801BE9C
	.align 2, 0
_0801BE44: .4byte 0x000900B7
_0801BE48: .4byte 0x030063D8
_0801BE4C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801BE6C
	ldr r0, _0801BE64 @ =0x000900AE
	str r0, [sp, #0x20]
	ldr r1, _0801BE68 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa8
	movs r2, #1
	b _0801BE9E
	.align 2, 0
_0801BE64: .4byte 0x000900AE
_0801BE68: .4byte 0x030063D8
_0801BE6C:
	movs r2, #4
	ands r2, r1
	cmp r2, #0
	beq _0801BE8C
	ldr r3, _0801BE84 @ =0x000900A4
_0801BE76:
	str r3, [sp, #0x20]
	ldr r4, _0801BE88 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xa8
	movs r1, #1
	strh r1, [r0]
	b _0801BEA0
	.align 2, 0
_0801BE84: .4byte 0x000900A4
_0801BE88: .4byte 0x030063D8
_0801BE8C:
	movs r3, #2
	ands r1, r3
	cmp r1, #0
	beq _0801BEA0
	ldr r4, _0801BF58 @ =0x00090098
	str r4, [sp, #0x20]
	ldr r1, _0801BF5C @ =0x030063D8
	ldr r0, [r1]
_0801BE9C:
	adds r0, #0xa8
_0801BE9E:
	strh r2, [r0]
_0801BEA0:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r3, [sp, #0x20]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	ldr r1, _0801BF5C @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xa6
	movs r1, #8
	strh r1, [r0]
_0801BEC2:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BEC2
	ldr r2, _0801BF5C @ =0x030063D8
	ldr r0, [r2]
	adds r0, #0xa6
	movs r1, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	ldr r3, _0801BF60 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801BEE2:
	bl sub_080076E0
	cmp r0, #0
	beq _0801BEEC
	b _0801C042
_0801BEEC:
	bl sub_08007670
	cmp r0, #0
	beq _0801BEF6
	b _0801C042
_0801BEF6:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r4, [sp, #0x1c]
	ldrh r1, [r4, #0x18]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BF06
	rsbs r0, r0, #0
_0801BF06:
	cmp r0, #1
	ble _0801BF0C
	b _0801C042
_0801BF0C:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #0x1a]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801BF1C
	rsbs r0, r0, #0
_0801BF1C:
	cmp r0, #2
	ble _0801BF22
	b _0801C042
_0801BF22:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801BF2E
	b _0801C042
_0801BF2E:
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r0, _0801BF64 @ =gUnknown_03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BF74
	ldr r0, _0801BF68 @ =gPlayerStats
	ldr r0, [r0, #0x38]
	ldr r3, _0801BF6C @ =0x00090106
	str r3, [sp, #0x20]
	cmp r0, #0x63
	bne _0801BF84
	ldr r4, _0801BF70 @ =0x0009008F
	str r4, [sp, #0x20]
	b _0801BF84
	.align 2, 0
_0801BF58: .4byte 0x00090098
_0801BF5C: .4byte 0x030063D8
_0801BF60: .4byte 0x0000FFFE
_0801BF64: .4byte gUnknown_03003D08
_0801BF68: .4byte gPlayerStats
_0801BF6C: .4byte 0x00090106
_0801BF70: .4byte 0x0009008F
_0801BF74:
	ldr r0, _0801BFD4 @ =gPlayerStats
	ldr r0, [r0, #0x38]
	ldr r1, _0801BFD8 @ =0x0009008E
	str r1, [sp, #0x20]
	cmp r0, #0x63
	bne _0801BF84
	ldr r2, _0801BFDC @ =0x0009008F
	str r2, [sp, #0x20]
_0801BF84:
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp]
	ldr r4, [sp, #0x20]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	adds r7, r5, #0
	adds r7, #0x50
	movs r0, #0x7a
	adds r0, r0, r5
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x4e
	movs r1, #0x78
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x24
	adds r2, r2, r5
	mov sl, r2
_0801BFB6:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801BFB6
	movs r0, #0x91
	bl PlaySE
	movs r0, #6
	bl sub_0800F244
	b _0801BFE4
	.align 2, 0
_0801BFD4: .4byte gPlayerStats
_0801BFD8: .4byte 0x0009008E
_0801BFDC: .4byte 0x0009008F
_0801BFE0:
	bl WaitFrame
_0801BFE4:
	bl sub_0800F298
	cmp r0, #0
	beq _0801BFE0
	ldrh r0, [r7]
	mov r3, sb
	strh r0, [r3]
	ldrh r0, [r6]
	mov r4, r8
	strh r0, [r4]
	movs r6, #0
	movs r3, #0
	mov r1, sl
_0801BFFE:
	lsls r2, r6, #1
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0801C01E
	ldr r0, [r5, #0x1c]
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, #4
	bgt _0801C01E
	cmp r0, #1
	blt _0801C01E
	strh r3, [r1]
	ldr r0, [r5, #0x1c]
	adds r0, r2, r0
	strh r3, [r0]
_0801C01E:
	adds r1, #2
	adds r6, #1
	cmp r6, #2
	bls _0801BFFE
	movs r0, #0xa
	bl sub_0800F1EC
	b _0801C032
_0801C02E:
	bl WaitFrame
_0801C032:
	bl sub_0800F298
	cmp r0, #0
	beq _0801C02E
	ldrh r0, [r5, #0x10]
	ldr r1, _0801C0AC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801C042:
	bl sub_080076E0
	cmp r0, #0
	beq _0801C04C
	b _0801C166
_0801C04C:
	bl sub_08007670
	cmp r0, #0
	beq _0801C056
	b _0801C166
_0801C056:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2, #0x3c]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C066
	rsbs r0, r0, #0
_0801C066:
	cmp r0, #1
	ble _0801C06C
	b _0801C166
_0801C06C:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x3e]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C07C
	rsbs r0, r0, #0
_0801C07C:
	cmp r0, #2
	bgt _0801C166
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801C166
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r2, #4
	strh r2, [r5, #0xa]
	ldr r0, _0801C0B0 @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C0B8
	ldr r4, _0801C0B4 @ =0x000900D2
	str r4, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C0AC: .4byte 0x0000FFFE
_0801C0B0: .4byte gUnknown_03003D08
_0801C0B4: .4byte 0x000900D2
_0801C0B8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801C0CC
	ldr r0, _0801C0C8 @ =0x000900CA
	str r0, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C0C8: .4byte 0x000900CA
_0801C0CC:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801C0E0
	ldr r1, _0801C0DC @ =0x000900C0
	str r1, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C0DC: .4byte 0x000900C0
_0801C0E0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801C0F4
	ldr r2, _0801C0F0 @ =0x000900B8
	str r2, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C0F0: .4byte 0x000900B8
_0801C0F4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C104
	ldr r3, _0801C100 @ =0x000900AF
	b _0801C136
	.align 2, 0
_0801C100: .4byte 0x000900AF
_0801C104:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801C118
	ldr r4, _0801C114 @ =0x000900A5
	str r4, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C114: .4byte 0x000900A5
_0801C118:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0801C12C
	ldr r0, _0801C128 @ =0x00090099
	str r0, [sp, #0x20]
	b _0801C138
	.align 2, 0
_0801C128: .4byte 0x00090099
_0801C12C:
	movs r2, #2
	ands r1, r2
	cmp r1, #0
	beq _0801C138
	ldr r3, _0801C1E0 @ =0x00090090
_0801C136:
	str r3, [sp, #0x20]
_0801C138:
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C150:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C150
	ldrh r0, [r5, #0x10]
	ldr r1, _0801C1E4 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801C166:
	bl sub_080076E0
	cmp r0, #0
	beq _0801C170
	b _0801C2C6
_0801C170:
	bl sub_08007670
	cmp r0, #0
	beq _0801C17A
	b _0801C2C6
_0801C17A:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r1, [sp, #0x1c]
	adds r1, #0x40
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C18C
	rsbs r0, r0, #0
_0801C18C:
	cmp r0, #2
	ble _0801C192
	b _0801C2C6
_0801C192:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x42
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801C1A4
	rsbs r1, r1, #0
_0801C1A4:
	cmp r1, #2
	ble _0801C1AA
	b _0801C2C6
_0801C1AA:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801C1B6
	b _0801C2C6
_0801C1B6:
	ldr r0, _0801C1E8 @ =gUnknown_03003D08
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0801C1C6
	b _0801C2C6
_0801C1C6:
	movs r3, #4
	strh r3, [r5, #0xa]
	ldrh r0, [r5, #0x10]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0801C1F0
	ldr r2, _0801C1EC @ =0x000900CB
	str r2, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C1E0: .4byte 0x00090090
_0801C1E4: .4byte 0x0000FFFE
_0801C1E8: .4byte gUnknown_03003D08
_0801C1EC: .4byte 0x000900CB
_0801C1F0:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0801C204
	ldr r3, _0801C200 @ =0x000900C1
	str r3, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C200: .4byte 0x000900C1
_0801C204:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0801C218
	ldr r4, _0801C214 @ =0x000900B9
	str r4, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C214: .4byte 0x000900B9
_0801C218:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801C22C
	ldr r0, _0801C228 @ =0x000900B0
	str r0, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C228: .4byte 0x000900B0
_0801C22C:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801C240
	ldr r1, _0801C23C @ =0x000900A6
	str r1, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C23C: .4byte 0x000900A6
_0801C240:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801C254
	ldr r2, _0801C250 @ =0x0009009A
	str r2, [sp, #0x20]
	b _0801C298
	.align 2, 0
_0801C250: .4byte 0x0009009A
_0801C254:
	movs r3, #2
	ands r2, r3
	cmp r2, #0
	beq _0801C298
	ldr r0, _0801C340 @ =gPlayerStats
	ldr r4, _0801C344 @ =0x00000272
	adds r7, r0, r4
	ldrh r4, [r7]
	lsrs r1, r4, #4
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r6, r0, r2
	ldrb r0, [r6]
	lsls r3, r0, #0xc
	orrs r3, r1
	movs r2, #1
	adds r0, r3, #0
	ands r0, r2
	ldr r1, _0801C348 @ =0x00090092
	str r1, [sp, #0x20]
	cmp r0, #0
	bne _0801C298
	ldr r0, _0801C34C @ =0x00090091
	str r0, [sp, #0x20]
	orrs r2, r3
	ldr r1, _0801C350 @ =0x00000FFF
	ands r1, r2
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r4
	orrs r0, r1
	strh r0, [r7]
	lsrs r2, r2, #0xc
	strb r2, [r6]
_0801C298:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x20]
	str r2, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C2B0:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C2B0
	ldrh r0, [r5, #0x10]
	ldr r3, _0801C354 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801C2C6:
	bl sub_080076E0
	cmp r0, #0
	beq _0801C2D0
	b _0801C434
_0801C2D0:
	bl sub_08007670
	cmp r0, #0
	beq _0801C2DA
	b _0801C434
_0801C2DA:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r1, [sp, #0x1c]
	adds r1, #0x44
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C2EC
	rsbs r0, r0, #0
_0801C2EC:
	cmp r0, #2
	ble _0801C2F2
	b _0801C434
_0801C2F2:
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x1c]
	adds r0, #0x46
	ldrh r0, [r0]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801C304
	rsbs r1, r1, #0
_0801C304:
	cmp r1, #2
	ble _0801C30A
	b _0801C434
_0801C30A:
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801C316
	b _0801C434
_0801C316:
	ldr r0, _0801C358 @ =gUnknown_03003D08
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0801C326
	b _0801C434
_0801C326:
	movs r2, #4
	strh r2, [r5, #0xa]
	ldrh r0, [r5, #0x10]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0801C360
	ldr r4, _0801C35C @ =0x000900CC
	str r4, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C340: .4byte gPlayerStats
_0801C344: .4byte 0x00000272
_0801C348: .4byte 0x00090092
_0801C34C: .4byte 0x00090091
_0801C350: .4byte 0x00000FFF
_0801C354: .4byte 0x0000FFFE
_0801C358: .4byte gUnknown_03003D08
_0801C35C: .4byte 0x000900CC
_0801C360:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0801C374
	ldr r0, _0801C370 @ =0x000900C2
	str r0, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C370: .4byte 0x000900C2
_0801C374:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801C388
	ldr r1, _0801C384 @ =0x000900BA
	str r1, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C384: .4byte 0x000900BA
_0801C388:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801C39C
	ldr r2, _0801C398 @ =0x000900B1
	str r2, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C398: .4byte 0x000900B1
_0801C39C:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0801C3B0
	ldr r3, _0801C3AC @ =0x000900A7
	str r3, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C3AC: .4byte 0x000900A7
_0801C3B0:
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _0801C3C4
	ldr r4, _0801C3C0 @ =0x0009009B
	str r4, [sp, #0x20]
	b _0801C406
	.align 2, 0
_0801C3C0: .4byte 0x0009009B
_0801C3C4:
	movs r2, #2
	ands r3, r2
	cmp r3, #0
	beq _0801C406
	ldr r0, _0801C684 @ =gPlayerStats
	ldr r1, _0801C688 @ =0x00000272
	adds r7, r0, r1
	ldrh r4, [r7]
	lsrs r1, r4, #4
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r6, r0, r3
	ldrb r0, [r6]
	lsls r3, r0, #0xc
	orrs r3, r1
	adds r0, r3, #0
	ands r0, r2
	ldr r1, _0801C68C @ =0x00090094
	str r1, [sp, #0x20]
	cmp r0, #0
	bne _0801C406
	ldr r0, _0801C690 @ =0x00090093
	str r0, [sp, #0x20]
	orrs r2, r3
	ldr r1, _0801C694 @ =0x00000FFF
	ands r1, r2
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r4
	orrs r0, r1
	strh r0, [r7]
	lsrs r2, r2, #0xc
	strb r2, [r6]
_0801C406:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x20]
	str r2, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C41E:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C41E
	ldrh r0, [r5, #0x10]
	ldr r3, _0801C698 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801C434:
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _0801C49A
	ldr r0, _0801C684 @ =gPlayerStats
	ldr r1, _0801C69C @ =0x00000275
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0801C49A
	subs r4, #1
	str r4, [sp, #0x20]
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	lsls r1, r4, #2
	ldr r3, [sp, #0x1c]
	adds r1, r1, r3
	adds r2, r1, #0
	adds r2, #0x58
	ldrh r1, [r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C46A
	rsbs r0, r0, #0
_0801C46A:
	cmp r0, #1
	bgt _0801C49A
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C47C
	rsbs r0, r0, #0
_0801C47C:
	cmp r0, #1
	bgt _0801C49A
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801C49A
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	movs r4, #0
	orrs r0, r4
	ldr r1, _0801C698 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801C49A:
	bl sub_080076E0
	adds r3, r0, #0
	cmp r3, #0
	bne _0801C514
	ldr r1, [r5, #0x58]
	asrs r1, r1, #0xf
	ldr r2, [sp, #0x1c]
	adds r2, #0x84
	ldrh r0, [r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801C4B6
	rsbs r1, r1, #0
_0801C4B6:
	cmp r1, #1
	bgt _0801C514
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C4C8
	rsbs r0, r0, #0
_0801C4C8:
	cmp r0, #1
	bgt _0801C514
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801C514
	strh r3, [r5, #2]
	strh r3, [r5, #4]
	movs r0, #3
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	ldr r0, _0801C6A0 @ =0x000900F5
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C4FE:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C4FE
	ldrh r0, [r5, #0x10]
	ldr r3, _0801C698 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r5, #0x10]
_0801C514:
	bl sub_080076E0
	adds r3, r0, #0
	cmp r3, #0
	bne _0801C5AE
	ldr r1, [r5, #0x58]
	asrs r1, r1, #0xf
	ldr r2, [sp, #0x1c]
	adds r2, #0x88
	ldrh r0, [r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801C530
	rsbs r1, r1, #0
_0801C530:
	cmp r1, #1
	bgt _0801C5AE
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C542
	rsbs r0, r0, #0
_0801C542:
	cmp r0, #1
	bgt _0801C5AE
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801C5AE
	strh r3, [r5, #2]
	strh r3, [r5, #4]
	movs r0, #5
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r5, #0x10]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0801C56E
	rsbs r1, r1, #0
_0801C56E:
	adds r0, r1, #0
	cmp r1, #0
	bge _0801C576
	adds r0, r1, #3
_0801C576:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	ldr r4, _0801C6A4 @ =0x000900F6
	adds r4, r0, r4
	str r4, [sp, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801C598:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801C598
	ldrh r0, [r5, #0x10]
	ldr r1, _0801C698 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x10]
_0801C5AE:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x24]
	ldrh r1, [r2, #4]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C5BE
	rsbs r0, r0, #0
_0801C5BE:
	cmp r0, #1
	bgt _0801C60C
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801C5D2
	rsbs r0, r0, #0
_0801C5D2:
	cmp r0, #1
	bgt _0801C60C
	ldrh r1, [r5, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C60C
	movs r4, #1
	strh r4, [r5, #0xe]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r5, #0x10]
	movs r0, #0x10
	rsbs r0, r0, #0
	str r0, [r5, #0x60]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r5, #0x64]
	movs r0, #9
	strh r0, [r5, #0xc]
	movs r0, #6
	bl sub_0800F3A0
	movs r0, #4
	bl FadeOutBGM
	movs r0, #0x65
	bl PlaySE
_0801C60C:
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xf
	adds r0, #2
	cmp r0, #0
	bge _0801C618
	rsbs r0, r0, #0
_0801C618:
	cmp r0, #2
	bgt _0801C64A
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xf
	subs r0, #0x3c
	cmp r0, #0
	bge _0801C628
	rsbs r0, r0, #0
_0801C628:
	cmp r0, #2
	bgt _0801C64A
	ldr r2, _0801C6A8 @ =gMapLayer_03003C00
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	bl sub_08007564
	ldrh r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	movs r4, #0
	strh r0, [r5, #0x10]
	bl sub_08007760
	strh r4, [r5, #0xc]
_0801C64A:
	bl WaitFrame
_0801C64E:
	bl sub_080074CC
	cmp r0, #0
	bne _0801C674
	bl sub_08007544
	cmp r0, #0
	beq _0801C662
	bl _0801B472
_0801C662:
	ldr r0, _0801C6AC @ =0x000514C9
	bl _08000400
	bl sub_080074CC
	cmp r0, #0
	bne _0801C674
	bl sub_0801B370
_0801C674:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C684: .4byte gPlayerStats
_0801C688: .4byte 0x00000272
_0801C68C: .4byte 0x00090094
_0801C690: .4byte 0x00090093
_0801C694: .4byte 0x00000FFF
_0801C698: .4byte 0x0000FFFE
_0801C69C: .4byte 0x00000275
_0801C6A0: .4byte 0x000900F5
_0801C6A4: .4byte 0x000900F6
_0801C6A8: .4byte gMapLayer_03003C00
_0801C6AC: .4byte 0x000514C9

	thumb_func_start sub_0801C6B0
sub_0801C6B0: @ 0x0801C6B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0801C6F8 @ =0xFFFFFC84
	add sp, r4
	ldr r0, _0801C6FC @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	adds r2, r0, #0
	ldr r0, [r2, #8]
	adds r1, r2, r0
	movs r0, #0
	mov sl, r0
	mov r3, sp
	adds r3, #0x94
	str r3, [sp, #0x374]
	mov r0, sp
	adds r0, #0x39
	str r0, [sp, #0x36c]
	ldr r3, _0801C700 @ =0x000002A9
	add r3, sp
	str r3, [sp, #0x370]
	ldr r0, _0801C704 @ =0x000002DD
	add r0, sp
	str r0, [sp, #0x360]
	mov r3, sp
	adds r3, #0xa1
	str r3, [sp, #0x35c]
	mov r0, sp
	adds r0, #0xc8
	str r0, [sp, #0x364]
	b _0801C70E
	.align 2, 0
_0801C6F8: .4byte 0xFFFFFC84
_0801C6FC: .4byte 0x080FB0F8
_0801C700: .4byte 0x000002A9
_0801C704: .4byte 0x000002DD
_0801C708:
	movs r0, #1
	add sl, r0
	adds r1, #8
_0801C70E:
	ldrh r3, [r2, #0xc]
	cmp sl, r3
	bhs _0801C720
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801C708
	ldr r0, [r1, #4]
	adds r1, r1, r0
	str r1, [sp, #0x34c]
_0801C720:
	movs r0, #0
	mov sl, r0
	ldr r5, _0801C7B4 @ =0x080FBA38
_0801C726:
	movs r0, #0x34
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	mov r4, sp
	adds r4, r4, r0
	adds r4, #0x10
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	ldm r5!, {r1}
	adds r0, r4, #0
	movs r2, #5
	movs r3, #3
	bl sub_08026ADC
	movs r0, #5
	strb r0, [r4, #0x1c]
	movs r0, #6
	strb r0, [r4, #0x1d]
	movs r2, #1
	add sl, r2
	mov r3, sl
	cmp r3, #6
	bls _0801C726
	ldr r6, _0801C7B8 @ =0x080FBA2C
	add r4, sp, #0x17c
	add r5, sp, #0x1e4
_0801C764:
	ldm r6!, {r1}
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08026ADC
	adds r4, #0x34
	cmp r4, r5
	bls _0801C764
	ldr r6, _0801C7BC @ =0x080FBA1C
	add r4, sp, #0x218
	add r5, sp, #0x2b4
_0801C77E:
	ldm r6!, {r1}
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08026ADC
	adds r4, #0x34
	cmp r4, r5
	bls _0801C77E
	add r0, sp, #0x10
	movs r1, #0xe
	strb r1, [r0, #0x1c]
	ldr r0, [sp, #0x374]
	strb r1, [r0]
	ldr r2, [sp, #0x36c]
	strb r1, [r2]
	ldr r3, [sp, #0x370]
	strb r1, [r3]
	ldr r0, [sp, #0x360]
	strb r1, [r0]
	ldr r2, [sp, #0x35c]
	strb r1, [r2]
	movs r0, #7
	ldr r3, [sp, #0x364]
	strb r0, [r3]
	b _0801CB68
	.align 2, 0
_0801C7B4: .4byte 0x080FBA38
_0801C7B8: .4byte 0x080FBA2C
_0801C7BC: .4byte 0x080FBA1C
_0801C7C0:
	bl sub_08007544
	cmp r0, #0
	bne _0801C7CE
	ldr r0, _0801C808 @ =0x000514C9
	bl _08000400
_0801C7CE:
	bl sub_08007510
	cmp r0, #0
	beq _0801C7D8
	b _0801CB64
_0801C7D8:
	bl sub_08007604
	cmp r0, #0
	beq _0801C7E2
	b _0801CB64
_0801C7E2:
	movs r0, #0
	mov sl, r0
	movs r1, #0x88
	lsls r1, r1, #2
	add r1, sp
	str r1, [sp, #0x368]
	ldr r2, _0801C80C @ =0x000001A5
	add r2, sp
	str r2, [sp, #0x378]
_0801C7F4:
	mov r0, sl
	subs r0, #1
	cmp r0, #5
	bhi _0801C880
	lsls r0, r0, #2
	ldr r1, _0801C810 @ =_0801C814
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801C808: .4byte 0x000514C9
_0801C80C: .4byte 0x000001A5
_0801C810: .4byte _0801C814
_0801C814: @ jump table
	.4byte _0801C962 @ case 0
	.4byte _0801C82C @ case 1
	.4byte _0801C84C @ case 2
	.4byte _0801C962 @ case 3
	.4byte _0801C962 @ case 4
	.4byte _0801C962 @ case 5
_0801C82C:
	mov r3, sl
	lsls r5, r3, #2
	ldr r0, [sp, #0x34c]
	adds r1, r5, r0
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x13
	ldr r2, _0801C848 @ =0xFFFC0000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x1a]
	lsls r1, r1, #0x13
	movs r3, #0xc0
	lsls r3, r3, #0xc
	b _0801C864
	.align 2, 0
_0801C848: .4byte 0xFFFC0000
_0801C84C:
	mov r0, sl
	lsls r5, r0, #2
	ldr r2, [sp, #0x34c]
	adds r1, r5, r2
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x13
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r0, r0, r3
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x1a]
	lsls r1, r1, #0x13
_0801C864:
	adds r1, r1, r3
	asrs r1, r1, #0x10
	add r2, sp, #0x348
	ldr r3, _0801C87C @ =0x0000034A
	add r3, sp
	movs r4, #0x10
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_08005FC4
	b _0801C8AE
	.align 2, 0
_0801C87C: .4byte 0x0000034A
_0801C880:
	mov r0, sl
	lsls r5, r0, #2
	ldr r2, [sp, #0x34c]
	adds r1, r5, r2
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #3
	adds r0, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x1a]
	lsls r1, r1, #3
	adds r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add r2, sp, #0x348
	ldr r3, _0801C90C @ =0x0000034A
	add r3, sp
	movs r4, #0x10
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_08005FC4
_0801C8AE:
	ldr r3, [sp, #0x34c]
	adds r1, r5, r3
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #3
	adds r0, #4
	ldrh r1, [r1, #0x1a]
	lsls r1, r1, #3
	adds r1, #4
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r0, sl
	cmp r0, #0
	bne _0801C910
	add r4, sp, #0x2f8
	add r3, sp, #0x308
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #2
	adds r2, r4, #0
	bl sub_08026C40
	add r0, sp, #0x348
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0801C90C @ =0x0000034A
	add r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08004344
	b _0801C962
	.align 2, 0
_0801C90C: .4byte 0x0000034A
_0801C910:
	movs r0, #0x34
	mov r6, sl
	muls r6, r0, r6
	mov r5, sp
	adds r5, r5, r6
	adds r5, #0x10
	add r4, sp, #0x2f8
	mov r3, sl
	lsls r0, r3, #1
	adds r4, r4, r0
	add r3, sp, #0x308
	adds r3, r3, r0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08026C40
	add r0, sp, #0x348
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0801CA64 @ =0x0000034A
	add r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x18
	adds r2, r2, r6
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_0801C962:
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #6
	bhi _0801C96E
	b _0801C7F4
_0801C96E:
	movs r1, #0
	mov sl, r1
	movs r2, #0xd2
	lsls r2, r2, #2
	add r2, sp
	str r2, [sp, #0x350]
	ldr r3, _0801CA64 @ =0x0000034A
	add r3, sp
	mov r8, r3
	ldr r7, [sp, #0x34c]
	adds r7, #0x3c
_0801C984:
	ldr r0, _0801CA68 @ =gUnknown_03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C998
	mov r0, sl
	cmp r0, #0
	bne _0801CA22
_0801C998:
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7, #2]
	lsls r1, r1, #3
	adds r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	ldr r2, [sp, #0x350]
	mov r3, r8
	bl sub_08005FC4
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, #4
	ldrh r1, [r7, #2]
	lsls r1, r1, #3
	adds r1, #4
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	add r5, sp, #0x17c
	movs r0, #0x34
	mov r6, sl
	muls r6, r0, r6
	adds r5, r5, r6
	add r4, sp, #0x320
	mov r3, sl
	lsls r0, r3, #1
	adds r4, r4, r0
	add r3, sp, #0x328
	adds r3, r3, r0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08026C40
	ldr r1, [sp, #0x350]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x184
	adds r2, r2, r6
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_0801CA22:
	adds r7, #4
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #2
	bls _0801C984
	movs r1, #0
	mov sl, r1
	movs r2, #0xd2
	lsls r2, r2, #2
	add r2, sp
	str r2, [sp, #0x354]
	ldr r3, _0801CA64 @ =0x0000034A
	add r3, sp
	str r3, [sp, #0x358]
	ldr r7, [sp, #0x34c]
	adds r7, #0x48
_0801CA44:
	ldr r0, _0801CA6C @ =0x030063D8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xa6
	ldrh r0, [r0]
	mov r2, sl
	asrs r0, r2
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0801CA70
	adds r0, r1, #0
	adds r0, #0xa8
	ldrh r4, [r0]
	b _0801CA72
	.align 2, 0
_0801CA64: .4byte 0x0000034A
_0801CA68: .4byte gUnknown_03003D08
_0801CA6C: .4byte 0x030063D8
_0801CA70:
	movs r4, #0
_0801CA72:
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7, #2]
	lsls r1, r1, #3
	adds r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	ldr r2, [sp, #0x354]
	ldr r3, [sp, #0x358]
	bl sub_08005FC4
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, #4
	ldrh r1, [r7, #2]
	lsls r1, r1, #3
	adds r1, #4
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	add r5, sp, #0x218
	movs r0, #0x34
	mov r6, sl
	muls r6, r0, r6
	adds r5, r5, r6
	mov r8, r4
	add r4, sp, #0x338
	mov r3, sl
	lsls r0, r3, #1
	adds r4, r4, r0
	add r3, sp, #0x340
	adds r3, r3, r0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_08026C40
	ldr r1, [sp, #0x354]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x358]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [sp, #0x368]
	adds r6, r2, r6
	ldr r2, [r6]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	mov r2, r8
	bl sub_08004344
	adds r7, #4
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #3
	bls _0801CA44
	ldr r1, [sp, #0x1c]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x1e
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x15
	movs r2, #3
	bl LoadPalette
	movs r3, #0
	mov sl, r3
	movs r2, #5
	movs r1, #6
	add r0, sp, #0x2c
_0801CB30:
	strb r2, [r0]
	strb r1, [r0, #1]
	adds r0, #0x34
	movs r3, #1
	add sl, r3
	mov r3, sl
	cmp r3, #6
	bls _0801CB30
	add r0, sp, #0x10
	movs r1, #0xe
	strb r1, [r0, #0x1c]
	ldr r0, [sp, #0x374]
	strb r1, [r0]
	ldr r2, [sp, #0x36c]
	strb r1, [r2]
	ldr r3, [sp, #0x35c]
	strb r1, [r3]
	movs r0, #7
	ldr r2, [sp, #0x364]
	strb r0, [r2]
	ldr r3, [sp, #0x378]
	strb r1, [r3]
	ldr r0, [sp, #0x370]
	strb r1, [r0]
	ldr r2, [sp, #0x360]
	strb r1, [r2]
_0801CB64:
	bl WaitFrame
_0801CB68:
	bl sub_080074CC
	cmp r0, #0
	bne _0801CB72
	b _0801C7C0
_0801CB72:
	movs r3, #0xdf
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CB88
sub_0801CB88: @ 0x0801CB88
	push {r4, r5, lr}
	sub sp, #8
	bl GetMultiplayerId
	ldr r2, _0801CBA4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	b _0801CBBC
	.align 2, 0
_0801CBA4: .4byte gPlayers
_0801CBA8:
	bl sub_08007670
	cmp r0, #0
	bne _0801CC58
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	bl WaitFrame
_0801CBBC:
	bl sub_0800F298
	cmp r0, #0
	beq _0801CBA8
	bl sub_0800F430
	cmp r0, #0
	beq _0801CBA8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801CBE4
	rsbs r0, r0, #0
_0801CBE4:
	ldr r2, _0801CC04 @ =0x000900D8
	adds r1, r0, r2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	ldr r5, _0801CC08 @ =gPlayers
	b _0801CC14
	.align 2, 0
_0801CC04: .4byte 0x000900D8
_0801CC08: .4byte gPlayers
_0801CC0C:
	bl sub_08007544
	cmp r0, #0
	beq _0801CC44
_0801CC14:
	bl sub_08007670
	cmp r0, #0
	bne _0801CC58
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _0801CC0C
_0801CC44:
	bl GetMultiplayerId
	ldr r2, _0801CC60 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0801CC64 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_0801CC58:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC60: .4byte gPlayers
_0801CC64: .4byte 0x0000FFFE

	thumb_func_start sub_0801CC68
sub_0801CC68: @ 0x0801CC68
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0801CCB4 @ =gPlayerStats
	ldr r1, _0801CCB8 @ =0x00000272
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801CC86
	bl sub_080074F0
	cmp r0, #0
	beq _0801CC8A
_0801CC86:
	bl sub_0800F53C
_0801CC8A:
	bl GetMultiplayerId
	ldr r2, _0801CCBC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	ldr r0, _0801CCB4 @ =gPlayerStats
	ldr r1, _0801CCB8 @ =0x00000272
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801CDA2
	b _0801CCCC
	.align 2, 0
_0801CCB4: .4byte gPlayerStats
_0801CCB8: .4byte 0x00000272
_0801CCBC: .4byte gPlayers
_0801CCC0:
	bl sub_08007670
	cmp r0, #0
	bne _0801CDB6
	bl WaitFrame
_0801CCCC:
	bl sub_0800F298
	cmp r0, #0
	beq _0801CCC0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801CDC0 @ =0x000900E6
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801CCEC:
	bl sub_08007670
	cmp r0, #0
	bne _0801CDB6
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	bne _0801CD0A
	bl sub_08007544
	cmp r0, #0
	bne _0801CCEC
_0801CD0A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801CDC4 @ =0x000900E7
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801CD22:
	bl sub_08007670
	cmp r0, #0
	bne _0801CDB6
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	bne _0801CD40
	bl sub_08007544
	cmp r0, #0
	bne _0801CD22
_0801CD40:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801CDC8 @ =0x000900E8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_0801CD58:
	bl sub_08007670
	cmp r0, #0
	bne _0801CDB6
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	bne _0801CD76
	bl sub_08007544
	cmp r0, #0
	bne _0801CD58
_0801CD76:
	ldr r3, _0801CDCC @ =gPlayerStats
	ldr r0, _0801CDD0 @ =0x00000272
	adds r5, r3, r0
	ldrh r4, [r5]
	lsrs r0, r4, #4
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r3, r3, r1
	ldrb r1, [r3]
	lsls r1, r1, #0xc
	orrs r1, r0
	movs r0, #4
	orrs r1, r0
	ldr r2, _0801CDD4 @ =0x00000FFF
	ands r2, r1
	lsls r2, r2, #4
	movs r0, #0xf
	ands r0, r4
	orrs r0, r2
	strh r0, [r5]
	lsrs r1, r1, #0xc
	strb r1, [r3]
_0801CDA2:
	bl GetMultiplayerId
	ldr r2, _0801CDD8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0801CDDC @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_0801CDB6:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801CDC0: .4byte 0x000900E6
_0801CDC4: .4byte 0x000900E7
_0801CDC8: .4byte 0x000900E8
_0801CDCC: .4byte gPlayerStats
_0801CDD0: .4byte 0x00000272
_0801CDD4: .4byte 0x00000FFF
_0801CDD8: .4byte gPlayers
_0801CDDC: .4byte 0x0000FFFE

	thumb_func_start sub_0801CDE0
sub_0801CDE0: @ 0x0801CDE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x48]
	ldr r4, _0801CE58 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x86
	ldrh r0, [r0]
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x38]
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x3c]
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801CE5C @ =gPlayers
	adds r1, r1, r0
	str r1, [r7, #0x40]
	movs r0, #0
	mov r8, r0
	ldr r0, [r4]
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r8, r0
	bhs _0801CE50
	movs r1, #0
	adds r2, r4, #0
_0801CE36:
	ldr r0, [r7, #0x38]
	add r0, r8
	strb r1, [r0]
	ldr r0, [r7, #0x3c]
	add r0, r8
	strb r1, [r0]
	movs r3, #1
	add r8, r3
	ldr r0, [r2]
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r8, r0
	blo _0801CE36
_0801CE50:
	adds r4, r7, #0
	adds r4, #0x36
	str r4, [r7, #0x44]
	b _0801CF7E
	.align 2, 0
_0801CE58: .4byte 0x030063D8
_0801CE5C: .4byte gPlayers
_0801CE60:
	bl sub_080075AC
	cmp r0, #0
	beq _0801CE6A
	b _0801CF7A
_0801CE6A:
	bl sub_08007510
	cmp r0, #0
	beq _0801CE74
	b _0801CF7A
_0801CE74:
	bl sub_08007544
	cmp r0, #0
	bne _0801CF7A
	bl sub_08007604
	cmp r0, #0
	bne _0801CF7A
	ldr r0, [r4]
	ldr r6, [r0, #0x20]
	movs r1, #0
	mov r8, r1
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r8, r0
	bhs _0801CF7A
	mov sl, r4
	movs r2, #0x34
	adds r2, r2, r7
	mov sb, r2
_0801CE9C:
	mov r3, sl
	ldr r0, [r3]
	ldr r0, [r0, #0x20]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	ldr r4, [r7, #0x40]
	ldr r0, [r4, #0x58]
	asrs r0, r0, #0xf
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801CEBE
	rsbs r0, r0, #0
_0801CEBE:
	cmp r0, #0
	bgt _0801CEF6
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801CED2
	rsbs r0, r0, #0
_0801CED2:
	cmp r0, #0
	bgt _0801CEF6
	mov r3, sl
	ldr r2, [r3]
	adds r2, #0x92
	movs r0, #1
	mov r4, r8
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #4
	movs r2, #0
	movs r3, #0
	bl sub_08029270
_0801CEF6:
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x92
	ldrh r0, [r0]
	mov r2, r8
	asrs r0, r2
	movs r5, #1
	ands r0, r5
	ldr r3, [r7, #0x38]
	add r3, r8
	str r3, [r7, #0x4c]
	cmp r0, #0
	beq _0801CF24
	strb r5, [r3]
	ldr r4, [r7, #0x3c]
	add r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801CF24
	movs r0, #0x72
	bl PlaySE
	strb r5, [r4]
_0801CF24:
	ldrh r0, [r6]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, sb
	ldr r3, [r7, #0x44]
	bl sub_08005FC4
	mov r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [r7, #0x44]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r6, #8]
	ldr r4, [r7, #0x4c]
	ldrb r3, [r4]
	movs r4, #3
	str r4, [sp]
	adds r4, r7, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
	movs r0, #1
	add r8, r0
	adds r6, #0xc
	ldr r1, _0801CFAC @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r8, r0
	blo _0801CE9C
_0801CF7A:
	bl WaitFrame
_0801CF7E:
	bl sub_080074CC
	cmp r0, #0
	bne _0801CF98
	ldr r4, _0801CFAC @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801CF98
	b _0801CE60
_0801CF98:
	ldr r2, [r7, #0x48]
	mov sp, r2
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFAC: .4byte 0x030063D8

	thumb_func_start sub_0801CFB0
sub_0801CFB0: @ 0x0801CFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x7c
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x4c]
	ldr r0, _0801D074 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x88
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x38]
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x3c]
	adds r0, r1, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r5, sp
	subs r5, r5, r0
	mov sp, r5
	adds r5, #0x10
	str r5, [r7, #0x40]
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x44]
	lsls r0, r1, #2
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x48]
	movs r5, #0
	str r5, [r7, #0x64]
	cmp r5, r1
	bhs _0801D060
	movs r0, #0
	mov sb, r0
	movs r6, #0
	mov r8, r3
	ldr r5, [r7, #0x3c]
	ldr r4, [r7, #0x38]
_0801D022:
	strh r6, [r4]
	strh r6, [r5]
	ldr r2, [r7, #0x40]
	ldr r3, [r7, #0x64]
	adds r1, r2, r3
	movs r0, #1
	strb r0, [r1]
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	ldr r2, [r7, #0x44]
	ldr r3, [r7, #0x64]
	adds r0, r2, r3
	mov r1, sb
	strb r1, [r0]
	adds r5, #2
	adds r4, #2
	adds r3, #1
	str r3, [r7, #0x64]
	ldr r0, _0801D074 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r3, r0
	blo _0801D022
_0801D060:
	ldr r0, _0801D074 @ =0x030063D8
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	b _0801D290
	.align 2, 0
_0801D074: .4byte 0x030063D8
_0801D078:
	bl sub_080075AC
	cmp r0, #0
	beq _0801D082
	b _0801D28C
_0801D082:
	bl sub_08007544
	cmp r0, #0
	beq _0801D08C
	b _0801D28C
_0801D08C:
	bl sub_08007510
	cmp r0, #0
	bne _0801D0B6
	bl sub_08007544
	cmp r0, #0
	bne _0801D0B6
	bl sub_08007604
	cmp r0, #0
	bne _0801D0B6
	ldr r0, _0801D0F8 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801D0B6
	adds r0, r7, #0
	bl sub_08026B74
_0801D0B6:
	ldr r0, _0801D0FC @ =0x030063D8
	ldr r0, [r0]
	ldr r2, [r0, #0x24]
	mov r8, r2
	movs r3, #0
	str r3, [r7, #0x64]
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r3, r0
	blo _0801D0CC
	b _0801D28C
_0801D0CC:
	adds r5, r7, #0
	adds r5, #0x34
	str r5, [r7, #0x50]
	adds r0, r7, #0
	adds r0, #0x36
	str r0, [r7, #0x54]
_0801D0D8:
	movs r1, #0
	mov sb, r1
	ldr r2, [r7, #0x64]
	lsls r2, r2, #1
	mov sl, r2
	ldr r3, [r7, #0x40]
	ldr r5, [r7, #0x64]
	adds r3, r3, r5
	str r3, [r7, #0x58]
	adds r5, #1
	str r5, [r7, #0x5c]
	mov r0, r8
	adds r0, #0xc
	str r0, [r7, #0x60]
	b _0801D1C0
	.align 2, 0
_0801D0F8: .4byte gFrameCounter
_0801D0FC: .4byte 0x030063D8
_0801D100:
	ldr r3, _0801D1EC @ =gPlayers
	movs r0, #0xd4
	mov r4, sb
	muls r4, r0, r4
	adds r0, r3, #0
	adds r0, #0xd0
	adds r0, r4, r0
	ldr r2, [r0]
	ldrh r1, [r2]
	lsrs r1, r1, #7
	mov r5, r8
	ldrh r0, [r5]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801D120
	rsbs r1, r1, #0
_0801D120:
	cmp r1, #1
	bgt _0801D1BC
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	mov r2, r8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801D136
	rsbs r0, r0, #0
_0801D136:
	cmp r0, #1
	bgt _0801D1BC
	movs r0, #0
	ldr r5, [r7, #0x58]
	strb r0, [r5]
	str r3, [r7, #0x68]
	bl sub_08007670
	ldr r3, [r7, #0x68]
	cmp r0, #0
	bne _0801D19E
	adds r0, r3, #0
	adds r0, #0x98
	adds r6, r4, r0
	ldr r1, [r7, #0x64]
	lsls r0, r1, #2
	ldr r2, [r7, #0x48]
	adds r5, r2, r0
	ldr r1, [r6]
	ldr r0, [r5]
	cmp r1, r0
	beq _0801D19E
	bl GetMultiplayerId
	ldr r3, [r7, #0x68]
	cmp sb, r0
	bne _0801D19E
	adds r2, r4, r3
	ldrh r0, [r2, #0xc]
	cmp r0, #7
	beq _0801D19E
	cmp r0, #8
	beq _0801D19E
	cmp r0, #9
	beq _0801D19E
	movs r0, #7
	strh r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x54
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r0, [r5]
	str r0, [r6]
	adds r1, #0x1c
	ldr r0, _0801D1F0 @ =0x0000FFFE
	strh r0, [r1]
_0801D19E:
	ldr r5, [r7, #0x44]
	ldr r0, [r7, #0x64]
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #1
	bne _0801D1BC
	ldr r3, [r7, #0x64]
	lsls r1, r3, #2
	ldr r5, [r7, #0x48]
	adds r1, r5, r1
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #0
	strb r0, [r2]
_0801D1BC:
	movs r1, #1
	add sb, r1
_0801D1C0:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801D100
	ldr r2, [r7, #0x58]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0801D1F4
	mov r3, r8
	ldrh r1, [r3, #8]
	ldr r2, [r7, #0x38]
	add r2, sl
	ldr r3, [r7, #0x3c]
	add r3, sl
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08026C40
	ldr r5, [r7, #0x58]
	strb r0, [r5]
	b _0801D20E
	.align 2, 0
_0801D1EC: .4byte gPlayers
_0801D1F0: .4byte 0x0000FFFE
_0801D1F4:
	ldr r1, [r7, #0x38]
	add r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801D204
	subs r0, #1
	strh r0, [r1]
	b _0801D20E
_0801D204:
	ldr r0, [r7, #0x44]
	ldr r2, [r7, #0x64]
	adds r1, r0, r2
	movs r0, #1
	strb r0, [r1]
_0801D20E:
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r2, [r7, #0x50]
	ldr r3, [r7, #0x54]
	bl sub_08005FC4
	movs r4, #3
	bl sub_08007510
	cmp r0, #0
	bne _0801D276
	bl sub_08007544
	cmp r0, #0
	bne _0801D276
	bl sub_08007604
	cmp r0, #0
	bne _0801D276
	adds r0, r7, #0
	bl sub_08026B74
	ldr r1, [r7, #0x50]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [r7, #0x54]
	movs r5, #0
	ldrsh r1, [r3, r5]
	mov r3, r8
	ldrh r2, [r3, #8]
	ldr r3, [r7, #0x38]
	add r3, sl
	ldrh r3, [r3]
	str r4, [sp]
	adds r4, r7, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
_0801D276:
	ldr r5, [r7, #0x5c]
	str r5, [r7, #0x64]
	ldr r0, [r7, #0x60]
	mov r8, r0
	ldr r0, _0801D2C0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r5, r0
	bhs _0801D28C
	b _0801D0D8
_0801D28C:
	bl WaitFrame
_0801D290:
	bl sub_080074CC
	cmp r0, #0
	bne _0801D2AA
	ldr r0, _0801D2C0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801D2AA
	b _0801D078
_0801D2AA:
	ldr r1, [r7, #0x4c]
	mov sp, r1
	add sp, #0x7c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D2C0: .4byte 0x030063D8

	thumb_func_start sub_0801D2C4
sub_0801D2C4: @ 0x0801D2C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x54]
	ldr r0, _0801D38C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x8a
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x38]
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x3c]
	adds r0, r1, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r4, sp
	subs r4, r4, r0
	mov sp, r4
	adds r4, #0x10
	str r4, [r7, #0x40]
	mov r5, sp
	subs r5, r5, r0
	mov sp, r5
	adds r5, #0x10
	str r5, [r7, #0x44]
	lsls r0, r1, #2
	mov r6, sp
	subs r6, r6, r0
	mov sp, r6
	adds r6, #0x10
	str r6, [r7, #0x48]
	movs r0, #0
	mov sb, r0
	cmp sb, r1
	bhs _0801D372
	movs r1, #0
	mov r8, r1
	movs r6, #0
	ldr r2, [r7, #0x48]
	mov sl, r2
	adds r5, r3, #0
	ldr r4, [r7, #0x38]
_0801D338:
	strh r6, [r4]
	strh r6, [r5]
	ldr r1, [r7, #0x40]
	add r1, sb
	movs r0, #1
	strb r0, [r1]
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r3, sl
	adds r3, #4
	mov sl, r3
	subs r3, #4
	stm r3!, {r0}
	ldr r0, [r7, #0x44]
	add r0, sb
	mov r1, r8
	strb r1, [r0]
	adds r5, #2
	adds r4, #2
	movs r2, #1
	add sb, r2
	ldr r0, _0801D38C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x8a
	ldrh r0, [r0]
	cmp sb, r0
	blo _0801D338
_0801D372:
	bl GetMultiplayerId
	str r0, [r7, #0x4c]
	ldr r0, _0801D38C @ =0x030063D8
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x14]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	b _0801D5A6
	.align 2, 0
_0801D38C: .4byte 0x030063D8
_0801D390:
	bl sub_080075AC
	cmp r0, #0
	beq _0801D39A
	b _0801D5A2
_0801D39A:
	bl sub_08007544
	cmp r0, #0
	beq _0801D3A4
	b _0801D5A2
_0801D3A4:
	ldr r0, [r4]
	ldr r3, [r0, #0x28]
	mov r8, r3
	movs r5, #0
	mov sb, r5
	adds r0, #0x8a
	ldrh r0, [r0]
	cmp sb, r0
	blo _0801D3B8
	b _0801D5A2
_0801D3B8:
	adds r6, r7, #0
	adds r6, #0x34
	str r6, [r7, #0x68]
	adds r0, r7, #0
	adds r0, #0x36
	str r0, [r7, #0x6c]
_0801D3C4:
	movs r4, #0
	movs r3, #0
	movs r6, #0
	mov r1, sb
	lsls r1, r1, #1
	str r1, [r7, #0x60]
	ldr r2, [r7, #0x40]
	add r2, sb
	str r2, [r7, #0x58]
	mov r5, sb
	adds r5, #1
	str r5, [r7, #0x5c]
	mov r0, r8
	adds r0, #0x1c
	str r0, [r7, #0x64]
	mov r2, r8
	adds r2, #4
_0801D3E6:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0801D406
	ldr r1, _0801D424 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0x92
	ldrh r1, [r0]
	ldrh r0, [r2]
	subs r0, #1
	asrs r1, r0
	movs r5, #1
	ands r1, r5
	cmp r1, #0
	beq _0801D404
	adds r3, #1
_0801D404:
	adds r4, #1
_0801D406:
	adds r2, #2
	adds r6, #1
	cmp r6, #7
	bls _0801D3E6
	cmp r4, r3
	bls _0801D4DC
	movs r6, #0
	mov r0, sb
	lsls r0, r0, #2
	str r0, [r7, #0x50]
	ldr r1, [r7, #0x48]
	adds r1, r1, r0
	mov sl, r1
	b _0801D4D4
	.align 2, 0
_0801D424: .4byte 0x030063D8
_0801D428:
	movs r0, #0xd4
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, _0801D500 @ =gPlayers
	adds r0, #0xd0
	adds r0, r4, r0
	ldr r2, [r0]
	ldrh r1, [r2]
	lsrs r1, r1, #7
	mov r3, r8
	ldrh r0, [r3]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801D446
	rsbs r1, r1, #0
_0801D446:
	cmp r1, #1
	bgt _0801D4D2
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	mov r5, r8
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801D45C
	rsbs r0, r0, #0
_0801D45C:
	cmp r0, #1
	bgt _0801D4D2
	movs r1, #0
	ldr r0, [r7, #0x58]
	strb r1, [r0]
	bl sub_08007670
	cmp r0, #0
	bne _0801D4BC
	ldr r0, _0801D500 @ =gPlayers
	adds r0, #0x98
	adds r5, r4, r0
	ldr r2, [r7, #0x48]
	ldr r0, [r7, #0x50]
	adds r3, r2, r0
	ldr r1, [r5]
	ldr r0, [r3]
	cmp r1, r0
	beq _0801D4BC
	ldr r1, [r7, #0x4c]
	cmp r6, r1
	bne _0801D4BC
	ldr r0, _0801D500 @ =gPlayers
	adds r2, r4, r0
	ldrh r0, [r2, #0xc]
	cmp r0, #7
	beq _0801D4BC
	cmp r0, #8
	beq _0801D4BC
	cmp r0, #9
	beq _0801D4BC
	movs r0, #7
	strh r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x54
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldr r0, [r3]
	str r0, [r5]
	adds r1, #0x1c
	ldr r0, _0801D504 @ =0x0000FFFE
	strh r0, [r1]
_0801D4BC:
	ldr r1, [r7, #0x44]
	add r1, sb
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801D4D2
	mov r5, sl
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	movs r0, #0
	strb r0, [r1]
_0801D4D2:
	adds r6, #1
_0801D4D4:
	bl sub_08001EC4
	cmp r6, r0
	blo _0801D428
_0801D4DC:
	ldr r1, [r7, #0x58]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801D508
	mov r2, r8
	ldrh r1, [r2, #0x18]
	ldr r3, [r7, #0x38]
	ldr r4, [r7, #0x60]
	adds r2, r3, r4
	ldr r5, [r7, #0x3c]
	adds r3, r5, r4
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08026C40
	ldr r6, [r7, #0x58]
	strb r0, [r6]
	b _0801D522
	.align 2, 0
_0801D500: .4byte gPlayers
_0801D504: .4byte 0x0000FFFE
_0801D508:
	ldr r0, [r7, #0x38]
	ldr r2, [r7, #0x60]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801D51A
	subs r0, #1
	strh r0, [r1]
	b _0801D522
_0801D51A:
	ldr r0, [r7, #0x44]
	add r0, sb
	movs r3, #1
	strb r3, [r0]
_0801D522:
	mov r4, r8
	ldrh r0, [r4]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [r7, #0x68]
	ldr r3, [r7, #0x6c]
	bl sub_08005FC4
	movs r4, #3
	bl sub_08007510
	cmp r0, #0
	bne _0801D58C
	bl sub_08007544
	cmp r0, #0
	bne _0801D58C
	bl sub_08007604
	cmp r0, #0
	bne _0801D58C
	adds r0, r7, #0
	bl sub_08026B74
	ldr r5, [r7, #0x68]
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [r7, #0x6c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r5, r8
	ldrh r2, [r5, #0x18]
	ldr r6, [r7, #0x38]
	ldr r5, [r7, #0x60]
	adds r3, r6, r5
	ldrh r3, [r3]
	str r4, [sp]
	adds r4, r7, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
_0801D58C:
	ldr r6, [r7, #0x5c]
	mov sb, r6
	ldr r0, [r7, #0x64]
	mov r8, r0
	ldr r1, _0801D5D4 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0x8a
	ldrh r0, [r0]
	cmp sb, r0
	bhs _0801D5A2
	b _0801D3C4
_0801D5A2:
	bl WaitFrame
_0801D5A6:
	bl sub_080074CC
	cmp r0, #0
	bne _0801D5C0
	ldr r4, _0801D5D4 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801D5C0
	b _0801D390
_0801D5C0:
	ldr r2, [r7, #0x54]
	mov sp, r2
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D5D4: .4byte 0x030063D8

	thumb_func_start sub_0801D5D8
sub_0801D5D8: @ 0x0801D5D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x54]
	ldr r0, _0801D6A0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x8c
	ldrh r2, [r0]
	lsls r1, r2, #1
	adds r1, #3
	lsrs r1, r1, #2
	lsls r1, r1, #2
	mov r3, sp
	subs r3, r3, r1
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x38]
	mov r4, sp
	subs r4, r4, r1
	mov sp, r4
	adds r4, #0x10
	str r4, [r7, #0x3c]
	adds r0, r2, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r5, sp
	subs r5, r5, r0
	mov sp, r5
	adds r5, #0x10
	str r5, [r7, #0x40]
	mov r6, sp
	subs r6, r6, r0
	mov sp, r6
	adds r6, #0x10
	str r6, [r7, #0x44]
	mov r0, sp
	subs r0, r0, r1
	mov sp, r0
	adds r0, #0x10
	str r0, [r7, #0x48]
	lsls r0, r2, #2
	mov r1, sp
	subs r1, r1, r0
	mov sp, r1
	adds r1, #0x10
	str r1, [r7, #0x4c]
	movs r3, #0
	mov r8, r3
	cmp r8, r2
	bhs _0801D698
	movs r4, #0
	mov sl, r4
	movs r2, #0
	ldr r6, [r7, #0x48]
	mov sb, r1
	ldr r5, [r7, #0x3c]
	ldr r4, [r7, #0x38]
_0801D656:
	strh r2, [r4]
	strh r2, [r5]
	ldr r1, [r7, #0x40]
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	str r2, [r7, #0x6c]
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	stm r1!, {r0}
	ldr r0, [r7, #0x44]
	add r0, r8
	mov r3, sl
	strb r3, [r0]
	ldr r2, [r7, #0x6c]
	strh r2, [r6]
	adds r6, #2
	adds r5, #2
	adds r4, #2
	movs r0, #1
	add r8, r0
	ldr r0, _0801D6A0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x8c
	ldrh r0, [r0]
	cmp r8, r0
	blo _0801D656
_0801D698:
	bl GetMultiplayerId
	str r0, [r7, #0x50]
	b _0801D8F4
	.align 2, 0
_0801D6A0: .4byte 0x030063D8
_0801D6A4:
	bl sub_080075AC
	cmp r0, #0
	beq _0801D6AE
	b _0801D8F0
_0801D6AE:
	bl sub_08007544
	cmp r0, #0
	beq _0801D6B8
	b _0801D8F0
_0801D6B8:
	bl sub_08007510
	cmp r0, #0
	bne _0801D6E2
	bl sub_08007544
	cmp r0, #0
	bne _0801D6E2
	bl sub_08007604
	cmp r0, #0
	bne _0801D6E2
	ldr r0, _0801D6F0 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801D6E2
	adds r0, r7, #0
	bl sub_08026B74
_0801D6E2:
	ldr r0, _0801D6F4 @ =0x030063D8
	ldr r0, [r0]
	ldr r6, [r0, #0x2c]
	movs r1, #0
	mov r8, r1
	b _0801D8E6
	.align 2, 0
_0801D6F0: .4byte gFrameCounter
_0801D6F4: .4byte 0x030063D8
_0801D6F8:
	ldr r1, [r6, #8]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	mov r3, r8
	lsls r2, r3, #1
	ldr r4, [r7, #0x48]
	adds r3, r4, r2
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r2, [r7, #0x64]
	ldr r5, [r7, #0x40]
	add r5, r8
	str r5, [r7, #0x58]
	ldrh r1, [r6, #4]
	cmp r0, r1
	bls _0801D72C
	movs r2, #0
	strb r2, [r5]
	movs r4, #0
	strh r4, [r3]
_0801D72C:
	ldr r5, [r7, #0x58]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801D82C
	movs r0, #0
	mov sb, r0
	mov r1, r8
	adds r1, #1
	str r1, [r7, #0x5c]
	adds r2, r7, #0
	adds r2, #0x34
	str r2, [r7, #0x68]
	movs r3, #0x36
	adds r3, r3, r7
	mov sl, r3
	adds r4, r6, #0
	adds r4, #0xc
	str r4, [r7, #0x60]
	b _0801D7FE
_0801D752:
	movs r0, #0xd4
	mov r4, sb
	muls r4, r0, r4
	ldr r0, _0801D824 @ =gPlayers
	adds r0, #0xd0
	adds r0, r4, r0
	ldr r2, [r0]
	ldrh r1, [r2]
	lsrs r1, r1, #7
	ldrh r0, [r6]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801D76E
	rsbs r1, r1, #0
_0801D76E:
	cmp r1, #1
	bgt _0801D7FA
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801D782
	rsbs r0, r0, #0
_0801D782:
	cmp r0, #1
	bgt _0801D7FA
	bl sub_08007670
	cmp r0, #0
	bne _0801D7DE
	ldr r0, _0801D824 @ =gPlayers
	adds r0, #0x98
	adds r5, r4, r0
	mov r1, r8
	lsls r0, r1, #2
	ldr r2, [r7, #0x4c]
	adds r3, r2, r0
	ldr r1, [r5]
	ldr r0, [r3]
	cmp r1, r0
	beq _0801D7DE
	ldr r0, [r7, #0x50]
	cmp sb, r0
	bne _0801D7DE
	ldr r1, _0801D824 @ =gPlayers
	adds r2, r4, r1
	ldrh r0, [r2, #0xc]
	cmp r0, #7
	beq _0801D7DE
	cmp r0, #8
	beq _0801D7DE
	cmp r0, #9
	beq _0801D7DE
	movs r0, #7
	strh r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x54
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldr r0, [r3]
	str r0, [r5]
	adds r1, #0x1c
	ldr r0, _0801D828 @ =0x0000FFFE
	strh r0, [r1]
_0801D7DE:
	ldr r2, [r7, #0x44]
	add r2, r8
	ldrb r0, [r2]
	cmp r0, #1
	bne _0801D7FA
	mov r5, r8
	lsls r1, r5, #2
	ldr r0, [r7, #0x4c]
	adds r1, r0, r1
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r1, #0
	strb r1, [r2]
_0801D7FA:
	movs r2, #1
	add sb, r2
_0801D7FE:
	bl sub_08001EC4
	cmp sb, r0
	blo _0801D752
	ldrh r1, [r6, #6]
	ldr r3, [r7, #0x38]
	ldr r4, [r7, #0x64]
	adds r2, r3, r4
	ldr r5, [r7, #0x3c]
	adds r3, r5, r4
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08026C40
	ldr r1, [r7, #0x58]
	strb r0, [r1]
	b _0801D876
	.align 2, 0
_0801D824: .4byte gPlayers
_0801D828: .4byte 0x0000FFFE
_0801D82C:
	ldr r2, [r7, #0x38]
	ldr r3, [r7, #0x64]
	adds r1, r2, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801D856
	subs r0, #1
	strh r0, [r1]
	mov r4, r8
	adds r4, #1
	str r4, [r7, #0x5c]
	adds r5, r7, #0
	adds r5, #0x34
	str r5, [r7, #0x68]
	movs r0, #0x36
	adds r0, r0, r7
	mov sl, r0
	adds r1, r6, #0
	adds r1, #0xc
	str r1, [r7, #0x60]
	b _0801D876
_0801D856:
	ldr r1, [r7, #0x44]
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	mov r2, r8
	adds r2, #1
	str r2, [r7, #0x5c]
	adds r3, r7, #0
	adds r3, #0x34
	str r3, [r7, #0x68]
	movs r4, #0x36
	adds r4, r4, r7
	mov sl, r4
	adds r5, r6, #0
	adds r5, #0xc
	str r5, [r7, #0x60]
_0801D876:
	ldrh r0, [r6]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [r7, #0x68]
	mov r3, sl
	bl sub_08005FC4
	movs r4, #3
	bl sub_08007510
	cmp r0, #0
	bne _0801D8DC
	bl sub_08007544
	cmp r0, #0
	bne _0801D8DC
	bl sub_08007604
	cmp r0, #0
	bne _0801D8DC
	adds r0, r7, #0
	bl sub_08026B74
	ldr r3, [r7, #0x68]
	movs r5, #0
	ldrsh r0, [r3, r5]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r6, #6]
	ldr r5, [r7, #0x38]
	ldr r6, [r7, #0x64]
	adds r3, r5, r6
	ldrh r3, [r3]
	str r4, [sp]
	adds r4, r7, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
_0801D8DC:
	ldr r0, [r7, #0x5c]
	mov r8, r0
	ldr r6, [r7, #0x60]
	ldr r0, _0801D924 @ =0x030063D8
	ldr r0, [r0]
_0801D8E6:
	adds r0, #0x8c
	ldrh r0, [r0]
	cmp r8, r0
	bhs _0801D8F0
	b _0801D6F8
_0801D8F0:
	bl WaitFrame
_0801D8F4:
	bl sub_080074CC
	cmp r0, #0
	bne _0801D90E
	ldr r0, _0801D924 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801D90E
	b _0801D6A4
_0801D90E:
	ldr r1, [r7, #0x54]
	mov sp, r1
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D924: .4byte 0x030063D8

	thumb_func_start sub_0801D928
sub_0801D928: @ 0x0801D928
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x48]
	ldr r2, _0801D9EC @ =0x030063D8
	mov r8, r2
	ldr r0, [r2]
	adds r0, #0x8e
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x38]
	mov r6, sp
	subs r6, r6, r0
	mov sp, r6
	adds r6, #0x10
	str r6, [r7, #0x3c]
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	add r3, sp, #0x10
	mov sl, r3
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x40]
	mov r6, sp
	subs r6, r6, r0
	mov sp, r6
	adds r6, #0x10
	str r6, [r7, #0x44]
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	add r3, sp, #0x10
	mov sb, r3
	movs r3, #0
	cmp r3, r1
	bhs _0801D9D8
	movs r5, #0
	mov ip, r6
	ldr r6, [r7, #0x40]
	str r6, [r7, #0x58]
	mov r0, sl
	str r0, [r7, #0x5c]
	mov r4, sb
	ldr r2, [r7, #0x3c]
	ldr r1, [r7, #0x38]
_0801D9A0:
	strh r5, [r1]
	strh r5, [r2]
	movs r6, #3
	strh r6, [r4]
	ldr r0, [r7, #0x5c]
	strh r5, [r0]
	ldr r6, [r7, #0x58]
	strh r5, [r6]
	mov r0, ip
	strh r5, [r0]
	movs r6, #2
	add ip, r6
	ldr r0, [r7, #0x58]
	adds r0, #2
	str r0, [r7, #0x58]
	ldr r6, [r7, #0x5c]
	adds r6, #2
	str r6, [r7, #0x5c]
	adds r4, #2
	adds r2, #2
	adds r1, #2
	adds r3, #1
	mov r6, r8
	ldr r0, [r6]
	adds r0, #0x8e
	ldrh r0, [r0]
	cmp r3, r0
	blo _0801D9A0
_0801D9D8:
	ldr r1, _0801D9EC @ =0x030063D8
	ldr r0, [r1]
	ldr r0, [r0, #0x30]
	ldr r1, [r0, #8]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	b _0801DB94
	.align 2, 0
_0801D9EC: .4byte 0x030063D8
_0801D9F0:
	bl sub_080075AC
	cmp r0, #0
	beq _0801D9FA
	b _0801DB90
_0801D9FA:
	bl sub_08007510
	cmp r0, #0
	beq _0801DA04
	b _0801DB90
_0801DA04:
	bl sub_08007544
	cmp r0, #0
	beq _0801DA0E
	b _0801DB90
_0801DA0E:
	bl sub_08007604
	cmp r0, #0
	beq _0801DA18
	b _0801DB90
_0801DA18:
	ldr r0, [r4]
	ldr r6, [r0, #0x30]
	ldr r0, _0801DA68 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801DA2E
	adds r0, r7, #0
	bl sub_08026B74
_0801DA2E:
	movs r3, #0
	ldr r0, [r4]
	adds r0, #0x8e
	ldrh r0, [r0]
	cmp r3, r0
	blo _0801DA3C
	b _0801DB90
_0801DA3C:
	movs r2, #0x34
	adds r2, r2, r7
	mov r8, r2
	adds r0, r7, #0
	adds r0, #0x36
	str r0, [r7, #0x58]
	adds r1, r7, #0
	adds r1, #0x1c
	str r1, [r7, #0x54]
_0801DA4E:
	lsls r0, r3, #1
	ldr r1, [r7, #0x38]
	adds r2, r1, r0
	movs r1, #0
	strh r1, [r2]
	movs r4, #0
	adds r5, r0, #0
	adds r3, #1
	str r3, [r7, #0x4c]
	adds r2, r6, #0
	adds r2, #0xc
	str r2, [r7, #0x50]
	b _0801DAAA
	.align 2, 0
_0801DA68: .4byte gFrameCounter
_0801DA6C:
	ldr r1, _0801DAE0 @ =gPlayers
	movs r0, #0xd4
	muls r0, r4, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	lsrs r1, r1, #7
	ldrh r0, [r6]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801DA86
	rsbs r1, r1, #0
_0801DA86:
	cmp r1, #3
	bgt _0801DAA8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801DA9A
	rsbs r0, r0, #0
_0801DA9A:
	cmp r0, #3
	bgt _0801DAA8
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bgt _0801DAE4
_0801DAA8:
	adds r4, #1
_0801DAAA:
	bl sub_08001EC4
	cmp r4, r0
	blo _0801DA6C
_0801DAB2:
	ldr r3, [r7, #0x38]
	adds r0, r3, r5
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801DAEE
	ldrh r0, [r6, #6]
	cmp r0, #0
	bne _0801DB1C
	mov r0, sb
	adds r1, r0, r5
	movs r0, #3
	strh r0, [r1]
	mov r1, sl
	adds r2, r1, r5
	ldr r0, [r7, #0x40]
	adds r3, r0, r5
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #3
	bl sub_08026C40
	b _0801DB1C
	.align 2, 0
_0801DAE0: .4byte gPlayers
_0801DAE4:
	ldr r2, [r7, #0x38]
	adds r1, r2, r5
	movs r0, #1
	strh r0, [r1]
	b _0801DAB2
_0801DAEE:
	ldrh r0, [r6, #6]
	cmp r0, #0
	bne _0801DB1C
	mov r3, sb
	adds r4, r3, r5
	ldrh r1, [r4]
	mov r3, sl
	adds r2, r3, r5
	ldr r3, [r7, #0x40]
	adds r3, r3, r5
	mov ip, r3
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08026C40
	ldr r2, [r7, #0x44]
	adds r1, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801DB1C
	movs r0, #2
	strh r0, [r4]
_0801DB1C:
	ldrh r0, [r6]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, r8
	ldr r3, [r7, #0x58]
	bl sub_08005FC4
	ldrh r0, [r6]
	lsls r0, r0, #3
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08006008
	mov r3, r8
	movs r6, #0
	ldrsh r4, [r3, r6]
	ldr r2, [r7, #0x58]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r6, [r7, #0x3c]
	adds r2, r6, r5
	ldrh r2, [r2]
	subs r1, r1, r2
	mov r3, sb
	adds r2, r3, r5
	ldrh r2, [r2]
	mov r6, sl
	adds r3, r6, r5
	ldrh r3, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r7, #0x54]
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	ldr r0, [r7]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	bl sub_08004344
	ldr r3, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, _0801DBC4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x8e
	ldrh r0, [r0]
	cmp r3, r0
	bhs _0801DB90
	b _0801DA4E
_0801DB90:
	bl WaitFrame
_0801DB94:
	bl sub_080074CC
	cmp r0, #0
	bne _0801DBAE
	ldr r4, _0801DBC4 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801DBAE
	b _0801D9F0
_0801DBAE:
	ldr r1, [r7, #0x48]
	mov sp, r1
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DBC4: .4byte 0x030063D8

	thumb_func_start sub_0801DBC8
sub_0801DBC8: @ 0x0801DBC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	add r7, sp, #0x10
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x48]
	ldr r4, _0801DC5C @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x90
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	adds r2, #0x10
	str r2, [r7, #0x38]
	mov r3, sp
	subs r3, r3, r0
	mov sp, r3
	adds r3, #0x10
	str r3, [r7, #0x3c]
	mov r5, sp
	subs r5, r5, r0
	mov sp, r5
	adds r5, #0x10
	str r5, [r7, #0x40]
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801DC60 @ =gPlayers
	adds r1, r1, r0
	str r1, [r7, #0x44]
	movs r1, #0
	ldr r0, [r4]
	adds r0, #0x90
	ldrh r0, [r0]
	cmp r1, r0
	bhs _0801DC46
	movs r5, #0
	adds r6, r4, #0
	ldr r4, [r7, #0x38]
	ldr r3, [r7, #0x40]
	ldr r2, [r7, #0x3c]
_0801DC2E:
	strh r5, [r2]
	strh r5, [r3]
	strh r5, [r4]
	adds r4, #2
	adds r3, #2
	adds r2, #2
	adds r1, #1
	ldr r0, [r6]
	adds r0, #0x90
	ldrh r0, [r0]
	cmp r1, r0
	blo _0801DC2E
_0801DC46:
	ldr r0, _0801DC5C @ =0x030063D8
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	ldr r1, [r0, #0x18]
	adds r0, r7, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	b _0801DFCA
	.align 2, 0
_0801DC5C: .4byte 0x030063D8
_0801DC60: .4byte gPlayers
_0801DC64:
	bl sub_080075AC
	cmp r0, #0
	beq _0801DC6E
	b _0801DFC6
_0801DC6E:
	bl sub_08007510
	cmp r0, #0
	beq _0801DC78
	b _0801DFC6
_0801DC78:
	bl sub_08007544
	cmp r0, #0
	beq _0801DC82
	b _0801DFC6
_0801DC82:
	bl sub_08007604
	cmp r0, #0
	beq _0801DC8C
	b _0801DFC6
_0801DC8C:
	ldr r0, [r4]
	ldr r6, [r0, #0x34]
	str r6, [r7, #0x60]
	movs r1, #0
	adds r0, #0x90
	ldrh r0, [r0]
	cmp r1, r0
	blo _0801DC9E
	b _0801DFC6
_0801DC9E:
	movs r0, #0x34
	adds r0, r0, r7
	mov sl, r0
	adds r2, r7, #0
	adds r2, #0x36
	str r2, [r7, #0x5c]
	adds r3, r7, #0
	adds r3, #0x1c
	str r3, [r7, #0x50]
_0801DCB0:
	movs r4, #0
	movs r3, #0
	mov r8, r3
	lsls r5, r1, #1
	str r5, [r7, #0x54]
	adds r1, #1
	str r1, [r7, #0x4c]
	ldr r6, [r7, #0x60]
	adds r6, #0x1c
	str r6, [r7, #0x58]
	ldr r2, [r7, #0x60]
	adds r2, #8
_0801DCC8:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0801DCE8
	ldr r1, _0801DD4C @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0x92
	ldrh r1, [r0]
	ldrh r0, [r2]
	subs r0, #1
	asrs r1, r0
	movs r5, #1
	ands r1, r5
	cmp r1, #0
	beq _0801DCE6
	adds r4, #1
_0801DCE6:
	adds r3, #1
_0801DCE8:
	adds r2, #2
	movs r6, #1
	add r8, r6
	mov r0, r8
	cmp r0, #7
	bls _0801DCC8
	cmp r3, r4
	bne _0801DD1A
	ldr r1, [r7, #0x38]
	ldr r2, [r7, #0x54]
	adds r4, r1, r2
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801DD10
	movs r0, #0x71
	bl PlaySE
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0801DD10:
	ldr r3, [r7, #0x3c]
	ldr r4, [r7, #0x54]
	adds r0, r3, r4
	movs r5, #1
	strh r5, [r0]
_0801DD1A:
	ldr r6, [r7, #0x3c]
	ldr r1, [r7, #0x54]
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801DD50
	ldr r2, [r7, #0x60]
	ldrh r0, [r2, #6]
	cmp r0, #0
	beq _0801DD30
	b _0801DF4A
_0801DD30:
	ldr r3, [r7, #0x40]
	adds r1, r3, r1
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bhi _0801DD44
	b _0801DF4A
_0801DD44:
	movs r0, #0x20
	strh r0, [r1]
	b _0801DF4A
	.align 2, 0
_0801DD4C: .4byte 0x030063D8
_0801DD50:
	ldr r4, [r7, #0x60]
	ldrh r1, [r4]
	lsls r1, r1, #3
	ldr r5, [r7, #0x44]
	ldr r0, [r5, #0x58]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	mov r6, sl
	strh r1, [r6]
	ldrh r1, [r4, #2]
	lsls r1, r1, #3
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r7, #0x5c]
	strh r1, [r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r5, #0xc]
	movs r1, #0x14
	cmp r0, #5
	bne _0801DD9C
	movs r1, #0x20
_0801DD9C:
	cmp r4, r1
	bhs _0801DE2A
	adds r4, r1, #0
	mov r5, sl
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [r7, #0x5c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x1c
	ldr r5, _0801DFF8 @ =0x0805289C
	ldr r0, _0801DFFC @ =0x080FB730
	adds r0, r1, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r5
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r3, r0, #0
	muls r3, r4, r3
	lsls r0, r1, #5
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r6, [r7, #0x44]
	ldr r0, [r6, #0x58]
	adds r3, r3, r0
	ldr r0, [r6, #0x5c]
	adds r2, r2, r0
	ldr r0, _0801E000 @ =0x080FB720
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r3, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801DE2A
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0801E004 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r3, r0, #0
	muls r3, r4, r3
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r5, #0
	ldrsh r0, [r1, r5]
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r0, [r6, #0x58]
	adds r0, r0, r3
	str r0, [r6, #0x58]
	ldr r0, [r6, #0x5c]
	adds r0, r0, r2
	str r0, [r6, #0x5c]
_0801DE2A:
	movs r6, #0
	mov r8, r6
	mov sb, sl
_0801DE30:
	ldr r0, _0801E008 @ =gActiveEnemyMask
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801DF1E
	ldr r2, _0801E00C @ =gEnemies
	movs r0, #0x94
	mov r1, r8
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r3, [r7, #0x60]
	ldrh r1, [r3]
	lsls r1, r1, #3
	ldr r0, [r5, #0x10]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	mov r4, sb
	strh r1, [r4]
	ldrh r1, [r3, #2]
	lsls r1, r1, #3
	ldr r0, [r5, #0x14]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r6, [r7, #0x5c]
	strh r1, [r6]
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x13
	bhi _0801DF1E
	movs r0, #0x14
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r6, sl
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [r7, #0x5c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x1c
	ldr r6, _0801DFF8 @ =0x0805289C
	ldr r0, _0801DFFC @ =0x080FB730
	adds r0, r1, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r3, r0, #0
	muls r3, r4, r3
	lsls r0, r1, #5
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r0, [r5, #0x10]
	adds r3, r3, r0
	ldr r0, [r5, #0x14]
	adds r2, r2, r0
	ldr r0, _0801E000 @ =0x080FB720
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r3, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801DF1E
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0801E004 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r6
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r3, r0, #0
	muls r3, r4, r3
	lsls r1, r1, #5
	adds r1, r1, r6
	movs r6, #0
	ldrsh r0, [r1, r6]
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r0, [r5, #0x10]
	adds r0, r0, r3
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	adds r0, r0, r2
	str r0, [r5, #0x14]
_0801DF1E:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #4
	bls _0801DE30
	ldr r2, [r7, #0x60]
	ldrh r3, [r2, #6]
	cmp r3, #0
	bne _0801DF4A
	ldr r4, [r7, #0x40]
	ldr r5, [r7, #0x54]
	adds r2, r4, r5
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r1, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DF4A
	strh r3, [r2]
_0801DF4A:
	ldr r1, [r7, #0x60]
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, sl
	ldr r3, [r7, #0x5c]
	bl sub_08005FC4
	ldr r2, [r7, #0x60]
	ldrh r0, [r2]
	lsls r0, r0, #3
	ldrh r1, [r2, #2]
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r7, #0
	bl sub_08026B74
	mov r3, sl
	movs r5, #0
	ldrsh r0, [r3, r5]
	ldr r6, [r7, #0x5c]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [r7, #0x40]
	ldr r5, [r7, #0x54]
	adds r2, r3, r5
	ldrh r2, [r2]
	subs r1, r1, r2
	ldr r6, [r7, #0x60]
	ldrh r2, [r6, #4]
	str r4, [sp]
	ldr r3, [r7, #0x50]
	str r3, [sp, #4]
	ldr r3, [r7, #8]
	str r3, [sp, #8]
	ldr r3, [r7]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08004344
	ldr r1, [r7, #0x4c]
	ldr r4, [r7, #0x58]
	str r4, [r7, #0x60]
	ldr r5, _0801E010 @ =0x030063D8
	ldr r0, [r5]
	adds r0, #0x90
	ldrh r0, [r0]
	cmp r1, r0
	bhs _0801DFC6
	b _0801DCB0
_0801DFC6:
	bl WaitFrame
_0801DFCA:
	bl sub_080074CC
	cmp r0, #0
	bne _0801DFE4
	ldr r4, _0801E010 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801DFE4
	b _0801DC64
_0801DFE4:
	ldr r6, [r7, #0x48]
	mov sp, r6
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFF8: .4byte 0x0805289C
_0801DFFC: .4byte 0x080FB730
_0801E000: .4byte 0x080FB720
_0801E004: .4byte 0x080FB9FC
_0801E008: .4byte gActiveEnemyMask
_0801E00C: .4byte gEnemies
_0801E010: .4byte 0x030063D8

	thumb_func_start sub_0801E014
sub_0801E014: @ 0x0801E014
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xcc
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801E080 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0xa4]
	mov r1, sp
	adds r1, #0x64
	str r1, [sp, #0xbc]
	mov r2, sp
	adds r2, #0x6c
	str r2, [sp, #0xc0]
	mov r3, sp
	adds r3, #0x7c
	str r3, [sp, #0xc4]
	mov r4, sp
	adds r4, #0x84
	str r4, [sp, #0xc8]
	mov r5, sp
	adds r5, #0x30
	str r5, [sp, #0xb4]
	movs r6, #0
_0801E052:
	ldr r0, [sp, #0xa4]
	lsls r4, r0, #0x10
	asrs r5, r4, #0xf
	ldr r1, [sp, #0xbc]
	adds r0, r1, r5
	strh r6, [r0]
	ldr r2, [sp, #0xc0]
	adds r0, r2, r5
	strh r6, [r0]
	ldr r3, [sp, #0xc4]
	adds r0, r3, r5
	strh r6, [r0]
	bl sub_080074F0
	adds r1, r0, #0
	str r4, [sp, #0xb8]
	cmp r1, #0
	beq _0801E084
	ldr r4, [sp, #0xc8]
	adds r1, r4, r5
	movs r0, #1
	strh r0, [r1]
	b _0801E08A
	.align 2, 0
_0801E080: .4byte gPlayers
_0801E084:
	ldr r2, [sp, #0xc8]
	adds r0, r2, r5
	strh r1, [r0]
_0801E08A:
	ldr r3, [sp, #0xb8]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r5, r0, #0x10
	str r5, [sp, #0xa4]
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0801E052
	bl GetMultiplayerId
	bl sub_08007638
	cmp r0, #0
	beq _0801E0EA
	ldr r0, _0801E0C0 @ =0x030063D8
	ldr r0, [r0]
	add r1, sp, #0x10
	ldr r0, [r0, #0x38]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	movs r0, #3
	b _0801E0D6
	.align 2, 0
_0801E0C0: .4byte 0x030063D8
_0801E0C4:
	lsls r0, r4, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x10
	movs r0, #0
	strh r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0801E0D6:
	str r0, [sp, #0xa4]
	ldr r1, [sp, #0xa4]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	bl sub_08001EC4
	subs r0, #1
	cmp r4, r0
	bgt _0801E0C4
	b _0801E0FE
_0801E0EA:
	ldr r0, _0801E110 @ =0x030063D8
	ldr r0, [r0]
	add r1, sp, #0x10
	ldr r0, [r0, #0x38]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
_0801E0FE:
	ldr r1, _0801E114 @ =0x00100043
	movs r3, #1
	rsbs r3, r3, #0
	ldr r0, [sp, #0xb4]
	movs r2, #0xd
	bl sub_08026ADC
	b _0801E58E
	.align 2, 0
_0801E110: .4byte 0x030063D8
_0801E114: .4byte 0x00100043
_0801E118:
	bl sub_08007604
	cmp r0, #0
	beq _0801E122
	b _0801E58A
_0801E122:
	movs r0, #0
	str r0, [sp, #0xa4]
	mov r1, sp
	adds r1, #0x8c
	str r1, [sp, #0xac]
_0801E12C:
	ldr r2, [sp, #0xa4]
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	lsls r6, r4, #1
	mov r7, sp
	adds r7, r7, r6
	adds r7, #0x10
	ldrh r0, [r7]
	str r1, [sp, #0xb8]
	cmp r0, #0
	bne _0801E144
	b _0801E576
_0801E144:
	ldr r3, [sp, #0xc4]
	adds r5, r3, r6
	ldrh r0, [r5]
	add r1, sp, #0x18
	mov r8, r1
	cmp r0, #0
	beq _0801E154
	b _0801E372
_0801E154:
	ldr r2, _0801E248 @ =0x030063D8
	mov sl, r2
	ldr r0, [r2]
	adds r0, #0x94
	ldrh r0, [r0]
	asrs r0, r4
	movs r3, #1
	mov sb, r3
	ands r0, r3
	cmp r0, #0
	beq _0801E174
	movs r0, #0x22
	bl PlaySE
	mov r0, sb
	strh r0, [r5]
_0801E174:
	bl sub_08007544
	cmp r0, #0
	beq _0801E17E
	b _0801E372
_0801E17E:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0801E186
	b _0801E372
_0801E186:
	ldr r0, [sp, #0xa8]
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #7
	ldrh r1, [r7]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801E19A
	rsbs r0, r0, #0
_0801E19A:
	cmp r0, #2
	ble _0801E1A0
	b _0801E372
_0801E1A0:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	mov r2, r8
	adds r1, r2, r6
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801E1B4
	rsbs r0, r0, #0
_0801E1B4:
	cmp r0, #2
	ble _0801E1BA
	b _0801E372
_0801E1BA:
	ldr r3, [sp, #0xa8]
	ldrh r0, [r3, #0xc]
	subs r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801E1D0
	ldrh r1, [r3, #0x10]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r3, #0x10]
_0801E1D0:
	bl sub_080076E0
	cmp r0, #0
	beq _0801E1DA
	b _0801E372
_0801E1DA:
	bl sub_08007510
	cmp r0, #0
	beq _0801E1E4
	b _0801E372
_0801E1E4:
	ldr r0, _0801E24C @ =gKeysNew
	ldrh r1, [r0]
	ldr r5, [sp, #0xa8]
	ldrh r0, [r5, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801E1F4
	b _0801E372
_0801E1F4:
	ldrh r0, [r5, #0xc]
	cmp r0, #9
	bne _0801E1FC
	b _0801E372
_0801E1FC:
	bl sub_080074F0
	cmp r0, #0
	bne _0801E206
	b _0801E356
_0801E206:
	bl sub_08001F64
	cmp r0, #0
	bne _0801E210
	b _0801E334
_0801E210:
	mov r0, sl
	ldr r2, [r0]
	adds r2, #0x94
	mov r0, sb
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	bl sub_080076A8
	cmp r0, #0
	beq _0801E298
	bl sub_08007638
	cmp r0, #0
	beq _0801E254
	bl GetPlayerClass
	adds r1, r0, #0
	lsls r2, r4, #2
	ldr r3, [sp, #0xac]
	adds r2, r3, r2
	ldr r0, _0801E250 @ =0x000F001A
	movs r3, #0
	bl sub_080130F4
	b _0801E2DA
	.align 2, 0
_0801E248: .4byte 0x030063D8
_0801E24C: .4byte gKeysNew
_0801E250: .4byte 0x000F001A
_0801E254:
	lsls r4, r4, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0801E278 @ =0x000F001B
	cmp r1, r0
	bne _0801E280
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r5, [sp, #0xac]
	adds r2, r5, r4
	ldr r0, _0801E27C @ =0x000F001C
	movs r3, #0
	bl sub_080130F4
	b _0801E2DA
	.align 2, 0
_0801E278: .4byte 0x000F001B
_0801E27C: .4byte 0x000F001C
_0801E280:
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r0, [sp, #0xac]
	adds r2, r0, r4
	ldr r0, _0801E294 @ =0x000F0019
	movs r3, #0
	bl sub_080130F4
	b _0801E2DA
	.align 2, 0
_0801E294: .4byte 0x000F0019
_0801E298:
	bl sub_08007638
	cmp r0, #0
	beq _0801E2BE
	lsls r4, r4, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r2, [sp, #0xac]
	adds r4, r2, r4
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0801E2DA
_0801E2BE:
	lsls r4, r4, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r3, [sp, #0xac]
	adds r4, r3, r4
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
_0801E2DA:
	add r5, sp, #0x8c
	ldr r0, [sp, #0xb8]
	asrs r4, r0, #0x10
	lsls r1, r4, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0xf
	ldr r2, _0801E330 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	lsls r4, r4, #2
	adds r4, r5, r4
	adds r3, r4, #0
	bl sub_0800FA74
	ldr r3, [r0, #0x10]
	movs r1, #0x80
	orrs r3, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	ldr r2, [r0, #4]
	asrs r2, r2, #0xc
	movs r0, #1
	str r0, [sp]
	adds r0, r3, #0
	adds r3, r4, #0
	bl SpawnFieldItem
	ldr r2, [sp, #0xa4]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	b _0801E366
	.align 2, 0
_0801E330: .4byte gMapLayer_03003910
_0801E334:
	ldr r3, [sp, #0xa4]
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	mov r5, sl
	ldr r2, [r5]
	adds r2, #0x94
	mov r0, sb
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	b _0801E366
_0801E356:
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x94
	mov r1, sb
	lsls r1, r4
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_0801E366:
	ldr r0, _0801E418 @ =gKeysNew
	ldr r3, [sp, #0xa8]
	ldrh r2, [r3, #6]
	ldrh r1, [r0]
	bics r1, r2
	strh r1, [r0]
_0801E372:
	ldr r4, [sp, #0xb8]
	asrs r7, r4, #0x10
	lsls r6, r7, #1
	mov r5, sp
	adds r5, r5, r6
	adds r5, #0x10
	ldrh r0, [r5]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	mov r1, r8
	adds r4, r1, r6
	ldrh r1, [r4]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r2, sp, #0x9c
	mov sl, r2
	mov r3, sp
	adds r3, #0x9e
	str r3, [sp, #0xb0]
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	mov sb, r2
	str r2, [sp, #4]
	mov r2, sl
	bl sub_08005FC4
	ldrh r0, [r5]
	lsls r0, r0, #3
	ldrh r1, [r4]
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xa0]
	ldr r3, [sp, #0xc4]
	adds r4, r3, r6
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801E41C
	bl sub_080075AC
	cmp r0, #0
	beq _0801E3D0
	b _0801E576
_0801E3D0:
	bl sub_08007510
	cmp r0, #0
	beq _0801E3DA
	b _0801E576
_0801E3DA:
	bl sub_08007544
	cmp r0, #0
	beq _0801E3E4
	b _0801E576
_0801E3E4:
	bl sub_08007604
	cmp r0, #0
	beq _0801E3EE
	b _0801E576
_0801E3EE:
	mov r4, sl
	movs r5, #0
	ldrsh r0, [r4, r5]
	ldr r2, [sp, #0xb0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xa0]
	str r4, [sp]
	add r2, sp, #0x4c
	str r2, [sp, #4]
	ldr r5, [sp, #0xb4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	b _0801E576
	.align 2, 0
_0801E418: .4byte gKeysNew
_0801E41C:
	ldrh r1, [r4]
	ldr r0, [sp, #0xbc]
	adds r5, r0, r6
	ldr r2, [sp, #0xc0]
	adds r3, r2, r6
	mov r0, sb
	str r0, [sp]
	ldr r0, [sp, #0xb4]
	adds r2, r5, #0
	bl sub_08026C40
	add r1, sp, #0x74
	adds r1, r1, r6
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E48E
	bl sub_080075AC
	cmp r0, #0
	beq _0801E448
	b _0801E576
_0801E448:
	bl sub_08007510
	cmp r0, #0
	beq _0801E452
	b _0801E576
_0801E452:
	bl sub_08007544
	cmp r0, #0
	beq _0801E45C
	b _0801E576
_0801E45C:
	bl sub_08007604
	cmp r0, #0
	beq _0801E466
	b _0801E576
_0801E466:
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xb0]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r4]
	ldrh r3, [r5]
	ldr r4, [sp, #0xa0]
	str r4, [sp]
	add r4, sp, #0x4c
	str r4, [sp, #4]
	ldr r5, [sp, #0xb4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0xc]
	bl sub_08004344
	b _0801E576
_0801E48E:
	ldr r1, [sp, #0xc8]
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801E576
	bl sub_080076A8
	cmp r0, #0
	beq _0801E504
	bl sub_08007638
	cmp r0, #0
	beq _0801E4C0
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r0, _0801E4BC @ =0x000F001A
	add r2, sp, #0x8c
	movs r3, #0
	bl sub_080130F4
	b _0801E546
	.align 2, 0
_0801E4BC: .4byte 0x000F001A
_0801E4C0:
	lsls r4, r7, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0801E4E4 @ =0x000F001B
	cmp r1, r0
	bne _0801E4EC
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r3, [sp, #0xac]
	adds r2, r3, r4
	ldr r0, _0801E4E8 @ =0x000F001C
	movs r3, #0
	bl sub_080130F4
	b _0801E546
	.align 2, 0
_0801E4E4: .4byte 0x000F001B
_0801E4E8: .4byte 0x000F001C
_0801E4EC:
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r5, [sp, #0xac]
	adds r2, r5, r4
	ldr r0, _0801E500 @ =0x000F0019
	movs r3, #0
	bl sub_080130F4
	b _0801E546
	.align 2, 0
_0801E500: .4byte 0x000F0019
_0801E504:
	bl sub_08007638
	cmp r0, #0
	beq _0801E52A
	lsls r4, r7, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r0, [sp, #0xac]
	adds r4, r0, r4
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0801E546
_0801E52A:
	lsls r4, r7, #2
	add r0, sp, #0x20
	adds r0, r0, r4
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	ldr r2, [sp, #0xac]
	adds r4, r2, r4
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
_0801E546:
	add r5, sp, #0x8c
	ldr r4, [sp, #0xb8]
	asrs r3, r4, #0x10
	lsls r4, r3, #1
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x10
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	mov r2, r8
	adds r1, r2, r4
	ldrh r1, [r1]
	lsls r1, r1, #0xf
	ldr r2, _0801E5B8 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	lsls r3, r3, #2
	adds r3, r5, r3
	bl sub_0800FA74
	ldr r3, [sp, #0xc8]
	adds r4, r3, r4
	movs r0, #1
	strh r0, [r4]
_0801E576:
	ldr r4, [sp, #0xb8]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r4, r5
	lsrs r1, r0, #0x10
	str r1, [sp, #0xa4]
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _0801E58A
	b _0801E12C
_0801E58A:
	bl WaitFrame
_0801E58E:
	bl sub_080074CC
	cmp r0, #0
	bne _0801E5A8
	ldr r0, _0801E5BC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801E5A8
	b _0801E118
_0801E5A8:
	add sp, #0xcc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E5B8: .4byte gMapLayer_03003910
_0801E5BC: .4byte 0x030063D8

	thumb_func_start sub_0801E5C0
sub_0801E5C0: @ 0x0801E5C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	ldr r0, _0801E624 @ =0x030063D8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	mov sb, r0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801E628 @ =gPlayers
	adds r7, r1, r0
	movs r0, #0
	str r0, [sp, #0x5c]
	movs r1, #1
	str r1, [sp, #0x54]
	movs r2, #0
	str r2, [sp, #0x58]
	bl GetMultiplayerId
	ldr r0, _0801E62C @ =0x000900DC
	bl GetDataRecord
	adds r5, r0, #0
	mov r3, sb
	ldrh r0, [r3, #4]
	cmp r0, #0
	bne _0801E630
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801E60E
	rsbs r0, r0, #0
_0801E60E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	b _0801E634
	.align 2, 0
_0801E624: .4byte 0x030063D8
_0801E628: .4byte gPlayers
_0801E62C: .4byte 0x000900DC
_0801E630:
	mov r0, sb
	ldrh r0, [r0, #4]
_0801E634:
	str r0, [sp, #0x60]
	movs r1, #0xa
	adds r1, r1, r5
	mov sl, r1
	movs r4, #0
	ldrh r0, [r5, #8]
	cmp r4, r0
	bhs _0801E672
	ldr r1, [sp, #0x60]
	subs r1, #1
	cmp r4, r1
	beq _0801E672
	adds r3, r0, #0
_0801E64E:
	mov r2, sl
	ldrh r0, [r2]
	adds r2, r4, #1
	cmp r0, #0
	beq _0801E664
_0801E658:
	movs r4, #2
	add sl, r4
	mov r5, sl
	ldrh r0, [r5]
	cmp r0, #0
	bne _0801E658
_0801E664:
	movs r0, #2
	add sl, r0
	adds r4, r2, #0
	cmp r4, r3
	bhs _0801E672
	cmp r4, r1
	bne _0801E64E
_0801E672:
	mov r0, sl
	bl sub_0800ED80
	ldr r1, _0801E6A0 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0xf
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r1, _0801E6A4 @ =0x00100043
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xb
	bl sub_08026ADC
	b _0801EA44
	.align 2, 0
_0801E6A0: .4byte 0x03003CA0
_0801E6A4: .4byte 0x00100043
_0801E6A8:
	bl sub_080075AC
	cmp r0, #0
	beq _0801E6B2
	b _0801EA40
_0801E6B2:
	bl sub_08007510
	cmp r0, #0
	beq _0801E6BC
	b _0801EA40
_0801E6BC:
	bl sub_08007544
	cmp r0, #0
	beq _0801E6C6
	b _0801EA40
_0801E6C6:
	bl sub_08007604
	cmp r0, #0
	beq _0801E6D0
	b _0801EA40
_0801E6D0:
	ldr r0, _0801E7F4 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801E714
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #7
	mov r3, sb
	ldrh r1, [r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801E6F2
	rsbs r0, r0, #0
_0801E6F2:
	cmp r0, #2
	bgt _0801E710
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	mov r4, sb
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801E708
	rsbs r0, r0, #0
_0801E708:
	movs r5, #1
	str r5, [sp, #0x58]
	cmp r0, #2
	ble _0801E714
_0801E710:
	movs r0, #0
	str r0, [sp, #0x58]
_0801E714:
	ldr r1, [sp, #0x5c]
	cmp r1, #0
	beq _0801E71C
	b _0801E9D4
_0801E71C:
	ldr r2, [sp, #0x58]
	cmp r2, #0
	bne _0801E724
	b _0801E9CE
_0801E724:
	ldr r0, _0801E7F8 @ =0x03006680
	bl IsThreadInList
	cmp r0, #0
	bne _0801E786
	bl sub_080076E0
	cmp r0, #0
	bne _0801E786
	bl sub_08007670
	cmp r0, #0
	bne _0801E786
	ldr r5, _0801E7FC @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r6, [r0]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r2, [r0, #0x16]
	mov r0, r8
	adds r1, r6, #0
	bl FindFieldItemNear
	cmp r0, #0
	bne _0801E786
	ldr r3, [sp, #0x50]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x78
	mov r0, sl
	movs r2, #0x8c
	bl sub_0800EB30
_0801E786:
	ldrh r0, [r7, #0xc]
	subs r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801E79A
	ldrh r1, [r7, #0x10]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r7, #0x10]
_0801E79A:
	ldr r0, _0801E800 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801E7A8
	b _0801E9CE
_0801E7A8:
	bl sub_080076E0
	cmp r0, #0
	beq _0801E7B2
	b _0801E9CE
_0801E7B2:
	ldrh r0, [r7, #0xc]
	cmp r0, #8
	bne _0801E7BA
	b _0801E9CE
_0801E7BA:
	cmp r0, #9
	bne _0801E7C0
	b _0801E9CE
_0801E7C0:
	movs r0, #0x22
	bl PlaySE
	movs r4, #1
	str r4, [sp, #0x5c]
	ldr r5, [sp, #0x60]
	cmp r5, #0xb
	bne _0801E7EC
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xb
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	cmp r0, #0
	bne _0801E7EC
	movs r0, #1
	str r0, [sp, #0x60]
_0801E7EC:
	movs r4, #0
	ldr r1, [r7, #0x1c]
	b _0801E80C
	.align 2, 0
_0801E7F4: .4byte gFrameCounter
_0801E7F8: .4byte 0x03006680
_0801E7FC: .4byte gPlayers
_0801E800: .4byte gKeysNew
_0801E804:
	adds r1, #2
	adds r4, #1
	cmp r4, #2
	bhi _0801E816
_0801E80C:
	ldrh r0, [r1]
	cmp r0, #0
	bne _0801E804
	cmp r4, #2
	bls _0801E81E
_0801E816:
	ldr r1, [sp, #0x60]
	cmp r1, #8
	bhi _0801E81E
	b _0801E9CE
_0801E81E:
	ldr r0, [sp, #0x60]
	subs r0, #1
	cmp r0, #0xa
	bls _0801E828
	b _0801E9CE
_0801E828:
	lsls r0, r0, #2
	ldr r1, _0801E834 @ =_0801E838
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E834: .4byte _0801E838
_0801E838: @ jump table
	.4byte _0801E864 @ case 0
	.4byte _0801E874 @ case 1
	.4byte _0801E884 @ case 2
	.4byte _0801E894 @ case 3
	.4byte _0801E8A4 @ case 4
	.4byte _0801E8C4 @ case 5
	.4byte _0801E8E4 @ case 6
	.4byte _0801E904 @ case 7
	.4byte _0801E924 @ case 8
	.4byte _0801E93C @ case 9
	.4byte _0801E9CE @ case 10
_0801E864:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #7
	b _0801E912
_0801E874:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #8
	b _0801E912
_0801E884:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #9
	b _0801E912
_0801E894:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #0xa
	b _0801E912
_0801E8A4:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #5
	strh r0, [r1]
	ldr r1, [r7, #0x20]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x32
	strh r1, [r0, #0xa]
	b _0801E914
_0801E8C4:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #5
	strh r0, [r1]
	ldr r1, [r7, #0x20]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x32
	strh r1, [r0, #0xc]
	b _0801E914
_0801E8E4:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #5
	strh r0, [r1]
	ldr r1, [r7, #0x20]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x32
	strh r1, [r0, #0xe]
	b _0801E914
_0801E904:
	movs r0, #0x74
	bl PlaySE
	ldr r1, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r1
	movs r0, #0xb
_0801E912:
	strh r0, [r1]
_0801E914:
	adds r0, r7, #0
	adds r0, #0x24
	adds r0, r0, r2
	ldr r1, _0801E920 @ =0x00001770
	strh r1, [r0]
	b _0801E9CE
	.align 2, 0
_0801E920: .4byte 0x00001770
_0801E924:
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
	b _0801E9CE
_0801E93C:
	movs r1, #0x71
	rsbs r1, r1, #0
	ldr r0, [sp, #0x48]
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	ldr r1, _0801E9A8 @ =0xFFFFC07F
	ands r0, r1
	str r0, [sp, #0x48]
	bl Random
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0xf
	ldr r2, _0801E9AC @ =0xFF807FFF
	ldr r0, [sp, #0x48]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x48]
	bl sub_08001F64
	adds r4, r0, #0
	cmp r4, #0
	beq _0801E9B4
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0xf
	ldrh r1, [r2, #2]
	lsls r1, r1, #0xf
	ldr r2, _0801E9B0 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	add r4, sp, #0x48
	adds r3, r4, #0
	bl sub_0800FA74
	str r0, [sp, #0x4c]
	bl sub_08001F64
	adds r3, r0, #0
	ldr r5, [sp, #0x4c]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r1, [r5]
	asrs r1, r1, #0xc
	ldr r2, [r5, #4]
	asrs r2, r2, #0xc
	str r3, [sp]
	adds r3, r4, #0
	bl SpawnFieldItem
	b _0801E9CE
	.align 2, 0
_0801E9A8: .4byte 0xFFFFC07F
_0801E9AC: .4byte 0xFF807FFF
_0801E9B0: .4byte gMapLayer_03003910
_0801E9B4:
	ldr r1, [sp, #0x4c]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #3
	ldrh r2, [r2, #2]
	lsls r2, r2, #3
	add r3, sp, #0x48
	str r4, [sp]
	bl SpawnFieldItem
_0801E9CE:
	ldr r3, [sp, #0x5c]
	cmp r3, #0
	beq _0801E9DE
_0801E9D4:
	ldr r0, [sp, #0x54]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
_0801E9DE:
	movs r0, #1
	ldr r4, [sp, #0x54]
	ands r0, r4
	cmp r0, #0
	beq _0801EA40
	mov r5, sb
	ldrh r0, [r5]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r5, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #3
	ldrh r1, [r1, #2]
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08006008
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004344
_0801EA40:
	bl WaitFrame
_0801EA44:
	bl sub_080074CC
	cmp r0, #0
	bne _0801EA64
	ldr r0, _0801EA74 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801EA64
	ldr r5, [sp, #0x54]
	cmp r5, #0x3b
	bhi _0801EA64
	b _0801E6A8
_0801EA64:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EA74: .4byte 0x030063D8

	thumb_func_start sub_0801EA78
sub_0801EA78: @ 0x0801EA78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	mov r7, sp
	mov r1, sp
	adds r0, r1, #0
	str r0, [r7, #0x4c]
	ldr r4, _0801EAE0 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x96
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	mov r2, sp
	subs r2, r2, r0
	mov sp, r2
	mov r8, sp
	subs r2, r2, r0
	mov sp, r2
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801EAE4 @ =gPlayers
	adds r6, r1, r0
	movs r5, #0
	ldr r0, [r4]
	adds r0, #0x96
	ldrh r0, [r0]
	cmp r5, r0
	blo _0801EAC2
	b _0801EC8E
_0801EAC2:
	movs r3, #0
	mov r2, sp
	mov r1, r8
_0801EAC8:
	strh r3, [r1]
	strh r3, [r2]
	adds r2, #2
	adds r1, #2
	adds r5, #1
	ldr r0, [r4]
	adds r0, #0x96
	ldrh r0, [r0]
	cmp r5, r0
	blo _0801EAC8
	b _0801EC8E
	.align 2, 0
_0801EAE0: .4byte 0x030063D8
_0801EAE4: .4byte gPlayers
_0801EAE8:
	ldr r0, _0801EB3C @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	beq _0801EAF2
	b _0801EC8A
_0801EAF2:
	bl sub_080076E0
	cmp r0, #0
	beq _0801EAFC
	b _0801EC8A
_0801EAFC:
	bl sub_080075AC
	cmp r0, #0
	beq _0801EB06
	b _0801EC8A
_0801EB06:
	bl sub_08007510
	cmp r0, #0
	beq _0801EB10
	b _0801EC8A
_0801EB10:
	bl sub_08007544
	cmp r0, #0
	beq _0801EB1A
	b _0801EC8A
_0801EB1A:
	bl sub_08007604
	cmp r0, #0
	beq _0801EB24
	b _0801EC8A
_0801EB24:
	ldrh r0, [r6, #0xc]
	cmp r0, #8
	bne _0801EB2C
	b _0801EC8A
_0801EB2C:
	cmp r0, #9
	bne _0801EB32
	b _0801EC8A
_0801EB32:
	ldr r0, [r4]
	ldr r4, [r0, #0x40]
	movs r5, #0
	b _0801EC80
	.align 2, 0
_0801EB3C: .4byte gUnknown_030064D8
_0801EB40:
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #7
	ldrh r1, [r4]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801EB54
	rsbs r0, r0, #0
_0801EB54:
	adds r1, r5, #1
	str r1, [r7, #0x50]
	adds r1, r4, #0
	adds r1, #8
	str r1, [r7, #0x54]
	cmp r0, #1
	ble _0801EB64
	b _0801EC78
_0801EB64:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x17
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801EB74
	rsbs r0, r0, #0
_0801EB74:
	cmp r0, #1
	ble _0801EB7A
	b _0801EC78
_0801EB7A:
	ldrh r0, [r6, #0xc]
	subs r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801EB8E
	ldrh r1, [r6, #0x10]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r6, #0x10]
_0801EB8E:
	bl sub_080076E0
	cmp r0, #0
	bne _0801EC78
	ldrh r0, [r6, #0xc]
	cmp r0, #5
	beq _0801EC78
	cmp r0, #2
	beq _0801EC78
	cmp r0, #6
	beq _0801EC78
	ldr r0, _0801EC08 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	ands r0, r1
	cmp r0, #0
	beq _0801EC78
	movs r0, #0x92
	bl PlaySE
	ldr r0, [r6, #0x58]
	asrs r0, r0, #0xc
	str r0, [r7, #0x3c]
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #0xc
	str r0, [r7, #0x40]
	ldrh r0, [r4, #4]
	lsls r0, r0, #3
	str r0, [r7, #0x44]
	ldrh r0, [r4, #6]
	lsls r0, r0, #3
	mov sl, r0
	movs r2, #0
	str r2, [r7, #0x58]
	strh r2, [r6, #0xc]
	ldrh r1, [r6, #0x10]
	movs r0, #3
	orrs r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r7, #0x3c]
	ldr r2, [r7, #0x44]
	subs r0, r1, r2
	cmp r0, #0
	bge _0801EBE8
	rsbs r0, r0, #0
_0801EBE8:
	asrs r0, r0, #3
	cmp r0, #0x10
	bgt _0801EC00
	ldr r1, [r7, #0x40]
	mov r2, sl
	subs r0, r1, r2
	cmp r0, #0
	bge _0801EBFA
	rsbs r0, r0, #0
_0801EBFA:
	asrs r0, r0, #3
	cmp r0, #0x10
	ble _0801EC0C
_0801EC00:
	movs r0, #0x5a
	mov r8, r0
	b _0801EC10
	.align 2, 0
_0801EC08: .4byte gKeysNew
_0801EC0C:
	movs r1, #0x3c
	mov r8, r1
_0801EC10:
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	adds r2, #1
	str r2, [r7, #0x58]
	adds r5, #1
	str r5, [r7, #0x50]
	adds r4, #8
	str r4, [r7, #0x54]
	cmp r0, r8
	bhs _0801EC6E
	adds r0, r7, #0
	adds r0, #0x34
	str r0, [r7, #0x48]
	movs r1, #0x38
	adds r1, r1, r7
	mov sb, r1
_0801EC30:
	ldr r5, [r7, #0x58]
	lsls r0, r5, #0xa
	mov r1, r8
	bl __udivsi3
	adds r4, r0, #0
	ldr r0, [r7, #0x48]
	ldr r1, [r7, #0x3c]
	ldr r2, [r7, #0x44]
	adds r3, r4, #0
	bl Lerp1024
	mov r0, sb
	ldr r1, [r7, #0x40]
	mov r2, sl
	adds r3, r4, #0
	bl Lerp1024
	ldr r0, [r7, #0x34]
	lsls r0, r0, #0xc
	str r0, [r6, #0x58]
	ldr r0, [r7, #0x38]
	lsls r0, r0, #0xc
	str r0, [r6, #0x5c]
	bl WaitFrame
	ldr r2, [r7, #0x58]
	adds r2, #1
	str r2, [r7, #0x58]
	cmp r5, r8
	blo _0801EC30
_0801EC6E:
	ldrh r0, [r6, #0x10]
	ldr r2, _0801ECBC @ =0x0000FFFC
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r6, #0x10]
_0801EC78:
	ldr r5, [r7, #0x50]
	ldr r4, [r7, #0x54]
	ldr r0, _0801ECC0 @ =0x030063D8
	ldr r0, [r0]
_0801EC80:
	adds r0, #0x96
	ldrh r0, [r0]
	cmp r5, r0
	bhs _0801EC8A
	b _0801EB40
_0801EC8A:
	bl WaitFrame
_0801EC8E:
	bl sub_080074CC
	cmp r0, #0
	bne _0801ECA8
	ldr r4, _0801ECC0 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801ECA8
	b _0801EAE8
_0801ECA8:
	ldr r0, [r7, #0x4c]
	mov sp, r0
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801ECBC: .4byte 0x0000FFFC
_0801ECC0: .4byte 0x030063D8

	thumb_func_start sub_0801ECC4
sub_0801ECC4: @ 0x0801ECC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x158
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801ED20 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x13c]
	ldr r1, _0801ED24 @ =0x00100044
	add r0, sp, #0x10
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	ldr r3, _0801ED28 @ =0x080FB0F8
	ldr r0, _0801ED2C @ =gMapLayer_03003910
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
	adds r2, r0, #0
	ldr r0, [r2, #8]
	adds r1, r2, r0
	movs r0, #0
	mov sb, r0
	ldrh r3, [r2, #0xc]
	cmp sb, r3
	bhs _0801ED4E
	b _0801ED42
	.align 2, 0
_0801ED20: .4byte gPlayers
_0801ED24: .4byte 0x00100044
_0801ED28: .4byte 0x080FB0F8
_0801ED2C: .4byte gMapLayer_03003910
_0801ED30:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r1, #8
	ldrh r4, [r2, #0xc]
	cmp sb, r4
	bhs _0801ED4E
_0801ED42:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801ED30
	ldr r0, [r1, #4]
	adds r1, r1, r0
	str r1, [sp, #0x138]
_0801ED4E:
	ldr r1, _0801EE38 @ =0x030063D8
	ldr r0, [r1]
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0801ED8C
	adds r4, r1, #0
_0801ED60:
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801ED70
	b _0801F14C
_0801ED70:
	bl sub_080074CC
	cmp r0, #0
	beq _0801ED7A
	b _0801F14C
_0801ED7A:
	bl WaitFrame
	ldr r0, [r4]
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801ED60
_0801ED8C:
	movs r5, #0
	mov sb, r5
	mov r7, sp
	adds r7, #0x84
	str r7, [sp, #0x154]
	mov r0, sp
	adds r0, #0xa4
	str r0, [sp, #0x148]
	add r1, sp, #0xc4
	mov sl, r1
	mov r2, sp
	adds r2, #0xe4
	str r2, [sp, #0x14c]
	ldr r0, _0801EE38 @ =0x030063D8
	ldr r4, [r0]
	add r6, sp, #0x114
	adds r5, r4, #0
	adds r5, #0xc4
	mov r8, r7
_0801EDB2:
	mov r3, sb
	lsls r2, r3, #2
	mov r7, r8
	adds r1, r7, r2
	adds r0, r4, #0
	adds r0, #0xac
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #4
	ldr r3, [sp, #0x138]
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r7, [sp, #0x148]
	adds r1, r7, r2
	adds r0, r4, #0
	adds r0, #0xb4
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	ldr r3, [sp, #0x138]
	ldrh r3, [r3, #2]
	adds r0, r0, r3
	lsls r0, r0, #0xf
	str r0, [r1]
	mov r7, sl
	adds r3, r7, r2
	adds r0, r4, #0
	adds r0, #0xbc
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0xd
	str r0, [r3]
	ldr r0, [sp, #0x14c]
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	adds r2, r6, r2
	mov r1, sb
	adds r0, r5, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x46
	muls r0, r1, r0
	cmp r0, #0
	bge _0801EE20
	rsbs r0, r0, #0
_0801EE20:
	adds r0, #1
	str r0, [r2]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #7
	bls _0801EDB2
	bl GetMultiplayerId
	b _0801F12C
	.align 2, 0
_0801EE38: .4byte 0x030063D8
_0801EE3C:
	bl sub_080075AC
	cmp r0, #0
	bne _0801EE5C
	bl sub_08007510
	cmp r0, #0
	bne _0801EE5C
	bl sub_08007544
	cmp r0, #0
	bne _0801EE5C
	bl sub_08007604
	cmp r0, #0
	beq _0801EE64
_0801EE5C:
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
_0801EE64:
	movs r2, #0
	mov sb, r2
	ldr r3, [sp, #0x13c]
	adds r3, #0xd0
	str r3, [sp, #0x150]
	movs r4, #0x9a
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x140]
	movs r5, #0x9b
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x144]
_0801EE7E:
	ldr r7, [sp, #0x150]
	ldr r3, [r7]
	ldrh r1, [r3]
	lsrs r1, r1, #4
	mov r0, sb
	lsls r2, r0, #2
	ldr r4, [sp, #0x154]
	adds r0, r4, r2
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	adds r7, r2, #0
	cmp r1, #0
	bge _0801EE9C
	rsbs r1, r1, #0
_0801EE9C:
	cmp r1, #0xf
	bgt _0801EEFC
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r5, [sp, #0x148]
	adds r1, r5, r7
	ldr r1, [r1]
	asrs r1, r1, #0xc
	subs r0, r0, r1
	cmp r0, #0
	bge _0801EEB6
	rsbs r0, r0, #0
_0801EEB6:
	cmp r0, #0xf
	bgt _0801EEFC
	mov r1, sl
	adds r0, r1, r7
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r0, #0xf
	bgt _0801EEFC
	ldr r3, [sp, #0x13c]
	adds r3, #0x98
	add r0, sp, #0x104
	mov r2, sb
	lsls r1, r2, #1
	adds r2, r0, r1
	ldr r0, [r3]
	ldrh r4, [r2]
	cmp r0, r4
	beq _0801EEFC
	ldr r5, [sp, #0x13c]
	ldrh r0, [r5, #0xc]
	cmp r0, #7
	beq _0801EEFC
	cmp r0, #8
	beq _0801EEFC
	cmp r0, #9
	beq _0801EEFC
	movs r0, #7
	strh r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x54
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r1]
	ldrh r0, [r2]
	str r0, [r3]
_0801EEFC:
	add r0, sp, #0x114
	adds r1, r0, r7
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _0801EF0E
	movs r0, #0
	str r0, [r1]
_0801EF0E:
	ldr r0, [r1]
	cmp r0, #0
	bne _0801EFDE
	ldr r0, [sp, #0x154]
	adds r2, r0, r7
	ldr r4, _0801EF98 @ =0x080FB5D0
	ldr r0, [r4, #8]
	movs r3, #0x64
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #0x148]
	adds r2, r1, r7
	ldr r0, [r4, #0xc]
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	mov r2, sl
	adds r3, r2, r7
	ldr r4, [sp, #0x14c]
	adds r2, r4, r7
	ldr r0, [r3]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2]
	ldr r5, _0801EF9C @ =0xFFFFFF00
	adds r0, r0, r5
	str r0, [r2]
	ldr r0, [r3]
	cmp r0, #0
	bge _0801EFDE
	ldr r0, _0801EFA0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xbc
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _0801EFAA
	bl sub_080075AC
	cmp r0, #0
	bne _0801EFA4
	bl sub_08007510
	cmp r0, #0
	bne _0801EFA4
	bl sub_08007544
	cmp r0, #0
	bne _0801EFA4
	bl sub_08007604
	cmp r0, #0
	bne _0801EFA4
	movs r0, #0x6a
	bl PlaySE
	movs r0, #0
	movs r1, #5
	bl sub_08005F60
	b _0801EFAA
	.align 2, 0
_0801EF98: .4byte 0x080FB5D0
_0801EF9C: .4byte 0xFFFFFF00
_0801EFA0: .4byte 0x030063D8
_0801EFA4:
	movs r0, #0x6a
	bl StopSE
_0801EFAA:
	mov r0, sl
	adds r1, r0, r7
	movs r0, #0
	str r0, [r1]
	ldr r1, [sp, #0x14c]
	adds r2, r1, r7
	ldr r0, _0801F15C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xbc
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #3
	ble _0801EFCE
	movs r1, #0x80
	lsls r1, r1, #6
_0801EFCE:
	str r1, [r2]
	add r1, sp, #0x104
	mov r2, sb
	lsls r0, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0801EFDE:
	adds r3, r7, #0
	ldr r4, [sp, #0x154]
	adds r6, r4, r3
	ldr r0, [r6]
	cmp r0, #0
	bge _0801F040
	ldr r0, _0801F15C @ =0x030063D8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0xac
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #4
	ldr r5, [sp, #0x138]
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0xf
	str r0, [r6]
	ldr r0, [sp, #0x148]
	adds r1, r0, r3
	adds r0, r2, #0
	adds r0, #0xb4
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	ldr r4, [sp, #0x138]
	ldrh r4, [r4, #2]
	adds r0, r0, r4
	lsls r0, r0, #0xf
	str r0, [r1]
	mov r5, sl
	adds r1, r5, r3
	adds r0, r2, #0
	adds r0, #0xbc
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xa
	lsls r0, r0, #0xc
	str r0, [r1]
	ldr r0, [sp, #0x14c]
	adds r1, r0, r3
	movs r0, #0
	str r0, [r1]
_0801F040:
	bl sub_080075AC
	cmp r0, #0
	bne _0801F118
	bl sub_08007510
	cmp r0, #0
	bne _0801F118
	bl sub_08007544
	cmp r0, #0
	bne _0801F118
	bl sub_08007604
	adds r5, r0, #0
	cmp r5, #0
	bne _0801F118
	add r0, sp, #0x10
	bl sub_08026B74
	ldr r0, [r6]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x148]
	adds r4, r1, r7
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x140]
	ldr r3, [sp, #0x144]
	bl sub_08005FC4
	ldr r0, [r6]
	ldr r1, [r4]
	movs r2, #0
	bl sub_08006008
	mov r8, r0
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	add r6, sp, #0x44
	adds r6, r6, r7
	add r4, sp, #0x64
	adds r4, r4, r7
	movs r5, #1
	str r5, [sp]
	add r0, sp, #0x10
	movs r1, #1
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08026C40
	adds r2, r6, #2
	adds r4, #2
	str r5, [sp]
	add r0, sp, #0x10
	movs r1, #2
	adds r3, r4, #0
	bl sub_08026C40
	ldr r3, [sp, #0x140]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r5, [sp, #0x144]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sl
	adds r2, r3, r7
	ldr r2, [r2]
	asrs r2, r2, #0xc
	subs r1, r1, r2
	ldrh r3, [r6]
	mov r4, r8
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	ldr r5, [sp, #0x140]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x144]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sp
	adds r2, #0x46
	adds r2, r2, r7
	ldrh r3, [r2]
	movs r2, #3
	str r2, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08004344
_0801F118:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #7
	bhi _0801F128
	b _0801EE7E
_0801F128:
	bl WaitFrame
_0801F12C:
	bl sub_080074CC
	cmp r0, #0
	bne _0801F146
	ldr r0, _0801F15C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801F146
	b _0801EE3C
_0801F146:
	movs r0, #0x6a
	bl StopSE
_0801F14C:
	add sp, #0x158
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F15C: .4byte 0x030063D8

	thumb_func_start sub_0801F160
sub_0801F160: @ 0x0801F160
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	ldr r0, _0801F1E0 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r4, sp
	adds r4, #0x3a
	mov r5, sp
	adds r5, #0x39
	mov r3, sp
	adds r3, #0x4a
	str r3, [sp, #0x64]
	subs r3, #2
	str r3, [sp, #0x60]
	cmp r2, r0
	bhs _0801F1A8
	adds r3, r0, #0
_0801F194:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801F1A0
	ldr r0, [r1, #4]
	adds r0, r0, r1
	mov sb, r0
_0801F1A0:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _0801F194
_0801F1A8:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801F1E4 @ =gPlayers
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _0801F1E8 @ =0x00100015
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08026ADC
	movs r1, #0
	movs r0, #8
	strb r0, [r4]
	movs r0, #0xe
	strb r0, [r5]
	ldr r0, [sp, #0x64]
	strh r1, [r0]
	ldr r2, [sp, #0x60]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x58]
	movs r0, #1
	str r0, [sp, #0x5c]
	b _0801F4C0
	.align 2, 0
_0801F1E0: .4byte 0x080FB0F8
_0801F1E4: .4byte gPlayers
_0801F1E8: .4byte 0x00100015
_0801F1EC:
	bl sub_08007544
	cmp r0, #0
	bne _0801F1FA
	ldr r0, _0801F224 @ =0x000514C9
	bl _08000400
_0801F1FA:
	ldr r1, [sp, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	ldr r3, [sp, #0x58]
	cmp r3, #6
	bls _0801F21A
	b _0801F3C4
_0801F21A:
	lsls r0, r3, #2
	ldr r1, _0801F228 @ =_0801F22C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F224: .4byte 0x000514C9
_0801F228: .4byte _0801F22C
_0801F22C: @ jump table
	.4byte _0801F248 @ case 0
	.4byte _0801F2A0 @ case 1
	.4byte _0801F2CC @ case 2
	.4byte _0801F3C4 @ case 3
	.4byte _0801F3C4 @ case 4
	.4byte _0801F364 @ case 5
	.4byte _0801F39E @ case 6
_0801F248:
	mov r1, sl
	ldr r0, [r1, #0x58]
	asrs r0, r0, #0xf
	mov r2, sb
	adds r2, #0x58
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bge _0801F25E
	rsbs r0, r0, #0
_0801F25E:
	mov r4, sb
	adds r4, #0x5a
	cmp r0, #1
	ble _0801F268
	b _0801F3C4
_0801F268:
	mov r2, sl
	ldr r0, [r2, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r4]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801F278
	rsbs r0, r0, #0
_0801F278:
	cmp r0, #1
	ble _0801F27E
	b _0801F3C4
_0801F27E:
	mov r3, sl
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801F28C
	b _0801F3C4
_0801F28C:
	movs r0, #0
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldrh r1, [r3, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r3, #0x10]
	movs r0, #1
	str r0, [sp, #0x58]
	b _0801F3C4
_0801F2A0:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F2C8 @ =0x0009009C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	movs r1, #2
	str r1, [sp, #0x58]
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	b _0801F3C4
	.align 2, 0
_0801F2C8: .4byte 0x0009009C
_0801F2CC:
	ldr r0, [sp, #0x54]
	bl sub_0802294C
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	cmp r0, #0
	beq _0801F3C4
	ldr r2, _0801F32C @ =gPlayerStats
	ldr r3, _0801F330 @ =0x00000275
	adds r2, r2, r3
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x10
	str r0, [sp, #0x4c]
	movs r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x4c
	bl AddItemToInventory
	cmp r0, #0
	beq _0801F33C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F334 @ =0x0009009D
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	ldr r1, _0801F338 @ =0x0009009E
	str r1, [sp, #0x50]
	movs r0, #0x26
	bl PlaySE
	b _0801F3C4
	.align 2, 0
_0801F32C: .4byte gPlayerStats
_0801F330: .4byte 0x00000275
_0801F334: .4byte 0x0009009D
_0801F338: .4byte 0x0009009E
_0801F33C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F35C @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	ldr r2, _0801F360 @ =0x000900A0
	str r2, [sp, #0x50]
	b _0801F3C4
	.align 2, 0
_0801F35C: .4byte 0x0009009F
_0801F360: .4byte 0x000900A0
_0801F364:
	ldr r0, [sp, #0x54]
	bl sub_0802294C
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	cmp r0, #0
	beq _0801F3C4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x50]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	movs r0, #6
	str r0, [sp, #0x58]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	ldr r2, [sp, #0x60]
	strh r0, [r2]
	b _0801F3C4
_0801F39E:
	ldr r0, [sp, #0x54]
	bl sub_0802294C
	mov r5, sb
	adds r5, #0x58
	mov r4, sb
	adds r4, #0x5a
	cmp r0, #0
	beq _0801F3C4
	movs r3, #2
	str r3, [sp, #0x5c]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	ldr r2, [sp, #0x60]
	strh r0, [r2]
	ldr r3, [sp, #0x58]
	adds r3, #1
	str r3, [sp, #0x58]
_0801F3C4:
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r7, sp, #0x44
	movs r3, #0x46
	add r3, sp
	mov r8, r3
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r7, #0
	bl sub_08005FC4
	ldrh r0, [r5]
	lsls r0, r0, #3
	ldrh r1, [r4]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl sub_08007510
	cmp r0, #0
	bne _0801F4BC
	ldr r1, [sp, #0x5c]
	cmp r1, #1
	beq _0801F414
	cmp r1, #1
	blo _0801F4AA
	cmp r1, #2
	beq _0801F448
	b _0801F4BC
_0801F414:
	ldr r2, [sp, #0x5c]
	str r2, [sp]
	add r0, sp, #0x10
	movs r1, #0
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [sp, #0x60]
	ldrh r3, [r2]
	str r5, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _0801F4BC
_0801F448:
	ldr r2, [sp, #0x60]
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	cmp r0, #0
	beq _0801F45E
	movs r3, #0
	str r3, [sp, #0x5c]
_0801F45E:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [sp, #0x60]
	ldrh r3, [r2]
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	adds r6, r0, #0
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r0, [r6, #0xc]
	subs r0, #9
	str r0, [r6, #0xc]
	b _0801F4BC
_0801F4AA:
	mov r0, sl
	ldrh r1, [r0, #0x10]
	ldr r0, _0801F4B8 @ =0x0000FFFE
	ands r0, r1
	mov r1, sl
	strh r0, [r1, #0x10]
	b _0801F4CA
	.align 2, 0
_0801F4B8: .4byte 0x0000FFFE
_0801F4BC:
	bl WaitFrame
_0801F4C0:
	bl sub_080074CC
	cmp r0, #0
	bne _0801F4CA
	b _0801F1EC
_0801F4CA:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801F4DC
sub_0801F4DC: @ 0x0801F4DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	ldr r0, _0801F564 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r4, sp
	adds r4, #0x3a
	mov r5, sp
	adds r5, #0x39
	mov r3, sp
	adds r3, #0x4a
	str r3, [sp, #0x7c]
	subs r3, #2
	str r3, [sp, #0x78]
	cmp r2, r0
	bhs _0801F524
	adds r3, r0, #0
_0801F510:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801F51C
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x58]
_0801F51C:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _0801F510
_0801F524:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801F568 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	ldr r1, _0801F56C @ =0x00100015
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08026ADC
	movs r1, #0
	movs r0, #8
	strb r0, [r4]
	movs r0, #0xe
	strb r0, [r5]
	ldr r0, [sp, #0x7c]
	strh r1, [r0]
	ldr r2, [sp, #0x78]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x68]
	movs r0, #1
	str r0, [sp, #0x6c]
	str r1, [sp, #0x74]
	movs r2, #0
	str r2, [sp, #0x70]
	b _0801F9AC
	.align 2, 0
_0801F564: .4byte 0x080FB0F8
_0801F568: .4byte gPlayers
_0801F56C: .4byte 0x00100015
_0801F570:
	bl sub_08007544
	cmp r0, #0
	bne _0801F57E
	ldr r0, _0801F5A0 @ =0x000514C9
	bl _08000400
_0801F57E:
	ldr r1, [sp, #0x1c]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r0, [sp, #0x68]
	cmp r0, #6
	bls _0801F596
	b _0801F7A2
_0801F596:
	lsls r0, r0, #2
	ldr r1, _0801F5A4 @ =_0801F5A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F5A0: .4byte 0x000514C9
_0801F5A4: .4byte _0801F5A8
_0801F5A8: @ jump table
	.4byte _0801F5C4 @ case 0
	.4byte _0801F6A8 @ case 1
	.4byte _0801F6CC @ case 2
	.4byte _0801F7A2 @ case 3
	.4byte _0801F7A2 @ case 4
	.4byte _0801F75C @ case 5
	.4byte _0801F78E @ case 6
_0801F5C4:
	ldr r1, [sp, #0x74]
	adds r1, #1
	str r1, [sp, #0x74]
	cmp r1, #0x3b
	bls _0801F5D8
	ldr r2, [sp, #0x70]
	adds r2, #1
	str r2, [sp, #0x70]
	movs r3, #0
	str r3, [sp, #0x74]
_0801F5D8:
	ldr r0, [sp, #0x70]
	cmp r0, #3
	bhi _0801F624
	add r1, sp, #0x4c
	mov sl, r1
	lsls r4, r0, #2
	ldr r2, [sp, #0x58]
	adds r4, r4, r2
	movs r3, #0x5c
	adds r3, r3, r4
	mov sb, r3
	ldrh r6, [r3]
	lsls r6, r6, #3
	adds r4, #0x60
	ldrh r5, [r4]
	lsls r5, r5, #3
	ldr r1, [sp, #0x74]
	lsls r0, r1, #0xa
	movs r1, #0x3c
	bl __udivsi3
	mov r8, r0
	mov r0, sl
	adds r1, r6, #0
	adds r2, r5, #0
	mov r3, r8
	bl Lerp1024
	add r0, sp, #0x50
	mov r2, sb
	ldrh r1, [r2, #2]
	lsls r1, r1, #3
	ldrh r2, [r4, #2]
	lsls r2, r2, #3
	mov r3, r8
	bl Lerp1024
	b _0801F650
_0801F624:
	ldr r0, [sp, #0x6c]
	subs r0, #3
	cmp r0, #1
	bls _0801F650
	movs r3, #3
	str r3, [sp, #0x6c]
	movs r0, #0
	ldr r1, [sp, #0x7c]
	strh r0, [r1]
	ldr r2, [sp, #0x78]
	strh r0, [r2]
	ldr r3, [sp, #0x70]
	lsls r1, r3, #2
	ldr r0, [sp, #0x58]
	adds r1, r1, r0
	adds r1, #0x5c
	ldrh r0, [r1]
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #3
	str r0, [sp, #0x50]
_0801F650:
	ldr r2, [sp, #0x5c]
	ldr r1, [r2, #0x58]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x4c]
	asrs r0, r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0801F662
	rsbs r1, r1, #0
_0801F662:
	cmp r1, #1
	ble _0801F668
	b _0801F7A2
_0801F668:
	ldr r3, [sp, #0x5c]
	ldr r1, [r3, #0x5c]
	asrs r1, r1, #0xf
	ldr r0, [sp, #0x50]
	asrs r0, r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0801F67A
	rsbs r1, r1, #0
_0801F67A:
	cmp r1, #1
	ble _0801F680
	b _0801F7A2
_0801F680:
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	beq _0801F688
	b _0801F7A2
_0801F688:
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2, #4]
	ldrh r0, [r2, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801F696
	b _0801F7A2
_0801F696:
	movs r0, #0
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	ldrh r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x10]
	movs r3, #1
	b _0801F7A0
_0801F6A8:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F6C8 @ =0x000900A8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x64]
	movs r0, #2
	str r0, [sp, #0x68]
	b _0801F7A2
	.align 2, 0
_0801F6C8: .4byte 0x000900A8
_0801F6CC:
	ldr r0, [sp, #0x64]
	bl sub_0802294C
	cmp r0, #0
	beq _0801F7A2
	ldr r2, _0801F724 @ =gPlayerStats
	ldr r1, _0801F728 @ =0x00000275
	adds r2, r2, r1
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	str r0, [sp, #0x54]
	movs r2, #5
	str r2, [sp, #0x68]
	add r0, sp, #0x54
	bl AddItemToInventory
	cmp r0, #0
	beq _0801F734
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F72C @ =0x000900A9
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x64]
	ldr r3, _0801F730 @ =0x000900AA
	str r3, [sp, #0x60]
	movs r0, #0x26
	bl PlaySE
	b _0801F7A2
	.align 2, 0
_0801F724: .4byte gPlayerStats
_0801F728: .4byte 0x00000275
_0801F72C: .4byte 0x000900A9
_0801F730: .4byte 0x000900AA
_0801F734:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801F754 @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x64]
	ldr r0, _0801F758 @ =0x000900A0
	str r0, [sp, #0x60]
	b _0801F7A2
	.align 2, 0
_0801F754: .4byte 0x0009009F
_0801F758: .4byte 0x000900A0
_0801F75C:
	ldr r0, [sp, #0x64]
	bl sub_0802294C
	cmp r0, #0
	beq _0801F7A2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, [sp, #0x60]
	str r1, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x64]
	movs r2, #6
	str r2, [sp, #0x68]
	movs r0, #0
	ldr r3, [sp, #0x7c]
	strh r0, [r3]
	ldr r1, [sp, #0x78]
	strh r0, [r1]
	b _0801F7A2
_0801F78E:
	ldr r0, [sp, #0x64]
	bl sub_0802294C
	cmp r0, #0
	beq _0801F7A2
	movs r2, #2
	str r2, [sp, #0x6c]
	ldr r3, [sp, #0x68]
	adds r3, #1
_0801F7A0:
	str r3, [sp, #0x68]
_0801F7A2:
	ldr r0, [sp, #0x4c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x50]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x50]
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08007510
	adds r7, r4, #0
	mov r8, r5
	cmp r0, #0
	beq _0801F7E0
	b _0801F9A8
_0801F7E0:
	ldr r0, [sp, #0x6c]
	cmp r0, #4
	bls _0801F7E8
	b _0801F9A8
_0801F7E8:
	lsls r0, r0, #2
	ldr r1, _0801F7F4 @ =_0801F7F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F7F4: .4byte _0801F7F8
_0801F7F8: @ jump table
	.4byte _0801F996 @ case 0
	.4byte _0801F80C @ case 1
	.4byte _0801F840 @ case 2
	.4byte _0801F8A6 @ case 3
	.4byte _0801F928 @ case 4
_0801F80C:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [sp, #0x78]
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _0801F9A8
_0801F840:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	cmp r0, #0
	beq _0801F858
	movs r3, #0
	str r3, [sp, #0x6c]
_0801F858:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [sp, #0x78]
	ldrh r3, [r2]
	adds r5, r6, #0
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	adds r6, r0, #0
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r0, [r6, #0xc]
	subs r0, #9
	str r0, [r6, #0xc]
	b _0801F9A8
_0801F8A6:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [sp, #0x78]
	ldrh r3, [r2]
	adds r5, r6, #0
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	adds r6, r0, #0
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r0, [r6, #0xc]
	subs r0, #9
	str r0, [r6, #0xc]
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	cmp r0, #0
	beq _0801F9A8
	movs r0, #4
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x58]
	adds r0, #0x5c
	ldrh r0, [r0]
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x58]
	adds r0, #0x5e
	ldrh r0, [r0]
	lsls r0, r0, #3
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x7c]
	strh r4, [r1]
	ldr r2, [sp, #0x78]
	strh r4, [r2]
	b _0801F9A8
_0801F928:
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [sp, #0x78]
	ldrh r3, [r2]
	adds r5, r6, #0
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	adds r6, r0, #0
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r0, [r6, #0xc]
	subs r0, #9
	str r0, [r6, #0xc]
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	cmp r0, #0
	beq _0801F9A8
	movs r0, #1
	str r0, [sp, #0x6c]
	movs r1, #0
	str r1, [sp, #0x70]
	movs r2, #0
	str r2, [sp, #0x74]
	b _0801F9A8
_0801F996:
	ldr r3, [sp, #0x5c]
	ldrh r1, [r3, #0x10]
	ldr r0, _0801F9A4 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3, #0x10]
	b _0801F9B6
	.align 2, 0
_0801F9A4: .4byte 0x0000FFFE
_0801F9A8:
	bl WaitFrame
_0801F9AC:
	bl sub_080074CC
	cmp r0, #0
	bne _0801F9B6
	b _0801F570
_0801F9B6:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801F9C8
sub_0801F9C8: @ 0x0801F9C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	ldr r0, _0801FA48 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r4, sp
	adds r4, #0x39
	mov r5, sp
	adds r5, #0x3a
	mov r3, sp
	adds r3, #0x4a
	str r3, [sp, #0x64]
	add r3, sp, #0x48
	mov sb, r3
	cmp r2, r0
	bhs _0801FA10
	adds r3, r0, #0
_0801F9FC:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801FA08
	ldr r0, [r1, #4]
	adds r0, r0, r1
	mov sl, r0
_0801FA08:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _0801F9FC
_0801FA10:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801FA4C @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x50]
	ldr r1, _0801FA50 @ =0x00100015
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08026ADC
	movs r1, #0
	movs r0, #0xe
	strb r0, [r4]
	movs r0, #8
	strb r0, [r5]
	ldr r0, [sp, #0x64]
	strh r1, [r0]
	mov r2, sb
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x5c]
	movs r0, #5
	str r0, [sp, #0x60]
	b _0801FE00
	.align 2, 0
_0801FA48: .4byte 0x080FB0F8
_0801FA4C: .4byte gPlayers
_0801FA50: .4byte 0x00100015
_0801FA54:
	bl sub_08007544
	cmp r0, #0
	bne _0801FA62
	ldr r0, _0801FA8C @ =0x000514C9
	bl _08000400
_0801FA62:
	ldr r1, [sp, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	ldr r3, [sp, #0x5c]
	cmp r3, #6
	bls _0801FA82
	b _0801FC3C
_0801FA82:
	lsls r0, r3, #2
	ldr r1, _0801FA90 @ =_0801FA94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801FA8C: .4byte 0x000514C9
_0801FA90: .4byte _0801FA94
_0801FA94: @ jump table
	.4byte _0801FAB0 @ case 0
	.4byte _0801FB08 @ case 1
	.4byte _0801FB40 @ case 2
	.4byte _0801FC3C @ case 3
	.4byte _0801FC3C @ case 4
	.4byte _0801FBDC @ case 5
	.4byte _0801FC16 @ case 6
_0801FAB0:
	ldr r1, [sp, #0x50]
	ldr r0, [r1, #0x58]
	asrs r0, r0, #0xf
	mov r2, sl
	adds r2, #0x70
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bge _0801FAC6
	rsbs r0, r0, #0
_0801FAC6:
	mov r6, sl
	adds r6, #0x72
	cmp r0, #2
	ble _0801FAD0
	b _0801FC3C
_0801FAD0:
	ldr r2, [sp, #0x50]
	ldr r0, [r2, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801FAE0
	rsbs r0, r0, #0
_0801FAE0:
	cmp r0, #2
	ble _0801FAE6
	b _0801FC3C
_0801FAE6:
	ldr r3, [sp, #0x50]
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801FAF4
	b _0801FC3C
_0801FAF4:
	movs r0, #0
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldrh r1, [r3, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r3, #0x10]
	movs r0, #1
	str r0, [sp, #0x5c]
	b _0801FC3C
_0801FB08:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801FB3C @ =0x000900B2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	movs r1, #2
	str r1, [sp, #0x5c]
	movs r2, #3
	str r2, [sp, #0x60]
	movs r0, #0
	ldr r3, [sp, #0x64]
	strh r0, [r3]
	mov r1, sb
	strh r0, [r1]
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	b _0801FC3C
	.align 2, 0
_0801FB3C: .4byte 0x000900B2
_0801FB40:
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	cmp r0, #0
	beq _0801FC3C
	ldr r2, _0801FBA4 @ =gPlayerStats
	ldr r3, _0801FBA8 @ =0x00000275
	adds r2, r2, r3
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xc2
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
	movs r0, #5
	str r0, [sp, #0x5c]
	add r0, sp, #0x4c
	bl AddItemToInventory
	cmp r0, #0
	beq _0801FBB4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801FBAC @ =0x000900B3
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	ldr r1, _0801FBB0 @ =0x000900AA
	str r1, [sp, #0x54]
	movs r0, #0x26
	bl PlaySE
	b _0801FC3C
	.align 2, 0
_0801FBA4: .4byte gPlayerStats
_0801FBA8: .4byte 0x00000275
_0801FBAC: .4byte 0x000900B3
_0801FBB0: .4byte 0x000900AA
_0801FBB4:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801FBD4 @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	ldr r2, _0801FBD8 @ =0x000900A0
	str r2, [sp, #0x54]
	b _0801FC3C
	.align 2, 0
_0801FBD4: .4byte 0x0009009F
_0801FBD8: .4byte 0x000900A0
_0801FBDC:
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	cmp r0, #0
	beq _0801FC3C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x54]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	movs r0, #6
	str r0, [sp, #0x5c]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	b _0801FC3C
_0801FC16:
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	mov r7, sl
	adds r7, #0x70
	mov r6, sl
	adds r6, #0x72
	cmp r0, #0
	beq _0801FC3C
	movs r3, #2
	str r3, [sp, #0x60]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	ldr r3, [sp, #0x5c]
	adds r3, #1
	str r3, [sp, #0x5c]
_0801FC3C:
	ldrh r0, [r7]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldrh r0, [r7]
	lsls r0, r0, #3
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08007510
	adds r7, r4, #0
	mov r8, r5
	cmp r0, #0
	beq _0801FC80
	b _0801FDFC
_0801FC80:
	ldr r3, [sp, #0x60]
	cmp r3, #5
	bls _0801FC88
	b _0801FDFC
_0801FC88:
	lsls r0, r3, #2
	ldr r1, _0801FC94 @ =_0801FC98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801FC94: .4byte _0801FC98
_0801FC98: @ jump table
	.4byte _0801FDEC @ case 0
	.4byte _0801FCB0 @ case 1
	.4byte _0801FCE4 @ case 2
	.4byte _0801FD4A @ case 3
	.4byte _0801FDFC @ case 4
	.4byte _0801FDB8 @ case 5
_0801FCB0:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #5
	mov r2, sb
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sb
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _0801FDFC
_0801FCE4:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, sb
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	cmp r0, #0
	beq _0801FCFC
	movs r3, #0
	str r3, [sp, #0x60]
_0801FCFC:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	mov r2, sb
	ldrh r3, [r2]
	adds r5, r6, #0
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	adds r6, r0, #0
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r0, [r6, #0xc]
	subs r0, #9
	str r0, [r6, #0xc]
	b _0801FDFC
_0801FD4A:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	mov r2, sb
	ldrh r3, [r2]
	adds r5, r6, #0
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	adds r6, r0, #0
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r0, [r6, #0xc]
	subs r0, #9
	str r0, [r6, #0xc]
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, sb
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	cmp r0, #0
	beq _0801FDFC
	movs r0, #1
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	strh r4, [r1]
	mov r2, sb
	strh r4, [r2]
	b _0801FDFC
_0801FDB8:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #4
	mov r2, sb
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sb
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #4
	bl sub_08004344
	b _0801FDFC
_0801FDEC:
	ldr r3, [sp, #0x50]
	ldrh r1, [r3, #0x10]
	ldr r0, _0801FDF8 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3, #0x10]
	b _0801FE0A
	.align 2, 0
_0801FDF8: .4byte 0x0000FFFE
_0801FDFC:
	bl WaitFrame
_0801FE00:
	bl sub_080074CC
	cmp r0, #0
	bne _0801FE0A
	b _0801FA54
_0801FE0A:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801FE1C
sub_0801FE1C: @ 0x0801FE1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	ldr r0, _0801FE9C @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r4, sp
	adds r4, #0x31
	mov r5, sp
	adds r5, #0x32
	mov r3, sp
	adds r3, #0x42
	str r3, [sp, #0x58]
	add r3, sp, #0x40
	mov sl, r3
	cmp r2, r0
	bhs _0801FE64
	adds r3, r0, #0
_0801FE50:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801FE5C
	ldr r0, [r1, #4]
	adds r0, r0, r1
	mov r8, r0
_0801FE5C:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _0801FE50
_0801FE64:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801FEA0 @ =gPlayers
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _0801FEA4 @ =0x00100015
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #8
	movs r2, #0xd
	bl sub_08026ADC
	movs r1, #0
	movs r0, #0xe
	strb r0, [r4]
	movs r0, #8
	strb r0, [r5]
	ldr r0, [sp, #0x58]
	strh r1, [r0]
	mov r2, sl
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x50]
	movs r0, #5
	str r0, [sp, #0x54]
	b _08020194
	.align 2, 0
_0801FE9C: .4byte 0x080FB0F8
_0801FEA0: .4byte gPlayers
_0801FEA4: .4byte 0x00100015
_0801FEA8:
	bl sub_08007544
	cmp r0, #0
	bne _0801FEB6
	ldr r0, _0801FEE0 @ =0x000514C9
	bl _08000400
_0801FEB6:
	ldr r1, [sp, #0x14]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r7, r8
	adds r7, #0x74
	mov r6, r8
	adds r6, #0x76
	ldr r3, [sp, #0x50]
	cmp r3, #6
	bls _0801FED6
	b _08020090
_0801FED6:
	lsls r0, r3, #2
	ldr r1, _0801FEE4 @ =_0801FEE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801FEE0: .4byte 0x000514C9
_0801FEE4: .4byte _0801FEE8
_0801FEE8: @ jump table
	.4byte _0801FF04 @ case 0
	.4byte _0801FF5C @ case 1
	.4byte _0801FF94 @ case 2
	.4byte _08020090 @ case 3
	.4byte _08020090 @ case 4
	.4byte _08020030 @ case 5
	.4byte _0802006A @ case 6
_0801FF04:
	mov r1, sb
	ldr r0, [r1, #0x58]
	asrs r0, r0, #0xf
	mov r2, r8
	adds r2, #0x74
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bge _0801FF1A
	rsbs r0, r0, #0
_0801FF1A:
	mov r6, r8
	adds r6, #0x76
	cmp r0, #2
	ble _0801FF24
	b _08020090
_0801FF24:
	mov r2, sb
	ldr r0, [r2, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0801FF34
	rsbs r0, r0, #0
_0801FF34:
	cmp r0, #2
	ble _0801FF3A
	b _08020090
_0801FF3A:
	mov r3, sb
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #6]
	ands r0, r1
	cmp r0, #0
	bne _0801FF48
	b _08020090
_0801FF48:
	movs r0, #0
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldrh r1, [r3, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r3, #0x10]
	movs r0, #1
	str r0, [sp, #0x50]
	b _08020090
_0801FF5C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0801FF90 @ =0x000900B2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x4c]
	movs r1, #2
	str r1, [sp, #0x50]
	movs r2, #3
	str r2, [sp, #0x54]
	movs r0, #0
	ldr r3, [sp, #0x58]
	strh r0, [r3]
	mov r1, sl
	strh r0, [r1]
	mov r7, r8
	adds r7, #0x74
	mov r6, r8
	adds r6, #0x76
	b _08020090
	.align 2, 0
_0801FF90: .4byte 0x000900B2
_0801FF94:
	ldr r0, [sp, #0x4c]
	bl sub_0802294C
	mov r7, r8
	adds r7, #0x74
	mov r6, r8
	adds r6, #0x76
	cmp r0, #0
	beq _08020090
	ldr r2, _0801FFF8 @ =gPlayerStats
	ldr r3, _0801FFFC @ =0x00000275
	adds r2, r2, r3
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xa1
	lsls r0, r0, #4
	str r0, [sp, #0x44]
	movs r0, #5
	str r0, [sp, #0x50]
	add r0, sp, #0x44
	bl AddItemToInventory
	cmp r0, #0
	beq _08020008
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020000 @ =0x000900BB
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x4c]
	ldr r1, _08020004 @ =0x000900AA
	str r1, [sp, #0x48]
	movs r0, #0x26
	bl PlaySE
	b _08020090
	.align 2, 0
_0801FFF8: .4byte gPlayerStats
_0801FFFC: .4byte 0x00000275
_08020000: .4byte 0x000900BB
_08020004: .4byte 0x000900AA
_08020008:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020028 @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x4c]
	ldr r2, _0802002C @ =0x000900A0
	str r2, [sp, #0x48]
	b _08020090
	.align 2, 0
_08020028: .4byte 0x0009009F
_0802002C: .4byte 0x000900A0
_08020030:
	ldr r0, [sp, #0x4c]
	bl sub_0802294C
	mov r7, r8
	adds r7, #0x74
	mov r6, r8
	adds r6, #0x76
	cmp r0, #0
	beq _08020090
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x48]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x4c]
	movs r0, #6
	str r0, [sp, #0x50]
	movs r0, #0
	ldr r1, [sp, #0x58]
	strh r0, [r1]
	mov r2, sl
	strh r0, [r2]
	b _08020090
_0802006A:
	ldr r0, [sp, #0x4c]
	bl sub_0802294C
	mov r7, r8
	adds r7, #0x74
	mov r6, r8
	adds r6, #0x76
	cmp r0, #0
	beq _08020090
	movs r3, #2
	str r3, [sp, #0x54]
	movs r0, #0
	ldr r1, [sp, #0x58]
	strh r0, [r1]
	mov r2, sl
	strh r0, [r2]
	ldr r3, [sp, #0x50]
	adds r3, #1
	str r3, [sp, #0x50]
_08020090:
	ldrh r0, [r7]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x3c
	mov r5, sp
	adds r5, #0x3e
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	bl sub_08007510
	cmp r0, #0
	bne _08020190
	ldrh r0, [r7]
	lsls r0, r0, #3
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	ldr r3, [sp, #0x54]
	cmp r3, #5
	bhi _08020190
	lsls r0, r3, #2
	ldr r1, _080200DC @ =_080200E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080200DC: .4byte _080200E0
_080200E0: @ jump table
	.4byte _0802017C @ case 0
	.4byte _080200F8 @ case 1
	.4byte _08020124 @ case 2
	.4byte _0802013E @ case 3
	.4byte _08020190 @ case 4
	.4byte _0802014E @ case 5
_080200F8:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #8
	movs r1, #5
	mov r2, sl
	ldr r3, [sp, #0x58]
	bl sub_08026C40
	mov r0, sp
	movs r2, #0x3c
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r2, [r5, r3]
	subs r2, #8
	mov r3, sl
	ldrh r0, [r3]
	str r0, [sp]
	add r0, sp, #8
	movs r3, #5
	bl sub_08026B90
	b _08020190
_08020124:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #8
	movs r1, #3
	mov r2, sl
	ldr r3, [sp, #0x58]
	bl sub_08026C40
	cmp r0, #0
	beq _08020190
	movs r0, #0
	str r0, [sp, #0x54]
	b _08020190
_0802013E:
	movs r1, #1
	str r1, [sp, #0x54]
	movs r0, #0
	ldr r2, [sp, #0x58]
	strh r0, [r2]
	mov r3, sl
	strh r0, [r3]
	b _08020190
_0802014E:
	movs r4, #1
	str r4, [sp]
	add r0, sp, #8
	movs r1, #5
	mov r2, sl
	ldr r3, [sp, #0x58]
	bl sub_08026C40
	mov r0, sp
	movs r2, #0x3c
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r2, [r5, r3]
	subs r2, #8
	mov r3, sl
	ldrh r0, [r3]
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #8
	movs r3, #5
	bl sub_0802706C
	b _08020190
_0802017C:
	mov r0, sb
	ldrh r1, [r0, #0x10]
	ldr r0, _0802018C @ =0x0000FFFE
	ands r0, r1
	mov r1, sb
	strh r0, [r1, #0x10]
	b _0802019E
	.align 2, 0
_0802018C: .4byte 0x0000FFFE
_08020190:
	bl WaitFrame
_08020194:
	bl sub_080074CC
	cmp r0, #0
	bne _0802019E
	b _0801FEA8
_0802019E:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080201B0
sub_080201B0: @ 0x080201B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	ldr r0, _08020240 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r5, sp
	adds r5, #0x39
	mov r6, sp
	adds r6, #0x3a
	mov r3, sp
	adds r3, #0x4a
	str r3, [sp, #0x60]
	add r3, sp, #0x48
	mov r8, r3
	cmp r2, r0
	bhs _080201F8
	adds r3, r0, #0
_080201E4:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _080201F0
	ldr r0, [r1, #4]
	adds r0, r0, r1
	mov sb, r0
_080201F0:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _080201E4
_080201F8:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08020244 @ =gPlayers
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _08020248 @ =0x00100015
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08026ADC
	movs r4, #0
	movs r0, #0xe
	strb r0, [r5]
	movs r0, #8
	strb r0, [r6]
	ldr r1, [sp, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x1a
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x60]
	strh r4, [r1]
	mov r2, r8
	strh r4, [r2]
	movs r3, #0
	str r3, [sp, #0x58]
	movs r0, #5
	str r0, [sp, #0x5c]
	b _080205E8
	.align 2, 0
_08020240: .4byte 0x080FB0F8
_08020244: .4byte gPlayers
_08020248: .4byte 0x00100015
_0802024C:
	bl sub_08007544
	cmp r0, #0
	bne _0802025A
	ldr r0, _08020284 @ =0x000514C9
	bl _08000400
_0802025A:
	ldr r1, [sp, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r7, sb
	adds r7, #0x78
	mov r6, sb
	adds r6, #0x7a
	ldr r3, [sp, #0x58]
	cmp r3, #6
	bls _0802027A
	b _08020434
_0802027A:
	lsls r0, r3, #2
	ldr r1, _08020288 @ =_0802028C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020284: .4byte 0x000514C9
_08020288: .4byte _0802028C
_0802028C: @ jump table
	.4byte _080202A8 @ case 0
	.4byte _08020300 @ case 1
	.4byte _08020338 @ case 2
	.4byte _08020434 @ case 3
	.4byte _08020434 @ case 4
	.4byte _080203D4 @ case 5
	.4byte _0802040E @ case 6
_080202A8:
	mov r1, sl
	ldr r0, [r1, #0x58]
	asrs r0, r0, #0xf
	mov r2, sb
	adds r2, #0x78
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bge _080202BE
	rsbs r0, r0, #0
_080202BE:
	mov r6, sb
	adds r6, #0x7a
	cmp r0, #2
	ble _080202C8
	b _08020434
_080202C8:
	mov r2, sl
	ldr r0, [r2, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _080202D8
	rsbs r0, r0, #0
_080202D8:
	cmp r0, #2
	ble _080202DE
	b _08020434
_080202DE:
	mov r3, sl
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #6]
	ands r0, r1
	cmp r0, #0
	bne _080202EC
	b _08020434
_080202EC:
	movs r0, #0
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldrh r1, [r3, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r3, #0x10]
	movs r0, #1
	str r0, [sp, #0x58]
	b _08020434
_08020300:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020334 @ =0x000900DB
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	movs r1, #2
	str r1, [sp, #0x58]
	movs r2, #3
	str r2, [sp, #0x5c]
	movs r0, #0
	ldr r3, [sp, #0x60]
	strh r0, [r3]
	mov r1, r8
	strh r0, [r1]
	mov r7, sb
	adds r7, #0x78
	mov r6, sb
	adds r6, #0x7a
	b _08020434
	.align 2, 0
_08020334: .4byte 0x000900DB
_08020338:
	ldr r0, [sp, #0x54]
	bl sub_0802294C
	mov r7, sb
	adds r7, #0x78
	mov r6, sb
	adds r6, #0x7a
	cmp r0, #0
	beq _08020434
	ldr r2, _08020398 @ =gPlayerStats
	ldr r3, _0802039C @ =0x00000275
	adds r2, r2, r3
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080203A0 @ =0x000015D0
	str r0, [sp, #0x4c]
	movs r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x4c
	bl AddItemToInventory
	cmp r0, #0
	beq _080203AC
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _080203A4 @ =0x000900D3
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	ldr r1, _080203A8 @ =0x000900AA
	str r1, [sp, #0x50]
	movs r0, #0x26
	bl PlaySE
	b _08020434
	.align 2, 0
_08020398: .4byte gPlayerStats
_0802039C: .4byte 0x00000275
_080203A0: .4byte 0x000015D0
_080203A4: .4byte 0x000900D3
_080203A8: .4byte 0x000900AA
_080203AC:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _080203CC @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	ldr r2, _080203D0 @ =0x000900A0
	str r2, [sp, #0x50]
	b _08020434
	.align 2, 0
_080203CC: .4byte 0x0009009F
_080203D0: .4byte 0x000900A0
_080203D4:
	ldr r0, [sp, #0x54]
	bl sub_0802294C
	mov r7, sb
	adds r7, #0x78
	mov r6, sb
	adds r6, #0x7a
	cmp r0, #0
	beq _08020434
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x50]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x54]
	movs r0, #6
	str r0, [sp, #0x58]
	movs r0, #0
	ldr r1, [sp, #0x60]
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	b _08020434
_0802040E:
	ldr r0, [sp, #0x54]
	bl sub_0802294C
	mov r7, sb
	adds r7, #0x78
	mov r6, sb
	adds r6, #0x7a
	cmp r0, #0
	beq _08020434
	movs r3, #2
	str r3, [sp, #0x5c]
	movs r0, #0
	ldr r1, [sp, #0x60]
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	ldr r3, [sp, #0x58]
	adds r3, #1
	str r3, [sp, #0x58]
_08020434:
	ldrh r0, [r7]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldrh r0, [r7]
	lsls r0, r0, #3
	ldrh r1, [r6]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08007510
	adds r7, r4, #0
	cmp r0, #0
	beq _08020474
	b _080205E4
_08020474:
	ldr r1, [sp, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x1a
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x5c]
	cmp r1, #5
	bls _0802048C
	b _080205E4
_0802048C:
	lsls r0, r1, #2
	ldr r1, _08020498 @ =_0802049C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020498: .4byte _0802049C
_0802049C: @ jump table
	.4byte _080205D4 @ case 0
	.4byte _080204B4 @ case 1
	.4byte _080204E8 @ case 2
	.4byte _08020540 @ case 3
	.4byte _080205E4 @ case 4
	.4byte _080205A2 @ case 5
_080204B4:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	mov r2, r8
	ldr r3, [sp, #0x60]
	bl sub_08026C40
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r2, r8
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _080205E4
_080204E8:
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, r8
	ldr r3, [sp, #0x60]
	bl sub_08026C40
	cmp r0, #0
	beq _08020500
	movs r3, #0
	str r3, [sp, #0x5c]
_08020500:
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #8
	mov r2, r8
	ldrh r3, [r2]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	str r6, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	b _080205E4
_08020540:
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #8
	mov r2, r8
	ldrh r3, [r2]
	movs r6, #0
	str r6, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r2, #1
	str r2, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #6
	movs r3, #0
	bl sub_08004344
	str r6, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, r8
	ldr r3, [sp, #0x60]
	bl sub_08026C40
	cmp r0, #0
	beq _080205E4
	movs r3, #1
	str r3, [sp, #0x5c]
	ldr r0, [sp, #0x60]
	strh r6, [r0]
	mov r1, r8
	strh r6, [r1]
	b _080205E4
_080205A2:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #6
	mov r2, r8
	ldr r3, [sp, #0x60]
	bl sub_08026C40
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r2, r8
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #6
	bl sub_08004344
	b _080205E4
_080205D4:
	mov r3, sl
	ldrh r1, [r3, #0x10]
	ldr r0, _080205E0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3, #0x10]
	b _080205F2
	.align 2, 0
_080205E0: .4byte 0x0000FFFE
_080205E4:
	bl WaitFrame
_080205E8:
	bl sub_080074CC
	cmp r0, #0
	bne _080205F2
	b _0802024C
_080205F2:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08020604
sub_08020604: @ 0x08020604
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	ldr r0, _08020684 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r4, sp
	adds r4, #0x39
	mov r5, sp
	adds r5, #0x3a
	mov r3, sp
	adds r3, #0x4a
	str r3, [sp, #0x64]
	subs r3, #2
	str r3, [sp, #0x60]
	cmp r2, r0
	bhs _0802064C
	adds r3, r0, #0
_08020638:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08020644
	ldr r0, [r1, #4]
	adds r0, r0, r1
	mov r8, r0
_08020644:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _08020638
_0802064C:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08020688 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x50]
	ldr r1, _0802068C @ =0x00100015
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08026ADC
	movs r1, #0
	movs r0, #0xe
	strb r0, [r4]
	movs r0, #8
	strb r0, [r5]
	ldr r0, [sp, #0x64]
	strh r1, [r0]
	ldr r2, [sp, #0x60]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0x58]
	movs r0, #5
	str r0, [sp, #0x5c]
	b _08020AC0
	.align 2, 0
_08020684: .4byte 0x080FB0F8
_08020688: .4byte gPlayers
_0802068C: .4byte 0x00100015
_08020690:
	bl sub_08007544
	cmp r0, #0
	bne _0802069E
	ldr r0, _080206C8 @ =0x000514C9
	bl _08000400
_0802069E:
	ldr r1, [sp, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r7, r8
	adds r7, #0x7c
	mov r6, r8
	adds r6, #0x7e
	ldr r3, [sp, #0x58]
	cmp r3, #6
	bls _080206BE
	b _08020910
_080206BE:
	lsls r0, r3, #2
	ldr r1, _080206CC @ =_080206D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080206C8: .4byte 0x000514C9
_080206CC: .4byte _080206D0
_080206D0: @ jump table
	.4byte _080206EC @ case 0
	.4byte _08020744 @ case 1
	.4byte _08020778 @ case 2
	.4byte _080207EC @ case 3
	.4byte _08020814 @ case 4
	.4byte _080208B0 @ case 5
	.4byte _080208EA @ case 6
_080206EC:
	ldr r1, [sp, #0x50]
	ldr r0, [r1, #0x58]
	asrs r0, r0, #0xf
	mov r2, r8
	adds r2, #0x7c
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bge _08020702
	rsbs r0, r0, #0
_08020702:
	mov r6, r8
	adds r6, #0x7e
	cmp r0, #2
	ble _0802070C
	b _08020910
_0802070C:
	ldr r2, [sp, #0x50]
	ldr r0, [r2, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0802071C
	rsbs r0, r0, #0
_0802071C:
	cmp r0, #2
	ble _08020722
	b _08020910
_08020722:
	ldr r3, [sp, #0x50]
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #6]
	ands r0, r1
	cmp r0, #0
	bne _08020730
	b _08020910
_08020730:
	movs r0, #0
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldrh r1, [r3, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r3, #0x10]
	movs r0, #1
	str r0, [sp, #0x58]
	b _08020910
_08020744:
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020774 @ =0x000900C3
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	movs r1, #2
	str r1, [sp, #0x58]
	movs r0, #0
	ldr r2, [sp, #0x64]
	strh r0, [r2]
	ldr r3, [sp, #0x60]
	strh r0, [r3]
	mov r7, r8
	adds r7, #0x7c
	mov r6, r8
	adds r6, #0x7e
	b _08020910
	.align 2, 0
_08020774: .4byte 0x000900C3
_08020778:
	mov r0, sl
	bl sub_0802294C
	mov r7, r8
	adds r7, #0x7c
	mov r6, r8
	adds r6, #0x7e
	cmp r0, #0
	bne _0802078C
	b _08020910
_0802078C:
	mov r0, sl
	bl sub_08022964
	adds r4, r0, #0
	cmp r4, #0
	beq _080207BC
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _080207B8 @ =0x000900C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	movs r0, #3
	str r0, [sp, #0x58]
	b _08020910
	.align 2, 0
_080207B8: .4byte 0x000900C4
_080207BC:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _080207E8 @ =0x000900B2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	movs r1, #4
	str r1, [sp, #0x58]
	movs r2, #3
	str r2, [sp, #0x5c]
	ldr r3, [sp, #0x64]
	strh r4, [r3]
	ldr r0, [sp, #0x60]
	strh r4, [r0]
	b _08020910
	.align 2, 0
_080207E8: .4byte 0x000900B2
_080207EC:
	mov r0, sl
	bl sub_0802294C
	mov r7, r8
	adds r7, #0x7c
	mov r6, r8
	adds r6, #0x7e
	cmp r0, #0
	bne _08020800
	b _08020910
_08020800:
	movs r1, #0
	str r1, [sp, #0x58]
	ldr r2, [sp, #0x50]
	ldrh r1, [r2, #0x10]
	ldr r0, _08020810 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x10]
	b _08020910
	.align 2, 0
_08020810: .4byte 0x0000FFFE
_08020814:
	mov r0, sl
	bl sub_0802294C
	mov r7, r8
	adds r7, #0x7c
	mov r6, r8
	adds r6, #0x7e
	cmp r0, #0
	beq _08020910
	ldr r2, _08020878 @ =gPlayerStats
	ldr r3, _0802087C @ =0x00000275
	adds r2, r2, r3
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xd4
	lsls r0, r0, #4
	str r0, [sp, #0x4c]
	movs r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x4c
	bl AddItemToInventory
	cmp r0, #0
	beq _08020888
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020880 @ =0x000900C5
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	ldr r1, _08020884 @ =0x000900AA
	str r1, [sp, #0x54]
	movs r0, #0x26
	bl PlaySE
	b _08020910
	.align 2, 0
_08020878: .4byte gPlayerStats
_0802087C: .4byte 0x00000275
_08020880: .4byte 0x000900C5
_08020884: .4byte 0x000900AA
_08020888:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _080208A8 @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	ldr r2, _080208AC @ =0x000900A0
	str r2, [sp, #0x54]
	b _08020910
	.align 2, 0
_080208A8: .4byte 0x0009009F
_080208AC: .4byte 0x000900A0
_080208B0:
	mov r0, sl
	bl sub_0802294C
	mov r7, r8
	adds r7, #0x7c
	mov r6, r8
	adds r6, #0x7e
	cmp r0, #0
	beq _08020910
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x54]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	movs r0, #6
	str r0, [sp, #0x58]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	ldr r2, [sp, #0x60]
	strh r0, [r2]
	b _08020910
_080208EA:
	mov r0, sl
	bl sub_0802294C
	mov r7, r8
	adds r7, #0x7c
	mov r6, r8
	adds r6, #0x7e
	cmp r0, #0
	beq _08020910
	movs r3, #2
	str r3, [sp, #0x5c]
	movs r0, #0
	ldr r1, [sp, #0x64]
	strh r0, [r1]
	ldr r2, [sp, #0x60]
	strh r0, [r2]
	ldr r3, [sp, #0x58]
	adds r3, #1
	str r3, [sp, #0x58]
_08020910:
	ldrh r0, [r7]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldrh r0, [r7]
	lsls r0, r0, #3
	ldrh r1, [r6]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08007510
	adds r7, r4, #0
	mov sb, r5
	cmp r0, #0
	beq _08020952
	b _08020ABC
_08020952:
	ldr r0, [sp, #0x5c]
	cmp r0, #5
	bls _0802095A
	b _08020ABC
_0802095A:
	lsls r0, r0, #2
	ldr r1, _08020964 @ =_08020968
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020964: .4byte _08020968
_08020968: @ jump table
	.4byte _08020AAC @ case 0
	.4byte _08020980 @ case 1
	.4byte _080209B4 @ case 2
	.4byte _08020A12 @ case 3
	.4byte _08020ABC @ case 4
	.4byte _08020A78 @ case 5
_08020980:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [sp, #0x60]
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _08020ABC
_080209B4:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	cmp r0, #0
	beq _080209CC
	movs r3, #0
	str r3, [sp, #0x5c]
_080209CC:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r1, #8
	ldr r2, [sp, #0x60]
	ldrh r3, [r2]
	adds r5, r6, #0
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	b _08020ABC
_08020A12:
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r1, #8
	ldr r2, [sp, #0x60]
	ldrh r3, [r2]
	adds r5, r6, #0
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08004344
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	cmp r0, #0
	beq _08020ABC
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x64]
	strh r4, [r1]
	ldr r2, [sp, #0x60]
	strh r4, [r2]
	b _08020ABC
_08020A78:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #7
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [sp, #0x60]
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #7
	bl sub_08004344
	b _08020ABC
_08020AAC:
	ldr r3, [sp, #0x50]
	ldrh r1, [r3, #0x10]
	ldr r0, _08020AB8 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3, #0x10]
	b _08020ACA
	.align 2, 0
_08020AB8: .4byte 0x0000FFFE
_08020ABC:
	bl WaitFrame
_08020AC0:
	bl sub_080074CC
	cmp r0, #0
	bne _08020ACA
	b _08020690
_08020ACA:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08020ADC
sub_08020ADC: @ 0x08020ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	ldr r0, _08020B90 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r1, r0, r1
	movs r2, #0
	ldrh r0, [r0, #0xc]
	mov r7, sp
	adds r7, #0x3a
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0xac]
	mov r4, sp
	adds r4, #0x6d
	str r4, [sp, #0x98]
	subs r3, #0xb
	str r3, [sp, #0xa8]
	adds r4, #0x11
	str r4, [sp, #0x9c]
	add r3, sp, #0x7c
	mov r8, r3
	adds r4, #4
	str r4, [sp, #0xa4]
	mov r3, sp
	adds r3, #0x80
	str r3, [sp, #0xa0]
	cmp r2, r0
	bhs _08020B38
	adds r3, r0, #0
_08020B24:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08020B30
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x88]
_08020B30:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _08020B24
_08020B38:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08020B94 @ =gPlayers
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _08020B98 @ =0x00100015
	movs r6, #1
	rsbs r6, r6, #0
	add r0, sp, #0x10
	movs r2, #0xd
	adds r3, r6, #0
	bl sub_08026ADC
	movs r4, #0
	movs r5, #8
	strb r5, [r7]
	ldr r1, _08020B9C @ =0x00100012
	ldr r0, [sp, #0xac]
	movs r2, #0xd
	adds r3, r6, #0
	bl sub_08026ADC
	movs r0, #0xe
	ldr r1, [sp, #0x98]
	strb r0, [r1]
	ldr r2, [sp, #0xa8]
	strb r0, [r2]
	strb r5, [r7]
	ldr r3, [sp, #0x9c]
	strh r4, [r3]
	mov r0, r8
	strh r4, [r0]
	ldr r1, [sp, #0xa4]
	strh r4, [r1]
	ldr r2, [sp, #0xa0]
	strh r4, [r2]
	movs r3, #0
	str r3, [sp, #0x90]
	movs r4, #5
	str r4, [sp, #0x94]
	b _08020F08
	.align 2, 0
_08020B90: .4byte 0x080FB0F8
_08020B94: .4byte gPlayers
_08020B98: .4byte 0x00100015
_08020B9C: .4byte 0x00100012
_08020BA0:
	bl sub_08007544
	cmp r0, #0
	bne _08020BAE
	ldr r0, _08020BD4 @ =0x000514C9
	bl _08000400
_08020BAE:
	ldr r1, [sp, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	ldr r1, [sp, #0x90]
	cmp r1, #6
	bls _08020BCA
	b _08020D66
_08020BCA:
	lsls r0, r1, #2
	ldr r1, _08020BD8 @ =_08020BDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020BD4: .4byte 0x000514C9
_08020BD8: .4byte _08020BDC
_08020BDC: @ jump table
	.4byte _08020BF8 @ case 0
	.4byte _08020C4C @ case 1
	.4byte _08020C80 @ case 2
	.4byte _08020D66 @ case 3
	.4byte _08020D66 @ case 4
	.4byte _08020D18 @ case 5
	.4byte _08020D4E @ case 6
_08020BF8:
	mov r2, sb
	ldr r0, [r2, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x88]
	adds r2, #0x80
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bge _08020C0E
	rsbs r0, r0, #0
_08020C0E:
	cmp r0, #2
	ble _08020C14
	b _08020D66
_08020C14:
	mov r3, sb
	ldr r0, [r3, #0x5c]
	asrs r0, r0, #0xf
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08020C24
	rsbs r0, r0, #0
_08020C24:
	cmp r0, #2
	ble _08020C2A
	b _08020D66
_08020C2A:
	mov r4, sb
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #6]
	ands r0, r1
	cmp r0, #0
	bne _08020C38
	b _08020D66
_08020C38:
	movs r0, #0
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrh r1, [r4, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0x10]
	movs r0, #1
	str r0, [sp, #0x90]
	b _08020D66
_08020C4C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020C7C @ =0x000900B2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	movs r1, #2
	str r1, [sp, #0x90]
	movs r2, #3
	str r2, [sp, #0x94]
	movs r0, #0
	ldr r3, [sp, #0x9c]
	strh r0, [r3]
	mov r4, r8
	strh r0, [r4]
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	b _08020D66
	.align 2, 0
_08020C7C: .4byte 0x000900B2
_08020C80:
	mov r0, sl
	bl sub_0802294C
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	cmp r0, #0
	beq _08020D66
	ldr r2, _08020CE0 @ =gPlayerStats
	ldr r0, _08020CE4 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	orrs r1, r0
	subs r0, #5
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xdb
	lsls r0, r0, #4
	str r0, [sp, #0x84]
	movs r1, #5
	str r1, [sp, #0x90]
	add r0, sp, #0x84
	bl AddItemToInventory
	cmp r0, #0
	beq _08020CF0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020CE8 @ =0x000900CD
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	ldr r2, _08020CEC @ =0x000900AA
	str r2, [sp, #0x8c]
	movs r0, #0x26
	bl PlaySE
	b _08020D66
	.align 2, 0
_08020CE0: .4byte gPlayerStats
_08020CE4: .4byte 0x00000275
_08020CE8: .4byte 0x000900CD
_08020CEC: .4byte 0x000900AA
_08020CF0:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08020D10 @ =0x0009009F
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	ldr r3, _08020D14 @ =0x000900A0
	str r3, [sp, #0x8c]
	b _08020D66
	.align 2, 0
_08020D10: .4byte 0x0009009F
_08020D14: .4byte 0x000900A0
_08020D18:
	mov r0, sl
	bl sub_0802294C
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	cmp r0, #0
	beq _08020D66
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r4, [sp, #0x8c]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	mov sl, r0
	movs r0, #6
	str r0, [sp, #0x90]
	movs r0, #0
	ldr r1, [sp, #0x9c]
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	b _08020D66
_08020D4E:
	mov r0, sl
	bl sub_0802294C
	ldr r6, [sp, #0x88]
	adds r6, #0x80
	cmp r0, #0
	beq _08020D66
	movs r3, #2
	str r3, [sp, #0x94]
	ldr r4, [sp, #0x90]
	adds r4, #1
	str r4, [sp, #0x90]
_08020D66:
	ldrh r0, [r6]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r6, #2]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x10
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldrh r0, [r6]
	lsls r0, r0, #3
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08007510
	adds r7, r4, #0
	cmp r0, #0
	beq _08020DA6
	b _08020F04
_08020DA6:
	ldr r0, [sp, #0x94]
	cmp r0, #5
	bls _08020DAE
	b _08020F04
_08020DAE:
	lsls r0, r0, #2
	ldr r1, _08020DB8 @ =_08020DBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020DB8: .4byte _08020DBC
_08020DBC: @ jump table
	.4byte _08020EF0 @ case 0
	.4byte _08020DD4 @ case 1
	.4byte _08020DFE @ case 2
	.4byte _08020E56 @ case 3
	.4byte _08020F04 @ case 4
	.4byte _08020EBC @ case 5
_08020DD4:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	mov r2, r8
	ldr r3, [sp, #0x9c]
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r4, r8
	ldrh r3, [r4]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	b _08020EE6
_08020DFE:
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, r8
	ldr r3, [sp, #0x9c]
	bl sub_08026C40
	cmp r0, #0
	beq _08020E16
	movs r0, #0
	str r0, [sp, #0x94]
_08020E16:
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #8
	mov r2, r8
	ldrh r3, [r2]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	str r6, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	b _08020F04
_08020E56:
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	subs r1, #8
	mov r2, r8
	ldrh r3, [r2]
	movs r4, #0
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r3, [sp, #0xac]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	str r4, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, r8
	ldr r3, [sp, #0x9c]
	bl sub_08026C40
	cmp r0, #0
	beq _08020F04
	movs r0, #1
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x9c]
	strh r4, [r1]
	mov r2, r8
	strh r4, [r2]
	b _08020F04
_08020EBC:
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xac]
	movs r1, #6
	ldr r2, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r2, r8
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r4, [sp, #0xac]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
_08020EE6:
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	b _08020F04
_08020EF0:
	mov r0, sb
	ldrh r1, [r0, #0x10]
	ldr r0, _08020F00 @ =0x0000FFFE
	ands r0, r1
	mov r1, sb
	strh r0, [r1, #0x10]
	b _08020F12
	.align 2, 0
_08020F00: .4byte 0x0000FFFE
_08020F04:
	bl WaitFrame
_08020F08:
	bl sub_080074CC
	cmp r0, #0
	bne _08020F12
	b _08020BA0
_08020F12:
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08020F24
sub_08020F24: @ 0x08020F24
	push {r4, lr}
	cmp r0, #0
	beq _08020F44
	ldr r4, _08020F4C @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020F44
	ldr r0, _08020F50 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0xab
	movs r1, #1
	strb r1, [r0]
_08020F44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020F4C: .4byte 0x030063D8
_08020F50: .4byte 0x00000BB8

	thumb_func_start sub_08020F54
sub_08020F54: @ 0x08020F54
	push {r4, lr}
	ldr r4, _08020F8C @ =0x030063D8
	ldr r2, [r4]
	adds r3, r2, #0
	adds r3, #0x9c
	ldrh r1, [r3]
	ldr r0, _08020F90 @ =0x0000FFFD
	ands r0, r1
	movs r1, #0
	strh r0, [r3]
	str r1, [r2]
	str r1, [r2, #4]
	adds r2, #0x84
	strh r1, [r2]
	movs r2, #0
	movs r3, #0
_08020F74:
	ldr r0, [r4]
	lsls r1, r2, #2
	adds r0, #0xc
	adds r0, r0, r1
	str r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _08020F74
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020F8C: .4byte 0x030063D8
_08020F90: .4byte 0x0000FFFD
