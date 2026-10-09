	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start SpawnPlayer
SpawnPlayer: @ 0x0800C1E8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #1
	bl sub_080191FC
	movs r4, #0
	strh r4, [r6, #0x16]
	ldrh r1, [r5, #0x18]
	lsls r1, r1, #0xf
	str r1, [r6, #0x58]
	ldrh r0, [r5, #0x1a]
	adds r0, #2
	lsls r0, r0, #0xf
	str r0, [r6, #0x5c]
	adds r5, r6, #0
	adds r5, #0xd0
	ldr r3, [r5]
	lsrs r1, r1, #8
	ldrh r2, [r3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r3, [r5]
	ldr r1, [r6, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _0800C2B4 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	strh r4, [r6, #0xc]
	adds r0, r6, #0
	adds r0, #0x54
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r0, #4
	strh r0, [r6, #0xa]
	ldr r1, _0800C2B8 @ =gMapLayer_03003C00
	adds r0, r1, #0
	adds r0, #0x5c
	strh r4, [r0]
	ldr r0, [r5]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	adds r1, #0x5e
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x4e
	ldrh r1, [r0]
	adds r0, #0x2a
	strh r1, [r0]
	movs r3, #0
	ldr r0, _0800C2BC @ =gPlayerStats
	subs r4, #0x71
	adds r2, r0, #0
	adds r2, #0x88
_0800C26E:
	ldrb r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0800C27E
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
_0800C27E:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x18
	bls _0800C26E
	movs r3, #0
	movs r1, #0
	ldr r0, [r6, #0x1c]
_0800C28C:
	strh r1, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #2
	bls _0800C28C
	bl sub_08021000
	ldr r2, _0800C2C0 @ =gMapLayer_03003910
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r0, _0800C2C4 @ =0x000514C9
	bl SignalEvent
	bl sub_08007554
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C2B4: .4byte 0xFFFFF000
_0800C2B8: .4byte gMapLayer_03003C00
_0800C2BC: .4byte gPlayerStats
_0800C2C0: .4byte gMapLayer_03003910
_0800C2C4: .4byte 0x000514C9
