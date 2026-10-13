	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802C3D4
sub_0802C3D4: @ 0x0802C3D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x28]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #8
	strb r0, [r1, #5]
	add r5, sp, #0x24
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	ldr r0, _0802C42C @ =0x00100004
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0802C430 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802C434 @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r6, #0
	cmp r7, #3
	bhi _0802C43C
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0802C438 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x2c]
	b _0802C44C
	.align 2, 0
_0802C42C: .4byte 0x00100004
_0802C430: .4byte 0x00110004
_0802C434: .4byte 0x00130004
_0802C438: .4byte gPlayers
_0802C43C:
	ldr r1, _0802C480 @ =gEnemies
	movs r0, #0x94
	muls r0, r7, r0
	ldr r2, _0802C484 @ =0xFFFFFDB0
	adds r0, r0, r2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
_0802C44C:
	lsls r0, r7, #2
	str r0, [sp, #0x34]
	cmp r6, #0
	bne _0802C514
	movs r1, #0
	mov sb, r1
_0802C458:
	cmp r7, #3
	bhi _0802C488
	ldr r0, [sp, #0x2c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
	b _0802C4A8
	.align 2, 0
_0802C480: .4byte gEnemies
_0802C484: .4byte 0xFFFFFDB0
_0802C488:
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
_0802C4A8:
	add r5, sp, #0x20
	mov r4, sp
	adds r4, #0x22
	mov r0, sb
	str r0, [sp]
	movs r0, #0x15
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	mov r3, r8
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0802C538 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0802C50C
	bl sub_08007510
	cmp r0, #0
	bne _0802C50C
	bl sub_08007604
	cmp r0, #0
	bne _0802C50C
	bl sub_08007544
	cmp r0, #0
	bne _0802C50C
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #1
	mov r2, sp
	ldrh r3, [r2, #0x24]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0xc]
	movs r2, #0x15
	bl sub_08004344
_0802C50C:
	bl WaitFrame
	cmp r6, #0
	beq _0802C458
_0802C514:
	ldr r2, _0802C53C @ =gUnknown_030067F0
	ldr r0, [sp, #0x34]
	adds r2, r0, r2
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C538: .4byte gMapLayer_03003910
_0802C53C: .4byte gUnknown_030067F0
