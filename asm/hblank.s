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
