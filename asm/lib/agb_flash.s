@ Flash save library (FLASH512_V131)

	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start SwitchFlashBank
SwitchFlashBank: @ 0x08051BD4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08051BF0 @ =0x0E005555
	movs r1, #0xaa
	strb r1, [r3]
	ldr r2, _08051BF4 @ =0x0E002AAA
	movs r1, #0x55
	strb r1, [r2]
	movs r1, #0xb0
	strb r1, [r3]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	strb r0, [r1]
	bx lr
	.align 2, 0
_08051BF0: .4byte 0x0E005555
_08051BF4: .4byte 0x0E002AAA

	thumb_func_start ReadFlashId
ReadFlashId: @ 0x08051BF8
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl SetReadFlash1
	mov r5, sp
	adds r5, #1
	ldr r2, _08051C20 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08051C24 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0x90
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _08051C28 @ =0x00004E20
	adds r0, r2, #0
	b _08051C30
	.align 2, 0
_08051C20: .4byte 0x0E005555
_08051C24: .4byte 0x0E002AAA
_08051C28: .4byte 0x00004E20
_08051C2C:
	ldrh r0, [r1]
	subs r0, #1
_08051C30:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08051C2C
	ldr r0, _08051C6C @ =0x0E000001
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0x14
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r1, _08051C70 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r1]
	ldr r2, _08051C74 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r2]
	movs r0, #0xf0
	strb r0, [r1]
	strb r0, [r1]
	add r1, sp, #0x40
	ldr r2, _08051C78 @ =0x00004E20
	adds r0, r2, #0
	b _08051C80
	.align 2, 0
_08051C6C: .4byte 0x0E000001
_08051C70: .4byte 0x0E005555
_08051C74: .4byte 0x0E002AAA
_08051C78: .4byte 0x00004E20
_08051C7C:
	ldrh r0, [r1]
	subs r0, #1
_08051C80:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08051C7C
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FlashTimerIntr
FlashTimerIntr: @ 0x08051C94
	push {lr}
	ldr r1, _08051CB4 @ =0x030018BA
	ldrh r0, [r1]
	cmp r0, #0
	beq _08051CB0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08051CB0
	ldr r1, _08051CB8 @ =0x03007580
	movs r0, #1
	strb r0, [r1]
_08051CB0:
	pop {r0}
	bx r0
	.align 2, 0
_08051CB4: .4byte 0x030018BA
_08051CB8: .4byte 0x03007580

	thumb_func_start SetFlashTimerIntr
SetFlashTimerIntr: @ 0x08051CBC
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08051CF0
	ldr r0, _08051CE0 @ =0x030018B8
	strb r1, [r0]
	ldr r1, _08051CE4 @ =0x030018BC
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08051CE8 @ =REG_TM0CNT
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08051CEC @ =FlashTimerIntr
	str r0, [r2]
	movs r0, #0
	b _08051CF2
	.align 2, 0
_08051CE0: .4byte 0x030018B8
_08051CE4: .4byte 0x030018BC
_08051CE8: .4byte REG_TM0CNT
_08051CEC: .4byte FlashTimerIntr
_08051CF0:
	movs r0, #1
_08051CF2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start StartFlashTimer
StartFlashTimer: @ 0x08051CF8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08051D7C @ =0x030075A0
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1]
	adds r2, r2, r0
	ldr r1, _08051D80 @ =0x030018C0
	ldr r0, _08051D84 @ =REG_IME
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0
	mov r1, sb
	strh r3, [r1]
	ldr r0, _08051D88 @ =0x030018BC
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _08051D8C @ =REG_IE
	ldr r1, _08051D90 @ =0x030018B8
	mov sl, r1
	ldrb r1, [r1]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _08051D94 @ =0x03007580
	strb r3, [r0]
	ldr r1, _08051D98 @ =0x030018BA
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r4]
	adds r0, r4, #2
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1]
	ldr r1, _08051D9C @ =REG_IF
	mov r2, sl
	ldrb r0, [r2]
	lsls r5, r0
	strh r5, [r1]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051D7C: .4byte 0x030075A0
