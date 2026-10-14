	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804F31C
sub_0804F31C: @ 0x0804F31C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r3, r0, #0
	movs r2, #0
	ldr r1, _0804F354 @ =gUnknown_030013A8
	ldr r0, _0804F358 @ =gUnknown_03001398
	movs r5, #3
_0804F32E:
	strh r2, [r0]
	strh r2, [r1]
	adds r1, #2
	adds r0, #2
	subs r5, #1
	cmp r5, #0
	bge _0804F32E
	cmp r3, #0
	beq _0804F342
	b _0804F758
_0804F342:
	ldr r0, _0804F35C @ =gUnknown_03001400
	str r3, [r0]
	movs r0, #0x78
	bl sub_0800F348
	movs r0, #0xa4
	bl PlaySE
	b _0804F364
	.align 2, 0
_0804F354: .4byte gUnknown_030013A8
_0804F358: .4byte gUnknown_03001398
_0804F35C: .4byte gUnknown_03001400
_0804F360:
	bl WaitFrame
_0804F364:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F360
	movs r5, #0x77
_0804F36E:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F36E
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	movs r7, #0xb4
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r6, #0
_0804F392:
	cmp r4, #0x3f
	bgt _0804F3A2
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3A2:
	cmp r4, #0x74
	ble _0804F3B4
	subs r1, r7, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3B4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r6, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F3D2
	b _0804F910
_0804F3D2:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0xb4
	blt _0804F392
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0x80
	lsls r7, r7, #9
_0804F3EA:
	cmp r4, #0x3f
	bgt _0804F3FA
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3FA:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F410
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F410:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F42E
	b _0804F910
_0804F42E:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F3EA
	movs r6, #0x96
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0x80
	lsls r7, r7, #0xa
_0804F446:
	cmp r4, #0x3f
	bgt _0804F456
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F456:
	cmp r4, #0xec
	ble _0804F468
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F468:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F486
	b _0804F910
_0804F486:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F446
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xc0
	lsls r7, r7, #0xa
_0804F49E:
	cmp r4, #0x3f
	bgt _0804F4AE
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F4AE:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F4C4
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F4C4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F4E2
	b _0804F910
_0804F4E2:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F49E
	movs r4, #0
_0804F4EE:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F4FC
	b _0804F910
_0804F4FC:
	bl WaitFrame
	adds r4, #1

_0804F502:
	cmp r4, #0x3c
	blt _0804F4EE
	movs r7, #0xb4
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r6, #0x80
	lsls r6, r6, #0xb
_0804F512:
	cmp r4, #0x3f
	bgt _0804F522
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F522:
	cmp r4, #0x74
	ble _0804F534
	subs r1, r7, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F534:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r6, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F552
	b _0804F910
_0804F552:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0xb4
	blt _0804F512
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xa0
	lsls r7, r7, #0xb
_0804F56A:
	cmp r4, #0x3f
	bgt _0804F57A
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F57A:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F590
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F590:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F5AE
	b _0804F910
_0804F5AE:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F56A
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xc0
	lsls r7, r7, #0xb
_0804F5C6:
	cmp r4, #0x3f
	bgt _0804F5D6
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F5D6:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F5EC
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F5EC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F60A
	b _0804F910
_0804F60A:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F5C6
	movs r6, #0x96
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xe0
	lsls r7, r7, #0xb
_0804F622:
	cmp r4, #0x3f
	bgt _0804F632
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F632:
	cmp r4, #0xec
	ble _0804F644
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F644:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F662
	b _0804F910
_0804F662:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F622
	movs r4, #0
_0804F66E:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F67C
	b _0804F910
_0804F67C:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x5a
	blt _0804F66E
	movs r0, #0x78
	bl sub_0800F3DC
	b _0804F69C
	.align 2, 0
_0804F690: .4byte gUnknown_03001258
_0804F694:
	bl sub_0804F0E8
	bl WaitFrame
_0804F69C:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F694
	movs r5, #0x3b
_0804F6A6:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F6A6
	movs r0, #1
	bl sub_0804ED80
	movs r0, #0x78
	bl sub_0800F348
	b _0804F6C2
_0804F6BE:
	bl WaitFrame
_0804F6C2:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F6BE
	movs r5, #0x13
_0804F6CC:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F6CC
	movs r4, #0xa5
	lsls r4, r4, #2
	movs r5, #0
