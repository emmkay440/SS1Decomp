	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080186A8
sub_080186A8: @ 0x080186A8
	push {r4, lr}
	ldr r4, _08018794 @ =gUnknown_030063D8
	movs r0, #0xfc
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
	movs r2, #0
	str r2, [r0]
	str r2, [r0, #8]
	str r2, [r0, #4]
	adds r3, r0, #0
	adds r3, #0x9a
	ldr r1, _08018798 @ =0x0000FFFF
	strh r1, [r3]
	adds r0, #0x9c
	strh r2, [r0]
	ldr r4, _0801879C @ =gSpawnerThreads
	movs r0, #0xc8
	bl Alloc
	str r0, [r4]
	ldr r4, _080187A0 @ =gUnknownThreadPtr_0300640C
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187A4 @ =gUnknownThreadPtr_03006410
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187A8 @ =gUnknownThreadPtr_03006404
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187AC @ =gUnknownThreadPtr_03006408
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187B0 @ =gUnknownThreadPtr_030063D0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187B4 @ =gUnknownThreadPtr_030063F4
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187B8 @ =gUnknownThreadPtr_030063F0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187BC @ =gUnknownThreadPtr_030063FC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187C0 @ =gUnknownThreadPtr_030063DC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187C4 @ =gUnknownThreadPtr_030063E0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187C8 @ =gUnknownThreadPtr_030063CC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187CC @ =gUnknownThreadPtr_030063F8
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187D0 @ =gUnknownThreadPtr_030063E8
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187D4 @ =gUnknownThreadPtr_030063D4
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187D8 @ =gUnknownThreadPtr_03006414
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187DC @ =gUnknownThreadPtr_030063EC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187E0 @ =gUnknownThreadPtr_030063E4
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187E4 @ =gUnknownThreadPtr_03006400
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	bl sub_08020F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018794: .4byte gUnknown_030063D8
_08018798: .4byte 0x0000FFFF
_0801879C: .4byte gSpawnerThreads
_080187A0: .4byte gUnknownThreadPtr_0300640C
_080187A4: .4byte gUnknownThreadPtr_03006410
_080187A8: .4byte gUnknownThreadPtr_03006404
_080187AC: .4byte gUnknownThreadPtr_03006408
_080187B0: .4byte gUnknownThreadPtr_030063D0
_080187B4: .4byte gUnknownThreadPtr_030063F4
_080187B8: .4byte gUnknownThreadPtr_030063F0
_080187BC: .4byte gUnknownThreadPtr_030063FC
_080187C0: .4byte gUnknownThreadPtr_030063DC
_080187C4: .4byte gUnknownThreadPtr_030063E0
_080187C8: .4byte gUnknownThreadPtr_030063CC
_080187CC: .4byte gUnknownThreadPtr_030063F8
_080187D0: .4byte gUnknownThreadPtr_030063E8
_080187D4: .4byte gUnknownThreadPtr_030063D4
_080187D8: .4byte gUnknownThreadPtr_03006414
_080187DC: .4byte gUnknownThreadPtr_030063EC
_080187E0: .4byte gUnknownThreadPtr_030063E4
_080187E4: .4byte gUnknownThreadPtr_03006400
