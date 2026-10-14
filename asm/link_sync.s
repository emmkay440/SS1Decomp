	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08028DB0
sub_08028DB0: @ 0x08028DB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r5, #1
	str r5, [r0]
	bl sub_08001F98
	cmp r0, #0
	bne _08028DCA
	b _08028F46
_08028DCA:
	bl GetMultiplayerId
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_08001F98
	cmp r0, #0
	beq _08028E04
	ldr r3, _08028E20 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028E04
	ldr r1, _08028E24 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r0, #0
	strh r0, [r1, #8]
	strh r5, [r1, #0xa]
	movs r0, #0xc
	strb r0, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xe
	strb r0, [r1, #6]
	strb r7, [r1, #7]
_08028E04:
	bl GetMultiplayerId
	ldr r4, _08028E28 @ =gUnknown_030063D8
	ldr r2, [r4]
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r2, #0xda
	adds r2, r2, r1
	strb r7, [r2]
	bl sub_08001F64
	cmp r0, #0
	beq _08028EDE
	b _08028E34
	.align 2, 0
_08028E20: .4byte gUnknown_03006758
_08028E24: .4byte gUnknown_03006720
_08028E28: .4byte gUnknown_030063D8
_08028E2C:
	ldr r0, _08028E3C @ =gUnknown_030066E8
	ldr r0, [r0]
	cmp r0, #0
	beq _08028EA8
_08028E34:
	movs r6, #0
	movs r4, #0
	movs r5, #0
	b _08028E54
	.align 2, 0
_08028E3C: .4byte gUnknown_030066E8
_08028E40:
	ldr r0, _08028EB4 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xda
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, r7
	bne _08028E50
	adds r6, #1
_08028E50:
	adds r5, #0xf
	adds r4, #1
_08028E54:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028E40
	bl WaitFrame
	bl sub_08001EC4
	cmp r6, r0
	bne _08028E2C
	ldr r0, _08028EB8 @ =gUnknown_030066E8
	ldr r0, [r0]
	cmp r0, #0
	beq _08028EA8
	bl sub_08001F98
	cmp r0, #0
	beq _08028EA8
	ldr r3, _08028EBC @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028EA8
	ldr r1, _08028EC0 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xc
	strb r0, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xe
	strb r0, [r1, #6]
	movs r0, #0xff
	strb r0, [r1, #7]
_08028EA8:
	movs r4, #0
	ldr r7, _08028EB4 @ =gUnknown_030063D8
	movs r5, #0
	movs r6, #0
	b _08028ED0
	.align 2, 0
_08028EB4: .4byte gUnknown_030063D8
_08028EB8: .4byte gUnknown_030066E8
_08028EBC: .4byte gUnknown_03006758
_08028EC0: .4byte gUnknown_03006720
_08028EC4:
	ldr r0, [r7]
	adds r0, #0xda
	adds r0, r0, r5
	strb r6, [r0]
	adds r5, #0xf
	adds r4, #1
_08028ED0:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028EC4
	bl WaitFrame
	b _08028F46
_08028EDE:
	ldr r5, _08028F60 @ =gUnknown_030066E8
_08028EE0:
	bl WaitFrame
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0xda
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08028EF6
	ldr r0, [r5]
	cmp r0, #0
	bne _08028EE0
_08028EF6:
	movs r5, #0
	strb r5, [r1]
	bl GetMultiplayerId
	ldr r2, [r4]
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r2, #0xda
	adds r2, r2, r1
	strb r5, [r2]
	bl GetMultiplayerId
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_08001F98
	cmp r0, #0
	beq _08028F46
	ldr r3, _08028F64 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028F46
	ldr r1, _08028F68 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	strh r5, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xc
	strb r0, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xe
	strb r0, [r1, #6]
	strb r2, [r1, #7]
_08028F46:
	ldr r0, _08028F60 @ =gUnknown_030066E8
	movs r4, #0
	str r4, [r0]
	bl WaitFrame
	mov r0, r8
	str r4, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028F60: .4byte gUnknown_030066E8
_08028F64: .4byte gUnknown_03006758
_08028F68: .4byte gUnknown_03006720
