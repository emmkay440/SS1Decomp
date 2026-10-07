	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start SaveGame
SaveGame: @ 0x0802F178
	push {r4, r5, r6, lr}
	movs r0, #0x80
	lsls r0, r0, #5
	bl Alloc
	adds r5, r0, #0
	ldr r1, _0802F1DC @ =gPlayerStats
	movs r2, #0x9f
	lsls r2, r2, #2
	bl memcpy
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	ldr r4, _0802F1E0 @ =0x0000027B
_0802F196:
	ldrb r0, [r2]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r3, #1
	adds r2, #1
	cmp r3, r4
	bls _0802F196
	mvns r1, r1
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	ldr r6, _0802F1DC @ =gPlayerStats
	ldrh r0, [r6, #0x22]
	adds r1, r5, #0
	bl WriteSaveSector
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0802F1E4
	ldrh r0, [r6, #0x22]
	adds r1, r5, #0
	bl VerifySaveSector
	adds r4, r0, #0
	cmp r4, #0
	bne _0802F1E4
	adds r0, r5, #0
	bl Free
	movs r0, #0
	b _0802F1EC
	.align 2, 0
_0802F1DC: .4byte gPlayerStats
_0802F1E0: .4byte 0x0000027B
_0802F1E4:
	adds r0, r5, #0
	bl Free
	adds r0, r4, #0
_0802F1EC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