_08051D80: .4byte 0x030018C0
_08051D84: .4byte REG_IME
_08051D88: .4byte 0x030018BC
_08051D8C: .4byte REG_IE
_08051D90: .4byte 0x030018B8
_08051D94: .4byte 0x03007580
_08051D98: .4byte 0x030018BA
_08051D9C: .4byte REG_IF

	thumb_func_start StopFlashTimer
StopFlashTimer: @ 0x08051DA0
	ldr r3, _08051DD0 @ =REG_IME
	movs r1, #0
	strh r1, [r3]
	ldr r2, _08051DD4 @ =0x030018BC
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _08051DD8 @ =REG_IE
	ldr r0, _08051DDC @ =0x030018B8
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _08051DE0 @ =0x030018C0
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_08051DD0: .4byte REG_IME
_08051DD4: .4byte 0x030018BC
_08051DD8: .4byte REG_IE
_08051DDC: .4byte 0x030018B8
_08051DE0: .4byte 0x030018C0

	thumb_func_start ReadFlash1
ReadFlash1: @ 0x08051DE4
	ldrb r0, [r0]
	bx lr

	thumb_func_start SetReadFlash1
SetReadFlash1: @ 0x08051DE8
	push {lr}
	adds r2, r0, #0
	ldr r1, _08051E04 @ =0x03007584
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _08051E08 @ =ReadFlash1
	movs r0, #1
	bics r3, r0
	ldr r0, _08051E0C @ =SetReadFlash1
	ldr r1, _08051E08 @ =ReadFlash1
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08051E1C
	.align 2, 0
_08051E04: .4byte 0x03007584
_08051E08: .4byte ReadFlash1
_08051E0C: .4byte SetReadFlash1
_08051E10:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08051E1C:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08051E10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ReadFlash_Core
ReadFlash_Core: @ 0x08051E28
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _08051E44
	movs r2, #1
	rsbs r2, r2, #0
_08051E36:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _08051E36
_08051E44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ReadFlash
ReadFlash: @ 0x08051E4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _08051E98 @ =REG_WAITCNT
	ldrh r0, [r2]
	ldr r1, _08051E9C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08051EA0 @ =gFlash
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _08051E84
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SwitchFlashBank
	movs r0, #0xf
	ands r4, r0
_08051E84:
	ldr r3, _08051EA4 @ =ReadFlash_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _08051EA8 @ =ReadFlash
	ldr r1, _08051EA4 @ =ReadFlash_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08051EB8
	.align 2, 0
_08051E98: .4byte REG_WAITCNT
_08051E9C: .4byte 0x0000FFFC
_08051EA0: .4byte gFlash
_08051EA4: .4byte ReadFlash_Core
_08051EA8: .4byte ReadFlash
_08051EAC:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08051EB8:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08051EAC
	mov r3, sp
	adds r3, #1
	ldr r0, _08051EE4 @ =gFlash
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r4, r0
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r5, r2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051EE4: .4byte gFlash

	thumb_func_start VerifyFlashSector_Core
VerifyFlashSector_Core: @ 0x08051EE8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _08051F0E
	movs r2, #1
	rsbs r2, r2, #0
_08051EF8:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _08051F08
	subs r0, r3, #1
	b _08051F10
_08051F08:
	subs r4, #1
	cmp r4, r2
	bne _08051EF8
_08051F0E:
	movs r0, #0
_08051F10:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start VerifyFlashSector
VerifyFlashSector: @ 0x08051F18
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r1, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _08051F60 @ =REG_WAITCNT
	ldrh r0, [r2]
	ldr r1, _08051F64 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08051F68 @ =gFlash
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _08051F4C
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SwitchFlashBank
	movs r0, #0xf
	ands r4, r0
_08051F4C:
	ldr r3, _08051F6C @ =VerifyFlashSector_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _08051F70 @ =VerifyFlashSector
	ldr r1, _08051F6C @ =VerifyFlashSector_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08051F80
	.align 2, 0
_08051F60: .4byte REG_WAITCNT
_08051F64: .4byte 0x0000FFFC
_08051F68: .4byte gFlash
_08051F6C: .4byte VerifyFlashSector_Core
_08051F70: .4byte VerifyFlashSector
_08051F74:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08051F80:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08051F74
	mov r3, sp
	adds r3, #1
	ldr r0, _08051FAC @ =gFlash
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	ldrh r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08051FAC: .4byte gFlash

	thumb_func_start VerifyFlashSectorNBytes
