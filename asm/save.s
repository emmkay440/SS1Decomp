	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start ReadSaveSector
ReadSaveSector: @ 0x080018FC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl ReadFlash
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start WriteSaveSector
WriteSaveSector: @ 0x0800190C
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08001920 @ =gSaveEnabled
	ldrb r0, [r0]
	cmp r0, #0
	bne _08001924
	movs r0, #1
	b _08001940
	.align 2, 0
_08001920: .4byte gSaveEnabled
_08001924:
	bl DisableInterrupts
	ldr r0, _08001948 @ =ProgramFlashSector
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl EnableInterrupts
	adds r0, r4, #0
_08001940:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08001948: .4byte ProgramFlashSector

	thumb_func_start VerifySaveSector
VerifySaveSector: @ 0x0800194C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08001960 @ =gSaveEnabled
	ldrb r0, [r0]
	cmp r0, #0
	bne _08001964
	movs r0, #1
	b _0800196A
	.align 2, 0
_08001960: .4byte gSaveEnabled
_08001964:
	adds r0, r2, #0
	bl VerifyFlashSector
_0800196A:
	pop {r1}
	bx r1
	.align 2, 0
