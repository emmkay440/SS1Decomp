	.include "asm/macros.inc"

	.syntax unified
	.text

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