VerifyFlashSectorNBytes: @ 0x08051FB0
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _08051FF8 @ =gFlash
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _08051FD8
	lsrs r0, r2, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SwitchFlashBank
	movs r0, #0xf
	ands r4, r0
_08051FD8:
	ldr r2, _08051FFC @ =REG_WAITCNT
	ldrh r0, [r2]
	ldr r1, _08052000 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08052004 @ =VerifyFlashSector_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _08052008 @ =VerifyFlashSector
	ldr r1, _08052004 @ =VerifyFlashSector_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08052018
	.align 2, 0
_08051FF8: .4byte gFlash
_08051FFC: .4byte REG_WAITCNT
_08052000: .4byte 0x0000FFFC
_08052004: .4byte VerifyFlashSector_Core
_08052008: .4byte VerifyFlashSector
_0805200C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08052018:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0805200C
	mov r3, sp
	adds r3, #1
	ldr r0, _08052044 @ =gFlash
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052044: .4byte gFlash

	thumb_func_start ProgramFlashSectorAndVerify
ProgramFlashSectorAndVerify: @ 0x08052048
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0805205A
_08052054:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0805205A:
	cmp r6, #2
	bhi _08052080
	ldr r0, _08052088 @ =ProgramFlashSector
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08052054
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyFlashSector
	adds r2, r0, #0
	cmp r2, #0
	bne _08052054
_08052080:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052088: .4byte ProgramFlashSector

	thumb_func_start ProgramFlashSectorAndVerifyNBytes
ProgramFlashSectorAndVerifyNBytes: @ 0x0805208C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080520A0
_0805209A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080520A0:
	cmp r6, #2
	bhi _080520C8
	ldr r0, _080520D0 @ =ProgramFlashSector
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0805209A
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl VerifyFlashSectorNBytes
	adds r3, r0, #0
	cmp r3, #0
	bne _0805209A
_080520C8:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080520D0: .4byte ProgramFlashSector

	thumb_func_start IdentifyFlash
IdentifyFlash: @ 0x080520D4
	push {r4, lr}
	ldr r2, _080520F4 @ =REG_WAITCNT
	ldrh r0, [r2]
	ldr r1, _080520F8 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bl ReadFlashId
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _080520FC @ =0x080FA8F0
	movs r4, #1
	b _08052102
	.align 2, 0
_080520F4: .4byte REG_WAITCNT
_080520F8: .4byte 0x0000FFFC
_080520FC: .4byte 0x080FA8F0
_08052100:
	adds r2, #4
