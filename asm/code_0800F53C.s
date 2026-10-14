	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800F53C
sub_0800F53C: @ 0x0800F53C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	bl GetPlayerClass
	lsls r4, r0, #3
	movs r0, #0
	str r0, [sp, #0xc]
	bl sub_080076A8
	cmp r0, #0
	bne _0800F580
	movs r6, #2
	ldr r0, _0800F57C @ =gUnknown_03003D08
	movs r2, #1
	ldr r1, [r0]
_0800F562:
	adds r0, r2, #0
	lsls r0, r6
	ands r0, r1
	cmp r0, #0
	beq _0800F572
	ldr r0, [sp, #0xc]
	adds r0, #1
	str r0, [sp, #0xc]
_0800F572:
	adds r6, #1
	cmp r6, #8
	bls _0800F562
	b _0800F584
	.align 2, 0
_0800F57C: .4byte gUnknown_03003D08
_0800F580:
	movs r1, #7
	str r1, [sp, #0xc]
_0800F584:
	ldr r2, [sp, #0xc]
	adds r4, r4, r2
	movs r0, #0xe0
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	mov r8, r0
	movs r4, #0
_0800F598:
	cmp r4, #1
	beq _0800F5CC
	cmp r4, #1
	blo _0800F5A6
	cmp r4, #2
	beq _0800F5F4
	b _0800F618
_0800F5A6:
	mov r1, r8
	ldr r0, [r1, #4]
	add r0, r8
	mov sb, r0
	ldrb r2, [r1]
	str r2, [sp, #0xc]
	bl sub_080074F0
	cmp r0, #0
	beq _0800F5C4
	ldr r0, _0800F5C0 @ =gUnknown_030063AC
	ldr r0, [r0]
	b _0800F616
	.align 2, 0
_0800F5C0: .4byte gUnknown_030063AC
_0800F5C4:
	ldr r0, _0800F5C8 @ =0x03003EEC
	b _0800F616
	.align 2, 0
_0800F5C8: .4byte 0x03003EEC
_0800F5CC:
	mov r1, r8
	ldr r0, [r1, #8]
	add r0, r8
	mov sb, r0
	ldrb r2, [r1, #1]
	str r2, [sp, #0xc]
	bl sub_080074F0
	cmp r0, #0
	beq _0800F5EC
	ldr r0, _0800F5E8 @ =gUnknown_030063B8
	ldr r0, [r0]
	b _0800F616
	.align 2, 0
_0800F5E8: .4byte gUnknown_030063B8
_0800F5EC:
	ldr r0, _0800F5F0 @ =0x03003F1C
	b _0800F616
	.align 2, 0
_0800F5F0: .4byte 0x03003F1C
_0800F5F4:
	mov r1, r8
	ldr r0, [r1, #0xc]
	add r0, r8
	mov sb, r0
	ldrb r2, [r1, #2]
	str r2, [sp, #0xc]
	bl sub_080074F0
	cmp r0, #0
	beq _0800F614
	ldr r0, _0800F610 @ =gUnknown_030063A8
	ldr r0, [r0]
	b _0800F616
	.align 2, 0
_0800F610: .4byte gUnknown_030063A8
_0800F614:
	ldr r0, _0800F620 @ =0x03003F4C
_0800F616:
	mov sl, r0
_0800F618:
	cmp r4, #2
	bne _0800F624
	movs r5, #0
	b _0800F64A
	.align 2, 0
_0800F620: .4byte 0x03003F4C
_0800F624:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0800F632
	rsbs r1, r1, #0
_0800F632:
	movs r0, #0xff
	ands r0, r1
	movs r5, #3
	cmp r0, #7
	bls _0800F64A
	movs r5, #2
	cmp r0, #0x18
	bhi _0800F64A
	movs r5, #0
	cmp r0, #0x38
	bls _0800F64A
	movs r5, #1
_0800F64A:
	movs r6, #0
	adds r4, #1
	str r4, [sp, #0x10]
	movs r4, #0
	ldr r7, _0800F724 @ =0xFFFF8000
	ldr r3, _0800F728 @ =0x00007FFF
	mov r2, sl
_0800F658:
	mov r1, sp
	adds r0, r1, r6
	strb r4, [r0]
	ldrh r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r2]
	ands r0, r3
	stm r2!, {r0}
	adds r6, #1
	cmp r6, #0xb
	bls _0800F658
	movs r6, #0
	cmp r6, r5
	bhs _0800F6A2
_0800F678:
	adds r4, r6, #1
_0800F67A:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F688
	rsbs r0, r0, #0
_0800F688:
	movs r1, #0xc
	bl __modsi3
	mov r2, sp
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #1
	beq _0800F67A
	movs r0, #1
	strb r0, [r1]
	adds r6, r4, #0
	cmp r6, r5
	blo _0800F678
_0800F6A2:
	movs r6, #0
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bhs _0800F76E
	movs r3, #0x71
	rsbs r3, r3, #0
	mov r5, sl
	adds r4, r5, #0
	adds r4, #0x24
	adds r7, r5, #0
_0800F6B6:
	ldrh r0, [r5]
	ldr r2, _0800F724 @ =0xFFFF8000
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
	ldr r0, [r5]
	ldr r1, _0800F728 @ =0x00007FFF
	ands r0, r1
	str r0, [r5]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r5]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	mov r1, sb
	ldrb r2, [r1, #1]
	movs r0, #0x7f
	ands r2, r0
	lsls r2, r2, #7
	mov ip, r2
	ldrh r0, [r5]
	ldr r2, _0800F72C @ =0xFFFFC07F
	adds r1, r2, #0
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strh r0, [r5]
	mov r2, sp
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F760
	ldr r0, [r5]
	str r0, [r4]
	adds r0, r4, #0
	movs r1, #3
	str r3, [sp, #0x14]
	bl sub_080124E8
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	ldr r3, [sp, #0x14]
	cmp r0, #3
	beq _0800F736
	cmp r0, #3
	bgt _0800F730
	cmp r0, #2
	beq _0800F740
	b _0800F75C
	.align 2, 0
_0800F724: .4byte 0xFFFF8000
_0800F728: .4byte 0x00007FFF
_0800F72C: .4byte 0xFFFFC07F
_0800F730:
	cmp r0, #4
	beq _0800F740
	b _0800F75C
_0800F736:
	ldrb r0, [r4, #3]
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	b _0800F748
_0800F740:
	ldrb r0, [r4, #3]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
_0800F748:
	strb r0, [r4, #3]
	ldr r0, [r7, #0x24]
	ldr r1, _0800F788 @ =0x03FF8000
	ands r0, r1
	cmp r0, #0
	bne _0800F75C
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r4]
_0800F75C:
	adds r4, #4
	adds r7, #4
_0800F760:
	adds r5, #4
	adds r6, #1
	movs r2, #2
	add sb, r2
	ldr r0, [sp, #0xc]
	cmp r6, r0
	blo _0800F6B6
_0800F76E:
	ldr r4, [sp, #0x10]
	cmp r4, #2
	bhi _0800F776
	b _0800F598
_0800F776:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F788: .4byte 0x03FF8000
