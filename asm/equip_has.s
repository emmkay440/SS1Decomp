	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08010B48
sub_08010B48: @ 0x08010B48
	push {r4, r5, r6, lr}
	ldr r1, _08010BD0 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r2, r0, #2
	adds r0, r2, r1
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08010C20
	adds r0, r1, #0
	adds r0, #0x70
	adds r0, r2, r0
	movs r2, #0
	cmp r0, #0
	beq _08010BAA
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _08010B86
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08010B86:
	cmp r2, #0
	beq _08010BAA
	movs r1, #0
	ldr r0, _08010BD4 @ =0x00000153
	adds r2, r2, r0
_08010B90:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08010B9E
	b _08010DE4
_08010B9E:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010B90
_08010BAA:
	ldr r0, _08010BD0 @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x70
	adds r0, r1, r0
	cmp r0, #0
	beq _08010C20
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08010BE2
	cmp r0, #3
	bgt _08010BD8
	cmp r0, #2
	beq _08010BE2
	b _08010BE6
	.align 2, 0
_08010BD0: .4byte gPlayerStats
_08010BD4: .4byte 0x00000153
_08010BD8:
	cmp r0, #4
	beq _08010BE2
	cmp r0, #5
	beq _08010C20
	b _08010BE6
_08010BE2:
	lsls r0, r1, #0xc
	lsrs r4, r0, #0x1b
_08010BE6:
	cmp r4, #0
	beq _08010BF8
	subs r0, r4, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08010BFA
_08010BF8:
	movs r0, #0
_08010BFA:
	cmp r0, #0
	beq _08010C20
	movs r1, #0
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r0, r3
_08010C06:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08010C14
	b _08010DE4
_08010C14:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010C06
_08010C20:
	ldr r1, _08010C90 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08010CE0
	adds r0, r1, #0
	adds r0, #0x80
	movs r2, #0
	cmp r0, #0
	beq _08010C74
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _08010C52
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08010C52:
	cmp r2, #0
	beq _08010C74
	movs r1, #0
	adds r2, #0xf2
_08010C5A:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08010C68
	b _08010DE4
_08010C68:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010C5A
_08010C74:
	ldr r0, _08010C94 @ =0x03003D90
	cmp r0, #0
	beq _08010CE0
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08010CA2
	cmp r0, #3
	bgt _08010C98
	cmp r0, #2
	beq _08010CA2
	b _08010CA6
	.align 2, 0
_08010C90: .4byte gPlayerStats
_08010C94: .4byte 0x03003D90
_08010C98:
	cmp r0, #4
	beq _08010CA2
	cmp r0, #5
	beq _08010CE0
	b _08010CA6
_08010CA2:
	lsls r0, r1, #0xc
	lsrs r5, r0, #0x1b
_08010CA6:
	cmp r5, #0
	beq _08010CB8
	subs r0, r5, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08010CBA
_08010CB8:
	movs r0, #0
_08010CBA:
	cmp r0, #0
	beq _08010CE0
	movs r1, #0
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r0, r3
_08010CC6:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08010CD4
	b _08010DE4
_08010CD4:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010CC6
_08010CE0:
	ldr r1, _08010D4C @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08010D9A
	adds r0, r1, #0
	adds r0, #0x7c
	movs r2, #0
	cmp r0, #0
	beq _08010D32
	ldr r1, [r1, #0x7c]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _08010D12
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08010D12:
	cmp r2, #0
	beq _08010D32
	movs r1, #0
	adds r2, #0xf2
_08010D1A:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08010DE4
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010D1A
_08010D32:
	ldr r0, _08010D50 @ =0x03003D8C
	cmp r0, #0
	beq _08010D9A
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08010D5E
	cmp r0, #3
	bgt _08010D54
	cmp r0, #2
	beq _08010D5E
	b _08010D62
	.align 2, 0
_08010D4C: .4byte gPlayerStats
_08010D50: .4byte 0x03003D8C
_08010D54:
	cmp r0, #4
	beq _08010D5E
	cmp r0, #5
	beq _08010D9A
	b _08010D62
_08010D5E:
	lsls r0, r1, #0xc
	lsrs r6, r0, #0x1b
_08010D62:
	cmp r6, #0
	beq _08010D74
	subs r0, r6, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08010D76
_08010D74:
	movs r0, #0
_08010D76:
	cmp r0, #0
	beq _08010D9A
	movs r1, #0
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r0, r3
_08010D82:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08010DE4
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010D82
_08010D9A:
	ldr r1, _08010DE8 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08010DF8
	adds r0, r1, #0
	adds r0, #0x84
	movs r2, #0
	cmp r0, #0
	beq _08010DF8
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _08010DCC
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08010DCC:
	cmp r2, #0
	beq _08010DF8
	movs r1, #0
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r2, r0
_08010DD8:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08010DEC
_08010DE4:
	movs r0, #1
	b _08010DFA
	.align 2, 0
_08010DE8: .4byte gPlayerStats
_08010DEC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010DD8
_08010DF8:
	movs r0, #0
_08010DFA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