_0804F6DC:
	cmp r5, #0x3f
	bgt _0804F6EC
	lsls r1, r5, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804F6EC:
	bl sub_080076A8
	cmp r0, #0

_0804F6F2:
	beq _0804F70C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F708 @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x93
	movs r3, #8
	bl sub_08026B90
	b _0804F71A
	.align 2, 0
_0804F708: .4byte gUnknown_03001258
_0804F70C:
	str r0, [sp]
	ldr r0, _0804F73C @ =gUnknown_03001258
	movs r1, #0x78
	movs r2, #0x93
	movs r3, #9
	bl sub_08026B90
_0804F71A:
	adds r0, r4, #0
	subs r0, #0xf0
	cmp r5, r0
	bne _0804F72E
	movs r0, #0xf0
	bl sub_0800F3DC
	movs r0, #8
	bl FadeOutAllMusicPlayers
_0804F72E:
	bl WaitFrame
	adds r5, #1
	cmp r5, r4
	blt _0804F6DC
	b _0804F744
	.align 2, 0
_0804F73C: .4byte gUnknown_03001258
_0804F740:
	bl WaitFrame
_0804F744:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F740
	movs r5, #0xb3
_0804F74E:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F74E
_0804F758:
	movs r0, #0xa5
	bl PlaySE
	movs r0, #2
	bl sub_0804ED80
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
	movs r6, #0x96
	lsls r6, r6, #1
	ldr r4, _0804F8EC @ =0x00000167
_0804F772:
	cmp r5, r6
	bne _0804F77C
	movs r0, #0x3c
	bl sub_0800F3DC
_0804F77C:
	bl WaitFrame
	adds r5, #1
	cmp r5, r4
	ble _0804F772
	movs r5, #0
	movs r7, #0
	add r0, sp, #4
	mov r8, r0
	ldr r6, _0804F8F0 @ =gUnknown_03001398
	ldr r4, _0804F8F4 @ =gUnknown_030013A8
_0804F792:
	strh r7, [r6]
	strh r7, [r4]
	bl GetPlayerStats
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	adds r6, #2
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	ble _0804F792
	movs r0, #0x1e
	bl sub_0804ED80
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F7BC:
	ldr r0, _0804F8F0 @ =gUnknown_03001398
	ldrh r0, [r0]
	str r0, [sp]
	ldr r0, _0804F8F8 @ =0x03001290
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_08026B90
	ldr r4, [sp, #4]
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _0804F8FC @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x37
	bl sub_0800EB30
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r5, r0
	bne _0804F7FC
	movs r0, #0x3c
	bl sub_0800F3DC
_0804F7FC:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F8EC @ =0x00000167
	cmp r5, r0
	ble _0804F7BC
	movs r0, #3
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F81E:
	movs r0, #0x94
	.global _0804F820
_0804F820:
	lsls r0, r0, #1
	cmp r5, r0
	ble _0804F838
	movs r1, #0xb4
	lsls r1, r1, #1
	subs r1, r1, r5
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F838:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F8EC @ =0x00000167
	cmp r5, r0
	ble _0804F81E
	movs r5, #4
	movs r6, #0xb4
	lsls r6, r6, #1
_0804F84A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r4, #0
_0804F864:
	cmp r4, #0x3f
	bgt _0804F874
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F874:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F88A
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F88A:
	bl sub_0804F99C
	cmp r0, #0
	bne _0804F910
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F864
	adds r5, #1
	cmp r5, #0x1c
	ble _0804F84A
	movs r0, #0x1d
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F8C0:
	cmp r5, #0x3f
	bgt _0804F8D0
	lsls r1, r5, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F8D0:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F900 @ =0x00000257
	cmp r5, r0
	ble _0804F8C0
	movs r0, #0xf0
	bl sub_0800F3DC
	movs r0, #8
	bl FadeOutAllMusicPlayers
	b _0804F908
	.align 2, 0
_0804F8EC: .4byte 0x00000167
_0804F8F0: .4byte gUnknown_03001398
_0804F8F4: .4byte gUnknown_030013A8
_0804F8F8: .4byte 0x03001290
_0804F8FC: .4byte gUnknown_03003CA0
_0804F900: .4byte 0x00000257
_0804F904:
	bl WaitFrame
_0804F908:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F904
_0804F910:
	movs r0, #2
	bl FadeOutAllMusicPlayers
	movs r0, #0x1e
	bl sub_0800F3DC
	b _0804F922
_0804F91E:
	bl WaitFrame
_0804F922:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F91E
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
