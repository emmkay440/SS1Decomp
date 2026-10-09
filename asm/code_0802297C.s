	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0802297C
sub_0802297C: @ 0x0802297C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r7, _080229CC @ =0x03006424
	movs r0, #1
	mov r8, r0
_0802298A:
	ldrb r0, [r7]
	asrs r0, r5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080229BC
	ldr r6, _080229D0 @ =0x03006418
	movs r0, #0x34
	adds r4, r5, #0
	muls r4, r0, r4
	ldr r0, [r6]
	adds r0, r0, r4
	bl IsThreadInList
	cmp r0, #0
	beq _080229B2
	ldr r0, [r6]
	adds r0, r0, r4
	bl KillThread
_080229B2:
	mov r1, r8
	lsls r1, r5
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
_080229BC:
	adds r5, #1
	cmp r5, #3
	bls _0802298A
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080229CC: .4byte 0x03006424
_080229D0: .4byte 0x03006418

	thumb_func_start sub_080229D4
sub_080229D4: @ 0x080229D4
	cmp r0, #0
	beq _080229DC
	adds r0, #0x80
	strh r1, [r0]
_080229DC:
	bx lr
	.align 2, 0

	thumb_func_start sub_080229E0
sub_080229E0: @ 0x080229E0
	movs r1, #0
	ldr r0, _080229F8 @ =0x03006424
	ldrb r2, [r0]
	movs r3, #1
_080229E8:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	bne _080229FC
	adds r0, r1, #0
	b _08022A08
	.align 2, 0
_080229F8: .4byte 0x03006424
_080229FC:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080229E8
	movs r0, #0xff
_08022A08:
	bx lr
	.align 2, 0

	thumb_func_start sub_08022A0C
sub_08022A0C: @ 0x08022A0C
	adds r2, r0, #0
	ldr r0, _08022A34 @ =0x03006424
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x31
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08022A30
	adds r1, r2, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #3
	bne _08022A30
	movs r0, #4
	strb r0, [r1]
_08022A30:
	bx lr
	.align 2, 0
_08022A34: .4byte 0x03006424

	thumb_func_start sub_08022A38
sub_08022A38: @ 0x08022A38
	push {r4, lr}
	ldr r4, _08022A54 @ =0x0300641C
	movs r0, #0x88
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4]
	ldr r1, _08022A58 @ =0x03006420
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022A54: .4byte 0x0300641C
_08022A58: .4byte 0x03006420
_08022A5C:
	.byte 0x00, 0x21, 0x05, 0x48
	.byte 0x02, 0x78, 0x01, 0x23, 0x10, 0x1C, 0x08, 0x41, 0x18, 0x40, 0x00, 0x28, 0x04, 0xD1, 0x08, 0x1C
	.byte 0x08, 0xE0, 0x00, 0x00, 0x20, 0x64, 0x00, 0x03, 0x48, 0x1C, 0x00, 0x06, 0x01, 0x0E, 0x03, 0x29
	.byte 0xF0, 0xD9, 0xFF, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_08022A88
sub_08022A88: @ 0x08022A88
	movs r1, #0
	ldr r0, _08022AA0 @ =0x03006420
	ldrb r2, [r0]
	movs r3, #1
_08022A90:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08022AA4
	movs r0, #1
	b _08022AB0
	.align 2, 0
_08022AA0: .4byte 0x03006420
_08022AA4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08022A90
	movs r0, #0
_08022AB0:
	bx lr
	.align 2, 0

	thumb_func_start sub_08022AB4
sub_08022AB4: @ 0x08022AB4
	push {r4, r5, lr}
	ldr r0, _08022C6C @ =0x0010004B
	ldr r5, _08022C70 @ =0x03006510
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
	ldr r0, _08022C9C @ =0x03003CA8
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
_08022C70: .4byte 0x03006510
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
_08022C9C: .4byte 0x03003CA8
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
	ldr r5, _08022F58 @ =0x03006470
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
_08022F58: .4byte 0x03006470
_08022F5C: .4byte 0x00110041

	thumb_func_start sub_08022F60
