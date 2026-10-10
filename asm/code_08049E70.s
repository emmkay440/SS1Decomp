	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08049E70
sub_08049E70: @ 0x08049E70
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _08049F30 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049F34 @ =0x00001E03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049F38 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x20
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08049F3C @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1f
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08049F40 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08049F5A
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08049F48
	ldr r1, _08049F44 @ =0x06004000
	b _08049F4C
	.align 2, 0
_08049F30: .4byte 0xFFFF0000
_08049F34: .4byte 0x00001E03
_08049F38: .4byte 0x00001F03
_08049F3C: .4byte 0x0600F800
_08049F40: .4byte 0x0600F000
_08049F44: .4byte 0x06004000
_08049F48:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08049F4C:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08049F6A
_08049F5A:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08049F6A:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _08049FA4 @ =0x03000850
	ldr r1, _08049FA8 @ =0x00100051
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _08049FAC @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #0x3c
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08049FA4: .4byte 0x03000850
_08049FA8: .4byte 0x00100051
_08049FAC: .4byte gBgRegsBuffer

	thumb_func_start sub_08049FB0
sub_08049FB0: @ 0x08049FB0
	push {r4, r5, r6, lr}
	ldr r5, _08049FF4 @ =gUnknown_0300083C
	movs r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #0
	beq _0804A000
	ldr r4, _08049FF8 @ =gUnknown_0300083A
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	ldrsb r1, [r5, r1]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r4]
	ldr r4, _08049FFC @ =gUnknown_0300083B
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	ldrsb r1, [r5, r1]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0804A008
	.align 2, 0
_08049FF4: .4byte gUnknown_0300083C
_08049FF8: .4byte gUnknown_0300083A
_08049FFC: .4byte gUnknown_0300083B
_0804A000:
	ldr r0, _0804A058 @ =gUnknown_0300083A
	strb r1, [r0]
	ldr r0, _0804A05C @ =gUnknown_0300083B
	strb r1, [r0]
