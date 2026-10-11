	.include "asm/macros.inc"

	.syntax unified
	.text

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
