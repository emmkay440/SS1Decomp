	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08004344
sub_08004344: @ 0x08004344
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	ldr r0, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _0800436C @ =gUnknown_030031F4
	ldr r3, [r6]
	cmp r3, #0x31
	bls _08004370
	movs r0, #0
	b _0800440C
	.align 2, 0
_0800436C: .4byte gUnknown_030031F4
_08004370:
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _080043B8 @ =gUnknown_03003200
	adds r2, r0, r1
	adds r0, r3, #1
	str r0, [r6]
	mov r0, r8
	str r0, [r2, #8]
	str r5, [r2, #0xc]
	movs r1, #0
	mov r0, ip
	strh r0, [r2, #0x10]
	strh r7, [r2, #0x12]
	adds r0, r2, #0
	adds r0, #0x22
	strb r4, [r0]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #0x1c]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r2, #0x18]
	str r1, [r2]
	str r1, [r2, #4]
	ldr r0, _080043BC @ =gUnknown_030031F0
	ldr r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080043CC
	ldr r0, _080043C0 @ =gUnknown_030031EC
	str r2, [r0]
	str r2, [r3]
	str r1, [r2]
	str r1, [r2, #4]
	b _0800440A
	.align 2, 0
_080043B8: .4byte gUnknown_03003200
_080043BC: .4byte gUnknown_030031F0
_080043C0: .4byte gUnknown_030031EC
_080043C4:
	str r2, [r6]
	str r2, [r1]
	str r1, [r2, #4]
	b _0800440A
_080043CC:
	ldr r0, _080043D4 @ =gUnknown_030031EC
	ldr r1, [r0]
	adds r6, r0, #0
	b _080043DA
	.align 2, 0
_080043D4: .4byte gUnknown_030031EC
_080043D8:
	ldr r1, [r1, #4]
_080043DA:
	cmp r1, #0
	beq _08004400
	ldr r0, [r1, #0xc]
	cmp r0, r5
	bge _080043D8
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, r4
	blo _080043D8
	ldr r0, [r1]
	cmp r0, #0
	beq _080043C4
	str r2, [r0, #4]
	str r1, [r2, #4]
	ldr r0, [r1]
	str r0, [r2]
	str r2, [r1]
	b _0800440A
_08004400:
	ldr r0, [r3]
	str r2, [r0, #4]
	str r0, [r2]
	str r1, [r2, #4]
	str r2, [r3]
_0800440A:
	adds r0, r2, #0
_0800440C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
