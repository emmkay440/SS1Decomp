	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start InitSaveFlash
InitSaveFlash: @ 0x0800189C
	push {r4, lr}
	bl IdentifyFlash
	ldr r2, _080018AC @ =0x08052B60
	movs r3, #0
	ldr r4, _080018B0 @ =gFlash
	b _080018BE
	.align 2, 0
_080018AC: .4byte 0x08052B60
_080018B0: .4byte gFlash
_080018B4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bhi _080018D8
_080018BE:
	ldr r0, [r4]
	ldrh r1, [r0, #0x14]
	ldrh r0, [r2]
	adds r2, #2
	cmp r1, r0
	bne _080018B4
	cmp r3, #4
	bne _080018D8
	ldr r1, _080018D4 @ =gSaveEnabled
	movs r0, #0
	b _080018DC
	.align 2, 0
_080018D4: .4byte gSaveEnabled
_080018D8:
	ldr r1, _080018F4 @ =gSaveEnabled
	movs r0, #1
_080018DC:
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	beq _080018EC
	ldr r1, _080018F8 @ =0x03001CC8
	movs r0, #2
	bl SetFlashTimerIntr
_080018EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080018F4: .4byte gSaveEnabled
_080018F8: .4byte 0x03001CC8
