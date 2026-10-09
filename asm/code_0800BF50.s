	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800BF50
sub_0800BF50: @ 0x0800BF50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _0800BFA4 @ =gPlayers
	adds r4, r1, r0
	adds r5, r4, #0
	adds r5, #0xd0
	ldr r1, [r5]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	mov r8, r0
	movs r0, #1
	add r8, r0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bne _0800BF8E
	ldrh r0, [r4]
	adds r1, r7, #0
	bl sub_0802D49C
_0800BF8E:
	movs r0, #0
	mov sl, r0
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r6, r5, #0
	adds r5, r4, #0
	adds r5, #0x76
	b _0800C020
	.align 2, 0
_0800BFA4: .4byte gPlayers
_0800BFA8:
	bl GetMultiplayerId
	cmp r0, sb
	bne _0800BFEE
	bl sub_080102C4
	ldr r3, [r6]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	movs r0, #2
	bl sub_0802C174
	ldr r3, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r3, #4]
	ldr r2, _0800C030 @ =0xFF807FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	movs r0, #5
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x7c]
	adds r0, #1
	str r0, [r4, #0x7c]
_0800BFEE:
	bl WaitFrame
	bl WaitFrame
	adds r1, r4, #0
	adds r1, #0x72
	movs r0, #0
	strh r0, [r1]
	strh r0, [r5]
	adds r1, #2
	strh r0, [r1]
	ldrh r0, [r4]

	non_word_aligned_thumb_func_start sub_0800C006
sub_0800C006: @ 0x0800C006
	adds r1, r7, #0
	bl sub_0802D49C
	movs r0, #1
	add sl, r0
	cmp sl, r8
	bhs _0800C044
_0800C014:
	bl WaitFrame
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
_0800C020:
	cmp r0, #5
	bne _0800C044
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800C014
	cmp r7, #2
	bne _0800BFA8
	b _0800C044
	.align 2, 0
_0800C030: .4byte 0xFF807FFF
_0800C034:
	bl GetMultiplayerId
	cmp r0, sb
	bne _0800C040
	movs r0, #5
	strh r0, [r4, #0xc]
_0800C040:
	bl WaitFrame
_0800C044:
	ldrh r0, [r5]
	cmp r0, #0
	bne _0800C056
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _0800C034
_0800C056:
	movs r5, #0
	b _0800C064
_0800C05A:
	bl WaitFrame
	adds r5, #1
	cmp r5, #9
	bhi _0800C070
_0800C064:
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _0800C05A
_0800C070:
	bl GetMultiplayerId
	cmp r0, sb
	bne _0800C088
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #7
	beq _0800C088
	movs r0, #0
	strh r0, [r4, #0xc]
_0800C088:
	movs r0, #0
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
