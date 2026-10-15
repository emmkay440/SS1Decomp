	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08022AB4
sub_08022AB4: @ 0x08022AB4
	push {r4, r5, lr}
	ldr r0, _08022C6C @ =0x0010004B
	ldr r5, _08022C70 @ =gUnknown_03006510
	movs r1, #9
	movs r2, #4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	beq _08022B1E
	movs r4, #0x4b
	ldr r0, _08022C74 @ =0x0011004B
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	beq _08022B1E
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	beq _08022B1E
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022B06:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022B06
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08022B1E:
	ldr r0, _08022C78 @ =0x00100049
	ldr r5, _08022C7C @ =0x03006544
	movs r1, #9
	movs r2, #4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	beq _08022B86
	movs r4, #0x49
	ldr r0, _08022C80 @ =0x00110049
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	beq _08022B86
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	beq _08022B86
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022B6E:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022B6E
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08022B86:
	ldr r0, _08022C84 @ =0x0010004A
	ldr r5, _08022C88 @ =0x03006578
	movs r1, #9
	movs r2, #4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	beq _08022BEE
	movs r4, #0x4a
	ldr r0, _08022C8C @ =0x0011004A
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	beq _08022BEE
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	beq _08022BEE
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022BD6:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022BD6
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08022BEE:
	ldr r0, _08022C90 @ =0x00100048
	ldr r5, _08022C94 @ =0x030065AC
	movs r1, #9
	movs r2, #4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	beq _08022C56
	movs r4, #0x48
	ldr r0, _08022C98 @ =0x00110048
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	beq _08022C56
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	beq _08022C56
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022C3E:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022C3E
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08022C56:
	ldr r0, _08022C9C @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _08022C62
	b _08022EE8
_08022C62:
	lsls r0, r0, #2
	ldr r1, _08022CA0 @ =_08022CA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022C6C: .4byte 0x0010004B
_08022C70: .4byte gUnknown_03006510
_08022C74: .4byte 0x0011004B
_08022C78: .4byte 0x00100049
_08022C7C: .4byte 0x03006544
_08022C80: .4byte 0x00110049
_08022C84: .4byte 0x0010004A
_08022C88: .4byte 0x03006578
_08022C8C: .4byte 0x0011004A
_08022C90: .4byte 0x00100048
_08022C94: .4byte 0x030065AC
_08022C98: .4byte 0x00110048
_08022C9C: .4byte gLanguage
_08022CA0: .4byte _08022CA4
_08022CA4: @ jump table
	.4byte _08022CB8 @ case 0
	.4byte _08022D28 @ case 1
	.4byte _08022D98 @ case 2
	.4byte _08022E08 @ case 3
	.4byte _08022E80 @ case 4
_08022CB8:
	ldr r0, _08022D1C @ =0x00100069
	ldr r5, _08022D20 @ =gUnknown_03006430
	movs r1, #9
	movs r2, #4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	bne _08022CD2
	b _08022EE8
_08022CD2:
	movs r4, #0x69
	ldr r0, _08022D24 @ =0x00110069
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	bne _08022CE2
	b _08022EE8
_08022CE2:
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	bne _08022CF8
	b _08022EE8
_08022CF8:
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022D0E:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022D0E
	b _08022E62
	.align 2, 0
_08022D1C: .4byte 0x00100069
_08022D20: .4byte gUnknown_03006430
_08022D24: .4byte 0x00110069
_08022D28:
	ldr r0, _08022D8C @ =0x00100072
	ldr r5, _08022D90 @ =gUnknown_03006430
	movs r1, #9
	movs r2, #4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	bne _08022D42
	b _08022EE8
_08022D42:
	movs r4, #0x72
	ldr r0, _08022D94 @ =0x00110072
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	bne _08022D52
	b _08022EE8
_08022D52:
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	bne _08022D68
	b _08022EE8
_08022D68:
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022D7E:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022D7E
	b _08022E62
	.align 2, 0
_08022D8C: .4byte 0x00100072
_08022D90: .4byte gUnknown_03006430
_08022D94: .4byte 0x00110072
_08022D98:
	ldr r0, _08022DFC @ =0x00100071
	ldr r5, _08022E00 @ =gUnknown_03006430
	movs r1, #9
	movs r2, #4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	bne _08022DB2
	b _08022EE8
_08022DB2:
	movs r4, #0x71
	ldr r0, _08022E04 @ =0x00110071
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	bne _08022DC2
	b _08022EE8
_08022DC2:
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	bne _08022DD8
	b _08022EE8
_08022DD8:
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022DEE:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022DEE
	b _08022E62
	.align 2, 0
_08022DFC: .4byte 0x00100071
_08022E00: .4byte gUnknown_03006430
_08022E04: .4byte 0x00110071
_08022E08:
	ldr r0, _08022E74 @ =0x00100084
	ldr r5, _08022E78 @ =gUnknown_03006430
	movs r1, #9
	movs r2, #4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	beq _08022EE8
	movs r4, #0x84
	ldr r0, _08022E7C @ =0x00110084
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	beq _08022EE8
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	beq _08022EE8
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022E58:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022E58
_08022E62:
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
	b _08022EE8
	.align 2, 0
_08022E74: .4byte 0x00100084
_08022E78: .4byte gUnknown_03006430
_08022E7C: .4byte 0x00110084
_08022E80:
	ldr r0, _08022F48 @ =0x0010008E
	ldr r5, _08022F4C @ =gUnknown_03006430
	movs r1, #9
	movs r2, #4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	beq _08022EE8
	movs r4, #0x8e
	ldr r0, _08022F50 @ =0x0011008E
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	beq _08022EE8
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	beq _08022EE8
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022ED0:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022ED0
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08022EE8:
	ldr r0, _08022F54 @ =0x00100041
	ldr r5, _08022F58 @ =gUnknown_03006470
	movs r1, #9
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	beq _08022F40
	movs r4, #0x41
	ldr r0, _08022F5C @ =0x00110041
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	beq _08022F40
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _08022F40
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08022F28:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08022F28
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08022F40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022F48: .4byte 0x0010008E
_08022F4C: .4byte gUnknown_03006430
_08022F50: .4byte 0x0011008E
_08022F54: .4byte 0x00100041
_08022F58: .4byte gUnknown_03006470
_08022F5C: .4byte 0x00110041
