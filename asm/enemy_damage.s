	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start ApplyEnemyDamage
ApplyEnemyDamage: @ 0x0800E95C
	adds r2, r0, #0
	ldrh r1, [r2, #0x38]
	ldrh r0, [r2, #0x28]
	subs r1, r1, r0
	movs r3, #0
	strh r1, [r2, #0x38]
	strh r3, [r2, #0x28]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800E97A
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0800E984
_0800E97A:
	movs r0, #8
	strh r0, [r2, #0xa]
	strh r3, [r2, #0x38]
	movs r0, #1
	b _0800E986
_0800E984:
	movs r0, #0
_0800E986:
	bx lr
