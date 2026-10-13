	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804BD48
sub_0804BD48: @ 0x0804BD48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	ldr r1, _0804BE68 @ =gBgRegsBuffer
	strh r4, [r1, #4]
	ldr r0, _0804BE6C @ =0x0000FF60
	strh r0, [r1, #6]
	movs r0, #0x7c
	bl PlaySE
	movs r7, #0
_0804BD8E:
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804BD8E
	movs r0, #0x7d
	bl PlaySE
	movs r7, #0
	ldr r4, _0804BE68 @ =gBgRegsBuffer
_0804BDB0:
	ldrh r0, [r4, #6]
	adds r0, #2
	strh r0, [r4, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _0804BDB0
	movs r0, #0
	mov r8, r0
	ldr r1, _0804BE68 @ =gBgRegsBuffer
	ldrh r0, [r1, #6]
	movs r7, #0
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r6, _0804BE70 @ =0x0805289C
	mov sl, r0
_0804BDE2:
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r5, r0
	asrs r0, r0, #4
	mov r1, sb
	strh r0, [r1, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804BDE2
	movs r0, #0x6c
	bl PlaySE
	movs r7, #0
	ldr r0, _0804BE68 @ =gBgRegsBuffer
	mov sb, r0
	mov r1, sl
	asrs r5, r1, #0x10
	ldr r6, _0804BE70 @ =0x0805289C
_0804BE34:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	ldr r2, _0804BE74 @ =0xFFE10000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	cmp r0, #0x3a
	bhi _0804BE98
	cmp r1, #0x3b
	bgt _0804BE78
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	subs r0, #0x1e
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _0804BE98
	.align 2, 0
_0804BE68: .4byte gBgRegsBuffer
_0804BE6C: .4byte 0x0000FF60
_0804BE70: .4byte 0x0805289C
_0804BE74: .4byte 0xFFE10000
_0804BE78:
	movs r0, #0
	str r0, [sp]
	movs r0, #0x5a
	subs r0, r0, r1
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
_0804BE98:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r5, r0
	asrs r0, r0, #4
	mov r2, sb
	strh r0, [r2, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _0804BE34
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r7, #0
	ldr r2, _0804BFC8 @ =gBgRegsBuffer
	mov sb, r2
	mov r0, sl
	asrs r5, r0, #0x10
	ldr r6, _0804BFCC @ =0x0805289C
_0804BEF4:
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r5, r0
	asrs r0, r0, #4
	mov r1, sb
	strh r0, [r1, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804BEF4
	ldr r1, _0804BFD0 @ =gUnknown_03000954
	ldr r5, _0804BFC8 @ =gBgRegsBuffer
	ldrh r0, [r5, #4]
	strh r0, [r1]
	movs r0, #0x10
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	ldr r0, _0804BFD4 @ =gUnknown_03000958
	strh r4, [r0]
	ldr r0, _0804BFD8 @ =gUnknown_0300095A
	strh r4, [r0]
	movs r0, #0x7e
	bl PlaySE
	movs r7, #0
	mov sb, r5
_0804BF60:
	mov r0, r8
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	ldr r1, _0804BFCC @ =0x0805289C
	adds r0, r0, r1
	ldrh r4, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x14
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_0804C0A8
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_0804C0A8
	bl sub_0804C238
	mov r2, sl
	asrs r6, r2, #0x10
	adds r4, r6, r4
	mov r0, sb
	strh r4, [r0, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r5, #2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd1
	ble _0804BF60
	movs r0, #0x7e
	bl StopSE
	ldr r7, _0804BFC8 @ =gBgRegsBuffer
	adds r4, r6, #0
	ldr r5, _0804BFCC @ =0x0805289C
	b _0804C012
	.align 2, 0
_0804BFC8: .4byte gBgRegsBuffer
_0804BFCC: .4byte 0x0805289C
_0804BFD0: .4byte gUnknown_03000954
_0804BFD4: .4byte gUnknown_03000958
_0804BFD8: .4byte gUnknown_0300095A
_0804BFDC:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_0804C238
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	asrs r0, r0, #4
	strh r0, [r7, #6]
	bl sub_0804BD0C
	bl WaitFrame
_0804C012:
	bl sub_0804C34C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0804BFDC
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r7, #0
	mov r2, sl
	asrs r6, r2, #0x10
	ldr r0, _0804C0A0 @ =0x0805289C
	mov sb, r0
_0804C03E:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x2c
	bne _0804C04C
	movs r0, #6
	bl sub_0800F3A0
_0804C04C:
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r6, r0
	asrs r0, r0, #4
	ldr r1, _0804C0A4 @ =gBgRegsBuffer
	strh r0, [r1, #6]
	bl sub_0804BD0C
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C03E
	movs r0, #0x7c
	bl StopSE
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C0A0: .4byte 0x0805289C
_0804C0A4: .4byte gBgRegsBuffer
