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

	thumb_func_start DisplayOn
DisplayOn: @ 0x08000890
	push {lr}
	movs r0, #8
	bl SetDispStatFlags
	ldr r1, _080008B4 @ =gDispCnt
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r1]
	strh r0, [r2]
	bl EnableSoundVSync
	pop {r0}
	bx r0
	.align 2, 0
_080008B4: .4byte gDispCnt

	thumb_func_start DisplayOff
DisplayOff: @ 0x080008B8
	push {lr}
	movs r0, #0x18
	bl ClearDispStatFlags
	ldr r2, _080008DC @ =gDispCnt
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r2]
	strh r0, [r1]
	bl DisableSoundVSync
	pop {r0}
	bx r0
	.align 2, 0
_080008DC: .4byte gDispCnt

	thumb_func_start SetBgMode
SetBgMode: @ 0x080008E0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r4, _0800090C @ =gDispCnt
	movs r2, #7
	ands r0, r2
	ldrb r3, [r4]
	movs r2, #8
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r0
	strb r2, [r4]
	cmp r1, #0
	beq _08000906
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r4]
	strh r0, [r1]
_08000906:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800090C: .4byte gDispCnt

	thumb_func_start EnableDisplayLayers
EnableDisplayLayers: @ 0x08000910
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	movs r3, #0xf8
	lsls r3, r3, #0x15
	ands r3, r0
	lsrs r3, r3, #0x10
	ldr r4, _08000944 @ =gDispCnt
	ldrh r0, [r4]
	orrs r3, r0
	movs r0, #0xe0
	lsls r0, r0, #0x18
	ands r0, r1
	lsrs r1, r0, #0x10
	orrs r1, r3
	strh r1, [r4]
	cmp r2, #0
	beq _0800093C
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
_0800093C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000944: .4byte gDispCnt

	thumb_func_start DisableDisplayLayers
DisableDisplayLayers: @ 0x08000948
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	movs r3, #0xf8
	lsls r3, r3, #0x15
	ands r3, r0
	lsrs r3, r3, #0x10
	ldr r4, _08000980 @ =gDispCnt
	ldrh r0, [r4]
	adds r5, r0, #0
	bics r5, r3
	adds r3, r5, #0
	movs r0, #0xe0
	lsls r0, r0, #0x18
	ands r0, r1
	lsrs r0, r0, #0x10
	bics r3, r0
	strh r3, [r4]
	cmp r2, #0
	beq _08000978
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r3, [r0]
_08000978:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000980: .4byte gDispCnt

	thumb_func_start SetDispCntFlags
SetDispCntFlags: @ 0x08000984
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r5, r5, #0x10
	ldr r6, _080009D8 @ =gDispCnt
	rsbs r2, r2, #0
	lsrs r2, r2, #0x1f
	lsls r2, r2, #4
	ldrb r4, [r6]
	movs r3, #0x11
	rsbs r3, r3, #0
	ands r3, r4
	orrs r3, r2
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r3, r2
	orrs r3, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r6]
	cmp r5, #0
	beq _080009D2
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r6]
	strh r0, [r1]
_080009D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080009D8: .4byte gDispCnt

	thumb_func_start SetBgCnt
SetBgCnt: @ 0x080009DC
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r2, #0
	beq _08000A1E
	cmp r0, #1
	beq _08000A08
	cmp r0, #1
	bgt _080009F6
	cmp r0, #0
	beq _08000A00
	b _08000A1E
_080009F6:
	cmp r1, #2
	beq _08000A10
	cmp r1, #3
	beq _08000A18
	b _08000A1E
_08000A00:
	ldr r1, _08000A04 @ =REG_BG0CNT
	b _08000A1A
	.align 2, 0
_08000A04: .4byte REG_BG0CNT
_08000A08:
	ldr r1, _08000A0C @ =REG_BG1CNT
	b _08000A1A
	.align 2, 0
_08000A0C: .4byte REG_BG1CNT
_08000A10:
	ldr r1, _08000A14 @ =REG_BG2CNT
	b _08000A1A
	.align 2, 0
