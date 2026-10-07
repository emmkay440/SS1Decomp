	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800EA00
sub_0800EA00: @ 0x0800EA00
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r1, #0
	ldr r0, _0800EA40 @ =0x03005DA8
	ldr r4, [r0]
	movs r3, #0
_0800EA10:
	movs r0, #1
	lsls r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0800EA48
	ldr r2, _0800EA44 @ =0x03005DB0
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, r6
	bne _0800EA48
	adds r0, r2, #4
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, r5
	bne _0800EA48
	adds r0, r2, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800EA48
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	b _0800EA52
	.align 2, 0
_0800EA40: .4byte 0x03005DA8
_0800EA44: .4byte 0x03005DB0
_0800EA48:
	adds r3, #0xc
	adds r1, #1
	cmp r1, #2
	bls _0800EA10
	ldr r0, _0800EA58 @ =0x0000FFFF
_0800EA52:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800EA58: .4byte 0x0000FFFF

	thumb_func_start sub_0800EA5C
sub_0800EA5C: @ 0x0800EA5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080076A8
	cmp r0, #0
	beq _0800EA6A
	adds r4, #0x47
_0800EA6A:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800EA74
sub_0800EA74: @ 0x0800EA74
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _0800EAD4 @ =0x000003E7
	cmp r5, r0
	bls _0800EA8A
	adds r5, r0, #0
_0800EA8A:
	ldr r0, [r3, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0xa
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_08005FC4
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0]
	subs r0, #8
	strh r0, [r1]
	adds r0, r1, #0
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	adds r2, r5, #0
	movs r3, #0
	bl sub_08026E70
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAD4: .4byte 0x000003E7

	thumb_func_start sub_0800EAD8
sub_0800EAD8: @ 0x0800EAD8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r6, _0800EAE4 @ =gUnknown_03004998
	lsls r4, r5, #4
	b _0800EAEC
	.align 2, 0
_0800EAE4: .4byte gUnknown_03004998
_0800EAE8:
	bl WaitFrame
_0800EAEC:
	ldr r0, [r6]
	adds r0, r0, r4
	bl SpawnEnemy
	cmp r0, #0
	bne _0800EB10
	bl sub_080074CC
	cmp r0, #0
	bne _0800EB10
	ldr r0, _0800EB28 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800EAE8
_0800EB10:
	bl WaitFrame
	ldr r2, _0800EB2C @ =gUnknown_03005DD4
	movs r1, #1
	lsls r1, r5
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB28: .4byte 0x030063D8
_0800EB2C: .4byte gUnknown_03005DD4

	thumb_func_start sub_0800EB30
sub_0800EB30: @ 0x0800EB30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov sb, r6
	movs r1, #0xf
	add r0, sp, #0x10
	strb r1, [r0]
	ldr r0, _0800EB70 @ =0x03006340
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r0, #4]
	adds r1, r1, r2
	movs r0, #0x1f
	movs r2, #1
	bl LoadPalette
	mov r0, r8
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0800EC16
	.align 2, 0
