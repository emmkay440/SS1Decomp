	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08027940
sub_08027940: @ 0x08027940
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	movs r2, #1
	ldr r0, _08027A20 @ =gUnknown_03006758
	ldr r3, [r0]
	mov ip, r0
	cmp r2, r3
	bhs _08027990
	ldr r0, _08027A24 @ =gUnknown_03006720
	ldr r1, [r0]
	mov r8, r0
	adds r6, r3, #0
	adds r3, r1, #0
	adds r3, #0x10
	adds r4, r1, #0
	adds r4, #0xc
	movs r7, #1
_08027966:
	adds r5, r4, #0
	ldrh r1, [r3, #6]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0802797C
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08027A3C
_0802797C:
	adds r3, #0xc
	adds r4, r5, #0
	adds r4, #0xc
	adds r2, #1
	cmp r2, r6
	blo _08027966
_08027988:
	mov r1, ip
	ldr r0, [r1]
	cmp r2, r0
	blo _08027A46
_08027990:
	movs r2, #1
	mov r4, ip
	ldr r3, [r4]
	cmp r2, r3
	bhs _080279D6
	ldr r0, _08027A24 @ =gUnknown_03006720
	ldr r1, [r0]
	mov r8, r0
	adds r6, r3, #0
	adds r3, r1, #0
	adds r3, #0x10
	adds r4, r1, #0
	adds r4, #0xc
	movs r7, #1
_080279AC:
	adds r5, r4, #0
	ldrh r1, [r3, #6]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080279C2
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #7
	beq _08027A32
_080279C2:
	adds r3, #0xc
	adds r4, r5, #0
	adds r4, #0xc
	adds r2, #1
	cmp r2, r6
	blo _080279AC
_080279CE:
	mov r5, ip
	ldr r0, [r5]
	cmp r2, r0
	blo _08027A46
_080279D6:
	movs r2, #1
	mov r6, ip
	ldr r3, [r6]
	cmp r2, r3
	bhs _08027A1C
	ldr r0, _08027A24 @ =gUnknown_03006720
	ldr r1, [r0]
	mov r8, r0
	adds r6, r3, #0
	adds r3, r1, #0
	adds r3, #0x10
	adds r4, r1, #0
	adds r4, #0xc
	movs r7, #1
_080279F2:
	adds r5, r4, #0
	ldrh r1, [r3, #6]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08027A08
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	beq _08027A28
_08027A08:
	adds r3, #0xc
	adds r4, r5, #0
	adds r4, #0xc
	adds r2, #1
	cmp r2, r6
	blo _080279F2
_08027A14:
	mov r7, ip
	ldr r0, [r7]
	cmp r2, r0
	blo _08027A46
_08027A1C:
	movs r0, #0
	b _08027A80
	.align 2, 0
_08027A20: .4byte gUnknown_03006758
_08027A24: .4byte gUnknown_03006720
_08027A28:
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	b _08027A14
_08027A32:
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	b _080279CE
_08027A3C:
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	b _08027988
_08027A46:
	cmp r2, #0
	beq _08027A66
	ldr r4, _08027A8C @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r3, r0, #2
_08027A52:
	ldr r1, [r4]
	adds r1, r3, r1
	adds r0, r1, #0
	subs r0, #0xc
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	subs r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08027A52
_08027A66:
	mov r7, r8
	ldr r1, [r7]
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r2, [r7]
	ldrh r1, [r2, #0x16]
	movs r0, #4
	ands r0, r1
	movs r1, #9
	orrs r0, r1
	strh r0, [r2, #0x16]
	movs r0, #1
_08027A80:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08027A8C: .4byte gUnknown_03006720
