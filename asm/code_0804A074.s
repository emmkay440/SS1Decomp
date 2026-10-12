	.include "asm/macros.inc"

	.syntax unified
	.text

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
	ldr r7, _0804A1B4 @ =gUnknown_03000850
	ldr r6, _0804A1B8 @ =gUnknown_03000842
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
	ldr r0, _0804A1B4 @ =gUnknown_03000850
	mov r8, r0
	ldr r7, _0804A1B8 @ =gUnknown_03000842
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
_0804A1B4: .4byte gUnknown_03000850
_0804A1B8: .4byte gUnknown_03000842
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
