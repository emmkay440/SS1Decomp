	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08001FD0
sub_08001FD0: @ 0x08001FD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x3c
	bl sub_0800F2DC
	cmp r0, #0
	bne _080020D0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #0
	bl DisableDisplayLayers
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0
	bl EnableDisplayLayers
	ldr r1, _08002070 @ =0xFFFF0000
	ldr r0, [sp, #0x38]
	ands r0, r1
	ldr r1, _08002074 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #0x38]
	add r4, sp, #0x38
	movs r0, #0
	adds r1, r4, #0
	bl SetBgCnt
	ldr r0, _08002078 @ =0x00001D03
	strh r0, [r4]
	movs r0, #1
	adds r1, r4, #0
	bl SetBgCnt
	movs r0, #0xc4
	bl GetDataRecord
	adds r5, r0, #0
	ldr r0, [r5]
	bl GetDataRecord
	adds r7, r0, #0
	adds r4, r5, #0
	ldm r4!, {r0}
	ldr r1, _0800207C @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r4, #0
	bl LZ77DecompressAlloc
	mov r8, r0
	ldr r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r4
	cmp r0, #0
	beq _08002094
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r4, r0
	cmp r4, #0
	beq _08002084
	ldr r1, _08002080 @ =0x06004000
	b _08002088
	.align 2, 0
_08002070: .4byte 0xFFFF0000
_08002074: .4byte 0x00001C08
_08002078: .4byte 0x00001D03
_0800207C: .4byte 0x0000FFFF
_08002080: .4byte 0x06004000
_08002084:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08002088:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r7, #0
	bl CpuFastSet
	b _080020A2
_08002094:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r7, #0
	bl CpuFastSet
_080020A2:
	ldr r1, _080020CC @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #2
	mov r0, r8
	bl CpuFastSet
	mov r0, r8
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl LoadPalette
	bl DisplayOn
	movs r0, #0x1e
	bl sub_0800F1EC
	b _080021BC
	.align 2, 0
_080020CC: .4byte 0x0600E800
_080020D0:
	movs r0, #1
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r0, _0800219C @ =0x00001C08
	add r4, sp, #0x38
	strh r0, [r4]
	movs r0, #0
	adds r1, r4, #0
	bl SetBgCnt
	ldr r0, _080021A0 @ =0x00001D03
	strh r0, [r4]
	movs r0, #1
	adds r1, r4, #0
	bl SetBgCnt
	movs r0, #0xc4
	bl GetDataRecord
	adds r5, r0, #0
	ldr r0, [r5]
	bl GetDataRecord
	adds r7, r0, #0
	ldm r5!, {r0}
	ldr r1, _080021A4 @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r5, #0
	bl LZ77DecompressAlloc
	mov r8, r0
	movs r5, #0
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r4, r7, #0
_08002142:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0xf
	bls _08002142
	ldr r1, _080021A8 @ =0x0600E800
	adds r2, r0, #0
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0xf
	bl LoadPalette
	ldr r1, _080021AC @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	bl sub_0800F2DC
	cmp r0, #2
	bne _080021B0
	movs r0, #6
	bl sub_0800F348
	b _080021BC
	.align 2, 0
_0800219C: .4byte 0x00001C08
_080021A0: .4byte 0x00001D03
_080021A4: .4byte 0x0000FFFF
_080021A8: .4byte 0x0600E800
_080021AC: .4byte gBgRegsBuffer
_080021B0:
	movs r0, #6
	bl sub_0800F308
	b _080021BC
_080021B8:
	bl WaitFrame
_080021BC:
	bl sub_0800F298
	cmp r0, #0
	beq _080021B8
	movs r4, #0
_080021C6:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x3b
	bls _080021C6
	movs r0, #0x3c
	bl sub_0800F244
	b _080021DC
_080021D8:
	bl WaitFrame
_080021DC:
	bl sub_0800F298
	cmp r0, #0
	beq _080021D8
	movs r0, #0xc3
	bl GetDataRecord
	adds r5, r0, #0
	ldr r0, [r5]
	bl GetDataRecord
	adds r7, r0, #0
	ldm r5!, {r0}
	ldr r1, _0800226C @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r5, #0
	bl LZ77DecompressAlloc
	mov r8, r0
	movs r5, #0
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r4, r7, #0
_08002216:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0xf
	bls _08002216
	ldr r1, _08002270 @ =0x0600E800
	adds r2, r0, #0
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl LoadPalette
	ldr r1, _08002274 @ =0x00100095
	add r0, sp, #4
	movs r2, #0
	movs r3, #0xf
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F1EC
	b _0800227C
	.align 2, 0
_0800226C: .4byte 0x0000FFFF
_08002270: .4byte 0x0600E800
_08002274: .4byte 0x00100095
_08002278:
	bl WaitFrame
_0800227C:
	bl sub_0800F298
	cmp r0, #0
	beq _08002278
	movs r4, #0
_08002286:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x3b
	bls _08002286
	movs r0, #0x3c
	bl sub_0800F244
	b _0800229C
_08002298:
	bl WaitFrame
_0800229C:
	bl sub_0800F298
	cmp r0, #0
	beq _08002298
	bl WaitFrame
	movs r0, #0x14
	bl SignalEvent
	add sp, #0x3c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080022BC
sub_080022BC: @ 0x080022BC
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r2, r0, #0
	ldr r0, _080022F0 @ =0x03003150
	ldr r1, _080022F4 @ =sub_08001FD0
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r2, #0
	str r2, [r0]
	str r2, [r0, #0x18]
	movs r1, #1
	str r1, [r0, #8]
	str r2, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_080022F0: .4byte 0x03003150
_080022F4: .4byte sub_08001FD0

	thumb_func_start TitleMenuThread
TitleMenuThread: @ 0x080022F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	bl WaitFrame
	ldr r2, _08002434 @ =gPlayerStats
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x1c
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08002438 @ =0xFFFFF07F
	ands r0, r1
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r2]
	ldr r1, _0800243C @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r2]
	movs r0, #1
	bl SetMusicEnabled
	mov r0, sp
	adds r0, #0x3c
	str r0, [sp, #0x44]
	add r1, sp, #0x38
	mov sl, r1
	movs r2, #0x3a
	add r2, sp
	mov sb, r2
_08002356:
	movs r0, #0x14
	bl _08000400
	ldr r0, _08002440 @ =gDispCnt
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800236C
	bl DisplayOn
_0800236C:
	bl sub_08001F88
	cmp r0, #0
	beq _08002378
	bl sub_08001E40
_08002378:
	movs r3, #0
	str r3, [sp, #0x40]
	movs r7, #0
	bl ClearCopyQueue
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	str r7, [sp]
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
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _08002444 @ =0xFFFF0000
	ldr r0, [sp, #0x3c]
	ands r0, r1
	ldr r1, _08002448 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #0x3c]
	movs r0, #0
	ldr r1, [sp, #0x44]
	bl SetBgCnt
	movs r1, #0xe8
	lsls r1, r1, #5
	add r0, sp, #0x3c
	strh r1, [r0]
	movs r0, #1
	ldr r1, [sp, #0x44]
	bl SetBgCnt
	ldr r0, _0800244C @ =gBgRegsBuffer
	strh r7, [r0]
	strh r7, [r0, #2]
	strh r7, [r0, #4]
	strh r7, [r0, #6]
	strh r7, [r0, #8]
	strh r7, [r0, #0xa]
	strh r7, [r0, #0xc]
	strh r7, [r0, #0xe]
	movs r0, #1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r4]
	bl GetDataRecord
	adds r6, r0, #0
	adds r5, r4, #0
	ldm r5!, {r0}
	ldr r1, _08002450 @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov r8, r0
	adds r0, r5, #0
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r4, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r4
	cmp r0, #0
	beq _08002468
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r4, r0
	cmp r4, #0
	beq _08002458
	ldr r1, _08002454 @ =0x06004000
	b _0800245C
	.align 2, 0
_08002434: .4byte gPlayerStats
_08002438: .4byte 0xFFFFF07F
_0800243C: .4byte 0xFFFE0FFF
_08002440: .4byte gDispCnt
_08002444: .4byte 0xFFFF0000
_08002448: .4byte 0x00001C08
_0800244C: .4byte gBgRegsBuffer
_08002450: .4byte 0x0000FFFF
_08002454: .4byte 0x06004000
_08002458:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0800245C:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r6, #0
	bl QueueCopy
	b _0800248A
_08002468:
	movs r4, #0
_0800246A:
	lsls r1, r4, #0xa
	adds r0, r6, r1
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	bl QueueCopy
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1f
	bls _0800246A
_0800248A:
	ldr r1, _080024C0 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r5, #0
	bl QueueCopy
	bl WaitFrame
	adds r0, r5, #0
	bl Free
	movs r0, #0
	mov r1, r8
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _080024C4 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08002518
	lsls r0, r0, #2
	ldr r1, _080024C8 @ =_080024CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080024C0: .4byte 0x0600E800
_080024C4: .4byte 0x03003CA8
_080024C8: .4byte _080024CC
_080024CC: @ jump table
	.4byte _080024E0 @ case 0
	.4byte _080024E8 @ case 1
	.4byte _080024F0 @ case 2
	.4byte _080024F8 @ case 3
	.4byte _0800250C @ case 4
_080024E0:
	ldr r1, _080024E4 @ =0x0010006C
	b _080024FA
	.align 2, 0
_080024E4: .4byte 0x0010006C
_080024E8:
	ldr r1, _080024EC @ =0x00100075
	b _080024FA
	.align 2, 0
_080024EC: .4byte 0x00100075
_080024F0:
	ldr r1, _080024F4 @ =0x00100074
	b _080024FA
	.align 2, 0
_080024F4: .4byte 0x00100074
_080024F8:
	ldr r1, _08002508 @ =0x00100082
_080024FA:
	add r0, sp, #4
	movs r2, #0xe
	movs r3, #1
	bl sub_08026ADC
	b _08002518
	.align 2, 0
_08002508: .4byte 0x00100082
_0800250C:
	ldr r1, _08002534 @ =0x0010008C
	add r0, sp, #4
	movs r2, #0xe
	movs r3, #1
	bl sub_08026ADC
_08002518:
	bl sub_08021804
	bl WaitFrame
	bl WaitFrame
	bl sub_0800F2DC
	cmp r0, #0
	bne _0800253C
	movs r0, #0x1e
	bl sub_0800F1EC
	b _08002542
	.align 2, 0
_08002534: .4byte 0x0010008C
_08002538:
	movs r7, #1
	b _08002632
_0800253C:
	movs r0, #0x1e
	bl sub_0800F348
_08002542:
	ldr r4, _0800257C @ =0x030031A8
	movs r0, #0
	str r0, [r4]
	movs r3, #1
	mov r8, r3
	movs r6, #0
	mov r0, sl
	strh r6, [r0]
	mov r1, sb
	strh r6, [r1]
	movs r0, #0
	bl PlaySE
	movs r5, #1
_0800255E:
	cmp r6, #0
	beq _080025BC
	ldr r0, _08002580 @ =gKeysRepeat
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08002584
	movs r2, #0
	str r2, [sp, #0x40]
	movs r0, #0xe
	bl PlaySE
	str r5, [r4]
	b _080025D4
	.align 2, 0
_0800257C: .4byte 0x030031A8
_08002580: .4byte gKeysRepeat
_08002584:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800259C
	movs r3, #0
	str r3, [sp, #0x40]
	movs r0, #0xe
	bl PlaySE
	ldr r0, [sp, #0x40]
	str r0, [r4]
	b _080025D4
_0800259C:
	ldr r0, _080025B8 @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080025D4
	movs r1, #0
	str r1, [sp, #0x40]
	movs r0, #0xf
	bl PlaySE
	movs r2, #0
	mov r8, r2
	b _080025D4
	.align 2, 0
_080025B8: .4byte gKeysNew
_080025BC:
	ldr r0, _08002604 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080025D4
	movs r6, #1
	movs r0, #0xf
	bl PlaySE
	movs r3, #0
	str r3, [sp, #0x40]
_080025D4:
	movs r1, #0xe1
	lsls r1, r1, #3
	ldr r0, [sp, #0x40]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0x40]
	cmp r0, r1
	bhi _08002538
	movs r0, #0xe1
	lsls r0, r0, #2
	cmp r2, r0
	bls _080025EE
	movs r6, #0
_080025EE:
	cmp r6, #0
	beq _08002608
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	movs r3, #0
	bl sub_08026B90
	b _08002628
	.align 2, 0
_08002604: .4byte gKeysNew
_08002608:
	str r5, [sp]
	add r0, sp, #4
	movs r1, #4
	mov r2, sl
	mov r3, sb
	bl sub_08026C40
	mov r3, sl
	ldrh r0, [r3]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	movs r3, #4
	bl sub_08026B90
_08002628:
	bl WaitFrame
	mov r0, r8
	cmp r0, #0
	bne _0800255E
_08002632:
	movs r0, #2
	bl FadeOutAllMusicPlayers
	movs r0, #2
	bl FadeOutBGM
	cmp r6, #0
	beq _0800264C
	movs r0, #0
	mov r1, sl
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2]
_0800264C:
	cmp r7, #0
	beq _08002658
	movs r0, #0x1e
	bl sub_0800F3DC
	b _0800265E
_08002658:
	movs r0, #0x1e
	bl sub_0800F244
_0800265E:
	ldr r5, _08002664 @ =0x030031A8
	mov r4, sl
	b _080026D4
	.align 2, 0
_08002664: .4byte 0x030031A8
_08002668:
	cmp r6, #0
	beq _080026B0
	cmp r7, #0
	bne _0800269E
	ldr r1, [r5]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	add r0, sp, #4
	adds r2, r4, #0
	mov r3, sb
	bl sub_08026C40
	ldr r3, [r5]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	bl sub_08026B90
	b _080026D0
_0800269E:
	ldrh r0, [r5]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	movs r3, #0
	bl sub_08026B90
	b _080026D0
_080026B0:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #4
	movs r1, #4
	adds r2, r4, #0
	mov r3, sb
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	movs r3, #4
	bl sub_08026B90
_080026D0:
	bl WaitFrame
_080026D4:
	bl sub_0800F298
	cmp r0, #0
	beq _08002668
	bl SndMPlayAllStop
	add r0, sp, #4
	bl sub_08026B64
	cmp r7, #0
	beq _080026F0
	ldr r1, _08002704 @ =0x030031A8
	movs r0, #2
	str r0, [r1]
_080026F0:
	ldr r0, _08002704 @ =0x030031A8
	ldr r0, [r0]
	cmp r0, #1
	beq _08002716
	cmp r0, #1
	blo _08002708
	cmp r0, #2
	beq _08002728
	b _08002356
	.align 2, 0
_08002704: .4byte 0x030031A8
_08002708:
	bl sub_08001F88
	cmp r0, #0
	beq _08002722
	bl sub_08001E40
	b _08002722
_08002716:
	bl sub_08001F88
	cmp r0, #0
	bne _08002722
	bl sub_08001E08
_08002722:
	bl StartSaveSelect
	b _08002356
_08002728:
	bl sub_08001F88
	cmp r0, #0
	beq _08002734
	bl sub_08001E40
_08002734:
	ldr r1, _08002740 @ =0x03006920
	movs r0, #0
	strb r0, [r1]
	bl sub_0804C9C4
	b _08002356
	.align 2, 0
_08002740: .4byte 0x03006920

	thumb_func_start StartTitleMenu
StartTitleMenu: @ 0x08002744
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	adds r2, r0, #0
	ldr r0, _08002774 @ =0x03003180
	ldr r1, _08002778 @ =TitleMenuThread
	str r1, [r0, #0xc]
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0
	str r1, [r0, #0x24]
	movs r1, #1
	str r1, [r0, #8]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_08002774: .4byte 0x03003180
_08002778: .4byte TitleMenuThread

	thumb_func_start sub_0800277C
sub_0800277C: @ 0x0800277C
	movs r1, #0
	ldr r0, _0800278C @ =0x030031A8
	ldr r0, [r0]
	cmp r0, #2
	bne _08002788
	movs r1, #1
_08002788:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_0800278C: .4byte 0x030031A8

	thumb_func_start sub_08002790
sub_08002790: @ 0x08002790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	movs r0, #1
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r0, _080027D8 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08002854
	lsls r0, r0, #2
	ldr r1, _080027DC @ =_080027E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080027D8: .4byte 0x03003CA8
_080027DC: .4byte _080027E0
_080027E0: @ jump table
	.4byte _080027F4 @ case 0
	.4byte _08002804 @ case 1
	.4byte _08002814 @ case 2
	.4byte _08002824 @ case 3
	.4byte _08002840 @ case 4
_080027F4:
	movs r0, #0xa3
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002800 @ =0x0010005F
	b _0800282E
	.align 2, 0
_08002800: .4byte 0x0010005F
_08002804:
	movs r0, #0xa2
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002810 @ =0x00100081
	b _0800282E
	.align 2, 0
_08002810: .4byte 0x00100081
_08002814:
	movs r0, #0xa6
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002820 @ =0x00100080
	b _0800282E
	.align 2, 0
_08002820: .4byte 0x00100080
_08002824:
	movs r0, #0xa5
	movs r1, #1
	bl sub_080060A0
	ldr r1, _0800283C @ =0x0010007F
_0800282E:
	add r0, sp, #4
	movs r2, #0
	movs r3, #3
	bl sub_08026ADC
	b _08002854
	.align 2, 0
_0800283C: .4byte 0x0010007F
_08002840:
	movs r0, #0xa9
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002884 @ =0x00100093
	add r0, sp, #4
	movs r2, #0
	movs r3, #3
	bl sub_08026ADC
_08002854:
	ldr r1, _08002888 @ =0xFFFF0000
	ldr r0, [sp, #0x3c]
	ands r0, r1
	movs r1, #0xec
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #0x3c]
	add r1, sp, #0x3c
	movs r0, #1
	bl SetBgCnt
	bl WaitFrame
	bl WaitFrame
	movs r0, #6
	bl sub_0800F308
	bl GetMultiplayerId
	cmp r0, #0
	bne _080028A6
	movs r0, #0
	b _080028AA
	.align 2, 0
_08002884: .4byte 0x00100093
_08002888: .4byte 0xFFFF0000
_0800288C:
	movs r0, #0xf
	bl PlaySE
	movs r0, #0
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0x47
	strb r0, [r4, #8]
	movs r0, #0x4f
	strb r0, [r4, #9]
_080028A2:
	movs r5, #1
	b _08002AF8
_080028A6:
	bl GetMultiplayerId
_080028AA:
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0x30
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	movs r0, #0
	strb r0, [r4, #0xc]
	mov r1, sp
	adds r1, #0x3a
	movs r2, #0
	strh r2, [r1]
	add r0, sp, #0x38
	strh r2, [r0]
	mov sb, r0
	b _080028E6
_080028CA:
	bl sub_08001EC4
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
_080028E6:
	bl sub_0800F298
	cmp r0, #0
	beq _080028CA
	ldr r0, _08002914 @ =0x03003F80
	mov sl, r0
_080028F2:
	bl GetMultiplayerId
	cmp r0, #0
	beq _080028FC
	b _08002A00
_080028FC:
	movs r7, #0
	ldr r4, _08002918 @ =0x08052B6C
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	str r7, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	movs r5, #1
	adds r6, r4, #4
	b _08002946
	.align 2, 0
_08002914: .4byte 0x03003F80
_08002918: .4byte 0x08052B6C
_0800291C:
	adds r0, r5, #0
	bl sub_08001E78
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x4f
	bne _08002942
	ldrb r0, [r4, #9]
	cmp r0, #0x4b
	bne _08002942
	adds r7, #1
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	movs r0, #0
	str r0, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
_08002942:
	adds r6, #4
	adds r5, #1
_08002946:
	bl sub_08001EC4
	cmp r5, r0
	blo _0800291C
	bl sub_08001F98
	cmp r0, #0
	beq _08002990
	bl sub_08001EC4
	subs r0, #1
	cmp r7, r0
	bne _08002990
	movs r4, #1
	str r4, [sp]
	add r0, sp, #4
	movs r1, #2
	mov r2, sb
	mov r3, sp
	adds r3, #0x3a
	bl sub_08026C40
	mov r1, sb
	ldrh r0, [r1]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #2
	bl sub_08026B90
	ldr r0, _080029BC @ =gKeysNew
	ldrh r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08002990
	b _0800288C
_08002990:
	movs r0, #0
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #8
	bl sub_080076A8
	cmp r0, #0
	beq _080029C8
	mov r1, sl
	ldr r0, [r1]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x16
	ldr r1, _080029C0 @ =0x03003D08
	str r0, [r1]
	strh r0, [r4, #8]
	ldr r1, _080029C4 @ =0x00001819
	b _080029D8
	.align 2, 0
_080029BC: .4byte gKeysNew
_080029C0: .4byte 0x03003D08
_080029C4: .4byte 0x00001819
_080029C8:
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r1, _080029F4 @ =0x03003D08
	str r0, [r1]
	strh r0, [r4, #8]
	ldr r1, _080029F8 @ =0x00001818
_080029D8:
	adds r0, r1, #0
	strh r0, [r5, #2]
_080029DC:
	ldr r0, _080029FC @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002ADA
	movs r0, #0x10
	bl PlaySE
	movs r5, #0
	b _08002AF8
	.align 2, 0
_080029F4: .4byte 0x03003D08
_080029F8: .4byte 0x00001818
_080029FC: .4byte gKeysNew
_08002A00:
	bl GetMultiplayerId
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	movs r0, #0x4f
	strb r0, [r4, #8]
	movs r0, #0x4b
	strb r0, [r4, #9]
	movs r0, #0
	bl sub_08001E78
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x47
	bne _08002A2C
	ldrb r0, [r4, #9]
	cmp r0, #0x4f
	bne _08002A2C
	b _080028A2
_08002A2C:
	movs r5, #0
	ldr r6, _08002A38 @ =0x08052B6C
	ldr r7, _08002A3C @ =0x03003D08
	mov r8, r6
	b _08002AD0
	.align 2, 0
_08002A38: .4byte 0x08052B6C
_08002A3C: .4byte 0x03003D08
_08002A40:
	adds r0, r5, #0
	bl sub_08001E78
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x4f
	bne _08002A68
	ldrb r0, [r4, #9]
	cmp r0, #0x4b
	bne _08002A68
	mov r0, r8
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	movs r0, #0
	str r0, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	b _08002ACA
_08002A68:
	cmp r5, #0
	bne _08002ACA
	ldrb r0, [r4, #0xa]
	adds r1, r0, #0
	cmp r1, #0x18
	bne _08002A9A
	ldrb r0, [r4, #0xb]
	cmp r0, #0x18
	bne _08002A9A
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	str r5, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	ldrb r1, [r4, #8]
	str r1, [r7]
	ldrb r0, [r4, #9]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r7]
	bl sub_08007694
	b _08002ACA
_08002A9A:
	cmp r5, #0
	bne _08002ACA
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bne _08002ACA
	ldrb r0, [r4, #0xb]
	cmp r0, #0x18
	bne _08002ACA
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	str r5, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	ldrb r1, [r4, #8]
	str r1, [r7]
	ldrb r0, [r4, #9]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r7]
	bl sub_08007680
_08002ACA:
	movs r1, #4
	add r8, r1
	adds r5, #1
_08002AD0:
	bl sub_08001EC4
	cmp r5, r0
	blo _08002A40
	b _080029DC
_08002ADA:
	bl sub_08001EC4
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	b _080028F2
_08002AF8:
	cmp r5, #1
	bne _08002B08
	movs r0, #6
	bl sub_0800F3A0
	bl WaitFrame
	b _08002B12
_08002B08:
	movs r0, #0xa
	bl sub_0800F244
_08002B0E:
	bl WaitFrame
_08002B12:
	bl sub_0800F298
	cmp r0, #0
	beq _08002B0E
	cmp r5, #0
	beq _08002B24
	cmp r5, #1
	beq _08002B3E
	b _08002B44
_08002B24:
	bl GetMultiplayerId
	bl sub_08001E78
	adds r4, r0, #0
	strb r5, [r4, #8]
	strb r5, [r4, #9]
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xb]
	movs r0, #0x14
	bl SignalEvent
	b _08002B44
_08002B3E:
	movs r0, #1
	bl sub_08007490
_08002B44:
	bl ThreadExit
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08002B58
sub_08002B58: @ 0x08002B58
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #1
	bl Alloc
	adds r2, r0, #0
	ldr r0, _08002B84 @ =0x030031B0
	ldr r1, _08002B88 @ =sub_08002790
	str r1, [r0, #0xc]
	adds r1, r2, #0
	adds r1, #0xfc
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #1
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x24]
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_08002B84: .4byte 0x030031B0
_08002B88: .4byte sub_08002790

	thumb_func_start GetDataRecord
GetDataRecord: @ 0x08002B8C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08002BA8 @ =0x080FC200
	lsls r0, r3, #4
	lsrs r4, r0, #0x14
	cmp r4, #0x17
	bhi _08002C2E
	lsls r0, r4, #2
	ldr r1, _08002BAC @ =_08002BB0
	adds r1, r0, r1
	ldr r1, [r1]
	adds r5, r0, #0
	mov pc, r1
	.align 2, 0
_08002BA8: .4byte 0x080FC200
_08002BAC: .4byte _08002BB0
_08002BB0: @ jump table
	.4byte _08002C22 @ case 0
	.4byte _08002C22 @ case 1
	.4byte _08002C22 @ case 2
	.4byte _08002C22 @ case 3
	.4byte _08002C22 @ case 4
	.4byte _08002C22 @ case 5
	.4byte _08002C22 @ case 6
	.4byte _08002C22 @ case 7
	.4byte _08002C22 @ case 8
	.4byte _08002C22 @ case 9
	.4byte _08002C22 @ case 10
	.4byte _08002C22 @ case 11
	.4byte _08002C22 @ case 12
	.4byte _08002C22 @ case 13
	.4byte _08002C22 @ case 14
	.4byte _08002C22 @ case 15
	.4byte _08002C22 @ case 16
	.4byte _08002C22 @ case 17
	.4byte _08002C10 @ case 18
	.4byte _08002C16 @ case 19
	.4byte _08002C1C @ case 20
	.4byte _08002C2E @ case 21
	.4byte _08002C22 @ case 22
	.4byte _08002C22 @ case 23
_08002C10:
	ldr r0, [r2, #0xc]
	adds r2, r2, r0
	b _08002C32
_08002C16:
	ldr r0, [r2, #0x4c]
	adds r2, r2, r0
	b _08002C32
_08002C1C:
	ldr r0, [r2, #0x14]
	adds r2, r2, r0
	b _08002C32
_08002C22:
	adds r0, r2, #0
	adds r0, #8
	adds r0, r0, r5
	ldr r0, [r0]
	adds r2, r2, r0
	b _08002C32
_08002C2E:
	movs r0, #0
	b _08002E0C
_08002C32:
	cmp r4, #0x17
	bls _08002C38
	b _08002E0A
_08002C38:
	ldr r0, _08002C40 @ =0x08002C44
	adds r0, r5, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002C40: .4byte 0x08002C44
_08002C44:
	.byte 0xA4, 0x2C, 0x00, 0x08, 0xC8, 0x2D, 0x00, 0x08, 0xA4, 0x2C, 0x00, 0x08
	.byte 0xC8, 0x2D, 0x00, 0x08, 0xBC, 0x2C, 0x00, 0x08, 0xC8, 0x2C, 0x00, 0x08, 0xD4, 0x2C, 0x00, 0x08
	.byte 0xE0, 0x2C, 0x00, 0x08, 0xEC, 0x2C, 0x00, 0x08, 0xF8, 0x2C, 0x00, 0x08, 0x80, 0x2D, 0x00, 0x08
	.byte 0x8C, 0x2D, 0x00, 0x08, 0x98, 0x2D, 0x00, 0x08, 0xA4, 0x2D, 0x00, 0x08, 0xB0, 0x2D, 0x00, 0x08
	.byte 0xBC, 0x2D, 0x00, 0x08, 0xB0, 0x2C, 0x00, 0x08, 0xC8, 0x2D, 0x00, 0x08, 0xD4, 0x2D, 0x00, 0x08
	.byte 0xD4, 0x2D, 0x00, 0x08, 0xD4, 0x2D, 0x00, 0x08, 0x0A, 0x2E, 0x00, 0x08, 0xEC, 0x2D, 0x00, 0x08
	.byte 0x08, 0x2E, 0x00, 0x08, 0x01, 0x48, 0x18, 0x40, 0x98, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x01, 0x48, 0x18, 0x40, 0x92, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40
	.byte 0x8C, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0x86, 0xE0, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0x80, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x01, 0x48, 0x18, 0x40, 0x7A, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40
	.byte 0x74, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x14, 0x1C, 0x05, 0x48, 0x00, 0x88, 0x05, 0x28
	.byte 0x00, 0xD9, 0x82, 0xE0, 0x80, 0x00, 0x03, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00
	.byte 0xA8, 0x3C, 0x00, 0x03, 0x18, 0x2D, 0x00, 0x08, 0x30, 0x2D, 0x00, 0x08, 0x44, 0x2D, 0x00, 0x08
	.byte 0x4C, 0x2D, 0x00, 0x08, 0x54, 0x2D, 0x00, 0x08, 0x5C, 0x2D, 0x00, 0x08, 0x64, 0x2D, 0x00, 0x08
	.byte 0x03, 0x48, 0x18, 0x40, 0x80, 0x00, 0x21, 0x1D, 0x09, 0x18, 0x08, 0x68, 0x22, 0x18, 0x64, 0xE0
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x48, 0x0E, 0xE0, 0x07, 0x01, 0x09, 0x00, 0x00, 0x48, 0x0A, 0xE0
	.byte 0x0E, 0x02, 0x09, 0x00, 0x00, 0x48, 0x06, 0xE0, 0x15, 0x03, 0x09, 0x00, 0x00, 0x48, 0x02, 0xE0
	.byte 0x1C, 0x04, 0x09, 0x00, 0x04, 0x48, 0x19, 0x18, 0x04, 0x48, 0x01, 0x40, 0x89, 0x00, 0x20, 0x1D
	.byte 0x40, 0x18, 0x00, 0x68, 0x22, 0x18, 0x48, 0xE0, 0x23, 0x05, 0x09, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x01, 0x48, 0x18, 0x40, 0x2A, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40
	.byte 0x24, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0x1E, 0xE0, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0x18, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x01, 0x48, 0x18, 0x40, 0x12, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40
	.byte 0x0C, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x48, 0x18, 0x40, 0xC0, 0x00, 0x06, 0xE0
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x04, 0x48, 0x18, 0x40, 0x40, 0x00, 0x01, 0x30, 0x80, 0x00, 0x11, 0x1D
	.byte 0x09, 0x18, 0x08, 0x68, 0x12, 0x18, 0x10, 0xE0, 0xFF, 0xFF, 0x00, 0x00, 0x04, 0x48, 0x18, 0x40
	.byte 0x41, 0x00, 0x09, 0x18, 0x89, 0x00, 0x09, 0x18, 0x49, 0x01, 0x02, 0x48, 0x0A, 0x18, 0x04, 0xE0
	.byte 0xFF, 0xFF, 0x00, 0x00, 0xD8, 0xAB, 0x0F, 0x08, 0x02, 0x4A
_08002E0A:
	adds r0, r2, #0
_08002E0C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08002E14:
	.byte 0x5C, 0xAB, 0x0F, 0x08

	thumb_func_start sub_08002E18
sub_08002E18: @ 0x08002E18
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r5, _08002E34 @ =0x080FC200
	adds r4, r5, #0
	ldr r0, _08002E38 @ =0x00000FFF
	ands r3, r0
	cmp r3, #0x17
	bhi _08002EBE
	lsls r0, r3, #2
	ldr r1, _08002E3C @ =_08002E40
	adds r1, r0, r1
	ldr r1, [r1]
	adds r6, r0, #0
	mov pc, r1
	.align 2, 0
_08002E34: .4byte 0x080FC200
_08002E38: .4byte 0x00000FFF
_08002E3C: .4byte _08002E40
_08002E40: @ jump table
	.4byte _08002EB2 @ case 0
	.4byte _08002EB2 @ case 1
	.4byte _08002EB2 @ case 2
	.4byte _08002EB2 @ case 3
	.4byte _08002EB2 @ case 4
	.4byte _08002EB2 @ case 5
	.4byte _08002EB2 @ case 6
	.4byte _08002EB2 @ case 7
	.4byte _08002EB2 @ case 8
	.4byte _08002EB2 @ case 9
	.4byte _08002EB2 @ case 10
	.4byte _08002EB2 @ case 11
	.4byte _08002EB2 @ case 12
	.4byte _08002EB2 @ case 13
	.4byte _08002EB2 @ case 14
	.4byte _08002EB2 @ case 15
	.4byte _08002EB2 @ case 16
	.4byte _08002EB2 @ case 17
	.4byte _08002EA0 @ case 18
	.4byte _08002EA6 @ case 19
	.4byte _08002EAC @ case 20
	.4byte _08002EBE @ case 21
	.4byte _08002EB2 @ case 22
	.4byte _08002EB2 @ case 23
_08002EA0:
	ldr r0, [r4, #0xc]
	adds r1, r5, r0
	b _08002EC2
_08002EA6:
	ldr r0, [r4, #0x4c]
	adds r1, r5, r0
	b _08002EC2
_08002EAC:
	ldr r0, [r4, #0x14]
	adds r1, r5, r0
	b _08002EC2
_08002EB2:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r6
	ldr r0, [r0]
	adds r1, r5, r0
	b _08002EC2
_08002EBE:
	movs r0, #0
	b _08002F40
_08002EC2:
	cmp r3, #0x17
	bhi _08002F3E
	ldr r0, _08002ED0 @ =0x08002ED4
	adds r0, r6, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002ED0: .4byte 0x08002ED4
_08002ED4:
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08
	.byte 0x34, 0x2F, 0x00, 0x08, 0x34, 0x2F, 0x00, 0x08, 0x3E, 0x2F, 0x00, 0x08, 0x38, 0x2F, 0x00, 0x08
	.byte 0x3C, 0x2F, 0x00, 0x08, 0x0A, 0x68, 0x02, 0xE0, 0x03, 0x22, 0x00, 0xE0, 0x01, 0x22
_08002F3E:
	adds r0, r2, #0
_08002F40:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002F48
sub_08002F48: @ 0x08002F48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	ldr r4, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	ldr r0, _08002F88 @ =0x030031E4
	ldr r4, [r0]
	cmp r4, #0x80
	bls _08002F8C
_08002F82:
	movs r0, #0
	b _080030B2
	.align 2, 0
_08002F88: .4byte 0x030031E4
_08002F8C:
	ldr r0, [r5, #4]
	adds r7, r5, r0
	ldr r0, [r5, #8]
	adds r1, r5, r0
	ldrh r5, [r5, #2]
	cmp r2, r5
	blo _08002F9C
	b _080030B0
_08002F9C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrh r0, [r2, #4]
	cmp r0, r3
	bhi _08002FAC
	b _080030B0
_08002FAC:
	ldr r0, [r2, #8]
	adds r0, r0, r2
	lsls r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r0, [r7, #8]
	adds r6, r7, r0
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	str r0, [sp, #0x10]
	lsls r1, r4, #3
	ldr r0, _080030C4 @ =gOamBuffer
	adds r3, r1, r0
	movs r0, #0
	mov r8, r0
	ldrh r1, [r7, #2]
	cmp r8, r1
	bhs _080030B0
	movs r1, #3
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	movs r2, #0x3f
	mov ip, r2
	ldr r0, _080030C8 @ =0x000003FF
	mov sb, r0
	ldr r1, _080030CC @ =0xFFFFFC00
	mov sl, r1
_08002FF0:
	ldrh r0, [r6]
	strh r0, [r3]
	ldrh r0, [r6, #2]
	strh r0, [r3, #2]
	ldrh r0, [r6, #4]
	strh r0, [r3, #4]
	ldrh r0, [r6, #2]
	lsls r5, r0, #0x17
	asrs r5, r5, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]

	non_word_aligned_thumb_func_start sub_08003006
sub_08003006: @ 0x08003006
	ldr r2, [sp, #4]
	adds r4, r4, r2
	ldr r0, [sp]
	adds r5, r5, r0
	ldrb r1, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #0x14]
	orrs r0, r1
	ldr r1, [sp, #8]
	lsls r2, r1, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #5]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bls _08003044
	ldrb r1, [r3, #1]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #3]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #3]
	movs r4, #0xa0
_08003044:
	adds r0, r4, #0
	adds r0, #0x40
	cmp r0, #0xe0
	bls _0800305E
	ldrb r1, [r3, #1]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #3]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #3]
	movs r4, #0xa0
_0800305E:
	ldr r2, _080030D0 @ =0x000001FF
	adds r0, r2, #0
	ands r5, r0
	ldrh r1, [r3, #2]
	ldr r0, _080030D4 @ =0xFFFFFE00
	ands r0, r1
	orrs r0, r5
	strh r0, [r3, #2]
	strb r4, [r3]
	ldrh r2, [r3, #4]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp, #0x10]
	subs r1, r1, r0
	mov r0, sb
	ands r1, r0
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	mov r2, sb
	ands r1, r2
	mov r2, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r1, _080030D8 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x80
	bls _080030A2
	b _08002F82
_080030A2:
	movs r2, #1
	add r8, r2
	adds r3, #8
	adds r6, #8
	ldrh r0, [r7, #2]
	cmp r8, r0
	blo _08002FF0
_080030B0:
	movs r0, #1
_080030B2:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080030C4: .4byte gOamBuffer
_080030C8: .4byte 0x000003FF
_080030CC: .4byte 0xFFFFFC00
_080030D0: .4byte 0x000001FF
_080030D4: .4byte 0xFFFFFE00
_080030D8: .4byte 0x030031E4

	thumb_func_start sub_080030DC
sub_080030DC: @ 0x080030DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, [r2, #4]
	adds r1, r1, r2
	mov sb, r1
	ldr r1, [r2, #8]
	adds r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1, #4]
	cmp r0, r3
	bhi _0800310C
	b _0800335A
_0800310C:
	ldr r0, [r1, #8]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r0, sb
	ldr r7, [r0, #8]
	add r7, sb
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	str r0, [sp, #4]
	movs r1, #0
	mov sl, r1
	mov r2, sb
	ldrh r2, [r2, #2]
	cmp sl, r2
	blo _0800313A
	b _0800335A
_0800313A:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
_08003144:
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x16
	ldr r2, [sp, #4]
	subs r1, r1, r2
	lsls r1, r1, #5
	ldr r3, [sp, #0x28]
	adds r5, r3, r1
	lsrs r0, r0, #0xc
	ldr r1, [sp]
	adds r4, r1, r0
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _080031EA
	cmp r0, #1
	bgt _0800316C
	cmp r0, #0
	beq _08003172
	b _0800334A
_0800316C:
	cmp r0, #2
	beq _08003256
	b _0800334A
_08003172:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	bne _0800317C
	b _080032C4
_0800317C:
	cmp r0, #1
	bgt _08003188
	cmp r0, #0
	bne _08003186
	b _0800329C
_08003186:
	b _0800334A
_08003188:
	cmp r0, #2
	beq _08003192
	cmp r0, #3
	beq _080031B0
	b _0800334A
_08003192:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	b _08003206
_080031B0:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	b _08003220
_080031EA:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _08003214
	cmp r0, #1
	bgt _080031FC
	cmp r0, #0
	beq _080032D2
	b _0800334A
_080031FC:
	cmp r0, #2
	beq _08003206
	cmp r0, #4
	beq _08003220
	b _0800334A
_08003206:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_08003214:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	b _0800334A
_08003220:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	b _0800334A
_08003256:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _08003272
	cmp r0, #1
	bgt _08003268
	cmp r0, #0
	beq _0800328E
	b _0800334A
_08003268:
	cmp r0, #2
	beq _080032A8
	cmp r0, #4
	beq _080032DE
	b _0800334A
_08003272:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_0800328E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_0800329C:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	b _0800334A
_080032A8:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_080032C4:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_080032D2:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	b _0800334A
_080032DE:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
_0800334A:
	movs r2, #1
	add sl, r2
	adds r7, #8
	mov r3, sb
	ldrh r3, [r3, #2]
	cmp sl, r3
	bhs _0800335A
	b _08003144
_0800335A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800336C
sub_0800336C: @ 0x0800336C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r4, [sp, #0x34]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _080033A4 @ =0x030031E4
	ldr r7, [r0]
	cmp r7, #0x80
	bhi _0800339E
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _080033AC
_0800339E:
	movs r0, #1
	rsbs r0, r0, #0
	b _080034F6
	.align 2, 0
_080033A4: .4byte 0x030031E4
_080033A8:
	movs r0, #0
	b _080034F6
_080033AC:
	ldr r2, _08003498 @ =0x030031E8
	ldr r0, [r2]
	mov sl, r0
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov ip, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add ip, r0
	mov r1, ip
	ldr r0, [r1, #8]
	adds r6, r1, r0
	lsls r1, r7, #3
	ldr r0, _0800349C @ =gOamBuffer
	adds r5, r1, r0
	movs r0, #0
	mov r8, r0
	mov sb, r0
	mov r1, ip
	ldrh r1, [r1, #2]
	cmp r8, r1
	bhs _080034E6
_080033F0:
	adds r7, r6, #0
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r2, [sp, #4]
	adds r4, r4, r2
	ldr r0, [sp]
	adds r3, r3, r0
	movs r1, #3
	ldr r0, [sp, #8]
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x30]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800344A
	cmp r4, #0xa0
	bgt _0800344A
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	bge _0800345C
_0800344A:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_0800345C:
	ldr r1, _080034A0 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r1, [r5, #2]
	ldr r0, _080034A4 @ =0xFFFFFE00
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5]
	mov r1, r8
	add r1, sl
	ldr r2, _080034A8 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #4]
	ldr r0, _080034AC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _080034B4
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	ldr r1, _080034B0 @ =0x080FB0B8
	adds r0, r0, r1
	b _080034BE
	.align 2, 0
_08003498: .4byte 0x030031E8
_0800349C: .4byte gOamBuffer
_080034A0: .4byte 0x000001FF
_080034A4: .4byte 0xFFFFFE00
_080034A8: .4byte 0x000003FF
_080034AC: .4byte 0xFFFFFC00
_080034B0: .4byte 0x080FB0B8
_080034B4:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	ldr r2, _08003508 @ =0x080FB0C8
	adds r0, r0, r2
_080034BE:
	ldr r0, [r0]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _0800350C @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x80
	bls _080034D6
	b _080033A8
_080034D6:
	movs r2, #1
	add sb, r2
	adds r5, #8
	adds r6, #8
	mov r0, ip
	ldrh r0, [r0, #2]
	cmp sb, r0
	blo _080033F0
_080034E6:
	ldr r1, _08003510 @ =0x030031E8
	ldr r0, [r1]
	add r0, r8
	str r0, [r1]
	mov r2, sl
	lsls r0, r2, #5
	ldr r1, _08003514 @ =0x06010000
	adds r0, r0, r1
_080034F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003508: .4byte 0x080FB0C8
_0800350C: .4byte 0x030031E4
_08003510: .4byte 0x030031E8
_08003514: .4byte 0x06010000

	thumb_func_start sub_08003518
sub_08003518: @ 0x08003518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r4, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _08003550 @ =0x030031E4
	ldr r6, [r0]
	cmp r6, #0x7f
	bhi _0800354A
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08003558
_0800354A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08003702
	.align 2, 0
_08003550: .4byte 0x030031E4
_08003554:
	movs r0, #0
	b _08003702
_08003558:
	ldr r0, _08003600 @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov sb, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r1, sb
	ldr r0, [r1, #8]
	add r0, sb
	mov r8, r0
	lsls r1, r6, #3
	ldr r0, _08003604 @ =gOamBuffer
	adds r4, r1, r0
	ldr r2, [sp, #0x14]
	lsls r0, r2, #5
	ldr r3, _08003608 @ =0x06010000
	adds r3, r0, r3
	str r3, [sp, #0xc]
	movs r6, #0
	mov sl, r6
	movs r0, #0
	str r0, [sp, #0x10]
	mov r1, sb
	ldrh r1, [r1, #2]
	cmp sl, r1
	blo _080035AC
	b _080036F2
_080035AC:
	mov ip, r8
	ldrh r2, [r4, #6]
	str r2, [sp, #0x18]
	mov r3, r8
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [r4]
	str r1, [r4, #4]
	ldrh r7, [r4, #2]
	lsls r3, r7, #0x17
	asrs r3, r3, #0x17
	movs r5, #0
	ldrsb r5, [r4, r5]
	ldr r0, [sp, #4]
	adds r5, r5, r0
	ldr r1, [sp]
	adds r3, r3, r1
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080035E6
	cmp r5, #0xa0
	bgt _080035E6
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r5, r0
	bge _0800360C
_080035E6:
	movs r0, #0xa0
	strb r0, [r4]
	ldrb r2, [r4, #1]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #1]
	ldrb r0, [r4, #3]
	ands r1, r0
	strb r1, [r4, #3]
	subs r4, #8
	b _080036DC
	.align 2, 0
_08003600: .4byte 0x030031E8
_08003604: .4byte gOamBuffer
_08003608: .4byte 0x06010000
_0800360C:
	ldr r2, [sp, #0xc]
	adds r2, r2, r6
	str r2, [sp, #0xc]
	movs r0, #3
	ldr r2, [sp, #8]
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r4, #5]
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x40]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r6, _0800367C @ =0x000001FF
	adds r0, r6, #0
	ands r3, r0
	ldr r1, _08003680 @ =0xFFFFFE00
	adds r0, r1, #0
	ands r0, r7
	orrs r0, r3
	strh r0, [r4, #2]
	strb r5, [r4]
	ldr r2, [sp, #0x14]
	add r2, sl
	ldr r3, _08003684 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r6, _08003688 @ =0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08003690
	ldr r0, _0800368C @ =0x080FB0B8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r6, [r1]
	mov r1, sl
	adds r0, r1, r6
	b _080036A0
	.align 2, 0
_0800367C: .4byte 0x000001FF
_08003680: .4byte 0xFFFFFE00
_08003684: .4byte 0x000003FF
_08003688: .4byte 0xFFFFFC00
_0800368C: .4byte 0x080FB0B8
_08003690:
	ldr r0, _08003714 @ =0x080FB0C8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r6, [r1]
	mov r2, sl
	adds r0, r2, r6
_080036A0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r3, sp
	ldrh r3, [r3, #0x18]
	strh r3, [r4, #6]
	ldr r1, _08003718 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _080036BA
	b _08003554
_080036BA:
	lsls r6, r6, #5
	mov r1, ip
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r1, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r2, [sp, #0x48]
	adds r0, r2, r0
	ldr r1, [sp, #0xc]
	adds r2, r6, #0
	bl QueueCopy
_080036DC:
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x10]
	adds r4, #8
	movs r0, #8
	add r8, r0
	mov r1, sb
	ldrh r1, [r1, #2]
	cmp r3, r1
	bhs _080036F2
	b _080035AC
_080036F2:
	ldr r0, _0800371C @ =0x030031E8
	ldr r1, [r0]
	add r1, sl
	str r1, [r0]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #5
	ldr r3, _08003720 @ =0x06010000
	adds r0, r0, r3
_08003702:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003714: .4byte 0x080FB0C8
_08003718: .4byte 0x030031E4
_0800371C: .4byte 0x030031E8
_08003720: .4byte 0x06010000

	thumb_func_start sub_08003724
sub_08003724: @ 0x08003724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r4, [sp, #0x50]
	ldr r6, [sp, #0x58]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r5, [sp, #0x68]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r7, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x1c]
	ldr r0, _08003778 @ =0x030031E4
	ldr r3, [r0]
	cmp r3, #0x7f
	bhi _08003770
	ldrh r0, [r6, #2]
	cmp r0, r2
	bhs _08003780
_08003770:
	movs r0, #1
	rsbs r0, r0, #0
	b _0800399E
	.align 2, 0
_08003778: .4byte 0x030031E4
_0800377C:
	movs r0, #0
	b _0800399E
_08003780:
	ldr r0, _08003898 @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r0, _0800389C @ =0x030031E0
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r6, #8]
	adds r1, r6, r1
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	mov r2, sb
	lsls r0, r2, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r1, r0
	lsls r1, r3, #3
	ldr r0, _080038A0 @ =gOamBuffer
	adds r5, r1, r0
	ldr r3, [sp, #0x24]
	lsls r0, r3, #5
	ldr r1, _080038A4 @ =0x06010000
	adds r1, r1, r0
	mov sl, r1
	movs r3, #0
	mov sb, r3
	movs r7, #0
	movs r0, #0
	str r0, [sp, #0x20]
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp sb, r1
	blo _080037DC
	b _08003964
_080037DC:
	adds r6, r2, #0
_080037DE:
	ldrh r2, [r5, #6]
	mov ip, r2
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r0, [sp, #0xc]
	adds r4, r4, r0
	ldr r1, [sp, #8]
	adds r3, r3, r1
	movs r0, #3
	ldr r2, [sp, #0x10]
	ands r2, r0
	lsls r2, r2, #2
	str r2, [sp, #0x2c]
	ldrb r1, [r5, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [sp, #0x2c]
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x54]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08003840
	cmp r4, #0xa0
	bgt _08003840
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	bge _08003852
_08003840:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_08003852:
	ldr r1, _080038A8 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r5, #2]
	ldr r2, _080038AC @ =0xFFFFFE00
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5]
	ldr r2, [sp, #0x24]
	add r2, sb
	ldr r3, _080038B0 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r5, #4]
	ldr r3, _080038B4 @ =0xFFFFFC00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #4]
	add sl, r7
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _080038BC
	ldr r0, _080038B8 @ =0x080FB0B8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r1, sb
	adds r0, r1, r7
	b _080038CC
	.align 2, 0
_08003898: .4byte 0x030031E8
_0800389C: .4byte 0x030031E0
_080038A0: .4byte gOamBuffer
_080038A4: .4byte 0x06010000
_080038A8: .4byte 0x000001FF
_080038AC: .4byte 0xFFFFFE00
_080038B0: .4byte 0x000003FF
_080038B4: .4byte 0xFFFFFC00
_080038B8: .4byte 0x080FB0B8
_080038BC:
	ldr r0, _080039B0 @ =0x080FB0C8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r2, sb
	adds r0, r2, r7
_080038CC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r5, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #1]
	movs r1, #3
	ldr r2, [sp, #0x28]
	ands r1, r2
	lsls r1, r1, #1
	ldrb r2, [r5, #3]
	subs r3, #0xb
	adds r0, r3, #0
	ands r2, r0
	orrs r2, r1
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #2
	movs r3, #1
	ands r0, r3
	ands r0, r3
	lsls r0, r0, #4
	subs r3, #0x12
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #3
	movs r3, #1
	ands r0, r3
	ands r0, r3
	lsls r0, r0, #5
	subs r3, #0x22
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #3]
	mov r0, ip
	strh r0, [r5, #6]
	ldr r1, _080039B4 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _08003930
	b _0800377C
_08003930:
	lsls r7, r7, #5
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r1, [sp, #0x5c]
	adds r0, r1, r0
	mov r1, sl
	adds r2, r7, #0
	bl QueueCopy
	ldr r2, [sp, #0x20]
	adds r2, #1
	str r2, [sp, #0x20]
	adds r5, #8
	adds r6, #8
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r2, r3
	bhs _08003964
	b _080037DE
_08003964:
	ldr r1, _080039B8 @ =gOamBuffer
	ldr r4, _080039BC @ =0x030031E0
	ldr r0, [r4]
	lsls r2, r0, #5
	adds r1, r2, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _080039C0 @ =0xFFFF0000
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	ldr r3, [sp, #0x14]
	orrs r0, r3
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r2
	ldr r2, [sp, #0x1c]
	orrs r0, r2
	str r0, [sp, #4]
	adds r1, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	ldr r1, _080039C4 @ =0x030031E8
	ldr r0, [r1]
	add r0, sb
	str r0, [r1]
	ldr r0, [r4]
_0800399E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080039B0: .4byte 0x080FB0C8
_080039B4: .4byte 0x030031E4
_080039B8: .4byte gOamBuffer
_080039BC: .4byte 0x030031E0
_080039C0: .4byte 0xFFFF0000
_080039C4: .4byte 0x030031E8

	thumb_func_start sub_080039C8
sub_080039C8: @ 0x080039C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r4, [sp, #0x50]
	ldr r7, [sp, #0x58]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r5, [sp, #0x68]
	ldr r6, [sp, #0x6c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x1c]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _08003A20 @ =0x030031E4
	ldr r0, [r4]
	cmp r0, #0x7f
	bhi _08003A1A
	ldrh r0, [r7, #2]
	cmp r0, r2
	bhs _08003A24
_08003A1A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08003CE0
	.align 2, 0
_08003A20: .4byte 0x030031E4
_08003A24:
	bl sub_0800F298
	movs r1, #0
	cmp r0, #0
	beq _08003A30
	adds r1, r6, #0
_08003A30:
	adds r6, r1, #0
	ldr r0, _08003B60 @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r0, _08003B64 @ =0x030031E0
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, [r7, #4]
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r7, #8]
	adds r1, r7, r1
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	mov r3, sl
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #3
	ldr r1, _08003B68 @ =gOamBuffer
	adds r4, r0, r1
	ldr r3, [sp, #0x24]
	lsls r0, r3, #5
	ldr r1, _08003B6C @ =0x06010000
	adds r1, r0, r1
	str r1, [sp, #0x20]
	movs r3, #0
	mov sl, r3
	movs r7, #0
	movs r0, #0
	mov sb, r0
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp sl, r1
	blo _08003A92
	b _08003C44
_08003A92:
	movs r3, #3
	ands r6, r3
	lsls r6, r6, #2
	str r6, [sp, #0x2c]
	adds r6, r2, #0
_08003A9C:
	ldrh r0, [r4, #6]
	mov ip, r0
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r4]
	str r1, [r4, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r5, #0
	ldrsb r5, [r6, r5]
	ldr r1, [sp, #0xc]
	adds r5, r5, r1
	ldr r2, [sp, #8]
	adds r3, r3, r2
	ldr r0, [sp, #0x10]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4, #5]
	subs r1, #0x10
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x54]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldrb r1, [r4, #1]
	subs r0, #0x1c
	ands r0, r1
	ldr r1, [sp, #0x2c]
	orrs r0, r1
	strb r0, [r4, #1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08003B02
	cmp r5, #0xa0
	bgt _08003B02
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r5, r0
	bge _08003B14
_08003B02:
	ldrb r2, [r4, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	ands r1, r0
	strb r1, [r4, #1]
	movs r5, #0xa0
_08003B14:
	ldr r2, _08003B70 @ =0x000001FF
	adds r0, r2, #0
	ands r3, r0
	ldrh r0, [r4, #2]
	ldr r2, _08003B74 @ =0xFFFFFE00
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r4, #2]
	strb r5, [r4]
	ldr r2, [sp, #0x24]
	add r2, sl
	ldr r3, _08003B78 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r3, _08003B7C @ =0xFFFFFC00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	ldr r0, [sp, #0x20]
	adds r0, r0, r7
	str r0, [sp, #0x20]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08003B84
	ldr r0, _08003B80 @ =0x080FB0B8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r1, sl
	adds r0, r1, r7
	b _08003B94
	.align 2, 0
_08003B60: .4byte 0x030031E8
_08003B64: .4byte 0x030031E0
_08003B68: .4byte gOamBuffer
_08003B6C: .4byte 0x06010000
_08003B70: .4byte 0x000001FF
_08003B74: .4byte 0xFFFFFE00
_08003B78: .4byte 0x000003FF
_08003B7C: .4byte 0xFFFFFC00
_08003B80: .4byte 0x080FB0B8
_08003B84:
	ldr r0, _08003CA4 @ =0x080FB0C8
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r2, sl
	adds r0, r2, r7
_08003B94:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r0, [r4, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r6, #3]
	lsls r2, r1, #0x1c
	lsrs r2, r2, #0x1d
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r2, r0
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	orrs r2, r1
	ldr r3, [sp, #0x28]
	adds r2, r2, r3
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #1
	ldrb r3, [r4, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r3, r0
	orrs r3, r2
	ldr r2, [sp, #0x28]
	lsrs r0, r2, #2
	movs r1, #1
	ands r0, r1
	ands r0, r1
	lsls r0, r0, #4
	movs r2, #0x11
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r3, r1
	orrs r3, r0
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #3
	movs r2, #1
	ands r0, r2
	ands r0, r2
	lsls r0, r0, #5
	subs r2, #0x22
	adds r1, r2, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #3]
	mov r3, ip
	strh r3, [r4, #6]
	ldr r1, _08003CA8 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bhi _08003CB8
	lsls r7, r7, #5
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r1, [sp, #0x5c]
	adds r0, r1, r0
	ldr r1, [sp, #0x20]
	adds r2, r7, #0
	bl QueueCopy
	movs r2, #1
	add sb, r2
	adds r4, #8
	adds r6, #8
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp sb, r3
	bhs _08003C44
	b _08003A9C
_08003C44:
	ldr r6, _08003CAC @ =gOamBuffer
	ldr r2, _08003CB0 @ =0x030031E0
	ldr r0, [r2]
	lsls r1, r0, #5
	adds r6, r1, r6
	adds r0, #1
	str r0, [r2]
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08003CBC
	ldr r0, [r1, #4]
	adds r4, r1, r0
	movs r2, #0
	mov sb, r2
	ldrh r3, [r1]
	cmp sb, r3
	bhs _08003CD4
	ldr r7, _08003CB4 @ =0xFFFF0000
	mov r5, sp
_08003C6C:
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	ands r0, r7
	orrs r0, r1
	str r0, [r5, #4]
	adds r1, r6, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	adds r6, #0x20
	ldr r1, _08003CB0 @ =0x030031E0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	add sb, r0
	mov r1, r8
	ldrh r1, [r1]
	cmp sb, r1
	blo _08003C6C
	b _08003CD4
	.align 2, 0
_08003CA4: .4byte 0x080FB0C8
_08003CA8: .4byte 0x030031E4
_08003CAC: .4byte gOamBuffer
_08003CB0: .4byte 0x030031E0
_08003CB4: .4byte 0xFFFF0000
_08003CB8:
	movs r0, #0
	b _08003CE0
_08003CBC:
	mov r0, sp
	ldrh r2, [r0, #0x14]
	strh r2, [r0]
	ldrh r3, [r0, #0x18]
	strh r3, [r0, #2]
	ldrh r1, [r0, #0x1c]
	strh r1, [r0, #4]
	adds r1, r6, #6
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
_08003CD4:
	ldr r1, _08003CF0 @ =0x030031E8
	ldr r0, [r1]
	add r0, sl
	str r0, [r1]
	ldr r0, _08003CF4 @ =0x030031E0
	ldr r0, [r0]
_08003CE0:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003CF0: .4byte 0x030031E8
_08003CF4: .4byte 0x030031E0

	thumb_func_start sub_08003CF8
sub_08003CF8: @ 0x08003CF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, _08003D30 @ =0x030031E4
	ldr r6, [r0]
	cmp r6, #0x7f
	bhi _08003D2A
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08003D38
_08003D2A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08003F7C
	.align 2, 0
_08003D30: .4byte 0x030031E4
_08003D34:
	movs r0, #0
	b _08003F7C
_08003D38:
	ldr r0, _08003E3C @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, _08003E40 @ =0x030031E0
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	adds r7, r4, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r0, [r7, #8]
	adds r2, r7, r0
	lsls r1, r6, #3
	ldr r0, _08003E44 @ =gOamBuffer
	adds r5, r1, r0
	ldr r1, [sp, #0x18]
	lsls r0, r1, #5
	ldr r3, _08003E48 @ =0x06010000
	adds r3, r0, r3
	str r3, [sp, #0x14]
	movs r4, #0
	mov sl, r4
	mov r8, r4
	mov sb, r4
	ldrh r0, [r7, #2]
	cmp sl, r0
	blo _08003D8A
	b _08003F12
_08003D8A:
	adds r6, r2, #0
_08003D8C:
	ldrh r1, [r5, #6]
	mov ip, r1
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r2, [sp, #0xc]
	adds r4, r4, r2
	ldr r0, [sp, #8]
	adds r3, r3, r0
	movs r0, #3
	ldr r2, [sp, #0x10]
	ands r2, r0
	lsls r2, r2, #2
	str r2, [sp, #0x20]
	ldrb r1, [r5, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [sp, #0x20]
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x48]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08003DEE
	cmp r4, #0xa0
	bgt _08003DEE
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	bge _08003E00
_08003DEE:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_08003E00:
	ldr r1, _08003E4C @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r5, #2]
	ldr r2, _08003E50 @ =0xFFFFFE00
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5]
	ldr r2, [sp, #0x18]
	add r2, sl
	ldr r3, _08003E54 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r5, #4]
	ldr r4, _08003E58 @ =0xFFFFFC00
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #4]
	ldr r0, [sp, #0x14]
	add r0, r8
	str r0, [sp, #0x14]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08003E60
	ldr r1, _08003E5C @ =0x080FB0B8
	b _08003E62
	.align 2, 0
_08003E3C: .4byte 0x030031E8
_08003E40: .4byte 0x030031E0
_08003E44: .4byte gOamBuffer
_08003E48: .4byte 0x06010000
_08003E4C: .4byte 0x000001FF
_08003E50: .4byte 0xFFFFFE00
_08003E54: .4byte 0x000003FF
_08003E58: .4byte 0xFFFFFC00
_08003E5C: .4byte 0x080FB0B8
_08003E60:
	ldr r1, _08003F8C @ =0x080FB0C8
_08003E62:
	ldrb r2, [r6, #3]
	lsrs r0, r2, #6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	mov r0, sl
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r7]
	cmp r0, #0
	beq _08003ECC
	lsls r3, r2, #0x1c
	lsrs r3, r3, #0x1d
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r3, r0
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r3, r0
	ldr r1, [sp, #0x1c]
	adds r3, r3, r1
	movs r1, #3
	ands r1, r3
	lsls r1, r1, #1
	ldrb r2, [r5, #3]
	movs r4, #0xf
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r2, r0
	orrs r2, r1
	lsrs r1, r3, #2
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #4
	subs r4, #2
	adds r0, r4, #0
	ands r2, r0
	orrs r2, r1
	lsrs r3, r3, #3
	movs r0, #1
	ands r3, r0
	lsls r3, r3, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r2, r0
	orrs r2, r3
	strb r2, [r5, #3]
_08003ECC:
	mov r2, ip
	strh r2, [r5, #6]
	ldr r1, _08003F90 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _08003EDE
	b _08003D34
_08003EDE:
	mov r3, r8
	lsls r3, r3, #5
	mov r8, r3
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r4, [sp, #0x50]
	adds r0, r4, r0
	ldr r1, [sp, #0x14]
	mov r2, r8
	bl QueueCopy
	movs r0, #1
	add sb, r0
	adds r5, #8
	adds r6, #8
	ldrh r1, [r7, #2]
	cmp sb, r1
	bhs _08003F12
	b _08003D8C
_08003F12:
	ldr r6, _08003F94 @ =gOamBuffer
	ldrh r0, [r7]
	cmp r0, #0
	beq _08003F70
	ldr r2, _08003F98 @ =0x030031E0
	ldr r0, [r2]
	lsls r1, r0, #5
	adds r6, r1, r6
	adds r0, #1
	str r0, [r2]
	ldr r0, [r7, #4]
	adds r4, r7, r0
	movs r2, #0
	mov sb, r2
	ldrh r3, [r7]
	cmp sb, r3
	bhs _08003F70
	ldr r0, _08003F9C @ =0xFFFF0000
	mov r8, r0
	mov r5, sp
_08003F3A:
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	mov r2, r8
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	adds r1, r6, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	adds r6, #0x20
	ldr r1, _08003F98 @ =0x030031E0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r3, #1
	add sb, r3
	ldrh r0, [r7]
	cmp sb, r0
	blo _08003F3A
_08003F70:
	ldr r1, _08003FA0 @ =0x030031E8
	ldr r0, [r1]
	add r0, sl
	str r0, [r1]
	ldr r0, _08003F98 @ =0x030031E0
	ldr r0, [r0]
_08003F7C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003F8C: .4byte 0x080FB0C8
_08003F90: .4byte 0x030031E4
_08003F94: .4byte gOamBuffer
_08003F98: .4byte 0x030031E0
_08003F9C: .4byte 0xFFFF0000
_08003FA0: .4byte 0x030031E8

	thumb_func_start sub_08003FA4
sub_08003FA4: @ 0x08003FA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	ldr r0, [sp, #0x54]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _08003FE4 @ =0x030031E4
	ldr r6, [r0]
	cmp r6, #0x7f
	bhi _08003FDE
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08003FEC
_08003FDE:
	movs r0, #1
	rsbs r0, r0, #0
	b _080041B2
	.align 2, 0
_08003FE4: .4byte 0x030031E4
_08003FE8:
	movs r0, #0
	b _080041B2
_08003FEC:
	ldr r0, _080040A4 @ =0x030031E8
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov sb, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r1, sb
	ldr r0, [r1, #8]
	add r0, sb
	mov r8, r0
	lsls r1, r6, #3
	ldr r0, _080040A8 @ =gOamBuffer
	adds r4, r1, r0
	ldr r2, [sp, #0x18]
	lsls r0, r2, #5
	ldr r5, _080040AC @ =0x06010000
	adds r5, r0, r5
	str r5, [sp, #0x10]
	movs r0, #0
	mov sl, r0
	movs r7, #0
	movs r1, #0
	str r1, [sp, #0x14]
	mov r2, sb
	ldrh r2, [r2, #2]
	cmp sl, r2
	blo _08004042
	b _080041A2
_08004042:
	mov r0, ip
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #2
	str r0, [sp, #0x20]
_0800404C:
	mov r0, r8
	str r0, [sp, #0xc]
	ldrh r1, [r4, #6]
	str r1, [sp, #0x1c]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4]
	str r1, [r4, #4]
	ldrh r2, [r4, #2]
	mov ip, r2
	mov r0, ip
	lsls r5, r0, #0x17
	asrs r5, r5, #0x17
	movs r6, #0
	ldrsb r6, [r4, r6]
	ldr r1, [sp, #4]
	adds r6, r6, r1
	ldr r2, [sp]
	adds r5, r5, r2
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800408A
	cmp r6, #0xa0
	bgt _0800408A
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r6, r0
	bge _080040B0
_0800408A:
	movs r0, #0xa0
	strb r0, [r4]
	ldrb r2, [r4, #1]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #1]
	ldrb r0, [r4, #3]
	ands r1, r0
	strb r1, [r4, #3]
	subs r4, #8
	b _0800418C
	.align 2, 0
_080040A4: .4byte 0x030031E8
_080040A8: .4byte gOamBuffer
_080040AC: .4byte 0x06010000
_080040B0:
	ldr r0, [sp, #8]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #1]
	ldr r2, [sp, #0x10]
	adds r2, r2, r7
	str r2, [sp, #0x10]
	ldrb r0, [r4, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	ldr r0, [sp, #0x20]
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x48]
	adds r0, r2, r0
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r1, _0800412C @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	ldr r2, _08004130 @ =0xFFFFFE00
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	orrs r0, r5
	strh r0, [r4, #2]
	strb r6, [r4]
	ldr r2, [sp, #0x18]
	add r2, sl
	ldr r5, _08004134 @ =0x000003FF
	adds r0, r5, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r5, _08004138 @ =0xFFFFFC00
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	lsrs r3, r3, #6
	cmp r3, #0
	beq _08004140
	ldr r0, _0800413C @ =0x080FB0B8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r1, sl
	adds r0, r1, r7
	b _08004150
	.align 2, 0
_0800412C: .4byte 0x000001FF
_08004130: .4byte 0xFFFFFE00
_08004134: .4byte 0x000003FF
_08004138: .4byte 0xFFFFFC00
_0800413C: .4byte 0x080FB0B8
_08004140:
	ldr r0, _080041C4 @ =0x080FB0C8
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r2, sl
	adds r0, r2, r7
_08004150:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r5, sp
	ldrh r5, [r5, #0x1c]
	strh r5, [r4, #6]
	ldr r1, _080041C8 @ =0x030031E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x7f
	bls _0800416A
	b _08003FE8
_0800416A:
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xa
	orrs r0, r1
	lsls r7, r7, #5
	lsls r0, r0, #5
	ldr r1, [sp, #0x50]
	adds r0, r1, r0
	ldr r1, [sp, #0x10]
	adds r2, r7, #0
	bl QueueCopy
_0800418C:
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
	adds r4, #8
	movs r5, #8
	add r8, r5
	mov r0, sb
	ldrh r0, [r0, #2]
	cmp r2, r0
	bhs _080041A2
	b _0800404C
_080041A2:
	ldr r0, _080041CC @ =0x030031E8
	ldr r1, [r0]
	add r1, sl
	str r1, [r0]
	ldr r1, [sp, #0x18]
	lsls r0, r1, #5
	ldr r2, _080041D0 @ =0x06010000
	adds r0, r0, r2
_080041B2:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080041C4: .4byte 0x080FB0C8
_080041C8: .4byte 0x030031E4
_080041CC: .4byte 0x030031E8
_080041D0: .4byte 0x06010000

	thumb_func_start sub_080041D4
sub_080041D4: @ 0x080041D4
	push {lr}
	bl sub_080041E0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080041E0
sub_080041E0: @ 0x080041E0
	ldr r0, _080041FC @ =0x030031E4
	movs r1, #0
	str r1, [r0]
	ldr r0, _08004200 @ =0x030031E8
	str r1, [r0]
	ldr r0, _08004204 @ =0x030031F4
	str r1, [r0]
	ldr r0, _08004208 @ =0x030031E0
	str r1, [r0]
	ldr r0, _0800420C @ =0x030031EC
	str r1, [r0]
	ldr r0, _08004210 @ =0x030031F0
	str r1, [r0]
	bx lr
	.align 2, 0
_080041FC: .4byte 0x030031E4
_08004200: .4byte 0x030031E8
_08004204: .4byte 0x030031F4
_08004208: .4byte 0x030031E0
_0800420C: .4byte 0x030031EC
_08004210: .4byte 0x030031F0

	thumb_func_start sub_08004214
sub_08004214: @ 0x08004214
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r3, #2]
	cmp r0, r1
	bhs _08004228
	movs r0, #0
	b _08004282
_08004228:
	ldr r0, [r3, #8]
	adds r3, r3, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	ldrh r0, [r3, #4]
	ldrh r1, [r4]
	cmp r0, r1
	bhi _08004240
	movs r0, #0
	strh r0, [r4]
_08004240:
	ldr r0, [r3, #8]
	adds r2, r3, r0
	ldrh r5, [r4]
	lsls r0, r5, #2
	adds r2, r2, r0
	movs r7, #0
	ldrh r1, [r6]
	ldrh r0, [r2, #2]
	cmp r0, r1
	bhi _0800427C
	adds r0, r5, #1
	strh r0, [r4]
	strh r7, [r6]
	ldrh r0, [r3, #4]
	ldrh r1, [r4]
	cmp r0, r1
	bhi _08004280
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0800426C
	strh r7, [r4]
	b _08004280
_0800426C:
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r6]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r4]
	movs r7, #1
	b _08004280
_0800427C:
	adds r0, r1, #1
	strh r0, [r6]
_08004280:
	adds r0, r7, #0
_08004282:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08004288
sub_08004288: @ 0x08004288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrh r0, [r2, #2]
	cmp r0, r3
	blo _08004332
	ldr r0, [r2, #4]
	adds r6, r2, r0
	ldr r1, [r2, #8]
	adds r1, r2, r1
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r4, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r6, r0
	ldr r0, [r6, #8]
	adds r4, r6, r0
	ldr r7, [sp, #0x24]
	movs r5, #0
	movs r3, #0
	ldrh r0, [r6, #2]
	cmp r3, r0
	bhs _08004332
	ldr r2, _08004308 @ =0x080FB0D8
	mov sl, r2
	ldr r0, _0800430C @ =0x080FB0E8
	mov sb, r0
_080042DE:
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r4, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	mov r2, r8
	adds r1, r2, r0
	adds r7, r7, r5
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08004310
	ldrb r0, [r4, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	add r0, sl
	b _08004318
	.align 2, 0
_08004308: .4byte 0x080FB0D8
_0800430C: .4byte 0x080FB0E8
_08004310:
	ldrb r0, [r4, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	add r0, sb
_08004318:
	ldr r5, [r0]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r5, #0
	str r3, [sp]
	bl QueueCopy
	ldr r3, [sp]
	adds r3, #1
	adds r4, #8
	ldrh r0, [r6, #2]
	cmp r3, r0
	blo _080042DE
_08004332:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004344
sub_08004344: @ 0x08004344
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	ldr r0, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _0800436C @ =0x030031F4
	ldr r3, [r6]
	cmp r3, #0x31
	bls _08004370
	movs r0, #0
	b _0800440C
	.align 2, 0
_0800436C: .4byte 0x030031F4
_08004370:
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _080043B8 @ =0x03003200
	adds r2, r0, r1
	adds r0, r3, #1
	str r0, [r6]
	mov r0, r8
	str r0, [r2, #8]
	str r5, [r2, #0xc]
	movs r1, #0
	mov r0, ip
	strh r0, [r2, #0x10]
	strh r7, [r2, #0x12]
	adds r0, r2, #0
	adds r0, #0x22
	strb r4, [r0]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #0x1c]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r2, #0x18]
	str r1, [r2]
	str r1, [r2, #4]
	ldr r0, _080043BC @ =0x030031F0
	ldr r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080043CC
	ldr r0, _080043C0 @ =0x030031EC
	str r2, [r0]
	str r2, [r3]
	str r1, [r2]
	str r1, [r2, #4]
	b _0800440A
	.align 2, 0
_080043B8: .4byte 0x03003200
_080043BC: .4byte 0x030031F0
_080043C0: .4byte 0x030031EC
_080043C4:
	str r2, [r6]
	str r2, [r1]
	str r1, [r2, #4]
	b _0800440A
_080043CC:
	ldr r0, _080043D4 @ =0x030031EC
	ldr r1, [r0]
	adds r6, r0, #0
	b _080043DA
	.align 2, 0
_080043D4: .4byte 0x030031EC
_080043D8:
	ldr r1, [r1, #4]
_080043DA:
	cmp r1, #0
	beq _08004400
	ldr r0, [r1, #0xc]
	cmp r0, r5
	bge _080043D8
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, r4
	blo _080043D8
	ldr r0, [r1]
	cmp r0, #0
	beq _080043C4
	str r2, [r0, #4]
	str r1, [r2, #4]
	ldr r0, [r1]
	str r0, [r2]
	str r2, [r1]
	b _0800440A
_08004400:
	ldr r0, [r3]
	str r2, [r0, #4]
	str r0, [r2]
	str r1, [r2, #4]
	str r2, [r3]
_0800440A:
	adds r0, r2, #0
_0800440C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08004418
sub_08004418: @ 0x08004418
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, _08004438 @ =0x030031F4
	ldr r2, [r3]
	cmp r2, #0x31
	bls _0800443C
	movs r0, #0
	b _08004490
	.align 2, 0
_08004438: .4byte 0x030031F4
_0800443C:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0800447C @ =0x03003200
	adds r1, r0, r1
	adds r0, r2, #1
	str r0, [r3]
	str r7, [r1, #8]
	mov r0, ip
	str r0, [r1, #0xc]
	strh r6, [r1, #0x10]
	strh r4, [r1, #0x12]
	adds r0, r1, #0
	adds r0, #0x22
	strb r5, [r0]
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x1c]
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r1, #0x18]
	ldr r3, _08004480 @ =0x030031F0
	ldr r2, [r3]
	cmp r2, #0
	beq _08004484
	str r1, [r2, #4]
	str r2, [r1]
	movs r0, #0
	str r0, [r1, #4]
	str r1, [r3]
	b _0800448E
	.align 2, 0
_0800447C: .4byte 0x03003200
_08004480: .4byte 0x030031F0
_08004484:
	ldr r0, _08004498 @ =0x030031EC
	str r1, [r0]
	str r1, [r3]
	str r2, [r1]
	str r2, [r1, #4]
_0800448E:
	adds r0, r1, #0
_08004490:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004498: .4byte 0x030031EC

	thumb_func_start sub_0800449C
sub_0800449C: @ 0x0800449C
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _080044D8 @ =0x030031EC
	ldr r5, [r0]
	cmp r5, #0
	beq _080044CE
_080044A8:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldrh r2, [r5, #0x10]
	ldrh r3, [r5, #0x12]
	adds r4, r5, #0
	adds r4, #0x22
	ldrb r4, [r4]
	str r4, [sp]
	ldr r4, [r5, #0x1c]
	str r4, [sp, #4]
	ldr r4, [r5, #0x14]
	str r4, [sp, #8]
	ldr r4, [r5, #0x18]
	str r4, [sp, #0xc]
	bl sub_08003518
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _080044A8
_080044CE:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080044D8: .4byte 0x030031EC

	thumb_func_start sub_080044DC
sub_080044DC: @ 0x080044DC
	ldrh r0, [r0, #2]
	subs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_080044E4
sub_080044E4: @ 0x080044E4
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	ldr r6, _08004520 @ =gBgRegsBuffer
	mov ip, r6
	lsrs r2, r2, #0xa
	orrs r0, r2
	lsrs r1, r1, #8
	orrs r0, r1
	mov r1, ip
	adds r1, #0x40
	strh r0, [r1]
	lsrs r4, r4, #8
	orrs r3, r4
	mov r0, ip
	adds r0, #0x42
	strh r3, [r0]
	adds r0, #2
	strh r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004520: .4byte gBgRegsBuffer

	thumb_func_start sub_08004524
sub_08004524: @ 0x08004524
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r4, _08004548 @ =gBgRegsBuffer
	lsrs r1, r1, #0x14
	orrs r0, r1
	lsrs r2, r2, #0x10
	orrs r0, r2
	lsrs r3, r3, #0xc
	orrs r0, r3
	strh r0, [r4, #0x3c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004548: .4byte gBgRegsBuffer

	thumb_func_start sub_0800454C
sub_0800454C: @ 0x0800454C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r1, _080045C0 @ =0x03003C90
	movs r0, #0
	stm r1!, {r0}
	ldr r2, _080045C4 @ =gMapLayer_03003910
	str r0, [r2, #8]
	movs r3, #1
	adds r5, r2, #0
	movs r2, #0
	adds r4, r5, #0
	adds r4, #0x18
	movs r6, #0x14
	mov r8, r1
_0800456C:
	movs r0, #0x80
	lsls r0, r0, #4
	str r2, [sp]
	str r3, [sp, #4]
	bl Alloc
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	adds r7, r5, #0
	adds r7, #8
	adds r0, r6, r7
	ldr r2, [sp]
	str r2, [r0]
	strh r2, [r4]
	strh r2, [r4, #2]
	adds r4, #0x14
	adds r6, #0x14
	ldr r3, [sp, #4]
	adds r3, #1
	cmp r3, #3
	bls _0800456C
	movs r1, #0
	adds r0, r7, #0
	subs r0, #8
	str r1, [r0, #0x54]
	adds r0, #0x6c
	strh r1, [r0]
	bl sub_0801702C
	adds r1, r7, #0
	adds r1, #0x60
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080045C0: .4byte 0x03003C90
_080045C4: .4byte gMapLayer_03003910

	thumb_func_start sub_080045C8
sub_080045C8: @ 0x080045C8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	movs r0, #0
	movs r1, #0
	bl SetBgMode
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	bl DisableDisplayLayers
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _0800466C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08004670 @ =0x00001C08
	orrs r0, r1
	str r0, [sp]
	movs r0, #0
	mov r1, sp
	bl SetBgCnt
	ldr r1, _08004674 @ =0x080FB0F8
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	movs r2, #0xe8
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	mov r1, sp
	strh r0, [r1]
	movs r0, #1
	bl SetBgCnt
	ldr r1, _08004678 @ =0x00001E02
	mov r0, sp
	strh r1, [r0]
	movs r0, #2
	mov r1, sp
	bl SetBgCnt
	ldr r1, _0800467C @ =0x00001F03
	mov r0, sp
	strh r1, [r0]
	movs r0, #3
	mov r1, sp
	bl SetBgCnt
	ldr r0, [r7]
	bl GetDataRecord
	adds r6, r0, #0
	ldrh r0, [r7]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r5, r0, #0
	movs r4, #0
_08004656:
	bl sub_08007670
	cmp r0, #0
	bne _08004666
	bl sub_080074CC
	cmp r0, #0
	beq _08004680
_08004666:
	bl ClearCopyQueue
	b _080046D8
	.align 2, 0
_0800466C: .4byte 0xFFFF0000
_08004670: .4byte 0x00001C08
_08004674: .4byte 0x080FB0F8
_08004678: .4byte 0x00001E02
_0800467C: .4byte 0x00001F03
_08004680:
	lsls r1, r4, #0xb
	adds r0, r6, r1
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08004656
	ldr r0, [r7]
	cmp r0, #0
	bge _080046C4
	bl sub_080076A8
	cmp r0, #0
	beq _080046B8
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0
	b _080046BC
_080046B8:
	movs r0, #0
	adds r1, r5, #0
_080046BC:
	movs r2, #0xf
	bl LoadPalette
	b _080046CE
_080046C4:
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0xf
	bl LoadPalette
_080046CE:
	ldr r1, _080046E0 @ =gPaletteBuffer
	movs r0, #0
	strh r0, [r1]
	bl WaitFrame
_080046D8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080046E0: .4byte gPaletteBuffer

	thumb_func_start sub_080046E4
sub_080046E4: @ 0x080046E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	adds r4, r1, #0
	adds r7, r4, #0
	adds r7, #0x10
	ldr r0, _08004810 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0800471A
	bl sub_08007638
	movs r5, #0x28
	cmp r0, #0
	bne _0800471C
_0800471A:
	ldrh r5, [r4, #2]
_0800471C:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	movs r0, #3
	subs r0, r0, r6
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r7, r7, r0
	ldr r3, _08004810 @ =gMapLayer_03003910
	lsls r2, r6, #2
	adds r0, r2, r6
	lsls r0, r0, #2
	mov r8, r0
	adds r5, r0, r3
	movs r1, #0
	strh r6, [r5, #0x10]
	adds r0, r3, #0
	adds r0, #8
	add r0, r8
	str r7, [r0]
	ldrh r0, [r4]
	strh r0, [r5, #0xc]
	ldrh r0, [r4, #2]
	strh r0, [r5, #0xe]
	strh r1, [r5]
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	strh r1, [r5, #6]
	lsls r4, r6, #1
	ldr r0, _08004814 @ =0x03003C90
	adds r2, r2, r0
	ldr r2, [r2]
	str r2, [sp, #8]
	mov r2, sb
	lsls r0, r2, #0xf
	str r0, [sp]
	mov r1, sl
	lsls r0, r1, #0xf
	str r0, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	movs r2, #0
	str r3, [sp, #0xc]
	bl sub_0800588C
	ldr r3, [sp, #0xc]
	adds r0, r3, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov sb, r4
	cmp r0, #0
	bge _0800478A
	adds r0, #7
_0800478A:
	asrs r0, r0, #3
	strh r0, [r5]
	adds r1, r3, #0
	adds r1, #0x5e
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0800479C
	adds r0, #7
_0800479C:
	asrs r0, r0, #3
	strh r0, [r5, #2]
	ldrh r5, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r5, r0
	bge _080047DE
	mov r6, r8
	adds r4, r3, #0
	adds r7, r1, #0
_080047B6:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, r4
	bl sub_08004A1C
	adds r0, r5, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r5, r0
	blt _080047B6
_080047DE:
	ldr r0, _08004818 @ =REG_BG0CNT
	add r0, sb
	ldrh r0, [r0]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r0, [sp, #8]
	bl QueueCopy
	bl WaitFrame
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004810: .4byte gMapLayer_03003910
_08004814: .4byte 0x03003C90
_08004818: .4byte REG_BG0CNT

	thumb_func_start sub_0800481C
sub_0800481C: @ 0x0800481C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	adds r6, r1, #0
	adds r6, #0x10
	movs r4, #0
	ldrsh r5, [r1, r4]
	movs r7, #2
	ldrsh r4, [r1, r7]
	muls r5, r4, r5
	movs r4, #3
	subs r4, r4, r0
	lsls r4, r4, #1
	muls r4, r5, r4
	adds r6, r6, r4
	ldr r4, _08004928 @ =gMapLayer_03003C00
	mov sl, r4
	lsls r5, r0, #2
	adds r4, r5, r0
	lsls r4, r4, #2
	mov sb, r4
	mov r7, sb
	add r7, sl
	movs r4, #0
	mov r8, r4
	strh r0, [r7, #0x10]
	mov r4, sl
	adds r4, #8
	add r4, sb
	str r6, [r4]
	ldrh r4, [r1]
	strh r4, [r7, #0xc]
	ldrh r1, [r1, #2]
	strh r1, [r7, #0xe]
	mov r1, r8
	strh r1, [r7]
	strh r1, [r7, #2]
	lsls r4, r0, #1
	ldr r0, _0800492C @ =0x03003C90
	adds r5, r5, r0
	ldr r5, [r5]
	str r5, [sp, #8]
	lsrs r2, r2, #1
	str r2, [sp]
	lsrs r3, r3, #1
	str r3, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	movs r2, #1
	bl sub_0800588C
	mov r0, sl
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0800489E
	adds r0, #7
_0800489E:
	asrs r0, r0, #3
	strh r0, [r7]
	mov r1, sl
	adds r1, #0x5e
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080048B0
	adds r0, #7
_080048B0:
	asrs r0, r0, #3
	strh r0, [r7, #2]
	ldrh r6, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r8, r4
	cmp r6, r0
	bge _080048F4
	mov r7, sb
	mov r4, sl
	adds r5, r1, #0
_080048CC:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, r4
	bl sub_08004A1C
	adds r0, r6, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r6, r0
	blt _080048CC
_080048F4:
	ldr r0, _08004930 @ =REG_BG0CNT
	add r0, r8
	ldrh r0, [r0]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r0, [sp, #8]
	bl QueueCopy
	bl WaitFrame
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004928: .4byte gMapLayer_03003C00
_0800492C: .4byte 0x03003C90
_08004930: .4byte REG_BG0CNT

	thumb_func_start sub_08004934
sub_08004934: @ 0x08004934
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r2, _08004A18 @ =0x03003C90
	ldrh r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov ip, r0
	ldr r7, [r6, #8]
	lsrs r4, r1, #0x10
	cmp r1, #0
	bge _08004956
	movs r4, #0
_08004956:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _0800495E
	movs r3, #0
_0800495E:
	mov r2, sp
	lsls r4, r4, #0x10
	movs r1, #0xff
	lsls r0, r1, #0x10
	ands r0, r4
	asrs r0, r0, #0x13
	strh r0, [r2]
	mov r0, sp
	lsls r2, r3, #0x10
	lsls r1, r1, #0x10
	ands r1, r2
	asrs r1, r1, #0x13
	strh r1, [r0, #2]
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x15
	bls _08004986
	movs r5, #0x15
_08004986:
	asrs r1, r4, #0x13
	lsls r1, r1, #0x10
	asrs r0, r2, #0x13
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	add ip, r0
	lsrs r1, r1, #0xf
	adds r7, r7, r1
	movs r4, #0
	ldrh r0, [r6, #0xc]
	adds r1, r2, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, r5
	bhs _080049DA
	mov r3, sp
_080049B2:
	movs r0, #2
	ldrsh r1, [r3, r0]
	lsls r1, r1, #6
	add r1, ip
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	ldrh r0, [r6, #0xc]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, r5
	blo _080049B2
_080049DA:
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #2]
	cmp r4, #0x14
	bhi _08004A0E
	mov r3, sp
_080049E6:
	movs r0, #2
	ldrsh r1, [r3, r0]
	lsls r1, r1, #6
	add r1, ip
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	ldrh r0, [r6, #0xc]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, #0x14
	bls _080049E6
_08004A0E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004A18: .4byte 0x03003C90

	thumb_func_start sub_08004A1C
sub_08004A1C: @ 0x08004A1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r2, _08004ADC @ =0x03003C90
	ldrh r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	ldr r7, [r6, #8]
	lsrs r2, r1, #0x10
	cmp r1, #0
	bge _08004A42
	movs r2, #0
_08004A42:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _08004A4A
	movs r4, #0
_08004A4A:
	mov r3, sp
	lsls r2, r2, #0x10
	movs r1, #0xff
	lsls r0, r1, #0x10
	ands r0, r2
	asrs r0, r0, #0x13
	strh r0, [r3]
	mov r0, sp
	lsls r4, r4, #0x10
	lsls r1, r1, #0x10
	ands r1, r4
	asrs r1, r1, #0x13
	strh r1, [r0, #2]
	ldrh r3, [r0]
	movs r0, #0x20
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sp
	lsls r1, r1, #5
	strh r1, [r0, #2]
	asrs r2, r2, #0x13
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	asrs r4, r4, #0x13
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r0, [r6, #0xc]
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	cmp r5, #0
	beq _08004AB2
	lsls r0, r4, #1
	adds r0, r7, r0
	mov r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r2, sp
	movs r3, #2
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	lsls r1, r1, #1
	add r1, r8
	adds r2, r5, #0
	bl CpuSet
_08004AB2:
	adds r0, r5, r4
	lsls r0, r0, #1
	adds r0, r7, r0
	mov r1, sp
	movs r2, #2
	ldrsh r1, [r1, r2]
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0x20
	subs r2, r2, r5
	ldr r3, _08004AE0 @ =0x001FFFFF
	ands r2, r3
	bl CpuSet
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004ADC: .4byte 0x03003C90
_08004AE0: .4byte 0x001FFFFF

	thumb_func_start sub_08004AE4
sub_08004AE4: @ 0x08004AE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _08004B18 @ =gBgRegsBuffer
	str r0, [sp, #4]
	bl sub_08007544
	adds r1, r0, #0
	cmp r1, #0
	beq _08004B20
	lsls r1, r7, #2
	adds r2, r1, r7
	lsls r2, r2, #2
	ldr r3, _08004B1C @ =gMapLayer_03003C00
	b _08004B28
	.align 2, 0
_08004B18: .4byte gBgRegsBuffer
_08004B1C: .4byte gMapLayer_03003C00
_08004B20:
	lsls r1, r7, #2
	adds r2, r1, r7
	lsls r2, r2, #2
	ldr r3, _08004C38 @ =gMapLayer_03003910
_08004B28:
	adds r6, r2, r3
	str r1, [sp, #0xc]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r2, _08004C38 @ =gMapLayer_03003910
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r1, [r1]
	cmp r1, #7
	bne _08004B74
	adds r1, r2, #0
	adds r1, #0x6c
	ldrh r2, [r1]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	bne _08004B74
	cmp r7, #3
	bne _08004B74
	bl sub_08007544
	adds r1, r0, #0
	cmp r1, #0
	bne _08004B74
	movs r3, #0
	mov r8, r3
_08004B74:
	ldr r2, _08004C38 @ =gMapLayer_03003910
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r1, [r1]
	cmp r1, #9
	bne _08004B9C
	adds r1, r2, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	cmp r1, #0x11
	bne _08004B9C
	cmp r7, #3
	bne _08004B9C
	bl sub_08007544
	adds r1, r0, #0
	cmp r1, #0
	bne _08004B9C
	movs r1, #0
	mov r8, r1
_08004B9C:
	ldr r1, [r6, #8]
	cmp r1, #0
	bne _08004BA4
	b _08004DC2
_08004BA4:
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	adds r2, r4, #0
	str r1, [sp, #0x10]
	cmp r4, #0
	bge _08004BB2
	adds r2, r4, #7
_08004BB2:
	asrs r1, r2, #3
	ldrh r2, [r6]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r3, r1, #0x10
	adds r2, r3, #0
	mov sl, r1
	cmp r3, #0
	bge _08004BCC
	adds r2, r3, #7
_08004BCC:
	asrs r1, r2, #3
	ldrh r2, [r6, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r1, r5, #0x10
	asrs r5, r1, #0x10
	str r1, [sp, #0x14]
	cmp r5, #0
	ble _08004C3C
	adds r4, #0xf1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08004934
	subs r4, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0x18]
	lsls r3, r7, #1
	str r3, [sp, #8]
	cmp r2, r1
	bge _08004C94
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	adds r5, r1, #0
_08004C12:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	subs r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	mov r3, sl
	asrs r2, r3, #0x10
	bl sub_08004934
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r5
	blt _08004C12
	b _08004C94
	.align 2, 0
_08004C38: .4byte gMapLayer_03003910
_08004C3C:
	mov r1, r8
	lsls r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r2, r7, #1
	str r2, [sp, #8]
	cmp r5, #0
	bge _08004C94
	subs r4, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08004934
	rsbs r1, r5, #0
	adds r4, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _08004C94
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	adds r5, r1, #0
_08004C72:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	adds r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	mov r3, sl
	asrs r2, r3, #0x10
	bl sub_08004934
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r5
	blt _08004C72
_08004C94:
	ldr r1, [sp, #0x18]
	asrs r4, r1, #0x10
	cmp r4, #0
	ble _08004CEC
	lsrs r7, r1, #0x10
	ldr r2, [sp, #0x10]
	ldr r3, _08004CE8 @ =0xFFF80000
	adds r5, r2, r3
	asrs r1, r5, #0x10
	movs r0, #0xa1
	lsls r0, r0, #0x10
	add r0, sl
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08004A1C
	movs r2, #0
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _08004D36
	mov r8, r4
	adds r7, r1, #0
_08004CC4:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #3
	mov r0, r8
	subs r2, r0, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	asrs r1, r5, #0x10
	bl sub_08004A1C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r7
	blt _08004CC4
	b _08004D36
	.align 2, 0
_08004CE8: .4byte 0xFFF80000
_08004CEC:
	cmp r4, #0
	bge _08004D36
	ldr r1, [sp, #0x10]
	ldr r2, _08004DD4 @ =0xFFF80000
	adds r7, r1, r2
	asrs r1, r7, #0x10
	mov r3, sl
	asrs r5, r3, #0x10
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08004A1C
	rsbs r1, r4, #0
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _08004D36
	mov sb, r5
	mov r8, r1
	adds r5, r7, #0
_08004D16:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #3
	add r2, sb
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	asrs r1, r5, #0x10
	bl sub_08004A1C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r8
	blt _08004D16
_08004D36:
	ldr r2, [sp, #8]
	ldr r3, _08004DD8 @ =REG_BG0CNT
	adds r1, r2, r3
	ldrh r1, [r1]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _08004D5E
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bne _08004D5E
	ldr r2, [sp]
	cmp r2, #0
	beq _08004D6E
_08004D5E:
	ldr r0, _08004DDC @ =0x03003C90
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
_08004D6E:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _08004D7A
	ldr r2, [sp]
	cmp r2, #0
	beq _08004D88
_08004D7A:
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0x10
	cmp r1, #0
	bge _08004D84
	adds r1, #7
_08004D84:
	asrs r1, r1, #3
	strh r1, [r6]
_08004D88:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _08004D94
	ldr r2, [sp]
	cmp r2, #0
	beq _08004DA2
_08004D94:
	mov r3, sl
	asrs r1, r3, #0x10
	cmp r1, #0
	bge _08004D9E
	adds r1, #7
_08004D9E:
	asrs r1, r1, #3
	strh r1, [r6, #2]
_08004DA2:
	ldrh r1, [r6, #0x10]
	lsls r1, r1, #2
	ldr r2, [sp, #4]
	adds r2, r2, r1
	str r2, [sp, #4]
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0x10
	movs r2, #0xff
	ands r1, r2
	ldr r3, [sp, #4]
	strh r1, [r3]
	mov r3, sl
	asrs r1, r3, #0x10
	ands r1, r2
	ldr r2, [sp, #4]
	strh r1, [r2, #2]
_08004DC2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004DD4: .4byte 0xFFF80000
_08004DD8: .4byte REG_BG0CNT
_08004DDC: .4byte 0x03003C90

	thumb_func_start sub_08004DE0
sub_08004DE0: @ 0x08004DE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r6, _08004E08 @ =gMapLayer_03003910
	ldr r0, [r6, #0x78]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08004E04
	ldr r4, _08004E0C @ =0x03003BD0
	adds r0, r4, #0
	bl IsThreadInList
	adds r1, r0, #0
	cmp r1, #0
	beq _08004E10
_08004E04:
	movs r0, #0
	b _08004EE0
	.align 2, 0
_08004E08: .4byte gMapLayer_03003910
_08004E0C: .4byte 0x03003BD0
_08004E10:
	ldr r0, _08004E64 @ =sub_08005278
	str r0, [r4, #0xc]
	ldr r0, _08004E68 @ =0x03003B9C
	str r0, [r4, #0x10]
	str r1, [r4, #0x20]
	movs r0, #0x50
	str r0, [r4, #8]
	str r1, [r4, #0x24]
	adds r0, r6, #0
	adds r0, #0x68
	strh r7, [r0]
	adds r0, #4
	mov r1, r8
	strh r1, [r0]
	ldr r1, _08004E6C @ =0x080FB0F8
	mov r0, r8
	lsls r4, r0, #2
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #5
	adds r4, r4, r0
	adds r1, #0x10
	adds r4, r4, r1
	ldr r0, [r4]
	bl GetDataRecord
	adds r5, r6, #0
	adds r5, #0x8c
	str r0, [r5]
	adds r1, r7, #0
	bl sub_080045C8
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08004E70
	ldr r0, [r5]
	adds r0, #0x10
	str r0, [r6, #0x50]
	b _08004E86
	.align 2, 0
_08004E64: .4byte sub_08005278
_08004E68: .4byte 0x03003B9C
_08004E6C: .4byte 0x080FB0F8
_08004E70:
	adds r4, r6, #0
_08004E72:
	ldr r0, [r5]
	adds r0, #0x10
	bl LZ77DecompressAlloc
	str r0, [r4, #0x50]
	bl WaitFrame
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08004E72
_08004E86:
	ldr r2, _08004EEC @ =gMapLayer_03003910
	ldr r3, [r2, #0x50]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #2
	ldrsh r0, [r3, r4]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r3, r0
	str r0, [r2, #0x54]
	adds r4, r2, #0
	cmp r7, #8
	bne _08004EBA
	ldr r0, _08004EF0 @ =0x080FB0F8
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, r8
	bne _08004EBA
	movs r0, #0x14
	strh r0, [r3, #2]
_08004EBA:
	ldrh r2, [r3]
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	strh r2, [r0]
	ldrh r0, [r3, #2]
	adds r2, r4, #0
	adds r2, #0x5a
	strh r0, [r2]
	str r1, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x5c
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08004EF4 @ =0x03003BD0
	bl CreateThread
	movs r0, #1
_08004EE0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004EEC: .4byte gMapLayer_03003910
_08004EF0: .4byte 0x080FB0F8
_08004EF4: .4byte 0x03003BD0

	thumb_func_start sub_08004EF8
sub_08004EF8: @ 0x08004EF8
	push {r4, r5, r6, lr}
	ldr r5, _08004F30 @ =gMapLayer_03003C00
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldr r4, _08004F34 @ =0x080FB0F8
	ldr r0, [r4, #0x10]
	bl GetDataRecord
	adds r6, r5, #0
	adds r6, #0x8c
	str r0, [r6]
	movs r1, #0
	bl sub_080045C8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08004F38
	ldr r0, [r6]
	adds r0, #0x10
	b _08004F40
	.align 2, 0
_08004F30: .4byte gMapLayer_03003C00
_08004F34: .4byte 0x080FB0F8
_08004F38:
	ldr r0, [r6]
	adds r0, #0x10
	bl LZ77DecompressAlloc
_08004F40:
	str r0, [r5, #0x50]
	ldr r3, _08004FA8 @ =gMapLayer_03003C00
	ldr r2, [r3, #0x50]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r4, #2
	ldrsh r0, [r2, r4]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r2, r0
	str r0, [r3, #0x54]
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x58
	movs r5, #0
	strh r1, [r0]
	ldrh r0, [r2, #2]
	adds r1, r3, #0
	adds r1, #0x5a
	strh r0, [r1]
	str r5, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x5c
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	ldr r4, _08004FAC @ =0x03003BA0
	ldr r0, _08004FB0 @ =sub_080055F8
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x50
	str r0, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl CreateThread
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08004FA8: .4byte gMapLayer_03003C00
_08004FAC: .4byte 0x03003BA0
_08004FB0: .4byte sub_080055F8

	thumb_func_start sub_08004FB4
sub_08004FB4: @ 0x08004FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	beq _08005078
	ldr r0, _0800506C @ =gMapLayer_03003C00
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r0, [r0]
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _08005070 @ =0x080FB0F8
	ldr r2, _08005074 @ =0x06007000
	mov sb, r2
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r6, r1, r2
	adds r7, r0, #4
	movs r5, #0
_08004FEC:
	ldrh r0, [r7]
	cmp r0, #0
	beq _0800503A
	ldr r2, _0800506C @ =gMapLayer_03003C00
	adds r0, r2, #0
	adds r0, #0x84
	adds r3, r5, r0
	ldrh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3]
	ldrh r0, [r7]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _08005024
	movs r4, #0
	strh r4, [r3]
	adds r0, r2, #0
	adds r0, #0x7c
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08005024
	strh r4, [r1]
_08005024:
	adds r0, r2, #0
	adds r0, #0x7c
	adds r0, r5, r0
	ldrh r0, [r0]
	lsls r0, r0, #8
	adds r0, r6, r0
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl QueueCopy
_0800503A:
	movs r0, #0x80
	lsls r0, r0, #3
	add sb, r0
	adds r6, r6, r0
	adds r7, #2
	adds r5, #2
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #3
	bls _08004FEC
	bl sub_0800F298
	cmp r0, #0
	bne _0800505A
	b _08005198
_0800505A:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	b _08005198
	.align 2, 0
_0800506C: .4byte gMapLayer_03003C00
_08005070: .4byte 0x080FB0F8
_08005074: .4byte 0x06007000
_08005078:
	ldr r0, _080050B8 @ =gMapLayer_03003910
	adds r5, r0, #0
	adds r5, #0x68
	ldrh r0, [r5]
	cmp r0, #0
	bne _08005086
	b _08005198
_08005086:
	cmp r0, #8
	bne _08005094
	bl sub_08007638
	cmp r0, #0
	beq _08005094
	b _08005198
_08005094:
	ldrh r0, [r5]
	cmp r0, #4
	bne _080050BC
	bl sub_08007510
	cmp r0, #0
	bne _080050DC
	movs r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #0x10
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	b _080050FE
	.align 2, 0
_080050B8: .4byte gMapLayer_03003910
_080050BC:
	cmp r0, #6
	bne _080050EE
	bl sub_08007510
	cmp r0, #0
	bne _080050DC
	movs r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #7
	bl sub_080044E4
	b _080050FE
_080050DC:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	b _080050FE
_080050EE:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
_080050FE:
	ldr r4, _080051A8 @ =gMapLayer_03003910
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r0, [r0]
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	mov r8, r0
	adds r7, r4, #0
	mov sl, r7
	ldr r2, _080051AC @ =0x06007000
	mov sb, r2
	adds r4, #0x7c
	movs r0, #0xe0
	lsls r0, r0, #7
	adds r6, r1, r0
	movs r5, #0
_08005124:
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r5, r0
	ldr r1, _080051B0 @ =0x080FB0FC
	adds r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #0
	beq _08005182
	adds r0, r7, #0
	adds r0, #0x84
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _08005166
	movs r1, #0
	strh r1, [r2]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08005166
	strh r1, [r4]
_08005166:
	mov r0, sl
	adds r0, #0x84
	adds r0, r5, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005182
	ldrh r0, [r4]
	lsls r0, r0, #8
	adds r0, r6, r0
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl QueueCopy
_08005182:
	movs r2, #0x80
	lsls r2, r2, #3
	add sb, r2
	adds r4, #2
	adds r6, r6, r2
	adds r5, #2
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	bls _08005124
_08005198:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080051A8: .4byte gMapLayer_03003910
_080051AC: .4byte 0x06007000
_080051B0: .4byte 0x080FB0FC

	thumb_func_start sub_080051B4
sub_080051B4: @ 0x080051B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08005214 @ =gMapLayer_03003910
	movs r1, #0x6c
	adds r1, r1, r7
	mov r8, r1
	strh r0, [r1]
	ldr r4, _08005218 @ =0x080FB0F8
	lsls r0, r0, #2
	adds r5, r7, #0
	adds r5, #0x68
	ldrh r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	adds r4, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetDataRecord
	adds r6, r7, #0
	adds r6, #0x8c
	str r0, [r6]
	ldr r0, [r7, #0x50]
	bl Free
	mov r3, r8
	ldrh r1, [r3]
	lsls r1, r1, #2
	ldrh r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r4
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _0800521C
	ldr r0, [r6]
	adds r0, #0x10
	str r0, [r7, #0x50]
	b _08005234
	.align 2, 0
_08005214: .4byte gMapLayer_03003910
_08005218: .4byte 0x080FB0F8
_0800521C:
	adds r4, r7, #0
	adds r5, r6, #0
_08005220:
	ldr r0, [r5]
	adds r0, #0x10
	bl LZ77DecompressAlloc
	str r0, [r4, #0x50]
	bl WaitFrame
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08005220
_08005234:
	ldr r4, _08005274 @ =gMapLayer_03003910
	ldr r2, [r4, #0x50]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r2, r0
	str r0, [r4, #0x54]
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	movs r3, #0
	strh r1, [r0]
	ldrh r0, [r2, #2]
	adds r1, r4, #0
	adds r1, #0x5a
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x5e
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005274: .4byte gMapLayer_03003910

	thumb_func_start sub_08005278
sub_08005278: @ 0x08005278
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r1, _08005294 @ =gMapLayer_03003910
	movs r0, #1
	str r0, [r1, #0x78]
	movs r0, #0xa
	add r0, sp
	mov r8, r0
	b _0800529C
	.align 2, 0
_08005294: .4byte gMapLayer_03003910
_08005298:
	bl WaitFrame
_0800529C:
	ldr r0, _080052EC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080052B4
	bl sub_08007544
	cmp r0, #0
	beq _08005298
_080052B4:
	bl GetMultiplayerId
	str r0, [sp, #0xc]
	bl sub_08007544
	cmp r0, #0
	beq _080052F4
	ldr r3, _080052F0 @ =gPlayers
	movs r0, #0xd4
	ldr r1, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x58
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	add r1, sp, #8
	strh r0, [r1]
	adds r3, #0x5c
	adds r2, r2, r3
	ldr r0, [r2]
	asrs r0, r0, #0xf
	subs r0, #0xb
	mov r2, r8
	strh r0, [r2]
	b _080052FC
	.align 2, 0
_080052EC: .4byte 0x030063D8
_080052F0: .4byte gPlayers
_080052F4:
	add r0, sp, #8
	mov r1, r8
	bl sub_080216E0
_080052FC:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0]
	subs r0, #0xf
	strh r0, [r1]
	mov r3, r8
	ldrh r0, [r3]
	subs r0, #0xb
	strh r0, [r3]
	bl WaitFrame
	bl WaitFrame
	ldr r4, _0800537C @ =gMapLayer_03003910
	ldr r1, [r4, #0x50]
	add r0, sp, #8
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	add r0, sp, #8
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	add r0, sp, #8
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_080046E4
	bl sub_08001F98
	cmp r0, #0
	bne _0800539E
	ldr r1, _08005380 @ =0x080FB0F8
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	cmp r0, r1
	bne _0800538C
	cmp r2, #8
	beq _08005384
	movs r0, #0xb
	bl PlayBGM
	b _0800539E
	.align 2, 0
_0800537C: .4byte gMapLayer_03003910
_08005380: .4byte 0x080FB0F8
_08005384:
	movs r0, #0xc
	bl PlayBGM
	b _0800539E
_0800538C:
	cmp r2, #8
	bhi _08005398
	adds r0, r2, #0
	bl PlayBGM
	b _0800539E
_08005398:
	movs r0, #8
	bl PlayBGM
_0800539E:
	ldr r1, _080053AC @ =gMapLayer_03003910
	mov sb, r1
	add r7, sp, #8
	ldr r2, _080053B0 @ =gPlayers
	str r2, [sp, #0x10]
	b _08005566
	.align 2, 0
_080053AC: .4byte gMapLayer_03003910
_080053B0: .4byte gPlayers
_080053B4:
	mov r3, sb
	ldr r0, [r3, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080053C2
	b _0800553C
_080053C2:
	bl sub_08001F98
	cmp r0, #0
	bne _080053D0
	movs r0, #2
	bl FadeOutBGM
_080053D0:
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	ldr r0, _0800543C @ =0x000514C8
	bl _08000400
	mov r1, sb
	ldr r0, [r1, #0x78]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080053F4
	b _0800557E
_080053F4:
	bl sub_080074CC
	cmp r0, #0
	beq _080053FE
	b _0800557E
_080053FE:
	bl sub_08001F98
	cmp r0, #0
	bne _0800547A
	ldr r1, _08005440 @ =0x080FB0F8
	mov r0, sb
	adds r0, #0x68
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #1
	mov r1, sb
	adds r1, #0x6c
	ldrh r1, [r1]

	thumb_func_start sub_08005420
sub_08005420: @ 0x08005420
	cmp r0, r1
	bne _08005468
	cmp r2, #8
	beq _08005448
	ldr r0, _08005444 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #1
	beq _0800546C
	movs r0, #0xb
	bl PlayBGM
	b _0800547A
	.align 2, 0
_0800543C: .4byte 0x000514C8
_08005440: .4byte 0x080FB0F8
_08005444: .4byte 0x030063D8
_08005448:
	ldr r0, _0800545C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #1
	bne _08005460
	movs r0, #0xd
	bl PlayBGM
	b _0800547A
	.align 2, 0
_0800545C: .4byte 0x030063D8
_08005460:
	movs r0, #0xc
	bl PlayBGM
	b _0800547A
_08005468:
	cmp r2, #8
	bhi _08005474
_0800546C:
	adds r0, r2, #0
	bl PlayBGM
	b _0800547A
_08005474:
	movs r0, #8
	bl PlayBGM
_0800547A:
	movs r0, #0xd4
	ldr r3, [sp, #0xc]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [sp, #0x10]
	adds r0, #0x58
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	strh r0, [r7]
	mov r2, r8
	ldr r0, _080055E8 @ =0x030045DC
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #0xf
	subs r0, #0xb
	strh r0, [r2]
	ldrh r1, [r7]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080054B0
	movs r0, #0
	strh r0, [r7]
_080054B0:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080054BE
	movs r0, #0
	strh r0, [r2]
_080054BE:
	ldrh r0, [r7]
	ldr r4, _080055EC @ =gMapLayer_03003910
	adds r1, r4, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	cmp r0, r1
	ble _080054D0
	strh r1, [r7]
_080054D0:
	adds r1, r4, #0
	adds r1, #0x5e
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080054E0
	movs r0, #0
	strh r0, [r1]
_080054E0:
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrh r0, [r0]
	subs r0, #0x14
	cmp r1, r0
	ble _080054F0
	strh r0, [r2]
_080054F0:
	ldr r1, [r4, #0x50]
	ldrh r2, [r7]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	ldrh r2, [r7]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_080046E4
	ldr r1, [r4, #0x50]
	ldrh r2, [r7]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_080046E4
	movs r1, #1
	mov sl, r1
	ldr r0, [r4, #0x78]
	subs r1, #0xe
	ands r0, r1
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r1, [r1]
	bl sub_080045C8
	movs r0, #6
	bl sub_0800F308
_0800553C:
	movs r6, #1
	ldr r4, _080055F0 @ =0x0300396E
	subs r5, r4, #2
_08005542:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	mov r3, sl
	bl sub_08004AE4
	adds r6, #1
	cmp r6, #3
	bls _08005542
	movs r0, #0
	mov sl, r0
	bl sub_08004FB4
	bl WaitFrame
_08005566:
	mov r1, sb
	ldr r0, [r1, #0x78]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	bne _0800557E
	bl sub_080074CC
	adds r4, r0, #0
	cmp r4, #0
	bne _0800557E
	b _080053B4
_0800557E:
	movs r6, #1
	ldr r2, _080055EC @ =gMapLayer_03003910
	movs r7, #0
_08005584:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0800559E
	strh r7, [r1, #0xe]
	strh r7, [r1, #0xc]
	strh r7, [r1, #2]
	strh r7, [r1]
_0800559E:
	ldr r4, [r2, #0x78]
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _080055BE
	ldr r1, _080055F4 @ =0x03003C90
	lsls r0, r6, #2
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _080055BE
	str r2, [sp, #0x14]
	bl Free
	str r4, [r5]
	ldr r2, [sp, #0x14]
_080055BE:
	adds r6, #1
	cmp r6, #3
	bls _08005584
	ldr r4, _080055EC @ =gMapLayer_03003910
	ldr r0, [r4, #0x50]
	bl Free
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r4, #0x78]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080055E8: .4byte 0x030045DC
_080055EC: .4byte gMapLayer_03003910
_080055F0: .4byte 0x0300396E
_080055F4: .4byte 0x03003C90

	thumb_func_start sub_080055F8
sub_080055F8: @ 0x080055F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08005614 @ =gMapLayer_03003C00
	movs r0, #1
	str r0, [r1, #0x78]
	movs r0, #2
	add r0, sp
	mov r8, r0
	b _0800561C
	.align 2, 0
_08005614: .4byte gMapLayer_03003C00
_08005618:
	bl WaitFrame
_0800561C:
	ldr r0, _0800566C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08005634
	bl sub_08007544
	cmp r0, #0
	beq _08005618
_08005634:
	bl GetMultiplayerId
	str r0, [sp, #4]
	bl sub_08007544
	cmp r0, #0
	beq _08005674
	ldr r3, _08005670 @ =gPlayers
	movs r0, #0xd4
	ldr r1, [sp, #4]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x58
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	mov r1, sp
	strh r0, [r1]
	adds r3, #0x5c
	adds r2, r2, r3
	ldr r0, [r2]
	asrs r0, r0, #0xf
	subs r0, #0xa
	mov r2, r8
	strh r0, [r2]
	b _0800567C
	.align 2, 0
_0800566C: .4byte 0x030063D8
_08005670: .4byte gPlayers
_08005674:
	mov r0, sp
	mov r1, r8
	bl sub_080216E0
_0800567C:
	ldr r4, _080056C4 @ =gMapLayer_03003C00
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_0800481C
	bl sub_08001F98
	cmp r0, #0
	bne _080056BC
	movs r0, #0xa
	bl PlayBGM
_080056BC:
	ldr r1, _080056C8 @ =0x03003F88
	mov sb, r1
	b _080057EE
	.align 2, 0
_080056C4: .4byte gMapLayer_03003C00
_080056C8: .4byte 0x03003F88
_080056CC:
	ldr r0, [r4, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080057C4
	bl sub_08001F98
	cmp r0, #0
	bne _080056E4
	movs r0, #2
	bl FadeOutBGM
_080056E4:
	ldr r0, _0800586C @ =0x000514C9
	bl _08000400
	ldr r0, [r4, #0x78]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080056F6
	b _08005802
_080056F6:
	bl sub_080074CC
	adds r5, r0, #0
	cmp r5, #0
	beq _08005702
	b _08005802
_08005702:
	ldr r0, _08005870 @ =0x00120002
	bl GetDataRecord
	adds r1, r0, #0
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	mov r0, sb
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	mov r2, sb
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	lsls r0, r0, #0xa
	orrs r1, r0
	ldr r3, _08005874 @ =0x03002B32
	strh r1, [r3]
	movs r0, #0xd4
	ldr r2, [sp, #4]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r3, _08005878 @ =gPlayers
	adds r0, r1, r3
	strh r5, [r0, #0x16]
	mov r2, sp
	adds r0, r3, #0
	adds r0, #0x58
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xf
	subs r0, #0xf
	strh r0, [r2]
	ldr r0, _0800587C @ =0x030045DC
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #0xf
	subs r0, #0xa
	mov r1, r8
	strh r0, [r1]
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #1
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #2
	bl sub_0800481C
	ldr r1, [r4, #0x50]
	mov r0, sp
	ldrh r2, [r0]
	mov r0, r8
	ldrh r3, [r0]
	movs r0, #3
	bl sub_0800481C
	movs r1, #1
	mov sl, r1
	bl sub_08001F98
	cmp r0, #0
	bne _080057A8
	movs r0, #0xa
	bl PlayBGM
_080057A8:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0
	bl sub_080045C8
	ldr r0, [r4, #0x78]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x78]
	movs r0, #6
	bl sub_0800F308
_080057C4:
	movs r6, #1
	ldr r5, _08005880 @ =0x03003C5E
	subs r7, r5, #2
_080057CA:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r5, r3]
	mov r3, sl
	bl sub_08004AE4
	adds r6, #1
	cmp r6, #3
	bls _080057CA
	movs r0, #0
	mov sl, r0
	bl sub_08004FB4
	bl WaitFrame
_080057EE:
	ldr r0, [r4, #0x78]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08005802
	bl sub_080074CC
	cmp r0, #0
	bne _08005802
	b _080056CC
_08005802:
	movs r6, #1
	ldr r2, _08005884 @ =gMapLayer_03003C00
	movs r7, #0
_08005808:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08005822
	strh r7, [r1, #0xe]
	strh r7, [r1, #0xc]
	strh r7, [r1, #2]
	strh r7, [r1]
_08005822:
	ldr r4, [r2, #0x78]
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _08005842
	ldr r1, _08005888 @ =0x03003C90
	lsls r0, r6, #2
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _08005842
	str r2, [sp, #8]
	bl Free
	str r4, [r5]
	ldr r2, [sp, #8]
_08005842:
	adds r6, #1
	cmp r6, #3
	bls _08005808
	ldr r4, _08005884 @ =gMapLayer_03003C00
	ldr r0, [r4, #0x50]
	bl Free
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r4, #0x78]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800586C: .4byte 0x000514C9
_08005870: .4byte 0x00120002
_08005874: .4byte 0x03002B32
_08005878: .4byte gPlayers
_0800587C: .4byte 0x030045DC
_08005880: .4byte 0x03003C5E
_08005884: .4byte gMapLayer_03003C00
_08005888: .4byte 0x03003C90

	thumb_func_start sub_0800588C
sub_0800588C: @ 0x0800588C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	ldr r1, [r0]
	lsls r1, r1, #4
	lsrs r5, r1, #0x10
	mov r2, sl
	ldr r1, [r2]
	lsls r1, r1, #4
	lsrs r4, r1, #0x10
	cmp r6, #0
	beq _08005930
	ldr r3, _0800592C @ =gMapLayer_03003C00
	ldr r2, [r3, #0x78]
	movs r1, #0x10
	ands r2, r1
	lsls r7, r5, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r2, #0
	bne _080058E2
	adds r2, r3, #0
	adds r2, #0x60
	asrs r1, r7, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x78
	adds r2, r3, #0
	adds r2, #0x5c
	strh r1, [r2]
	adds r2, #6
	asrs r1, r4, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x58
	adds r2, r3, #0
	adds r2, #0x5e
	strh r1, [r2]
_080058E2:
	adds r4, r3, #0
	adds r4, #0x5c
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080058F2
	movs r1, #0
	strh r1, [r4]
_080058F2:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _08005906
	strh r1, [r4]
_08005906:
	adds r4, r3, #0
	adds r4, #0x5e
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08005916
	movs r1, #0
	strh r1, [r4]
_08005916:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #3
	cmp r2, r1
	ble _080059FC
	b _080059FA
	.align 2, 0
_0800592C: .4byte gMapLayer_03003C00
_08005930:
	ldr r3, _080059D4 @ =gMapLayer_03003910
	ldr r1, [r3, #0x78]
	movs r2, #0x10
	mov ip, r2
	ands r1, r2
	lsls r7, r5, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r1, #0
	bne _08005966
	adds r2, r3, #0
	adds r2, #0x60
	asrs r1, r7, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x78
	adds r2, r3, #0
	adds r2, #0x5c
	strh r1, [r2]
	adds r2, #6
	asrs r1, r4, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x58
	adds r2, r3, #0
	adds r2, #0x5e
	strh r1, [r2]
_08005966:
	adds r5, r3, #0
	adds r5, #0x5c
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _08005974
	strh r6, [r5]
_08005974:
	movs r1, #0
	ldrsh r2, [r5, r1]
	adds r1, r3, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _08005988
	strh r1, [r5]
_08005988:
	adds r4, r3, #0
	adds r4, #0x5e
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08005996
	strh r6, [r4]
_08005996:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #3
	cmp r2, r1
	ble _080059AA
	strh r1, [r4]
_080059AA:
	ldr r1, [r3, #0x78]
	mov r2, ip
	ands r1, r2
	cmp r1, #0
	bne _080059D8
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r5]
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x64
	strh r1, [r2]
	subs r2, #2
	ldrh r1, [r4]
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x66
	strh r1, [r2]
	b _080059FC
	.align 2, 0
_080059D4: .4byte gMapLayer_03003910
_080059D8:
	adds r2, r3, #0
	adds r2, #0x60
	adds r1, r3, #0
	adds r1, #0x64
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	strh r1, [r5]
	movs r1, #0x62
	adds r1, r1, r3
	mov ip, r1
	adds r1, r3, #0
	adds r1, #0x66
	ldrh r1, [r1]
	mov r2, ip
	ldrh r2, [r2]
	adds r1, r1, r2
_080059FA:
	strh r1, [r4]
_080059FC:
	mov r3, sb
	ldr r2, [r3]
	ldr r1, _08005A28 @ =0x00000FFF
	ands r2, r1
	mov r4, sl
	ldr r3, [r4]
	ands r3, r1
	asrs r1, r7, #4
	adds r2, r2, r1
	mov r1, sb
	str r2, [r1]
	mov r2, r8
	asrs r1, r2, #4
	adds r3, r3, r1
	str r3, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005A28: .4byte 0x00000FFF

	thumb_func_start sub_08005A2C
sub_08005A2C: @ 0x08005A2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	asrs r1, r1, #0xf
	mov r8, r1
	asrs r2, r2, #0xf
	mov ip, r2
	cmp r3, #0
	beq _08005A90
	ldr r0, _08005A8C @ =gMapLayer_03003C00
	ldr r6, [r0, #0x54]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, #0x58
	ldrh r0, [r0]
	mov sb, r0
_08005A54:
	movs r1, #2
	rsbs r1, r1, #0
	adds r2, r3, #1
	mov r0, r8
	adds r4, r0, r3
	mov r7, sp
	adds r0, r7, r3
	adds r3, r0, #2
_08005A64:
	mov r7, ip
	adds r0, r7, r1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	strb r0, [r3]
	adds r3, #5
	adds r1, #1
	cmp r1, #2
	ble _08005A64
	adds r3, r2, #0
	cmp r3, #2
	ble _08005A54
	b _08005AD4
	.align 2, 0
_08005A8C: .4byte gMapLayer_03003C00
_08005A90:
	ldr r0, _08005AE8 @ =gMapLayer_03003910
	ldr r6, [r0, #0x54]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, #0x58
	ldrh r0, [r0]
	mov sb, r0
_08005A9E:
	movs r1, #2
	rsbs r1, r1, #0
	adds r2, r3, #1
	mov r0, r8
	adds r4, r0, r3
	mov r7, sp
	adds r0, r7, r3
	adds r3, r0, #2
_08005AAE:
	mov r7, ip
	adds r0, r7, r1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	strb r0, [r3]
	adds r3, #5
	adds r1, #1
	cmp r1, #2
	ble _08005AAE
	adds r3, r2, #0
	cmp r3, #2
	ble _08005A9E
_08005AD4:
	mov r0, sp
	ldrb r0, [r0, #0xc]
	cmp r0, #0xd
	bls _08005ADE
	b _08005ED8
_08005ADE:
	lsls r0, r0, #2
	ldr r1, _08005AEC @ =_08005AF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005AE8: .4byte gMapLayer_03003910
_08005AEC: .4byte _08005AF0
_08005AF0: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005B28 @ case 1
	.4byte _08005D1E @ case 2
	.4byte _08005D1E @ case 3
	.4byte _08005D54 @ case 4
	.4byte _08005D54 @ case 5
	.4byte _08005D88 @ case 6
	.4byte _08005D88 @ case 7
	.4byte _08005DC0 @ case 8
	.4byte _08005DC0 @ case 9
	.4byte _08005DF4 @ case 10
	.4byte _08005E28 @ case 11
	.4byte _08005E60 @ case 12
	.4byte _08005E98 @ case 13
_08005B28:
	cmp r5, #7
	bls _08005B2E
	b _08005ED8
_08005B2E:
	lsls r0, r5, #2
	ldr r1, _08005B38 @ =_08005B3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005B38: .4byte _08005B3C
_08005B3C: @ jump table
	.4byte _08005B5C @ case 0
	.4byte _08005C94 @ case 1
	.4byte _08005B98 @ case 2
	.4byte _08005CBE @ case 3
	.4byte _08005BEC @ case 4
	.4byte _08005CDE @ case 5
	.4byte _08005C44 @ case 6
	.4byte _08005CFE @ case 7
_08005B5C:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #1
	beq _08005B66
	b _08005ED0
_08005B66:
	mov r0, sp
	ldrb r0, [r0, #7]
	subs r0, #6
	cmp r0, #5
	bls _08005B72
	b _08005ED4
_08005B72:
	lsls r0, r0, #2
	ldr r1, _08005B7C @ =_08005B80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005B7C: .4byte _08005B80
_08005B80: @ jump table
	.4byte _08005D88 @ case 0
	.4byte _08005D88 @ case 1
	.4byte _08005DC0 @ case 2
	.4byte _08005DC0 @ case 3
	.4byte _08005DF4 @ case 4
	.4byte _08005E28 @ case 5
_08005B98:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	beq _08005BA4
_08005BA0:
	movs r0, #3
	b _08005EDA
_08005BA4:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	subs r0, #2
	cmp r0, #0xa
	bls _08005BB0
	b _08005ED4
_08005BB0:
	lsls r0, r0, #2
	ldr r1, _08005BBC @ =_08005BC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005BBC: .4byte _08005BC0
_08005BC0: @ jump table
	.4byte _08005D1E @ case 0
	.4byte _08005D1E @ case 1
	.4byte _08005ED4 @ case 2
	.4byte _08005ED4 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005DC0 @ case 6
	.4byte _08005DC0 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005E28 @ case 9
	.4byte _08005E60 @ case 10
_08005BEC:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #1
	beq _08005BF8
_08005BF4:
	movs r0, #5
	b _08005EDA
_08005BF8:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	subs r0, #2
	cmp r0, #0xb
	bls _08005C04
	b _08005ED4
_08005C04:
	lsls r0, r0, #2
	ldr r1, _08005C10 @ =_08005C14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005C10: .4byte _08005C14
_08005C14: @ jump table
	.4byte _08005D1E @ case 0
	.4byte _08005D1E @ case 1
	.4byte _08005D54 @ case 2
	.4byte _08005D54 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005ED4 @ case 6
	.4byte _08005ED4 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005ED4 @ case 9
	.4byte _08005E60 @ case 10
	.4byte _08005E98 @ case 11
_08005C44:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	beq _08005C50
_08005C4C:
	movs r0, #7
	b _08005EDA
_08005C50:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	subs r0, #4
	cmp r0, #9
	bls _08005C5C
	b _08005ED4
_08005C5C:
	lsls r0, r0, #2
	ldr r1, _08005C68 @ =_08005C6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005C68: .4byte _08005C6C
_08005C6C: @ jump table
	.4byte _08005D54 @ case 0
	.4byte _08005D54 @ case 1
	.4byte _08005D88 @ case 2
	.4byte _08005D88 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005DF4 @ case 6
	.4byte _08005ED4 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005E98 @ case 9
_08005C94:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08005C9E
	b _08005DBC
_08005C9E:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _08005CB2
	mov r0, sp
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08005CB0
	b _08005ED4
_08005CB0:
	b _08005DBC
_08005CB2:
	mov r0, sp
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08005CBC
	b _08005ED0
_08005CBC:
	b _08005DBC
_08005CBE:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08005CC8
	b _08005ECC
_08005CC8:
	mov r0, sp
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08005CD2
	b _08005ECC
_08005CD2:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08005CDC
	b _08005ED4
_08005CDC:
	b _08005BF4
_08005CDE:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08005CE8
	b _08005E94
_08005CE8:
	mov r0, sp
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _08005CF2
	b _08005E94
_08005CF2:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08005CFC
	b _08005ED4
_08005CFC:
	b _08005C4C
_08005CFE:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	bne _08005D08
	b _08005E5C
_08005D08:
	mov r0, sp
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _08005D12
	b _08005E5C
_08005D12:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08005D1C
	b _08005ED4
_08005D1C:
	b _08005C4C
_08005D1E:
	cmp r5, #7
	bls _08005D24
	b _08005ED8
_08005D24:
	lsls r0, r5, #2
	ldr r1, _08005D30 @ =_08005D34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D30: .4byte _08005D34
_08005D34: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005DBC @ case 2
	.4byte _08005DBC @ case 3
	.4byte _08005E94 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005D54:
	cmp r5, #7
	bls _08005D5A
	b _08005ED8
_08005D5A:
	lsls r0, r5, #2
	ldr r1, _08005D64 @ =_08005D68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D64: .4byte _08005D68
_08005D68: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ECC @ case 4
	.4byte _08005E5C @ case 5
	.4byte _08005E5C @ case 6
	.4byte _08005ED8 @ case 7
_08005D88:
	cmp r5, #7
	bls _08005D8E
	b _08005ED8
_08005D8E:
	lsls r0, r5, #2
	ldr r1, _08005D98 @ =_08005D9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D98: .4byte _08005D9C
_08005D9C: @ jump table
	.4byte _08005DBC @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005E94 @ case 6
	.4byte _08005E94 @ case 7
_08005DBC:
	movs r0, #2
	b _08005EDA
_08005DC0:
	cmp r5, #7
	bls _08005DC6
	b _08005ED8
_08005DC6:
	lsls r0, r5, #2
	ldr r1, _08005DD0 @ =_08005DD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005DD0: .4byte _08005DD4
_08005DD4: @ jump table
	.4byte _08005E5C @ case 0
	.4byte _08005ECC @ case 1
	.4byte _08005ECC @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005DF4:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E04 @ =_08005E08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E04: .4byte _08005E08
_08005E08: @ jump table
	.4byte _08005BA0 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005BF4 @ case 5
	.4byte _08005BF4 @ case 6
	.4byte _08005ED4 @ case 7
_08005E28:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E38 @ =_08005E3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E38: .4byte _08005E3C
_08005E3C: @ jump table
	.4byte _08005E5C @ case 0
	.4byte _08005ED4 @ case 1
	.4byte _08005BF4 @ case 2
	.4byte _08005BF4 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005E5C:
	movs r0, #8
	b _08005EDA
_08005E60:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E70 @ =_08005E74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E70: .4byte _08005E74
_08005E74: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED0 @ case 1
	.4byte _08005ED0 @ case 2
	.4byte _08005ED4 @ case 3
	.4byte _08005E94 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005E94:
	movs r0, #6
	b _08005EDA
_08005E98:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005EA8 @ =_08005EAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005EA8: .4byte _08005EAC
_08005EAC: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ECC @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005ED0 @ case 6
	.4byte _08005ED0 @ case 7
_08005ECC:
	movs r0, #4
	b _08005EDA
_08005ED0:
	movs r0, #1
	b _08005EDA
_08005ED4:
	movs r0, #0
	b _08005EDA
_08005ED8:
	adds r0, r5, #1
_08005EDA:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08005EE8:
	.byte 0x00, 0x04, 0x00, 0x0C, 0x81, 0x00, 0x09, 0x18
	.byte 0x89, 0x00, 0x05, 0x48, 0x09, 0x18, 0x88, 0x68, 0x00, 0x28, 0x04, 0xD0, 0x00, 0x20, 0xC8, 0x81
	.byte 0x88, 0x81, 0x48, 0x80, 0x08, 0x80, 0x70, 0x47, 0x10, 0x39, 0x00, 0x03, 0x00, 0x04, 0x00, 0x0C
	.byte 0x81, 0x00, 0x09, 0x18, 0x89, 0x00, 0x05, 0x48, 0x09, 0x18, 0x88, 0x68, 0x00, 0x28, 0x04, 0xD0
	.byte 0x00, 0x20, 0xC8, 0x81, 0x88, 0x81, 0x48, 0x80, 0x08, 0x80, 0x70, 0x47, 0x00, 0x3C, 0x00, 0x03
	.byte 0x06, 0x4A, 0x53, 0x6D, 0x00, 0x04, 0x09, 0x04, 0xC0, 0x14, 0xC9, 0x14, 0x58, 0x32, 0x12, 0x88
	.byte 0x51, 0x43, 0x40, 0x18, 0x40, 0x00, 0x1B, 0x18, 0x18, 0x1C, 0x70, 0x47, 0x10, 0x39, 0x00, 0x03