_08000A14: .4byte REG_BG2CNT
_08000A18:
	ldr r1, _08000A20 @ =REG_BG3CNT
_08000A1A:
	ldrh r0, [r2]
	strh r0, [r1]
_08000A1E:
	bx lr
	.align 2, 0
_08000A20: .4byte REG_BG3CNT

	thumb_func_start LoadPalette
LoadPalette: @ 0x08000A24
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, r1, #0
	lsls r3, r3, #5
	ldr r5, _08000A60 @ =gPaletteBuffer
	adds r3, r3, r5
	lsls r2, r2, #3
	ldr r1, _08000A64 @ =0x001FFFFF
	ands r2, r1
	adds r1, r3, #0
	bl CpuFastSet
	ldr r4, _08000A68 @ =gPaletteBufferQueued
	ldrh r0, [r4]
	cmp r0, #0
	bne _08000A58
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r5, #0
	bl QueueCopy
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_08000A58:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000A60: .4byte gPaletteBuffer
_08000A64: .4byte 0x001FFFFF
_08000A68: .4byte gPaletteBufferQueued

	thumb_func_start FlushPaletteBuffer
FlushPaletteBuffer: @ 0x08000A6C
	push {lr}
	ldr r0, _08000A80 @ =gPaletteBuffer
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl QueueCopy
	pop {r0}
	bx r0
	.align 2, 0
_08000A80: .4byte gPaletteBuffer

	thumb_func_start CopyBgRegsBuffer
CopyBgRegsBuffer: @ 0x08000A84
	push {lr}
	ldr r0, _08000A94 @ =gBgRegsBuffer
	ldr r1, _08000A98 @ =REG_BG0HOFS
	movs r2, #0x24
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08000A94: .4byte gBgRegsBuffer
_08000A98: .4byte REG_BG0HOFS

	thumb_func_start SeedRandom
