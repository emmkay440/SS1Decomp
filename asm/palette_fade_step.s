	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804E80C
sub_0804E80C: @ 0x0804E80C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl FlushPaletteBuffer
	movs r3, #0
	movs r6, #0x1f
	movs r7, #0x1f
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sb, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov r8, r0
	ldr r0, _0804E8B4 @ =0xFFFFFC1F
	mov ip, r0
_0804E82E:
	lsls r1, r3, #5
	ldr r0, _0804E8B8 @ =gPaletteBuffer
	adds r2, r1, r0
	movs r4, #0
	adds r5, r3, #1
_0804E838:
	ldrb r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _0804E854
	ldr r1, [r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_0804E854:
	ldrh r3, [r2]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0804E872
	ldr r1, [r2]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r7
	lsls r1, r1, #5
	mov r0, ip
	ands r0, r3
	orrs r0, r1
	strh r0, [r2]
_0804E872:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _0804E892
	ldr r1, [r2]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	lsls r1, r1, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #1]
_0804E892:
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804E838
	lsls r0, r5, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0804E82E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E8B4: .4byte 0xFFFFFC1F
_0804E8B8: .4byte gPaletteBuffer
