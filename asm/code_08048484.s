	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08048484
sub_08048484: @ 0x08048484
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _080484C8 @ =0x00000FFF
	cmp r2, r0
	bls _080484D0
	lsrs r2, r2, #0xc
	cmp r2, #0
	beq _080484E6
	adds r6, r1, #0
	adds r4, r3, #0
	adds r5, r2, #0
_0804849A:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
	ldr r0, _080484CC @ =0x030005F8
	ldrb r0, [r0]
	cmp r0, #2
	beq _080484B2
	bl sub_080472FC
_080484B2:
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, r4, r0
	subs r5, #1
	cmp r5, #0
	bne _0804849A
	b _080484E6
	.align 2, 0
_080484C8: .4byte 0x00000FFF
_080484CC: .4byte 0x030005F8
_080484D0:
	adds r0, r3, #0
	bl QueueCopy
	ldr r0, _080484EC @ =0x030005F8
	ldrb r0, [r0]
	cmp r0, #2
	beq _080484E2
	bl sub_080472FC
_080484E2:
	bl WaitFrame
_080484E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080484EC: .4byte 0x030005F8

	thumb_func_start sub_080484F0
sub_080484F0: @ 0x080484F0
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _08048514 @ =0x03000614
	movs r3, #0
	ldr r4, _08048518 @ =0x0300061C
_080484FA:
	lsls r1, r2, #1
	adds r0, r1, r5
	strh r3, [r0]
	adds r1, r1, r4
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _080484FA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048514: .4byte 0x03000614
_08048518: .4byte 0x0300061C

	thumb_func_start sub_0804851C
sub_0804851C: @ 0x0804851C
	movs r3, #0
	ldr r0, _08048544 @ =gUnknown_030005F5
	ldrb r1, [r0]
	ldr r0, _08048548 @ =gUnknown_03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r1, r0, #0
	adds r1, #0x14
_08048532:
	lsls r0, r3, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804854C
	cmp r0, #0xff
	beq _0804854C
	movs r0, #1
	b _08048558
	.align 2, 0
_08048544: .4byte gUnknown_030005F5
_08048548: .4byte gUnknown_03000764
_0804854C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xa
	bls _08048532
	movs r0, #0
_08048558:
	bx lr
	.align 2, 0
