	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start umul3232H32
umul3232H32: @ 0x0804FAA8
	add r2, pc, #0x0 @ =__umul3232H32
	bx r2
