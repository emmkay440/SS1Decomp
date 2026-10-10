	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08029270
sub_08029270: @ 0x08029270
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	bl sub_08001F98
	cmp r0, #0
	bne _0802928C
	movs r0, #1
	b _080292CA
_0802928C:
	ldr r3, _080292C0 @ =gUnknown_03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _080292C8
	ldr r1, _080292C4 @ =gUnknown_03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	lsls r2, r7, #4
	movs r0, #0xc
	orrs r0, r2
	strb r0, [r1, #4]
	strb r6, [r1, #5]
	strb r5, [r1, #6]
	strb r4, [r1, #7]
	movs r0, #1
	b _080292CA
	.align 2, 0
_080292C0: .4byte gUnknown_03006758
_080292C4: .4byte gUnknown_03006720
_080292C8:
	movs r0, #0
_080292CA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