sub_08022F60: @ 0x08022F60
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r6, r1, #0
	str r2, [sp, #0xc]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	add r5, sp, #4
	ldr r1, _08023040 @ =0x080548BC
	adds r0, r5, #0
	movs r2, #8
	bl memcpy
	add r4, sp, #0xc
	adds r0, r4, #0
	movs r1, #0x64
	bl sub_080004A4
	mov r1, sp
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_080004A4
	mov r1, sp
	strb r0, [r1, #1]
	ldr r0, [sp, #0xc]
	strb r0, [r1, #2]
	mov r0, r8
	asrs r0, r0, #3
	mov r8, r0
	asrs r6, r6, #3
	movs r7, #2
	mov r0, sp
	ldrb r0, [r0]
	mov ip, r5
	cmp r0, #0
	beq _08022FE0
	ldr r5, _08023044 @ =0x03005DF0
	mov r1, r8
	subs r1, #2
	lsls r1, r1, #1
	subs r4, r6, #1
	lsls r0, r4, #6
	adds r1, r1, r0
	adds r1, r1, r5
	mov r2, sp
	mov r7, sb
	lsls r3, r7, #1
	mov r7, ip
	adds r0, r7, r3
	ldrh r0, [r0]
	ldrb r2, [r2]
	adds r0, r0, r2
	strh r0, [r1]
	movs r7, #1
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022FF0
_08022FE0:
	mov r0, sp
	ldrb r0, [r0, #1]
	ldr r5, _08023044 @ =0x03005DF0
	subs r4, r6, #1
	mov r1, sb
	lsls r3, r1, #1
	cmp r0, #0
	beq _08023010
_08022FF0:
	mov r6, r8
	subs r0, r6, r7
	lsls r0, r0, #1
	lsls r1, r4, #6
	adds r0, r0, r1
	adds r0, r0, r5
	mov r1, sp
	ldrb r1, [r1, #1]
	mov r6, ip
	adds r2, r6, r3
	ldrh r2, [r2]
	adds r1, r1, r2
	strh r1, [r0]
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08023010:
	mov r1, r8
	subs r0, r1, r7
	lsls r0, r0, #1
	lsls r1, r4, #6
	adds r0, r0, r1
	adds r0, r0, r5
	mov r1, sp
	ldrb r1, [r1, #2]
	mov r5, ip
	adds r2, r5, r3
	ldrh r2, [r2]
	adds r1, r1, r2
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0800EE44
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023040: .4byte 0x080548BC
_08023044: .4byte 0x03005DF0

	thumb_func_start sub_08023048
sub_08023048: @ 0x08023048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	mov r8, r3
	movs r6, #0
	movs r7, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bls _0802306C
	b _08023318
_0802306C:
	lsls r0, r0, #2
	ldr r1, _08023078 @ =_0802307C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023078: .4byte _0802307C
_0802307C: @ jump table
	.4byte _08023318 @ case 0
	.4byte _0802309C @ case 1
	.4byte _080230B6 @ case 2
	.4byte _080230EC @ case 3
	.4byte _0802310E @ case 4
	.4byte _08023144 @ case 5
	.4byte _0802315E @ case 6
	.4byte _08023178 @ case 7
_0802309C:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	b _0802318E
_080230B6:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r5, [r0]
	ldr r2, [r4]
	lsls r0, r2, #5
	cmp r0, #0
	blt _0802312E
	lsls r0, r2, #6
	lsrs r7, r0, #0x1e
	cmp r7, #0
	bne _0802318E
	ldr r3, _080230E8 @ =0x0000015B
	adds r0, r1, r3
	ldrb r7, [r0]
	b _0802318E
	.align 2, 0
_080230E8: .4byte 0x0000015B
_080230EC:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r2, [r4]
	lsls r0, r2, #5
	cmp r0, #0
	blt _0802312E
	b _0802313E
_0802310E:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r5, [r0]
	ldr r2, [r4]
	lsls r0, r2, #5
	cmp r0, #0
	bge _0802313E
_0802312E:
	adds r0, r5, #0
	adds r0, #0x70
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0802318E
_0802313E:
	lsls r0, r2, #6
	lsrs r7, r0, #0x1e
	b _0802318E
_08023144:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r5, [r0]
	b _0802318E
_0802315E:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r5, [r0]
	b _0802318E
_08023178:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb8
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	ldr r0, [r0, #0x78]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802318E:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08023224
	bl sub_08007544
	adds r3, r0, #0
	mov r2, sb
	asrs r7, r2, #0xc
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r4, sl
	asrs r6, r4, #0xc
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x1e
	movs r2, #0x10
	str r2, [sp]
	str r3, [sp, #4]
	add r2, sp, #0x1c
	adds r3, r4, #0
	bl sub_08005FC4
	add r0, sp, #0x1c
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080231D2
	b _08023318
_080231D2:
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080231E0
	b _08023318
_080231E0:
	cmp r1, #0xa8
	ble _080231E6
	b _08023318
_080231E6:
	bl sub_08007544
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r1, sp, #0x1c
	movs r2, #0
	ldrsh r3, [r1, r2]
	movs r2, #0
	ldrsh r1, [r4, r2]
	str r0, [sp]
	ldr r0, _08023220 @ =0x0300648C
	str r0, [sp, #4]
	subs r0, #0x1c
	ldr r2, [r0, #8]
	str r2, [sp, #8]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r3, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_08004418
	b _08023318
	.align 2, 0
_08023220: .4byte 0x0300648C
_08023224:
	movs r0, #2
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08023240
	cmp r6, #0
	bne _08023240
	ldr r0, _0802323C @ =0x03006470
	adds r0, #0x25
	movs r1, #0xa
	b _08023246
	.align 2, 0
_0802323C: .4byte 0x03006470
_08023240:
	ldr r0, _080232EC @ =0x03006470
	adds r0, #0x25
	movs r1, #9
_08023246:
	strb r1, [r0]
	movs r0, #8
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _0802327A
	cmp r7, #0
	beq _0802327A
	adds r3, r7, #0
	adds r3, #0xb
	ldr r2, _080232F0 @ =gUnknown_03006430
	mov r1, sl
	adds r1, #8
	movs r0, #0
	str r0, [sp]
	adds r0, r2, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	mov r0, sb
	movs r2, #4
	bl sub_08003518
_0802327A:
	movs r0, #4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080232F4
	ldr r2, _080232EC @ =0x03006470
	ldrh r3, [r2, #0x2e]
	ldrh r4, [r2, #0x2c]
	adds r1, r3, r4
	strh r1, [r2, #0x2c]
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _080232A4
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x30
	ldrsh r1, [r2, r4]
	cmp r0, r1
	ble _080232A4
	rsbs r0, r3, #0
	strh r0, [r2, #0x2e]
_080232A4:
	ldrh r3, [r2, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080232BE
	movs r4, #0x2c
	ldrsh r1, [r2, r4]
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _080232BE
	rsbs r0, r3, #0
	strh r0, [r2, #0x2e]
_080232BE:
	movs r1, #0
	str r1, [sp]
	adds r0, r2, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	movs r3, #0x2c
	ldrsh r0, [r2, r3]
	str r0, [sp, #0x10]
	movs r4, #0x2c
	ldrsh r0, [r2, r4]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	mov r0, sb
	mov r1, sl
	movs r2, #0
	adds r3, r5, #0
	bl sub_08003724
	b _08023310
	.align 2, 0
_080232EC: .4byte 0x03006470
_080232F0: .4byte gUnknown_03006430
_080232F4:
	str r0, [sp]
	ldr r0, _08023328 @ =0x0300648C
	str r0, [sp, #4]
	subs r0, #0x1c
	ldr r1, [r0, #8]
	str r1, [sp, #8]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	mov r0, sb
	mov r1, sl
	movs r2, #0
	adds r3, r5, #0
	bl sub_08003518
_08023310:
	ldr r0, _0802332C @ =gUnknown_03006430
	adds r0, #0x25
	movs r1, #9
	strb r1, [r0]
_08023318:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023328: .4byte 0x0300648C
_0802332C: .4byte gUnknown_03006430

	thumb_func_start sub_08023330
sub_08023330: @ 0x08023330
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	str r0, [sp, #0x8c]
	str r1, [sp, #0x90]
	adds r7, r2, #0
	str r3, [sp, #0x94]
	cmp r7, #0
	bne _0802334A
	b _08023A80
_0802334A:
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x9c]
	movs r2, #0
	str r2, [sp, #0xa0]
	movs r3, #0
	str r3, [sp, #0xa4]
	ldr r0, _0802337C @ =0x7FFFFFFF
	ldr r1, [sp, #0x94]
	ands r1, r0
	mov sb, r1
	ldr r1, [r7]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	adds r2, r1, #0
	cmp r0, #7
	bls _08023370
	b _08023A80
_08023370:
	lsls r0, r0, #2
	ldr r1, _08023380 @ =_08023384
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802337C: .4byte 0x7FFFFFFF
_08023380: .4byte _08023384
_08023384: @ jump table
	.4byte _08023A80 @ case 0
	.4byte _080233A4 @ case 1
	.4byte _08023410 @ case 2
	.4byte _080234D4 @ case 3
	.4byte _0802355C @ case 4
	.4byte _08023610 @ case 5
	.4byte _0802367C @ case 6
	.4byte _080236F0 @ case 7
_080233A4:
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x98]
	mov r2, sb
	cmp r2, #1
	beq _080233D8
	cmp r2, #1
	blo _080233C4
	cmp r2, #2
	beq _080233F4
	b _08023764
_080233C4:
	ldr r0, _080233D4 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0x98]
	adds r5, r3, r0
	b _08023764
	.align 2, 0
_080233D4: .4byte 0x03003CA8
_080233D8:
	ldr r0, _080233F0 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, [sp, #0x98]
	adds r5, r2, r0
	b _08023764
	.align 2, 0
_080233F0: .4byte 0x03003CA8
_080233F4:
	ldr r0, _0802340C @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r3, #0xbd
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [sp, #0x98]
	adds r5, r1, r0
	b _08023764
	.align 2, 0
_0802340C: .4byte 0x03003CA8
_08023410:
	ldr r0, [r7]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r7]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _0802343A
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	mov sl, r0
_0802343A:
	mov r2, sb
	cmp r2, #1
	beq _0802345C
	cmp r2, #1
	blo _0802344A
	cmp r2, #2
	beq _08023474
	b _080234A8
_0802344A:
	ldr r0, _08023458 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r5, r4, r0
	b _080234A8
	.align 2, 0
_08023458: .4byte 0x03003CA8
_0802345C:
	ldr r0, _08023470 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r5, r4, r0
	b _080234A8
	.align 2, 0
_08023470: .4byte 0x03003CA8
_08023474:
	mov r0, sl
	cmp r0, #0
	bne _08023494
	ldr r0, _08023490 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r5, r4, r0
	b _080234A8
	.align 2, 0
_08023490: .4byte 0x03003CA8
_08023494:
	ldr r0, _080234CC @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r3, sl
	adds r5, r3, r0
_080234A8:
	ldr r0, [r7]
	lsls r1, r0, #5
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x9c]
	lsls r1, r0, #8
	lsrs r1, r1, #0x1c
	str r1, [sp, #0xa0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1e
	str r0, [sp, #0xa4]
	cmp r0, #0
	beq _080234C2
	b _08023764
_080234C2:
	ldr r1, _080234D0 @ =0x0000015B
	adds r0, r4, r1
	ldrb r0, [r0]
	str r0, [sp, #0xa4]
	b _08023764
	.align 2, 0
_080234CC: .4byte 0x03003CA8
_080234D0: .4byte 0x0000015B
_080234D4:
	ldr r0, [r7]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r7]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _080234FE
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	mov sl, r0
_080234FE:
	mov r2, sb
	cmp r2, #1
	beq _0802350E
	cmp r2, #1
	blo _08023596
	cmp r2, #2
	beq _08023524
	b _080235F4
_0802350E:
	ldr r0, _08023520 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r3, #0x82
	lsls r3, r3, #1
	b _080235D4
	.align 2, 0
_08023520: .4byte 0x03003CA8
_08023524:
	mov r0, sl
	cmp r0, #0
	bne _08023540
	ldr r0, _0802353C @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xa7
	lsls r1, r1, #2
	b _080235B6
	.align 2, 0
_0802353C: .4byte 0x03003CA8
_08023540:
	ldr r0, _08023558 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r3, sl
	adds r5, r3, r0
	b _080235F4
	.align 2, 0
_08023558: .4byte 0x03003CA8
_0802355C:
	ldr r0, [r7]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r7]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _08023586
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	mov sl, r0
_08023586:
	mov r0, sb
	cmp r0, #1
	beq _080235A8
	cmp r0, #1
	blo _08023596
	cmp r0, #2
	beq _080235C0
	b _080235F4
_08023596:
	ldr r0, _080235A4 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r5, r4, r0
	b _080235F4
	.align 2, 0
_080235A4: .4byte 0x03003CA8
_080235A8:
	ldr r0, _080235BC @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x82
	lsls r1, r1, #1
_080235B6:
	adds r0, r0, r1
	adds r5, r4, r0
	b _080235F4
	.align 2, 0
_080235BC: .4byte 0x03003CA8
_080235C0:
	mov r2, sl
	cmp r2, #0
	bne _080235E0
	ldr r0, _080235DC @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r3, #0xa7
	lsls r3, r3, #2
_080235D4:
	adds r0, r0, r3
	adds r5, r4, r0
	b _080235F4
	.align 2, 0
_080235DC: .4byte 0x03003CA8
_080235E0:
	ldr r0, _0802360C @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, sl
	adds r5, r2, r0
_080235F4:
	ldr r0, [r7]
	lsls r1, r0, #5
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x9c]
	lsls r1, r0, #8
	lsrs r1, r1, #0x1c
	str r1, [sp, #0xa0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1e
	str r0, [sp, #0xa4]
	b _08023764
	.align 2, 0
_0802360C: .4byte 0x03003CA8
_08023610:
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
	movs r3, #0
	mov sl, r3
	mov r0, sb
	cmp r0, #1
	beq _08023644
	cmp r0, #1
	blo _08023634
	cmp r0, #2
	beq _0802365C
	b _0802366E
_08023634:
	ldr r0, _08023640 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	b _0802366C
	.align 2, 0
_08023640: .4byte 0x03003CA8
_08023644:
	ldr r0, _08023658 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0802366C
	.align 2, 0
_08023658: .4byte 0x03003CA8
_0802365C:
	ldr r0, _08023678 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r0, r0, r3
_0802366C:
	adds r5, r2, r0
_0802366E:
	movs r0, #0
	str r0, [sp, #0x9c]
	movs r1, #0
	str r1, [sp, #0xa0]
	b _08023764
	.align 2, 0
_08023678: .4byte 0x03003CA8
_0802367C:
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, _080236A4 @ =0x000900E9
	bl GetDataRecord
	mov r2, sb
	cmp r2, #1
	beq _080236BC
	cmp r2, #1
	blo _080236A8
	cmp r2, #2
	beq _080236C2
	b _08023764
	.align 2, 0
_080236A4: .4byte 0x000900E9
_080236A8:
	ldr r0, _080236B8 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r4, r0
	b _08023764
	.align 2, 0
_080236B8: .4byte 0x03003CA8
_080236BC:
	adds r5, r0, #0
	adds r5, #0xa
	b _08023764
_080236C2:
	adds r5, r0, #0
	adds r5, #0xa
	movs r0, #0
	add r1, sp, #0x88
	str r0, [r1]
	ldr r2, [r7]
	adds r3, r1, #0
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x19
	adds r2, r0, #1
_080236D6:
	ldrh r0, [r5]
	cmp r0, #0
	bne _080236E2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r3]
_080236E2:
	ldr r0, [r1]
	cmp r0, r2
	beq _080236EC
	adds r5, #2
	b _080236D6
_080236EC:
	adds r5, #2
	b _08023764
_080236F0:
	bl sub_08007510
	cmp r0, #0
	bne _08023748
	ldr r0, [r7]
	lsrs r0, r0, #0xf
	add r1, sp, #0x88
	str r0, [r1]
	ldr r5, _08023744 @ =0x080FBAAC
	add r4, sp, #0x44
	movs r6, #0
	mov r8, r6
	adds r3, r1, #0
_0802370A:
	ldr r1, [r5]
	adds r0, r3, #0
	str r3, [sp, #0xa8]
	bl sub_080004A4
	adds r0, #0xef
	strh r0, [r4]
	ldr r3, [sp, #0xa8]
	cmp r6, #0
	bne _08023726
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	beq _0802372A
_08023726:
	adds r4, #2
	movs r6, #1
_0802372A:
	movs r0, #1
	add r8, r0
	adds r5, #4
	mov r1, r8
	cmp r1, #5
	bls _0802370A
	movs r0, #0xb7
	strh r0, [r4]
	movs r0, #0
	strh r0, [r4, #2]
	add r5, sp, #0x44
	b _08023764
	.align 2, 0
_08023744: .4byte 0x080FBAAC
_08023748:
	ldr r0, [r7]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb8
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	ldr r1, _08023778 @ =0x03003CA8
	ldrh r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r5, r0, r1
_08023764:
	mov r2, sb
	cmp r2, #1
	bne _0802376C
	b _080238A0
_0802376C:
	cmp r2, #1
	blo _0802377C
	cmp r2, #2
	bne _08023776
	b _08023A12
_08023776:
	b _08023A50
	.align 2, 0
_08023778: .4byte 0x03003CA8
_0802377C:
	ldr r3, [sp, #0x9c]
	cmp r3, #0
	beq _080237B0
	mov r0, sp
	movs r1, #0xfe
	strh r1, [r0]
	movs r6, #0
	ldrh r0, [r5]
	cmp r0, #0
	beq _080237A6
	adds r1, r5, #0
	mov r2, sp
	adds r2, #2
_08023796:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r6, #1
	ldrh r0, [r1]
	cmp r0, #0
	bne _08023796
_080237A6:
	adds r0, r6, #1
	lsls r0, r0, #1
	mov r2, sp
	adds r1, r2, r0
	b _08023A4C
_080237B0:
	ldr r3, [sp, #0xa4]
	cmp r3, #0
	beq _080237C2
	mov r1, sp
	adds r0, r3, #0
	adds r0, #0xfa
	strh r0, [r1]
	movs r6, #1
	b _080237C4
_080237C2:
	movs r6, #0
_080237C4:
	movs r4, #0
	ldrh r0, [r5]
	cmp r0, #0
	beq _080237EC
_080237CC:
	adds r0, r4, r6
	lsls r0, r0, #1
	mov r2, sp
	adds r1, r2, r0
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _080237CC
_080237EC:
	adds r6, r6, r4
	mov r3, sl
	cmp r3, #0
	beq _08023834
	movs r4, #0
	ldr r0, _0802389C @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08023832
	adds r2, r1, #0
_0802380A:
	adds r0, r4, r6
	lsls r0, r0, #1
	mov r3, sp
	adds r1, r3, r0
	lsls r0, r4, #1
	adds r0, r0, r2
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r2
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0
	beq _08023832
	cmp r4, #0x20
	bls _0802380A
_08023832:
	adds r6, r6, r4
_08023834:
	lsls r0, r6, #0x18
	lsrs r4, r0, #0x18
	adds r1, r4, #0
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	bne _08023842
	b _08023A46
_08023842:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	lsls r0, r1, #1
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0xa3
	strh r0, [r1]
	ldr r0, [sp, #0xa0]
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	ldr r0, [sp, #0xa0]
	movs r1, #0xa
	bl __umodsi3
	str r0, [sp, #0xa0]
	cmp r6, #0
	beq _0802387E
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r5, #1
	mov r3, sp
	adds r1, r3, r0
	adds r0, r6, #0
	adds r0, #0xef
	strh r0, [r1]
_0802387E:
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #1
	add r1, sp
	ldr r0, [sp, #0xa0]
	adds r0, #0xef
	strh r0, [r1]
	lsls r0, r4, #1
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	b _08023A46
	.align 2, 0
_0802389C: .4byte 0x03003CA8
_080238A0:
	movs r4, #0
	ldr r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _080238AE
	b _080239E8
_080238AE:
	ldr r1, [sp, #0x98]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _080238BE
	b _080239C4
_080238BE:
	bl GetPlayerClass
	cmp r0, #0
	bne _080238F4
	ldr r0, _080238F0 @ =gPlayerStats
	adds r0, #0x54
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x64
	ldr r3, [sp, #0x98]
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r7, r0
	movs r1, #0x64
	bl __udivsi3
	adds r7, r0, #0
	b _08023900
	.align 2, 0
_080238F0: .4byte gPlayerStats
_080238F4:
	ldr r3, [sp, #0x98]
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	ldrsh r7, [r0, r2]
_08023900:
	movs r4, #0
	ldrh r0, [r5]
	b _0802391E
_08023906:
	lsls r0, r4, #1
	mov r3, sp
	adds r1, r3, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
_0802391E:
	cmp r0, #0
	beq _08023926
	cmp r0, #0xef
	bne _08023906
_08023926:
	adds r0, r4, #3
	mov r8, r0
	mov sb, r4
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802399C
	adds r0, r7, #0
	movs r1, #0x64
	bl __udivsi3
	adds r6, r0, #0
	adds r0, r7, #0
	movs r1, #0x64
	bl __umodsi3
	adds r7, r0, #0
	cmp r6, #0
	beq _08023962
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sb
	lsls r0, r1, #1
	mov r2, sp
	adds r1, r2, r0
	adds r0, r6, #0
	adds r0, #0xef
	strh r0, [r1]
_08023962:
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	adds r0, r7, #0
	movs r1, #0xa
	bl __umodsi3
	adds r7, r0, #0
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r4, #0
	lsls r1, r1, #1
	add r1, sp
	adds r0, r6, #0
	adds r0, #0xef
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r2, r2, #1
	mov r3, sp
	adds r1, r3, r2
	adds r0, r7, #0
	adds r0, #0xef
	strh r0, [r1]
_0802399C:
	mov r1, r8
	lsls r0, r1, #1
	adds r1, r0, r5
	ldrh r0, [r1]
	cmp r0, #0
	beq _08023A0A
	adds r2, r1, #0
_080239AA:
	lsls r0, r4, #1
	mov r3, sp
	adds r1, r3, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrh r0, [r2]
	cmp r0, #0
	bne _080239AA
	b _08023A0A
_080239C4:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08023A0A
_080239CA:
	lsls r0, r4, #1
	mov r2, sp
	adds r1, r2, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _080239CA
	b _08023A0A
_080239E8:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08023A0A
_080239EE:
	lsls r0, r4, #1
	mov r3, sp
	adds r1, r3, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _080239EE
_08023A0A:
	lsls r0, r4, #1
	mov r2, sp
	adds r1, r2, r0
	b _08023A4C
_08023A12:
	movs r4, #0
	ldr r3, [sp, #0x9c]
	cmp r3, #0
	beq _08023A24
	mov r1, sp
	movs r0, #0xfe
	strh r0, [r1]
	movs r4, #1
	b _08023A46
_08023A24:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08023A46
_08023A2A:
	lsls r0, r4, #1
	mov r2, sp
	adds r1, r2, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _08023A2A
_08023A46:
	lsls r0, r4, #1
	mov r3, sp
	adds r1, r3, r0
_08023A4C:
	movs r0, #0
	strh r0, [r1]
_08023A50:
	movs r0, #0
	ldr r1, [sp, #0x94]
	cmp r1, #0
	bge _08023A70
	mov r0, sp
	bl sub_0800ED80
	ldr r1, _08023A90 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r6, r0, #1
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08023A70:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x8c]
	adds r1, r2, r1
	mov r0, sp
	ldr r2, [sp, #0x90]
	bl sub_0800EB30
_08023A80:
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023A90: .4byte 0x03003CA0

	thumb_func_start sub_08023A94
sub_08023A94: @ 0x08023A94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x1c]
	ldr r1, _08023AB0 @ =0x080548C4
	add r0, sp, #0x10
	movs r2, #0xc
	bl memcpy
	b _08023E42
	.align 2, 0
_08023AB0: .4byte 0x080548C4
_08023AB4:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _08023ADE
	ldr r0, _08023AE8 @ =0x00018A92
	bl _08000400
	ldr r0, _08023AEC @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r0, #0x57
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	beq _08023ADE
	b _08023E4C
_08023ADE:
	ldr r1, _08023AF0 @ =0x0000FFE4
	mov sl, r1
	movs r2, #0x3c
	str r2, [sp, #0x20]
	b _08023CD8
	.align 2, 0
_08023AE8: .4byte 0x00018A92
_08023AEC: .4byte gPlayerStats
_08023AF0: .4byte 0x0000FFE4
_08023AF4:
	mov r3, r8
	asrs r4, r3, #0x10
	movs r0, #0x1c
	subs r0, r0, r4
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bgt _08023B0C
	movs r1, #1
_08023B0C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	asrs r0, r0, #0x10
	cmp r0, #0x1c
	ble _08023B22
	movs r2, #0x1c
	mov sl, r2
_08023B22:
	ldr r0, _08023BA0 @ =gKeysNew
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r1, r0
	ldr r0, _08023BA4 @ =gPlayerStats
	adds r0, #0x6c
	mov sb, r0
	cmp r1, #0
	beq _08023BD2
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _08023BC4
	ldr r5, _08023BA8 @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #5
	beq _08023BC4
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #2
	beq _08023BC4
	mov r2, sb
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08023B70
	strh r6, [r2]
_08023B70:
	bl sub_080140AC
	movs r3, #0x3c
	str r3, [sp, #0x20]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x14]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x12]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #3
	beq _08023BAC
	cmp r0, #4
	beq _08023BB8
	b _08023BC4
	.align 2, 0
_08023BA0: .4byte gKeysNew
_08023BA4: .4byte gPlayerStats
_08023BA8: .4byte gPlayers
_08023BAC:
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0xc]
	b _08023BC4
_08023BB8:
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #1
	strh r1, [r0, #0xc]
_08023BC4:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #0x57
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
_08023BD2:
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	bne _08023BE6
	movs r3, #0x3c
	str r3, [sp, #0x20]
	movs r0, #0x1c
	mov sl, r0
	mov r5, sp
	adds r5, #0x12
	b _08023C24
_08023BE6:
	movs r0, #0
	mov r1, sl
	lsls r1, r1, #0x10
	mov r5, sp
	adds r5, #0x12
	asrs r6, r1, #0x10
_08023BF2:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r6, r0
	adds r1, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	adds r2, #0x70
	ldr r3, _08023D00 @ =gPlayerStats
	adds r2, r3, r2
	movs r3, #8
	bl sub_08023048
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #2
	ble _08023BF2
_08023C24:
	mov r0, sl
	lsls r4, r0, #0x10
	asrs r7, r4, #0x10
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r5, _08023D04 @ =gUnknown_03006430
	adds r0, r7, r0
	adds r1, #0x28
	movs r3, #0
	mov sb, r3
	str r3, [sp]
	adds r6, r5, #0
	adds r6, #0x1c
	str r6, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #7
	bl sub_08003518
	mov r8, r4
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _08023C82
	mov r1, sb
	str r1, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	adds r0, r7, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #0
	bl sub_08003518
_08023C82:
	bl WaitFrame
	bl sub_080075AC
	cmp r0, #0
	beq _08023C90
	b _08023E0C
_08023C90:
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	beq _08023CD8
	bl sub_080077C0
	cmp r0, #0
	beq _08023CA0
	b _08023E0C
_08023CA0:
	bl sub_08007510
	cmp r0, #0
	beq _08023CAA
	b _08023E0C
_08023CAA:
	ldr r4, _08023D08 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08023CBE
	b _08023E0C
_08023CBE:
	bl sub_08007544
	cmp r0, #0
	bne _08023CD8
	ldr r0, _08023D0C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08023CD8
	b _08023E0C
_08023CD8:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	ldr r3, _08023D10 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	lsls r1, r1, #0x10
	mov r0, sl
	lsls r0, r0, #0x10
	mov r8, r0
	cmp r1, #0
	bgt _08023CF2
	b _08023E0C
_08023CF2:
	bl sub_080074CC
	adds r6, r0, #0
	cmp r6, #0
	bne _08023CFE
	b _08023AF4
_08023CFE:
	b _08023E0C
	.align 2, 0
_08023D00: .4byte gPlayerStats
_08023D04: .4byte gUnknown_03006430
_08023D08: .4byte gPlayers
_08023D0C: .4byte 0x030063D8
_08023D10: .4byte 0xFFFF0000
_08023D14:
	bl sub_08007544
	cmp r0, #0
	bne _08023D2E
	ldr r0, _08023E5C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08023D2E
	b _08023E42
_08023D2E:
	bl sub_080075AC
	cmp r0, #0
	beq _08023D38
	b _08023E42
_08023D38:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r5, #0x1c
	rsbs r5, r5, #0
	subs r0, r5, r4
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _08023D54
	ldr r1, _08023E60 @ =0x0000FFFF
_08023D54:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	cmp r0, r5
	bge _08023D6A
	ldr r3, _08023E64 @ =0x0000FFE4
	mov sl, r3
_08023D6A:
	movs r0, #0
	ldr r1, _08023E68 @ =gPlayerStats
	adds r1, #0x6c
	mov sb, r1
	mov r2, sl
	lsls r2, r2, #0x10
	mov r8, r2
	mov r5, sp
	adds r5, #0x12
	asrs r6, r2, #0x10
_08023D7E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r6, r0
	adds r1, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	adds r2, #0x70
	ldr r3, _08023E68 @ =gPlayerStats
	adds r2, r3, r2
	movs r3, #8
	bl sub_08023048
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #2
	ble _08023D7E
	mov r0, r8
	asrs r6, r0, #0x10
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r4, _08023E6C @ =gUnknown_03006430
	adds r0, r6, r0
	adds r1, #0x28
	movs r7, #0
	str r7, [sp]
	adds r5, r4, #0
	adds r5, #0x1c
	str r5, [sp, #4]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08003518
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	beq _08023E08
	str r7, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #0
	bl sub_08003518
_08023E08:
	bl WaitFrame
_08023E0C:
	mov r0, r8
	asrs r1, r0, #0x10
	movs r0, #0x1c
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08023E42
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _08023D2E
	bl sub_080077C0
	cmp r0, #0
	bne _08023E42
	bl sub_08007510
	cmp r0, #0
	bne _08023E42
	ldr r4, _08023E70 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08023E42
	b _08023D14
_08023E42:
	bl sub_080074CC
	cmp r0, #0
	bne _08023E4C
	b _08023AB4
_08023E4C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023E5C: .4byte 0x030063D8
_08023E60: .4byte 0x0000FFFF
_08023E64: .4byte 0x0000FFE4
_08023E68: .4byte gPlayerStats
_08023E6C: .4byte gUnknown_03006430
_08023E70: .4byte gPlayers

	thumb_func_start sub_08023E74
sub_08023E74: @ 0x08023E74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #0x24]
	ldr r1, _08023E90 @ =0x080548D0
	add r0, sp, #0x10
	movs r2, #0xc
	bl memcpy
	b _080242F0
	.align 2, 0
_08023E90: .4byte 0x080548D0
_08023E94:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _08023EBE
	ldr r0, _08023ECC @ =0x00018A93
	bl _08000400
	ldr r0, _08023ED0 @ =gPlayerStats
	adds r0, #0x64
	ldrh r0, [r0]
	adds r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	beq _08023EBE
	b _080242FA
_08023EBE:
	movs r1, #0x86
	lsls r1, r1, #1
	str r1, [sp, #0x2c]
	movs r2, #0x3c
	str r2, [sp, #0x30]
	b _0802416A
	.align 2, 0
_08023ECC: .4byte 0x00018A93
_08023ED0: .4byte gPlayerStats
_08023ED4:
	asrs r4, r6, #0x10
	movs r0, #0xd4
	subs r0, r0, r4
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _08023EEA
	ldr r1, _08024194 @ =0x0000FFFF
_08023EEA:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x2c]
	asrs r0, r0, #0x10
	cmp r0, #0xd3
	bgt _08023F00
	movs r0, #0xd4
	str r0, [sp, #0x2c]
_08023F00:
	ldr r0, _08024198 @ =gKeysNew
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r1, r0
	ldr r3, _0802419C @ =gPlayerStats
	adds r3, #0x64
	str r3, [sp, #0x3c]
	cmp r1, #0
	beq _08023F3E
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08023F26
	strh r5, [r3]
_08023F26:
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	adds r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08023F44
	movs r3, #0x3c
	str r3, [sp, #0x30]
_08023F3E:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _08023F5A
_08023F44:
	movs r1, #0x3c
	str r1, [sp, #0x30]
	movs r2, #0xd4
	str r2, [sp, #0x2c]
	movs r3, #0x12
	add r3, sp
	mov r8, r3
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _08023F5A
	b _080240C4
_08023F5A:
	movs r1, #0
	ldr r2, [sp, #0x2c]
	lsls r6, r2, #0x10
	ldr r3, _0802419C @ =gPlayerStats
	adds r3, #0x66
	str r3, [sp, #0x40]
	movs r0, #0x12
	add r0, sp
	mov r8, r0
	asrs r6, r6, #0x10
	str r6, [sp, #0x34]
_08023F70:
	lsls r0, r1, #0x10
	asrs r1, r0, #0xf
	ldr r3, [sp, #0x40]
	adds r2, r3, r1
	ldrh r1, [r2]
	str r0, [sp, #0x38]
	cmp r1, #0
	bne _08023F82
	b _080240B2
_08023F82:
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, #0x84
	ldr r1, _0802419C @ =gPlayerStats
	adds r0, r1, r0
	str r0, [sp, #0x28]
	movs r5, #0
	movs r2, #0
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r6, r0, #0x1d
	lsls r1, r1, #0x12
	lsrs r4, r1, #0x19
_08023F9C:
	lsls r0, r2, #0x10
	asrs r1, r0, #0xe
	ldr r2, _0802419C @ =gPlayerStats
	adds r1, r2, r1
	adds r2, r1, #0
	adds r2, #0x88
	ldrb r1, [r2]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1d
	adds r3, r0, #0
	cmp r6, r1
	bne _08023FC8
	ldrh r0, [r2]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r4, r0
	bne _08023FC8
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
_08023FC8:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r3, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08023F9C
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r2, #1
	ble _0802408A
	ldr r3, [sp, #0x38]
	asrs r1, r3, #0x10
	movs r0, #2
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x10
	movs r3, #0
	ldrsh r1, [r1, r3]
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, [sp, #0x34]
	adds r4, r3, r1
	adds r6, r0, #0
	adds r6, #0x30
	str r2, [sp, #0x20]
	ldr r5, _080241A0 @ =0x03006510
	add r0, sp, #0x20
	movs r1, #0x64
	bl sub_080004A4
	add r2, sp, #0x1c
	movs r1, #0
	mov sl, r1
	strb r0, [r2]
	ldr r1, [sp, #0x20]
	strb r1, [r2, #1]
	lsls r0, r0, #0x18
	adds r7, r2, #0
	cmp r0, #0
	beq _08024040
	adds r0, r4, #0
	subs r0, #0xc
	ldrb r3, [r7]
	mov r2, sl
	str r2, [sp]
	adds r1, r5, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	ldr r1, [r5, #8]
	str r1, [sp, #8]
	ldr r1, [r5]
	str r1, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08003518
_08024040:
	ldrb r0, [r7, #1]
	movs r3, #0x1c
	adds r3, r3, r5
	mov sb, r3
	cmp r0, #9
	bhi _0802406E
	ldrb r0, [r7]
	cmp r0, #0
	beq _0802406E
	subs r0, r4, #6
	mov r1, sl
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r1, [r5, #8]
	str r1, [sp, #8]
	ldr r1, [r5]
	str r1, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08003518
_0802406E:
	ldrb r3, [r7, #1]
	movs r0, #0
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08003518
_0802408A:
	ldr r2, [sp, #0x38]
	asrs r0, r2, #0x10
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, [sp, #0x34]
	adds r0, r2, r0
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	ldr r2, [sp, #0x28]
	movs r3, #0
	bl sub_08023048
_080240B2:
	ldr r1, [sp, #0x38]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bgt _080240C4
	b _08023F70
_080240C4:
	ldr r3, [sp, #0x2c]
	lsls r6, r3, #0x10
	asrs r5, r6, #0x10
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r4, _080241A4 @ =gUnknown_03006430
	adds r0, r5, r0
	adds r1, #0x28
	movs r2, #0
	str r2, [sp]
	ldr r3, _080241A8 @ =0x0300644C
	str r3, [sp, #4]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08003518
	movs r0, #0
	str r0, [sp]
	ldr r1, _080241A8 @ =0x0300644C
	str r1, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #1
	bl sub_08003518
	bl WaitFrame
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08024162
	bl sub_080077C0
	cmp r0, #0
	bne _0802418C
	bl sub_08007510
	cmp r0, #0
	bne _0802418C
	ldr r4, _080241AC @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0802418C
	bl sub_08007544
	cmp r0, #0
	bne _08024162
	ldr r0, _080241B0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802418C
_08024162:
	bl sub_080075AC
	cmp r0, #0
	bne _0802418C
_0802416A:
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x10
	ldr r3, _080241B4 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x2c]
	lsls r6, r0, #0x10
	cmp r1, #0
	ble _0802418C
	bl sub_080074CC
	adds r5, r0, #0
	cmp r5, #0
	bne _0802418C
	b _08023ED4
_0802418C:
	ldr r7, _080241A4 @ =gUnknown_03006430
	movs r1, #0
	mov sb, r1
	b _080242C0
	.align 2, 0
_08024194: .4byte 0x0000FFFF
_08024198: .4byte gKeysNew
_0802419C: .4byte gPlayerStats
_080241A0: .4byte 0x03006510
_080241A4: .4byte gUnknown_03006430
_080241A8: .4byte 0x0300644C
_080241AC: .4byte gPlayers
_080241B0: .4byte 0x030063D8
_080241B4: .4byte 0xFFFF0000
_080241B8:
	bl sub_08007544
	cmp r0, #0
	bne _080241D2
	ldr r0, _0802430C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080241D2
	b _080242F0
_080241D2:
	bl sub_080075AC
	cmp r0, #0
	beq _080241DC
	b _080242F0
_080241DC:
	ldr r2, [sp, #0x2c]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	movs r4, #0x86
	lsls r4, r4, #1
	subs r0, r4, r6
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bgt _080241F8
	movs r1, #1
_080241F8:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x2c]
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _0802420C
	str r4, [sp, #0x2c]
_0802420C:
	movs r1, #0
	ldr r0, _08024310 @ =gPlayerStats
	adds r0, #0x64
	str r0, [sp, #0x3c]
	ldr r2, [sp, #0x2c]
	lsls r6, r2, #0x10
	ldr r3, _08024310 @ =gPlayerStats
	adds r3, #0x66
	str r3, [sp, #0x40]
	movs r0, #0x12
	add r0, sp
	mov r8, r0
	asrs r5, r6, #0x10
_08024226:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r0, r4, #1
	ldr r1, [sp, #0x40]
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802425C
	lsls r1, r4, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r5, r0
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	ldrh r2, [r2]
	lsls r2, r2, #2
	adds r2, #0x84
	ldr r3, _08024310 @ =gPlayerStats
	adds r2, r3, r2
	movs r3, #0
	bl sub_08023048
_0802425C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08024226
	asrs r4, r6, #0x10
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r4, r0
	adds r1, #0x28
	mov r2, sb
	str r2, [sp]
	ldr r3, _08024314 @ =0x0300644C
	str r3, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08003518
	mov r0, sb
	str r0, [sp]
	ldr r1, _08024314 @ =0x0300644C
	str r1, [sp, #4]
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	ldr r0, [r7]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #1
	bl sub_08003518
	bl WaitFrame
_080242C0:
	ldr r0, _08024318 @ =0x010B0000
	cmp r6, r0
	bgt _080242F0
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _080241D2
	bl sub_080077C0
	cmp r0, #0
	bne _080242F0
	bl sub_08007510
	cmp r0, #0
	bne _080242F0
	ldr r4, _0802431C @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080242F0
	b _080241B8
_080242F0:
	bl sub_080074CC
	cmp r0, #0
	bne _080242FA
	b _08023E94
_080242FA:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802430C: .4byte 0x030063D8
_08024310: .4byte gPlayerStats
_08024314: .4byte 0x0300644C
_08024318: .4byte 0x010B0000
_0802431C: .4byte gPlayers

	thumb_func_start sub_08024320
sub_08024320: @ 0x08024320
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08007544
	adds r3, r0, #0
	cmp r3, #0
	bne _08024408
	ldr r0, [r4, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x24
	mov r5, sp
	adds r5, #0x26
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldrh r0, [r4]
	mov r8, r0
	ldrh r1, [r5]
	str r1, [sp, #0x38]
	str r6, [sp, #0x34]
	ldr r0, _08024418 @ =0x080FBA9C
	adds r0, #0x18
	mov sb, r0
	add r6, sp, #0x28
	movs r7, #0
	mov sl, r6
	add r4, sp, #0x34
_08024372:
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r4, #0
	bl sub_080004A4
	strb r0, [r6]
	adds r7, #1
	adds r6, #1
	cmp r7, #4
	blo _08024372
	movs r5, #0
	str r5, [sp, #0x3c]
	movs r0, #0x12
	rsbs r0, r0, #0
	add r8, r0
	mov r6, sl
	movs r7, #0
	ldr r4, _0802441C @ =gUnknown_03006430
	movs r0, #2
	lsls r0, r0, #0x10
	mov sb, r0
_080243A2:
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	bne _080243B2
	ldrb r0, [r6]
	cmp r0, #0
	bne _080243B2
	cmp r7, #3
	bne _080243D6
_080243B2:
	movs r2, #1
	str r2, [sp, #0x3c]
	ldrb r3, [r6]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [sp, #0x38]
	mov r5, sb
	lsrs r2, r5, #0x10
	bl sub_08003518
_080243D6:
	adds r7, #1
	movs r0, #6
	add r8, r0
	adds r6, #1
	cmp r7, #4
	blo _080243A2
	mov r1, sp
	ldrh r0, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	ldr r3, _0802441C @ =gUnknown_03006430
	subs r0, #6
	subs r1, #8
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #4
	movs r3, #6
	bl sub_08003518
_08024408:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024418: .4byte 0x080FBA9C
_0802441C: .4byte gUnknown_03006430

	thumb_func_start sub_08024420
sub_08024420: @ 0x08024420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r5, _080244E4 @ =gUnknown_03006430
	ldr r2, [r0, #0x58]
	ldr r0, [r0, #0x5c]
	str r0, [sp, #0x18]
	add r3, sp, #0x14
	movs r1, #0
	strh r1, [r3]
	mov r0, sp
	adds r0, #0x16
	strh r1, [r0]
	movs r0, #0x5f
	mov r8, r0
	mov sl, r3
	mov r4, sp
	adds r4, #0x12
	add r6, sp, #0x10
	asrs r2, r2, #0xc
	lsls r2, r2, #0x10
	mov sb, r2
_08024452:
	ldr r1, [sp, #0x18]
	ldr r2, _080244E8 @ =0xFFFFFE00
	adds r1, r1, r2
	str r1, [sp, #0x18]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r3, sb
	asrs r0, r3, #0x10
	add r2, sp, #0x10
	adds r3, r4, #0
	bl sub_08005FC4
	ldrh r0, [r6]
	subs r0, #8
	strh r0, [r6]
	ldrh r0, [r4]
	subs r0, #8
	strh r0, [r4]
	movs r0, #1
	ldr r3, [r5, #8]
	str r0, [sp]
	movs r0, #0xe
	add r1, sp, #0x14
	mov r2, sp
	adds r2, #0x16
	bl sub_08004214
	ldr r0, _080244EC @ =gMapLayer_03003910
	ldr r2, [r0, #0x78]
	movs r0, #0xc
	ands r2, r0
	cmp r2, #0
	bne _080244BE
	movs r7, #0
	ldrsh r0, [r6, r7]
	movs r3, #0
	ldrsh r1, [r4, r3]
	mov r7, sl
	ldrh r3, [r7]
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #0xe
	bl sub_08003518
_080244BE:
	bl WaitFrame
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _080244F0 @ =0x0000FFFF
	cmp r8, r0
	bne _08024452
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080244E4: .4byte gUnknown_03006430
_080244E8: .4byte 0xFFFFFE00
_080244EC: .4byte gMapLayer_03003910
_080244F0: .4byte 0x0000FFFF

	thumb_func_start sub_080244F4
sub_080244F4: @ 0x080244F4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	b _080244FE
_080244FA:
	bl WaitFrame
_080244FE:
	bl sub_0800F298
	cmp r0, #0
	beq _080244FA
	movs r0, #6
	bl sub_0800F3A0
	b _08024512
_0802450E:
	bl WaitFrame
_08024512:
	bl sub_0800F298
	cmp r0, #0
	beq _0802450E
	bl DisableSoundVSync
	bl sub_08007500
	bl sub_0802297C
	ldr r4, _08024588 @ =gUnknown_030065E0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024538
	adds r0, r4, #0
	bl KillThread
_08024538:
	adds r4, #0x28
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _0802454A
	adds r0, r4, #0
	bl KillThread
_0802454A:
	ldr r4, _0802458C @ =gUnknown_03006630
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _0802455C
	adds r0, r4, #0
	bl KillThread
_0802455C:
	adds r4, #0x28
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _0802456E
	adds r0, r4, #0
	bl KillThread
_0802456E:
	bl sub_08020F54
	ldr r0, _08024590 @ =0x00000BB9
	bl SignalEvent
	ldr r0, _08024594 @ =0x000514C9
	bl SignalEvent
	ldr r0, _08024598 @ =0x000514C8
	bl SignalEvent
	movs r5, #0
	b _080245BC
	.align 2, 0
_08024588: .4byte gUnknown_030065E0
_0802458C: .4byte gUnknown_03006630
_08024590: .4byte 0x00000BB9
_08024594: .4byte 0x000514C9
_08024598: .4byte 0x000514C8
_0802459C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, _08024668 @ =0x03003F90
	adds r4, r0, r1
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080245B6
	adds r0, r4, #0
	bl KillThread
_080245B6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080245BC:
	bl sub_08001EC4
	cmp r5, r0
	blo _0802459C
	ldr r4, _0802466C @ =gMenuScreenThread
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080245D6
	adds r0, r4, #0
	bl KillThread
_080245D6:
	ldr r4, _08024670 @ =gUnknownThread_030068F0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080245E8
	adds r0, r4, #0
	bl KillThread
_080245E8:
	ldr r4, _08024674 @ =gHudThread
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080245FA
	adds r0, r4, #0
	bl KillThread
_080245FA:
	ldr r4, _08024678 @ =gCharacterMenuThread
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _0802460C
	adds r0, r4, #0
	bl KillThread
_0802460C:
	ldr r4, _0802467C @ =gUnknownThread_03003CB0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _0802461E
	adds r0, r4, #0
	bl KillThread
_0802461E:
	ldr r4, _08024680 @ =gUnknownThread_030064E0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024630
	adds r0, r4, #0
	bl KillThread
_08024630:
	bl sub_08001E40
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	ldr r0, _08024684 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080246B8
	lsls r0, r0, #2
	ldr r1, _08024688 @ =_0802468C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08024668: .4byte 0x03003F90
_0802466C: .4byte gMenuScreenThread
_08024670: .4byte gUnknownThread_030068F0
_08024674: .4byte gHudThread
_08024678: .4byte gCharacterMenuThread
_0802467C: .4byte gUnknownThread_03003CB0
_08024680: .4byte gUnknownThread_030064E0
_08024684: .4byte 0x03003CA8
_08024688: .4byte _0802468C
_0802468C: @ jump table
	.4byte _080246A0 @ case 0
	.4byte _080246A4 @ case 1
	.4byte _080246A8 @ case 2
	.4byte _080246AC @ case 3
	.4byte _080246B0 @ case 4
_080246A0:
	movs r0, #0x5b
	b _080246B2
_080246A4:
	movs r0, #0x97
	b _080246B2
_080246A8:
	movs r0, #0x96
	b _080246B2
_080246AC:
	movs r0, #0xa8
	b _080246B2
_080246B0:
	movs r0, #0xa7
_080246B2:
	bl GetDataRecord
	adds r7, r0, #0
_080246B8:
	ldr r0, [r7]
	bl GetDataRecord
	adds r5, r0, #0
	ldm r7!, {r0}
	ldr r1, _08024760 @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r7, #0
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r5, #0
	bl QueueCopy
	ldr r1, _08024764 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r4, #0
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	bl sub_0800EC74
	movs r0, #0
	bl sub_0800EE44
	bl sub_0800ED08
	bl WaitFrame
	bl WaitFrame
	adds r0, r4, #0
	bl Free
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x10
	bl LoadPalette
	movs r0, #0xfe
	lsls r0, r0, #7
	movs r1, #0
	movs r2, #0
	bl DisableDisplayLayers
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _08024768 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #0xe8
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp]
	movs r0, #1
	mov r1, sp
	bl SetBgCnt
	ldr r4, _0802476C @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	movs r0, #6
	bl sub_0800F308
	b _08024778
	.align 2, 0
_08024760: .4byte 0x0000FFFF
_08024764: .4byte 0x0600E800
_08024768: .4byte 0xFFFF0000
_0802476C: .4byte gBgRegsBuffer
_08024770:
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	bl WaitFrame
_08024778:
	bl sub_0800F298
	cmp r0, #0
	beq _08024770
	ldr r2, _080247AC @ =gKeysNew
	ldrh r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080247A4
	ldr r5, _080247B0 @ =gBgRegsBuffer
	movs r4, #0
	adds r6, r2, #0
_08024792:
	strh r4, [r5, #4]
	strh r4, [r5, #6]
	bl WaitFrame
	ldrh r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08024792
_080247A4:
	movs r0, #6
	bl sub_0800F244
	b _080247B8
	.align 2, 0
_080247AC: .4byte gKeysNew
_080247B0: .4byte gBgRegsBuffer
_080247B4:
	bl WaitFrame
_080247B8:
	bl sub_0800F298
	cmp r0, #0
	beq _080247B4
	movs r0, #0
	bl SoftReset
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080247D0
sub_080247D0: @ 0x080247D0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	bl sub_08007648
	movs r5, #0
_080247DA:
	bl sub_08001F08
	cmp r0, #0
	beq _080247E4
	b _08024B5E
_080247E4:
	bl WaitFrame
	adds r5, #1
	cmp r5, #0x4f
	bls _080247DA
	bl sub_08001F34
	b _08024802
_080247F4:
	bl sub_08001F08
	cmp r0, #0
	beq _080247FE
	b _08024B5E
_080247FE:
	bl WaitFrame
_08024802:
	bl sub_0800F298
	cmp r0, #0
	beq _080247F4
	bl sub_0800F430
	cmp r0, #0
	beq _08024830
	movs r0, #6
	bl sub_0800F3A0
	b _08024828
_0802481A:
	bl sub_08001F08
	cmp r0, #0
	beq _08024824
	b _08024B5E
_08024824:
	bl WaitFrame
_08024828:
	bl sub_0800F298
	cmp r0, #0
	beq _0802481A
_08024830:
	ldr r1, _08024950 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0x3a]
	bl sub_08007564
	ldr r1, _08024954 @ =gMapLayer_03003910
	ldr r0, [r1, #0x78]
	movs r2, #0xc
	orrs r0, r2
	str r0, [r1, #0x78]
	ldr r1, _08024958 @ =gMapLayer_03003C00
	ldr r0, [r1, #0x78]
	orrs r0, r2
	str r0, [r1, #0x78]
	ldr r4, _0802495C @ =gUnknownThread_030066B0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _0802485E
	adds r0, r4, #0
	bl KillThread
_0802485E:
	ldr r4, _08024960 @ =gMenuScreenThread
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024870
	adds r0, r4, #0
	bl KillThread
_08024870:
	ldr r4, _08024964 @ =gUnknownThread_030068F0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024882
	adds r0, r4, #0
	bl KillThread
_08024882:
	ldr r4, _08024968 @ =gHudThread
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024894
	adds r0, r4, #0
	bl KillThread
_08024894:
	ldr r4, _0802496C @ =gCharacterMenuThread
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080248A6
	adds r0, r4, #0
	bl KillThread
_080248A6:
	ldr r4, _08024970 @ =gUnknownThread_03003CB0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080248B8
	adds r0, r4, #0
	bl KillThread
_080248B8:
	ldr r4, _08024974 @ =gUnknownThread_030064E0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080248CA
	adds r0, r4, #0
	bl KillThread
_080248CA:
	ldr r4, _08024978 @ =gUnknownThread_03006380
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080248DC
	adds r0, r4, #0
	bl KillThread
_080248DC:
	movs r5, #0
	movs r6, #0
_080248E0:
	ldr r0, _0802497C @ =0x030048D0
	adds r4, r6, r0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080248F4
	adds r0, r4, #0
	bl KillThread
_080248F4:
	adds r6, #0x28
	adds r5, #1
	cmp r5, #4
	bls _080248E0
	bl sub_08021C44
	ldr r4, _08024980 @ =gUnknown_030065E0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024912
	adds r0, r4, #0
	bl KillThread
_08024912:
	adds r4, #0x28
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024924
	adds r0, r4, #0
	bl KillThread
_08024924:
	ldr r4, _08024984 @ =gUnknown_03006630
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024936
	adds r0, r4, #0
	bl KillThread
_08024936:
	adds r4, #0x28
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024948
	adds r0, r4, #0
	bl KillThread
_08024948:
	movs r5, #0
	movs r6, #0
	b _080249A0
	.align 2, 0
_08024950: .4byte gBgRegsBuffer
_08024954: .4byte gMapLayer_03003910
_08024958: .4byte gMapLayer_03003C00
_0802495C: .4byte gUnknownThread_030066B0
_08024960: .4byte gMenuScreenThread
_08024964: .4byte gUnknownThread_030068F0
_08024968: .4byte gHudThread
_0802496C: .4byte gCharacterMenuThread
_08024970: .4byte gUnknownThread_03003CB0
_08024974: .4byte gUnknownThread_030064E0
_08024978: .4byte gUnknownThread_03006380
_0802497C: .4byte 0x030048D0
_08024980: .4byte gUnknown_030065E0
_08024984: .4byte gUnknown_03006630
_08024988:
	ldr r0, _08024A7C @ =0x03003F90
	adds r4, r6, r0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _0802499C
	adds r0, r4, #0
	bl KillThread
_0802499C:
	adds r6, #0x28
	adds r5, #1
_080249A0:
	bl sub_08001EC4
	cmp r5, r0
	blo _08024988
	bl sub_08001F08
	cmp r0, #0
	beq _080249B2
	b _08024B5E
_080249B2:
	bl WaitFrame
	bl sub_08001F08
	cmp r0, #0
	beq _080249C0
	b _08024B5E
_080249C0:
	bl WaitFrame
	bl sub_08001F08
	cmp r0, #0
	beq _080249CE
	b _08024B5E
_080249CE:
	bl WaitFrame
	bl sub_08001F08
	cmp r0, #0
	beq _080249DC
	b _08024B5E
_080249DC:
	bl WaitFrame
	bl sub_08020F54
	bl sub_08001F08
	cmp r0, #0
	beq _080249EE
	b _08024B5E
_080249EE:
	bl WaitFrame
	bl sub_08001F08
	cmp r0, #0
	beq _080249FC
	b _08024B5E
_080249FC:
	bl WaitFrame
	bl sub_08001F08
	cmp r0, #0
	beq _08024A0A
	b _08024B5E
_08024A0A:
	bl WaitFrame
	bl sub_08001F08
	cmp r0, #0
	beq _08024A18
	b _08024B5E
_08024A18:
	bl WaitFrame
	bl sub_08001F08
	adds r4, r0, #0
	cmp r4, #0
	beq _08024A28
	b _08024B5E
_08024A28:
	movs r0, #0xfe
	lsls r0, r0, #7
	movs r1, #0
	movs r2, #0
	bl DisableDisplayLayers
	movs r0, #0x88
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _08024A80 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _08024A84 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	add r1, sp, #8
	bl SetBgCnt
	ldr r0, _08024A88 @ =gBgRegsBuffer
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	bl sub_08021804
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08024A8C @ =0x000900FE
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	movs r0, #6
	bl sub_0800F308
	b _08024A94
	.align 2, 0
_08024A7C: .4byte 0x03003F90
_08024A80: .4byte 0xFFFF0000
_08024A84: .4byte 0x00001C08
_08024A88: .4byte gBgRegsBuffer
_08024A8C: .4byte 0x000900FE
_08024A90:
	bl WaitFrame
_08024A94:
	bl sub_0800F298
	cmp r0, #0
	beq _08024A90
_08024A9C:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _08024A9C
	bl SndMPlayAllStop
	movs r5, #0
_08024AB0:
	bl WaitFrame
	adds r5, #1
	cmp r5, #0x3b
	bls _08024AB0
	movs r5, #0
_08024ABC:
	bl DisableSoundVSync
	bl SaveGame
	cmp r0, #0
	bne _08024B0A
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08024AF4 @ =0x0009001D
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_08024ADE:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _08024ADE
	movs r0, #0xa
	bl sub_0800F3A0
	b _08024AFC
	.align 2, 0
_08024AF4: .4byte 0x0009001D
_08024AF8:
	bl WaitFrame
_08024AFC:
	bl sub_0800F298
	cmp r0, #0
	beq _08024AF8
	bl sub_08007500
	b _08024B40
_08024B0A:
	bl EnableSoundVSync
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08024B3C @ =0x0009001E
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_08024B24:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _08024B24
	cmp r5, #2
	bhi _08024B40
	adds r5, #1
	b _08024ABC
	.align 2, 0
_08024B3C: .4byte 0x0009001E
_08024B40:
	bl sub_0800765C
	movs r0, #6
	bl sub_0800F244
	b _08024B50
_08024B4C:
	bl WaitFrame
_08024B50:
	bl sub_0800F298
	cmp r0, #0
	beq _08024B4C
	movs r0, #0
	bl SoftReset
_08024B5E:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start QuitToTitle
QuitToTitle: @ 0x08024B68
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_08007648
	bl sub_080077C0
	cmp r0, #0
	bne _08024B82
	bl sub_08016FA0
	cmp r0, #0
	beq _08024B88
_08024B82:
	bl sub_0800765C
	b _08025014
_08024B88:
	cmp r4, #0
	beq _08024B8E
	b _08024D0C
_08024B8E:
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08024C30 @ =0x0009001C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	movs r1, #1
	bl sub_080229D4
_08024BAC:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _08024BAC
	adds r0, r4, #0
	bl sub_08022964
	cmp r0, #0
	bne _08024BC6
	b _08025010
_08024BC6:
	bl sub_080074F0
	cmp r0, #0
	beq _08024BEE
	bl sub_08001F64
	cmp r0, #0
	beq _08024BEE
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08029270
	movs r5, #0
_08024BE4:
	bl WaitFrame
	adds r5, #1
	cmp r5, #0x3b
	bls _08024BE4
_08024BEE:
	bl SndMPlayAllStop
	movs r5, #0
_08024BF4:
	bl WaitFrame
	adds r5, #1
	cmp r5, #0x3b
	bls _08024BF4
	bl DisableSoundVSync
	bl sub_080074F0
	cmp r0, #0
	bne _08024C60
	bl sub_080076A8
	cmp r0, #0
	beq _08024C44
	ldr r3, _08024C34 @ =gPlayerStats
	ldr r0, _08024C38 @ =gUnknown_03003D08
	ldr r2, [r0]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, _08024C3C @ =0x000003FF
	ands r2, r0
	lsls r2, r2, #0xa
	ldr r0, [r3]
	ldr r1, _08024C40 @ =0xFFF003FF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	b _08024C60
	.align 2, 0
_08024C30: .4byte 0x0009001C
_08024C34: .4byte gPlayerStats
_08024C38: .4byte gUnknown_03003D08
_08024C3C: .4byte 0x000003FF
_08024C40: .4byte 0xFFF003FF
_08024C44:
	ldr r2, _08024CAC @ =gPlayerStats
	ldr r0, _08024CB0 @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r3, _08024CB4 @ =0x000003FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2]
	ldr r0, _08024CB8 @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2]
_08024C60:
	bl sub_080074F0
	cmp r0, #0
	beq _08024C74
	bl sub_08001F64
	cmp r0, #0
	beq _08024C74
	bl sub_08001F34
_08024C74:
	bl SaveGame
	cmp r0, #0
	bne _08024CD8
	bl EnableSoundVSync
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08024CBC @ =0x0009001D
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_08024C96:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _08024C96
	movs r0, #0xa
	bl sub_0800F244
	b _08024CC4
	.align 2, 0
_08024CAC: .4byte gPlayerStats
_08024CB0: .4byte gUnknown_03003D08
_08024CB4: .4byte 0x000003FF
_08024CB8: .4byte 0xFFFFFC00
_08024CBC: .4byte 0x0009001D
_08024CC0:
	bl WaitFrame
_08024CC4:
	bl sub_0800F298
	cmp r0, #0
	beq _08024CC0
	bl sub_08007500
	movs r0, #0
	bl SoftReset
	b _08025010
_08024CD8:
	bl EnableSoundVSync
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08024D04 @ =0x0009001E
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_08024CF4:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _08024CF4
	b _08025010
	.align 2, 0
_08024D04: .4byte 0x0009001E
_08024D08:
	bl WaitFrame
_08024D0C:
	bl sub_0800F298
	cmp r0, #0
	beq _08024D08
	bl sub_0800F430
	cmp r0, #0
	beq _08024D30
	movs r0, #6
	bl sub_0800F3A0
	b _08024D28
_08024D24:
	bl WaitFrame
_08024D28:
	bl sub_0800F298
	cmp r0, #0
	beq _08024D24
_08024D30:
	ldr r6, _08024E2C @ =gBgRegsBuffer
	movs r5, #0
	strh r5, [r6, #0x3a]
	movs r0, #0xfe
	lsls r0, r0, #7
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r4, _08024E30 @ =gMenuScreenThread
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024D54
	adds r0, r4, #0
	bl KillThread
_08024D54:
	ldr r4, _08024E34 @ =gUnknownThread_030068F0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024D66
	adds r0, r4, #0
	bl KillThread
_08024D66:
	ldr r4, _08024E38 @ =gHudThread
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024D78
	adds r0, r4, #0
	bl KillThread
_08024D78:
	ldr r4, _08024E3C @ =gCharacterMenuThread
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024D8A
	adds r0, r4, #0
	bl KillThread
_08024D8A:
	ldr r4, _08024E40 @ =gUnknownThread_03003CB0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024D9C
	adds r0, r4, #0
	bl KillThread
_08024D9C:
	ldr r4, _08024E44 @ =gUnknownThread_030064E0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024DAE
	adds r0, r4, #0
	bl KillThread
_08024DAE:
	ldr r4, _08024E48 @ =gUnknownThread_03006380
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024DC0
	adds r0, r4, #0
	bl KillThread
_08024DC0:
	ldr r1, _08024E4C @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _08024E50 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	add r1, sp, #8
	bl SetBgCnt
	strh r5, [r6, #4]
	strh r5, [r6, #6]
	bl sub_08021C44
	ldr r4, _08024E54 @ =gUnknown_030065E0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024DEE
	adds r0, r4, #0
	bl KillThread
_08024DEE:
	adds r4, #0x28
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024E00
	adds r0, r4, #0
	bl KillThread
_08024E00:
	ldr r4, _08024E58 @ =gUnknown_03006630
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024E12
	adds r0, r4, #0
	bl KillThread
_08024E12:
	adds r4, #0x28
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024E24
	adds r0, r4, #0
	bl KillThread
_08024E24:
	movs r5, #0
	movs r6, #0
	b _08024E74
	.align 2, 0
_08024E2C: .4byte gBgRegsBuffer
_08024E30: .4byte gMenuScreenThread
_08024E34: .4byte gUnknownThread_030068F0
_08024E38: .4byte gHudThread
_08024E3C: .4byte gCharacterMenuThread
_08024E40: .4byte gUnknownThread_03003CB0
_08024E44: .4byte gUnknownThread_030064E0
_08024E48: .4byte gUnknownThread_03006380
_08024E4C: .4byte 0xFFFF0000
_08024E50: .4byte 0x00001C08
_08024E54: .4byte gUnknown_030065E0
_08024E58: .4byte gUnknown_03006630
_08024E5C:
	ldr r0, _08024ED0 @ =0x03003F90
	adds r4, r6, r0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024E70
	adds r0, r4, #0
	bl KillThread
_08024E70:
	adds r6, #0x28
	adds r5, #1
_08024E74:
	bl sub_08001EC4
	cmp r5, r0
	blo _08024E5C
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl sub_08020F54
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl sub_08021804
	bl WaitFrame
	bl WaitFrame
	movs r0, #0x88
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	bl sub_0800EC74
	movs r0, #0
	bl sub_0800EE44
	bl sub_0800ED08
	movs r0, #6
	bl sub_0800F308
	b _08024ED8
	.align 2, 0
_08024ED0: .4byte 0x03003F90
_08024ED4:
	bl WaitFrame
_08024ED8:
	bl sub_0800F298
	cmp r0, #0
	beq _08024ED4
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _08024F44 @ =0x000900FD
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_08024EF6:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _08024EF6
	bl SndMPlayAllStop
	movs r5, #0
_08024F0A:
	bl WaitFrame
	adds r5, #1
	cmp r5, #0x3b
	bls _08024F0A
	bl sub_080074F0
	cmp r0, #0
	bne _08024F74
	bl sub_080076A8
	cmp r0, #0
	beq _08024F58
	ldr r3, _08024F48 @ =gPlayerStats
	ldr r0, _08024F4C @ =gUnknown_03003D08
	ldr r2, [r0]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, _08024F50 @ =0x000003FF
	ands r2, r0
	lsls r2, r2, #0xa
	ldr r0, [r3]
	ldr r1, _08024F54 @ =0xFFF003FF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	b _08024F74
	.align 2, 0
_08024F44: .4byte 0x000900FD
_08024F48: .4byte gPlayerStats
_08024F4C: .4byte gUnknown_03003D08
_08024F50: .4byte 0x000003FF
_08024F54: .4byte 0xFFF003FF
_08024F58:
	ldr r2, _08024FB8 @ =gPlayerStats
	ldr r0, _08024FBC @ =gUnknown_03003D08
	ldr r1, [r0]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r3, _08024FC0 @ =0x000003FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2]
	ldr r0, _08024FC4 @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2]
_08024F74:
	movs r5, #0
_08024F76:
	bl DisableSoundVSync
	bl SaveGame
	cmp r0, #0
	bne _08024FDA
	bl EnableSoundVSync
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08024FC8 @ =0x0009001D
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
	movs r1, #1
	bl sub_080229D4
_08024FA2:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _08024FA2
	movs r0, #0xa
	bl sub_0800F3DC
	b _08024FD0
	.align 2, 0
_08024FB8: .4byte gPlayerStats
_08024FBC: .4byte gUnknown_03003D08
_08024FC0: .4byte 0x000003FF
_08024FC4: .4byte 0xFFFFFC00
_08024FC8: .4byte 0x0009001D
_08024FCC:
	bl WaitFrame
_08024FD0:
	bl sub_0800F298
	cmp r0, #0
	beq _08024FCC
	b _08025010
_08024FDA:
	bl EnableSoundVSync
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _0802500C @ =0x0009001E
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	adds r4, r0, #0
_08024FF6:
	bl WaitFrame
	adds r0, r4, #0
	bl sub_0802294C
	cmp r0, #0
	beq _08024FF6
	cmp r5, #2
	bhi _08025010
	adds r5, #1
	b _08024F76
	.align 2, 0
_0802500C: .4byte 0x0009001E
_08025010:
	bl sub_0800765C
_08025014:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CharacterMenuThread
CharacterMenuThread: @ 0x0802501C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa8
	add r2, sp, #0x6c
	adds r1, r2, #0
	ldr r0, _08025048 @ =0x080548DC
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802504C @ =gUnknown_030064D8
	ldr r0, [r0]
	adds r5, r2, #0
	cmp r0, #0
	beq _08025050
	bl sub_080076CC
	bl _08025928
	.align 2, 0
_08025048: .4byte 0x080548DC
_0802504C: .4byte gUnknown_030064D8
_08025050:
	bl sub_080076B8
	ldr r0, _08025068 @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08025120
	lsls r0, r0, #2
	ldr r1, _0802506C @ =_08025070
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025068: .4byte 0x03003CA8
_0802506C: .4byte _08025070
_08025070: @ jump table
	.4byte _08025120 @ case 0
	.4byte _08025088 @ case 1
	.4byte _080250A8 @ case 2
	.4byte _080250C8 @ case 3
	.4byte _080250E8 @ case 4
	.4byte _08025108 @ case 5
_08025088:
	ldr r0, _0802509C @ =0x0010006A
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _080250A0 @ =0x0011006A
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _080250A4 @ =0x0013006A
	b _0802511A
	.align 2, 0
_0802509C: .4byte 0x0010006A
_080250A0: .4byte 0x0011006A
_080250A4: .4byte 0x0013006A
_080250A8:
	ldr r0, _080250BC @ =0x00100073
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _080250C0 @ =0x00110073
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _080250C4 @ =0x00130073
	b _0802511A
	.align 2, 0
_080250BC: .4byte 0x00100073
_080250C0: .4byte 0x00110073
_080250C4: .4byte 0x00130073
_080250C8:
	ldr r0, _080250DC @ =0x0010007B
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _080250E0 @ =0x0011007B
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _080250E4 @ =0x0013007B
	b _0802511A
	.align 2, 0
_080250DC: .4byte 0x0010007B
_080250E0: .4byte 0x0011007B
_080250E4: .4byte 0x0013007B
_080250E8:
	ldr r0, _080250FC @ =0x00100083
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _08025100 @ =0x00110083
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _08025104 @ =0x00130083
	b _0802511A
	.align 2, 0
_080250FC: .4byte 0x00100083
_08025100: .4byte 0x00110083
_08025104: .4byte 0x00130083
_08025108:
	ldr r0, _08025194 @ =0x0010008D
	bl GetDataRecord
	str r0, [sp, #0x80]
	ldr r0, _08025198 @ =0x0011008D
	bl GetDataRecord
	str r0, [sp, #0x7c]
	ldr r0, _0802519C @ =0x0013008D
_0802511A:
	bl GetDataRecord
	adds r4, r0, #0
_08025120:
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x1b
	movs r2, #1
	bl LoadPalette
	movs r7, #0
	mov r1, sp
	adds r1, #0x5c
	str r1, [sp, #0xa4]
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x3c
	str r3, [sp, #0x98]
	mov r6, sp
	adds r6, #0x4c
	str r6, [sp, #0x9c]
	mov r0, sp
	adds r0, #0x54
	str r0, [sp, #0xa0]
_0802514E:
	mov r0, sp
	adds r0, r0, r7
	adds r0, #0x1c
	strb r7, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xf
	bls _0802514E
	movs r7, #0
_08025162:
	lsls r4, r7, #2
	adds r0, r5, r4
	ldr r0, [r0]
	bl GetDataRecord
	ldr r1, [sp, #0xa4]
	adds r4, r1, r4
	str r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08025162
	bl GetMultiplayerId
	ldr r2, _080251A0 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	b _080251A8
	.align 2, 0
_08025194: .4byte 0x0010008D
_08025198: .4byte 0x0011008D
_0802519C: .4byte 0x0013008D
_080251A0: .4byte gPlayers
_080251A4:
	bl WaitFrame
_080251A8:
	bl sub_0800F430
	cmp r0, #0
	beq _080251A4
	movs r2, #0
	mov r8, r2
	movs r0, #0x12
	bl PlaySE
	ldr r3, _0802528C @ =0x080FBAE4
	mov sl, r3
_080251BE:
	movs r7, #0
	movs r5, #0x80
	add r5, r8
	mov sb, r5
_080251C6:
	lsls r4, r7, #3
	ldr r6, _08025290 @ =0x080FBAC4
	adds r0, r4, r6
	mov r2, sl
	adds r1, r4, r2
	lsls r6, r7, #2
	adds r3, r6, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x10
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _080251EA
	ldr r5, _08025294 @ =0x000003FF
	adds r0, r0, r5
_080251EA:
	asrs r1, r0, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	mov r5, r8
	subs r5, r0, r5
	mov ip, r5
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025202
	ldr r2, _08025294 @ =0x000003FF
	adds r0, r0, r2
_08025202:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, _08025298 @ =0x080FBAC8
	adds r0, r4, r3
	ldr r5, _0802529C @ =0x080FBAE8
	adds r1, r4, r5
	adds r3, r6, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x20
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _08025228
	ldr r1, _08025294 @ =0x000003FF
	adds r0, r0, r1
_08025228:
	asrs r1, r0, #0xa
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025236
	ldr r2, _08025294 @ =0x000003FF
	adds r0, r0, r2
_08025236:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, [sp, #0x94]
	adds r0, r3, r6
	ldr r0, [r0]
	asrs r0, r0, #0xc
	ldr r5, [sp, #0x98]
	adds r1, r5, r6
	ldr r1, [r1]
	asrs r1, r1, #0xc
	movs r2, #0
	str r2, [sp]
	add r6, sp, #0x1c
	str r6, [sp, #4]
	ldr r2, [sp, #0x80]
	str r2, [sp, #8]
	ldr r3, [sp, #0x7c]
	str r3, [sp, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_08003518
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _080251C6
	mov r8, sb
	bl WaitFrame
	ldr r0, _08025294 @ =0x000003FF
	cmp r8, r0
	ble _080251BE
	ldr r0, _080252A0 @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #3
	bne _080252A4
	movs r0, #9
	movs r1, #0xf
	movs r2, #9
	b _080252AA
	.align 2, 0
_0802528C: .4byte 0x080FBAE4
_08025290: .4byte 0x080FBAC4
_08025294: .4byte 0x000003FF
_08025298: .4byte 0x080FBAC8
_0802529C: .4byte 0x080FBAE8
_080252A0: .4byte 0x03003CA8
_080252A4:
	movs r0, #0xa
	movs r1, #0xf
	movs r2, #7
_080252AA:
	movs r3, #1
	bl sub_08021874
	str r0, [sp, #0x90]
	movs r5, #0
	str r5, [sp, #0x84]
	movs r6, #8
	str r6, [sp, #0x8c]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x88]
_080252C0:
	ldr r1, [sp, #0x88]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x8c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	cmp r1, #0
	ble _080252E6
	lsls r1, r0, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080252E6
	ldr r3, _08025364 @ =0x0000FFF8
	str r3, [sp, #0x8c]
_080252E6:
	ldr r5, [sp, #0x8c]
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _080252FC
	ldr r6, [sp, #0x88]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xdf
	bgt _080252FC
	movs r0, #8
	str r0, [sp, #0x8c]
_080252FC:
	movs r7, #0
	ldr r1, [sp, #0x84]
	lsls r1, r1, #2
	mov sl, r1
	ldr r2, _08025368 @ =0x080FBAE4
	mov r8, r2
	movs r3, #4
	add r3, r8
	mov sb, r3
	movs r6, #0
	ldr r5, [sp, #0x88]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
_08025316:
	lsls r2, r7, #1
	ldr r0, [sp, #0x9c]
	adds r4, r0, r2
	ldr r1, [sp, #0xa0]
	adds r2, r1, r2
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x80]
	bl sub_08004214
	ldr r2, [sp, #0x84]
	cmp r2, r7
	bne _0802536C
	lsls r1, r7, #3
	mov r3, r8
	adds r0, r1, r3
	ldr r0, [r0]
	asrs r0, r0, #0xc
	add r1, sb
	ldr r1, [r1]
	asrs r1, r1, #0xc
	ldrh r3, [r4]
	str r6, [sp]
	add r2, sp, #0x1c
	str r2, [sp, #4]
	ldr r2, [sp, #0x80]
	str r2, [sp, #8]
	ldr r2, [sp, #0x7c]
	str r2, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r6, [sp, #0x18]
	adds r2, r7, #0
	bl sub_08003724
	b _08025392
	.align 2, 0
_08025364: .4byte 0x0000FFF8
_08025368: .4byte 0x080FBAE4
_0802536C:
	lsls r1, r7, #3
	mov r3, r8
	adds r0, r1, r3
	ldr r0, [r0]
	asrs r0, r0, #0xc
	add r1, sb
	ldr r1, [r1]
	asrs r1, r1, #0xc
	ldrh r3, [r4]
	str r6, [sp]
	add r2, sp, #0x1c
	str r2, [sp, #4]
	ldr r2, [sp, #0x80]
	str r2, [sp, #8]
	ldr r2, [sp, #0x7c]
	str r2, [sp, #0xc]
	adds r2, r7, #0
	bl sub_08003518
_08025392:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08025316
	ldr r4, [sp, #0xa4]
	add r4, sl
	ldr r0, [r4]
	adds r0, #0xa
	bl sub_0800ED80
	ldr r1, _08025404 @ =0x03003CA0
	ldrh r1, [r1]
	muls r1, r0, r1
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldr r0, [r4]
	adds r0, #0xa
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x78
	movs r2, #0x7f
	bl sub_0800EB30
	bl WaitFrame
	bl sub_080077C0
	cmp r0, #0
	bne _080253DC
	bl sub_08016FA0
	cmp r0, #0
	beq _080253EE
_080253DC:
	ldr r5, _08025408 @ =gKeysNew
	ldr r4, _0802540C @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #8]
	strh r0, [r5]
_080253EE:
	ldr r0, _08025408 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025410
	movs r0, #0xf
	bl PlaySE
	b _080255F0
	.align 2, 0
_08025404: .4byte 0x03003CA0
_08025408: .4byte gKeysNew
_0802540C: .4byte gPlayers
_08025410:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0802541A
	b _0802554C
_0802541A:
	movs r0, #0x10
	bl PlaySE
	movs r3, #0x80
	lsls r3, r3, #3
	mov r8, r3
	ldr r5, _080254EC @ =0x080FBAE4
	mov sl, r5
_0802542A:
	movs r7, #0
	movs r6, #0x80
	rsbs r6, r6, #0
	add r6, r8
	mov sb, r6
_08025434:
	lsls r4, r7, #3
	ldr r1, _080254F0 @ =0x080FBAC4
	adds r0, r4, r1
	mov r2, sl
	adds r1, r4, r2
	lsls r5, r7, #2
	adds r3, r5, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x10
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _08025458
	ldr r6, _080254F4 @ =0x000003FF
	adds r0, r0, r6
_08025458:
	asrs r1, r0, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	mov r6, r8
	subs r6, r0, r6
	mov ip, r6
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025470
	ldr r2, _080254F4 @ =0x000003FF
	adds r0, r0, r2
_08025470:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, _080254F8 @ =0x080FBAC8
	adds r0, r4, r3
	ldr r6, _080254FC @ =0x080FBAE8
	adds r1, r4, r6
	adds r3, r5, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x20
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _08025496
	ldr r1, _080254F4 @ =0x000003FF
	adds r0, r0, r1
_08025496:
	asrs r1, r0, #0xa
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _080254A4
	ldr r2, _080254F4 @ =0x000003FF
	adds r0, r0, r2
_080254A4:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, [sp, #0x94]
	adds r0, r3, r5
	ldr r0, [r0]
	asrs r0, r0, #0xc
	ldr r6, [sp, #0x98]
	adds r1, r6, r5
	ldr r1, [r1]
	asrs r1, r1, #0xc
	movs r2, #0
	str r2, [sp]
	add r2, sp, #0x1c
	str r2, [sp, #4]
	ldr r3, [sp, #0x80]
	str r3, [sp, #8]
	ldr r5, [sp, #0x7c]
	str r5, [sp, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_08003518
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08025434
	mov r8, sb
	bl WaitFrame
	mov r6, r8
	cmp r6, #0
	bgt _0802542A
	b _08025504
	.align 2, 0
_080254EC: .4byte 0x080FBAE4
_080254F0: .4byte 0x080FBAC4
_080254F4: .4byte 0x000003FF
_080254F8: .4byte 0x080FBAC8
_080254FC: .4byte 0x080FBAE8
_08025500:
	bl WaitFrame
_08025504:
	ldr r0, [sp, #0x90]
	bl sub_0802292C
	cmp r0, #0
	beq _08025500
	ldr r0, [sp, #0x90]
	bl sub_08022A0C
	b _0802551A
_08025516:
	bl WaitFrame
_0802551A:
	ldr r0, [sp, #0x90]
	bl sub_0802293C
	cmp r0, #0
	beq _08025516
	bl GetMultiplayerId
	ldr r3, _08025544 @ =gPlayers
	movs r1, #0xd4
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, r2, r3
	ldrh r0, [r2, #0x10]
	ldr r3, _08025548 @ =0x0000FFFE
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x10]
	bl sub_080076CC
	b _08025928
	.align 2, 0
_08025544: .4byte gPlayers
_08025548: .4byte 0x0000FFFE
_0802554C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08025566
	ldr r5, [sp, #0x84]
	cmp r5, #0
	beq _08025560
	movs r0, #0x62
	bl PlaySE
_08025560:
	movs r6, #0
	str r6, [sp, #0x84]
	b _080252C0
_08025566:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08025580
	ldr r0, [sp, #0x84]
	cmp r0, #1
	beq _0802557A
	movs r0, #0x62
	bl PlaySE
_0802557A:
	movs r1, #1
	str r1, [sp, #0x84]
	b _080252C0
_08025580:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080255D0
	bl sub_08007638
	cmp r0, #0
	beq _0802559A
	bl sub_08007544
	cmp r0, #0
	bne _0802559A
	b _080252C0
_0802559A:
	bl sub_080074F0
	cmp r0, #0
	beq _080255BE
	bl sub_08001F64
	cmp r0, #0
	bne _080255AC
	b _080252C0
_080255AC:
	ldr r2, [sp, #0x84]
	cmp r2, #2
	beq _080255B8
	movs r0, #0x62
	bl PlaySE
_080255B8:
	movs r3, #2
	str r3, [sp, #0x84]
	b _080252C0
_080255BE:
	ldr r5, [sp, #0x84]
	cmp r5, #2
	beq _080255CA
	movs r0, #0x62
	bl PlaySE
_080255CA:
	movs r6, #2
	str r6, [sp, #0x84]
	b _080252C0
_080255D0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080255DA
	b _080252C0
_080255DA:
	ldr r0, [sp, #0x84]
	cmp r0, #3
	beq _080255E6
	movs r0, #0x62
	bl PlaySE
_080255E6:
	movs r1, #3
	str r1, [sp, #0x84]
	b _080252C0
_080255EC:
	bl WaitFrame
_080255F0:
	ldr r0, [sp, #0x90]
	bl sub_0802292C
	cmp r0, #0
	beq _080255EC
	bl WaitFrame
	bl WaitFrame
	ldr r0, [sp, #0x90]
	bl sub_08022A0C
	ldr r2, [sp, #0x84]
	cmp r2, #2
	beq _08025614
	movs r0, #6
	bl sub_0800F3A0
_08025614:
	movs r3, #0x80
	lsls r3, r3, #3
	mov r8, r3
	ldr r5, _080256E8 @ =0x080FBAE4
	mov sl, r5
_0802561E:
	movs r7, #0
	movs r6, #0x80
	rsbs r6, r6, #0
	add r6, r8
	mov sb, r6
_08025628:
	lsls r4, r7, #3
	ldr r1, _080256EC @ =0x080FBAC4
	adds r0, r4, r1
	mov r2, sl
	adds r1, r4, r2
	lsls r6, r7, #2
	adds r3, r6, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x10
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _0802564C
	ldr r5, _080256F0 @ =0x000003FF
	adds r0, r0, r5
_0802564C:
	asrs r1, r0, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	mov r5, r8
	subs r5, r0, r5
	mov ip, r5
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025664
	ldr r2, _080256F0 @ =0x000003FF
	adds r0, r0, r2
_08025664:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, _080256F4 @ =0x080FBAC8
	adds r0, r4, r3
	ldr r5, _080256F8 @ =0x080FBAE8
	adds r1, r4, r5
	adds r3, r6, #0
	add r3, sp
	adds r3, #0x1c
	adds r3, #0x20
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _0802568A
	ldr r1, _080256F0 @ =0x000003FF
	adds r0, r0, r1
_0802568A:
	asrs r1, r0, #0xa
	mov r0, ip
	muls r0, r2, r0
	cmp r0, #0
	bge _08025698
	ldr r2, _080256F0 @ =0x000003FF
	adds r0, r0, r2
_08025698:
	asrs r2, r0, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r3, [sp, #0x94]
	adds r0, r3, r6
	ldr r0, [r0]
	asrs r0, r0, #0xc
	ldr r5, [sp, #0x98]
	adds r1, r5, r6
	ldr r1, [r1]
	asrs r1, r1, #0xc
	movs r2, #0
	str r2, [sp]
	add r6, sp, #0x1c
	str r6, [sp, #4]
	ldr r2, [sp, #0x80]
	str r2, [sp, #8]
	ldr r3, [sp, #0x7c]
	str r3, [sp, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_08003518
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08025628
	mov r8, sb
	bl WaitFrame
	mov r5, r8
	cmp r5, #0
	bgt _0802561E
	bl sub_0800F298
	cmp r0, #0
	beq _0802561E
	b _08025700
	.align 2, 0
_080256E8: .4byte 0x080FBAE4
_080256EC: .4byte 0x080FBAC4
_080256F0: .4byte 0x000003FF
_080256F4: .4byte 0x080FBAC8
_080256F8: .4byte 0x080FBAE8
_080256FC:
	bl WaitFrame
_08025700:
	ldr r0, [sp, #0x90]
	bl sub_0802293C
	cmp r0, #0
	beq _080256FC
	ldr r6, [sp, #0x84]
	cmp r6, #1
	beq _080257C4
	cmp r6, #1
	bgt _0802571A
	cmp r6, #0
	beq _0802572A
	b _080258EE
_0802571A:
	ldr r0, [sp, #0x84]
	cmp r0, #2
	bne _08025722
	b _08025860
_08025722:
	cmp r0, #3
	bne _08025728
	b _08025868
_08025728:
	b _080258EE
_0802572A:
	bl sub_08007544
	cmp r0, #0
	beq _0802573C
	ldr r0, _08025738 @ =gMapLayer_03003C00
	b _0802573E
	.align 2, 0
_08025738: .4byte gMapLayer_03003C00
_0802573C:
	ldr r0, _080257B4 @ =gMapLayer_03003910
_0802573E:
	ldr r1, [r0, #0x78]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0x78]
	bl WaitFrame
	bl WaitFrame
	ldr r1, _080257B8 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	ldr r4, _080257B4 @ =gMapLayer_03003910
	adds r5, r4, #0
	adds r5, #0x5c
	movs r1, #0
	ldrsh r7, [r5, r1]
	adds r4, #0x5e
	movs r2, #0
	ldrsh r6, [r4, r2]
	movs r0, #1
	bl StartMenuScreen
	bl sub_08007520
	ldr r0, _080257BC @ =0x11201100
	bl _08000400
	strh r7, [r5]
	strh r6, [r4]
	movs r7, #0
	ldr r3, _080257C0 @ =gPlayerStats
	movs r2, #0
_0802578C:
	lsls r0, r7, #2
	adds r1, r0, r3
	adds r0, r1, #0
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _080257A4
	adds r0, r1, #0
	adds r0, #0x8a
	strb r2, [r0]
_080257A4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x18
	bls _0802578C
	bl sub_08007530
	b _08025836
	.align 2, 0
_080257B4: .4byte gMapLayer_03003910
_080257B8: .4byte gBgRegsBuffer
_080257BC: .4byte 0x11201100
_080257C0: .4byte gPlayerStats
_080257C4:
	bl sub_08007544
	cmp r0, #0
	beq _080257D4
	ldr r0, _080257D0 @ =gMapLayer_03003C00
	b _080257D6
	.align 2, 0
_080257D0: .4byte gMapLayer_03003C00
_080257D4:
	ldr r0, _08025848 @ =gMapLayer_03003910
_080257D6:
	ldr r1, [r0, #0x78]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0x78]
	bl WaitFrame
	bl WaitFrame
	ldr r1, _0802584C @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	movs r0, #8
	bl StartMenuScreen
	bl sub_08007520
	ldr r4, _08025848 @ =gMapLayer_03003910
	adds r5, r4, #0
	adds r5, #0x5c
	movs r3, #0
	ldrsh r7, [r5, r3]
	adds r4, #0x5e
	movs r0, #0
	ldrsh r6, [r4, r0]
	ldr r0, _08025850 @ =0x11201100
	bl _08000400
	strh r7, [r5]
	strh r6, [r4]
	bl sub_08007530
	bl GetMultiplayerId
	ldr r2, _08025854 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08025858 @ =0x0000FFF7
	ands r0, r2
	strh r0, [r1, #0x10]
_08025836:
	bl sub_08007544
	cmp r0, #0
	bne _080258CE
	ldr r0, _0802585C @ =0x000514C8
	bl SignalEvent
	b _080258EE
	.align 2, 0
_08025848: .4byte gMapLayer_03003910
_0802584C: .4byte gBgRegsBuffer
_08025850: .4byte 0x11201100
_08025854: .4byte gPlayers
_08025858: .4byte 0x0000FFF7
_0802585C: .4byte 0x000514C8
_08025860:
	movs r0, #0
	bl QuitToTitle
	b _080258EE
_08025868:
	bl sub_08007544
	cmp r0, #0
	beq _08025878
	ldr r0, _08025874 @ =gMapLayer_03003C00
	b _0802587A
	.align 2, 0
_08025874: .4byte gMapLayer_03003C00
_08025878:
	ldr r0, _080258D8 @ =gMapLayer_03003910
_0802587A:
	ldr r1, [r0, #0x78]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0x78]
	bl WaitFrame
	bl WaitFrame
	ldr r1, _080258DC @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	movs r0, #9
	bl StartMenuScreen
	bl sub_08007520
	ldr r4, _080258D8 @ =gMapLayer_03003910
	adds r5, r4, #0
	adds r5, #0x5c
	movs r1, #0
	ldrsh r7, [r5, r1]
	adds r4, #0x5e
	movs r2, #0
	ldrsh r6, [r4, r2]
	ldr r0, _080258E0 @ =0x11201100
	bl _08000400
	strh r7, [r5]
	strh r6, [r4]
	bl sub_08007530
	bl sub_08007544
	cmp r0, #0
	beq _080258E8
_080258CE:
	ldr r0, _080258E4 @ =0x000514C9
	bl SignalEvent
	b _080258EE
	.align 2, 0
_080258D8: .4byte gMapLayer_03003910
_080258DC: .4byte gBgRegsBuffer
_080258E0: .4byte 0x11201100
_080258E4: .4byte 0x000514C9
_080258E8:
	ldr r0, _08025900 @ =0x000514C8
	bl SignalEvent
_080258EE:
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	b _08025908
	.align 2, 0
_08025900: .4byte 0x000514C8
_08025904:
	bl WaitFrame
_08025908:
	bl sub_0800F298
	cmp r0, #0
	beq _08025904
	bl GetMultiplayerId
	ldr r2, _08025938 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0802593C @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	bl sub_080076CC
_08025928:
	add sp, #0xa8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025938: .4byte gPlayers
_0802593C: .4byte 0x0000FFFE

	thumb_func_start sub_08025940
sub_08025940: @ 0x08025940
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x8c
	ldr r0, _08025A14 @ =0x00100010
	add r5, sp, #0x10
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #0x18
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	bl GetDataRecord
	str r0, [sp, #0x18]
	mov r1, sp
	adds r1, #0x44
	str r1, [sp, #0x88]
	cmp r0, #0
	beq _080259A8
	movs r4, #0x10
	ldr r0, _08025A18 @ =0x00110010
	bl GetDataRecord
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _080259A8
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _080259A8
	movs r1, #0
	add r2, sp, #0x2c
_08025990:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08025990
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_080259A8:
	movs r0, #0x80
	lsls r0, r0, #0xd
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #0x18
	str r0, [sp, #0x54]
	ldr r3, [sp, #0x88]
	str r1, [r3, #0x14]
	str r2, [r3, #0x18]
	bl GetDataRecord
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq _080259FC
	movs r0, #0x88
	lsls r0, r0, #0xd
	bl GetDataRecord
	str r0, [sp, #0x44]
	cmp r0, #0
	beq _080259FC
	movs r0, #0x98
	lsls r0, r0, #0xd
	bl GetDataRecord
	str r0, [sp, #0x50]
	cmp r0, #0
	beq _080259FC
	movs r1, #0
	add r2, sp, #0x60
_080259E4:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _080259E4
	add r0, sp, #0x44
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_080259FC:
	ldr r0, _08025A1C @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	adds r2, r0, #0
	ldr r0, [r2, #8]
	adds r1, r2, r0
	movs r3, #0
	ldrh r4, [r2, #0xc]
	cmp r3, r4
	bge _08025A40
	b _08025A34
	.align 2, 0
_08025A14: .4byte 0x00100010
_08025A18: .4byte 0x00110010
_08025A1C: .4byte 0x080FB0F8
_08025A20:
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r1, #8
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r4, [r2, #0xc]
	cmp r0, r4
	bge _08025A40
_08025A34:
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08025A20
	ldr r0, [r1, #4]
	adds r1, r1, r0
	mov sl, r1
_08025A40:
	movs r0, #0
	str r0, [sp, #0x84]
	b _08025BBC
_08025A46:
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08025AB0
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xe]
	cmp r0, #8
	beq _08025A70
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xe]
	cmp r0, #6
	bne _08025AB4
_08025A70:
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	str r0, [sp, #0x84]
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	adds r0, #0x58
	adds r1, r1, r0
	mov r2, sl
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #0xf
	str r0, [r1]
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	adds r0, #0x5c
	adds r1, r1, r0
	mov r3, sl
	ldrh r0, [r3, #0x16]
	lsls r0, r0, #0xf
	str r0, [r1]
	b _08025AB4
_08025AB0:
	movs r4, #0
	str r4, [sp, #0x84]
_08025AB4:
	add r1, sp, #0x10
	movs r0, #4
	strb r0, [r1, #0x1c]
	mov r1, sl
	ldrh r0, [r1, #0x14]
	lsls r0, r0, #3
	ldrh r1, [r1, #0x16]
	lsls r1, r1, #3
	movs r2, #1
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r2, #1
	mov sb, r2
	ldr r3, [sp, #0x18]
	str r2, [sp]
	movs r0, #0
	add r1, sp, #0x78
	mov r2, sp
	adds r2, #0x7a
	bl sub_08004214
	bl sub_08007510
	cmp r0, #0
	bne _08025BB8
	bl sub_08007604
	cmp r0, #0
	bne _08025BB8
	bl sub_080075AC
	mov r8, r0
	cmp r0, #0
	bne _08025BB8
	mov r3, sl
	ldrh r0, [r3, #0x14]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r3, #0x16]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r5, sp, #0x7c
	mov r6, sp
	adds r6, #0x7e
	movs r2, #0x30
	str r2, [sp]
	mov r4, sb
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x84]
	lsls r2, r3, #0x10
	asrs r4, r2, #0x10
	adds r1, r1, r4
	add r2, sp, #0x78
	ldrh r3, [r2]
	str r7, [sp]
	add r7, sp, #0x2c
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	ldr r1, [r0, #0xc]
	subs r1, #0x14
	str r1, [r0, #0xc]
	cmp r4, #0
	beq _08025B8A
	ldr r3, [sp, #0x18]
	mov r0, sb
	str r0, [sp]
	movs r0, #1
	add r1, sp, #0x80
	mov r2, sp
	adds r2, #0x82
	bl sub_08004214
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, r1, r4
	adds r1, #8
	add r2, sp, #0x80
	ldrh r3, [r2]
	mov r4, r8
	str r4, [sp]
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	b _08025BB8
_08025B8A:
	ldr r1, [sp, #0x88]
	ldr r0, [r1, #8]
	bl sub_080044DC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r4, #0
	ldrsh r1, [r6, r4]
	movs r3, #3
	str r3, [sp]
	add r3, sp, #0x60
	str r3, [sp, #4]
	ldr r4, [sp, #0x88]
	ldr r3, [r4, #8]
	str r3, [sp, #8]
	ldr r3, [sp, #0x44]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08004344
_08025BB8:
	bl WaitFrame
_08025BBC:
	bl sub_080074CC
	cmp r0, #0
	bne _08025BE8
	bl sub_08007578
	cmp r0, #0
	bne _08025BE8
	bl sub_08007638
	cmp r0, #0
	bne _08025BE8
	ldr r5, _08025BF8 @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	bne _08025BE8
	b _08025A46
_08025BE8:
	add sp, #0x8c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025BF8: .4byte gPlayers

	thumb_func_start sub_08025BFC
sub_08025BFC: @ 0x08025BFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r5, _08025C9C @ =gUnknown_03006430
	ldr r6, _08025CA0 @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08025C4E
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xe]
	cmp r0, #0xd
	beq _08025C4E
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xe]
	cmp r0, #0xc
	beq _08025C4E
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xe]
	cmp r0, #0xe
	beq _08025C4E
	b _08025E92
_08025C4E:
	bl sub_08022A88
	cmp r0, #0
	beq _08025C58
	b _08025E92
_08025C58:
	bl sub_08007510
	cmp r0, #0
	beq _08025C62
	b _08025E92
_08025C62:
	bl sub_08007544
	cmp r0, #0
	beq _08025C6C
	b _08025E92
_08025C6C:
	bl sub_080076E0
	cmp r0, #0
	beq _08025C76
	b _08025E92
_08025C76:
	bl sub_08007670
	cmp r0, #0
	beq _08025C80
	b _08025E92
_08025C80:
	bl sub_08022A88
	cmp r0, #0
	beq _08025C8A
	b _08025E92
_08025C8A:
	bl sub_080077C0
	cmp r0, #0
	beq _08025C94
	b _08025E92
_08025C94:
	ldr r4, [sp, #0x10]
	subs r4, #1
	b _08025CA8
	.align 2, 0
_08025C9C: .4byte gUnknown_03006430
_08025CA0: .4byte gPlayers
_08025CA4:
	bl WaitFrame
_08025CA8:
	bl sub_0800F430
	cmp r0, #0
	beq _08025CA4
	ldr r1, _08025CD0 @ =gUnknown_030064D8
	ldr r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #1
	str r0, [r1]
	ldr r2, _08025CD4 @ =gMapLayer_03003910
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	movs r0, #0x3c
	bl sub_0800F3A0
	b _08025CDC
	.align 2, 0
_08025CD0: .4byte gUnknown_030064D8
_08025CD4: .4byte gMapLayer_03003910
_08025CD8:
	bl WaitFrame
_08025CDC:
	bl sub_0800F298
	cmp r0, #0
	beq _08025CD8
	bl sub_080075E0
	bl WaitFrame
	bl WaitFrame
	ldr r1, _08025D14 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	cmp r4, #8
	bls _08025D0A
	b _08025E12
_08025D0A:
	lsls r0, r4, #2
	ldr r1, _08025D18 @ =_08025D1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025D14: .4byte gBgRegsBuffer
_08025D18: .4byte _08025D1C
_08025D1C: @ jump table
	.4byte _08025D40 @ case 0
	.4byte _08025D58 @ case 1
	.4byte _08025D70 @ case 2
	.4byte _08025D88 @ case 3
	.4byte _08025DA0 @ case 4
	.4byte _08025DB8 @ case 5
	.4byte _08025DD0 @ case 6
	.4byte _08025DEC @ case 7
	.4byte _08025E08 @ case 8
_08025D40:
	ldr r1, _08025D54 @ =gUnknown_03006918
	movs r0, #0
	strb r0, [r1]
	bl Random
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x32
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025D54: .4byte gUnknown_03006918
_08025D58:
	ldr r1, _08025D6C @ =gUnknown_03006918
	movs r0, #1
	strb r0, [r1]
	bl Random
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x50
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025D6C: .4byte gUnknown_03006918
_08025D70:
	ldr r1, _08025D84 @ =gUnknown_03006918
	movs r0, #3
	strb r0, [r1]
	bl Random
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x64
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025D84: .4byte gUnknown_03006918
_08025D88:
	ldr r1, _08025D9C @ =gUnknown_03006918
	movs r0, #2
	strb r0, [r1]
	bl Random
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x78
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025D9C: .4byte gUnknown_03006918
_08025DA0:
	ldr r1, _08025DB4 @ =gUnknown_03006918
	movs r0, #4
	strb r0, [r1]
	bl Random
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x96
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025DB4: .4byte gUnknown_03006918
_08025DB8:
	ldr r1, _08025DCC @ =gUnknown_03006918
	movs r0, #8
	strb r0, [r1]
	bl Random
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0xc8
	str r1, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025DCC: .4byte gUnknown_03006918
_08025DD0:
	ldr r1, _08025DE8 @ =gUnknown_03006918
	movs r0, #7
	strb r0, [r1]
	bl Random
	movs r1, #0x7f
	ands r1, r0
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r0, r1, r0
	b _08025E10
	.align 2, 0
_08025DE8: .4byte gUnknown_03006918
_08025DEC:
	ldr r1, _08025E04 @ =gUnknown_03006918
	movs r0, #5
	strb r0, [r1]
	bl Random
	movs r1, #0x7f
	ands r1, r0
	movs r2, #0x96
	lsls r2, r2, #2
	adds r2, r1, r2
	str r2, [sp, #0x14]
	b _08025E12
	.align 2, 0
_08025E04: .4byte gUnknown_03006918
_08025E08:
	ldr r1, _08025E50 @ =gUnknown_03006918
	movs r0, #6
	strb r0, [r1]
	movs r0, #1
_08025E10:
	str r0, [sp, #0x14]
_08025E12:
	bl sub_080485A0
	ldr r0, _08025E54 @ =0x11201100
	bl _08000400
	ldr r3, _08025E58 @ =gUnknown_03006430
	ldr r2, [r3, #0x14]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r2, r2, #5
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	ldr r2, [r3, #0x18]
	bl LoadPalette
	ldr r0, _08025E5C @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x5c
	movs r2, #0
	ldrsh r4, [r1, r2]
	adds r0, #0x5e
	movs r1, #0
	ldrsh r5, [r0, r1]
	bl sub_08007544
	cmp r0, #0
	beq _08025E64
	ldr r0, _08025E60 @ =0x000514C9
	bl SignalEvent
	b _08025E6A
	.align 2, 0
_08025E50: .4byte gUnknown_03006918
_08025E54: .4byte 0x11201100
_08025E58: .4byte gUnknown_03006430
_08025E5C: .4byte gMapLayer_03003910
_08025E60: .4byte 0x000514C9
_08025E64:
	ldr r0, _08025E7C @ =0x000514C8
	bl SignalEvent
_08025E6A:
	ldr r0, _08025E80 @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x5c
	strh r4, [r1]
	adds r0, #0x5e
	strh r5, [r0]
	bl sub_080075F0
	b _08025E88
	.align 2, 0
_08025E7C: .4byte 0x000514C8
_08025E80: .4byte gMapLayer_03003910
_08025E84:
	bl WaitFrame
_08025E88:
	bl sub_0800F430
	cmp r0, #0
	beq _08025E84
	b _08025F3E
_08025E92:
	ldr r0, _08025F84 @ =gUnknown_030064D8
	ldr r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08025F88 @ =gPlayers
	movs r1, #0xd4
	muls r1, r7, r1
	adds r0, #0xd0
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _08025EF0
	adds r4, r1, #0
_08025EB4:
	bl sub_08007510
	cmp r0, #0
	bne _08025EE0
	bl sub_080076E0
	cmp r0, #0
	bne _08025EE0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #0x21
	movs r3, #0
	bl sub_08003518
_08025EE0:
	bl WaitFrame
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _08025EB4
_08025EF0:
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _08025F8C @ =0x03004650
	adds r6, r1, r0
_08025EFA:
	movs r4, #0
	ldr r0, [r6]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _08025F0A
	movs r4, #1
_08025F0A:
	bl sub_08007510
	cmp r0, #0
	bne _08025F36
	bl sub_080076E0
	cmp r0, #0
	bne _08025F36
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #0x21
	movs r3, #0
	bl sub_08003518
_08025F36:
	bl WaitFrame
	cmp r4, #0
	bne _08025EFA
_08025F3E:
	bl GetMultiplayerId
	cmp r7, r0
	beq _08025F48
	b _08026080
_08025F48:
	ldr r0, _08025F90 @ =gEnemies
	ldr r5, [r0]
	movs r4, #0
_08025F4E:
	ldr r0, _08025F94 @ =gActiveEnemyMask
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0]
	ands r0, r1
	adds r2, r4, #1
	mov sl, r2
	movs r1, #0x94
	adds r1, r1, r5
	mov sb, r1
	cmp r0, #0
	bne _08025F68
	b _08026072
_08025F68:
	ldrh r0, [r5, #0xa]
	cmp r0, #8
	bne _08025F70
	b _08026072
_08025F70:
	ldr r0, [sp, #0x10]
	subs r0, #1
	cmp r0, #7
	bhi _0802600C
	lsls r0, r0, #2
	ldr r1, _08025F98 @ =_08025F9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025F84: .4byte gUnknown_030064D8
_08025F88: .4byte gPlayers
_08025F8C: .4byte 0x03004650
_08025F90: .4byte gEnemies
_08025F94: .4byte gActiveEnemyMask
_08025F98: .4byte _08025F9C
_08025F9C: @ jump table
	.4byte _08025FBC @ case 0
	.4byte _0802600C @ case 1
	.4byte _08025FBC @ case 2
	.4byte _0802600C @ case 3
	.4byte _08025FD2 @ case 4
	.4byte _0802600C @ case 5
	.4byte _08025FD2 @ case 6
	.4byte _08025FC2 @ case 7
_08025FBC:
	adds r0, r5, #0
	adds r0, #0x78
	b _08025FD6
_08025FC2:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	movs r0, #0x6e
	subs r0, r0, r1
	ldr r1, [sp, #0x14]
	muls r0, r1, r0
	b _08025FE0
_08025FD2:
	adds r0, r5, #0
	adds r0, #0x7a
_08025FD6:
	ldrh r1, [r0]
	movs r0, #0x6e
	subs r0, r0, r1
	ldr r2, [sp, #0x14]
	muls r0, r2, r0
_08025FE0:
	movs r1, #0x3c
	bl __divsi3
	strh r0, [r5, #0x2a]
	b _08026012
_08025FEA:
	bl GetMultiplayerId
	muls r0, r7, r0
	ldr r1, _08026008 @ =0x03004648
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r4, r0
	adds r1, r5, #0
	movs r2, #0x94
	bl memcpy
	movs r0, #0
	strh r0, [r5, #0x3e]
	b _08026072
	.align 2, 0
_08026008: .4byte 0x03004648
_0802600C:
	mov r2, sp
	ldrh r2, [r2, #0x14]
	strh r2, [r5, #0x2a]
_08026012:
	ldrh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x28]
	adds r0, r0, r1
	strh r0, [r5, #0x28]
	movs r0, #7
	strh r0, [r5, #0xa]
	movs r0, #1
	strh r0, [r5, #0x36]
	movs r6, #0
	adds r4, #1
	mov sl, r4
	movs r2, #0x94
	adds r2, r2, r5
	mov sb, r2
	ldr r0, _080260CC @ =gPlayers
	mov r8, r0
	movs r7, #0xd4
_08026034:
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	adds r0, #0xa2
	ldrh r0, [r0]
	adds r0, r0, r6
	movs r1, #5
	bl __modsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r7, r0
	ldr r1, _080260D0 @ =0x03004648
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x94
	muls r4, r0, r4
	adds r1, r4, r1
	ldrh r0, [r1]
	ldr r2, _080260D4 @ =0x0000FFFF
	cmp r0, r2
	beq _08025FEA
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _08026034
_08026072:
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	mov r5, sb
	cmp r4, #4
	bhi _08026080
	b _08025F4E
_08026080:
	bl sub_08001F64
	cmp r0, #0
	beq _080260A2
	ldr r1, _080260D8 @ =0x03006788
	movs r0, #1
	str r0, [r1]
	movs r6, #0
	ldr r2, _080260DC @ =0x03006718
	movs r1, #0
_08026094:
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08026094
_080260A2:
	bl GetMultiplayerId
	ldr r2, _080260CC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080260E0 @ =0x0000FEFF
	ands r0, r2
	movs r2, #0
	strh r0, [r1, #0x10]
	ldr r0, _080260E4 @ =gUnknown_030064D8
	str r2, [r0]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080260CC: .4byte gPlayers
_080260D0: .4byte 0x03004648
_080260D4: .4byte 0x0000FFFF
_080260D8: .4byte 0x03006788
_080260DC: .4byte 0x03006718
_080260E0: .4byte 0x0000FEFF
_080260E4: .4byte gUnknown_030064D8

	thumb_func_start sub_080260E8
sub_080260E8: @ 0x080260E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x108
	ldr r0, _0802610C @ =gUnknown_03006430
	str r0, [sp, #0xe4]
	bl GetMultiplayerId
	str r0, [sp, #0xe8]
	movs r1, #0
	mov sl, r1
	mov r2, sb
	adds r2, #4
	str r2, [sp, #0xfc]
	b _080261E4
	.align 2, 0
_0802610C: .4byte gUnknown_03006430
_08026110:
	ldr r2, _080262F0 @ =0x080FB610
	ldr r1, _080262F4 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r7, [r0]
	movs r0, #0x34
	mov r5, sl
	muls r5, r0, r5
	add r5, sp
	adds r5, #0x10
	movs r0, #1
	movs r1, #1
	rsbs r1, r1, #0
	str r7, [r5, #0x10]
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	adds r0, r7, #0
	bl GetDataRecord
	str r0, [r5, #8]
	movs r4, #0x10
	add r4, sl
	mov r8, r4
	add r6, sp, #0x1c
	cmp r0, #0
	beq _080261A6
	ldr r1, _080262F8 @ =0x0000FFFF
	adds r4, r1, #0
	ands r4, r7
	movs r0, #0x88
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	str r1, [sp, #0x104]
	bl GetDataRecord
	str r0, [r5]
	ldr r1, [sp, #0x104]
	cmp r0, #0
	beq _080261A6
	ands r4, r1
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _080261A6
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0802618E:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _0802618E
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_080261A6:
	movs r0, #0x34
	mov r4, sl
	muls r4, r0, r4
	adds r2, r6, r4
	ldr r1, _080262F4 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, [r2]
	adds r1, r1, r0
	mov r0, r8
	movs r2, #1
	bl LoadPalette
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x10
	mov r7, sl
	strb r7, [r0, #0x1c]
	movs r0, #1
	add sl, r0
_080261E4:
	bl sub_08001EC4
	cmp sl, r0
	blo _08026110
	movs r1, #0xf0
	lsls r1, r1, #0xb
	str r1, [sp, #0xec]
	ldr r2, [sp, #0xe8]
	lsls r0, r2, #5
	adds r0, #0x10
	lsls r0, r0, #0xc
	str r0, [sp, #0xf0]
	ldr r0, _080262F4 @ =gPlayers
	movs r1, #0xd4
	adds r4, r2, #0
	muls r4, r1, r4
	adds r0, #0xd0
	adds r4, r4, r0
	ldr r3, [r4]
	ldrb r2, [r3, #3]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #3]
	ldr r2, [r4]
	movs r3, #0xf0
	lsls r3, r3, #3
	ldrh r0, [r2]
	ands r1, r0
	orrs r1, r3
	strh r1, [r2]
	ldr r3, [r4]
	ldr r5, [sp, #0xf0]
	asrs r1, r5, #0xc
	ldr r7, _080262FC @ =0x00000FFF
	adds r0, r7, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08026300 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r2, [r4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #4]
	mov r1, sb
	ldr r0, [r1]
	bl GetDataRecord
	adds r4, r0, #0
	mov r2, sb
	ldrh r0, [r2]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r6, r0, #0
	ldr r0, [sp, #0xfc]
	bl LZ77DecompressAlloc
	str r0, [sp, #0xe0]
	movs r3, #0
	mov sl, r3
	movs r5, #0xc0
	lsls r5, r5, #0x13
_0802626E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
	bl WaitFrame
	movs r7, #0x80
	lsls r7, r7, #5
	adds r5, r5, r7
	adds r0, r7, #0
	adds r4, r4, r0
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #7
	bls _0802626E
	ldr r1, _08026304 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r0, [sp, #0xe0]
	bl QueueCopy
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r1, _08026308 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #6
	bl sub_0800F308
	ldr r0, _0802630C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080262C8
	b _0802657E
_080262C8:
	ldr r3, _080262F4 @ =gPlayers
	str r3, [sp, #0xf4]
	ldr r4, [sp, #0xe8]
	movs r5, #0xd4
	adds r0, r4, #0
	muls r0, r5, r0
	ldr r7, _08026310 @ =0x03004650
	adds r0, r0, r7
	str r0, [sp, #0xf8]
_080262DA:
	ldr r0, [sp, #0xf8]
	ldr r3, [r0]
	ldrb r2, [r3, #4]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08026314
	cmp r0, #1
	beq _08026334
	b _08026408
	.align 2, 0
_080262F0: .4byte 0x080FB610
_080262F4: .4byte gPlayers
_080262F8: .4byte 0x0000FFFF
_080262FC: .4byte 0x00000FFF
_08026300: .4byte 0xFFFFF000
_08026304: .4byte 0x0600E800
_08026308: .4byte gBgRegsBuffer
_0802630C: .4byte 0x030063D8
_08026310: .4byte 0x03004650
_08026314:
	ldr r0, _08026330 @ =gKeysHeld
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08026408
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #4]
	b _08026408
	.align 2, 0
_08026330: .4byte gKeysHeld
_08026334:
	movs r4, #0
	ldr r1, _08026348 @ =gKeysHeld
	ldrh r2, [r1]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0802634C
	movs r4, #5
	b _08026356
	.align 2, 0
_08026348: .4byte gKeysHeld
_0802634C:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08026356
	movs r4, #1
_08026356:
	ldrh r1, [r1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08026374
	cmp r4, #5
	bne _08026368
	movs r4, #4
	b _08026392
_08026368:
	cmp r4, #1
	bne _08026370
	movs r4, #2
	b _08026392
_08026370:
	movs r4, #3
	b _08026392
_08026374:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802638E
	cmp r4, #5
	bne _08026384
	movs r4, #6
	b _08026392
_08026384:
	cmp r4, #1
	bne _0802638C
	movs r4, #8
	b _08026392
_0802638C:
	movs r4, #7
_0802638E:
	cmp r4, #0
	beq _080263F8
_08026392:
	ldr r2, [sp, #0xf8]
	ldr r3, [r2]
	subs r1, r4, #1
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r2, _080263F0 @ =0x080FB5D0
	ldr r3, [sp, #0xf8]
	ldr r4, [r3]
	ldrb r1, [r4, #3]
	lsrs r1, r1, #4
	lsls r1, r1, #3
	adds r0, r1, r2
	ldr r0, [r0]
	movs r3, #0x32
	muls r0, r3, r0
	ldr r5, [sp, #0xec]
	adds r5, r5, r0
	str r5, [sp, #0xec]
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	muls r0, r3, r0
	ldr r7, [sp, #0xf0]
	adds r7, r7, r0
	str r7, [sp, #0xf0]
	asrs r1, r5, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [sp, #0xf8]
	ldr r3, [r0]
	lsls r2, r7, #8
	lsrs r2, r2, #0x14
	ldrh r0, [r3, #2]
	ldr r4, _080263F4 @ =0xFFFFF000
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	b _08026408
	.align 2, 0
_080263F0: .4byte 0x080FB5D0
_080263F4: .4byte 0xFFFFF000
_080263F8:
	ldr r5, [sp, #0xf8]
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	strb r1, [r0, #4]
_08026408:
	movs r0, #0
	mov sl, r0
	ldr r1, [sp, #0xe4]
	adds r1, #0x1c
	str r1, [sp, #0x100]
	b _08026540
_08026414:
	ldr r3, _08026434 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	ldr r5, _08026438 @ =0x03004650
	adds r2, r4, r5
	ldr r1, [r2]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0802643C
	cmp r0, #1
	beq _08026468
	b _08026494
	.align 2, 0
_08026434: .4byte gPlayers
_08026438: .4byte 0x03004650
_0802643C:
	adds r4, r4, r3
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r4, #0x70
	strh r3, [r4]
	ldr r0, [r2]
	ldrb r1, [r0, #5]
	movs r2, #0xc
	ands r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r7, _08026464 @ =0x080FB630
	adds r2, r2, r7
	b _0802648E
	.align 2, 0
_08026464: .4byte 0x080FB630
_08026468:
	adds r4, r4, r3
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #8
	adds r4, #0x70
	strh r3, [r4]
	ldr r0, [r2]
	ldrb r1, [r0, #5]
	movs r2, #0xc
	ands r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, _08026594 @ =0x080FB630
	adds r2, r2, r0
_0802648E:
	ldr r0, [r2]
	adds r3, r3, r0
	strh r3, [r4]
_08026494:
	movs r1, #0xd4
	mov r6, sl
	muls r6, r1, r6
	ldr r2, [sp, #0xf4]
	adds r7, r6, r2
	adds r4, r7, #0
	adds r4, #0x70
	ldrh r0, [r4]
	movs r5, #0x34
	mov r3, sl
	muls r3, r5, r3
	add r3, sp
	adds r3, #0x10
	adds r1, r2, #0
	adds r1, #0x72
	adds r1, r6, r1
	adds r2, #0x74
	adds r2, r6, r2
	ldr r3, [r3, #8]
	mov r8, r3
	movs r3, #1
	str r3, [sp]
	mov r3, r8
	bl sub_08004214
	adds r1, r7, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r0, _08026598 @ =0x03004650
	adds r6, r6, r0
	ldr r1, [r6]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldrh r2, [r4]
	adds r3, r7, #0
	adds r3, #0x72
	ldrh r3, [r3]
	movs r4, #0
	str r4, [sp]
	mov r4, sl
	muls r4, r5, r4
	mov r5, sp
	adds r5, r5, r4
	adds r5, #0x10
	mov r8, r5
	movs r7, #0x1c
	add r7, r8
	mov sb, r7
	str r7, [sp, #4]
	add r5, sp, #0x18
	adds r5, r5, r4
	ldr r4, [r5]
	str r4, [sp, #8]
	mov r7, r8
	ldr r4, [r7]
	str r4, [sp, #0xc]
	bl sub_08004344
	ldr r0, [r5]
	bl sub_080044DC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, [r6]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r3, #0
	str r3, [sp]
	mov r4, sb
	str r4, [sp, #4]
	ldr r3, [r5]
	str r3, [sp, #8]
	ldr r3, [r7]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08004344
	movs r5, #1
	add sl, r5
_08026540:
	bl sub_08001EC4
	cmp sl, r0
	bhs _0802654A
	b _08026414
_0802654A:
	movs r7, #0
	str r7, [sp]
	ldr r0, [sp, #0x100]
	str r0, [sp, #4]
	ldr r1, [sp, #0xe4]
	ldr r0, [r1, #8]
	str r0, [sp, #8]
	ldr r0, [r1]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x96
	movs r2, #0x21
	movs r3, #0
	bl sub_08003518
	bl WaitFrame
	ldr r0, _0802659C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802657E
	b _080262DA
_0802657E:
	ldr r0, [sp, #0xe0]
	bl Free
	add sp, #0x108
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026594: .4byte 0x080FB630
_08026598: .4byte 0x03004650
_0802659C: .4byte 0x030063D8

	thumb_func_start sub_080265A0
sub_080265A0: @ 0x080265A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	ldr r0, _080265C4 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	add r5, sp, #0x44
	cmp r0, #4
	bls _080265BA
	b _08026954
_080265BA:
	lsls r0, r0, #2
	ldr r1, _080265C8 @ =_080265CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080265C4: .4byte 0x03003CA8
_080265C8: .4byte _080265CC
_080265CC: @ jump table
	.4byte _080265E0 @ case 0
	.4byte _08026690 @ case 1
	.4byte _08026740 @ case 2
	.4byte _080267F0 @ case 3
	.4byte _080268A8 @ case 4
_080265E0:
	ldr r0, _08026688 @ =0x0010006B
	add r6, sp, #0x10
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	bl GetDataRecord
	str r0, [sp, #0x18]
	add r5, sp, #0x44
	cmp r0, #0
	beq _08026638
	movs r4, #0x6b
	ldr r0, _0802668C @ =0x0011006B
	bl GetDataRecord
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _08026638
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _08026638
	movs r1, #0
	add r2, sp, #0x2c
_08026620:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08026620
	adds r0, r6, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08026638:
	ldr r0, _08026688 @ =0x0010006B
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x54]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [sp, #0x4c]
	cmp r0, #0
	bne _08026652
	b _08026954
_08026652:
	movs r4, #0x6b
	ldr r0, _0802668C @ =0x0011006B
	bl GetDataRecord
	str r0, [sp, #0x44]
	cmp r0, #0
	bne _08026662
	b _08026954
_08026662:
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x50]
	cmp r0, #0
	bne _08026676
	b _08026954
_08026676:
	movs r1, #0
	add r2, sp, #0x60
_0802667A:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _0802667A
	b _0802688E
	.align 2, 0
_08026688: .4byte 0x0010006B
_0802668C: .4byte 0x0011006B
_08026690:
	ldr r0, _08026738 @ =0x00100077
	add r6, sp, #0x10
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	bl GetDataRecord
	str r0, [sp, #0x18]
	add r5, sp, #0x44
	cmp r0, #0
	beq _080266E8
	movs r4, #0x77
	ldr r0, _0802673C @ =0x00110077
	bl GetDataRecord
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _080266E8
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _080266E8
	movs r1, #0
	add r2, sp, #0x2c
_080266D0:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _080266D0
	adds r0, r6, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_080266E8:
	ldr r0, _08026738 @ =0x00100077
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x54]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [sp, #0x4c]
	cmp r0, #0
	bne _08026702
	b _08026954
_08026702:
	movs r4, #0x77
	ldr r0, _0802673C @ =0x00110077
	bl GetDataRecord
	str r0, [sp, #0x44]
	cmp r0, #0
	bne _08026712
	b _08026954
_08026712:
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x50]
	cmp r0, #0
	bne _08026726
	b _08026954
_08026726:
	movs r1, #0
	add r2, sp, #0x60
_0802672A:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _0802672A
	b _0802688E
	.align 2, 0
_08026738: .4byte 0x00100077
_0802673C: .4byte 0x00110077
_08026740:
	ldr r0, _080267E8 @ =0x00100094
	add r6, sp, #0x10
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	bl GetDataRecord
	str r0, [sp, #0x18]
	add r5, sp, #0x44
	cmp r0, #0
	beq _08026798
	movs r4, #0x94
	ldr r0, _080267EC @ =0x00110094
	bl GetDataRecord
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _08026798
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _08026798
	movs r1, #0
	add r2, sp, #0x2c
_08026780:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08026780
	adds r0, r6, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08026798:
	ldr r0, _080267E8 @ =0x00100094
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x54]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [sp, #0x4c]
	cmp r0, #0
	bne _080267B2
	b _08026954
_080267B2:
	movs r4, #0x94
	ldr r0, _080267EC @ =0x00110094
	bl GetDataRecord
	str r0, [sp, #0x44]
	cmp r0, #0
	bne _080267C2
	b _08026954
_080267C2:
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x50]
	cmp r0, #0
	bne _080267D6
	b _08026954
_080267D6:
	movs r1, #0
	add r2, sp, #0x60
_080267DA:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _080267DA
	b _0802688E
	.align 2, 0
_080267E8: .4byte 0x00100094
_080267EC: .4byte 0x00110094
_080267F0:
	ldr r0, _080268A0 @ =0x00100088
	add r6, sp, #0x10
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	bl GetDataRecord
	str r0, [sp, #0x18]
	add r5, sp, #0x44
	cmp r0, #0
	beq _08026848
	movs r4, #0x88
	ldr r0, _080268A4 @ =0x00110088
	bl GetDataRecord
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _08026848
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _08026848
	movs r1, #0
	add r2, sp, #0x2c
_08026830:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08026830
	adds r0, r6, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08026848:
	ldr r0, _080268A0 @ =0x00100088
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x54]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq _08026954
	movs r4, #0x88
	ldr r0, _080268A4 @ =0x00110088
	bl GetDataRecord
	str r0, [sp, #0x44]
	cmp r0, #0
	beq _08026954
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x50]
	cmp r0, #0
	beq _08026954
	movs r1, #0
	add r2, sp, #0x60
_08026884:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08026884
_0802688E:
	add r0, sp, #0x44
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
	b _08026954
	.align 2, 0
_080268A0: .4byte 0x00100088
_080268A4: .4byte 0x00110088
_080268A8:
	ldr r0, _080269A4 @ =0x00100087
	add r6, sp, #0x10
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	bl GetDataRecord
	str r0, [sp, #0x18]
	add r5, sp, #0x44
	cmp r0, #0
	beq _08026900
	movs r4, #0x87
	ldr r0, _080269A8 @ =0x00110087
	bl GetDataRecord
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _08026900
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _08026900
	movs r1, #0
	add r2, sp, #0x2c
_080268E8:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _080268E8
	adds r0, r6, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08026900:
	ldr r0, _080269A4 @ =0x00100087
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	str r0, [sp, #0x54]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	bl GetDataRecord
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq _08026954
	movs r4, #0x87
	ldr r0, _080269A8 @ =0x00110087
	bl GetDataRecord
	str r0, [sp, #0x44]
	cmp r0, #0
	beq _08026954
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [sp, #0x50]
	cmp r0, #0
	beq _08026954
	movs r1, #0
	add r2, sp, #0x60
_0802693C:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _0802693C
	add r0, sp, #0x44
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
_08026954:
	ldr r1, [r5, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl LoadPalette
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	strb r0, [r5, #0x1c]
	ldr r1, _080269AC @ =gMapLayer_03003910
	adds r2, r1, #0
	adds r2, #0x6e
	ldrh r0, [r2]
	cmp r0, #0
	bne _08026974
	b _08026A9E
_08026974:
	add r3, sp, #0x78
	adds r1, #0x6a
	ldrh r0, [r1]
	adds r0, #0x14
	strh r0, [r3]
	ldrh r4, [r2]
	ldr r2, _080269B0 @ =0x080FB0F8
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrh r0, [r0]
	subs r0, #1
	adds r5, r3, #0
	cmp r4, r0
	bne _080269BA
	cmp r1, #8
	bhi _080269B4
	adds r0, r1, #0
	adds r0, #0x1c
	strh r0, [r5, #2]
	b _080269BC
	.align 2, 0
_080269A4: .4byte 0x00100087
_080269A8: .4byte 0x00110087
_080269AC: .4byte gMapLayer_03003910
_080269B0: .4byte 0x080FB0F8
_080269B4:
	movs r0, #0x23
	strh r0, [r5, #2]
	b _080269BC
_080269BA:
	strh r4, [r5, #2]
_080269BC:
	add r0, sp, #0x7c
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	add r2, sp, #0x80
	strh r1, [r2]
	strh r1, [r2, #2]
	movs r1, #1
	mov sl, r1
	mov r1, sp
	adds r1, #0x60
	str r1, [sp, #0x84]
	mov r8, r0
	add r4, sp, #0x2c
	ldr r0, _08026A00 @ =0x0300397A
	mov sb, r0
	movs r7, #1
	movs r6, #0
_080269E0:
	ldr r0, _08026A04 @ =gBgRegsBuffer
	ldr r1, _08026A08 @ =0x00003030
	strh r1, [r0, #0x3a]
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #8
	bhi _08026A0C
	ldrh r0, [r5]
	ldr r3, [sp, #0x18]
	str r7, [sp]
	add r1, sp, #0x7c
	add r2, sp, #0x80
	bl sub_08004214
	b _08026A1A
	.align 2, 0
_08026A00: .4byte 0x0300397A
_08026A04: .4byte gBgRegsBuffer
_08026A08: .4byte 0x00003030
_08026A0C:
	ldr r3, [sp, #0x18]
	str r7, [sp]
	movs r0, #0x26
	add r1, sp, #0x7c
	add r2, sp, #0x80
	bl sub_08004214
_08026A1A:
	ldrh r0, [r5, #2]
	ldr r3, [sp, #0x4c]
	str r7, [sp]
	mov r1, sp
	adds r1, #0x7e
	mov r2, sp
	adds r2, #0x82
	bl sub_08004214
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #8
	bhi _08026A50
	ldrh r2, [r5]
	mov r0, r8
	ldrh r3, [r0]
	str r6, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x36
	bl sub_08003518
	b _08026A6A
_08026A50:
	mov r1, r8
	ldrh r3, [r1]
	str r6, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x36
	movs r2, #0x26
	bl sub_08003518
_08026A6A:
	ldrh r2, [r5, #2]
	mov r0, r8
	ldrh r3, [r0, #2]
	str r6, [sp]
	ldr r1, [sp, #0x84]
	str r1, [sp, #4]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x6a
	bl sub_08003518
	bl WaitFrame
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0x77
	bls _080269E0
	ldr r1, _08026AC4 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0x3a]
_08026A9E:
	bl GetMultiplayerId
	ldr r2, _08026AC8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08026ACC @ =0x0000FF7F
	ands r0, r2
	strh r0, [r1, #0x10]
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026AC4: .4byte gBgRegsBuffer
_08026AC8: .4byte gPlayers
_08026ACC: .4byte 0x0000FF7F