_08052102:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08052116
	ldrh r0, [r1, #0x28]
	cmp r3, r0
	bne _08052100
	movs r4, #0
_08052116:
	ldr r1, _08052150 @ =ProgramFlashSector
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08052154 @ =0x03007598
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r1, _08052158 @ =0x0300759C
	ldr r0, [r2]
	ldr r0, [r0, #8]
	str r0, [r1]
	ldr r1, _0805215C @ =0x03007588
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r1]
	ldr r1, _08052160 @ =0x030075A0
	ldr r0, [r2]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r1, _08052164 @ =gFlash
	ldr r0, [r2]
	adds r0, #0x14
	str r0, [r1]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08052150: .4byte ProgramFlashSector
_08052154: .4byte 0x03007598
_08052158: .4byte 0x0300759C
_0805215C: .4byte 0x03007588
_08052160: .4byte 0x030075A0
_08052164: .4byte gFlash

	thumb_func_start WaitForFlashWrite_Common
WaitForFlashWrite_Common: @ 0x08052168
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r0, #0
	mov r8, r0
	adds r0, r4, #0
	bl StartFlashTimer
	ldr r7, _08052190 @ =0x03007584
	movs r0, #0xc0
	lsls r0, r0, #8
	orrs r4, r0
	lsls r4, r4, #0x10
	b _080521B4
	.align 2, 0
_08052190: .4byte 0x03007584
_08052194:
	ldr r0, _080521AC @ =gFlash
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0xc2
	bne _080521A4
	ldr r1, _080521B0 @ =0x0E005555
	movs r0, #0xf0
	strb r0, [r1]
_080521A4:
	lsrs r4, r4, #0x10
	mov r8, r4
	b _080521DC
	.align 2, 0
_080521AC: .4byte gFlash
_080521B0: .4byte 0x0E005555
_080521B4:
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _080521DC
	ldr r0, _080521EC @ =0x03007580
	ldrb r0, [r0]
	cmp r0, #0
	beq _080521B4
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08052194
_080521DC:
	bl StopFlashTimer
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080521EC: .4byte 0x03007580

	thumb_func_start EraseFlashChip_MX
EraseFlashChip_MX: @ 0x080521F0
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r5, _0805224C @ =REG_WAITCNT
	ldrh r1, [r5]
	ldr r6, _08052250 @ =0x0000FFFC
	ands r1, r6
	ldr r0, _08052254 @ =gFlash
	ldr r0, [r0]
	ldrh r0, [r0, #0x10]
	orrs r1, r0
	strh r1, [r5]
	ldr r1, _08052258 @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _0805225C @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sp
	bl SetReadFlash1
	ldr r0, _08052260 @ =0x03007588
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805224C: .4byte REG_WAITCNT
_08052250: .4byte 0x0000FFFC
_08052254: .4byte gFlash
_08052258: .4byte 0x0E005555
_0805225C: .4byte 0x0E002AAA
_08052260: .4byte 0x03007588

	thumb_func_start EraseFlashSector_MX
EraseFlashSector_MX: @ 0x08052264
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bhi _080522EC
	ldr r6, _080522D4 @ =REG_WAITCNT
	ldrh r1, [r6]
	ldr r0, _080522D8 @ =0x0000FFFC
	mov r8, r0
	ands r1, r0
	ldr r0, _080522DC @ =gFlash
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r6]
	ldrb r4, [r2, #8]
	lsls r3, r4
	adds r4, r3, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r4, r4, r2
	ldr r1, _080522E0 @ =0x0E005555
	movs r5, #0xaa
	strb r5, [r1]
	ldr r3, _080522E4 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r5, [r1]
	strb r2, [r3]
	movs r0, #0x30
	strb r0, [r4]
	mov r0, sp
	bl SetReadFlash1
	ldr r0, _080522E8 @ =0x03007588
	ldr r3, [r0]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, r8
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strh r1, [r6]
	b _080522EE
	.align 2, 0
_080522D4: .4byte REG_WAITCNT
_080522D8: .4byte 0x0000FFFC
_080522DC: .4byte gFlash
_080522E0: .4byte 0x0E005555
_080522E4: .4byte 0x0E002AAA
_080522E8: .4byte 0x03007588
_080522EC:
	ldr r0, _080522FC @ =0x000080FF
_080522EE:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080522FC: .4byte 0x000080FF

	thumb_func_start ProgramByte
ProgramByte: @ 0x08052300
	push {r4, lr}
	ldr r4, _0805232C @ =0x0E005555
	movs r2, #0xaa
	strb r2, [r4]
	ldr r3, _08052330 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r2, #0xa0
	strb r2, [r4]
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r3, _08052334 @ =0x03007588
	ldrb r2, [r0]
	ldr r3, [r3]
	movs r0, #1
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805232C: .4byte 0x0E005555
_08052330: .4byte 0x0E002AAA
_08052334: .4byte 0x03007588

	thumb_func_start ProgramFlashSector_MX
ProgramFlashSector_MX: @ 0x08052338
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _08052358
	ldr r0, _08052354 @ =0x000080FF
	b _08052446
	.align 2, 0
_08052354: .4byte 0x000080FF
_08052358:
	ldr r0, _08052378 @ =gFlash
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	mov r7, r8
	lsls r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r7, r7, r0
	ldr r1, _0805237C @ =sub_0805245C
	movs r0, #1
	adds r3, r1, #0
	bics r3, r0
	mov r2, sp
	ldr r0, _08052380 @ =sub_08052480
	subs r0, r0, r1
	b _0805238E
	.align 2, 0
_08052378: .4byte gFlash
_0805237C: .4byte sub_0805245C
_08052380: .4byte sub_08052480
_08052384:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #2
_0805238E:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08052384
	movs r4, #0
	b _080523A4
_0805239A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	beq _08052444
_080523A4:
	mov r0, r8
	bl EraseFlashSector_MX
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0805239A
	adds r0, r7, #0
	mov r1, sp
	adds r1, #1
	bl sub_08052480
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0805239A
	movs r6, #1
	cmp r4, #0
	beq _080523CC
	movs r6, #6
_080523CC:
	movs r4, #1
	cmp r4, r6
	bhi _080523E2
_080523D2:
	mov r0, r8
	bl EraseFlashSector_MX
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	bls _080523D2
_080523E2:
	mov r0, sp
	bl SetReadFlash1
	ldr r3, _08052404 @ =REG_WAITCNT
	ldrh r1, [r3]
	ldr r0, _08052408 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _0805240C @ =gFlash
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _08052410 @ =0x03007594
	ldr r0, [r2, #4]
	strh r0, [r1]
	adds r4, r1, #0
	b _08052420
	.align 2, 0
_08052404: .4byte REG_WAITCNT
_08052408: .4byte 0x0000FFFC
_0805240C: .4byte gFlash
_08052410: .4byte 0x03007594
_08052414:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r0, #1
	add sb, r0
	adds r7, #1
_08052420:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08052436
	mov r0, sb
	adds r1, r7, #0
	bl ProgramByte
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08052414
_08052436:
	ldr r2, _08052454 @ =REG_WAITCNT
	ldrh r0, [r2]
	ldr r1, _08052458 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08052444:
	adds r0, r5, #0
_08052446:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08052454: .4byte REG_WAITCNT
_08052458: .4byte 0x0000FFFC

	thumb_func_start sub_0805245C
sub_0805245C: @ 0x0805245C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08052468 @ =gFlash
	ldr r0, [r0]
	ldr r1, [r0, #4]
	b _0805246E
	.align 2, 0
_08052468: .4byte gFlash
_0805246C:
	subs r1, #1
_0805246E:
	cmp r1, #0
	beq _0805247A
	ldrb r0, [r2]
	adds r2, #1
	cmp r0, #0xff
	beq _0805246C
_0805247A:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08052480
sub_08052480: @ 0x08052480
	push {lr}
	bl _call_via_r1
	cmp r0, #0
	bne _0805248E
	movs r0, #0
	b _08052490
_0805248E:
	ldr r0, _08052494 @ =0x00008004
_08052490:
	pop {r1}
	bx r1
	.align 2, 0
_08052494: .4byte 0x00008004

	thumb_func_start sub_08052498
sub_08052498: @ 0x08052498
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080524B0 @ =gFlash
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r4, r0
	blo _080524B8
	ldr r0, _080524B4 @ =0x000080FF
	b _08052534
	.align 2, 0
_080524B0: .4byte gFlash
_080524B4: .4byte 0x000080FF
_080524B8:
	adds r0, r4, #0
	bl EraseFlashSector_MX
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08052532
	mov r0, sp
	bl SetReadFlash1
	ldr r3, _080524F4 @ =REG_WAITCNT
	ldrh r1, [r3]
	ldr r0, _080524F8 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _080524FC @ =gFlash
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _08052500 @ =0x03007594
	ldr r0, [r2, #4]
	strh r0, [r1]
	ldrb r0, [r2, #8]
	lsls r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r6, r1, #0
	b _0805250E
	.align 2, 0
_080524F4: .4byte REG_WAITCNT
_080524F8: .4byte 0x0000FFFC
_080524FC: .4byte gFlash
_08052500: .4byte 0x03007594
_08052504:
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	adds r7, #1
	adds r4, #1
_0805250E:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08052524
	adds r0, r7, #0
	adds r1, r4, #0
	bl ProgramByte
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08052504
_08052524:
	ldr r2, _0805253C @ =REG_WAITCNT
	ldrh r0, [r2]
	ldr r1, _08052540 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08052532:
	adds r0, r5, #0
_08052534:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805253C: .4byte REG_WAITCNT
_08052540: .4byte 0x0000FFFC
