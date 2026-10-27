	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08012230
sub_08012230: @ 0x08012230
	push {r4, r5, r6, lr}
	ldr r1, _080122B8 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r2, r0, #2
	adds r0, r2, r1
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08012308
	adds r0, r1, #0
	adds r0, #0x70
	adds r0, r2, r0
	movs r2, #0
	cmp r0, #0
	beq _08012292
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _0801226E
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0801226E:
	cmp r2, #0
	beq _08012292
	movs r1, #0
	ldr r0, _080122BC @ =0x00000153
	adds r2, r2, r0
_08012278:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _08012286
	b _080124CC
_08012286:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08012278
_08012292:
	ldr r0, _080122B8 @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x70
	adds r0, r1, r0
	cmp r0, #0
	beq _08012308
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080122CA
	cmp r0, #3
	bgt _080122C0
	cmp r0, #2
	beq _080122CA
	b _080122CE
	.align 2, 0
_080122B8: .4byte gPlayerStats
_080122BC: .4byte 0x00000153
_080122C0:
	cmp r0, #4
	beq _080122CA
	cmp r0, #5
	beq _08012308
	b _080122CE
_080122CA:
	lsls r0, r1, #0xc
	lsrs r4, r0, #0x1b
_080122CE:
	cmp r4, #0
	beq _080122E0
	subs r0, r4, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _080122E2
_080122E0:
	movs r0, #0
_080122E2:
	cmp r0, #0
	beq _08012308
	movs r1, #0
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r0, r3
_080122EE:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _080122FC
	b _080124CC
_080122FC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080122EE
_08012308:
	ldr r1, _08012378 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080123C8
	adds r0, r1, #0
	adds r0, #0x80
	movs r2, #0
	cmp r0, #0
	beq _0801235C
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _0801233A
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0801233A:
	cmp r2, #0
	beq _0801235C
	movs r1, #0
	adds r2, #0xf2
_08012342:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _08012350
	b _080124CC
_08012350:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08012342
_0801235C:
	ldr r0, _0801237C @ =0x03003D90
	cmp r0, #0
	beq _080123C8
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _0801238A
	cmp r0, #3
	bgt _08012380
	cmp r0, #2
	beq _0801238A
	b _0801238E
	.align 2, 0
_08012378: .4byte gPlayerStats
_0801237C: .4byte 0x03003D90
_08012380:
	cmp r0, #4
	beq _0801238A
	cmp r0, #5
	beq _080123C8
	b _0801238E
_0801238A:
	lsls r0, r1, #0xc
	lsrs r5, r0, #0x1b
_0801238E:
	cmp r5, #0
	beq _080123A0
	subs r0, r5, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _080123A2
_080123A0:
	movs r0, #0
_080123A2:
	cmp r0, #0
	beq _080123C8
	movs r1, #0
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r0, r3
_080123AE:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _080123BC
	b _080124CC
_080123BC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080123AE
_080123C8:
	ldr r1, _08012434 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08012482
	adds r0, r1, #0
	adds r0, #0x7c
	movs r2, #0
	cmp r0, #0
	beq _0801241A
	ldr r1, [r1, #0x7c]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _080123FA
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_080123FA:
	cmp r2, #0
	beq _0801241A
	movs r1, #0
	adds r2, #0xf2
_08012402:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _080124CC
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08012402
_0801241A:
	ldr r0, _08012438 @ =0x03003D8C
	cmp r0, #0
	beq _08012482
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08012446
	cmp r0, #3
	bgt _0801243C
	cmp r0, #2
	beq _08012446
	b _0801244A
	.align 2, 0
_08012434: .4byte gPlayerStats
_08012438: .4byte 0x03003D8C
_0801243C:
	cmp r0, #4
	beq _08012446
	cmp r0, #5
	beq _08012482
	b _0801244A
_08012446:
	lsls r0, r1, #0xc
	lsrs r6, r0, #0x1b
_0801244A:
	cmp r6, #0
	beq _0801245C
	subs r0, r6, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _0801245E
_0801245C:
	movs r0, #0
_0801245E:
	cmp r0, #0
	beq _08012482
	movs r1, #0
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r0, r3
_0801246A:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _080124CC
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801246A
_08012482:
	ldr r1, _080124D0 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080124E0
	adds r0, r1, #0
	adds r0, #0x84
	movs r2, #0
	cmp r0, #0
	beq _080124E0
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _080124B4
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_080124B4:
	cmp r2, #0
	beq _080124E0
	movs r1, #0
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r2, r0
_080124C0:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _080124D4
_080124CC:
	movs r0, #1
	b _080124E2
	.align 2, 0
_080124D0: .4byte gPlayerStats
_080124D4:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080124C0
_080124E0:
	movs r0, #0
_080124E2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
