	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08017E50
sub_08017E50: @ 0x08017E50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r4, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _08017E98 @ =0x00100005
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08017E9C @ =0x0000FFFF
	ands r0, r4
	lsls r0, r0, #0xc
	str r0, [sp, #0x50]
	asrs r4, r4, #0x10
	lsls r4, r4, #0xc
	str r4, [sp, #0x54]
	add r1, sp, #0x44
	strh r2, [r1]
	mov r0, sp
	adds r0, #0x46
	strh r2, [r0]
	movs r7, #0
	mov sb, r1
	mov sl, r0
	b _08017F26
	.align 2, 0
_08017E98: .4byte 0x00100005
_08017E9C: .4byte 0x0000FFFF
_08017EA0:
	str r7, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, sb
	mov r3, sl
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08017F22
	bl sub_08007604
	cmp r0, #0
	bne _08017F22
	bl sub_08007544
	adds r2, r0, #0
	cmp r2, #0
	bne _08017F22
	ldr r0, [sp, #0x50]
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	asrs r4, r1, #0xc
	add r6, sp, #0x48
	movs r3, #0x4a
	add r3, sp
	mov r8, r3
	movs r1, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	movs r4, #0
	ldrsh r2, [r6, r4]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r1, #1
	mov r4, sb
	ldrh r3, [r4]
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
	movs r2, #3
	bl sub_08004344
_08017F22:
	bl WaitFrame
_08017F26:
	bl sub_080074CC
	cmp r0, #0
	bne _08017F32
	cmp r7, #0
	beq _08017EA0
_08017F32:
	ldr r2, _08017F50 @ =gUnknown_030063C4
	movs r1, #1
	ldr r0, [sp, #0x4c]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017F50: .4byte gUnknown_030063C4

	thumb_func_start sub_08017F54
sub_08017F54: @ 0x08017F54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r4, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _08017F9C @ =0x00100004
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08017FA0 @ =0x0000FFFF
	ands r0, r4
	lsls r0, r0, #0xc
	str r0, [sp, #0x50]
	asrs r4, r4, #0x10
	lsls r4, r4, #0xc
	str r4, [sp, #0x54]
	add r1, sp, #0x44
	strh r2, [r1]
	mov r0, sp
	adds r0, #0x46
	strh r2, [r0]
	movs r7, #0
	mov sb, r1
	mov sl, r0
	b _0801802A
	.align 2, 0
_08017F9C: .4byte 0x00100004
_08017FA0: .4byte 0x0000FFFF
_08017FA4:
	str r7, [sp]
	add r0, sp, #0x10
	movs r1, #0x11
	mov r2, sb
	mov r3, sl
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08018026
	bl sub_08007604
	cmp r0, #0
	bne _08018026
	bl sub_08007544
	adds r2, r0, #0
	cmp r2, #0
	bne _08018026
	ldr r0, [sp, #0x50]
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	asrs r4, r1, #0xc
	add r6, sp, #0x48
	movs r3, #0x4a
	add r3, sp
	mov r8, r3
	movs r1, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	movs r4, #0
	ldrsh r2, [r6, r4]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r1, #1
	mov r4, sb
	ldrh r3, [r4]
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
	movs r2, #0x11
	bl sub_08004344
_08018026:
	bl WaitFrame
_0801802A:
	bl sub_080074CC
	cmp r0, #0
	bne _08018036
	cmp r7, #0
	beq _08017FA4
_08018036:
	ldr r2, _08018054 @ =gUnknown_030063C4
	movs r1, #1
	ldr r0, [sp, #0x4c]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018054: .4byte gUnknown_030063C4

	thumb_func_start sub_08018058
sub_08018058: @ 0x08018058
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r4, r0, #0
	str r1, [sp, #0x48]
	ldr r1, _080180A4 @ =0x00100005
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080180A8 @ =0x0000FFFF
	mov sb, r0
	movs r1, #0x1e
	mov sl, r1
	mov r2, sb
	ands r2, r4
	mov sb, r2
	asrs r4, r4, #0x10
	mov r8, r4
	lsls r2, r2, #0x10
	str r2, [sp, #0x4c]
	mov r0, r8
	lsls r0, r0, #0x10
	str r0, [sp, #0x50]
	add r7, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	b _08018110
	.align 2, 0
_080180A4: .4byte 0x00100005
_080180A8: .4byte 0x0000FFFF
_080180AC:
	bl sub_08007510
	cmp r0, #0
	bne _0801810C
	bl sub_08007604
	cmp r0, #0
	bne _0801810C
	bl sub_08007544
	adds r5, r0, #0
	cmp r5, #0
	bne _0801810C
	mov r0, sb
	mov r1, r8
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	ldr r1, [sp, #0x4c]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x50]
	asrs r1, r2, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	movs r3, #0
	bl sub_08004344
_0801810C:
	bl WaitFrame
_08018110:
	bl sub_080074CC
	cmp r0, #0
	bne _08018126
	mov r1, sl
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0
	bne _080180AC
_08018126:
	ldr r2, _08018144 @ =gUnknown_030063C4
	movs r1, #1
	ldr r0, [sp, #0x48]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018144: .4byte gUnknown_030063C4

	thumb_func_start sub_08018148
sub_08018148: @ 0x08018148
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r4, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _0801818C @ =0x00100005
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08018190 @ =0x0000FFFF
	ands r0, r4
	lsls r0, r0, #0xc
	str r0, [sp, #0x50]
	asrs r4, r4, #0x10
	lsls r4, r4, #0xc
	str r4, [sp, #0x54]
	add r1, sp, #0x44
	strh r2, [r1]
	mov r0, sp
	adds r0, #0x46
	strh r2, [r0]
	mov sl, r2
	b _08018222
	.align 2, 0
_0801818C: .4byte 0x00100005
_08018190: .4byte 0x0000FFFF
_08018194:
	bl sub_08007510
	cmp r0, #0
	bne _0801821E
	bl sub_08007604
	cmp r0, #0
	bne _0801821E
	bl sub_08007544
	adds r7, r0, #0
	cmp r7, #0
	bne _0801821E
	ldr r0, [sp, #0x50]
	asrs r4, r0, #0xc
	ldr r1, [sp, #0x54]
	asrs r1, r1, #0xc
	mov sb, r1
	adds r0, r4, #0
	movs r2, #0
	bl sub_08006008
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r2, sl
	str r2, [sp]
	add r0, sp, #0x10
	movs r1, #7
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r6, sp, #0x48
	movs r3, #0x4a
	add r3, sp
	mov r8, r3
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	add r2, sp, #0x44
	ldrh r3, [r2]
	str r5, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #7
	bl sub_08004344
_0801821E:
	bl WaitFrame
_08018222:
	bl sub_080074CC
	cmp r0, #0
	bne _08018230
	mov r3, sl
	cmp r3, #0
	beq _08018194
_08018230:
	ldr r2, _08018250 @ =gUnknown_030063C4
	movs r1, #1
	ldr r0, [sp, #0x4c]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018250: .4byte gUnknown_030063C4
