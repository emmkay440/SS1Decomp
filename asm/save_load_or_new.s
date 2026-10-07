	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802F374
sub_0802F374: @ 0x0802F374
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl sub_0800B1B0
	bl sub_08007484
	movs r0, #0x80
	lsls r0, r0, #5
	bl Alloc
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x80
	lsls r3, r3, #5
	bl ReadSaveSector
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r0, r0, r4
	mov ip, r0
	movs r3, #0
	adds r1, r4, #0
	movs r2, #0
	ldr r6, _0802F3F0 @ =0x0000027B
_0802F3AC:
	ldrb r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, #1
	adds r1, #1
	cmp r2, r6
	bls _0802F3AC
	mvns r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, r0
	beq _0802F3F8
	adds r0, r4, #0
	bl Free
	ldr r3, _0802F3F4 @ =gPlayerStats
	lsls r4, r5, #3
	subs r0, r4, r5
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r1, [r0, #1]
	lsls r1, r1, #2
	ldrb r2, [r0, #2]
	movs r0, #3
	ands r0, r2
	orrs r1, r0
	strh r1, [r3, #0x20]
	strh r5, [r3, #0x22]
	movs r3, #0
	adds r6, r4, #0
	b _0802F420
	.align 2, 0
_0802F3F0: .4byte 0x0000027B
_0802F3F4: .4byte gPlayerStats
_0802F3F8:
	ldr r0, _0802F41C @ =gPlayerStats
	adds r1, r4, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	bl memcpy
	adds r0, r4, #0
	bl Free
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0802F490
	b _0802F48C
	.align 2, 0
_0802F41C: .4byte gPlayerStats
_0802F420:
	ldr r4, _0802F480 @ =gPlayerStats
	lsls r1, r3, #1
	adds r2, r1, r4
	subs r0, r6, r5
	lsls r0, r0, #3
	adds r0, r0, r7
	adds r0, #0x14
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r3, #1
	cmp r3, #0xf
	bls _0802F420
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x1c
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0802F484 @ =0xFFFFF07F
	ands r0, r1
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r2]
	ldr r1, _0802F488 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r2]
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_0801516C
	b _0802F490
	.align 2, 0
_0802F480: .4byte gPlayerStats
_0802F484: .4byte 0xFFFFF07F
_0802F488: .4byte 0xFFFE0FFF
_0802F48C:
	bl sub_08007680
_0802F490:
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
