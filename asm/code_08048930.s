	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08048930
sub_08048930: @ 0x08048930
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r6, #0
_0804893E:
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x3b
	bls _0804893E
	ldr r4, _08048A18 @ =0xFFC40000
_0804894E:
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048A1C @ =gUnknown_03000778
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r4, #4
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0x4f
	ble _0804894E
	movs r0, #5
	mov r8, r0
	movs r0, #0x68
	bl PlaySE
	movs r6, #0
_0804897E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r7, r5, #0x10
	asrs r4, r7, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048A1C @ =gUnknown_03000778
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	rsbs r4, r4, #0
	adds r4, #0x4e
	ldr r3, _08048A20 @ =gBgRegsBuffer
	strh r4, [r3, #0xe]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _0804897E
	movs r6, #0
	str r7, [sp, #8]
	movs r4, #0
_080489D2:
	cmp r6, #0x1e
	bne _080489DC
	movs r0, #0x66
	bl PlaySE
_080489DC:
	cmp r6, #0x50
	bne _080489E6
	movs r0, #0x66
	bl StopSE
_080489E6:
	adds r0, r6, #0
	subs r0, #0x1f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3a
	bhi _08048A42
	cmp r6, #0x3b
	bhi _08048A24
	str r4, [sp]
	adds r0, r6, #0
	subs r0, #0x1e
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _08048A42
	.align 2, 0
_08048A18: .4byte 0xFFC40000
_08048A1C: .4byte gUnknown_03000778
_08048A20: .4byte gBgRegsBuffer
_08048A24:
	str r4, [sp]
	movs r0, #0x5a
	subs r0, r0, r6
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
_08048A42:
	str r4, [sp]
	ldr r0, _08048BE4 @ =gUnknown_03000778
	movs r1, #0x78
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x77
	bls _080489D2
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x37
	bl PlaySE
	movs r0, #0x67
	bl PlaySE
	movs r6, #0
	ldr r0, _08048BE8 @ =0x00002710
	mov r8, r0
	ldr r7, _08048BEC @ =gBgRegsBuffer
_08048A98:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08048AD4
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	strh r1, [r7, #0xe]
	lsrs r3, r0, #0x18
	mov sl, r3
	asrs r0, r0, #0x18
	strh r0, [r7, #0xc]
_08048AD4:
	bl sub_08048BF0
	mov r0, sl
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	mov r1, sb
	lsls r4, r1, #0x18
	asrs r4, r4, #0x18
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	movs r1, #0x78
	subs r1, r1, r5
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	subs r2, r2, r4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048BE4 @ =gUnknown_03000778
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xb3
	bls _08048A98
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r6, #0
	ldr r0, _08048BE8 @ =0x00002710
	mov r8, r0
	ldr r7, _08048BEC @ =gBgRegsBuffer
_08048B32:
	cmp r6, #0x2c
	bne _08048B3C
	movs r0, #6
	bl sub_0800F3A0
_08048B3C:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08048B78
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	strh r1, [r7, #0xe]
	lsrs r3, r0, #0x18
	mov sl, r3
	asrs r0, r0, #0x18
	strh r0, [r7, #0xc]
_08048B78:
	bl sub_08048BF0
	mov r0, sl
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	mov r1, sb
	lsls r4, r1, #0x18
	asrs r4, r4, #0x18
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	movs r1, #0x78
	subs r1, r1, r5
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	subs r2, r2, r4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048BE4 @ =gUnknown_03000778
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x3b
	bls _08048B32
	movs r0, #0x37
	bl StopSE
	movs r0, #0x67
	bl StopSE
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048BE4: .4byte gUnknown_03000778
_08048BE8: .4byte 0x00002710
_08048BEC: .4byte gBgRegsBuffer