_0800EB70: .4byte 0x03006340
_0800EB74:
	ldrh r2, [r7]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	movs r4, #0xf0
	lsls r4, r4, #0x14
	ands r4, r0
	lsrs r4, r4, #0x18
	ldr r1, _0800EBC4 @ =0x03006340
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xff
	ands r2, r0
	subs r5, r2, #1
	ands r5, r0
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #8
	str r0, [sp, #8]
	ldr r0, [r1]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	adds r3, r5, #0
	bl sub_08003518
	cmp r4, #4
	bne _0800EBCE
	cmp r5, #0x2b
	bgt _0800EBC8
	cmp r5, #0x28
	blt _0800EBC8
	adds r0, r6, #0
	adds r0, #8
	b _0800EBE6
	.align 2, 0
_0800EBC4: .4byte 0x03006340
_0800EBC8:
	adds r0, r6, #0
	adds r0, #0xd
	b _0800EBE6
_0800EBCE:
	ldrh r0, [r7]
	cmp r0, #0xfb
	blt _0800EBF4
	cmp r0, #0xfe
	ble _0800EBDE
	cmp r0, #0xff
	beq _0800EBE4
	b _0800EBF4
_0800EBDE:
	adds r0, r6, #0
	adds r0, #8
	b _0800EBE6
_0800EBE4:
	adds r0, r6, #5
_0800EBE6:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _0800EBF0 @ =0x03003CA0
	b _0800EBFE
	.align 2, 0
_0800EBF0: .4byte 0x03003CA0
_0800EBF4:
	ldr r1, _0800EC2C @ =0x03003CA0
	ldrh r0, [r1]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800EBFE:
	ldrh r1, [r1]
	movs r0, #0xf0
	subs r0, r0, r1
	cmp r6, r0
	ble _0800EC14
	mov r6, sb
	mov r0, r8
	adds r0, #0xd
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0800EC14:
	adds r7, #2
_0800EC16:
	ldrh r0, [r7]
	cmp r0, #0
	bne _0800EB74
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC2C: .4byte 0x03003CA0
_0800EC30:
	.byte 0x0C, 0xB4, 0x02, 0xB0, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_0800EC38
sub_0800EC38: @ 0x0800EC38
	push {lr}
	ldr r0, _0800EC60 @ =0x03006334
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800EC64 @ =0x03006330
	strh r1, [r0]
	ldr r1, _0800EC68 @ =0x03005DE0
	movs r0, #0x12
	strh r0, [r1]
	bl sub_0800EC74
	ldr r0, _0800EC6C @ =0x08052C5C
	ldr r1, _0800EC70 @ =0x0600C000
	movs r2, #0xe0
	lsls r2, r2, #3
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0800EC60: .4byte 0x03006334
_0800EC64: .4byte 0x03006330
_0800EC68: .4byte 0x03005DE0
_0800EC6C: .4byte 0x08052C5C
_0800EC70: .4byte 0x0600C000

	thumb_func_start sub_0800EC74
sub_0800EC74: @ 0x0800EC74
	push {r4, lr}
	sub sp, #4
	ldr r4, _0800EC98 @ =0x03006334
	ldrh r0, [r4]
	cmp r0, #0
	bne _0800EC8C
	str r0, [sp]
	ldr r1, _0800EC9C @ =0x03005DF0
	ldr r2, _0800ECA0 @ =0x01000150
	mov r0, sp
	bl CpuFastSet
_0800EC8C:
	movs r0, #0
	strh r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC98: .4byte 0x03006334
_0800EC9C: .4byte 0x03005DF0
_0800ECA0: .4byte 0x01000150

	thumb_func_start sub_0800ECA4
sub_0800ECA4: @ 0x0800ECA4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r2, r5, #6
	lsrs r1, r1, #0x17
	ldr r0, _0800ED00 @ =0x03005DF0
	adds r1, r1, r0
	adds r2, r2, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800ECEE
	movs r0, #0xe
	lsls r6, r0, #0xc
	movs r0, #0x80
	lsls r0, r0, #2
	adds r7, r0, #0
_0800ECC8:
	ldrb r0, [r4]
	adds r3, r0, r7
	orrs r3, r6
	adds r4, #1
	cmp r3, #0xa
	bne _0800ECE4
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r3, [r4]
	orrs r3, r6
	adds r4, #1
	lsls r0, r5, #6
	adds r2, r0, r1
_0800ECE4:
	strh r3, [r2]
	adds r2, #2
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800ECC8
_0800ECEE:
	adds r0, r5, #0
	bl sub_0800EE44
	ldr r1, _0800ED04 @ =0x03006330
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED00: .4byte 0x03005DF0
_0800ED04: .4byte 0x03006330

	thumb_func_start sub_0800ED08
sub_0800ED08: @ 0x0800ED08
	push {r4, r5, lr}
	ldr r0, _0800ED5C @ =0x03006334
	ldrh r5, [r0]
	cmp r5, #0
	bne _0800ED4E
	ldr r0, _0800ED60 @ =REG_BG0CNT
	ldrh r1, [r0]
	lsrs r1, r1, #8
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #0xb
	ldr r0, _0800ED64 @ =0x03005DE0
	ldrh r3, [r0]
	lsls r3, r3, #6
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r0, r3, r0
	adds r1, r1, r0
	ldr r0, _0800ED68 @ =0x03005DF0
	adds r0, r3, r0
	movs r2, #0x80
	lsls r2, r2, #4
	subs r2, r2, r3
	bl QueueCopy
	ldr r4, _0800ED6C @ =0x03006330
	ldrh r0, [r4]
	cmp r0, #0
	beq _0800ED4E
	ldr r1, _0800ED70 @ =0x08052BDC
	movs r0, #0xe
	movs r2, #1
	bl LoadPalette
	strh r5, [r4]
_0800ED4E:
	ldr r1, _0800ED64 @ =0x03005DE0
	movs r0, #0x12
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED5C: .4byte 0x03006334
_0800ED60: .4byte REG_BG0CNT
_0800ED64: .4byte 0x03005DE0
_0800ED68: .4byte 0x03005DF0
_0800ED6C: .4byte 0x03006330
_0800ED70: .4byte 0x08052BDC

	thumb_func_start sub_0800ED74
sub_0800ED74: @ 0x0800ED74
	ldr r1, _0800ED7C @ =0x03006334
	movs r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800ED7C: .4byte 0x03006334

	thumb_func_start sub_0800ED80
sub_0800ED80: @ 0x0800ED80
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, #0
	beq _0800EDB2
	movs r4, #0xf0
	lsls r4, r4, #4
_0800ED92:
	adds r2, #1
	ldrh r0, [r1]
	subs r0, #1
	ands r0, r4
	lsrs r0, r0, #8
	cmp r0, #4
	bne _0800EDAA
	cmp r3, #0x2b
	bgt _0800EDA8
	cmp r3, #0x28
	bge _0800EDAA
_0800EDA8:
	adds r2, #1
_0800EDAA:
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, #0
	bne _0800ED92
_0800EDB2:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800EDBC
sub_0800EDBC: @ 0x0800EDBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	movs r1, #0xf
	add r0, sp, #0x10
	strb r1, [r0]
	b _0800EE30
_0800EDD6:
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r1, #0
	ands r0, r2
	ldr r1, _0800EE20 @ =0x03006340
	lsrs r0, r0, #6
	adds r0, r0, r1
	ldr r1, [r0]
	movs r3, #0xff
	ands r3, r2
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #8
	str r0, [sp, #8]
	ldr r0, [r1]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08003518
	ldrh r0, [r5]
	cmp r0, #0xfe
	bgt _0800EE24
	cmp r0, #0xfb
	blt _0800EE24
	adds r0, r4, #0
	adds r0, #8
	b _0800EE2A
	.align 2, 0
_0800EE20: .4byte 0x03006340
_0800EE24:
	ldr r0, _0800EE40 @ =0x03003CA0
	ldrh r0, [r0]
	adds r0, r4, r0
_0800EE2A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
_0800EE30:
	ldrh r2, [r5]
	cmp r2, #0
	bne _0800EDD6
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE40: .4byte 0x03003CA0

	thumb_func_start sub_0800EE44
sub_0800EE44: @ 0x0800EE44
	adds r1, r0, #0
	ldr r2, _0800EE54 @ =0x03005DE0
	ldrh r0, [r2]
	cmp r0, r1
	bls _0800EE50
	strh r1, [r2]
_0800EE50:
	bx lr
	.align 2, 0
_0800EE54: .4byte 0x03005DE0

	thumb_func_start sub_0800EE58
sub_0800EE58: @ 0x0800EE58
	push {r4, r5, r6, r7, lr}
	movs r0, #8
	bl sub_08002E18
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _0800EE7E
	movs r6, #0x80
	lsls r6, r6, #0xc
	ldr r7, _0800EE9C @ =0x03006340
_0800EE6E:
	adds r0, r4, #0
	orrs r0, r6
	bl GetDataRecord
	stm r7!, {r0}
	adds r4, #1
	cmp r4, r5
	blo _0800EE6E
_0800EE7E:
	ldr r0, _0800EE9C @ =0x03006340
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r0, #4]
	adds r1, r1, r2
	movs r0, #0x1f
	movs r2, #1
	bl LoadPalette
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE9C: .4byte 0x03006340

	thumb_func_start sub_0800EEA0
sub_0800EEA0: @ 0x0800EEA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0800EEE8 @ =gFadeFlags
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0800EEEC @ =gBgRegsBuffer
	mov sl, r0
_0800EEB4:
	movs r0, #0x64
	bl _08000400
	ldr r0, _0800EEE8 @ =gFadeFlags
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0800EF58
	ldr r2, _0800EEEC @ =gBgRegsBuffer
	adds r0, r2, #0
	adds r0, #0x40
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r0]
	ldr r1, _0800EEF0 @ =gFadeDirection
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800EEF4
	adds r0, r2, #0
	adds r0, #0x44
	strh r3, [r0]
	b _0800EEFC
	.align 2, 0
_0800EEE8: .4byte gFadeFlags
_0800EEEC: .4byte gBgRegsBuffer
_0800EEF0: .4byte gFadeDirection
_0800EEF4:
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0x10
	strh r0, [r1]
_0800EEFC:
	ldr r4, _0800EF48 @ =gFadeTimer
	ldr r5, _0800EF4C @ =gFadeDuration
	ldr r6, _0800EF50 @ =0x03001CA4
	ldr r0, _0800EF54 @ =gFadeDirection
	mov r8, r0
	mov sb, r4
_0800EF08:
	ldrh r0, [r4]
	lsls r0, r0, #4
	ldrh r1, [r5]
	bl __divsi3
	strh r0, [r6]
	ldr r1, _0800EF54 @ =gFadeDirection
	ldrh r0, [r1]
	ldrh r3, [r4]
	adds r2, r0, r3
	strh r2, [r4]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	ble _0800EF30
	ldrh r1, [r5]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800EFE8
_0800EF30:
	cmp r3, #0
	bge _0800EF40
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	bne _0800EFE8
_0800EF40:
	bl WaitFrame
	b _0800EF08
	.align 2, 0
_0800EF48: .4byte gFadeTimer
_0800EF4C: .4byte gFadeDuration
_0800EF50: .4byte 0x03001CA4
_0800EF54: .4byte gFadeDirection
_0800EF58:
	movs r3, #0x10
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0800EFFC
	ldr r1, _0800EF78 @ =gFadeDirection
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800EF7C
	mov r0, sl
	adds r0, #0x44
	strh r2, [r0]
	b _0800EF82
	.align 2, 0
_0800EF78: .4byte gFadeDirection
_0800EF7C:
	mov r0, sl
	adds r0, #0x44
	strh r3, [r0]
_0800EF82:
	ldr r5, _0800EFD8 @ =gBgRegsBuffer
	ldr r4, _0800EFDC @ =gFadeTimer
	ldr r6, _0800EFE0 @ =gFadeDuration
	adds r7, r5, #0
	adds r7, #0x44
	ldr r0, _0800EFE4 @ =gFadeDirection
	mov r8, r0
	mov sb, r4
_0800EF92:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xff
	strh r0, [r1]
	ldrh r0, [r4]
	lsls r0, r0, #4
	ldrh r1, [r6]
	bl __divsi3
	strh r0, [r7]
	ldr r1, _0800EFE4 @ =gFadeDirection
	ldrh r0, [r1]
	ldrh r3, [r4]
	adds r2, r0, r3
	strh r2, [r4]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	ble _0800EFC2
	ldrh r1, [r6]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800EFE8
_0800EFC2:
	cmp r3, #0
	bge _0800EFD2
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	bne _0800EFE8
_0800EFD2:
	bl WaitFrame
	b _0800EF92
	.align 2, 0
_0800EFD8: .4byte gBgRegsBuffer
_0800EFDC: .4byte gFadeTimer
_0800EFE0: .4byte gFadeDuration
_0800EFE4: .4byte gFadeDirection
_0800EFE8:
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	blt _0800EFF4
	b _0800F15A
_0800EFF4:
	movs r0, #0
	mov r4, sb
	strh r0, [r4]
	b _0800F15A
_0800EFFC:
	ldr r2, _0800F088 @ =gFadeDuration
	strh r3, [r2]
	ldr r3, _0800F08C @ =gFadeDirection
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _0800F0A0
	mov r0, sl
	strh r1, [r0, #0x3a]
	ldr r0, _0800F090 @ =0x00003F3F
	mov r1, sl
	strh r0, [r1, #0x38]
	ldr r7, _0800F094 @ =gFadeTimer
	mov sb, r2
	ldr r2, _0800F098 @ =gBgRegsBuffer
	mov r8, r2
_0800F01C:
	ldrh r4, [r7]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	mov r3, sb
	ldrh r5, [r3]
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r2, #8
	movs r0, #0xf0
	subs r0, r0, r2
	orrs r1, r0
	mov r4, r8
	strh r1, [r4, #0x30]
	lsls r1, r6, #8
	movs r0, #0xa0
	subs r0, r0, r6
	orrs r1, r0
	strh r1, [r4, #0x34]
	ldr r1, _0800F08C @ =gFadeDirection
	ldrh r0, [r1]
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
	mov r3, sb
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800F15A
	ldr r0, _0800F09C @ =gPaletteBuffer
	movs r4, #0
	strh r4, [r0]
	bl WaitFrame
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #1
	bl EnableDisplayLayers
	b _0800F01C
	.align 2, 0
_0800F088: .4byte gFadeDuration
_0800F08C: .4byte gFadeDirection
_0800F090: .4byte 0x00003F3F
_0800F094: .4byte gFadeTimer
_0800F098: .4byte gBgRegsBuffer
_0800F09C: .4byte gPaletteBuffer
_0800F0A0:
	movs r0, #0
	mov r1, sl
	strh r0, [r1, #0x3a]
	ldr r0, _0800F128 @ =0x00003F3F
	strh r0, [r1, #0x38]
	movs r0, #0
	ldr r1, _0800F12C @ =gFadeTimer
	strh r0, [r1]
	movs r0, #1
	ldr r2, _0800F130 @ =gFadeDirection
	strh r0, [r2]
	adds r7, r1, #0
	ldr r3, _0800F134 @ =gFadeDuration
	mov sb, r3
	ldr r4, _0800F138 @ =gBgRegsBuffer
	mov r8, r4
_0800F0C0:
	ldrh r4, [r7]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	mov r1, sb
	ldrh r5, [r1]
	adds r1, r5, #0
	bl __divsi3
	movs r1, #0x50
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	movs r1, #0x78
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r1, r2, #8
	movs r0, #0xf0
	subs r0, r0, r2
	orrs r1, r0
	mov r2, r8
	strh r1, [r2, #0x30]
	lsls r1, r6, #8
	movs r0, #0xa0
	subs r0, r0, r6
	orrs r1, r0
	strh r1, [r2, #0x34]
	ldr r3, _0800F130 @ =gFadeDirection
	ldrh r0, [r3]
	ldrh r4, [r7]
	adds r0, r0, r4
	strh r0, [r7]
	mov r2, sb
	ldrh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800F140
	ldr r0, _0800F13C @ =gPaletteBuffer
	movs r3, #0
	strh r3, [r0]
	bl WaitFrame
	b _0800F0C0
	.align 2, 0
_0800F128: .4byte 0x00003F3F
_0800F12C: .4byte gFadeTimer
_0800F130: .4byte gFadeDirection
_0800F134: .4byte gFadeDuration
_0800F138: .4byte gBgRegsBuffer
_0800F13C: .4byte gPaletteBuffer
_0800F140:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #1
	bl DisableDisplayLayers
	movs r4, #1
	rsbs r4, r4, #0
	adds r0, r4, #0
	ldr r1, _0800F16C @ =gFadeDirection
	strh r0, [r1]
	movs r2, #0
	strh r2, [r7]
_0800F15A:
	ldr r0, _0800F170 @ =gFadeFlags
	ldrh r1, [r0]
	movs r3, #0x17
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	b _0800EEB4
	.align 2, 0
_0800F16C: .4byte gFadeDirection
_0800F170: .4byte gFadeFlags

	thumb_func_start sub_0800F174
sub_0800F174: @ 0x0800F174
	push {r4, lr}
	ldr r1, _0800F1CC @ =gBgRegsBuffer
	adds r2, r1, #0
	adds r2, #0x40
	movs r4, #0
	movs r0, #0xbf
	strh r0, [r2]
	adds r1, #0x44
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0800F1D0 @ =0x0300001C
	strh r4, [r0]
	ldr r0, _0800F1D4 @ =gFadeDuration
	strh r4, [r0]
	ldr r0, _0800F1D8 @ =gFadeTimer
	strh r4, [r0]
	ldr r0, _0800F1DC @ =gFadeDirection
	strh r4, [r0]
	ldr r0, _0800F1E0 @ =gFadeFlags
	strh r4, [r0]
	bl CopyBgRegsBuffer
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r2, r0, #0
	ldr r0, _0800F1E4 @ =0x03000028
	ldr r1, _0800F1E8 @ =sub_0800EEA0
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #1
	str r1, [r0, #8]
	str r4, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F1CC: .4byte gBgRegsBuffer
_0800F1D0: .4byte 0x0300001C
_0800F1D4: .4byte gFadeDuration
_0800F1D8: .4byte gFadeTimer
_0800F1DC: .4byte gFadeDirection
_0800F1E0: .4byte gFadeFlags
_0800F1E4: .4byte 0x03000028
_0800F1E8: .4byte sub_0800EEA0
