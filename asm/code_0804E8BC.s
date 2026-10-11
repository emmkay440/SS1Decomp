	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804E8BC
sub_0804E8BC: @ 0x0804E8BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E8E6
	movs r7, #0
	movs r0, #0x20
	b _0804E90A
_0804E8E6:
	cmp r4, #1
	bne _0804E8F2
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E90C
_0804E8F2:
	cmp r4, #2
	bne _0804E8FE
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E90C
_0804E8FE:
	cmp r6, #3
	bne _0804E90C
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E90A:
	str r0, [sp]
_0804E90C:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804E9E8
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sl, r0
	ldr r2, _0804E960 @ =gUnknown_03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
	mov sb, sl
	mov r2, ip
	mov r0, sb
	ands r2, r0
	mov sb, r2
_0804E92E:
	lsls r0, r1, #5
	ldr r2, _0804E964 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #4]
	lsls r5, r1, #6
_0804E93C:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp sl, r0
	bgt _0804E968
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r3]
	b _0804E97A
	.align 2, 0
_0804E960: .4byte gUnknown_03000A58
_0804E964: .4byte gPaletteBuffer
_0804E968:
	lsrs r0, r2, #0x1b
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E97A:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E990
	movs r0, #0x1f
	ands r0, r2
	b _0804E992
_0804E990:
	lsrs r0, r1, #0x1b
_0804E992:
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804E9B8 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E9BC
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	b _0804E9C2
	.align 2, 0
_0804E9B8: .4byte 0xFFFFFC1F
_0804E9BC:
	lsrs r0, r1, #0x1b
	mov r2, ip
	ands r0, r2
_0804E9C2:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E93C
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804E92E
_0804E9E8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804E9F8
sub_0804E9F8: @ 0x0804E9F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804EA22
	movs r7, #0
	movs r0, #0x20
	b _0804EA46
_0804EA22:
	cmp r4, #1
	bne _0804EA2E
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804EA48
_0804EA2E:
	cmp r4, #2
	bne _0804EA3A
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804EA48
_0804EA3A:
	cmp r6, #3
	bne _0804EA48
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804EA46:
	str r0, [sp]
_0804EA48:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804EB24
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sl, r0
	ldr r2, _0804EA9C @ =gUnknown_03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
	mov sb, sl
	mov r2, ip
	mov r0, sb
	ands r2, r0
	mov sb, r2
_0804EA6A:
	lsls r0, r1, #5
	ldr r2, _0804EAA0 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #4]
	lsls r5, r1, #6
_0804EA78:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp sl, r0
	blt _0804EAA4
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r3]
	b _0804EAB6
	.align 2, 0
_0804EA9C: .4byte gUnknown_03000A58
_0804EAA0: .4byte gPaletteBuffer
_0804EAA4:
	lsrs r0, r2, #0x1b
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804EAB6:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	blt _0804EACC
	movs r0, #0x1f
	ands r0, r2
	b _0804EACE
_0804EACC:
	lsrs r0, r1, #0x1b
_0804EACE:
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804EAF4 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	blt _0804EAF8
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	b _0804EAFE
	.align 2, 0
_0804EAF4: .4byte 0xFFFFFC1F
_0804EAF8:
	lsrs r0, r1, #0x1b
	mov r2, ip
	ands r0, r2
_0804EAFE:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804EA78
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804EA6A
_0804EB24:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804EB34
sub_0804EB34: @ 0x0804EB34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804EB5C
	movs r7, #0
	movs r0, #0x20
	b _0804EB7E
_0804EB5C:
	cmp r4, #1
	bne _0804EB68
	movs r7, #0
	movs r1, #0x10
	mov sb, r1
	b _0804EB80
_0804EB68:
	cmp r4, #2
	bne _0804EB72
	movs r7, #0x10
	movs r0, #0x20
	b _0804EB7E
_0804EB72:
	cmp r6, #3
	bne _0804EB80
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804EB7E:
	mov sb, r0
_0804EB80:
	adds r3, r7, #0
	cmp r3, sb
	bhs _0804EBE6
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x1f
	adds r5, r0, #0
	ands r5, r1
	lsls r7, r5, #2
	ldr r1, _0804EBF4 @ =gPaletteBuffer
	mov sl, r1
	movs r1, #0x20
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0x1f
	ands r1, r0
	lsls r6, r1, #5
	ldr r0, _0804EBF8 @ =0xFFFFFC1F
	mov ip, r0
_0804EBA8:
	lsls r0, r3, #5
	mov r1, sl
	adds r2, r0, r1
	movs r4, #0
	adds r3, #1
_0804EBB2:
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, ip
	ands r0, r1
	orrs r0, r6
	strh r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804EBB2
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, sb
	blo _0804EBA8
_0804EBE6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EBF4: .4byte gPaletteBuffer
_0804EBF8: .4byte 0xFFFFFC1F
