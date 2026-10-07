@ Game code (split further as it gets decompiled)

	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start RunThreads
RunThreads: @ 0x0800023C
	movs r3, #0
	str r3, [r0]
	str r3, [r0, #8]
	str r3, [r0, #0x14]
	str r3, [r0, #0x18]
	ldr r1, _08000268 @ =gThreadList
	str r0, [r1]
	ldr r1, _08000270 @ =gCurrentThread
	str r3, [r1]
	movs r3, #1
	str r3, [r0, #4]
	ldr r4, [r0, #0x10]
	subs r4, #0x30
	str r1, [r4, #0xc]
	str r2, [r4, #0x10]
	ldr r5, _080004B4 @ =ThreadExit
	str r5, [r4, #0x2c]
	str r4, [r0, #0x10]
	ldr r0, _0800026C @ =gThreadCount
	movs r3, #1
	str r3, [r0]
	b _080002E0
	.align 2, 0
_08000268: .4byte gThreadList
_0800026C: .4byte gThreadCount
_08000270: .4byte gCurrentThread

	thumb_func_start CreateThread
CreateThread: @ 0x08000274
	push {r4, r5, r6, lr}
	push {r0, r1}
	bl IsThreadInList
	adds r3, r0, #0
	pop {r0, r1}
	cmp r3, #1
	beq _080002D6
	ldr r4, [r0, #8]
	cmp r4, #0
	bne _0800028E
	adds r4, #1
	str r4, [r0, #8]
_0800028E:
	movs r6, #1
	str r6, [r0, #4]
	ldr r4, _080002D8 @ =gThreadList
	ldr r5, [r4]
_08000296:
	ldr r4, [r5, #8]
	ldr r6, [r0, #8]
	subs r4, r4, r6
	bpl _080002B4
	adds r4, r5, #0
	ldr r5, [r5]
	cmp r5, #0
	beq _080002A8
	b _08000296
_080002A8:
	adds r5, r4, #0
	str r0, [r5]
	movs r6, #0
	str r6, [r0]
	str r5, [r0, #0x18]
	b _080002BE
_080002B4:
	ldr r6, [r5, #0x18]
	str r0, [r6]
	str r6, [r0, #0x18]
	str r5, [r0]
	str r0, [r5, #0x18]
_080002BE:
	ldr r4, _080002DC @ =gThreadCount
	ldr r6, [r4]
	adds r6, #1
	str r6, [r4]
	ldr r4, [r0, #0x10]
	subs r4, #0x30
	str r1, [r4, #0xc]
	str r2, [r4, #0x10]
	ldr r5, _080004B8 @ =ThreadExit
	str r5, [r4, #0x2c]
	str r4, [r0, #0x10]
	movs r0, #0
_080002D6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080002D8: .4byte gThreadList
_080002DC: .4byte gThreadCount
_080002E0:
	ldr r0, _08000368 @ =gSchedulerStack
	mov r1, sp
	str r1, [r0]
_080002E6:
	ldr r0, _0800035C @ =gThreadList
	ldr r1, [r0]
	ldr r4, _08000360 @ =gCurrentThread
	str r1, [r4]
_080002EE:
	ldr r4, _08000360 @ =gCurrentThread
	ldr r0, [r4]
	ldr r1, [r0, #4]
	cmp r1, #1
	beq _08000302
	ldr r0, [r0]
	str r0, [r4]
	cmp r0, #0
	beq _08000340
	b _080002EE
_08000302:
	movs r1, #2
	str r1, [r0, #4]
	ldr r1, _08000364 @ =REG_VCOUNT
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	ldr r1, [r0, #0x10]
	mov sp, r1
	ldr r3, [r0, #0xc]
	mov lr, r3
	pop {r0, r1, r2}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	pop {r3}
	push {lr}
	mov lr, r3
	pop {pc}
_08000326:
	ldr r0, _08000364 @ =REG_VCOUNT
	ldrh r0, [r0]
	ldr r4, _08000360 @ =gCurrentThread
	ldr r4, [r4]
	ldrh r1, [r4, #0x1c]
	subs r0, r0, r1
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	cmp r0, #4
	beq _080002EE
	movs r0, #3
	str r0, [r4, #4]
	b _080002EE
_08000340:
	bl FrameUpdate
	ldr r4, _0800035C @ =gThreadList
	ldr r0, [r4]
_08000348:
	ldr r1, [r0, #4]
	cmp r1, #4
	beq _08000352
	movs r1, #1
	str r1, [r0, #4]
_08000352:
	ldr r0, [r0]
	cmp r0, #0
	beq _080002E6
	b _08000348
	.align 2, 0
_0800035C: .4byte gThreadList
_08000360: .4byte gCurrentThread
_08000364: .4byte REG_VCOUNT
_08000368: .4byte gSchedulerStack

	thumb_func_start ThreadExit
ThreadExit: @ 0x0800036C
	ldr r0, _080003B0 @ =gSchedulerStack
	ldr r0, [r0]
	mov sp, r0
	ldr r4, _080003A8 @ =gCurrentThread
	ldr r4, [r4]
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _08000384
	ldr r3, _080004BC @ =0x08000385
	mov lr, r3
	push {r1}
	pop {pc}
_08000384:
	ldr r0, [r4, #0x20]
	bl Free
	ldr r0, _080003AC @ =gThreadCount
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4]
	str r1, [r0]
	cmp r1, #0
	beq _080003A4
	str r0, [r1, #0x18]
	b _08000326
_080003A4:
	b _08000326
	.align 2, 0
_080003A8: .4byte gCurrentThread
_080003AC: .4byte gThreadCount
_080003B0: .4byte gSchedulerStack

	thumb_func_start KillThread
KillThread: @ 0x080003B4
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _080003CC
	ldr r3, _080004C0 @ =0x080003CD
	mov lr, r3
	push {r1}
	pop {pc}
	.align 2, 0
_080003C8:
	.byte 0x50, 0x1C, 0x00, 0x03
_080003CC:
	ldr r0, [r4, #0x20]
	bl Free
	ldr r0, _080003F8 @ =gThreadCount
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4]
	str r1, [r0]
	cmp r1, #0
	beq _080003EE
	str r0, [r1, #0x18]
	str r1, [r4]
	pop {r0, r1, r2, r3, r4, r5, r6, r7, pc}
_080003EE:
	str r0, [r4]
	pop {r0, r1, r2, r3, r4, r5, r6, r7, pc}
	.align 2, 0
_080003F4:
	.byte 0x44, 0x1C, 0x00, 0x03
_080003F8: .4byte gThreadCount

	thumb_func_start WaitFrame
WaitFrame: @ 0x080003FC
	movs r0, #1
	b _08000400
	.global _08000400
_08000400:
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	push {r1, r2, r3}
	ldr r1, _08000424 @ =gCurrentThread
	ldr r1, [r1]
	str r0, [r1, #0x14]
	mov r0, lr
	mov r2, sp
	str r0, [r1, #0xc]
	str r2, [r1, #0x10]
	movs r0, #4
	str r0, [r1, #4]
	ldr r0, _08000428 @ =gSchedulerStack
	ldr r0, [r0]
	mov sp, r0
	b _08000326
	.align 2, 0
_08000424: .4byte gCurrentThread
_08000428: .4byte gSchedulerStack

	thumb_func_start SignalEvent
SignalEvent: @ 0x0800042C
	movs r3, #0
	ldr r1, _08000448 @ =gThreadList
	ldr r1, [r1]
_08000432:
	ldr r2, [r1, #0x14]
	cmp r0, r2
	bne _0800043E
	str r3, [r1, #0x14]
	movs r2, #1
	str r2, [r1, #4]
_0800043E:
	ldr r1, [r1]
	cmp r1, #0
	bne _08000432
	bx lr
	.align 2, 0
_08000448: .4byte gThreadList

	thumb_func_start IsAnyThreadWaitingOn
IsAnyThreadWaitingOn: @ 0x0800044C
	movs r3, #0
	ldr r1, _0800046C @ =gThreadList
	ldr r1, [r1]
_08000452:
	ldr r2, [r1, #4]
	cmp r2, #4
	bne _08000462
	ldr r2, [r1, #0x14]
	cmp r0, r2
	bne _08000462
	movs r0, #1
	bx lr
_08000462:
	ldr r1, [r1]
	cmp r1, #0
	bne _08000452
	adds r0, r3, #0
	bx lr
	.align 2, 0
_0800046C: .4byte gThreadList

	thumb_func_start GetThreadCount
GetThreadCount: @ 0x08000470
	ldr r0, _08000478 @ =gThreadCount
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08000478: .4byte gThreadCount

	thumb_func_start IsThreadInList
IsThreadInList: @ 0x0800047C
	ldr r1, _08000494 @ =gThreadList
	ldr r1, [r1]
_08000480:
	cmp r0, r1
	beq _0800048E
	ldr r1, [r1]
	cmp r1, #0
	bne _08000480
	movs r0, #0
	b _08000490
_0800048E:
	movs r0, #1
_08000490:
	bx lr
	.align 2, 0
_08000494: .4byte gThreadList

	thumb_func_start GetCurrentThread
GetCurrentThread: @ 0x08000498
	ldr r1, _080004A0 @ =gCurrentThread
	ldr r0, [r1]
	bx lr
	.align 2, 0
_080004A0: .4byte gCurrentThread

	thumb_func_start sub_080004A4
sub_080004A4: @ 0x080004A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	bl Div
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
_080004B4: .4byte ThreadExit
_080004B8: .4byte ThreadExit
_080004BC: .4byte 0x08000385
_080004C0: .4byte 0x080003CD
_080004C4:
	.byte 0xF0, 0x0F, 0x2D, 0xE9, 0x01, 0xC3, 0xA0, 0xE3, 0x2C, 0xB0, 0x9F, 0xE5
	.byte 0x40, 0xA0, 0x8B, 0xE2, 0x01, 0x90, 0xA0, 0xE3, 0x00, 0x80, 0xA0, 0xE3, 0x08, 0x82, 0xCC, 0xE5
	.byte 0xFF, 0x00, 0x9A, 0xE8, 0xF0, 0x00, 0xAA, 0xE8, 0x0F, 0x00, 0xAA, 0xE8, 0x04, 0x00, 0x9B, 0xE5
	.byte 0x04, 0x80, 0x8B, 0xE5, 0x08, 0x92, 0xCC, 0xE5, 0xF0, 0x0F, 0xBD, 0xE8, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0xB0, 0x2E, 0x00, 0x03, 0x01, 0xC3, 0xA0, 0xE3, 0x12, 0xCE, 0x8C, 0xE2, 0x03, 0x00, 0x9C, 0xE8
	.byte 0x80, 0x0F, 0x2D, 0xE9, 0x00, 0xB1, 0x9F, 0xE5, 0xFE, 0x90, 0xA0, 0xE3, 0xFE, 0x9C, 0x89, 0xE2
	.byte 0xB8, 0x30, 0xDC, 0xE1, 0x40, 0x30, 0x03, 0xE2, 0x09, 0x30, 0xCB, 0xE5, 0x14, 0xA0, 0x9B, 0xE5
	.byte 0x01, 0x30, 0x9A, 0xE2, 0x09, 0x00, 0x00, 0xBA, 0x05, 0x00, 0x00, 0x1A, 0xBA, 0x90, 0xCC, 0xE1
	.byte 0x28, 0x80, 0x8B, 0xE2, 0x0C, 0x00, 0x98, 0xE8, 0x02, 0x70, 0xA0, 0xE1, 0x88, 0x00, 0x88, 0xE8
	.byte 0x02, 0x00, 0x00, 0xEA, 0x2C, 0x30, 0x9B, 0xE5, 0x8A, 0x20, 0x93, 0xE7, 0xBA, 0x20, 0xCC, 0xE1
	.byte 0x0B, 0x00, 0x5A, 0xE3, 0x01, 0xA0, 0x8A, 0xB2, 0x14, 0xA0, 0x8B, 0xB5, 0x63, 0x00, 0x2D, 0xE9
	.byte 0x03, 0x60, 0xA0, 0xE3, 0x18, 0x80, 0x8B, 0xE2, 0x06, 0x81, 0x88, 0xE0, 0x00, 0xA0, 0x98, 0xE5
	.byte 0x86, 0x30, 0xA0, 0xE1, 0xB3, 0x50, 0x9D, 0xE1, 0x09, 0x00, 0x55, 0xE1, 0x04, 0x00, 0x00, 0x1A
	.byte 0x09, 0x00, 0x5A, 0xE3, 0x02, 0x00, 0x00, 0xDA, 0x01, 0x00, 0xA0, 0xE3, 0x02, 0xA0, 0x40, 0xE2
	.byte 0x0A, 0x00, 0x00, 0xEA, 0x18, 0x00, 0x98, 0xE5, 0x8A, 0x30, 0xA0, 0xE1, 0xB3, 0x50, 0x80, 0xE1
	.byte 0x09, 0x00, 0x5A, 0xE3, 0x05, 0x00, 0x00, 0x1A, 0x28, 0x10, 0x98, 0xE5, 0x28, 0x00, 0x88, 0xE5
	.byte 0x18, 0x10, 0x88, 0xE5, 0x04, 0x30, 0x8B, 0xE2, 0x01, 0x00, 0xA0, 0xE3, 0x06, 0x00, 0xC3, 0xE7
	.byte 0x0B, 0x00, 0x5A, 0xE3, 0x01, 0xA0, 0x8A, 0xB2, 0x00, 0xA0, 0x88, 0xE5, 0x01, 0x60, 0x56, 0xE2
	.byte 0xE3, 0xFF, 0xFF, 0xAA, 0x00, 0x00, 0xDB, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0x0A
	.byte 0x28, 0x70, 0x9F, 0xE5, 0x00, 0x00, 0xA0, 0xE3, 0xB0, 0x00, 0xC7, 0xE1, 0xB8, 0x00, 0xDC, 0xE1
	.byte 0x80, 0x00, 0x80, 0xE3, 0xB8, 0x00, 0xCC, 0xE1, 0xC0, 0x00, 0xA0, 0xE3, 0xB0, 0x00, 0xC7, 0xE1
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0xE0, 0x0F, 0xBD, 0xE8, 0x1E, 0xFF, 0x2F, 0xE1, 0xB0, 0x2E, 0x00, 0x03
	.byte 0x0E, 0x01, 0x00, 0x04

	thumb_func_start AgbMain
AgbMain: @ 0x08000624
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r1, _08000720 @ =REG_WAITCNT
	ldr r2, _08000724 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xe0
	bl RegisterRamReset
	movs r5, #0
	str r5, [sp]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldr r2, _08000728 @ =0x05010000
	mov r0, sp
	bl CpuSet
	str r5, [sp, #4]
	add r0, sp, #4
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldr r2, _0800072C @ =0x05001F00
	bl CpuSet
	str r5, [sp, #8]
	add r0, sp, #8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08000730 @ =0x05006000
	bl CpuSet
	movs r6, #0xa0
	str r6, [sp, #0xc]
	add r0, sp, #0xc
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ldr r4, _08000734 @ =0x05000100
	adds r2, r4, #0
	bl CpuSet
	str r5, [sp, #0x10]
	add r0, sp, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r2, r4, #0
	bl CpuSet
	str r6, [sp, #0x14]
	add r0, sp, #0x14
	ldr r1, _08000738 @ =gOamBuffer
	adds r2, r4, #0
	bl CpuSet
	str r5, [sp, #0x18]
	add r0, sp, #0x18
	ldr r1, _0800073C @ =gPaletteBuffer
	adds r2, r4, #0
	bl CpuSet
	bl InitIntrState
	bl DisableInterrupts
	ldr r0, _08000740 @ =gPaletteBufferQueued
	strh r5, [r0]
	bl DisplayOff
	ldr r0, _08000744 @ =0x08052B1C
	ldr r1, _08000748 @ =gIntrTable
	ldr r2, _0800074C @ =REG_BG3CNT
	bl CpuSet
	ldr r0, _08000750 @ =IntrMain
	ldr r4, _08000754 @ =gIntrMainRam
	ldr r2, _08000758 @ =REG_IE
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0800075C @ =0x03007FFC
	str r4, [r0]
	bl InitHeap
	bl InitBgRegsBuffer
	bl InitCopyQueue
	bl InitVBlankState
	ldr r0, _08000760 @ =0x00001234
	bl SeedRandom
	bl EnableInterrupts
	movs r0, #1
	bl EnableIntr
	movs r0, #0x10
	movs r1, #8
	bl SetKeyRepeat
	bl m4aSoundInit
	bl m4aSoundVSyncOff
	ldr r4, _08000764 @ =gMainThread
	str r5, [r4]
	str r5, [r4, #8]
	ldr r0, _08000768 @ =GameMain
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl RunThreads
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000720: .4byte REG_WAITCNT
_08000724: .4byte 0x00004014
_08000728: .4byte 0x05010000
_0800072C: .4byte 0x05001F00
_08000730: .4byte 0x05006000
_08000734: .4byte 0x05000100
_08000738: .4byte gOamBuffer
_0800073C: .4byte gPaletteBuffer
_08000740: .4byte gPaletteBufferQueued
_08000744: .4byte 0x08052B1C
_08000748: .4byte gIntrTable
_0800074C: .4byte REG_BG3CNT
_08000750: .4byte IntrMain
_08000754: .4byte gIntrMainRam
_08000758: .4byte REG_IE
_0800075C: .4byte 0x03007FFC
_08000760: .4byte 0x00001234
_08000764: .4byte gMainThread
_08000768: .4byte GameMain

	thumb_func_start UpdateInput
UpdateInput: @ 0x0800076C
	push {r4, r5, lr}
	ldr r0, _080007B4 @ =gKeysPrev
	ldr r3, _080007B8 @ =gKeysHeld
	ldrh r2, [r3]
	strh r2, [r0]
	ldr r0, _080007BC @ =REG_KEYINPUT
	ldrh r1, [r0]
	ldr r4, _080007C0 @ =0x000003FF
	adds r0, r4, #0
	eors r1, r0
	strh r1, [r3]
	ldr r0, _080007C4 @ =gKeysNew
	adds r3, r1, #0
	bics r3, r2
	strh r3, [r0]
	movs r0, #0xf0
	adds r4, r0, #0
	ands r4, r1
	ands r0, r2
	cmp r0, r4
	bne _08000810
	ldr r3, _080007C8 @ =gKeyRepeatCounter
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	ldr r1, _080007CC @ =gKeyRepeatDelay
	ldrh r5, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	cmp r0, r1
	bne _080007D4
	ldr r0, _080007D0 @ =gKeysRepeat
	strh r4, [r0]
	b _0800081E
	.align 2, 0
_080007B4: .4byte gKeysPrev
_080007B8: .4byte gKeysHeld
_080007BC: .4byte REG_KEYINPUT
_080007C0: .4byte 0x000003FF
_080007C4: .4byte gKeysNew
_080007C8: .4byte gKeyRepeatCounter
_080007CC: .4byte gKeyRepeatDelay
_080007D0: .4byte gKeysRepeat
_080007D4:
	cmp r0, r1
	bls _08000804
	ldr r2, _080007F8 @ =gKeyRepeatTimer
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	ldr r1, _080007FC @ =gKeyRepeatRate
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08000804
	ldr r0, _08000800 @ =gKeysRepeat
	strh r4, [r0]
	movs r0, #0
	strh r0, [r2]
	strh r5, [r3]
	b _0800081E
	.align 2, 0
_080007F8: .4byte gKeyRepeatTimer
_080007FC: .4byte gKeyRepeatRate
_08000800: .4byte gKeysRepeat
_08000804:
	ldr r1, _0800080C @ =gKeysRepeat
	movs r0, #0
	strh r0, [r1]
	b _0800081E
	.align 2, 0
_0800080C: .4byte gKeysRepeat
_08000810:
	ldr r0, _08000824 @ =gKeysRepeat
	strh r3, [r0]
	ldr r2, _08000828 @ =gKeyRepeatCounter
	ldr r1, _0800082C @ =gKeyRepeatTimer
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2]
_0800081E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000824: .4byte gKeysRepeat
_08000828: .4byte gKeyRepeatCounter
_0800082C: .4byte gKeyRepeatTimer

	thumb_func_start Random
Random: @ 0x08000830
	push {r4, r5, r6, r7, lr}
	ldr r2, _08000888 @ =gRngState
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	eors r1, r0
	movs r0, #2
	ands r1, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	rsbs r0, r1, #0
	lsrs r0, r0, #0x1f
	movs r4, #0
	adds r5, r2, #0
	adds r6, r5, #0
	movs r7, #1
_0800084E:
	adds r3, r4, r6
	ldrb r2, [r3]
	lsrs r1, r2, #1
	lsls r0, r0, #7
	orrs r1, r0
	adds r0, r7, #0
	ands r0, r2
	strb r1, [r3]
	adds r4, #1
	cmp r4, #7
	ble _0800084E
	ldrb r2, [r5, #2]
	movs r1, #7
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	ldrb r2, [r5, #3]
	ands r1, r2
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000888: .4byte gRngState
_0800088C:
	.byte 0x70, 0x47, 0x00, 0x00
