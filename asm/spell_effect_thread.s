	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080298C0
sub_080298C0: @ 0x080298C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	str r0, [sp, #0x2c]
	ldrh r7, [r4]
	ldrh r1, [r4, #2]
	mov r8, r1
	ldr r0, _080298FC @ =0x00100004
	bl GetDataRecord
	mov sb, r0
	ldr r0, _08029900 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x28]
	ldr r0, _08029904 @ =0x00130004
	bl GetDataRecord
	ldrh r5, [r4, #4]
	ldrh r6, [r4, #6]
	cmp r6, #3
	bls _08029908
	movs r6, #1
	b _0802990A
	.align 2, 0
_080298FC: .4byte 0x00100004
_08029900: .4byte 0x00110004
_08029904: .4byte 0x00130004
_08029908:
	movs r6, #0
_0802990A:
	cmp r5, #4
	bne _08029910
	movs r5, #0
_08029910:
	cmp r5, #7
	bne _0802991A
	movs r5, #0xa
	movs r6, #0
	b _08029928
_0802991A:
	cmp r5, #5
	bne _08029924
	movs r5, #9
	movs r6, #0
	b _08029928
_08029924:
	lsls r0, r5, #0x11
	lsrs r5, r0, #0x10
_08029928:
	add r3, sp, #0x24
	movs r0, #0
	strh r0, [r3]
	mov r2, sp
	adds r2, #0x26
	strh r0, [r2]
	add r0, sp, #0x10
	movs r1, #8
	strb r1, [r0, #5]
	strb r1, [r0, #8]
	lsls r2, r7, #0x10
	str r2, [sp, #0x34]
	mov r7, r8
	lsls r7, r7, #0x10
	str r7, [sp, #0x38]
	adds r5, #0xc
	str r5, [sp, #0x30]
	add r0, sp, #0x20
	mov r8, r0
	mov r1, sp
	adds r1, #0x22
	str r1, [sp, #0x3c]
	mov sl, r3
_08029956:
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, [sp, #0x34]
	asrs r0, r3, #0x10
	ldr r7, [sp, #0x38]
	asrs r1, r7, #0x10
	mov r2, r8
	ldr r3, [sp, #0x3c]
	bl sub_08005FC4
	ldr r1, [sp, #0x30]
	adds r0, r6, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	str r2, [sp]
	adds r0, r4, #0
	mov r1, sl
	mov r2, sp
	adds r2, #0x26
	mov r3, sb
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08029A04 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080299DC
	bl sub_08007510
	cmp r0, #0
	bne _080299DC
	bl sub_08007604
	cmp r0, #0
	bne _080299DC
	bl sub_08007544
	adds r2, r0, #0
	cmp r2, #0
	bne _080299DC
	mov r3, r8
	movs r7, #0
	ldrsh r0, [r3, r7]
	ldr r3, [sp, #0x3c]
	movs r7, #0
	ldrsh r1, [r3, r7]
	adds r1, #1
	mov r7, sl
	ldrh r3, [r7]
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r7, sb
	str r7, [sp, #8]
	ldr r2, [sp, #0x28]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_080299DC:
	bl WaitFrame
	cmp r5, #0
	beq _08029956
	ldr r2, _08029A08 @ =gUnknown_03006800
	movs r1, #1
	ldr r3, [sp, #0x2c]
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029A04: .4byte gUnknown_030063D8
_08029A08: .4byte gUnknown_03006800
