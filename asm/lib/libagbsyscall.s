@ BIOS call wrappers

	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start ArcTan2
ArcTan2: @ 0x08051B90
	svc #0xa
	bx lr

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x08051B94
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x08051B98
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x08051B9C
	svc #6
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x08051BA0
	svc #0x11
	bx lr

	thumb_func_start ObjAffineSet
ObjAffineSet: @ 0x08051BA4
	svc #0xf
	bx lr

	thumb_func_start RegisterRamReset
RegisterRamReset: @ 0x08051BA8
	svc #1
	bx lr

	thumb_func_start Sqrt
Sqrt: @ 0x08051BAC
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x08051BB0
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start SoftReset
SoftReset: @ 0x08051BB8
	ldr r3, _08051BCC @ =REG_IME
	movs r2, #0
	strb r2, [r3]
	ldr r3, _08051BD0 @ =0x03007FFA
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_08051BCC: .4byte REG_IME
_08051BD0: .4byte 0x03007FFA
