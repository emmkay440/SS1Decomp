	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804ED04
sub_0804ED04: @ 0x0804ED04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804ED22
	movs r7, #0
	movs r0, #0x20
	b _0804ED42
_0804ED22:
	cmp r4, #1
	bne _0804ED2C
	movs r7, #0
	movs r0, #0x10
	b _0804ED42
_0804ED2C:
	cmp r4, #2
	bne _0804ED36
	movs r7, #0x10
	movs r0, #0x20
	b _0804ED42
_0804ED36:
	cmp r6, #3
	bne _0804ED44
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804ED42:
	mov r8, r0
_0804ED44:
	adds r0, r7, #0
	cmp r0, r8
	bhs _0804ED70
	ldr r7, _0804ED7C @ =gPaletteBuffer
_0804ED4C:
	movs r4, #0
	lsls r5, r0, #5
	adds r6, r0, #1
_0804ED52:
	lsls r0, r4, #1
	adds r0, r0, r7
	adds r0, r5, r0
	movs r1, #4
	bl bzero
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804ED52
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r8
	blo _0804ED4C
_0804ED70:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ED7C: .4byte gPaletteBuffer