SeedRandom: @ 0x08000A9C
	ldr r1, _08000AB0 @ =gRngState
	movs r0, #0xfa
	strb r0, [r1]
	movs r0, #0x88
	strb r0, [r1, #1]
	movs r0, #0x86
	strb r0, [r1, #2]
	movs r0, #4
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_08000AB0: .4byte gRngState

	thumb_func_start LZ77DecompressAlloc
LZ77DecompressAlloc: @ 0x08000AB4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	lsrs r0, r0, #8
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08000AC8
	adds r0, #4
	subs r0, r0, r1
_08000AC8:
	bl Alloc
	adds r4, r0, #0
	cmp r4, #0
	beq _08000ADA
	adds r0, r5, #0
	adds r1, r4, #0
	bl LZ77UnCompWram
_08000ADA:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start SetKeyRepeat
SetKeyRepeat: @ 0x08000AE4
	ldr r2, _08000AF0 @ =gKeyRepeatDelay
	strh r0, [r2]
	ldr r0, _08000AF4 @ =gKeyRepeatRate
	strh r1, [r0]
	bx lr
	.align 2, 0
_08000AF0: .4byte gKeyRepeatDelay
_08000AF4: .4byte gKeyRepeatRate

	thumb_func_start InitBgRegsBuffer
InitBgRegsBuffer: @ 0x08000AF8
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08000B20 @ =REG_DMA3SAD
	mov r0, sp
	str r0, [r1]
	ldr r2, _08000B24 @ =gBgRegsBuffer
	str r2, [r1, #4]
	ldr r0, _08000B28 @ =0x81000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x24]
	strh r0, [r2, #0x20]
	add sp, #4
	bx lr
	.align 2, 0
_08000B20: .4byte REG_DMA3SAD
_08000B24: .4byte gBgRegsBuffer
_08000B28: .4byte 0x81000002

	thumb_func_start EnableHBlankEffect
EnableHBlankEffect: @ 0x08000B2C
	push {r4, r5, r6, lr}
	ldr r1, _08000BD4 @ =gHBlankEffectTable
	str r0, [r1]
	ldr r2, _08000BD8 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	ldr r5, _08000BDC @ =gIntrMasterEnable
	ldr r4, _08000BE0 @ =gIntrEnableMask
	ldr r6, _08000BE4 @ =gDispStat
	cmp r0, #0
	beq _08000B50
	movs r3, #3
_08000B46:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000B46
_08000B50:
	ldr r1, _08000BE8 @ =REG_IME
	movs r0, #0
	strh r0, [r5]
	strh r0, [r1]
	ldrh r1, [r4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08000BEC @ =REG_IE
	strh r0, [r1]
	ldr r2, _08000BD8 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000B7C
	movs r3, #3
_08000B72:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000B72
_08000B7C:
	ldr r1, _08000BE8 @ =REG_IME
	movs r0, #1
	strh r0, [r5]
	strh r0, [r1]
	ldr r2, _08000BD8 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000B9C
	movs r3, #3
_08000B92:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000B92
_08000B9C:
	ldr r1, _08000BE8 @ =REG_IME
	movs r0, #0
	strh r0, [r5]
	strh r0, [r1]
	ldrh r1, [r6]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r6]
	ldr r2, _08000BD8 @ =REG_DISPSTAT
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000BC6
	movs r3, #3
_08000BBC:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000BBC
_08000BC6:
	ldr r1, _08000BE8 @ =REG_IME
	movs r0, #1
	strh r0, [r5]
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000BD4: .4byte gHBlankEffectTable
_08000BD8: .4byte REG_DISPSTAT
_08000BDC: .4byte gIntrMasterEnable
_08000BE0: .4byte gIntrEnableMask
_08000BE4: .4byte gDispStat
_08000BE8: .4byte REG_IME
_08000BEC: .4byte REG_IE

	thumb_func_start DisableHBlankEffect
DisableHBlankEffect: @ 0x08000BF0
	push {r4, r5, r6, r7, lr}
	ldr r2, _08000C60 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	ldr r5, _08000C64 @ =gIntrMasterEnable
	ldr r4, _08000C68 @ =gIntrEnableMask
	ldr r6, _08000C6C @ =gDispStat
	ldr r7, _08000C70 @ =gHBlankEffectTable
	cmp r0, #0
	beq _08000C12
	movs r3, #3
_08000C08:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000C08
_08000C12:
	ldr r1, _08000C74 @ =REG_IME
	movs r0, #0
	strh r0, [r5]
	strh r0, [r1]
	ldrh r0, [r4]
	movs r1, #2
	bics r0, r1
	strh r0, [r4]
	ldr r1, _08000C78 @ =REG_IE
	strh r0, [r1]
	ldr r2, _08000C60 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000C3E
	movs r3, #3
_08000C34:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000C34
_08000C3E:
	ldr r1, _08000C74 @ =REG_IME
	movs r0, #1
	strh r0, [r5]
	strh r0, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ldrh r1, [r6]
	ands r0, r1
	strh r0, [r6]
	ldr r1, _08000C60 @ =REG_DISPSTAT
	strh r0, [r1]
	movs r0, #0
	str r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000C60: .4byte REG_DISPSTAT
_08000C64: .4byte gIntrMasterEnable
_08000C68: .4byte gIntrEnableMask
_08000C6C: .4byte gDispStat
_08000C70: .4byte gHBlankEffectTable
_08000C74: .4byte REG_IME
_08000C78: .4byte REG_IE

	thumb_func_start EnableVCountIntr
EnableVCountIntr: @ 0x08000C7C
	push {r4, r5, r6, lr}
	ldr r2, _08000D30 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	ldr r5, _08000D34 @ =gIntrMasterEnable
	ldr r4, _08000D38 @ =gIntrEnableMask
	ldr r6, _08000D3C @ =gDispStat
	cmp r0, #0
	beq _08000C9C
	movs r3, #3
_08000C92:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000C92
_08000C9C:
	ldr r1, _08000D40 @ =REG_IME
	movs r0, #0
	strh r0, [r5]
	strh r0, [r1]
	ldrh r1, [r4]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08000D44 @ =REG_IE
	strh r0, [r1]
	ldr r2, _08000D30 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000CC8
	movs r3, #3
_08000CBE:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000CBE
_08000CC8:
	ldr r1, _08000D40 @ =REG_IME
	movs r0, #1
	strh r0, [r5]
	strh r0, [r1]
	ldr r2, _08000D30 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000CE8
	movs r3, #3
_08000CDE:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000CDE
_08000CE8:
	ldr r1, _08000D40 @ =REG_IME
	movs r0, #0
	strh r0, [r5]
	strh r0, [r1]
	ldrh r1, [r6]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r6]
	ldr r2, _08000D30 @ =REG_DISPSTAT
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000D12
	movs r3, #3
_08000D08:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000D08
_08000D12:
	ldr r1, _08000D40 @ =REG_IME
	movs r0, #1
	strh r0, [r5]
	strh r0, [r1]
	ldrb r0, [r6]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _08000D30 @ =REG_DISPSTAT
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000D30: .4byte REG_DISPSTAT
_08000D34: .4byte gIntrMasterEnable
_08000D38: .4byte gIntrEnableMask
_08000D3C: .4byte gDispStat
_08000D40: .4byte REG_IME
_08000D44: .4byte REG_IE

	thumb_func_start InitIntrState
InitIntrState: @ 0x08000D48
	ldr r1, _08000D60 @ =gIntrEnableMask
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08000D64 @ =gIntrMasterEnable
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08000D68 @ =gHBlankEffectTable
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08000D60: .4byte gIntrEnableMask
_08000D64: .4byte gIntrMasterEnable
_08000D68: .4byte gHBlankEffectTable

	thumb_func_start DisableInterrupts
DisableInterrupts: @ 0x08000D6C
	push {r4, lr}
	ldr r2, _08000D98 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	ldr r4, _08000D9C @ =gIntrMasterEnable
	cmp r0, #0
	beq _08000D88
	movs r3, #3
_08000D7E:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000D7E
_08000D88:
	ldr r1, _08000DA0 @ =REG_IME
	movs r0, #0
	strh r0, [r4]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000D98: .4byte REG_DISPSTAT
_08000D9C: .4byte gIntrMasterEnable
_08000DA0: .4byte REG_IME

	thumb_func_start EnableInterrupts
EnableInterrupts: @ 0x08000DA4
	push {r4, lr}
	ldr r2, _08000DD0 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	ldr r4, _08000DD4 @ =gIntrMasterEnable
	cmp r0, #0
	beq _08000DC0
	movs r3, #3
_08000DB6:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000DB6
_08000DC0:
	ldr r1, _08000DD8 @ =REG_IME
	movs r0, #1
	strh r0, [r4]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000DD0: .4byte REG_DISPSTAT
_08000DD4: .4byte gIntrMasterEnable
_08000DD8: .4byte REG_IME

	thumb_func_start EnableIntr
EnableIntr: @ 0x08000DDC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08000E38 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	ldr r6, _08000E3C @ =gIntrMasterEnable
	ldr r4, _08000E40 @ =gIntrEnableMask
	cmp r0, #0
	beq _08000DFE
	movs r3, #3
_08000DF4:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000DF4
_08000DFE:
	ldr r1, _08000E44 @ =REG_IME
	movs r0, #0
	strh r0, [r6]
	strh r0, [r1]
	ldrh r1, [r4]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08000E48 @ =REG_IE
	strh r0, [r1]
	ldr r2, _08000E38 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000E2A
	movs r3, #3
_08000E20:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000E20
_08000E2A:
	ldr r1, _08000E44 @ =REG_IME
	movs r0, #1
	strh r0, [r6]
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000E38: .4byte REG_DISPSTAT
_08000E3C: .4byte gIntrMasterEnable
_08000E40: .4byte gIntrEnableMask
_08000E44: .4byte REG_IME
_08000E48: .4byte REG_IE

	thumb_func_start DisableIntr
DisableIntr: @ 0x08000E4C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _08000EA8 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	ldr r6, _08000EAC @ =gIntrMasterEnable
	ldr r5, _08000EB0 @ =gIntrEnableMask
	cmp r0, #0
	beq _08000E6E
	movs r3, #3
_08000E64:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000E64
_08000E6E:
	ldr r1, _08000EB4 @ =REG_IME
	movs r0, #0
	strh r0, [r6]
	strh r0, [r1]
	ldrh r0, [r5]
	bics r0, r4
	strh r0, [r5]
	subs r1, #8
	strh r0, [r1]
	ldr r2, _08000EA8 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000E98
	movs r3, #3
_08000E8E:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000E8E
_08000E98:
	ldr r1, _08000EB4 @ =REG_IME
	movs r0, #1
	strh r0, [r6]
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000EA8: .4byte REG_DISPSTAT
_08000EAC: .4byte gIntrMasterEnable
_08000EB0: .4byte gIntrEnableMask
_08000EB4: .4byte REG_IME

	thumb_func_start SetDispStatFlags
SetDispStatFlags: @ 0x08000EB8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08000F14 @ =REG_DISPSTAT
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	ldr r6, _08000F18 @ =gIntrMasterEnable
	ldr r4, _08000F1C @ =gDispStat
	cmp r0, #0
	beq _08000EDA
	movs r3, #3
_08000ED0:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000ED0
_08000EDA:
	ldr r1, _08000F20 @ =REG_IME
	movs r0, #0
	strh r0, [r6]
	strh r0, [r1]
	ldrh r1, [r4]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _08000F14 @ =REG_DISPSTAT
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000F04
	movs r3, #3
_08000EFA:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000EFA
_08000F04:
	ldr r1, _08000F20 @ =REG_IME
	movs r0, #1
	strh r0, [r6]
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000F14: .4byte REG_DISPSTAT
_08000F18: .4byte gIntrMasterEnable
_08000F1C: .4byte gDispStat
_08000F20: .4byte REG_IME

	thumb_func_start ClearDispStatFlags
ClearDispStatFlags: @ 0x08000F24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08000F38 @ =gDispStat
	ldrh r1, [r2]
	bics r1, r0
	strh r1, [r2]
	ldr r0, _08000F3C @ =REG_DISPSTAT
	strh r1, [r0]
	bx lr
	.align 2, 0
_08000F38: .4byte gDispStat
_08000F3C: .4byte REG_DISPSTAT

	thumb_func_start HBlankIntr
HBlankIntr: @ 0x08000F40
	ldr r0, _08000F6C @ =REG_VCOUNT
	ldrh r1, [r0]
	cmp r1, #0x9f
	bhi _08000F56
	ldr r0, _08000F70 @ =gHBlankEffectTable
	ldr r0, [r0]
	ldm r0!, {r2}
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08000F56:
	ldr r1, _08000F74 @ =REG_IF
	ldrh r0, [r1]
	movs r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _08000F78 @ =0x03007FF8
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000F6C: .4byte REG_VCOUNT
_08000F70: .4byte gHBlankEffectTable
_08000F74: .4byte REG_IF
_08000F78: .4byte 0x03007FF8
_08000F7C:
	.byte 0x00, 0x06, 0x04, 0x4A
	.byte 0x11, 0x78, 0x00, 0x0C, 0x01, 0x43, 0x11, 0x80, 0x02, 0x48, 0x01, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x03, 0x04, 0x00, 0x00, 0x04, 0x04, 0x4A, 0x05, 0x20, 0x40, 0x42, 0x11, 0x88
	.byte 0x08, 0x40, 0x10, 0x80, 0x02, 0x49, 0x08, 0x80, 0x70, 0x47, 0x00, 0x00, 0x04, 0x00, 0x00, 0x03
	.byte 0x04, 0x00, 0x00, 0x04

	thumb_func_start VCountIntr
VCountIntr: @ 0x08000FB4
	push {lr}
	ldr r0, _08000FD8 @ =gSoundVSyncEnabled
	ldr r0, [r0]
	cmp r0, #0
	beq _08000FC2
	bl m4aSoundMain
_08000FC2:
	ldr r1, _08000FDC @ =REG_IF
	ldrh r0, [r1]
	movs r2, #4
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _08000FE0 @ =0x03007FF8
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08000FD8: .4byte gSoundVSyncEnabled
_08000FDC: .4byte REG_IF
_08000FE0: .4byte 0x03007FF8

	thumb_func_start FrameUpdate
FrameUpdate: @ 0x08000FE4
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0800449C
	ldr r0, _08001060 @ =REG_VCOUNT
	ldrh r4, [r0]
	cmp r4, #0x63
	bhi _0800100C
	adds r5, r0, #0
_08000FF6:
	bl Random
	ldrh r0, [r5]
	cmp r0, r4
	bls _08001002
	adds r4, r0, #0
_08001002:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x63
	bls _08000FF6
_0800100C:
	ldr r1, _08001064 @ =gVBlankUpdatePending
	movs r0, #1
	str r0, [r1]
	ldr r0, _08001068 @ =gDispCnt
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800102A
	bl VBlankIntrWait
	ldr r1, _0800106C @ =gFrameCounter
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0800102A:
	movs r0, #0xa0
	str r0, [sp]
	ldr r4, _08001070 @ =gOamBuffer
	ldr r2, _08001074 @ =0x01000100
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	bl UpdateInput
	movs r0, #1
	bl SignalEvent
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl QueueCopy
	ldr r1, _08001078 @ =gPaletteBufferQueued
	movs r0, #0
	strh r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001060: .4byte REG_VCOUNT
_08001064: .4byte gVBlankUpdatePending
_08001068: .4byte gDispCnt
_0800106C: .4byte gFrameCounter
_08001070: .4byte gOamBuffer
_08001074: .4byte 0x01000100
_08001078: .4byte gPaletteBufferQueued

	thumb_func_start InitVBlankState
InitVBlankState: @ 0x0800107C
	ldr r0, _08001088 @ =0x03002D60
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800108C @ =gVBlankUpdatePending
	str r1, [r0]
	bx lr
	.align 2, 0
_08001088: .4byte 0x03002D60
_0800108C: .4byte gVBlankUpdatePending

	thumb_func_start VBlankIntr
VBlankIntr: @ 0x08001090
	push {r4, r5, lr}
	ldr r5, _080010E0 @ =gSoundVSyncEnabled
	ldr r0, [r5]
	cmp r0, #0
	beq _080010A8
	ldr r4, _080010E4 @ =REG_IME
	movs r0, #0
	strh r0, [r4]
	bl m4aSoundVSync
	movs r0, #1
	strh r0, [r4]
_080010A8:
	ldr r4, _080010E8 @ =gVBlankUpdatePending
	ldr r0, [r4]
	cmp r0, #0
	beq _080010BC
	bl CopyBgRegsBuffer
	bl ProcessCopyQueue
	movs r0, #0
	str r0, [r4]
_080010BC:
	ldr r0, [r5]
	cmp r0, #0
	beq _080010C6
	bl m4aSoundMain
_080010C6:
	ldr r1, _080010EC @ =REG_IF
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _080010F0 @ =0x03007FF8
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080010E0: .4byte gSoundVSyncEnabled
_080010E4: .4byte REG_IME
_080010E8: .4byte gVBlankUpdatePending
_080010EC: .4byte REG_IF
_080010F0: .4byte 0x03007FF8

	thumb_func_start sub_080010F4
sub_080010F4: @ 0x080010F4
	adds r1, r0, #0
	cmp r1, #0
	beq _08001108
	ldr r0, _08001104 @ =0x03002D60
	str r1, [r0]
	movs r0, #1
	b _0800110E
	.align 2, 0
_08001104: .4byte 0x03002D60
_08001108:
	ldr r0, _08001110 @ =0x03002D60
	str r1, [r0]
	movs r0, #0
_0800110E:
	bx lr
	.align 2, 0
_08001110: .4byte 0x03002D60
