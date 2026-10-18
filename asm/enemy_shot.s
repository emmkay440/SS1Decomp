	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08039B3C
sub_08039B3C: @ 0x08039B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	mov sb, r0
	str r1, [sp, #0x54]
	add r6, sp, #0x44
	ldr r1, _08039BB8 @ =0x08054954
	adds r0, r6, #0
	movs r2, #6
	bl memcpy
	mov r0, sb
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #7
	strb r0, [r1, #0x1e]
	mov r0, sb
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x58]
	mov r1, sb
	ldr r1, [r1, #0x14]
	mov sl, r1
	movs r0, #0
	mov r5, sp
	adds r5, #0x4e
	strh r0, [r5]
	add r4, sp, #0x4c
	strh r0, [r4]
	movs r2, #0xb4
	str r2, [sp, #0x5c]
	bl sub_08007544
	cmp r0, #0
	bne _08039BAA
	bl sub_080075AC
	cmp r0, #0
	bne _08039BAA
	movs r0, #0x56
	bl PlaySE
_08039BAA:
	ldr r3, [sp, #0x5c]
	lsls r0, r3, #0x10
	ldr r4, _08039BBC @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r1, r0, #0x10
	str r1, [sp, #0x5c]
	b _08039E96
	.align 2, 0
_08039BB8: .4byte 0x08054954
_08039BBC: .4byte 0xFFFF0000
_08039BC0:
	bl sub_080076A8
	cmp r0, #0
	beq _08039BF8
	ldr r2, [sp, #0x54]
	lsls r0, r2, #1
	add r0, sp
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08039BF4 @ =0x0805289C
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #5
	ldr r2, [sp, #0x58]
	adds r2, r2, r0
	str r2, [sp, #0x58]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #5
	b _08039C2C
	.align 2, 0
_08039BF4: .4byte 0x0805289C
_08039BF8:
	ldr r4, [sp, #0x54]
	lsls r0, r4, #1
	add r0, sp
	adds r0, #0x44
	ldrh r2, [r0]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08039D70 @ =0x0805289C
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, [sp, #0x58]
	adds r4, r4, r0
	str r4, [sp, #0x58]
	lsls r2, r2, #1
	ldr r0, _08039D70 @ =0x0805289C
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
_08039C2C:
	add sl, r0
	bl GetMultiplayerId
	ldr r4, [sp, #0x58]
	asrs r6, r4, #0xc
	ldr r7, _08039D74 @ =gPlayers
	movs r1, #0xd4
	mov r8, r1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r3, sl
	asrs r5, r3, #0xc
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x60]
	str r5, [sp, #0x64]
	cmp r0, #0
	beq _08039C8A
	b _08039DDA
_08039C8A:
	cmp r4, #0x18
	bls _08039C90
	b _08039DDA
_08039C90:
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	bne _08039CB2
	b _08039DDA
_08039CB2:
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	bne _08039CBA
	b _08039DDA
_08039CBA:
	bl sub_08007544
	cmp r0, #0
	beq _08039CC4
	b _08039DDA
_08039CC4:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08039CD8
	b _08039DDA
_08039CD8:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	movs r6, #0
	movs r0, #7
	strh r0, [r1, #0xc]
	bl GetMultiplayerId
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _08039D78 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	mov r0, sb
	bl CalcDamageToPlayer
	mov r1, r8
	muls r1, r4, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	bl GetMultiplayerId
	mov r4, sb
	ldrh r1, [r4]
	lsls r1, r1, #2
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r4, #0x2c]
	str r0, [r1]
	movs r5, #0
	movs r0, #0x73
	bl PlaySE
	bl sub_080076A8
	cmp r0, #0
	beq _08039D80
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	ldr r0, _08039D7C @ =0x000005DC
	b _08039DA8
	.align 2, 0
_08039D70: .4byte 0x0805289C
_08039D74: .4byte gPlayers
_08039D78: .4byte 0x0000FFFE
_08039D7C: .4byte 0x000005DC
_08039D80:
	bl GetMultiplayerId
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #2
_08039DA8:
	strh r0, [r1]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl Random
	ldr r3, _08039EBC @ =gPlayers
	lsls r2, r5, #1
	movs r1, #0xd4
	muls r1, r4, r1
	adds r2, r2, r1
	adds r3, #0x24
	adds r4, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08039DCC
	rsbs r0, r0, #0
_08039DCC:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_08039DDA:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #8
	add r2, sp, #0x4c
	mov r3, sp
	adds r3, #0x4e
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _08039E5E
	bl sub_080271D0
	cmp r0, #0
	bne _08039E5E
	bl sub_08007544
	cmp r0, #0
	bne _08039E5E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08039E5E
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x64]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x50
	mov r5, sp
	adds r5, #0x52
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	movs r2, #0
	bl sub_08006008
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r3, #0
	ldrsh r1, [r5, r3]
	add r4, sp, #0x4c
	ldrh r3, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #8
	bl sub_08004344
_08039E5E:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08039EA2
	bl sub_080074CC
	cmp r0, #0
	bne _08039EA2
	ldr r0, _08039EC0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039EA2
	bl sub_08007578
	cmp r0, #0
	bne _08039EA2
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #0x10
	ldr r2, _08039EC4 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x5c]
_08039E96:
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08039EA2
	b _08039BC0
_08039EA2:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039EBC: .4byte gPlayers
_08039EC0: .4byte gUnknown_030063D8
_08039EC4: .4byte 0xFFFF0000
