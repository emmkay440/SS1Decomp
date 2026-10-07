	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08026C80
sub_08026C80: @ 0x08026C80
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08026CDC @ =0x030065E0
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x3c
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	adds r2, r6, #0
	adds r2, #0x20
	adds r2, r4, r2
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08026CE0 @ =sub_08023A94
	str r1, [r0]
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r4, r1
	ldr r0, [r2]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	adds r4, r4, r6
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026CDC: .4byte 0x030065E0
_08026CE0: .4byte sub_08023A94

	thumb_func_start sub_08026CE4
sub_08026CE4: @ 0x08026CE4
	push {r4, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08026D08 @ =0x030065E0
	adds r4, r1, r0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08026D00
	adds r0, r4, #0
	bl KillThread
_08026D00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026D08: .4byte 0x030065E0

	thumb_func_start sub_08026D0C
sub_08026D0C: @ 0x08026D0C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08026D68 @ =0x03006630
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x3c
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	adds r2, r6, #0
	adds r2, #0x20
	adds r2, r4, r2
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08026D6C @ =sub_08023E74
	str r1, [r0]
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r4, r1
	ldr r0, [r2]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	adds r4, r4, r6
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026D68: .4byte 0x03006630
_08026D6C: .4byte sub_08023E74

	thumb_func_start sub_08026D70
sub_08026D70: @ 0x08026D70
	push {r4, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08026D94 @ =0x03006630
	adds r4, r1, r0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08026D8C
	adds r0, r4, #0
	bl KillThread
_08026D8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026D94: .4byte 0x03006630

	thumb_func_start sub_08026D98
sub_08026D98: @ 0x08026D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	str r1, [sp, #0x20]
	ldr r0, [sp, #0x4c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r3, #1
	beq _08026DC4
	cmp r3, #1
	ble _08026DC4
	cmp r3, #2
	beq _08026DC4
	cmp r3, #3
	bne _08026DC4
	movs r3, #0xd
_08026DC4:
	str r2, [sp, #0x1c]
	movs r0, #0xa
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _08026E68 @ =0x080FBA9C
	adds r6, r0, r1
	add r4, sp, #0x10
	movs r5, #0
	subs r0, r7, #1
	mov sb, r0
	cmp r5, r7
	bhs _08026DF2
_08026DDC:
	ldm r6!, {r1}
	add r0, sp, #0x1c
	str r3, [sp, #0x28]
	bl sub_080004A4
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	ldr r3, [sp, #0x28]
	cmp r5, r7
	blo _08026DDC
_08026DF2:
	movs r1, #0
	mov sl, r1
	mov r1, sb
	lsls r0, r1, #1
	add r0, sb
	lsls r0, r0, #1
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	add r4, sp, #0x10
	movs r5, #0
	cmp r5, r7
	bhs _08026E56
	ldr r6, _08026E6C @ =gUnknown_03006430
	lsls r3, r3, #0x10
	str r3, [sp, #0x24]
_08026E12:
	mov r3, sl
	cmp r3, #0
	bne _08026E22
	ldrb r0, [r4]
	cmp r0, #0
	bne _08026E22
	cmp r5, sb
	bne _08026E4A
_08026E22:
	movs r0, #1
	mov sl, r0
	ldrb r1, [r4]
	mov ip, r1
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	str r0, [sp, #8]
	ldr r0, [r6]
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x24]
	lsrs r2, r3, #0x10
	mov r3, ip
	bl sub_08003518
_08026E4A:
	adds r5, #1
	movs r0, #6
	add r8, r0
	adds r4, #1
	cmp r5, r7
	blo _08026E12
_08026E56:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026E68: .4byte 0x080FBA9C
_08026E6C: .4byte gUnknown_03006430

	thumb_func_start sub_08026E70
sub_08026E70: @ 0x08026E70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r6, r0, #0
	adds r7, r1, #0
	str r2, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0x34
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _08026F1C @ =0x03006510
	adds r4, r1, r0
	add r0, sp, #0x14
	movs r1, #0x64
	bl sub_080004A4
	add r1, sp, #0x10
	movs r2, #0
	mov r8, r2
	strb r0, [r1]
	ldr r0, [sp, #0x14]
	strb r0, [r1, #1]
	adds r0, r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026EC4
	adds r0, r6, #0
	subs r0, #0xc
	ldrb r3, [r1]
	str r2, [sp]
	adds r1, r4, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	ldr r1, [r4, #8]
	str r1, [sp, #8]
	ldr r1, [r4]
	str r1, [sp, #0xc]
	adds r1, r7, #0
	bl sub_08003518
_08026EC4:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	adds r5, r4, #0
	adds r5, #0x1c
	cmp r0, #9
	bhi _08026EF2
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026EF2
	subs r0, r6, #6
	mov r1, r8
	str r1, [sp]
	str r5, [sp, #4]
	ldr r1, [r4, #8]
	str r1, [sp, #8]
	ldr r1, [r4]
	str r1, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08003518
_08026EF2:
	add r0, sp, #0x10
	ldrb r3, [r0, #1]
	movs r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08003518
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026F1C: .4byte 0x03006510

	thumb_func_start sub_08026F20
sub_08026F20: @ 0x08026F20
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r3, #0
	cmp r2, #0
	beq _08026F8A
	ldr r2, [r2]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	beq _08026F42
	cmp r0, #2
	ble _08026F8A
	cmp r0, #3
	beq _08026F42
	cmp r0, #4
	bne _08026F8A
_08026F42:
	lsls r0, r2, #0xc
	lsrs r0, r0, #0x1b
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
	movs r3, #0
	ldr r0, _08026F90 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r4, r2, r0
	cmp r5, #0
	bge _08026F7C
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08026F94 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08026F7C:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r6, r1
	adds r0, r4, #0
	adds r2, r7, #0
	bl sub_0800EB30
_08026F8A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026F90: .4byte 0x03003CA8
_08026F94: .4byte 0x03003CA0
