	.include "asm/macros.inc"

	.syntax unified
	.text

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
