	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801ECC4
sub_0801ECC4: @ 0x0801ECC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x158
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0801ED20 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x13c]
	ldr r1, _0801ED24 @ =0x00100044
	add r0, sp, #0x10
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	ldr r3, _0801ED28 @ =0x080FB0F8
	ldr r0, _0801ED2C @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x68
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r3, #0x10
	adds r1, r1, r3
	ldr r0, [r1]
	bl GetDataRecord
	adds r2, r0, #0
	ldr r0, [r2, #8]
	adds r1, r2, r0
	movs r0, #0
	mov sb, r0
	ldrh r3, [r2, #0xc]
	cmp sb, r3
	bhs _0801ED4E
	b _0801ED42
	.align 2, 0
_0801ED20: .4byte gPlayers
_0801ED24: .4byte 0x00100044
_0801ED28: .4byte 0x080FB0F8
_0801ED2C: .4byte gMapLayer_03003910
_0801ED30:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r1, #8
	ldrh r4, [r2, #0xc]
	cmp sb, r4
	bhs _0801ED4E
_0801ED42:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _0801ED30
	ldr r0, [r1, #4]
	adds r1, r1, r0
	str r1, [sp, #0x138]
_0801ED4E:
	ldr r1, _0801EE38 @ =gUnknown_030063D8
	ldr r0, [r1]
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0801ED8C
	adds r4, r1, #0
_0801ED60:
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801ED70
	b _0801F14C
_0801ED70:
	bl sub_080074CC
	cmp r0, #0
	beq _0801ED7A
	b _0801F14C
_0801ED7A:
	bl WaitFrame
	ldr r0, [r4]
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801ED60
_0801ED8C:
	movs r5, #0
	mov sb, r5
	mov r7, sp
	adds r7, #0x84
	str r7, [sp, #0x154]
	mov r0, sp
	adds r0, #0xa4
	str r0, [sp, #0x148]
	add r1, sp, #0xc4
	mov sl, r1
	mov r2, sp
	adds r2, #0xe4
	str r2, [sp, #0x14c]
	ldr r0, _0801EE38 @ =gUnknown_030063D8
	ldr r4, [r0]
	add r6, sp, #0x114
	adds r5, r4, #0
	adds r5, #0xc4
	mov r8, r7
_0801EDB2:
	mov r3, sb
	lsls r2, r3, #2
	mov r7, r8
	adds r1, r7, r2
	adds r0, r4, #0
	adds r0, #0xac
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #4
	ldr r3, [sp, #0x138]
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r7, [sp, #0x148]
	adds r1, r7, r2
	adds r0, r4, #0
	adds r0, #0xb4
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	ldr r3, [sp, #0x138]
	ldrh r3, [r3, #2]
	adds r0, r0, r3
	lsls r0, r0, #0xf
	str r0, [r1]
	mov r7, sl
	adds r3, r7, r2
	adds r0, r4, #0
	adds r0, #0xbc
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0xd
	str r0, [r3]
	ldr r0, [sp, #0x14c]
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	adds r2, r6, r2
	mov r1, sb
	adds r0, r5, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x46
	muls r0, r1, r0
	cmp r0, #0
	bge _0801EE20
	rsbs r0, r0, #0
_0801EE20:
	adds r0, #1
	str r0, [r2]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #7
	bls _0801EDB2
	bl GetMultiplayerId
	b _0801F12C
	.align 2, 0
_0801EE38: .4byte gUnknown_030063D8
_0801EE3C:
	bl sub_080075AC
	cmp r0, #0
	bne _0801EE5C
	bl sub_08007510
	cmp r0, #0
	bne _0801EE5C
	bl sub_08007544
	cmp r0, #0
	bne _0801EE5C
	bl sub_08007604
	cmp r0, #0
	beq _0801EE64
_0801EE5C:
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
_0801EE64:
	movs r2, #0
	mov sb, r2
	ldr r3, [sp, #0x13c]
	adds r3, #0xd0
	str r3, [sp, #0x150]
	movs r4, #0x9a
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x140]
	movs r5, #0x9b
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x144]
_0801EE7E:
	ldr r7, [sp, #0x150]
	ldr r3, [r7]
	ldrh r1, [r3]
	lsrs r1, r1, #4
	mov r0, sb
	lsls r2, r0, #2
	ldr r4, [sp, #0x154]
	adds r0, r4, r2
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	adds r7, r2, #0
	cmp r1, #0
	bge _0801EE9C
	rsbs r1, r1, #0
_0801EE9C:
	cmp r1, #0xf
	bgt _0801EEFC
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r5, [sp, #0x148]
	adds r1, r5, r7
	ldr r1, [r1]
	asrs r1, r1, #0xc
	subs r0, r0, r1
	cmp r0, #0
	bge _0801EEB6
	rsbs r0, r0, #0
_0801EEB6:
	cmp r0, #0xf
	bgt _0801EEFC
	mov r1, sl
	adds r0, r1, r7
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r0, #0xf
	bgt _0801EEFC
	ldr r3, [sp, #0x13c]
	adds r3, #0x98
	add r0, sp, #0x104
	mov r2, sb
	lsls r1, r2, #1
	adds r2, r0, r1
	ldr r0, [r3]
	ldrh r4, [r2]
	cmp r0, r4
	beq _0801EEFC
	ldr r5, [sp, #0x13c]
	ldrh r0, [r5, #0xc]
	cmp r0, #7
	beq _0801EEFC
	cmp r0, #8
	beq _0801EEFC
	cmp r0, #9
	beq _0801EEFC
	movs r0, #7
	strh r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x54
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r1]
	ldrh r0, [r2]
	str r0, [r3]
_0801EEFC:
	add r0, sp, #0x114
	adds r1, r0, r7
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _0801EF0E
	movs r0, #0
	str r0, [r1]
_0801EF0E:
	ldr r0, [r1]
	cmp r0, #0
	bne _0801EFDE
	ldr r0, [sp, #0x154]
	adds r2, r0, r7
	ldr r4, _0801EF98 @ =0x080FB5D0
	ldr r0, [r4, #8]
	movs r3, #0x64
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #0x148]
	adds r2, r1, r7
	ldr r0, [r4, #0xc]
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	mov r2, sl
	adds r3, r2, r7
	ldr r4, [sp, #0x14c]
	adds r2, r4, r7
	ldr r0, [r3]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2]
	ldr r5, _0801EF9C @ =0xFFFFFF00
	adds r0, r0, r5
	str r0, [r2]
	ldr r0, [r3]
	cmp r0, #0
	bge _0801EFDE
	ldr r0, _0801EFA0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xbc
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _0801EFAA
	bl sub_080075AC
	cmp r0, #0
	bne _0801EFA4
	bl sub_08007510
	cmp r0, #0
	bne _0801EFA4
	bl sub_08007544
	cmp r0, #0
	bne _0801EFA4
	bl sub_08007604
	cmp r0, #0
	bne _0801EFA4
	movs r0, #0x6a
	bl PlaySE
	movs r0, #0
	movs r1, #5
	bl sub_08005F60
	b _0801EFAA
	.align 2, 0
_0801EF98: .4byte 0x080FB5D0
_0801EF9C: .4byte 0xFFFFFF00
_0801EFA0: .4byte gUnknown_030063D8
_0801EFA4:
	movs r0, #0x6a
	bl StopSE
_0801EFAA:
	mov r0, sl
	adds r1, r0, r7
	movs r0, #0
	str r0, [r1]
	ldr r1, [sp, #0x14c]
	adds r2, r1, r7
	ldr r0, _0801F15C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0xbc
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #3
	ble _0801EFCE
	movs r1, #0x80
	lsls r1, r1, #6
_0801EFCE:
	str r1, [r2]
	add r1, sp, #0x104
	mov r2, sb
	lsls r0, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0801EFDE:
	adds r3, r7, #0
	ldr r4, [sp, #0x154]
	adds r6, r4, r3
	ldr r0, [r6]
	cmp r0, #0
	bge _0801F040
	ldr r0, _0801F15C @ =gUnknown_030063D8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0xac
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #4
	ldr r5, [sp, #0x138]
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0xf
	str r0, [r6]
	ldr r0, [sp, #0x148]
	adds r1, r0, r3
	adds r0, r2, #0
	adds r0, #0xb4
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	ldr r4, [sp, #0x138]
	ldrh r4, [r4, #2]
	adds r0, r0, r4
	lsls r0, r0, #0xf
	str r0, [r1]
	mov r5, sl
	adds r1, r5, r3
	adds r0, r2, #0
	adds r0, #0xbc
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xa
	lsls r0, r0, #0xc
	str r0, [r1]
	ldr r0, [sp, #0x14c]
	adds r1, r0, r3
	movs r0, #0
	str r0, [r1]
_0801F040:
	bl sub_080075AC
	cmp r0, #0
	bne _0801F118
	bl sub_08007510
	cmp r0, #0
	bne _0801F118
	bl sub_08007544
	cmp r0, #0
	bne _0801F118
	bl sub_08007604
	adds r5, r0, #0
	cmp r5, #0
	bne _0801F118
	add r0, sp, #0x10
	bl sub_08026B74
	ldr r0, [r6]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x148]
	adds r4, r1, r7
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x10
	str r2, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x140]
	ldr r3, [sp, #0x144]
	bl sub_08005FC4
	ldr r0, [r6]
	ldr r1, [r4]
	movs r2, #0
	bl sub_08006008
	mov r8, r0
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	add r6, sp, #0x44
	adds r6, r6, r7
	add r4, sp, #0x64
	adds r4, r4, r7
	movs r5, #1
	str r5, [sp]
	add r0, sp, #0x10
	movs r1, #1
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08026C40
	adds r2, r6, #2
	adds r4, #2
	str r5, [sp]
	add r0, sp, #0x10
	movs r1, #2
	adds r3, r4, #0
	bl sub_08026C40
	ldr r3, [sp, #0x140]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r5, [sp, #0x144]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sl
	adds r2, r3, r7
	ldr r2, [r2]
	asrs r2, r2, #0xc
	subs r1, r1, r2
	ldrh r3, [r6]
	mov r4, r8
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	ldr r5, [sp, #0x140]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x144]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sp
	adds r2, #0x46
	adds r2, r2, r7
	ldrh r3, [r2]
	movs r2, #3
	str r2, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08004344
_0801F118:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #7
	bhi _0801F128
	b _0801EE7E
_0801F128:
	bl WaitFrame
_0801F12C:
	bl sub_080074CC
	cmp r0, #0
	bne _0801F146
	ldr r0, _0801F15C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801F146
	b _0801EE3C
_0801F146:
	movs r0, #0x6a
	bl StopSE
_0801F14C:
	add sp, #0x158
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F15C: .4byte gUnknown_030063D8
