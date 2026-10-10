	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804C37C
sub_0804C37C: @ 0x0804C37C
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
	ldr r1, _0804C43C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804C440 @ =0x00001E43
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804C444 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x1b
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804C448 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1c
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804C44C @ =0x0600F000
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
	beq _0804C466
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804C454
	ldr r1, _0804C450 @ =0x06004000
	b _0804C458
	.align 2, 0
_0804C43C: .4byte 0xFFFF0000
_0804C440: .4byte 0x00001E43
_0804C444: .4byte 0x00001F03
_0804C448: .4byte 0x0600F800
_0804C44C: .4byte 0x0600F000
_0804C450: .4byte 0x06004000
_0804C454:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804C458:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804C476
_0804C466:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804C476:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804C4A8 @ =0x030009A0
	ldr r1, _0804C4AC @ =0x00100050
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C4A8: .4byte 0x030009A0
_0804C4AC: .4byte 0x00100050

	thumb_func_start sub_0804C4B0
sub_0804C4B0: @ 0x0804C4B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r7, _0804C50C @ =gUnknown_03000998
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	ldr r6, _0804C510 @ =gBgRegsBuffer
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #4
	strh r1, [r6, #0xa]
	lsls r0, r0, #2
	strh r0, [r6, #0xe]
	ldr r0, _0804C514 @ =0x0805289C
	mov r8, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r6, #8]
	strh r0, [r6, #0xc]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0x3b
	bgt _0804C518
	ldrh r0, [r7]
	adds r0, #1
	b _0804C53A
	.align 2, 0
_0804C50C: .4byte gUnknown_03000998
_0804C510: .4byte gBgRegsBuffer
_0804C514: .4byte 0x0805289C
_0804C518:
	cmp r5, #0x77
	bgt _0804C522
	ldrh r0, [r7]
	adds r0, #2
	b _0804C53A
_0804C522:
	cmp r5, #0xb3
	bgt _0804C52C
	ldrh r0, [r7]
	adds r0, #4
	b _0804C53A
_0804C52C:
	cmp r5, #0xef
	bgt _0804C536
	ldrh r0, [r7]
	adds r0, #6
	b _0804C53A
_0804C536:
	ldrh r0, [r7]
	adds r0, #8
_0804C53A:
	strh r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804C548
sub_0804C548: @ 0x0804C548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	ldr r1, _0804C7A0 @ =gBgRegsBuffer
	ldr r0, _0804C7A4 @ =0x0000FFF8
	strh r0, [r1, #8]
	strh r0, [r1, #0xc]
	movs r0, #0x37
	bl PlaySE
	movs r5, #0
_0804C58C:
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C58C
	movs r5, #0
_0804C5AA:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, #0
	subs r2, #0x40
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804C7A8 @ =0x030009A0
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x8f
	ble _0804C5AA
	movs r0, #0x68
	bl PlaySE
	movs r5, #0
_0804C5E0:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0804C7A8 @ =0x030009A0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C5E0
	movs r0, #0x7f
	bl PlaySE
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	movs r5, #0
	ldr r6, _0804C7A8 @ =0x030009A0
	ldr r0, _0804C7AC @ =gUnknown_0300099A
	mov sl, r0
	movs r1, #1
	mov sb, r1
_0804C630:
	lsls r3, r5, #0x10
	asrs r4, r3, #0x10
	asrs r3, r3, #0x13
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r7, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	bl sub_080044E4
	movs r2, #0
	str r2, [sp]
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #1
	mov r2, sl
	ldr r3, _0804C7B0 @ =gUnknown_0300099C
	bl sub_08026C40
	mov r1, sl
	ldrh r3, [r1]
	movs r2, #0
	str r2, [sp]
	movs r0, #0x1c
	adds r0, r0, r6
	mov r8, r0
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	str r0, [sp, #8]
	ldr r0, [r6]
	str r0, [sp, #0xc]
	mov r1, sb
	str r1, [sp, #0x10]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #1
	bl sub_08003FA4
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x7f
	ble _0804C630
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	movs r5, #0
	mov r4, r8
	subs r4, #0x1c
	mov r8, r5
	ldr r7, _0804C7AC @ =gUnknown_0300099A
	movs r6, #1
_0804C6C4:
	mov r2, r8
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r7, #0
	ldr r3, _0804C7B0 @ =gUnknown_0300099C
	bl sub_08026C40
	ldrh r3, [r7]
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #1
	bl sub_08003FA4
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804C6C4
	ldr r0, _0804C7AC @ =gUnknown_0300099A
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0804C7B0 @ =gUnknown_0300099C
	strh r1, [r0]
	movs r2, #0
	mov r8, r2
	movs r5, #0
_0804C72E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	add r1, sp
	adds r1, #0x14
	strh r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0804C72E
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	movs r5, #0
_0804C75A:
	ldr r4, _0804C7A8 @ =0x030009A0
	ldr r2, _0804C7AC @ =gUnknown_0300099A
	ldr r3, _0804C7B0 @ =gUnknown_0300099C
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08026C40
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	movs r1, #6
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r4, #0
	cmp r0, #5
	bls _0804C794
	b _0804C8A8
_0804C794:
	lsls r0, r0, #2
	ldr r1, _0804C7B4 @ =_0804C7B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804C7A0: .4byte gBgRegsBuffer
_0804C7A4: .4byte 0x0000FFF8
_0804C7A8: .4byte 0x030009A0
_0804C7AC: .4byte gUnknown_0300099A
_0804C7B0: .4byte gUnknown_0300099C
_0804C7B4: .4byte _0804C7B8
_0804C7B8: @ jump table
	.4byte _0804C7D0 @ case 0
	.4byte _0804C7DE @ case 1
	.4byte _0804C7F2 @ case 2
	.4byte _0804C828 @ case 3
	.4byte _0804C83E @ case 4
	.4byte _0804C87C @ case 5
_0804C7D0:
	add r0, sp, #0x14
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x78
	add r1, sp, #0x14
	ldrh r2, [r1]
	b _0804C84C
_0804C7DE:
	add r0, sp, #0x14
	movs r2, #2
	ldrsh r0, [r0, r2]
	adds r0, #0x78
	add r1, sp, #0x14
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #0x50
	b _0804C854
_0804C7F2:
	add r0, sp, #0x14
	movs r2, #4
	ldrsh r1, [r0, r2]
	adds r1, #0x50
	ldr r0, _0804C820 @ =gUnknown_0300099A
	ldrh r3, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r2, _0804C824 @ =0x030009BC
	str r2, [sp, #4]
	subs r2, #0x1c
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x78
	movs r2, #1
	bl sub_08003FA4
	b _0804C8A8
	.align 2, 0
_0804C820: .4byte gUnknown_0300099A
_0804C824: .4byte 0x030009BC
_0804C828:
	add r0, sp, #0x14
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r0, #0x78
	subs r0, r0, r1
	add r1, sp, #0x14
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #0x50
	b _0804C854
_0804C83E:
	add r0, sp, #0x14
	movs r2, #8
	ldrsh r1, [r0, r2]
	movs r0, #0x78
	subs r0, r0, r1
	add r1, sp, #0x14
	ldrh r2, [r1, #8]
_0804C84C:
	lsls r2, r2, #0x10
	asrs r2, r2, #0x11
	movs r1, #0x50
	subs r1, r1, r2
_0804C854:
	ldr r2, _0804C874 @ =gUnknown_0300099A
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	ldr r4, _0804C878 @ =0x030009BC
	str r4, [sp, #4]
	subs r4, #0x1c
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	bl sub_08003FA4
	b _0804C8A8
	.align 2, 0
_0804C874: .4byte gUnknown_0300099A
_0804C878: .4byte 0x030009BC
_0804C87C:
	add r0, sp, #0x14
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	movs r1, #0x50
	subs r1, r1, r0
	ldr r0, _0804C8C0 @ =gUnknown_0300099A
	ldrh r3, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r2, _0804C8C4 @ =0x030009BC
	str r2, [sp, #4]
	subs r2, #0x1c
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x78
	movs r2, #1
	bl sub_08003FA4
_0804C8A8:
	asrs r0, r7, #0x10
	cmp r0, #0xc7
	bgt _0804C8C8
	lsls r0, r6, #0x10
	asrs r0, r0, #0xf
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x14
	ldrh r0, [r1]
	adds r0, #1
	b _0804C8D6
	.align 2, 0
_0804C8C0: .4byte gUnknown_0300099A
_0804C8C4: .4byte 0x030009BC
_0804C8C8:
	lsls r0, r6, #0x10
	asrs r0, r0, #0xf
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x14
	ldrh r0, [r1]
	adds r0, #3
_0804C8D6:
	strh r0, [r1]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r5, r0
	ble _0804C902
	ldr r2, _0804C998 @ =0xFFFFFED4
	adds r0, r5, r2
	asrs r0, r0, #3
	movs r3, #8
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	bl sub_080044E4
_0804C902:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804C4B0
	bl WaitFrame
	adds r1, r5, #1
	lsls r1, r1, #0x10
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r5, r1, #0x10
	ldr r0, _0804C99C @ =0x01670000
	cmp r1, r0
	bgt _0804C92A
	b _0804C75A
_0804C92A:
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r5, #0
	lsls r6, r4, #0x10
_0804C944:
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x2c
	bne _0804C952
	movs r0, #6
	bl sub_0800F3A0
_0804C952:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804C9A0 @ =0x030009A0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	asrs r0, r6, #0x10
	movs r1, #0xb4
	lsls r1, r1, #1
	bl sub_0804C4B0
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C944
	movs r0, #0x37
	bl StopSE
	movs r0, #0x7f
	bl StopSE
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C998: .4byte 0xFFFFFED4
_0804C99C: .4byte 0x01670000
_0804C9A0: .4byte 0x030009A0