_0804A008:
	ldr r4, _0804A060 @ =gBgRegsBuffer
	ldr r2, _0804A058 @ =gUnknown_0300083A
	movs r0, #0
	ldrsb r0, [r2, r0]
	rsbs r0, r0, #0
	strh r0, [r4, #8]
	ldr r5, _0804A05C @ =gUnknown_0300083B
	movs r0, #0
	ldrsb r0, [r5, r0]
	rsbs r0, r0, #0
	strh r0, [r4, #0xa]
	ldr r6, _0804A064 @ =gUnknown_0300083D
	ldrb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x1a
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	strh r1, [r4, #0xc]
	lsrs r0, r0, #0x19
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_08005F60
	ldrb r0, [r6]
	cmp r0, #0xf0
	bne _0804A068
	movs r0, #0
	b _0804A06A
	.align 2, 0
_0804A058: .4byte gUnknown_0300083A
_0804A05C: .4byte gUnknown_0300083B
_0804A060: .4byte gBgRegsBuffer
_0804A064: .4byte gUnknown_0300083D
_0804A068:
	adds r0, #1
_0804A06A:
	strb r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804A074
sub_0804A074: @ 0x0804A074
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r5, #0
_0804A096:
	bl sub_08049FB0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0804A096
	movs r0, #0x3a
	bl PlaySE
	movs r5, #0
_0804A0B6:
	bl sub_08049FB0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A0B6
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x6a
	bl PlaySE
	movs r5, #0
	ldr r7, _0804A1B4 @ =0x03000850
	ldr r6, _0804A1B8 @ =0x03000842
_0804A0EC:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	asrs r0, r0, #1
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r6, #2
	bl sub_08026C40
	bl sub_08049FB0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1d
	ble _0804A0EC
	movs r5, #0x1e
	ldr r0, _0804A1B4 @ =0x03000850
	mov r8, r0
	ldr r7, _0804A1B8 @ =0x03000842
_0804A13C:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #1
	adds r2, r2, r4
	asrs r2, r2, #1
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r1, #0
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0804A1BC @ =gUnknown_0300083A
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	subs r1, r1, r2
	ldr r0, _0804A1C0 @ =gUnknown_0300083B
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r4, r2
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	adds r2, r7, #0
	adds r3, r7, #2
	bl sub_08026C40
	lsls r6, r5, #0x10
	asrs r1, r6, #0x10
	movs r0, #0xfa
	lsls r0, r0, #5
	adds r2, r4, #0
	bl sub_0804A224
	movs r0, #0
	bl sub_0804A2EC
	bl sub_08049FB0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0xef
	ble _0804A13C
	adds r5, r6, #0
	adds r4, r2, #0
	b _0804A1DC
	.align 2, 0
_0804A1B4: .4byte 0x03000850
_0804A1B8: .4byte 0x03000842
_0804A1BC: .4byte gUnknown_0300083A
_0804A1C0: .4byte gUnknown_0300083B
_0804A1C4:
	ldr r0, _0804A220 @ =0x00007FBC
	asrs r1, r5, #0x10
	asrs r2, r4, #0x10
	bl sub_0804A224
	movs r0, #0
	bl sub_0804A2EC
	bl sub_08049FB0
	bl WaitFrame
_0804A1DC:
	bl sub_0804A468
	cmp r0, #0
	bne _0804A1C4
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
_0804A1EC:
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x2c
	bne _0804A1FA
	movs r0, #6
	bl sub_0800F3A0
_0804A1FA:
	bl sub_08049FB0
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A1EC
	movs r0, #0x6a
	bl StopSE
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A220: .4byte 0x00007FBC

	thumb_func_start sub_0804A224
sub_0804A224: @ 0x0804A224
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _0804A2DC @ =gUnknown_03000838
	ldrb r2, [r0]
	cmp r2, #0x3b
	bhi _0804A2D0
	movs r1, #0
	lsls r4, r3, #0x10
	cmp r2, #0
	beq _0804A262
	ldr r0, _0804A2E0 @ =gUnknown_0300084C
	ldr r3, [r0]
_0804A24E:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804A24E
_0804A262:
	bl Random
	ldr r6, _0804A2E4 @ =gUnknown_0300083E
	ldrh r1, [r6]
	adds r1, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	cmp r0, r4
	ble _0804A2D0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0804A2D0
	ldr r3, _0804A2DC @ =gUnknown_03000838
	ldrb r1, [r3]
	ldr r4, _0804A2E0 @ =gUnknown_0300084C
	ldr r2, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r5, #0
	movs r1, #2
	strb r1, [r0]
	ldrb r1, [r3]
	ldr r2, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0
	strh r7, [r0, #6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r1, r8
	strh r1, [r0, #8]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strb r4, [r0, #1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strh r5, [r6]
	ldr r1, _0804A2E8 @ =gUnknown_0300083C
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #0x22
	bl PlaySE
_0804A2D0:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A2DC: .4byte gUnknown_03000838
_0804A2E0: .4byte gUnknown_0300084C
_0804A2E4: .4byte gUnknown_0300083E
_0804A2E8: .4byte gUnknown_0300083C

	thumb_func_start sub_0804A2EC
sub_0804A2EC: @ 0x0804A2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0804A3E0 @ =gUnknown_0300084C
	ldr r6, [r0]
	movs r0, #0
	mov sl, r0
	ldr r1, _0804A3E4 @ =0x03000850
	mov r8, r1
	movs r2, #1
	mov sb, r2
_0804A308:
	ldrb r0, [r6]
	cmp r0, #2
	bne _0804A3BE
	ldrb r5, [r6, #1]
	lsls r4, r5, #1
	adds r4, r4, r5
	lsrs r4, r4, #4
	lsrs r5, r5, #2
	adds r2, r6, #2
	adds r3, r6, #4
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	bl sub_08026C40
	movs r1, #6
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	subs r1, #0x40
	subs r0, r0, r1
	ldr r2, _0804A3E8 @ =gUnknown_0300083A
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #8
	ldrsh r1, [r6, r3]
	adds r2, r5, #0
	subs r2, #0x1c
	adds r1, r1, r2
	ldr r3, _0804A3EC @ =gUnknown_0300083B
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r2, [r6, #2]
	mov ip, r2
	movs r7, #0
	str r7, [sp]
	ldr r3, _0804A3F0 @ =0x0300086C
	str r3, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	mov r2, sb
	str r2, [sp, #0x10]
	movs r2, #1
	mov r3, ip
	bl sub_08003FA4
	movs r3, #6
	ldrsh r0, [r6, r3]
	adds r4, #8
	subs r0, r0, r4
	ldr r4, _0804A3E8 @ =gUnknown_0300083A
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	movs r2, #8
	ldrsh r1, [r6, r2]
	subs r5, #0x40
	adds r1, r1, r5
	ldr r3, _0804A3EC @ =gUnknown_0300083B
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r3, [r6, #2]
	str r7, [sp]
	ldr r4, _0804A3F0 @ =0x0300086C
	str r4, [sp, #4]
	mov r4, r8
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	mov r2, sb
	str r2, [sp, #0x10]
	movs r2, #1
	bl sub_08003FA4
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _0804A3BE
	movs r0, #5
	strb r0, [r6]
	strb r7, [r6, #1]
_0804A3BE:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r6, #0xc
	cmp r0, #0x3b
	bls _0804A308
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A3E0: .4byte gUnknown_0300084C
_0804A3E4: .4byte 0x03000850
_0804A3E8: .4byte gUnknown_0300083A
_0804A3EC: .4byte gUnknown_0300083B
_0804A3F0: .4byte 0x0300086C
