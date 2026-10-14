	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08004FB4
sub_08004FB4: @ 0x08004FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	beq _08005078
	ldr r0, _0800506C @ =gMapLayer_03003C00
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r0, [r0]
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _08005070 @ =0x080FB0F8
	ldr r2, _08005074 @ =0x06007000
	mov sb, r2
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r6, r1, r2
	adds r7, r0, #4
	movs r5, #0
_08004FEC:
	ldrh r0, [r7]
	cmp r0, #0
	beq _0800503A
	ldr r2, _0800506C @ =gMapLayer_03003C00
	adds r0, r2, #0
	adds r0, #0x84
	adds r3, r5, r0
	ldrh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3]
	ldrh r0, [r7]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _08005024
	movs r4, #0
	strh r4, [r3]
	adds r0, r2, #0
	adds r0, #0x7c
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08005024
	strh r4, [r1]
_08005024:
	adds r0, r2, #0
	adds r0, #0x7c
	adds r0, r5, r0
	ldrh r0, [r0]
	lsls r0, r0, #8
	adds r0, r6, r0
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl QueueCopy
_0800503A:
	movs r0, #0x80
	lsls r0, r0, #3
	add sb, r0
	adds r6, r6, r0
	adds r7, #2
	adds r5, #2
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #3
	bls _08004FEC
	bl sub_0800F298
	cmp r0, #0
	bne _0800505A
	b _08005198
_0800505A:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	b _08005198
	.align 2, 0
_0800506C: .4byte gMapLayer_03003C00
_08005070: .4byte 0x080FB0F8
_08005074: .4byte 0x06007000
_08005078:
	ldr r0, _080050B8 @ =gMapLayer_03003910
	adds r5, r0, #0
	adds r5, #0x68
	ldrh r0, [r5]
	cmp r0, #0
	bne _08005086
	b _08005198
_08005086:
	cmp r0, #8
	bne _08005094
	bl sub_08007638
	cmp r0, #0
	beq _08005094
	b _08005198
_08005094:
	ldrh r0, [r5]
	cmp r0, #4
	bne _080050BC
	bl sub_08007510
	cmp r0, #0
	bne _080050DC
	movs r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #0x10
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	b _080050FE
	.align 2, 0
_080050B8: .4byte gMapLayer_03003910
_080050BC:
	cmp r0, #6
	bne _080050EE
	bl sub_08007510
	cmp r0, #0
	bne _080050DC
	movs r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #7
	bl sub_080044E4
	b _080050FE
_080050DC:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	b _080050FE
_080050EE:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
_080050FE:
	ldr r4, _080051A8 @ =gMapLayer_03003910
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r0, [r0]
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	mov r8, r0
	adds r7, r4, #0
	mov sl, r7
	ldr r2, _080051AC @ =0x06007000
	mov sb, r2
	adds r4, #0x7c
	movs r0, #0xe0
	lsls r0, r0, #7
	adds r6, r1, r0
	movs r5, #0
_08005124:
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r5, r0
	ldr r1, _080051B0 @ =0x080FB0FC
	adds r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #0
	beq _08005182
	adds r0, r7, #0
	adds r0, #0x84
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _08005166
	movs r1, #0
	strh r1, [r2]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08005166
	strh r1, [r4]
_08005166:
	mov r0, sl
	adds r0, #0x84
	adds r0, r5, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005182
	ldrh r0, [r4]
	lsls r0, r0, #8
	adds r0, r6, r0
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl QueueCopy
_08005182:
	movs r2, #0x80
	lsls r2, r2, #3
	add sb, r2
	adds r4, #2
	adds r6, r6, r2
	adds r5, #2
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	bls _08005124
_08005198:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080051A8: .4byte gMapLayer_03003910
_080051AC: .4byte 0x06007000
_080051B0: .4byte 0x080FB0FC
