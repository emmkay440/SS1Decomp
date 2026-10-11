	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08029ACC
sub_08029ACC: @ 0x08029ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _08029BA8 @ =0x0000FFFF
	ands r1, r0
	mov r8, r1
	lsls r5, r4, #0x10
	lsrs r5, r5, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08029BAC @ =0x00100005
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	adds r1, #0x15
	strh r2, [r1]
	add r0, sp, #0x44
	strh r2, [r0]
	mov sb, r0
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	lsls r5, r5, #0x10
	str r5, [sp, #0x4c]
	lsls r4, r4, #0x10
	mov sl, r4
_08029B18:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	mov r2, sb
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08029B80
	bl sub_08007604
	cmp r0, #0
	bne _08029B80
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	bne _08029B80
	movs r0, #0x30
	str r0, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x4c]
	asrs r0, r2, #0x10
	mov r2, sl
	asrs r1, r2, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	mov r2, sb
	ldrh r3, [r2]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_08029B80:
	bl WaitFrame
	cmp r5, #0
	beq _08029B18
	ldr r2, _08029BB0 @ =gUnknown_03006800
	movs r1, #1
	mov r0, r8
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029BA8: .4byte 0x0000FFFF
_08029BAC: .4byte 0x00100005
_08029BB0: .4byte gUnknown_03006800
