@ Entry point, cartridge header, IntrMain

	.include "asm/macros.inc"

	.syntax unified
	.text

	arm_func_start _start
_start: @ 0x08000000
	b _080000C0

@ Cartridge header (logo, title, game code, checksum) comes from baserom.gba.
RomHeader:
	.incbin "baserom.gba", 0x4, 0xBC

_080000C0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =0x03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =0x03007D00
	ldr r1, _080000FC @ =0x03007FFC
	add r0, pc, #0x20 @ =IntrMain
	str r0, [r1]
	ldr r1, _08000100 @ =AgbMain
	mov lr, pc
	bx r1
	b _080000C0
	.align 2, 0
_080000F4: .4byte 0x03007D00
_080000F8: .4byte 0x03007FA0
_080000FC: .4byte 0x03007FFC
_08000100: .4byte AgbMain

	arm_func_start IntrMain
IntrMain: @ 0x08000104
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	ldrh r1, [r3, #8]
	mrs r0, spsr
	push {r0, r1, r2, r3, lr}
	mov r0, #1
	strh r0, [r3, #8]
	and r1, r2, r2, lsr #16
	mov ip, #0
	ands r0, r1, #4
	bne _080001D4
	add ip, ip, #4
	ands r0, r1, #2
	bne _080001D4
	add ip, ip, #4
	ands r0, r1, #0xc0
	bne _080001D4
	add ip, ip, #4
	ands r0, r1, #1
	bne _080001D4
	add ip, ip, #4
	ands r0, r1, #0x20
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _080001D4
	add ip, ip, #4
	ands r0, r1, #0x200
	bne _080001D4
	add ip, ip, #4
	ands r0, r1, #0x400
	bne _080001D4
	add ip, ip, #4
	ands r0, r1, #0x800
	bne _080001D4
	add ip, ip, #4
	ands r0, r1, #0x1000
	bne _080001D4
	add ip, ip, #4
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_080001D0:
	bne _080001D0
_080001D4:
	strh r0, [r3, #2]
	mov r1, #0x20c0
	bic r2, r2, r0
	and r1, r1, r2
	strh r1, [r3]
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fc, r3
	ldr r1, _08000238 @ =gIntrTable
	add r1, r1, ip
	ldr r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0 @ =0x08000210
	bx r0
	ldm sp!, {lr}
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr cpsr_fc, r3
	pop {r0, r1, r2, r3, lr}
	strh r2, [r3]
	strh r1, [r3, #8]
	msr spsr_fc, r0
	bx lr
	.align 2, 0
_08000238: .4byte gIntrTable
