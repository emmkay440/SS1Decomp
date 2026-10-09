	.include "asm/macros.inc"

	.syntax unified
	.text

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
	ldr r4, _0800257C @ =gUnknown_030031A8
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
_0800257C: .4byte gUnknown_030031A8
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
	ldr r5, _08002664 @ =gUnknown_030031A8
	mov r4, sl
	b _080026D4
	.align 2, 0
_08002664: .4byte gUnknown_030031A8
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
	ldr r1, _08002704 @ =gUnknown_030031A8
	movs r0, #2
	str r0, [r1]
_080026F0:
	ldr r0, _08002704 @ =gUnknown_030031A8
	ldr r0, [r0]
	cmp r0, #1
	beq _08002716
	cmp r0, #1
	blo _08002708
	cmp r0, #2
	beq _08002728
	b _08002356
	.align 2, 0
_08002704: .4byte gUnknown_030031A8
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
	ldr r1, _08002740 @ =gUnknown_03006920
	movs r0, #0
	strb r0, [r1]
	bl sub_0804C9C4
	b _08002356
	.align 2, 0
_08002740: .4byte gUnknown_03006920
