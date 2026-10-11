	.include "asm/macros.inc"

	.syntax unified
	.text

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
