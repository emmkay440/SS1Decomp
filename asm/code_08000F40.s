	.include "asm/macros.inc"

	.syntax unified
	.text

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
