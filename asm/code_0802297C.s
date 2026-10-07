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
	ldr r5, _08022D20 @ =0x03006430
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
_08022D20: .4byte 0x03006430
_08022D24: .4byte 0x00110069
_08022D28:
	ldr r0, _08022D8C @ =0x00100072
	ldr r5, _08022D90 @ =0x03006430
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
_08022D90: .4byte 0x03006430
_08022D94: .4byte 0x00110072
_08022D98:
	ldr r0, _08022DFC @ =0x00100071
	ldr r5, _08022E00 @ =0x03006430
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
_08022E00: .4byte 0x03006430
_08022E04: .4byte 0x00110071
_08022E08:
	ldr r0, _08022E74 @ =0x00100084
	ldr r5, _08022E78 @ =0x03006430
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
_08022E78: .4byte 0x03006430
_08022E7C: .4byte 0x00110084
_08022E80:
	ldr r0, _08022F48 @ =0x0010008E
	ldr r5, _08022F4C @ =0x03006430
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
_08022F4C: .4byte 0x03006430
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
	ldr r2, _080232F0 @ =0x03006430
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
_080232F0: .4byte 0x03006430
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
	ldr r0, _0802332C @ =0x03006430
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
_0802332C: .4byte 0x03006430

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
	ldr r5, _08023D04 @ =0x03006430
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
_08023D04: .4byte 0x03006430
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
	ldr r4, _08023E6C @ =0x03006430
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
_08023E6C: .4byte 0x03006430
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
	ldr r4, _080241A4 @ =0x03006430
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
	ldr r7, _080241A4 @ =0x03006430
	movs r1, #0
	mov sb, r1
	b _080242C0
	.align 2, 0
_08024194: .4byte 0x0000FFFF
_08024198: .4byte gKeysNew
_0802419C: .4byte gPlayerStats
_080241A0: .4byte 0x03006510
_080241A4: .4byte 0x03006430
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
	ldr r4, _0802441C @ =0x03006430
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
	ldr r3, _0802441C @ =0x03006430
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
_0802441C: .4byte 0x03006430

	thumb_func_start sub_08024420
sub_08024420: @ 0x08024420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r5, _080244E4 @ =0x03006430
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
_080244E4: .4byte 0x03006430
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
	ldr r4, _08024588 @ =0x030065E0
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
	ldr r4, _0802458C @ =0x03006630
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
_08024588: .4byte 0x030065E0
_0802458C: .4byte 0x03006630
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
	ldr r4, _0802466C @ =0x03006890
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
	ldr r4, _08024674 @ =0x030044B0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080245FA
	adds r0, r4, #0
	bl KillThread
_080245FA:
	ldr r4, _08024678 @ =0x030064B0
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
	ldr r4, _08024680 @ =0x030064E0
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
_0802466C: .4byte 0x03006890
_08024670: .4byte gUnknownThread_030068F0
_08024674: .4byte 0x030044B0
_08024678: .4byte 0x030064B0
_0802467C: .4byte gUnknownThread_03003CB0
_08024680: .4byte 0x030064E0
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
	ldr r4, _0802495C @ =0x030066B0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _0802485E
	adds r0, r4, #0
	bl KillThread
_0802485E:
	ldr r4, _08024960 @ =0x03006890
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
	ldr r4, _08024968 @ =0x030044B0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024894
	adds r0, r4, #0
	bl KillThread
_08024894:
	ldr r4, _0802496C @ =0x030064B0
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
	ldr r4, _08024974 @ =0x030064E0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _080248CA
	adds r0, r4, #0
	bl KillThread
_080248CA:
	ldr r4, _08024978 @ =0x03006380
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
	ldr r4, _08024980 @ =0x030065E0
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
	ldr r4, _08024984 @ =0x03006630
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
_0802495C: .4byte 0x030066B0
_08024960: .4byte 0x03006890
_08024964: .4byte gUnknownThread_030068F0
_08024968: .4byte 0x030044B0
_0802496C: .4byte 0x030064B0
_08024970: .4byte gUnknownThread_03003CB0
_08024974: .4byte 0x030064E0
_08024978: .4byte 0x03006380
_0802497C: .4byte 0x030048D0
_08024980: .4byte 0x030065E0
_08024984: .4byte 0x03006630
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
	ldr r0, _08024C38 @ =0x03003D08
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
_08024C38: .4byte 0x03003D08
_08024C3C: .4byte 0x000003FF
_08024C40: .4byte 0xFFF003FF
_08024C44:
	ldr r2, _08024CAC @ =gPlayerStats
	ldr r0, _08024CB0 @ =0x03003D08
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
_08024CB0: .4byte 0x03003D08
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
	ldr r4, _08024E30 @ =0x03006890
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
	ldr r4, _08024E38 @ =0x030044B0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024D78
	adds r0, r4, #0
	bl KillThread
_08024D78:
	ldr r4, _08024E3C @ =0x030064B0
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
	ldr r4, _08024E44 @ =0x030064E0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08024DAE
	adds r0, r4, #0
	bl KillThread
_08024DAE:
	ldr r4, _08024E48 @ =0x03006380
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
	ldr r4, _08024E54 @ =0x030065E0
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
	ldr r4, _08024E58 @ =0x03006630
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
_08024E30: .4byte 0x03006890
_08024E34: .4byte gUnknownThread_030068F0
_08024E38: .4byte 0x030044B0
_08024E3C: .4byte 0x030064B0
_08024E40: .4byte gUnknownThread_03003CB0
_08024E44: .4byte 0x030064E0
_08024E48: .4byte 0x03006380
_08024E4C: .4byte 0xFFFF0000
_08024E50: .4byte 0x00001C08
_08024E54: .4byte 0x030065E0
_08024E58: .4byte 0x03006630
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
	ldr r0, _08024F4C @ =0x03003D08
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
_08024F4C: .4byte 0x03003D08
_08024F50: .4byte 0x000003FF
_08024F54: .4byte 0xFFF003FF
_08024F58:
	ldr r2, _08024FB8 @ =gPlayerStats
	ldr r0, _08024FBC @ =0x03003D08
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
_08024FBC: .4byte 0x03003D08
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
	ldr r0, _0802504C @ =0x030064D8
	ldr r0, [r0]
	adds r5, r2, #0
	cmp r0, #0
	beq _08025050
	bl sub_080076CC
	bl _08025928
	.align 2, 0
_08025048: .4byte 0x080548DC
_0802504C: .4byte 0x030064D8
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
	bl sub_0803F570
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
	bl sub_0803F570
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
	bl sub_0803F570
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
	ldr r5, _08025C9C @ =0x03006430
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
_08025C9C: .4byte 0x03006430
_08025CA0: .4byte gPlayers
_08025CA4:
	bl WaitFrame
_08025CA8:
	bl sub_0800F430
	cmp r0, #0
	beq _08025CA4
	ldr r1, _08025CD0 @ =0x030064D8
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
_08025CD0: .4byte 0x030064D8
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
	ldr r3, _08025E58 @ =0x03006430
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
_08025E58: .4byte 0x03006430
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
	ldr r0, _08025F84 @ =0x030064D8
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
_08025F84: .4byte 0x030064D8
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
	ldr r0, _080260E4 @ =0x030064D8
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
_080260E4: .4byte 0x030064D8

	thumb_func_start sub_080260E8
sub_080260E8: @ 0x080260E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x108
	ldr r0, _0802610C @ =0x03006430
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
_0802610C: .4byte 0x03006430
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

	thumb_func_start sub_08026AD0
sub_08026AD0: @ 0x08026AD0
	ldr r1, _08026AD8 @ =0x030064D8
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08026AD8: .4byte 0x030064D8

	thumb_func_start sub_08026ADC
sub_08026ADC: @ 0x08026ADC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r3, #0
	str r4, [r5, #0x10]
	str r2, [r5, #0x14]
	str r7, [r5, #0x18]
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [r5, #8]
	cmp r0, #0
	beq _08026B20
	ldr r6, _08026B24 @ =0x0000FFFF
	ands r4, r6
	movs r0, #0x88
	lsls r0, r0, #0xd
	orrs r4, r0
	adds r0, r4, #0
	bl GetDataRecord
	str r0, [r5]
	cmp r0, #0
	beq _08026B20
	ands r4, r6
	movs r0, #0x98
	lsls r0, r0, #0xd
	orrs r0, r4
	bl GetDataRecord
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	bne _08026B28
_08026B20:
	movs r0, #0
	b _08026B5C
	.align 2, 0
_08026B24: .4byte 0x0000FFFF
_08026B28:
	cmp r7, #0
	blt _08026B3C
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl LoadPalette
_08026B3C:
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_08026B42:
	adds r0, r2, r1
	strb r1, [r0]
	adds r1, #1
	cmp r1, #0xf
	bls _08026B42
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, #0
	movs r2, #0xe0
	movs r3, #8
	bl sub_08026C64
	adds r0, r5, #0
_08026B5C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08026B64
sub_08026B64: @ 0x08026B64
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0]
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start sub_08026B74
sub_08026B74: @ 0x08026B74
	push {lr}
	ldr r2, [r0, #0x14]
	adds r3, r2, #0
	adds r3, #0x10
	lsls r2, r2, #5
	ldr r1, [r0, #0xc]
	adds r1, r1, r2
	ldr r2, [r0, #0x18]
	adds r0, r3, #0
	bl LoadPalette
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026B90
sub_08026B90: @ 0x08026B90
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x1c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	str r4, [sp]
	adds r4, r0, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r0, #8]
	str r4, [sp, #8]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_08003518
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08026BC4
sub_08026BC4: @ 0x08026BC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r6, r1, #0
	mov ip, r2
	ldr r0, [sp, #0x30]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r2, [r4, #0x2e]
	ldrh r0, [r4, #0x2c]
	adds r1, r2, r0
	strh r1, [r4, #0x2c]
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _08026BF6
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r7, #0x30
	ldrsh r1, [r4, r7]
	cmp r0, r1
	ble _08026BF6
	rsbs r0, r2, #0
	strh r0, [r4, #0x2e]
_08026BF6:
	ldrh r2, [r4, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08026C10
	movs r7, #0x2c
	ldrsh r1, [r4, r7]
	movs r7, #0x32
	ldrsh r0, [r4, r7]
	cmp r1, r0
	bge _08026C10
	rsbs r0, r2, #0
	strh r0, [r4, #0x2e]
_08026C10:
	movs r1, #0
	str r1, [sp]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	movs r2, #0x2c
	ldrsh r0, [r4, r2]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r0, r6, #0
	mov r1, ip
	adds r2, r5, #0
	bl sub_08003724
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026C40
sub_08026C40: @ 0x08026C40
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r3, #0
	ldr r4, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r0, #8]
	str r4, [sp]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_08004214
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08026C64
sub_08026C64: @ 0x08026C64
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r0, #0x2c]
	strh r1, [r0, #0x30]
	strh r2, [r0, #0x32]
	strh r3, [r0, #0x2e]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08026C78
sub_08026C78: @ 0x08026C78
	ldr r0, _08026C7C @ =0x03006430
	bx lr
	.align 2, 0
_08026C7C: .4byte 0x03006430

	thumb_func_start sub_08026C80
sub_08026C80: @ 0x08026C80
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08026CDC @ =0x030065E0
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x3c
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	adds r2, r6, #0
	adds r2, #0x20
	adds r2, r4, r2
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08026CE0 @ =sub_08023A94
	str r1, [r0]
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r4, r1
	ldr r0, [r2]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	adds r4, r4, r6
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026CDC: .4byte 0x030065E0
_08026CE0: .4byte sub_08023A94

	thumb_func_start sub_08026CE4
sub_08026CE4: @ 0x08026CE4
	push {r4, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08026D08 @ =0x030065E0
	adds r4, r1, r0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08026D00
	adds r0, r4, #0
	bl KillThread
_08026D00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026D08: .4byte 0x030065E0

	thumb_func_start sub_08026D0C
sub_08026D0C: @ 0x08026D0C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08026D68 @ =0x03006630
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x3c
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	adds r2, r6, #0
	adds r2, #0x20
	adds r2, r4, r2
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08026D6C @ =sub_08023E74
	str r1, [r0]
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r4, r1
	ldr r0, [r2]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	adds r4, r4, r6
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026D68: .4byte 0x03006630
_08026D6C: .4byte sub_08023E74

	thumb_func_start sub_08026D70
sub_08026D70: @ 0x08026D70
	push {r4, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08026D94 @ =0x03006630
	adds r4, r1, r0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08026D8C
	adds r0, r4, #0
	bl KillThread
_08026D8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026D94: .4byte 0x03006630

	thumb_func_start sub_08026D98
sub_08026D98: @ 0x08026D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	str r1, [sp, #0x20]
	ldr r0, [sp, #0x4c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r3, #1
	beq _08026DC4
	cmp r3, #1
	ble _08026DC4
	cmp r3, #2
	beq _08026DC4
	cmp r3, #3
	bne _08026DC4
	movs r3, #0xd
_08026DC4:
	str r2, [sp, #0x1c]
	movs r0, #0xa
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _08026E68 @ =0x080FBA9C
	adds r6, r0, r1
	add r4, sp, #0x10
	movs r5, #0
	subs r0, r7, #1
	mov sb, r0
	cmp r5, r7
	bhs _08026DF2
_08026DDC:
	ldm r6!, {r1}
	add r0, sp, #0x1c
	str r3, [sp, #0x28]
	bl sub_080004A4
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	ldr r3, [sp, #0x28]
	cmp r5, r7
	blo _08026DDC
_08026DF2:
	movs r1, #0
	mov sl, r1
	mov r1, sb
	lsls r0, r1, #1
	add r0, sb
	lsls r0, r0, #1
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	add r4, sp, #0x10
	movs r5, #0
	cmp r5, r7
	bhs _08026E56
	ldr r6, _08026E6C @ =0x03006430
	lsls r3, r3, #0x10
	str r3, [sp, #0x24]
_08026E12:
	mov r3, sl
	cmp r3, #0
	bne _08026E22
	ldrb r0, [r4]
	cmp r0, #0
	bne _08026E22
	cmp r5, sb
	bne _08026E4A
_08026E22:
	movs r0, #1
	mov sl, r0
	ldrb r1, [r4]
	mov ip, r1
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	str r0, [sp, #8]
	ldr r0, [r6]
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x24]
	lsrs r2, r3, #0x10
	mov r3, ip
	bl sub_08003518
_08026E4A:
	adds r5, #1
	movs r0, #6
	add r8, r0
	adds r4, #1
	cmp r5, r7
	blo _08026E12
_08026E56:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026E68: .4byte 0x080FBA9C
_08026E6C: .4byte 0x03006430

	thumb_func_start sub_08026E70
sub_08026E70: @ 0x08026E70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r6, r0, #0
	adds r7, r1, #0
	str r2, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0x34
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _08026F1C @ =0x03006510
	adds r4, r1, r0
	add r0, sp, #0x14
	movs r1, #0x64
	bl sub_080004A4
	add r1, sp, #0x10
	movs r2, #0
	mov r8, r2
	strb r0, [r1]
	ldr r0, [sp, #0x14]
	strb r0, [r1, #1]
	adds r0, r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026EC4
	adds r0, r6, #0
	subs r0, #0xc
	ldrb r3, [r1]
	str r2, [sp]
	adds r1, r4, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	ldr r1, [r4, #8]
	str r1, [sp, #8]
	ldr r1, [r4]
	str r1, [sp, #0xc]
	adds r1, r7, #0
	bl sub_08003518
_08026EC4:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	adds r5, r4, #0
	adds r5, #0x1c
	cmp r0, #9
	bhi _08026EF2
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026EF2
	subs r0, r6, #6
	mov r1, r8
	str r1, [sp]
	str r5, [sp, #4]
	ldr r1, [r4, #8]
	str r1, [sp, #8]
	ldr r1, [r4]
	str r1, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08003518
_08026EF2:
	add r0, sp, #0x10
	ldrb r3, [r0, #1]
	movs r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08003518
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026F1C: .4byte 0x03006510

	thumb_func_start sub_08026F20
sub_08026F20: @ 0x08026F20
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r3, #0
	cmp r2, #0
	beq _08026F8A
	ldr r2, [r2]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	beq _08026F42
	cmp r0, #2
	ble _08026F8A
	cmp r0, #3
	beq _08026F42
	cmp r0, #4
	bne _08026F8A
_08026F42:
	lsls r0, r2, #0xc
	lsrs r0, r0, #0x1b
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
	movs r3, #0
	ldr r0, _08026F90 @ =0x03003CA8
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r4, r2, r0
	cmp r5, #0
	bge _08026F7C
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08026F94 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08026F7C:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r6, r1
	adds r0, r4, #0
	adds r2, r7, #0
	bl sub_0800EB30
_08026F8A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026F90: .4byte 0x03003CA8
_08026F94: .4byte 0x03003CA0

	thumb_func_start StartCharacterMenu
StartCharacterMenu: @ 0x08026F98
	push {r4, lr}
	ldr r4, _08026FC4 @ =0x030064B0
	movs r0, #0x34
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001430
	str r0, [r4, #0x20]
	ldr r1, _08026FC8 @ =CharacterMenuThread
	str r1, [r4, #0xc]
	ldr r1, _08026FCC @ =0x000007FC
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026FC4: .4byte 0x030064B0
_08026FC8: .4byte CharacterMenuThread
_08026FCC: .4byte 0x000007FC

	thumb_func_start sub_08026FD0
sub_08026FD0: @ 0x08026FD0
	push {r4, r5, lr}
	ldr r4, _08027008 @ =0x030064E0
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _08027002
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001430
	str r0, [r4, #0x20]
	ldr r1, _0802700C @ =sub_08025940
	str r1, [r4, #0xc]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
_08027002:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027008: .4byte 0x030064E0
_0802700C: .4byte sub_08025940

	thumb_func_start sub_08027010
sub_08027010: @ 0x08027010
	push {r4, r5, lr}
	ldr r4, _08027048 @ =0x030066B0
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _08027042
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4, #0x20]
	ldr r1, _0802704C @ =sub_080260E8
	str r1, [r4, #0xc]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
_08027042:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027048: .4byte 0x030066B0
_0802704C: .4byte sub_080260E8

	thumb_func_start sub_08027050
sub_08027050: @ 0x08027050
	push {lr}
	ldr r0, _08027060 @ =0x030064B0
	bl IsThreadInList
	cmp r0, #0
	bne _08027064
	movs r0, #0
	b _08027066
	.align 2, 0
_08027060: .4byte 0x030064B0
_08027064:
	movs r0, #1
_08027066:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802706C
sub_0802706C: @ 0x0802706C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	adds r4, r0, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r0, #8]
	str r4, [sp, #8]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_08003518
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080270A4
sub_080270A4: @ 0x080270A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r3, #0
	adds r0, r2, #0
	muls r0, r3, r0
	cmp r0, #0
	bge _080270B6
	ldr r2, _080270D4 @ =0x000003FF
	adds r0, r0, r2
_080270B6:
	asrs r2, r0, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	subs r0, r0, r4
	muls r1, r0, r1
	cmp r1, #0
	bge _080270C8
	ldr r0, _080270D4 @ =0x000003FF
	adds r1, r1, r0
_080270C8:
	asrs r1, r1, #0xa
	adds r0, r2, r1
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080270D4: .4byte 0x000003FF

	thumb_func_start sub_080270D8
sub_080270D8: @ 0x080270D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	movs r1, #0x78
	mov sb, r1
	movs r2, #0x7c
	mov r8, r2
	movs r7, #0
	bl GetDataRecord
	adds r5, r0, #0
	adds r0, #0xa
	bl sub_0800ED80
	ldr r1, _08027108 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r6, r0, #0
	b _08027128
	.align 2, 0
_08027108: .4byte 0x03003CA0
_0802710C:
	bl sub_08022A88
	cmp r0, #0
	bne _08027124
	adds r0, r5, #0
	adds r0, #0xa
	mov r3, sb
	adds r1, r3, r6
	mov r3, r8
	adds r2, r3, r7
	bl sub_0800EB30
_08027124:
	bl WaitFrame
_08027128:
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0802710C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027140
sub_08027140: @ 0x08027140
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r4, _08027180 @ =0x03006680
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0802717A
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001430
	str r0, [r4, #0x20]
	ldr r1, _08027184 @ =sub_080270D8
	str r1, [r4, #0xc]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl CreateThread
_0802717A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027180: .4byte 0x03006680
_08027184: .4byte sub_080270D8

	thumb_func_start sub_08027188
sub_08027188: @ 0x08027188
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r4, _080271C8 @ =0x030066B0
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _080271C0
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	ldr r1, _080271CC @ =sub_08025BFC
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl CreateThread
_080271C0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080271C8: .4byte 0x030066B0
_080271CC: .4byte sub_08025BFC

	thumb_func_start sub_080271D0
sub_080271D0: @ 0x080271D0
	push {r4, r5, lr}
	ldr r0, _080271E8 @ =0x030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _080271E2
	bl sub_08007604
	cmp r0, #0
	beq _080271EC
_080271E2:
	movs r0, #1
	b _08027220
	.align 2, 0
_080271E8: .4byte 0x030064D8
_080271EC:
	movs r4, #0
	ldr r5, _080271F4 @ =0x03004650
	b _08027216
	.align 2, 0
_080271F4: .4byte 0x03004650
_080271F8:
	movs r0, #0xd4
	muls r0, r4, r0
	adds r0, r0, r5
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _08027214
	ldrb r0, [r1, #5]
	lsrs r0, r0, #4
	subs r0, #0xc
	cmp r0, #2
	bls _080271E2
_08027214:
	adds r4, #1
_08027216:
	bl sub_08001EC4
	cmp r4, r0
	blo _080271F8
	movs r0, #0
_08027220:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08027228
sub_08027228: @ 0x08027228
	push {r4, r5, lr}
	ldr r4, _08027274 @ =0x030066B0
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0802726E
	bl GetMultiplayerId
	ldr r2, _08027278 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001430
	str r0, [r4, #0x20]
	ldr r1, _0802727C @ =sub_080265A0
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
_0802726E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027274: .4byte 0x030066B0
_08027278: .4byte gPlayers
_0802727C: .4byte sub_080265A0

	thumb_func_start sub_08027280
sub_08027280: @ 0x08027280
	push {r4, r5, r6, r7, lr}
	bl sub_08001F98
	cmp r0, #0
	beq _080272F8
	ldr r4, _08027300 @ =0x03006720
	movs r0, #0x87
	lsls r0, r0, #4
	bl Alloc
	str r0, [r4]
	adds r2, r0, #0
	movs r3, #0
	movs r0, #0
	mov ip, r0
	movs r4, #0
	movs r5, #0xf
	movs r7, #0x10
	rsbs r7, r7, #0
	ldr r6, _08027304 @ =0xFFF000FF
_080272A8:
	strh r4, [r2, #0xa]
	strh r4, [r2, #8]
	ldr r0, [r2]
	ands r0, r6
	str r0, [r2]
	ldrh r1, [r2, #2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2, #2]
	mov r0, ip
	strb r0, [r2]
	ldrb r1, [r2, #4]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2, #4]
	ldr r0, [r2, #4]
	ands r0, r5
	str r0, [r2, #4]
	adds r3, #1
	adds r2, #0xc
	cmp r3, #0xb3
	bls _080272A8
	ldr r0, _08027308 @ =0x03006758
	movs r1, #0
	str r1, [r0]
	ldr r0, _0802730C @ =0x030066E0
	str r1, [r0]
	ldr r1, _08027310 @ =0x03006788
	movs r0, #1
	str r0, [r1]
	movs r3, #0
	ldr r2, _08027314 @ =0x03006718
	movs r1, #0
_080272EA:
	adds r0, r3, r2
	strb r1, [r0]
	adds r3, #1
	cmp r3, #3
	bls _080272EA
	bl sub_080292DC
_080272F8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027300: .4byte 0x03006720
_08027304: .4byte 0xFFF000FF
_08027308: .4byte 0x03006758
_0802730C: .4byte 0x030066E0
_08027310: .4byte 0x03006788
_08027314: .4byte 0x03006718

	thumb_func_start sub_08027318
sub_08027318: @ 0x08027318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r7, r1, #0
	mov r8, r2
	mov sl, r3
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl sub_08001F98
	cmp r0, #0
	bne _0802733A
	movs r0, #1
	b _080273CE
_0802733A:
	ldr r4, _080273B8 @ =0x03006758
	ldr r2, [r4]
	cmp r2, #0xb3
	bhi _080273CC
	ldr r1, _080273BC @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, [r1]
	adds r3, r3, r0
	adds r0, r2, #1
	str r0, [r4]
	movs r1, #0
	movs r0, #1
	strh r0, [r3, #0xa]
	strh r1, [r3, #8]
	ldr r1, _080273C0 @ =0x00000FFF
	ands r1, r7
	lsls r1, r1, #8
	ldr r0, [r3]
	ldr r2, _080273C4 @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	mov r0, r8
	lsls r2, r0, #4
	ldrh r1, [r3, #2]
	movs r4, #0xf
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	mov r2, sb
	strb r2, [r3]
	ldrb r1, [r3, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r2, sl
	lsls r1, r2, #4
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #4]
	movs r0, #0x3f
	ands r5, r0
	ldrb r1, [r3, #5]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r3, #5]
	movs r0, #0xff
	ands r6, r0
	lsls r2, r6, #0xe
	ldr r0, [r3, #4]
	ldr r1, _080273C8 @ =0xFFC03FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	movs r0, #1
	b _080273CE
	.align 2, 0
_080273B8: .4byte 0x03006758
_080273BC: .4byte 0x03006720
_080273C0: .4byte 0x00000FFF
_080273C4: .4byte 0xFFF000FF
_080273C8: .4byte 0xFFC03FFF
_080273CC:
	movs r0, #0
_080273CE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080273DC
sub_080273DC: @ 0x080273DC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_08001F98
	cmp r0, #0
	beq _080274A4
	ldr r3, _080274AC @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0x1d
	bhi _080274A4
	ldr r1, _080274B0 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2

	non_word_aligned_thumb_func_start sub_080273F6
sub_080273F6: @ 0x080273F6
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r4, #0
	movs r1, #0
	movs r0, #1
	strh r0, [r7, #0xa]
	strh r1, [r7, #8]
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	lsrs r0, r0, #0x14
	lsls r0, r0, #8
	ldr r1, [r7]
	ldr r2, _080274B4 @ =0xFFF000FF
	ands r1, r2
	orrs r1, r0
	str r1, [r7]
	ldr r1, [r6, #0x14]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r7, #2]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #2]
	strb r4, [r7]
	ldrb r1, [r7, #4]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r7, #4]
	movs r0, #0xff
	mov ip, r0
	ldrb r1, [r6, #2]
	lsls r1, r1, #4
	ldrh r5, [r7, #4]
	ldr r2, _080274B8 @ =0xFFFFF00F
	adds r0, r2, #0
	ands r0, r5
	orrs r0, r1
	strh r0, [r7, #4]
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	ldrb r1, [r7, #5]
	movs r5, #0xf
	ands r3, r1
	orrs r3, r0
	strb r3, [r7, #5]
	ldr r0, [r6, #0x54]
	ands r0, r5
	ldrb r1, [r7, #6]
	ands r4, r1
	orrs r4, r0
	strb r4, [r7, #6]
	ldr r0, [r6, #0x5c]
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #4
	ldrh r1, [r7, #6]
	ands r2, r1
	orrs r2, r0
	strh r2, [r7, #6]
	movs r2, #0
	ldrh r0, [r6, #0x22]
	cmp r0, #5
	bne _0802748A
	movs r2, #1
_0802748A:
	lsls r2, r2, #4
	ldrb r1, [r7, #7]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #7]
	ldrh r1, [r6, #0x24]
	lsls r1, r1, #5
	movs r2, #0x1f
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #7]
_080274A4:
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080274AC: .4byte 0x03006758
_080274B0: .4byte 0x03006720
_080274B4: .4byte 0xFFF000FF
_080274B8: .4byte 0xFFFFF00F

	thumb_func_start sub_080274BC
sub_080274BC: @ 0x080274BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	mov sb, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl sub_08001F98
	cmp r0, #0
	bne _080274DE
	movs r0, #1
	b _0802758E
_080274DE:
	ldr r7, _08027570 @ =0x03006758
	ldr r2, [r7]
	cmp r2, #0xb3
	bhi _0802758C
	ldr r1, _08027574 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, [r1]
	adds r3, r3, r0
	adds r0, r2, #1
	str r0, [r7]
	movs r1, #0
	movs r0, #1
	strh r0, [r3, #0xa]
	strh r1, [r3, #8]
	ldr r1, _08027578 @ =0x00000FFF
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, [r3]
	ldr r2, _0802757C @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	mov r0, sb
	lsls r2, r0, #4
	ldrh r1, [r3, #2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	mov r0, sl
	strb r0, [r3]
	ldrb r1, [r3, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xa
	orrs r0, r1
	strb r0, [r3, #4]
	movs r0, #0xff
	ands r4, r0
	lsls r2, r4, #4
	ldrh r1, [r3, #4]
	ldr r0, _08027580 @ =0xFFFFF00F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r0, _08027584 @ =0x0000FFFF
	ands r5, r0
	lsls r2, r5, #0xc
	ldr r0, [r3, #4]
	ldr r1, _08027588 @ =0xF0000FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	movs r0, #1
	ands r6, r0
	lsls r2, r6, #4
	ldrb r1, [r3, #7]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	ldr r1, [sp, #0x28]
	lsls r1, r1, #5
	movs r2, #0x1f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	movs r0, #1
	b _0802758E
	.align 2, 0
_08027570: .4byte 0x03006758
_08027574: .4byte 0x03006720
_08027578: .4byte 0x00000FFF
_0802757C: .4byte 0xFFF000FF
_08027580: .4byte 0xFFFFF00F
_08027584: .4byte 0x0000FFFF
_08027588: .4byte 0xF0000FFF
_0802758C:
	movs r0, #0
_0802758E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start SpawnFieldItem
SpawnFieldItem: @ 0x0802759C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl sub_08001F98
	cmp r0, #0
	beq _08027636
	ldr r4, _080275C0 @ =0x03006758
	ldr r2, [r4]
	cmp r2, #0xb3
	bls _080275C4
	movs r0, #0
	b _08027638
	.align 2, 0
_080275C0: .4byte 0x03006758
_080275C4:
	ldr r1, _08027618 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r4]
	movs r1, #0
	movs r0, #1
	strh r0, [r3, #0xa]
	strh r1, [r3, #8]
	ldr r1, _0802761C @ =0x00000FFF
	ands r1, r5
	lsls r1, r1, #8
	ldr r0, [r3]
	ldr r2, _08027620 @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	lsls r2, r6, #4
	ldrh r1, [r3, #2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r0, [r7]
	str r0, [r3, #4]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08027624
	mov r0, r8
	strb r0, [r3]
	ldrb r0, [r3, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #9
	orrs r1, r0
	strb r1, [r3, #4]
	b _08027636
	.align 2, 0
_08027618: .4byte 0x03006720
_0802761C: .4byte 0x00000FFF
_08027620: .4byte 0xFFF000FF
_08027624:
	ldr r1, _08027644 @ =0x030066E0
	ldr r0, [r1]
	strb r0, [r3]
	adds r0, #1
	str r0, [r1]
	ldrb r0, [r3, #4]
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r3, #4]
_08027636:
	movs r0, #1
_08027638:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08027644: .4byte 0x030066E0

	thumb_func_start sub_08027648
sub_08027648: @ 0x08027648
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	bl sub_08001F98
	cmp r0, #0
	beq _080276E4
	ldr r0, _08027670 @ =0x03006758
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #0xb3
	bls _08027674
	movs r0, #0
	b _080276E6
	.align 2, 0
_08027670: .4byte 0x03006758
_08027674:
	ldr r0, _080276F4 @ =0x03006720
	ldr r3, [r0]
	movs r2, #0
	adds r5, r0, #0
	cmp r2, r1
	bhs _08027698
_08027680:
	ldrh r0, [r3, #0xa]
	cmp r0, #0
	beq _08027690
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _080276E4
_08027690:
	adds r2, #1
	adds r3, #0xc
	cmp r2, r1
	blo _08027680
_08027698:
	ldr r2, [r4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r5]
	adds r3, r1, r0
	adds r2, #1
	str r2, [r4]
	movs r1, #0
	movs r0, #1
	strh r0, [r3, #0xa]
	strh r1, [r3, #8]
	ldr r1, _080276F8 @ =0x00000FFF
	ands r1, r6
	lsls r1, r1, #8
	ldr r0, [r3]
	ldr r2, _080276FC @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	lsls r2, r7, #4
	ldrh r1, [r3, #2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	mov r0, sb
	strb r0, [r3]
	mov r1, r8
	ldr r0, [r1]
	str r0, [r3, #4]
	ldrb r1, [r3, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #4]
_080276E4:
	movs r0, #1
_080276E6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080276F4: .4byte 0x03006720
_080276F8: .4byte 0x00000FFF
_080276FC: .4byte 0xFFF000FF

	thumb_func_start sub_08027700
sub_08027700: @ 0x08027700
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08001F98
	cmp r0, #0
	beq _08027782
	ldr r0, _0802771C @ =0x03006758
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xb3
	bls _08027720
	movs r0, #0
	b _08027784
	.align 2, 0
_0802771C: .4byte 0x03006758
_08027720:
	ldr r0, _0802778C @ =0x03006720
	ldr r3, [r0]
	movs r4, #0
	movs r2, #0
	adds r7, r0, #0
	cmp r4, r1
	bhs _08027750
_0802772E:
	ldrh r0, [r3, #0xa]
	cmp r0, #0
	beq _08027748
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08027748
	ldr r0, [r3, #4]
	lsrs r0, r0, #4
	cmp r0, r5
	bne _08027748
	adds r4, #1
_08027748:
	adds r2, #1
	adds r3, #0xc
	cmp r2, r1
	blo _0802772E
_08027750:
	cmp r4, #0
	bne _08027782
	ldr r2, [r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r7]
	adds r3, r1, r0
	adds r2, #1
	str r2, [r6]
	strh r4, [r3, #8]
	movs r0, #1
	strh r0, [r3, #0xa]
	ldrb r1, [r3, #4]
	subs r0, #0x11
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #4]
	lsls r2, r5, #4
	ldr r0, [r3, #4]
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
_08027782:
	movs r0, #1
_08027784:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802778C: .4byte 0x03006720

	thumb_func_start sub_08027790
sub_08027790: @ 0x08027790
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r6, r3, #0
	bl sub_08001F98
	cmp r0, #0
	bne _080277AA
	movs r0, #1
	b _0802781E
_080277AA:
	ldr r4, _0802780C @ =0x03006758
	ldr r2, [r4]
	cmp r2, #0xb3
	bhi _0802781C
	ldr r1, _08027810 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, [r1]
	adds r3, r3, r0
	adds r0, r2, #1
	str r0, [r4]
	movs r0, #0
	strh r0, [r3, #8]
	movs r1, #1
	strh r1, [r3, #0xa]
	movs r2, #0x10
	rsbs r2, r2, #0
	lsls r1, r7
	lsls r1, r1, #4
	movs r4, #0xf
	movs r0, #0xb
	orrs r0, r1
	strb r0, [r3, #4]
	ands r5, r4
	ldrb r0, [r3, #5]
	ands r2, r0
	orrs r2, r5
	strb r2, [r3, #5]
	movs r1, #0xff
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r0, [r3, #4]
	ldr r2, _08027814 @ =0xFFF00FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r3, #4]
	movs r0, #0xff
	ands r6, r0
	lsls r2, r6, #4
	ldrh r1, [r3, #6]
	ldr r0, _08027818 @ =0xFFFFF00F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #6]
	movs r0, #1
	b _0802781E
	.align 2, 0
_0802780C: .4byte 0x03006758
_08027810: .4byte 0x03006720
_08027814: .4byte 0xFFF00FFF
_08027818: .4byte 0xFFFFF00F
_0802781C:
	movs r0, #0
_0802781E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08027828
sub_08027828: @ 0x08027828
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	bl sub_08001F98
	cmp r0, #0
	beq _08027926
	ldr r5, _08027848 @ =0x03006758
	ldr r0, [r5]
	cmp r0, #0xb3
	bls _0802784C
_08027844:
	movs r0, #0
	b _08027928
	.align 2, 0
_08027848: .4byte 0x03006758
_0802784C:
	bl sub_08001F64
	cmp r0, #0
	beq _080278B8
	cmp r7, #1
	bne _080278FC
	bl sub_08007604
	cmp r0, #0
	bne _08027844
	ldr r7, _080278A4 @ =0x030064D8
	ldr r4, [r7]
	cmp r4, #0
	bne _08027844
	ldr r5, _080278A8 @ =0x03006788
	ldr r0, [r5]
	cmp r0, #0
	beq _08027844
	ldr r1, _080278AC @ =gPlayers
	movs r0, #0xd4
	muls r0, r6, r0
	adds r3, r0, r1
	movs r2, #0
	strh r4, [r3, #0xa]
	movs r0, #9
	strh r0, [r3, #0xc]
	movs r0, #0xc
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	adds r0, #0x54
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldrh r1, [r3, #0x10]
	ldr r0, _080278B0 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r3, #0x10]
	ldr r0, _080278B4 @ =gPlayerStats
	adds r0, #0x86
	strb r2, [r0]
	str r4, [r5]
	adds r0, r6, #1
	str r0, [r7]
	b _08027926
	.align 2, 0
_080278A4: .4byte 0x030064D8
_080278A8: .4byte 0x03006788
_080278AC: .4byte gPlayers
_080278B0: .4byte 0x0000FEFF
_080278B4: .4byte gPlayerStats
_080278B8:
	ldr r0, _08027934 @ =0x03006720
	ldr r4, [r0]
	movs r2, #0
	movs r1, #0
	ldr r0, [r5]
	cmp r2, r0
	bhs _080278E2
	adds r3, r0, #0
_080278C8:
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _080278DA
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	bne _080278DA
	adds r2, #1
_080278DA:
	adds r1, #1
	adds r4, #0xc
	cmp r1, r3
	blo _080278C8
_080278E2:
	cmp r2, #0
	bne _08027926
	ldr r2, _08027938 @ =gPlayers
	movs r0, #0xd4
	adds r1, r6, #0
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1, #0x10]
_080278FC:
	ldr r1, _08027934 @ =0x03006720
	ldr r3, _0802793C @ =0x03006758
	ldr r2, [r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r4, r1, r0
	adds r2, #1
	str r2, [r3]
	movs r0, #0
	strh r0, [r4, #8]
	movs r0, #1
	strh r0, [r4, #0xa]
	lsls r1, r7, #4
	movs r0, #0xd
	orrs r0, r1
	strb r0, [r4, #4]
	strb r6, [r4]
	mov r0, r8
	strb r0, [r4, #5]
_08027926:
	movs r0, #1
_08027928:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08027934: .4byte 0x03006720
_08027938: .4byte gPlayers
_0802793C: .4byte 0x03006758

	thumb_func_start sub_08027940
sub_08027940: @ 0x08027940
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	movs r2, #1
	ldr r0, _08027A20 @ =0x03006758
	ldr r3, [r0]
	mov ip, r0
	cmp r2, r3
	bhs _08027990
	ldr r0, _08027A24 @ =0x03006720
	ldr r1, [r0]
	mov r8, r0
	adds r6, r3, #0
	adds r3, r1, #0
	adds r3, #0x10
	adds r4, r1, #0
	adds r4, #0xc
	movs r7, #1
_08027966:
	adds r5, r4, #0
	ldrh r1, [r3, #6]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0802797C
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08027A3C
_0802797C:
	adds r3, #0xc
	adds r4, r5, #0
	adds r4, #0xc
	adds r2, #1
	cmp r2, r6
	blo _08027966
_08027988:
	mov r1, ip
	ldr r0, [r1]
	cmp r2, r0
	blo _08027A46
_08027990:
	movs r2, #1
	mov r4, ip
	ldr r3, [r4]
	cmp r2, r3
	bhs _080279D6
	ldr r0, _08027A24 @ =0x03006720
	ldr r1, [r0]
	mov r8, r0
	adds r6, r3, #0
	adds r3, r1, #0
	adds r3, #0x10
	adds r4, r1, #0
	adds r4, #0xc
	movs r7, #1
_080279AC:
	adds r5, r4, #0
	ldrh r1, [r3, #6]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080279C2
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #7
	beq _08027A32
_080279C2:
	adds r3, #0xc
	adds r4, r5, #0
	adds r4, #0xc
	adds r2, #1
	cmp r2, r6
	blo _080279AC
_080279CE:
	mov r5, ip
	ldr r0, [r5]
	cmp r2, r0
	blo _08027A46
_080279D6:
	movs r2, #1
	mov r6, ip
	ldr r3, [r6]
	cmp r2, r3
	bhs _08027A1C
	ldr r0, _08027A24 @ =0x03006720
	ldr r1, [r0]
	mov r8, r0
	adds r6, r3, #0
	adds r3, r1, #0
	adds r3, #0x10
	adds r4, r1, #0
	adds r4, #0xc
	movs r7, #1
_080279F2:
	adds r5, r4, #0
	ldrh r1, [r3, #6]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08027A08
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	beq _08027A28
_08027A08:
	adds r3, #0xc
	adds r4, r5, #0
	adds r4, #0xc
	adds r2, #1
	cmp r2, r6
	blo _080279F2
_08027A14:
	mov r7, ip
	ldr r0, [r7]
	cmp r2, r0
	blo _08027A46
_08027A1C:
	movs r0, #0
	b _08027A80
	.align 2, 0
_08027A20: .4byte 0x03006758
_08027A24: .4byte 0x03006720
_08027A28:
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	b _08027A14
_08027A32:
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	b _080279CE
_08027A3C:
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	b _08027988
_08027A46:
	cmp r2, #0
	beq _08027A66
	ldr r4, _08027A8C @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r3, r0, #2
_08027A52:
	ldr r1, [r4]
	adds r1, r3, r1
	adds r0, r1, #0
	subs r0, #0xc
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	subs r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08027A52
_08027A66:
	mov r7, r8
	ldr r1, [r7]
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r2, [r7]
	ldrh r1, [r2, #0x16]
	movs r0, #4
	ands r0, r1
	movs r1, #9
	orrs r0, r1
	strh r0, [r2, #0x16]
	movs r0, #1
_08027A80:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08027A8C: .4byte 0x03006720

	thumb_func_start sub_08027A90
sub_08027A90: @ 0x08027A90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl GetMultiplayerId
	bl sub_08001E78
	bl GetMultiplayerId
	movs r1, #4
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #0xa
	mov r8, r0
_08027AB0:
	bl WaitFrame
	bl GetMultiplayerId
	bl sub_08001E78
	adds r6, r0, #0
	ldr r5, _08027AEC @ =0x03006720
	ldr r2, [r5]
	ldrh r1, [r2, #0xa]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	movs r4, #0
	cmp r0, #0
	beq _08027AD2
	adds r4, r2, #0
_08027AD2:
	cmp r4, #0
	bne _08027AD8
	b _08027E08
_08027AD8:
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xf
	bhi _08027AB0
	lsls r0, r0, #2
	ldr r1, _08027AF0 @ =_08027AF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027AEC: .4byte 0x03006720
_08027AF0: .4byte _08027AF4
_08027AF4: @ jump table
	.4byte _08027B34 @ case 0
	.4byte _08027B34 @ case 1
	.4byte _08027B8C @ case 2
	.4byte _08027B8C @ case 3
	.4byte _08027B34 @ case 4
	.4byte _08027B8C @ case 5
	.4byte _08027B8C @ case 6
	.4byte _08027B8C @ case 7
	.4byte _08027C5C @ case 8
	.4byte _08027B8C @ case 9
	.4byte _08027B34 @ case 10
	.4byte _08027B34 @ case 11
	.4byte _08027B8C @ case 12
	.4byte _08027B8C @ case 13
	.4byte _08027B8C @ case 14
	.4byte _08027B8C @ case 15
_08027B34:
	ldr r0, [r4]
	str r0, [r6, #8]
	ldr r0, [r4, #4]
	str r0, [r6, #0xc]
	bl WaitFrame
	movs r2, #0
	movs r0, #2
	strh r0, [r4, #0xa]
	ldr r1, _08027B84 @ =0x03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _08027B54
	str r2, [r1]
_08027B54:
	movs r2, #0
	ldr r0, [r1]
	ldr r6, _08027B88 @ =0x03006720
	cmp r2, r0
	blo _08027B60
	b _08027DEA
_08027B60:
	mov ip, r6
	mov sb, r1
	movs r3, #0
_08027B66:
	mov r1, ip
	ldr r0, [r1]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	adds r3, #0xc
	adds r2, #1
	mov r1, sb
	ldr r0, [r1]
	cmp r2, r0
	blo _08027B66
	b _08027DEA
	.align 2, 0
_08027B84: .4byte 0x03006758
_08027B88: .4byte 0x03006720
_08027B8C:
	ldrh r0, [r4, #0xa]
	ldr r2, _08027C4C @ =0x0000FFFE
	ands r2, r0
	movs r1, #0
	strh r2, [r4, #0xa]
	movs r0, #8
	ands r0, r2
	movs r1, #2
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #0xa]
	movs r5, #0
	movs r7, #0
_08027BA6:
	ldrh r1, [r4, #0xa]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08027BC6
	ldr r0, [r4]
	str r0, [r6, #8]
	ldr r0, [r4, #4]
	str r0, [r6, #0xc]
	bl WaitFrame
	adds r0, r5, #0
	adds r5, #1
	cmp r0, r8
	bls _08027BA6
	movs r7, #1
_08027BC6:
	cmp r7, #0
	bne _08027CAA
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _08027C0C
	ldr r0, _08027C50 @ =0x069DBE17
	bl SignalEvent
	bl sub_08001F98
	cmp r0, #0
	beq _08027C0C
	ldr r3, _08027C54 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08027C0C
	ldr r1, _08027C58 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	strh r7, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xcc
	strb r0, [r1, #4]
	strb r2, [r1, #5]
	strb r2, [r1, #6]
	strb r2, [r1, #7]
_08027C0C:
	ldr r1, _08027C54 @ =0x03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _08027C1C
	movs r0, #0
	str r0, [r1]
_08027C1C:
	movs r2, #0
	ldr r0, [r1]
	ldr r6, _08027C58 @ =0x03006720
	cmp r2, r0
	blo _08027C28
	b _08027DEA
_08027C28:
	mov sb, r6
	mov ip, r1
	movs r3, #0
_08027C2E:
	mov r4, sb
	ldr r0, [r4]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	adds r3, #0xc
	adds r2, #1
	mov r5, ip
	ldr r0, [r5]
	cmp r2, r0
	blo _08027C2E
	b _08027DEA
	.align 2, 0
_08027C4C: .4byte 0x0000FFFE
_08027C50: .4byte 0x069DBE17
_08027C54: .4byte 0x03006758
_08027C58: .4byte 0x03006720
_08027C5C:
	bl sub_08001F64
	cmp r0, #0
	bne _08027D04
	ldr r0, [r4]
	str r0, [r6, #8]
	ldr r0, [r4, #4]
	str r0, [r6, #0xc]
	ldrh r0, [r4, #0xa]
	ldr r2, _08027CBC @ =0x0000FFFE
	ands r2, r0
	movs r1, #0
	strh r2, [r4, #0xa]
	movs r0, #8
	ands r0, r2
	movs r1, #2
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #0xa]
	movs r5, #0
	movs r7, #0
_08027C86:
	ldrh r1, [r4, #0xa]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08027CA6
	ldr r0, [r4]
	str r0, [r6, #8]
	ldr r0, [r4, #4]
	str r0, [r6, #0xc]
	bl WaitFrame
	adds r0, r5, #0
	adds r5, #1
	cmp r0, r8
	bls _08027C86
	movs r7, #1
_08027CA6:
	cmp r7, #0
	beq _08027CC0
_08027CAA:
	bl sub_08027940
	cmp r0, #0
	beq _08027CB4
	b _08027AB0
_08027CB4:
	movs r0, #1
	strh r0, [r4, #0xa]
	b _08027AB0
	.align 2, 0
_08027CBC: .4byte 0x0000FFFE
_08027CC0:
	ldr r1, _08027CFC @ =0x03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _08027CCE
	str r7, [r1]
_08027CCE:
	movs r2, #0
	ldr r0, [r1]
	ldr r6, _08027D00 @ =0x03006720
	cmp r2, r0
	blo _08027CDA
	b _08027DEA
_08027CDA:
	mov sb, r6
	mov ip, r1
	movs r3, #0
_08027CE0:
	mov r7, sb
	ldr r0, [r7]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	adds r3, #0xc
	adds r2, #1
	mov r1, ip
	ldr r0, [r1]
	cmp r2, r0
	blo _08027CE0
	b _08027DEA
	.align 2, 0
_08027CFC: .4byte 0x03006758
_08027D00: .4byte 0x03006720
_08027D04:
	ldr r5, [r4]
	lsls r5, r5, #0xc
	lsrs r5, r5, #0x14
	lsls r5, r5, #0xc
	ldrh r6, [r4, #2]
	lsrs r6, r6, #4
	lsls r6, r6, #0xc
	ldr r4, _08027D94 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r4, #0xd0
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r2, [r0, #4]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1a
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08013D44
	adds r6, r0, #0
	bl PickUpFieldItem
	cmp r0, #0
	beq _08027DA8
	movs r7, #0
	ldr r5, [r6, #0x10]
	bl sub_08001F98
	cmp r0, #0
	beq _08027D8A
	ldr r4, _08027D98 @ =0x03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _08027D8A
	ldr r1, _08027D9C @ =0x03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r4, #0
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r7, [r2, #8]
	ldr r0, _08027DA0 @ =0x00000FFF
	ands r5, r0
	lsls r3, r5, #8
	ldr r0, [r2]
	ldr r1, _08027DA4 @ =0xFFF000FF
	ands r0, r1
	orrs r0, r3
	str r0, [r2]
	strb r4, [r2]
	ldr r0, [r6, #0x18]
	str r0, [r2, #4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #4]
_08027D8A:
	movs r0, #0x26
	bl PlaySE
	b _08027DB0
	.align 2, 0
_08027D94: .4byte gPlayers
_08027D98: .4byte 0x03006758
_08027D9C: .4byte 0x03006720
_08027DA0: .4byte 0x00000FFF
_08027DA4: .4byte 0xFFF000FF
_08027DA8:
	ldr r0, _08027DFC @ =0x0009000F
	movs r1, #0x1e
	bl sub_08027140
_08027DB0:
	ldr r1, _08027E00 @ =0x03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _08027DC0
	movs r0, #0
	str r0, [r1]
_08027DC0:
	movs r2, #0
	ldr r0, [r1]
	ldr r6, _08027E04 @ =0x03006720
	cmp r2, r0
	bhs _08027DEA
	mov sb, r6
	mov ip, r1
	movs r3, #0
_08027DD0:
	mov r4, sb
	ldr r0, [r4]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	adds r3, #0xc
	adds r2, #1
	mov r5, ip
	ldr r0, [r5]
	cmp r2, r0
	blo _08027DD0
_08027DEA:
	ldr r0, [r6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1, #0xa]
	b _08027AB0
	.align 2, 0
_08027DFC: .4byte 0x0009000F
_08027E00: .4byte 0x03006758
_08027E04: .4byte 0x03006720
_08027E08:
	bl sub_08001F98
	cmp r0, #0
	bne _08027E12
	b _08027AB0
_08027E12:
	ldr r3, _08027E3C @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bls _08027E1C
	b _08027AB0
_08027E1C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r5]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	strh r7, [r1, #0xa]
	strh r4, [r1, #8]
	ldrb r2, [r1, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #4]
	b _08027AB0
	.align 2, 0
_08027E3C: .4byte 0x03006758

	thumb_func_start sub_08027E40
sub_08027E40: @ 0x08027E40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	movs r0, #0
	mov sb, r0
	add r4, sp, #0x54
	ldr r1, _08027E58 @ =0x0000FFFF
	adds r5, r1, #0
	b _08027E68
	.align 2, 0
_08027E58: .4byte 0x0000FFFF
_08027E5C:
	ldrh r0, [r4]
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	movs r2, #1
	add sb, r2
_08027E68:
	bl sub_08001EC4
	cmp sb, r0
	blo _08027E5C
_08027E70:
	movs r3, #1
	str r3, [sp, #0x60]
	movs r4, #0
	mov sb, r4
	bl sub_08028D92

	thumb_func_start sub_08027E7C
sub_08027E7C: @ 0x08027E7C
	bl GetMultiplayerId
	movs r5, #1
	add r5, sb
	mov sl, r5
	cmp sb, r0
	bne _08027E8E
	bl _08028D90
_08027E8E:
	mov r0, sb
	bl sub_08001E78
	adds r6, r0, #0
	mov r7, sb
	lsls r0, r7, #4
	adds r4, r0, #0
	add r4, sp
	adds r4, #4
	ldr r2, [r6, #0xc]
	ldr r1, [r4, #0xc]
	str r0, [sp, #0x6c]
	cmp r2, r1
	bne _08027EDC
	ldr r1, [r6, #8]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _08027EBC
	add r2, sp, #0x44
	lsls r3, r7, #2
	adds r1, r2, r3
	movs r0, #1
	b _08027EF2
_08027EBC:
	add r2, sp, #0x44
	mov r0, sb
	lsls r0, r0, #2
	mov r8, r0
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r0, r6, #0
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldr r0, [r0]
	str r0, [r4, #0xc]
	adds r7, r2, #0
	mov r4, r8
	b _08027EF8
_08027EDC:
	adds r1, r4, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r4, #0xc]
	add r2, sp, #0x44
	mov r7, sb
	lsls r3, r7, #2
	adds r1, r2, r3
	movs r0, #0
_08027EF2:
	str r0, [r1]
	adds r7, r2, #0
	adds r4, r3, #0
_08027EF8:
	ldrb r1, [r6, #0xc]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	movs r2, #1
	add r2, sb
	mov sl, r2
	adds r2, r1, #0
	cmp r0, #0xf
	bls _08027F0E
	bl _08028D90
_08027F0E:
	lsls r0, r0, #2
	ldr r1, _08027F18 @ =_08027F1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027F18: .4byte _08027F1C
_08027F1C: @ jump table
	.4byte _08028D90 @ case 0
	.4byte _08028228 @ case 1
	.4byte _080281D0 @ case 2
	.4byte _08027F78 @ case 3
	.4byte _08027F5C @ case 4
	.4byte _08027FD6 @ case 5
	.4byte _080281A0 @ case 6
	.4byte _080282BC @ case 7
	.4byte _0802809C @ case 8
	.4byte _08027FFA @ case 9
	.4byte _08027F8C @ case 10
	.4byte _0802842C @ case 11
	.4byte _080284AC @ case 12
	.4byte _080287E4 @ case 13
	.4byte _0802896C @ case 14
	.4byte _08028CE4 @ case 15
_08027F5C:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r3, #1
	add r3, sb
	mov sl, r3
	cmp r0, #0
	beq _08027F6E
	bl _08028D90
_08027F6E:
	adds r0, r6, #0
	bl sub_0800E634
	bl _08028D90
_08027F78:
	adds r0, r6, #0
	bl sub_0800C7D4
	movs r0, #3
	bl sub_08027700
	bl sub_08027940
	bl _08028D8A
_08027F8C:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r5, #1
	add r5, sb
	mov sl, r5
	cmp r0, #0
	beq _08027F9E
	bl _08028D90
_08027F9E:
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0xc]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r7, sb
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	ldrb r4, [r6, #0xf]
	lsls r3, r4, #0x1b
	lsrs r3, r3, #0x1f
	lsrs r4, r4, #5
	str r4, [sp]
	bl sub_0800E74C
	cmp r0, #0
	beq _08027FC6
	bl _08028D90
_08027FC6:
	ldr r1, [sp, #0x6c]
	add r1, sp
	adds r1, #4
	movs r0, #0xff
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	bl _08028D90
_08027FD6:
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _08027FE6
	ldr r0, [r6, #0xc]
	lsrs r0, r0, #4
	bl sub_08020F24
_08027FE6:
	movs r0, #5
	bl sub_08027700
	bl sub_08027940
	movs r0, #1
	add r0, sb
	mov sl, r0
	bl _08028D90
_08027FFA:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r1, #1
	add r1, sb
	mov sl, r1
	cmp r0, #0
	bne _08028096
	ldrb r1, [r6, #8]
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	bl sub_08014D28
	cmp r0, #0
	bne _08028096
	ldrb r4, [r6, #8]
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08028078
	movs r4, #0
	b _0802803E
_08028026:
	ldr r1, _08028048 @ =gPlayers
	movs r0, #0xd4
	muls r0, r4, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0802804C
	adds r4, #1
_0802803E:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028026
	b _08028096
	.align 2, 0
_08028048: .4byte gPlayers
_0802804C:
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x14
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	ldr r2, _08028074 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	adds r3, r6, #0
	adds r3, #0xc
	ldrb r5, [r6, #8]
	movs r4, #0x7f
	ands r4, r5
	str r4, [sp]
	bl sub_0800FC70
	b _08028096
	.align 2, 0
_08028074: .4byte gMapLayer_03003910
_08028078:
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x14
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	adds r3, r6, #0
	adds r3, #0xc
	adds r2, r5, #0
	ands r2, r4
	str r2, [sp]
	movs r2, #0
	bl sub_0800FC70
_08028096:
	movs r0, #9
	bl sub_08028CD2
_0802809C:
	bl sub_08001F64
	movs r2, #1
	add r2, sb
	mov sl, r2
	cmp r0, #0
	bne _080280AE
	bl _08028D90
_080280AE:
	adds r0, r7, r4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _08028186
	ldrb r1, [r6, #8]
	movs r4, #0x7f
	adds r0, r4, #0
	ands r0, r1
	mov r1, sb
	bl sub_08014D5C
	str r0, [sp, #0x68]
	ldr r3, [sp, #0x60]
	cmp r3, #0
	beq _08028142
	cmp r0, #0
	beq _08028142
	ldrb r0, [r6, #8]
	ands r4, r0
	adds r7, r6, #0
	adds r7, #0xc
	bl sub_08001F98
	cmp r0, #0
	beq _08028138
	ldr r5, _0802811C @ =0x03006758
	ldr r2, [r5]
	cmp r2, #0xb3
	bhi _08028138
	ldr r1, _08028120 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r5]
	movs r0, #1
	strh r0, [r3, #0xa]
	mov r5, r8
	strh r5, [r3, #8]
	mov r0, sb
	strb r0, [r3]
	lsls r2, r4, #8
	ldr r0, [r3]
	ldr r1, _08028124 @ =0xFFF000FF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	cmp r7, #0
	beq _08028128
	ldr r0, [r6, #0xc]
	str r0, [r3, #4]
	b _0802812A
	.align 2, 0
_0802811C: .4byte 0x03006758
_08028120: .4byte 0x03006720
_08028124: .4byte 0xFFF000FF
_08028128:
	str r7, [r3, #4]
_0802812A:
	ldrb r0, [r3, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #7
	orrs r1, r0
	strb r1, [r3, #4]
_08028138:
	ldr r0, [sp, #0x68]
	mov r1, sb
	bl sub_08013E40
	b _08028186
_08028142:
	movs r5, #0
	bl sub_08001F98
	cmp r0, #0
	beq _08028186
	ldr r4, _08028194 @ =0x03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _08028186
	ldr r1, _08028198 @ =0x03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r5, [r2, #8]
	mov r1, sb
	strb r1, [r2]
	ldr r0, [r2]
	ldr r1, _0802819C @ =0xFFF000FF
	ands r0, r1
	str r0, [r2]
	str r5, [r2, #4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r2, #4]
_08028186:
	movs r2, #0
	str r2, [sp, #0x60]
	movs r3, #1
	add r3, sb
	mov sl, r3
	bl _08028D90
	.align 2, 0
_08028194: .4byte 0x03006758
_08028198: .4byte 0x03006720
_0802819C: .4byte 0xFFF000FF
_080281A0:
	ldr r0, [r6, #8]
	movs r1, #0x7f
	lsrs r0, r0, #8
	ands r0, r1
	bl sub_08014D28
	str r0, [sp, #0x68]
	ldrb r0, [r6, #8]
	cmp r0, #0
	bne _080281BC
	ldr r0, [sp, #0x68]
	bl sub_08013E20
	b _080281C2
_080281BC:
	ldr r0, [sp, #0x68]
	bl sub_08013E60
_080281C2:
	movs r0, #6
	bl sub_08027700
	bl sub_08027940
	bl _08028D8A
_080281D0:
	mov r5, sb
	cmp r5, #0
	bne _0802820A
	ldr r0, [r6, #0xc]
	lsrs r0, r0, #4
	ldr r1, _08028218 @ =0x0300671C
	ldr r1, [r1]
	cmp r0, r1
	bne _0802820A
	ldr r0, _0802821C @ =0x069DBE17
	bl IsAnyThreadWaitingOn
	cmp r0, #0
	beq _080281F2
	ldr r1, _08028220 @ =0x030066E8
	movs r0, #1
	str r0, [r1]
_080281F2:
	ldr r0, _08028224 @ =0x03006760
	bl IsThreadInList
	cmp r0, #0
	beq _0802820A
	ldr r0, _08028220 @ =0x030066E8
	ldr r0, [r0]
	cmp r0, #0
	beq _0802820A
	movs r0, #2
	bl sub_08027700
_0802820A:
	bl sub_08027940
	movs r7, #1
	add r7, sb
	mov sl, r7
	bl _08028D90
	.align 2, 0
_08028218: .4byte 0x0300671C
_0802821C: .4byte 0x069DBE17
_08028220: .4byte 0x030066E8
_08028224: .4byte 0x03006760
_08028228:
	ldr r0, _080282B4 @ =0x03006720
	ldr r2, [r0]
	ldrh r1, [r2, #0xa]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0
	str r1, [sp, #0x64]
	cmp r0, #0
	beq _0802823E
	str r2, [sp, #0x64]
_0802823E:
	movs r2, #1
	add r2, sb
	mov sl, r2
	ldr r4, [sp, #0x64]
	cmp r4, #0
	bne _0802824E
	bl _08028D90
_0802824E:
	ldrb r1, [r4, #4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldr r0, [r6, #0xc]
	lsrs r0, r0, #4
	cmp r1, r0
	beq _08028260
	bl _08028D90
_08028260:
	ldrh r1, [r4, #0xa]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0802826E
	bl _08028D90
_0802826E:
	movs r0, #1
	mov r5, sb
	lsls r0, r5
	ldrh r1, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	movs r5, #0
	movs r4, #0
	ldr r7, [sp, #0x64]
	ldrh r1, [r7, #8]
	movs r2, #1
_08028284:
	adds r0, r1, #0
	asrs r0, r4
	ands r0, r2
	cmp r0, #0
	beq _08028290
	adds r5, #1
_08028290:
	adds r4, #1
	cmp r4, #3
	bls _08028284
	bl sub_08001EC4
	subs r0, #1
	cmp r5, r0
	bhs _080282A4
	bl _08028D90
_080282A4:
	ldr r0, [sp, #0x64]
	ldrh r1, [r0, #0xa]
	movs r0, #4
	orrs r0, r1
	ldr r1, [sp, #0x64]
	strh r0, [r1, #0xa]
	bl _08028D90
	.align 2, 0
_080282B4: .4byte 0x03006720
_080282B8:
	str r2, [sp, #0x64]
	b _08028304
_080282BC:
	movs r0, #7
	bl sub_08027700
	ldr r0, _08028398 @ =0x03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _0802839C @ =0x03006758
	ldr r0, [r0]
	movs r4, #1
	add r4, sb
	mov sl, r4
	cmp r3, r0
	bhs _08028300
	movs r7, #0xb
	adds r4, r0, #0
	movs r5, #4
_080282DC:
	ldrh r1, [r2, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080282F8
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080282F8
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _080282B8
_080282F8:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _080282DC
_08028300:
	movs r5, #0
	str r5, [sp, #0x64]
_08028304:
	ldr r7, [sp, #0x64]
	cmp r7, #0
	bne _0802830E
	bl _08028D90
_0802830E:
	ldrb r4, [r6, #8]
	bl GetMultiplayerId
	cmp r4, r0
	beq _0802831C
	bl _08028D90
_0802831C:
	ldr r0, [r6, #8]
	movs r1, #0x7f
	lsrs r0, r0, #8
	ands r0, r1
	bl sub_08014D28
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08028400
	bl PickUpFieldItem
	adds r7, r0, #0
	cmp r7, #0
	beq _080283A4
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r5, r0, #0x14
	movs r0, #0x7f
	ands r5, r0
	movs r6, #0
	bl sub_08001F98
	cmp r0, #0
	beq _0802838E
	ldr r4, _0802839C @ =0x03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _0802838E
	ldr r1, _08028398 @ =0x03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r4, #0
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r6, [r2, #8]
	lsls r3, r5, #8
	ldr r0, [r2]
	ldr r1, _080283A0 @ =0xFFF000FF
	ands r0, r1
	orrs r0, r3
	str r0, [r2]
	strb r4, [r2]
	ldr r1, [sp, #0x68]
	ldr r0, [r1, #0x18]
	str r0, [r2, #4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #4]
_0802838E:
	movs r0, #0x26
	bl PlaySE
	b _08028400
	.align 2, 0
_08028398: .4byte 0x03006720
_0802839C: .4byte 0x03006758
_080283A0: .4byte 0xFFF000FF
_080283A4:
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r5, r0, #0x14
	movs r0, #0x7f
	ands r5, r0
	movs r6, #1
	bl sub_08001F98
	cmp r0, #0
	beq _080283F8
	ldr r4, _0802841C @ =0x03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _080283F8
	ldr r1, _08028420 @ =0x03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r4, #1
	strh r6, [r2, #0xa]
	strh r7, [r2, #8]
	lsls r3, r5, #8
	ldr r0, [r2]
	ldr r1, _08028424 @ =0xFFF000FF
	ands r0, r1
	orrs r0, r3
	str r0, [r2]
	strb r4, [r2]
	ldr r3, [sp, #0x68]
	ldr r0, [r3, #0x18]
	str r0, [r2, #4]
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #4]
_080283F8:
	ldr r0, _08028428 @ =0x0009000F
	movs r1, #0x1e
	bl sub_08027140
_08028400:
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _08028410
	bl _08028D90
_08028410:
	ldrh r1, [r4, #0xa]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4, #0xa]
	bl _08028D90
	.align 2, 0
_0802841C: .4byte 0x03006758
_08028420: .4byte 0x03006720
_08028424: .4byte 0xFFF000FF
_08028428: .4byte 0x0009000F
_0802842C:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r5, #1
	add r5, sb
	mov sl, r5
	cmp r0, #0
	beq _0802843E
	bl _08028D90
_0802843E:
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08028488
	cmp r0, #1
	bgt _08028454
	cmp r0, #0
	beq _0802845C
	bl _08028D90
_08028454:
	cmp r0, #2
	beq _08028498
	bl _08028D90
_0802845C:
	movs r4, #0
	b _0802847C
_08028460:
	ldrb r0, [r6, #0xc]
	lsrs r0, r0, #4
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802847A
	bl GetMultiplayerId
	cmp r0, r4
	bne _0802847A
	bl sub_08016F00
_0802847A:
	adds r4, #1
_0802847C:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028460
	bl _08028D90
_08028488:
	ldr r1, [r6, #0xc]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	mov r0, sb
	bl sub_08016C34
	bl _08028D90
_08028498:
	ldr r0, [r6, #0xc]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	ldrh r1, [r6, #0xe]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	bl sub_08016F44
	bl _08028D90
_080284AC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0xf
	bls _080284B6
	b _080287CE
_080284B6:
	lsls r0, r0, #2
	ldr r1, _080284C0 @ =_080284C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080284C0: .4byte _080284C4
_080284C4: @ jump table
	.4byte _08028770 @ case 0
	.4byte _08028794 @ case 1
	.4byte _080287A0 @ case 2
	.4byte _080287B6 @ case 3
	.4byte _08028504 @ case 4
	.4byte _080287CE @ case 5
	.4byte _080287CE @ case 6
	.4byte _080287CE @ case 7
	.4byte _080287CE @ case 8
	.4byte _080287CE @ case 9
	.4byte _08028510 @ case 10
	.4byte _080287CE @ case 11
	.4byte _080287C8 @ case 12
	.4byte _080287CE @ case 13
	.4byte _080287CE @ case 14
	.4byte _080286AC @ case 15
_08028504:
	ldr r0, _0802850C @ =0x030063D8
	ldr r2, [r0]
	adds r2, #0x92
	b _08028690
	.align 2, 0
_0802850C: .4byte 0x030063D8
_08028510:
	bl sub_08001F64
	cmp r0, #0
	bne _0802851A
	b _0802868A
_0802851A:
	ldr r0, _0802856C @ =0x030063D8
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x94
	ldrh r0, [r0]
	ldrb r2, [r6, #0xd]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08028532
	b _0802868A
_08028532:
	mov r8, r2
	ldr r7, [r3, #0x38]
	bl sub_080076A8
	cmp r0, #0
	beq _080285E4
	bl sub_08007638
	cmp r0, #0
	beq _08028578
	ldr r0, _08028570 @ =0x000F001A
	ldr r2, _08028574 @ =gPlayers
	movs r1, #0xd4
	mov r3, sb
	muls r3, r1, r3
	adds r1, r3, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0802864C
	.align 2, 0
_0802856C: .4byte 0x030063D8
_08028570: .4byte 0x000F001A
_08028574: .4byte gPlayers
_08028578:
	mov r4, r8
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080285B0 @ =0x000F001B
	cmp r1, r0
	bne _080285B8
	adds r0, #1
	ldr r2, _080285B4 @ =gPlayers
	movs r1, #0xd4
	mov r5, sb
	muls r5, r1, r5
	adds r1, r5, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0802864C
	.align 2, 0
_080285B0: .4byte 0x000F001B
_080285B4: .4byte gPlayers
_080285B8:
	ldr r0, _080285DC @ =0x000F0019
	ldr r2, _080285E0 @ =gPlayers
	movs r1, #0xd4
	mov r3, sb
	muls r3, r1, r3
	adds r1, r3, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0802864C
	.align 2, 0
_080285DC: .4byte 0x000F0019
_080285E0: .4byte gPlayers
_080285E4:
	bl sub_08007638
	cmp r0, #0
	beq _08028620
	mov r4, r8
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _0802861C @ =gPlayers
	movs r1, #0xd4
	mov r5, sb
	muls r5, r1, r5
	adds r1, r5, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _0802864C
	.align 2, 0
_0802861C: .4byte gPlayers
_08028620:
	mov r0, r8
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080286A0 @ =gPlayers
	movs r1, #0xd4
	mov r3, sb
	muls r3, r1, r3
	adds r1, r3, #0
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	add r4, sp, #0x5c
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
_0802864C:
	adds r5, r4, #0
	mov r4, r8
	lsls r2, r4, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	adds r1, r7, #0
	adds r1, #8
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0xf
	ldr r2, _080286A4 @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	adds r3, r5, #0
	bl sub_0800FA74
	str r0, [sp, #0x68]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r7, [sp, #0x68]
	ldr r1, [r7]
	asrs r1, r1, #0xc
	ldr r2, [r7, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
_0802868A:
	ldr r0, _080286A8 @ =0x030063D8
	ldr r2, [r0]
	adds r2, #0x94
_08028690:
	movs r0, #1
	ldrb r6, [r6, #0xd]
	lsls r0, r6
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	b _080287CE
	.align 2, 0
_080286A0: .4byte gPlayers
_080286A4: .4byte gMapLayer_03003910
_080286A8: .4byte 0x030063D8
_080286AC:
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _080286B6
	b _080287CE
_080286B6:
	ldr r4, _0802876C @ =0x030063D8
	ldr r1, [r4]
	adds r1, #0xac
	ldrb r0, [r6, #0xf]
	adds r1, r1, r0
	ldrb r3, [r6, #0xd]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r3
	movs r5, #0
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0xb4
	ldrb r3, [r6, #0xf]
	adds r1, r1, r3
	ldrb r0, [r6, #0xd]
	lsrs r0, r0, #4
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0xbc
	ldrb r7, [r6, #0xf]
	adds r0, r0, r7
	ldrb r1, [r6, #0xe]
	ands r2, r1
	strb r2, [r0]
	ldr r1, [r4]
	adds r1, #0xc4
	ldrb r0, [r6, #0xf]
	adds r1, r1, r0
	ldrb r0, [r6, #0xe]
	lsrs r0, r0, #4
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0xac
	ldrb r1, [r6, #0xf]
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08028714
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r0, r7, #0
	orrs r0, r1
	strb r0, [r2]
_08028714:
	ldr r0, [r4]
	adds r0, #0xb4
	ldrb r1, [r6, #0xf]
	adds r2, r0, r1
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08028730
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r0, r7, #0
	orrs r0, r1
	strb r0, [r2]
_08028730:
	ldr r0, [r4]
	adds r0, #0xbc
	ldrb r1, [r6, #0xf]
	adds r2, r0, r1
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0802874C
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r0, r7, #0
	orrs r0, r1
	strb r0, [r2]
_0802874C:
	ldr r0, [r4]
	adds r0, #0xc4
	ldrb r6, [r6, #0xf]
	adds r1, r0, r6
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _080287CE
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	orrs r0, r2
	strb r0, [r1]
	b _080287CE
	.align 2, 0
_0802876C: .4byte 0x030063D8
_08028770:
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080287CE
	ldr r0, _08028790 @ =0x030063D8
	ldr r2, [r0]
	ldrb r1, [r6, #0xd]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r4, [r6, #0xe]
	adds r0, r0, r4
	adds r2, #0xcc
	adds r2, r2, r0
	ldrb r0, [r6, #0xf]
	strb r0, [r2]
	b _080287CE
	.align 2, 0
_08028790: .4byte 0x030063D8
_08028794:
	ldr r0, _0802879C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xa2
	b _080287BC
	.align 2, 0
_0802879C: .4byte 0x030063D8
_080287A0:
	bl sub_08001F64
	cmp r0, #0
	bne _080287CE
	bl sub_08001F08
	cmp r0, #0
	bne _080287CE
	bl sub_080247D0
	b _080287CE
_080287B6:
	ldr r0, _080287C4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xa4
_080287BC:
	movs r1, #1
	strh r1, [r0]
	b _080287CE
	.align 2, 0
_080287C4: .4byte 0x030063D8
_080287C8:
	ldr r0, _080287E0 @ =0x069DBE17
	bl SignalEvent
_080287CE:
	movs r0, #0xc
	bl sub_08027700
	bl sub_08027940
	movs r5, #1
	add r5, sb
	mov sl, r5
	b _08028D90
	.align 2, 0
_080287E0: .4byte 0x069DBE17
_080287E4:
	bl sub_08001F64
	movs r1, #1
	add r1, sb
	mov sl, r1
	cmp r0, #0
	bne _080287F4
	b _08028D90
_080287F4:
	ldrb r0, [r6, #0xc]
	lsrs r5, r0, #4
	cmp r5, #0
	beq _08028802
	cmp r5, #1
	beq _080288AC
	b _08028D90
_08028802:
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0802880C
	b _08028D90
_0802880C:
	ldr r0, _08028864 @ =0x030063D8
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x94
	ldrh r1, [r2]
	ldrb r4, [r6, #0xd]
	adds r0, r1, #0
	asrs r0, r4
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	bne _08028870
	adds r0, r7, #0
	lsls r0, r4
	orrs r1, r0
	strh r1, [r2]
	ldrb r4, [r6, #0xd]
	bl sub_08001F98
	cmp r0, #0
	bne _08028838
	b _08028D90
_08028838:
	ldr r3, _08028868 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bls _08028842
	b _08028D90
_08028842:
	ldr r1, _0802886C @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	strh r5, [r1, #8]
	strh r7, [r1, #0xa]
	movs r0, #0xe
	strb r0, [r1, #4]
	mov r2, sb
	strb r2, [r1]
	strb r4, [r1, #5]
	b _08028D90
	.align 2, 0
_08028864: .4byte 0x030063D8
_08028868: .4byte 0x03006758
_0802886C: .4byte 0x03006720
_08028870:
	movs r6, #5
	bl sub_08001F98
	cmp r0, #0
	bne _0802887C
	b _08028D90
_0802887C:
	ldr r3, _080288A4 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bls _08028886
	b _08028D90
_08028886:
	ldr r1, _080288A8 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	strh r5, [r1, #8]
	strh r7, [r1, #0xa]
	movs r0, #0xe
	strb r0, [r1, #4]
	strb r6, [r1]
	strb r4, [r1, #5]
	b _08028D90
	.align 2, 0
_080288A4: .4byte 0x03006758
_080288A8: .4byte 0x03006720
_080288AC:
	ldr r0, _0802890C @ =0x03006788
	ldr r0, [r0]
	cmp r0, #0
	bne _080288BE
	ldr r0, _08028910 @ =0x03006718
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802891C
_080288BE:
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	bne _0802891C
	bl sub_080292D0
	bl sub_08001F98
	cmp r0, #0
	beq _080288FC
	ldr r3, _08028914 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _080288FC
	ldr r1, _08028918 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	strh r4, [r1, #8]
	movs r2, #1
	strh r5, [r1, #0xa]
	movs r0, #0x1e
	strb r0, [r1, #4]
	mov r3, sb
	strb r3, [r1]
	strb r2, [r1, #5]
_080288FC:
	ldr r1, _08028910 @ =0x03006718
	add r1, sb
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802890C @ =0x03006788
	str r2, [r0]
	b _08028D8A
	.align 2, 0
_0802890C: .4byte 0x03006788
_08028910: .4byte 0x03006718
_08028914: .4byte 0x03006758
_08028918: .4byte 0x03006720
_0802891C:
	ldr r0, _08028960 @ =0x03006718
	add r0, sb
	ldrb r4, [r0]
	movs r5, #1
	bl sub_08001F98
	movs r7, #1
	add r7, sb
	mov sl, r7
	cmp r0, #0
	bne _08028934
	b _08028D90
_08028934:
	ldr r3, _08028964 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bls _0802893E
	b _08028D90
_0802893E:
	ldr r1, _08028968 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r0, #0
	strh r0, [r1, #8]
	strh r5, [r1, #0xa]
	movs r0, #0x1e
	strb r0, [r1, #4]
	mov r0, sb
	strb r0, [r1]
	strb r4, [r1, #5]
	b _08028D90
	.align 2, 0
_08028960: .4byte 0x03006718
_08028964: .4byte 0x03006758
_08028968: .4byte 0x03006720
_0802896C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08028986
	cmp r0, #1
	bne _0802897A
	b _08028B80
_0802897A:
	movs r1, #1
	add r1, sb
	mov sl, r1
	b _08028CD0
_08028982:
	str r2, [sp, #0x64]
	b _080289C8
_08028986:
	ldr r0, _08028A54 @ =0x03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08028A58 @ =0x03006758
	ldr r0, [r0]
	movs r4, #1
	add r4, sb
	mov sl, r4
	cmp r3, r0
	bhs _080289C4
	movs r7, #0xb
	adds r4, r0, #0
	movs r5, #4
_080289A0:
	ldrh r1, [r2, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080289BC
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080289BC
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	beq _08028982
_080289BC:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _080289A0
_080289C4:
	movs r5, #0
	str r5, [sp, #0x64]
_080289C8:
	ldr r7, [sp, #0x64]
	cmp r7, #0
	bne _080289D0
	b _08028CD0
_080289D0:
	ldr r0, _08028A5C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x94
	ldrh r5, [r0]
	ldrb r0, [r6, #0xd]
	asrs r5, r0
	movs r7, #1
	ands r5, r7
	cmp r5, #0
	beq _080289E6
	b _08028B64
_080289E6:
	ldrb r4, [r6, #8]
	bl GetMultiplayerId
	cmp r4, r0
	beq _080289F2
	b _08028B64
_080289F2:
	ldrb r4, [r6, #0xd]
	bl sub_08001F98
	cmp r0, #0
	beq _08028A24
	ldr r3, _08028A58 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028A24
	ldr r1, _08028A54 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	strh r5, [r1, #8]
	strh r7, [r1, #0xa]
	movs r0, #0xac
	strb r0, [r1, #4]
	strb r4, [r1, #5]
	strb r2, [r1, #6]
	strb r2, [r1, #7]
_08028A24:
	ldr r0, _08028A5C @ =0x030063D8
	ldr r3, [r0]
	adds r2, r3, #0
	adds r2, #0x94
	movs r0, #1
	ldrb r1, [r6, #0xd]
	lsls r0, r1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrb r6, [r6, #0xd]
	mov r8, r6
	ldr r7, [r3, #0x38]
	bl sub_080076A8
	cmp r0, #0
	beq _08028AA4
	bl sub_08007638
	cmp r0, #0
	beq _08028A64
	ldr r4, _08028A60 @ =0x000F001A
	b _08028A86
	.align 2, 0
_08028A54: .4byte 0x03006720
_08028A58: .4byte 0x03006758
_08028A5C: .4byte 0x030063D8
_08028A60: .4byte 0x000F001A
_08028A64:
	mov r2, r8
	lsls r1, r2, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08028A7C @ =0x000F001B
	cmp r1, r0
	bne _08028A84
	ldr r4, _08028A80 @ =0x000F001C
	b _08028A86
	.align 2, 0
_08028A7C: .4byte 0x000F001B
_08028A80: .4byte 0x000F001C
_08028A84:
	ldr r4, _08028AA0 @ =0x000F0019
_08028A86:
	bl GetPlayerClass
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r5, sp, #0x5c
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_080130F4
	b _08028AF4
	.align 2, 0
_08028AA0: .4byte 0x000F0019
_08028AA4:
	bl sub_08007638
	cmp r0, #0
	beq _08028AD0
	mov r3, r8
	lsls r1, r3, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r4, sp, #0x5c
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
	b _08028AF2
_08028AD0:
	mov r4, r8
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r5, [r0]
	bl GetPlayerClass
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r4, sp, #0x5c
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080130F4
_08028AF2:
	adds r5, r4, #0
_08028AF4:
	bl sub_08001F64
	adds r4, r0, #0
	cmp r4, #0
	beq _08028B40
	mov r0, r8
	lsls r2, r0, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	adds r1, r7, #0
	adds r1, #8
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0xf
	ldr r2, _08028B3C @ =gMapLayer_03003910
	adds r2, #0x6c
	ldrh r2, [r2]
	adds r3, r5, #0
	bl sub_0800FA74
	str r0, [sp, #0x68]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, [sp, #0x68]
	ldr r1, [r2]
	asrs r1, r1, #0xc
	ldr r2, [r2, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
	b _08028B64
	.align 2, 0
_08028B3C: .4byte gMapLayer_03003910
_08028B40:
	ldr r3, [sp, #0x68]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r1, r8
	lsls r3, r1, #1
	adds r1, r7, r3
	ldrh r1, [r1]
	lsls r1, r1, #3
	adds r2, r7, #0
	adds r2, #8
	adds r2, r2, r3
	ldrh r2, [r2]
	lsls r2, r2, #3
	str r4, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
_08028B64:
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	beq _08028B72
	b _08028CD0
_08028B72:
	ldrh r1, [r2, #0xa]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #0xa]
	b _08028CD0
_08028B7C:
	str r2, [sp, #0x64]
	b _08028BCC
_08028B80:
	adds r0, r7, r4
	ldr r0, [r0]
	movs r3, #1
	add r3, sb
	mov sl, r3
	cmp r0, #0
	beq _08028B90
	b _08028CBC
_08028B90:
	ldr r0, _08028C94 @ =0x03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08028C98 @ =0x03006758
	ldr r0, [r0]
	cmp r3, r0
	bhs _08028BC8
	movs r7, #0xb
	adds r4, r0, #0
	movs r5, #4
_08028BA4:
	ldrh r1, [r2, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08028BC0
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08028BC0
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	beq _08028B7C
_08028BC0:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _08028BA4
_08028BC8:
	movs r4, #0
	str r4, [sp, #0x64]
_08028BCC:
	ldr r5, [sp, #0x64]
	cmp r5, #0
	bne _08028BD4
	b _08028CD0
_08028BD4:
	ldrb r4, [r6, #8]
	bl GetMultiplayerId
	cmp r4, r0
	bne _08028CBC
	ldr r4, _08028C9C @ =0x030064D8
	ldr r0, [r4]
	cmp r0, #0
	bne _08028CBC
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08028CBC
	ldr r7, _08028CA0 @ =gPlayers
	bl GetMultiplayerId
	movs r6, #0xd4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	beq _08028CA8
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08028CA8
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #7
	beq _08028CA8
	bl sub_08007544
	cmp r0, #0
	bne _08028CA8
	bl sub_08007510
	cmp r0, #0
	bne _08028CA8
	bl sub_080271D0
	cmp r0, #0
	bne _08028CA8
	bl sub_080077C0
	cmp r0, #0
	bne _08028CA8
	bl sub_080076E0
	adds r5, r0, #0
	cmp r5, #0
	bne _08028CA8
	bl sub_080292D0
	bl GetMultiplayerId
	adds r0, #1
	str r0, [r4]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r4, #0
	strh r5, [r0, #0xa]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #9
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xc
	strh r1, [r0, #0xe]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x54
	strh r5, [r0]
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x56
	strh r5, [r0]
	ldr r0, _08028CA4 @ =gPlayerStats
	adds r0, #0x86
	strb r4, [r0]
	b _08028CBC
	.align 2, 0
_08028C94: .4byte 0x03006720
_08028C98: .4byte 0x03006758
_08028C9C: .4byte 0x030064D8
_08028CA0: .4byte gPlayers
_08028CA4: .4byte gPlayerStats
_08028CA8:
	bl GetMultiplayerId
	ldr r2, _08028CDC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08028CE0 @ =0x0000FEFF
	ands r0, r2
	strh r0, [r1, #0x10]
_08028CBC:
	ldr r7, [sp, #0x64]
	ldrb r0, [r7, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xd
	bne _08028CD0
	ldrh r1, [r7, #0xa]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #0xa]
_08028CD0:
	movs r0, #0xe

	non_word_aligned_thumb_func_start sub_08028CD2
sub_08028CD2: @ 0x08028CD2
	bl sub_08027700
	bl sub_08027940
	b _08028D90
	.align 2, 0
_08028CDC: .4byte gPlayers
_08028CE0: .4byte 0x0000FEFF
_08028CE4:
	bl sub_08001F64
	cmp r0, #0
	beq _08028D80
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _08028D80
	add r0, sp, #0x54
	mov r2, sb
	lsls r1, r2, #1
	adds r2, r0, r1
	ldrb r1, [r6, #8]
	ldrh r0, [r2]
	cmp r0, r1
	beq _08028D80
	strh r1, [r2]
	ldr r0, [r6, #8]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x14
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	lsrs r1, r1, #4
	lsls r1, r1, #0xc
	ldr r3, _08028D64 @ =gPlayers
	movs r2, #0xd4
	mov r4, sb
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r4, r2, r3
	ldr r2, [r4]
	ldrh r2, [r2, #4]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1a
	adds r5, r6, #0
	adds r5, #0xc
	adds r3, r5, #0
	bl sub_0800FA74
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08028D80
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _08028D68
	ldr r7, [sp, #0x68]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r1, [r7]
	asrs r1, r1, #0xc
	ldr r2, [r7, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
	b _08028D80
	.align 2, 0
_08028D64: .4byte gPlayers
_08028D68:
	ldr r1, [sp, #0x68]
	ldr r0, [r1, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #0xc
	ldr r3, [sp, #0x68]
	ldr r2, [r3, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
_08028D80:
	movs r0, #0xf
	bl sub_08027700
	bl sub_08027940
_08028D8A:
	movs r4, #1
	add r4, sb
	mov sl, r4
_08028D90:
	mov sb, sl

	non_word_aligned_thumb_func_start sub_08028D92
sub_08028D92: @ 0x08028D92
	bl sub_08001EC4
	cmp sb, r0
	bhs _08028D9E
	bl sub_08027E7C
_08028D9E:
	ldr r1, _08028DAC @ =0x030066E4
	movs r0, #0
	str r0, [r1]
	bl WaitFrame
	bl _08027E70
	.align 2, 0
_08028DAC: .4byte 0x030066E4

	thumb_func_start sub_08028DB0
sub_08028DB0: @ 0x08028DB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r5, #1
	str r5, [r0]
	bl sub_08001F98
	cmp r0, #0
	bne _08028DCA
	b _08028F46
_08028DCA:
	bl GetMultiplayerId
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_08001F98
	cmp r0, #0
	beq _08028E04
	ldr r3, _08028E20 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028E04
	ldr r1, _08028E24 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r0, #0
	strh r0, [r1, #8]
	strh r5, [r1, #0xa]
	movs r0, #0xc
	strb r0, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xe
	strb r0, [r1, #6]
	strb r7, [r1, #7]
_08028E04:
	bl GetMultiplayerId
	ldr r4, _08028E28 @ =0x030063D8
	ldr r2, [r4]
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r2, #0xda
	adds r2, r2, r1
	strb r7, [r2]
	bl sub_08001F64
	cmp r0, #0
	beq _08028EDE
	b _08028E34
	.align 2, 0
_08028E20: .4byte 0x03006758
_08028E24: .4byte 0x03006720
_08028E28: .4byte 0x030063D8
_08028E2C:
	ldr r0, _08028E3C @ =0x030066E8
	ldr r0, [r0]
	cmp r0, #0
	beq _08028EA8
_08028E34:
	movs r6, #0
	movs r4, #0
	movs r5, #0
	b _08028E54
	.align 2, 0
_08028E3C: .4byte 0x030066E8
_08028E40:
	ldr r0, _08028EB4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xda
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, r7
	bne _08028E50
	adds r6, #1
_08028E50:
	adds r5, #0xf
	adds r4, #1
_08028E54:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028E40
	bl WaitFrame
	bl sub_08001EC4
	cmp r6, r0
	bne _08028E2C
	ldr r0, _08028EB8 @ =0x030066E8
	ldr r0, [r0]
	cmp r0, #0
	beq _08028EA8
	bl sub_08001F98
	cmp r0, #0
	beq _08028EA8
	ldr r3, _08028EBC @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028EA8
	ldr r1, _08028EC0 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xc
	strb r0, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xe
	strb r0, [r1, #6]
	movs r0, #0xff
	strb r0, [r1, #7]
_08028EA8:
	movs r4, #0
	ldr r7, _08028EB4 @ =0x030063D8
	movs r5, #0
	movs r6, #0
	b _08028ED0
	.align 2, 0
_08028EB4: .4byte 0x030063D8
_08028EB8: .4byte 0x030066E8
_08028EBC: .4byte 0x03006758
_08028EC0: .4byte 0x03006720
_08028EC4:
	ldr r0, [r7]
	adds r0, #0xda
	adds r0, r0, r5
	strb r6, [r0]
	adds r5, #0xf
	adds r4, #1
_08028ED0:
	bl sub_08001EC4
	cmp r4, r0
	blo _08028EC4
	bl WaitFrame
	b _08028F46
_08028EDE:
	ldr r5, _08028F60 @ =0x030066E8
_08028EE0:
	bl WaitFrame
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0xda
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08028EF6
	ldr r0, [r5]
	cmp r0, #0
	bne _08028EE0
_08028EF6:
	movs r5, #0
	strb r5, [r1]
	bl GetMultiplayerId
	ldr r2, [r4]
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r2, #0xda
	adds r2, r2, r1
	strb r5, [r2]
	bl GetMultiplayerId
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_08001F98
	cmp r0, #0
	beq _08028F46
	ldr r3, _08028F64 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08028F46
	ldr r1, _08028F68 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	strh r5, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xc
	strb r0, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xe
	strb r0, [r1, #6]
	strb r2, [r1, #7]
_08028F46:
	ldr r0, _08028F60 @ =0x030066E8
	movs r4, #0
	str r4, [r0]
	bl WaitFrame
	mov r0, r8
	str r4, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028F60: .4byte 0x030066E8
_08028F64: .4byte 0x03006758
_08028F68: .4byte 0x03006720

	thumb_func_start sub_08028F6C
sub_08028F6C: @ 0x08028F6C
	push {r4, r5, r6, lr}
	bl sub_08001F64
	cmp r0, #0
	beq _08029008
	ldr r0, _08028FFC @ =0x03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08029000 @ =0x03006758
	ldr r0, [r0]
	cmp r3, r0
	bhs _08028FAE
	movs r6, #0xb
	adds r4, r0, #0
	movs r5, #4
_08028F8A:
	ldrh r1, [r2, #0xa]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08028FA6
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08028FA6
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	beq _08028FB0
_08028FA6:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _08028F8A
_08028FAE:
	movs r2, #0
_08028FB0:
	cmp r2, #0
	beq _08028FC2
	ldrh r0, [r2, #0xa]
	movs r1, #4
	orrs r1, r0
	strh r1, [r2, #0xa]
	ldr r0, _08029004 @ =0x069DBE17
	bl SignalEvent
_08028FC2:
	ldr r0, _08028FFC @ =0x03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08029000 @ =0x03006758
	ldr r0, [r0]
	cmp r3, r0
	bhs _0802900E
	movs r6, #0xb
	adds r4, r0, #0
	movs r5, #4
_08028FD6:
	ldrh r1, [r2, #0xa]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08028FF2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08028FF2
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	beq _08029010
_08028FF2:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _08028FD6
	b _0802900E
	.align 2, 0
_08028FFC: .4byte 0x03006720
_08029000: .4byte 0x03006758
_08029004: .4byte 0x069DBE17
_08029008:
	ldr r0, _08029018 @ =0x069DBE17
	bl SignalEvent
_0802900E:
	movs r2, #0
_08029010:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08029018: .4byte 0x069DBE17

	thumb_func_start sub_0802901C
sub_0802901C: @ 0x0802901C
	push {lr}
	bl sub_08001F98
	cmp r0, #0
	bne _0802902A
	movs r0, #1
	b _08029062
_0802902A:
	ldr r3, _08029058 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _08029060
	ldr r1, _0802905C @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r2, #1
	str r0, [r3]
	movs r2, #0
	movs r0, #1
	strh r0, [r1, #0xa]
	strh r2, [r1, #8]
	ldrb r2, [r1, #4]
	subs r0, #0x11
	ands r0, r2
	strb r0, [r1, #4]
	movs r0, #1
	b _08029062
	.align 2, 0
_08029058: .4byte 0x03006758
_0802905C: .4byte 0x03006720
_08029060:
	movs r0, #0
_08029062:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08029068
sub_08029068: @ 0x08029068
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08001F98
	cmp r0, #0
	bne _08029078
	movs r0, #1
	b _080290BE
_08029078:
	ldr r4, _080290B4 @ =0x03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _080290BC
	ldr r1, _080290B8 @ =0x03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r1, #0
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r1, [r2, #8]
	ldrb r1, [r2, #4]
	subs r0, #0x11
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2, #4]
	lsls r3, r5, #4
	ldr r0, [r2, #4]
	movs r1, #0xf
	ands r0, r1
	orrs r0, r3
	str r0, [r2, #4]
	movs r0, #1
	b _080290BE
	.align 2, 0
_080290B4: .4byte 0x03006758
_080290B8: .4byte 0x03006720
_080290BC:
	movs r0, #0
_080290BE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080290C4
sub_080290C4: @ 0x080290C4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	bl sub_08001F98
	cmp r0, #0
	beq _08029134
	ldr r5, _080290E0 @ =0x03006758
	ldr r2, [r5]
	cmp r2, #0xb3
	bls _080290E4
	movs r0, #0
	b _08029136
	.align 2, 0
_080290E0: .4byte 0x03006758
_080290E4:
	ldr r1, _08029118 @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r5]
	movs r1, #0
	movs r0, #1
	strh r0, [r3, #0xa]
	strh r1, [r3, #8]
	strb r6, [r3]
	ldr r1, _0802911C @ =0x00000FFF
	ands r1, r7
	lsls r1, r1, #8
	ldr r0, [r3]
	ldr r2, _08029120 @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	cmp r4, #0
	beq _08029124
	ldr r0, [r4]
	str r0, [r3, #4]
	b _08029126
	.align 2, 0
_08029118: .4byte 0x03006720
_0802911C: .4byte 0x00000FFF
_08029120: .4byte 0xFFF000FF
_08029124:
	str r4, [r3, #4]
_08029126:
	ldrb r0, [r3, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #7
	orrs r1, r0
	strb r1, [r3, #4]
_08029134:
	movs r0, #1
_08029136:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802913C
sub_0802913C: @ 0x0802913C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08001F98
	cmp r0, #0
	bne _08029150
	movs r0, #1
	b _080291AA
_08029150:
	ldr r4, _08029198 @ =0x03006758
	ldr r2, [r4]
	cmp r2, #0xb3
	bhi _080291A8
	ldr r1, _0802919C @ =0x03006720
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, [r1]
	adds r3, r3, r0
	adds r0, r2, #1
	str r0, [r4]
	movs r1, #0
	movs r0, #1
	strh r0, [r3, #0xa]
	strh r1, [r3, #8]
	ldr r1, _080291A0 @ =0x00000FFF
	ands r1, r5
	lsls r1, r1, #8
	ldr r0, [r3]
	ldr r2, _080291A4 @ =0xFFF000FF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	strb r7, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldrb r1, [r3, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r3, #4]
	movs r0, #1
	b _080291AA
	.align 2, 0
_08029198: .4byte 0x03006758
_0802919C: .4byte 0x03006720
_080291A0: .4byte 0x00000FFF
_080291A4: .4byte 0xFFF000FF
_080291A8:
	movs r0, #0
_080291AA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080291B0
sub_080291B0: @ 0x080291B0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08001F98
	cmp r0, #0
	bne _080291C0
	movs r0, #1
	b _0802921A
_080291C0:
	ldr r4, _08029208 @ =0x03006758
	ldr r3, [r4]
	cmp r3, #0xb3
	bhi _08029218
	ldr r1, _0802920C @ =0x03006720
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, [r1]
	adds r2, r2, r0
	adds r0, r3, #1
	str r0, [r4]
	movs r4, #0
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r4, [r2, #8]
	ldrb r1, [r2, #4]
	subs r0, #0x11
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #4]
	lsls r3, r5, #4
	ldr r0, [r2, #4]
	movs r1, #0xf
	ands r0, r1
	orrs r0, r3
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x030066E8
	str r4, [r0]
	ldr r0, _08029214 @ =0x069DBE17
	bl _08000400
	movs r0, #1
	b _0802921A
	.align 2, 0
_08029208: .4byte 0x03006758
_0802920C: .4byte 0x03006720
_08029210: .4byte 0x030066E8
_08029214: .4byte 0x069DBE17
_08029218:
	movs r0, #0
_0802921A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08029220
sub_08029220: @ 0x08029220
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001F98
	cmp r0, #0
	beq _0802923C
	ldr r0, _08029244 @ =0x0300671C
	str r4, [r0]
	ldr r1, _08029248 @ =0x030066E8
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802924C @ =0x069DBE17
	bl _08000400
_0802923C:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08029244: .4byte 0x0300671C
_08029248: .4byte 0x030066E8
_0802924C: .4byte 0x069DBE17

	thumb_func_start sub_08029250
sub_08029250: @ 0x08029250
	push {lr}
	bl sub_08001F98
	cmp r0, #0
	beq _08029268
	ldr r0, _08029264 @ =0x069DBE17
	bl IsAnyThreadWaitingOn
	b _0802926A
	.align 2, 0
_08029264: .4byte 0x069DBE17
_08029268:
	movs r0, #0
_0802926A:
	pop {r1}
	bx r1
	.align 2, 0

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
	ldr r3, _080292C0 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _080292C8
	ldr r1, _080292C4 @ =0x03006720
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
_080292C0: .4byte 0x03006758
_080292C4: .4byte 0x03006720
_080292C8:
	movs r0, #0
_080292CA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080292D0
sub_080292D0: @ 0x080292D0
	ldr r1, _080292D8 @ =0x030066E8
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_080292D8: .4byte 0x030066E8

	thumb_func_start sub_080292DC
sub_080292DC: @ 0x080292DC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r4, _08029338 @ =0x03006730
	ldr r0, _0802933C @ =sub_08027A90
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	mov r8, r1
	add r0, r8
	str r0, [r4, #0x10]
	movs r6, #0x65
	str r6, [r4, #8]
	ldr r5, _08029340 @ =sub_08029468
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
	ldr r4, _08029344 @ =0x030066F0
	ldr r0, _08029348 @ =sub_08027E40
	str r0, [r4, #0xc]
	mov r0, sb
	bl Alloc
	str r0, [r4, #0x20]
	add r0, r8
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029338: .4byte 0x03006730
_0802933C: .4byte sub_08027A90
_08029340: .4byte sub_08029468
_08029344: .4byte 0x030066F0
_08029348: .4byte sub_08027E40

	thumb_func_start sub_0802934C
sub_0802934C: @ 0x0802934C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	b _0802935A
_08029356:
	bl WaitFrame
_0802935A:
	ldr r0, _080293A4 @ =0x03006760
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _08029356
	ldr r0, _080293A8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0xda
	strb r5, [r0]
	movs r1, #1
	str r1, [r6]
	ldr r0, _080293AC @ =0x030066E8
	str r1, [r0]
	ldr r4, _080293A4 @ =0x03006760
	ldr r0, _080293B0 @ =sub_08028DB0
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x65
	str r0, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl CreateThread
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080293A4: .4byte 0x03006760
_080293A8: .4byte 0x030063D8
_080293AC: .4byte 0x030066E8
_080293B0: .4byte sub_08028DB0

	thumb_func_start sub_080293B4
sub_080293B4: @ 0x080293B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08029410 @ =0x03006758
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _080293CA
	movs r0, #0
	str r0, [r1]
_080293CA:
	movs r2, #0
	ldr r0, [r1]
	ldr r3, _08029414 @ =0x03006720
	mov r8, r3
	cmp r2, r0
	bhs _080293F4
	mov ip, r8
	adds r4, r1, #0
	movs r3, #0
_080293DC:
	mov r5, ip
	ldr r0, [r5]
	adds r0, r3, r0
	adds r1, r0, #0
	adds r1, #0xc
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	adds r3, #0xc
	adds r2, #1
	ldr r0, [r4]
	cmp r2, r0
	blo _080293DC
_080293F4:
	mov r6, r8
	ldr r0, [r6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1, #0xa]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029410: .4byte 0x03006758
_08029414: .4byte 0x03006720

	thumb_func_start sub_08029418
sub_08029418: @ 0x08029418
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0802945C @ =0x03006758
_0802941E:
	ldr r0, [r5]
	adds r4, #1
	cmp r0, #1
	bls _08029428
	movs r4, #0
_08029428:
	bl WaitFrame
	cmp r4, #0x3b
	bls _0802941E
	ldr r4, _08029460 @ =0x03006730
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08029442
	adds r0, r4, #0
	bl KillThread
_08029442:
	ldr r4, _08029464 @ =0x030066F0
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	beq _08029454
	adds r0, r4, #0
	bl KillThread
_08029454:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802945C: .4byte 0x03006758
_08029460: .4byte 0x03006730
_08029464: .4byte 0x030066F0

	thumb_func_start sub_08029468
sub_08029468: @ 0x08029468
	push {r4, lr}
	ldr r4, _08029480 @ =0x03006720
	ldr r0, [r4]
	cmp r0, #0
	beq _0802947A
	bl Free
	movs r0, #0
	str r0, [r4]
_0802947A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029480: .4byte 0x03006720

	thumb_func_start sub_08029484
sub_08029484: @ 0x08029484
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08001F98
	cmp r0, #0
	bne _08029498
	movs r0, #1
	b _080294D2
_08029498:
	ldr r3, _080294C8 @ =0x03006758
	ldr r2, [r3]
	cmp r2, #0xb3
	bhi _080294D0
	ldr r1, _080294CC @ =0x03006720
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
	lsls r2, r4, #4
	movs r0, #0xe
	orrs r0, r2
	strb r0, [r1, #4]
	strb r5, [r1]
	strb r6, [r1, #5]
	movs r0, #1
	b _080294D2
	.align 2, 0
_080294C8: .4byte 0x03006758
_080294CC: .4byte 0x03006720
_080294D0:
	movs r0, #0
_080294D2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080294D8:
	.byte 0x04, 0x48, 0x02, 0x68, 0x51, 0x89, 0x01, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x04, 0xD1, 0x00, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x20, 0x67, 0x00, 0x03
	.byte 0x10, 0x1C, 0x70, 0x47

	thumb_func_start sub_080294F4
sub_080294F4: @ 0x080294F4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0802952C @ =0x03006720
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08029530 @ =0x03006758
	ldr r0, [r0]
	cmp r3, r0
	bhs _0802953C
	movs r7, #0xb
	adds r4, r0, #0
	movs r6, #4
_0802950C:
	ldrh r1, [r2, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08029534
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08029534
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r5
	bne _08029534
	adds r0, r2, #0
	b _0802953E
	.align 2, 0
_0802952C: .4byte 0x03006720
_08029530: .4byte 0x03006758
_08029534:
	adds r3, #1
	adds r2, #0xc
	cmp r3, r4
	blo _0802950C
_0802953C:
	movs r0, #0
_0802953E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08029544:
	.byte 0x04, 0x48, 0x02, 0x68, 0x51, 0x89, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x04, 0xD1, 0x00, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x20, 0x67, 0x00, 0x03, 0x10, 0x1C, 0x70, 0x47

	thumb_func_start sub_08029560
sub_08029560: @ 0x08029560
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x10]
	mov sl, r1
	adds r6, r2, #0
	ldr r0, [sp, #0x40]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08029654 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, _08029658 @ =0x080548EC
	add r0, sp, #4
	movs r2, #0xa
	bl memcpy
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	cmp r7, #4
	bls _080295A6
	movs r7, #4
_080295A6:
	movs r0, #0
	mov ip, r0
	lsls r0, r7, #1
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	str r0, [sp, #0x18]
	movs r2, #0
	mov r8, r2
_080295B8:
	ldr r0, _0802965C @ =gActiveEnemyMask
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802966A
	ldr r2, _08029660 @ =gEnemies
	movs r0, #0x94
	mov r1, r8
	muls r1, r0, r1
	ldr r0, [r2]
	adds r3, r0, r1
	ldrh r5, [r3, #0xa]
	cmp r5, #9
	beq _0802966A
	ldr r1, [r3, #0x10]
	ldr r0, [sp, #0x10]
	subs r1, r1, r0
	lsls r1, r1, #4
	ldr r0, [r3, #0x14]
	mov r2, sl
	subs r0, r0, r2
	lsls r0, r0, #4
	lsrs r4, r0, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _080295F4
	rsbs r1, r1, #0
_080295F4:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r1, r2
	bge _0802966A
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08029608
	rsbs r0, r0, #0
_08029608:
	cmp r0, r2
	bge _0802966A
	ldr r0, [sp, #0x1c]
	cmp r0, r6
	bne _08029664
	cmp r5, #8
	beq _08029666
	ldr r1, [r3, #0x30]
	ldr r2, [sp, #0x14]
	ldr r0, [r2, #0x7c]
	cmp r1, r0
	beq _08029666
	adds r0, r6, #0
	adds r1, r3, #0
	adds r2, r7, #0
	mov r3, sb
	bl sub_080297D4
	bl sub_08007544
	cmp r0, #0
	bne _08029642
	bl sub_080075AC
	cmp r0, #0
	bne _08029642
	movs r0, #0x1a
	bl PlaySE
_08029642:
	str r7, [sp]
	ldr r0, [sp, #0x10]
	mov r1, sl
	adds r2, r6, #0
	mov r3, sb
	bl sub_08029A0C
	b _08029666
	.align 2, 0
_08029654: .4byte gPlayers
_08029658: .4byte 0x080548EC
_0802965C: .4byte gActiveEnemyMask
_08029660: .4byte gEnemies
_08029664:
	strh r6, [r3, #0x34]
_08029666:
	movs r0, #1
	mov ip, r0
_0802966A:
	movs r2, #1
	add r8, r2
	mov r0, r8
	cmp r0, #4
	bls _080295B8
	mov r0, ip
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08029688
sub_08029688: @ 0x08029688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	bl sub_08016D4C
	adds r5, r0, #0
	bl GetMultiplayerId
	ldr r0, _08029710 @ =gPlayerStats
	movs r2, #0x28
	ldrsh r1, [r0, r2]
	mov sl, r1
	ldr r1, _08029714 @ =0x080FBB84
	ldr r2, [sp]
	lsls r0, r2, #4
	adds r0, r0, r1
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov sb, r0
	cmp r7, #0
	beq _0802972E
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080296D6
	rsbs r0, r0, #0
_080296D6:
	movs r1, #0x14
	bl __umodsi3
	adds r2, r0, #0
	adds r2, #0x64
	adds r0, r7, #1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xa
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xc8
	muls r0, r1, r0
	muls r0, r2, r0
	ldr r1, _08029718 @ =0x00055730
	bl __udivsi3
	adds r3, r0, #0
	mov r2, r8
	ldrh r0, [r2, #2]
	cmp r0, #2
	beq _08029726
	cmp r0, #2
	bgt _0802971C
	cmp r0, #1
	beq _08029722
	b _08029760
	.align 2, 0
_08029710: .4byte gPlayerStats
_08029714: .4byte 0x080FBB84
_08029718: .4byte 0x00055730
_0802971C:
	cmp r0, #3
	beq _0802972A
	b _08029760
_08029722:
	ldrh r6, [r4, #0x14]
	b _08029760
_08029726:
	ldrh r6, [r4, #0x16]
	b _08029760
_0802972A:
	ldrh r6, [r4, #0x18]
	b _08029760
_0802972E:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802973C
	rsbs r0, r0, #0
_0802973C:
	movs r1, #0x32
	bl __umodsi3
	adds r2, r0, #0
	adds r2, #0x64
	lsls r0, r5, #1
	adds r0, r0, r5
	adds r0, #0xf
	mov r1, sb
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xc8
	muls r0, r1, r0
	muls r0, r2, r0
	ldr r1, _08029778 @ =0x000F4240
	bl __udivsi3
	adds r3, r0, #0
_08029760:
	ldr r0, _0802977C @ =0x080FBB84
	ldr r1, [sp]
	lsls r2, r1, #4
	adds r1, r2, r0
	ldrh r1, [r1, #2]
	cmp r1, #2
	beq _0802978A
	cmp r1, #2
	bgt _08029780
	cmp r1, #1
	beq _08029786
	b _08029790
	.align 2, 0
_08029778: .4byte 0x000F4240
_0802977C: .4byte 0x080FBB84
_08029780:
	cmp r1, #3
	beq _0802978E
	b _08029790
_08029786:
	ldrh r6, [r4, #0x14]
	b _08029790
_0802978A:
	ldrh r6, [r4, #0x16]
	b _08029790
_0802978E:
	ldrh r6, [r4, #0x18]
_08029790:
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080297A6
	movs r0, #0x6e
	subs r0, r0, r6
	muls r0, r3, r0
	movs r1, #0x3c
	bl __udivsi3
	adds r3, r0, #0
_080297A6:
	ldrh r0, [r4, #0x12]
	cmp r0, #1
	bne _080297BE
	ldr r2, [sp]
	cmp r2, #3
	bne _080297BE
	movs r0, #0x96
	muls r0, r3, r0
	movs r1, #0x64
	bl __udivsi3
	adds r3, r0, #0
_080297BE:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080297D4
sub_080297D4: @ 0x080297D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _080298A0 @ =gPlayers
	adds r7, r1, r0
	cmp r4, #1
	bne _0802983E
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	subs r0, #0x4b
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08029822
	rsbs r0, r0, #0
_08029822:
	cmp r8, r0
	ble _0802983E
	strh r4, [r5, #0x3e]
	bl sub_08007544
	cmp r0, #0
	bne _0802983E
	bl sub_080075AC
	cmp r0, #0
	bne _0802983E
	movs r0, #0x29
	bl PlaySE
_0802983E:
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08029688
	strh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x28]
	adds r0, r0, r1
	strh r0, [r5, #0x28]
	ldr r0, [r7, #0x7c]
	str r0, [r5, #0x30]
	movs r0, #7
	strh r0, [r5, #0xa]
	mov r2, sb
	strh r2, [r5, #0x34]
	movs r0, #1
	strh r0, [r5, #0x36]
	movs r1, #0
	movs r0, #0xa2
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0xc8
	ldr r7, _080298A4 @ =0x0000FFFF
_08029870:
	mov r2, r8
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	adds r0, r0, r4
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [r6]
	movs r1, #0x94
	muls r0, r1, r0
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, r7
	bne _080298A8
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #0x94
	bl memcpy
	b _080298B4
	.align 2, 0
_080298A0: .4byte gPlayers
_080298A4: .4byte 0x0000FFFF
_080298A8:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08029870
_080298B4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080298C0
sub_080298C0: @ 0x080298C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	str r0, [sp, #0x2c]
	ldrh r7, [r4]
	ldrh r1, [r4, #2]
	mov r8, r1
	ldr r0, _080298FC @ =0x00100004
	bl GetDataRecord
	mov sb, r0
	ldr r0, _08029900 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x28]
	ldr r0, _08029904 @ =0x00130004
	bl GetDataRecord
	ldrh r5, [r4, #4]
	ldrh r6, [r4, #6]
	cmp r6, #3
	bls _08029908
	movs r6, #1
	b _0802990A
	.align 2, 0
_080298FC: .4byte 0x00100004
_08029900: .4byte 0x00110004
_08029904: .4byte 0x00130004
_08029908:
	movs r6, #0
_0802990A:
	cmp r5, #4
	bne _08029910
	movs r5, #0
_08029910:
	cmp r5, #7
	bne _0802991A
	movs r5, #0xa
	movs r6, #0
	b _08029928
_0802991A:
	cmp r5, #5
	bne _08029924
	movs r5, #9
	movs r6, #0
	b _08029928
_08029924:
	lsls r0, r5, #0x11
	lsrs r5, r0, #0x10
_08029928:
	add r3, sp, #0x24
	movs r0, #0
	strh r0, [r3]
	mov r2, sp
	adds r2, #0x26
	strh r0, [r2]
	add r0, sp, #0x10
	movs r1, #8
	strb r1, [r0, #5]
	strb r1, [r0, #8]
	lsls r2, r7, #0x10
	str r2, [sp, #0x34]
	mov r7, r8
	lsls r7, r7, #0x10
	str r7, [sp, #0x38]
	adds r5, #0xc
	str r5, [sp, #0x30]
	add r0, sp, #0x20
	mov r8, r0
	mov r1, sp
	adds r1, #0x22
	str r1, [sp, #0x3c]
	mov sl, r3
_08029956:
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, [sp, #0x34]
	asrs r0, r3, #0x10
	ldr r7, [sp, #0x38]
	asrs r1, r7, #0x10
	mov r2, r8
	ldr r3, [sp, #0x3c]
	bl sub_08005FC4
	ldr r1, [sp, #0x30]
	adds r0, r6, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	str r2, [sp]
	adds r0, r4, #0
	mov r1, sl
	mov r2, sp
	adds r2, #0x26
	mov r3, sb
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08029A04 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080299DC
	bl sub_08007510
	cmp r0, #0
	bne _080299DC
	bl sub_08007604
	cmp r0, #0
	bne _080299DC
	bl sub_08007544
	adds r2, r0, #0
	cmp r2, #0
	bne _080299DC
	mov r3, r8
	movs r7, #0
	ldrsh r0, [r3, r7]
	ldr r3, [sp, #0x3c]
	movs r7, #0
	ldrsh r1, [r3, r7]
	adds r1, #1
	mov r7, sl
	ldrh r3, [r7]
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r7, sb
	str r7, [sp, #8]
	ldr r2, [sp, #0x28]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_080299DC:
	bl WaitFrame
	cmp r5, #0
	beq _08029956
	ldr r2, _08029A08 @ =0x03006800
	movs r1, #1
	ldr r3, [sp, #0x2c]
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029A04: .4byte 0x030063D8
_08029A08: .4byte 0x03006800

	thumb_func_start sub_08029A0C
sub_08029A0C: @ 0x08029A0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov ip, r1
	mov sb, r2
	ldr r0, [sp, #0x1c]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r7, #0
	ldr r4, _08029ABC @ =0x03006800
	movs r1, #1
	ldr r0, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08029A46
	movs r5, #1
_08029A34:
	adds r7, #1
	cmp r7, #0x1f
	bhi _08029AB0
	adds r1, r5, #0
	lsls r1, r7
	ldr r0, [r4]
	ands r0, r1
	cmp r0, #0
	bne _08029A34
_08029A46:
	cmp r7, #0x1f
	bhi _08029AB0
	ldr r1, _08029AC0 @ =0x03006808
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r5, [r1]
	adds r5, r5, r0
	asrs r0, r6, #0xc
	movs r1, #0
	mov r8, r1
	strh r0, [r5]
	mov r1, ip
	asrs r0, r1, #0xc
	strh r0, [r5, #2]
	mov r0, sb
	strh r0, [r5, #8]
	strh r7, [r5, #0xa]
	strh r3, [r5, #4]
	strh r2, [r5, #6]
	ldr r6, _08029AC4 @ =0x03006790
	ldr r1, [r6]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001430
	ldr r1, [r6]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _08029AC8 @ =sub_080298C0
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	mov r0, r8
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	ldr r2, _08029ABC @ =0x03006800
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08029AB0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029ABC: .4byte 0x03006800
_08029AC0: .4byte 0x03006808
_08029AC4: .4byte 0x03006790
_08029AC8: .4byte sub_080298C0

	thumb_func_start sub_08029ACC
sub_08029ACC: @ 0x08029ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _08029BA8 @ =0x0000FFFF
	ands r1, r0
	mov r8, r1
	lsls r5, r4, #0x10
	lsrs r5, r5, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08029BAC @ =0x00100005
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	adds r1, #0x15
	strh r2, [r1]
	add r0, sp, #0x44
	strh r2, [r0]
	mov sb, r0
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	lsls r5, r5, #0x10
	str r5, [sp, #0x4c]
	lsls r4, r4, #0x10
	mov sl, r4
_08029B18:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	mov r2, sb
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08029B80
	bl sub_08007604
	cmp r0, #0
	bne _08029B80
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	bne _08029B80
	movs r0, #0x30
	str r0, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x4c]
	asrs r0, r2, #0x10
	mov r2, sl
	asrs r1, r2, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	mov r2, sb
	ldrh r3, [r2]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
_08029B80:
	bl WaitFrame
	cmp r5, #0
	beq _08029B18
	ldr r2, _08029BB0 @ =0x03006800
	movs r1, #1
	mov r0, r8
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029BA8: .4byte 0x0000FFFF
_08029BAC: .4byte 0x00100005
_08029BB0: .4byte 0x03006800

	thumb_func_start sub_08029BB4
sub_08029BB4: @ 0x08029BB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r2, _08029C38 @ =0x03006800
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08029BE0
	movs r3, #1
_08029BCE:
	adds r6, #1
	cmp r6, #0x1f
	bhi _08029C2C
	adds r1, r3, #0
	lsls r1, r6
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08029BCE
_08029BE0:
	cmp r6, #0x1f
	bhi _08029C2C
	ldr r5, _08029C3C @ =0x03006790
	ldr r1, [r5]
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _08029C40 @ =sub_08029ACC
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	lsls r1, r7, #0x10
	mov r0, r8
	orrs r1, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CreateThread
	ldr r2, _08029C38 @ =0x03006800
	movs r1, #1
	lsls r1, r6
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08029C2C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029C38: .4byte 0x03006800
_08029C3C: .4byte 0x03006790
_08029C40: .4byte sub_08029ACC

	thumb_func_start sub_08029C44
sub_08029C44: @ 0x08029C44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	movs r0, #0xd4
	mov r8, r0
	ldr r1, [sp, #0x5c]
	mov r0, r8
	muls r0, r1, r0
	ldr r7, _08029CE0 @ =gPlayers
	adds r0, r0, r7
	str r0, [sp, #0x64]
	adds r6, r0, #0
	adds r6, #0xd0
	ldr r1, [r6]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	str r0, [sp, #0x68]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x70]
	str r0, [sp, #0x74]
	str r0, [sp, #0x6c]
	add r5, sp, #0x58
	movs r0, #0
	strh r0, [r5]
	mov r4, sp
	adds r4, #0x5a
	strh r0, [r4]
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	cmp r0, r2
	bne _08029D22
	ldr r0, [r6]
	ldr r4, [r0, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r5, r0, r7
	ldr r1, _08029CE4 @ =0x080FBB84
	ldr r2, [sp, #0x6c]
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _08029CCA
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_08029CCA:
	adds r0, r5, #0
	adds r0, #0x78
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _08029CE8
	movs r0, #0
	b _08029CEA
	.align 2, 0
_08029CE0: .4byte gPlayers
_08029CE4: .4byte 0x080FBB84
_08029CE8:
	adds r0, r1, #1
_08029CEA:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _08029D08
	ldr r0, _08029D04 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r5, [sp, #0x64]
	strh r4, [r5, #0x12]
	strh r4, [r5, #0x14]
	b _0802A0D2
	.align 2, 0
_08029D04: .4byte 0x0009001B
_08029D08:
	ldr r2, [sp, #0x64]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _08029D22
	movs r0, #0
	strh r0, [r2]
_08029D22:
	movs r4, #0
	ldr r3, _08029DDC @ =gEnemies
	ldr r6, [r3]
	ldr r2, _08029DE0 @ =gActiveEnemyMask
	movs r0, #1
	ldr r1, [r2]
	ands r1, r0
	ldr r5, [sp, #0x64]
	adds r5, #0xd0
	ldr r7, _08029DE4 @ =0x080FB9FC
	ldr r0, [sp, #0x64]
	adds r0, #0x72
	mov sl, r0
	ldr r0, [sp, #0x5c]
	lsls r0, r0, #2
	str r0, [sp, #0x80]
	cmp r1, #0
	bne _08029D66
_08029D46:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bhi _08029D72
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r3]
	adds r6, r0, r1
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08029D46
_08029D66:
	ldrh r0, [r6, #2]
	ldr r1, [sp, #0x68]
	cmp r0, r1
	bne _08029D46
	cmp r4, #4
	bls _08029D76
_08029D72:
	movs r2, #0
	str r2, [sp, #0x68]
_08029D76:
	ldr r1, [r5]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov sb, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov r8, r0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x78]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x10
	ldr r3, [sp, #0x74]
	cmp r3, #0
	beq _08029DA4
	movs r0, #1
	mov r5, sl
	strh r0, [r5]
_08029DA4:
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	bne _08029DFC
	ldr r0, _08029DE8 @ =0x030067F0
	ldr r2, [sp, #0x80]
	adds r5, r2, r0
	movs r0, #1
	ldr r3, [sp, #0x60]
	lsls r0, r3
	mvns r7, r0
_08029DBA:
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0xc]
	cmp r0, #7
	beq _08029DD2
	ldr r0, _08029DEC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08029DF0
_08029DD2:
	ldr r0, [r5]
	ands r0, r7
	str r0, [r5]
	b _0802A0D2
	.align 2, 0
_08029DDC: .4byte gEnemies
_08029DE0: .4byte gActiveEnemyMask
_08029DE4: .4byte 0x080FB9FC
_08029DE8: .4byte 0x030067F0
_08029DEC: .4byte 0x030063D8
_08029DF0:
	bl WaitFrame
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0
	beq _08029DBA
_08029DFC:
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	cmp r0, r3
	bne _08029E1C
	bl sub_08007544
	cmp r0, #0
	bne _08029E1C
	bl sub_080075AC
	cmp r0, #0
	bne _08029E1C
	movs r0, #0x28
	bl PlaySE
_08029E1C:
	ldr r5, [sp, #0x68]
	cmp r5, #0
	beq _08029ECC
	ldr r0, [r6, #0x10]
	mov r1, sb
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	add r2, sp, #0x54
	strh r0, [r2]
	ldr r1, [r6, #0x14]
	mov r3, r8
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x56
	strh r1, [r0]
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r1, r3, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r2, r1, r0
	cmp r2, #0x80
	ble _08029E7E
	ldr r2, _08029E68 @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08029E90
	.align 2, 0
_08029E68: .4byte 0xFFFFFF00
_08029E6C:
	ldr r3, [sp, #0x74]
	str r3, [sp]
	mov r0, sb
	mov r1, r8
	ldr r2, [sp, #0x5c]
	movs r3, #0
	bl sub_08029A0C
	b _0802A0C0
_08029E7E:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08029E90
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	adds r3, r0, #0
	orrs r3, r1
_08029E90:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08029EB4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08029EB4:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08029EC8
	ldr r2, _08029F40 @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08029EC8:
	movs r0, #0xff
	ands r4, r0
_08029ECC:
	ldr r3, _08029F44 @ =0x0805289C
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add sb, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r8, r0
	ldr r1, _08029F48 @ =0x00100006
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	mov r2, sp
	adds r2, #0x31
	movs r1, #0
	movs r0, #8
	strb r0, [r2]
	add r2, sp, #0x58
	strh r1, [r2]
	movs r3, #0x5a
	add r3, sp
	strh r1, [r3]
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r5, [sp, #0x70]
	lsls r0, r5, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x13
	movs r2, #0xa0
	lsls r2, r2, #0xd
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	str r4, [sp, #0x7c]
	b _0802A08E
	.align 2, 0
_08029F40: .4byte 0xFFFFFF00
_08029F44: .4byte 0x0805289C
_08029F48: .4byte 0x00100006
_08029F4C:
	ldr r0, _0802A0E4 @ =gFrameCounter
	ldr r0, [r0]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _08029F64
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
_08029F64:
	movs r4, #0
	mov sl, r4
	str r4, [sp]
	mov r0, sb
	mov r1, r8
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x74]
	bl sub_08029560
	cmp r0, #0
	beq _08029F82
	ldr r5, [sp, #0x74]
	cmp r5, #0
	bne _08029F82
	b _0802A0C0
_08029F82:
	mov r0, sb
	mov r1, r8
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08029FA2
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08029FA2
	b _08029E6C
_08029FA2:
	ldr r3, _0802A0E8 @ =0x0805289C
	ldr r0, [sp, #0x7c]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	add sb, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	add r8, r0
	mov r0, sb
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x54
	mov r7, sp
	adds r7, #0x56
	movs r2, #0x30
	str r2, [sp]
	mov r2, sl
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0802A0EC @ =0x080FB720
	ldr r3, [sp, #0x7c]
	asrs r0, r3, #0x14
	adds r4, r0, r1
	ldrb r1, [r4]
	ldr r0, [sp, #0x70]
	adds r1, r0, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #1
	str r2, [sp]
	add r0, sp, #0x10
	add r2, sp, #0x58
	mov r3, sp
	adds r3, #0x5a
	bl sub_08026C40
	ldr r0, _0802A0F0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802A08A
	bl sub_08007510
	cmp r0, #0
	bne _0802A08A
	bl sub_08007604
	cmp r0, #0
	bne _0802A08A
	bl sub_08007544
	cmp r0, #0
	bne _0802A08A
	movs r3, #0
	ldrsh r0, [r6, r3]
	ldr r3, _0802A0F4 @ =0x080FBB24
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r7, r4]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x70]
	ldr r3, [sp, #0x78]
	adds r2, r4, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x58
	ldrh r3, [r4]
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_0802A08A:
	bl WaitFrame
_0802A08E:
	ldr r1, [sp, #0x6c]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	cmp r1, #0
	beq _0802A0C0
	bl GetMultiplayerId
	ldr r5, [sp, #0x5c]
	cmp r5, r0
	beq _0802A0A8
	b _08029F4C
_0802A0A8:
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802A0C0
	bl sub_080077C0
	cmp r0, #0
	bne _0802A0C0
	b _08029F4C
_0802A0C0:
	ldr r2, _0802A0F8 @ =0x030067F0
	ldr r3, [sp, #0x80]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x60]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802A0D2:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A0E4: .4byte gFrameCounter
_0802A0E8: .4byte 0x0805289C
_0802A0EC: .4byte 0x080FB720
_0802A0F0: .4byte 0x030063D8
_0802A0F4: .4byte 0x080FBB24
_0802A0F8: .4byte 0x030067F0

	thumb_func_start sub_0802A0FC
sub_0802A0FC: @ 0x0802A0FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x9c
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	movs r0, #0xd4
	mov r8, r0
	ldr r1, [sp, #0x5c]
	mov r0, r8
	muls r0, r1, r0
	ldr r7, _0802A198 @ =gPlayers
	adds r0, r0, r7
	str r0, [sp, #0x64]
	adds r6, r0, #0
	adds r6, #0xd0
	ldr r1, [r6]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	str r0, [sp, #0x6c]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x74]
	str r0, [sp, #0x78]
	str r0, [sp, #0x70]
	mov r5, sp
	adds r5, #0x5a
	movs r0, #0
	strh r0, [r5]
	add r4, sp, #0x58
	strh r0, [r4]
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	cmp r0, r2
	bne _0802A1DA
	ldr r0, [r6]
	ldr r4, [r0, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r5, r0, r7
	ldr r1, _0802A19C @ =0x080FBB84
	ldr r2, [sp, #0x70]
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _0802A182
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802A182:
	adds r0, r5, #0
	adds r0, #0x78
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802A1A0
	movs r0, #0
	b _0802A1A2
	.align 2, 0
_0802A198: .4byte gPlayers
_0802A19C: .4byte 0x080FBB84
_0802A1A0:
	adds r0, r1, #1
_0802A1A2:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802A1C0
	ldr r0, _0802A1BC @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r5, [sp, #0x64]
	strh r4, [r5, #0x12]
	strh r4, [r5, #0x14]
	b _0802A5E0
	.align 2, 0
_0802A1BC: .4byte 0x0009001B
_0802A1C0:
	ldr r2, [sp, #0x64]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802A1DA
	movs r0, #0
	strh r0, [r2]
_0802A1DA:
	movs r2, #0
	ldr r1, _0802A304 @ =gEnemies
	ldr r6, [r1]
	ldrh r0, [r6, #2]
	ldr r3, [sp, #0x64]
	adds r3, #0xd0
	str r3, [sp, #0x98]
	add r7, sp, #0x44
	mov r4, sp
	adds r4, #0x31
	str r4, [sp, #0x8c]
	ldr r5, [sp, #0x74]
	lsls r5, r5, #0x13
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x70]
	lsls r3, r3, #0x13
	str r3, [sp, #0x90]
	ldr r4, [sp, #0x64]
	adds r4, #0x72
	mov r8, r4
	ldr r5, [sp, #0x5c]
	lsls r5, r5, #2
	str r5, [sp, #0x88]
	ldr r3, [sp, #0x6c]
	cmp r0, r3
	beq _0802A22C
	adds r4, r1, #0
	movs r3, #0x94
_0802A212:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bhi _0802A230
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, [r4]
	adds r6, r1, r0
	ldrh r0, [r6, #2]
	ldr r5, [sp, #0x6c]
	cmp r0, r5
	bne _0802A212
_0802A22C:
	cmp r2, #4
	bls _0802A234
_0802A230:
	movs r0, #0
	str r0, [sp, #0x6c]
_0802A234:
	ldr r2, [sp, #0x98]
	ldr r1, [r2]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov sb, r0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x7c]
	movs r4, #0
	movs r5, #8
	strb r5, [r7, #5]
	add r3, sp, #0x58
	strh r4, [r3]
	movs r0, #0x5a
	add r0, sp
	strh r4, [r0]
	ldr r0, _0802A308 @ =0x00100004
	bl GetDataRecord
	ldr r0, _0802A30C @ =0x00110004
	bl GetDataRecord
	ldr r0, _0802A310 @ =0x00130004
	bl GetDataRecord
	str r0, [sp, #0x68]
	ldr r1, _0802A314 @ =0x00100068
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	ldr r1, [sp, #0x8c]
	strb r5, [r1]
	add r2, sp, #0x58
	strh r4, [r2]
	movs r3, #0x5a
	add r3, sp
	strh r4, [r3]
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r4, [sp, #0x94]
	lsrs r4, r4, #0x10
	str r4, [sp, #0x74]
	ldr r5, [sp, #0x90]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r5, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	ldr r1, _0802A318 @ =0x080FB9FC
	ldr r2, [sp, #0x98]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r5, r0, #0x10
	ldr r3, [sp, #0x78]
	cmp r3, #0
	beq _0802A2CC
	movs r0, #1
	mov r4, r8
	strh r0, [r4]
_0802A2CC:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802A330
	ldr r0, _0802A31C @ =0x030067F0
	ldr r2, [sp, #0x88]
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #0x60]
	lsls r0, r3
	mvns r7, r0
_0802A2E2:
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0xc]
	cmp r0, #7
	beq _0802A2FA
	ldr r0, _0802A320 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802A324
_0802A2FA:
	ldr r0, [r4]
	ands r0, r7
	str r0, [r4]
	b _0802A5E0
	.align 2, 0
_0802A304: .4byte gEnemies
_0802A308: .4byte 0x00100004
_0802A30C: .4byte 0x00110004
_0802A310: .4byte 0x00130004
_0802A314: .4byte 0x00100068
_0802A318: .4byte 0x080FB9FC
_0802A31C: .4byte 0x030067F0
_0802A320: .4byte 0x030063D8
_0802A324:
	bl WaitFrame
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802A2E2
_0802A330:
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	cmp r0, r3
	bne _0802A350
	bl sub_08007544
	cmp r0, #0
	bne _0802A350
	bl sub_080075AC
	cmp r0, #0
	bne _0802A350
	movs r0, #0x29
	bl PlaySE
_0802A350:
	ldr r4, [sp, #0x6c]
	cmp r4, #0
	beq _0802A418
	ldr r0, [r6, #0x10]
	mov r1, sl
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	add r2, sp, #0x54
	strh r0, [r2]
	ldr r1, [r6, #0x14]
	mov r3, sb
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x56
	strh r1, [r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r1, r3, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r2, r1, r0
	cmp r2, #0x80
	ble _0802A3CA
	ldr r2, _0802A39C @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0802A3DC
	.align 2, 0
_0802A39C: .4byte 0xFFFFFF00
_0802A3A0:
	ldr r1, _0802A3B4 @ =0x030067F0
	ldr r3, [sp, #0x88]
	adds r1, r3, r1
	mov r4, r8
	ldr r5, [sp, #0x60]
	lsls r4, r5
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	b _0802A5E0
	.align 2, 0
_0802A3B4: .4byte 0x030067F0
_0802A3B8:
	ldr r0, [sp, #0x78]
	str r0, [sp]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0x5c]
	movs r3, #1
	bl sub_08029A0C
	b _0802A5CE
_0802A3CA:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0802A3DC
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	adds r3, r0, #0
	orrs r3, r1
_0802A3DC:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0802A400
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802A400:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802A414
	ldr r4, _0802A5F0 @ =0xFFFFFF00
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802A414:
	movs r0, #0xff
	ands r5, r0
_0802A418:
	ldr r3, _0802A5F4 @ =0x0805289C
	lsls r4, r5, #0x10
	asrs r2, r4, #0x10
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	movs r1, #0xb4
	muls r0, r1, r0
	add sl, r0
	lsls r0, r2, #1
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r1, r0
	add sb, r0
	ldr r1, [sp, #0x70]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r1, #0
	bne _0802A44C
	b _0802A5CE
_0802A44C:
	movs r0, #1
	mov r8, r0
	str r2, [sp, #0x80]
	asrs r4, r4, #0x14
	str r4, [sp, #0x84]
_0802A456:
	ldr r0, _0802A5F8 @ =gFrameCounter
	ldr r0, [r0]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0802A46E
	movs r0, #0x18
	ldr r1, [sp, #0x68]
	adds r1, #0xa0
	movs r2, #1
	bl LoadPalette
_0802A46E:
	bl GetMultiplayerId
	ldr r2, [sp, #0x5c]
	cmp r2, r0
	bne _0802A492
	ldr r3, [sp, #0x64]
	ldrh r0, [r3, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0802A488
	b _0802A5CE
_0802A488:
	bl sub_080077C0
	cmp r0, #0
	beq _0802A492
	b _0802A5CE
_0802A492:
	mov r4, r8
	str r4, [sp]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x78]
	bl sub_08029560
	cmp r0, #0
	beq _0802A4AE
	ldr r5, [sp, #0x78]
	cmp r5, #0
	bne _0802A4AE
	b _0802A3A0
_0802A4AE:
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0xf
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0802A4D0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802A4D0
	b _0802A3B8
_0802A4D0:
	ldr r0, [sp, #0x80]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802A5F4 @ =0x0805289C
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	add sl, r0
	ldr r4, [sp, #0x80]
	lsls r0, r4, #1
	ldr r5, _0802A5F4 @ =0x0805289C
	adds r0, r0, r5
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	add sb, r0
	adds r0, r4, #0
	ands r0, r2
	mov r4, sl
	asrs r5, r4, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x54
	mov r7, sp
	adds r7, #0x56
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0802A5FC @ =0x080FB720
	ldr r2, [sp, #0x84]
	adds r4, r2, r0
	ldrb r1, [r4]
	ldr r3, [sp, #0x74]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	str r0, [sp]
	add r0, sp, #0x10
	add r2, sp, #0x58
	mov r3, sp
	adds r3, #0x5a
	bl sub_08026C40
	ldr r0, _0802A600 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802A5BA
	bl sub_08007510
	cmp r0, #0
	bne _0802A5BA
	bl sub_08007604
	cmp r0, #0
	bne _0802A5BA
	bl sub_08007544
	cmp r0, #0
	bne _0802A5BA
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, _0802A604 @ =0x080FBB24
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r7, r4]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x74]
	ldr r3, [sp, #0x7c]
	adds r2, r4, r3
	lsls r2, r2, #0x10
	add r4, sp, #0x58
	ldrh r3, [r4]
	str r5, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	lsrs r2, r2, #0x10
	bl sub_08004344
_0802A5BA:
	bl WaitFrame
	ldr r1, [sp, #0x70]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r1, #0
	beq _0802A5CE
	b _0802A456
_0802A5CE:
	ldr r2, _0802A608 @ =0x030067F0
	ldr r5, [sp, #0x88]
	adds r2, r5, r2
	movs r1, #1
	ldr r0, [sp, #0x60]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802A5E0:
	add sp, #0x9c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A5F0: .4byte 0xFFFFFF00
_0802A5F4: .4byte 0x0805289C
_0802A5F8: .4byte gFrameCounter
_0802A5FC: .4byte 0x080FB720
_0802A600: .4byte 0x030063D8
_0802A604: .4byte 0x080FBB24
_0802A608: .4byte 0x030067F0

	thumb_func_start sub_0802A60C
sub_0802A60C: @ 0x0802A60C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	str r0, [sp, #0x44]
	str r1, [sp, #0x48]
	movs r6, #0xd4
	adds r1, r0, #0
	adds r0, r1, #0
	muls r0, r6, r0
	ldr r5, _0802A694 @ =gPlayers
	adds r0, r0, r5
	str r0, [sp, #0x4c]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x4c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x58]
	adds r7, r0, #0
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x44]
	cmp r2, r3
	bne _0802A6D6
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r5, r0, r5
	ldr r1, _0802A698 @ =0x080FBB84
	adds r2, r7, #0
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _0802A67C
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802A67C:
	adds r0, r5, #0
	adds r0, #0x78
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802A69C
	movs r0, #0
	b _0802A69E
	.align 2, 0
_0802A694: .4byte gPlayers
_0802A698: .4byte 0x080FBB84
_0802A69C:
	adds r0, r1, #1
_0802A69E:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802A6BC
	ldr r0, _0802A6B8 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r0, [sp, #0x4c]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	b _0802AB78
	.align 2, 0
_0802A6B8: .4byte 0x0009001B
_0802A6BC:
	ldr r2, [sp, #0x4c]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802A6D6
	movs r0, #0
	strh r0, [r2]
_0802A6D6:
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	movs r6, #0
	adds r1, #0x18
	str r1, [sp, #0x74]
	mov r2, sp
	adds r2, #0x34
	str r2, [sp, #0x7c]
	ldr r5, [sp, #0x4c]
	adds r5, #0x72
	ldr r3, [sp, #0x44]
	lsls r3, r3, #2
	str r3, [sp, #0x78]
	adds r4, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x7c]
_0802A6F8:
	lsls r1, r6, #1
	adds r0, r4, r1
	strh r2, [r0]
	adds r1, r3, r1
	strh r2, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802A6F8
	ldr r0, _0802A76C @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x54]
	ldr r0, _0802A770 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x50]
	ldr r0, _0802A774 @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	cmp r7, #0
	beq _0802A736
	movs r0, #2
	strh r0, [r5]
_0802A736:
	ldrh r0, [r5]
	cmp r0, #1
	bhi _0802A78A
	ldr r0, _0802A778 @ =0x030067F0
	ldr r1, [sp, #0x78]
	adds r4, r1, r0
	movs r0, #1
	ldr r2, [sp, #0x48]
	lsls r0, r2
	mvns r6, r0
_0802A74A:
	ldr r3, [sp, #0x4c]
	ldrh r0, [r3, #0xc]
	cmp r0, #7
	beq _0802A762
	ldr r0, _0802A77C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802A780
_0802A762:
	ldr r0, [r4]
	ands r0, r6
	str r0, [r4]
	b _0802AB78
	.align 2, 0
_0802A76C: .4byte 0x00100004
_0802A770: .4byte 0x00110004
_0802A774: .4byte 0x00130004
_0802A778: .4byte 0x030067F0
_0802A77C: .4byte 0x030063D8
_0802A780:
	bl WaitFrame
	ldrh r0, [r5]
	cmp r0, #1
	bls _0802A74A
_0802A78A:
	ldr r3, [sp, #0x4c]
	adds r3, #0xd0
	ldr r1, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0x5c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [sp, #0x60]
	ldr r2, _0802A7F8 @ =0x080FB9FC
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r7, #0
	movs r4, #0
	str r4, [sp, #0x64]
	movs r6, #0
	mov sb, r3
	ldr r0, [sp, #0x4c]
	adds r0, #0x76
	str r0, [sp, #0x84]
_0802A7C2:
	ldr r0, _0802A7FC @ =gActiveEnemyMask
	movs r1, #1
	lsls r1, r6
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802A8A6
	ldr r2, _0802A800 @ =gEnemies
	movs r0, #0x94
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802A7F0
	ldr r0, _0802A804 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _0802A808
_0802A7F0:
	ldrh r0, [r5, #0xa]
	cmp r0, #8
	beq _0802A8A6
	b _0802A814
	.align 2, 0
_0802A7F8: .4byte 0x080FB9FC
_0802A7FC: .4byte gActiveEnemyMask
_0802A800: .4byte gEnemies
_0802A804: .4byte gMapLayer_03003910
_0802A808:
	ldrh r0, [r5, #0xa]
	adds r1, r0, #0
	cmp r1, #0
	beq _0802A8A6
	cmp r1, #8
	beq _0802A8A6
_0802A814:
	cmp r0, #9
	beq _0802A8A6
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x5c]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	add r4, sp, #0x40
	strh r0, [r4]
	ldr r1, [r5, #0x14]
	ldr r2, [sp, #0x60]
	subs r1, r1, r2
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x42
	strh r1, [r5]
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1b
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0802A85C
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802A85C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802A866
	rsbs r0, r0, #0
_0802A866:
	cmp r0, #3
	bgt _0802A8A6
	movs r3, #0
	ldrsh r4, [r4, r3]
	cmp r4, #0
	bge _0802A874
	rsbs r4, r4, #0
_0802A874:
	ldr r1, [sp, #0x58]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x30
	cmp r4, r0
	bge _0802A8A6
	movs r2, #0
	ldrsh r5, [r5, r2]
	cmp r5, #0
	bge _0802A88C
	rsbs r5, r5, #0
_0802A88C:
	cmp r5, r0
	bge _0802A8A6
	add r1, sp, #0x20
	ldr r2, [sp, #0x64]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	adds r1, r1, r2
	strb r6, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802A8A6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802A7C2
	ldr r3, [sp, #0x68]
	ldr r4, [sp, #0x44]
	cmp r3, r4
	bne _0802A8CE
	bl sub_08007544
	cmp r0, #0
	bne _0802A8CE
	bl sub_080075AC
	cmp r0, #0
	bne _0802A8CE
	movs r0, #0x2a
	bl PlaySE
_0802A8CE:
	cmp r7, #0
	beq _0802A8D4
	b _0802A9E4
_0802A8D4:
	ldr r1, _0802A9D8 @ =0x080FB9FC
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _0802A9DC @ =0x0805289C
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, [sp, #0x5c]
	adds r2, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, [sp, #0x60]
	adds r4, r4, r0
	movs r0, #0
	mov sl, r0
	ldr r1, [sp, #0x58]
	adds r1, #0x17
	str r1, [sp, #0x80]
	asrs r2, r2, #0xc
	str r2, [sp, #0x6c]
	asrs r4, r4, #0xc
	mov sb, r4
	add r3, sp, #0x40
	mov r8, r3
	mov r6, sp
	adds r6, #0x42
	lsls r4, r2, #0x10
	str r4, [sp, #0x70]
	ldr r5, [sp, #0x74]
_0802A93A:
	mov r0, sb
	lsls r1, r0, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, [sp, #0x70]
	asrs r0, r3, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	adds r3, r6, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x6c]
	mov r1, sb
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r4, [sp, #0x80]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x7c]
	ldr r3, [sp, #0x54]
	bl sub_08004214
	cmp r0, #0
	beq _0802A982
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802A982:
	ldr r0, _0802A9E0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802A9CA
	bl sub_08007510
	cmp r0, #0
	bne _0802A9CA
	bl sub_08007604
	cmp r0, #0
	bne _0802A9CA
	bl sub_08007544
	cmp r0, #0
	bne _0802A9CA
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldrh r3, [r5]
	str r7, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r2, [sp, #0x54]
	str r2, [sp, #8]
	ldr r2, [sp, #0x50]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802A9CA:
	bl WaitFrame
	mov r3, sl
	cmp r3, #0
	beq _0802A93A
	b _0802AB52
	.align 2, 0
_0802A9D8: .4byte 0x080FB9FC
_0802A9DC: .4byte 0x0805289C
_0802A9E0: .4byte 0x030063D8
_0802A9E4:
	movs r4, #0
	mov sl, r4
	b _0802AABE
_0802A9EA:
	movs r6, #0
	ldr r0, [sp, #0x64]
	cmp r6, r0
	bhs _0802AABA
	add r1, sp, #0x40
	mov sb, r1
	movs r2, #0x42
	add r2, sp
	mov r8, r2
_0802A9FC:
	ldr r2, _0802AB88 @ =gEnemies
	add r0, sp, #0x20
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r0, [r5, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	mov r2, sb
	mov r3, r8
	bl sub_08005FC4
	ldr r4, [sp, #0x5c]
	asrs r0, r4, #0xc
	ldr r2, [sp, #0x60]
	asrs r1, r2, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r5, [sp, #0x58]
	adds r5, #0x17
	lsls r2, r6, #1
	ldr r3, [sp, #0x74]
	adds r4, r3, r2
	ldr r0, [sp, #0x7c]
	adds r2, r0, r2
	movs r1, #0
	str r1, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x54]
	bl sub_08004214
	cmp r0, #0
	beq _0802AA64
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802AA64:
	ldr r0, _0802AB8C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802AAAE
	bl sub_08007510
	cmp r0, #0
	bne _0802AAAE
	bl sub_08007604
	cmp r0, #0
	bne _0802AAAE
	bl sub_08007544
	cmp r0, #0
	bne _0802AAAE
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r4]
	str r7, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r2, [sp, #0x54]
	str r2, [sp, #8]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
_0802AAAE:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0x64]
	cmp r6, r0
	blo _0802A9FC
_0802AABA:
	bl WaitFrame
_0802AABE:
	ldr r1, [sp, #0x64]
	cmp sl, r1
	bhs _0802AAE4
	bl GetMultiplayerId
	ldr r2, [sp, #0x44]
	cmp r2, r0
	bne _0802A9EA
	ldr r3, [sp, #0x4c]
	ldrh r0, [r3, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802AAE4
	bl sub_080077C0
	cmp r0, #0
	beq _0802A9EA
_0802AAE4:
	movs r6, #0
	ldr r4, [sp, #0x64]
	cmp r6, r4
	bhs _0802AB52
	ldr r4, _0802AB88 @ =gEnemies
_0802AAEE:
	add r0, sp, #0x20
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r4]
	adds r5, r0, r1
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x44]
	cmp r0, r1
	bne _0802AB26
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x58]
	movs r3, #2
	bl sub_080297D4
	bl sub_08007544
	cmp r0, #0
	bne _0802AB26
	bl sub_080075AC
	cmp r0, #0
	bne _0802AB26
	movs r0, #0x1a
	bl PlaySE
_0802AB26:
	ldr r0, _0802AB8C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802AB46
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [sp, #0x58]
	str r2, [sp]
	ldr r2, [sp, #0x44]
	movs r3, #2
	bl sub_08029A0C
_0802AB46:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r3, [sp, #0x64]
	cmp r6, r3
	blo _0802AAEE
_0802AB52:
	ldr r4, [sp, #0x84]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0802AB66
_0802AB5A:
	bl WaitFrame
	ldr r1, [sp, #0x84]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802AB5A
_0802AB66:
	ldr r2, _0802AB90 @ =0x030067F0
	ldr r3, [sp, #0x78]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x48]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802AB78:
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AB88: .4byte gEnemies
_0802AB8C: .4byte 0x030063D8
_0802AB90: .4byte 0x030067F0

	thumb_func_start sub_0802AB94
sub_0802AB94: @ 0x0802AB94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	movs r0, #0xd4
	ldr r2, [sp, #0x28]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802ABE8 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x34]
	adds r0, r1, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	str r0, [sp, #0x44]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x48]
	add r2, sp, #0x24
	movs r0, #0
	strh r0, [r2]
	mov r1, sp
	adds r1, #0x26
	strh r0, [r1]
	ldr r3, [sp, #0x48]
	cmp r3, #5
	bhi _0802AC2A
	lsls r0, r3, #2
	ldr r1, _0802ABEC @ =_0802ABF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802ABE8: .4byte gPlayers
_0802ABEC: .4byte _0802ABF0
_0802ABF0: @ jump table
	.4byte _0802AC08 @ case 0
	.4byte _0802AC0E @ case 1
	.4byte _0802AC14 @ case 2
	.4byte _0802AC1A @ case 3
	.4byte _0802AC20 @ case 4
	.4byte _0802AC26 @ case 5
_0802AC08:
	movs r4, #1
	str r4, [sp, #0x54]
	b _0802AC2A
_0802AC0E:
	movs r6, #2
	str r6, [sp, #0x54]
	b _0802AC2A
_0802AC14:
	movs r0, #3
	str r0, [sp, #0x54]
	b _0802AC2A
_0802AC1A:
	movs r1, #4
	str r1, [sp, #0x54]
	b _0802AC2A
_0802AC20:
	movs r2, #5
	str r2, [sp, #0x54]
	b _0802AC2A
_0802AC26:
	movs r3, #6
	str r3, [sp, #0x54]
_0802AC2A:
	bl GetMultiplayerId
	ldr r7, [sp, #0x34]
	adds r7, #0xd0
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bne _0802ACC6
	ldr r0, [r7]
	ldr r4, [r0, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0802AC84 @ =gPlayers
	adds r5, r1, r0
	ldr r1, _0802AC88 @ =0x080FBB84
	ldr r6, [sp, #0x4c]
	lsls r0, r6, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r6, #0
	beq _0802AC6E
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802AC6E:
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802AC8C
	movs r0, #0
	b _0802AC8E
	.align 2, 0
_0802AC84: .4byte gPlayers
_0802AC88: .4byte 0x080FBB84
_0802AC8C:
	adds r0, r1, #1
_0802AC8E:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802ACAC
	ldr r0, _0802ACA8 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r2, [sp, #0x34]
	strh r4, [r2, #0x12]
	strh r4, [r2, #0x14]
	b _0802B106
	.align 2, 0
_0802ACA8: .4byte 0x0009001B
_0802ACAC:
	ldr r2, [sp, #0x34]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802ACC6
	movs r0, #0
	strh r0, [r2]
_0802ACC6:
	movs r2, #0
	ldr r1, _0802AD5C @ =gEnemies
	ldr r3, [r1]
	str r3, [sp, #0x30]
	ldrh r0, [r3, #2]
	ldr r6, [sp, #0x34]
	adds r6, #0x72
	ldr r4, [sp, #0x28]
	lsls r4, r4, #2
	str r4, [sp, #0x5c]
	ldr r3, [sp, #0x44]
	cmp r0, r3
	beq _0802AD00
	adds r4, r1, #0
	movs r3, #0x94
_0802ACE4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bhi _0802AD04
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [sp, #0x30]
	ldrh r0, [r1, #2]
	ldr r1, [sp, #0x44]
	cmp r0, r1
	bne _0802ACE4
_0802AD00:
	cmp r2, #4
	bls _0802AD08
_0802AD04:
	movs r2, #0
	str r2, [sp, #0x44]
_0802AD08:
	ldr r1, [r7]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov sb, r0
	add r2, sp, #0x10
	movs r1, #0
	movs r0, #8
	strb r0, [r2, #5]
	mov r3, sp
	strh r1, [r3, #0x24]
	strh r1, [r3, #0x26]
	ldr r0, _0802AD60 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x3c]
	ldr r0, _0802AD64 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x38]
	ldr r0, _0802AD68 @ =0x00130004
	bl GetDataRecord
	str r0, [sp, #0x40]
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r4, [sp, #0x4c]
	cmp r4, #5
	bhi _0802ADD4
	lsls r0, r4, #2
	ldr r1, _0802AD6C @ =_0802AD70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802AD5C: .4byte gEnemies
_0802AD60: .4byte 0x00100004
_0802AD64: .4byte 0x00110004
_0802AD68: .4byte 0x00130004
_0802AD6C: .4byte _0802AD70
_0802AD70: @ jump table
	.4byte _0802AD88 @ case 0
	.4byte _0802AD8E @ case 1
	.4byte _0802AD8E @ case 2
	.4byte _0802AD98 @ case 3
	.4byte _0802AD98 @ case 4
	.4byte _0802ADCA @ case 5
_0802AD88:
	movs r0, #0x1e
	str r0, [sp, #0x48]
	b _0802ADD4
_0802AD8E:
	movs r1, #1
	str r1, [sp, #0x4c]
	movs r2, #0xb4
	str r2, [sp, #0x48]
	b _0802ADD4
_0802AD98:
	movs r3, #2
	str r3, [sp, #0x4c]
	movs r4, #0xf0
	str r4, [sp, #0x48]
	b _0802ADD4
_0802ADA2:
	ldr r1, _0802ADB4 @ =0x030067F0
	ldr r6, [sp, #0x5c]
	adds r1, r6, r1
	ldr r0, [sp, #0x2c]
	lsls r4, r0
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	b _0802B106
	.align 2, 0
_0802ADB4: .4byte 0x030067F0
_0802ADB8:
	ldr r1, [sp, #0x50]
	str r1, [sp]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0x28]
	movs r3, #3
	bl sub_08029A0C
	b _0802B0F4
_0802ADCA:
	movs r2, #3
	str r2, [sp, #0x4c]
	movs r3, #0x96
	lsls r3, r3, #1
	str r3, [sp, #0x48]
_0802ADD4:
	ldr r1, _0802AE4C @ =0x080FB9FC
	ldr r0, [r7]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	ldr r3, _0802AE50 @ =0x0805289C
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #5
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	add sb, r0
	ldr r1, [sp, #0x50]
	cmp r1, #0
	beq _0802AE18
	movs r0, #1
	strh r0, [r6]
_0802AE18:
	ldrh r0, [r6]
	cmp r0, #1
	beq _0802AE66
	ldr r0, _0802AE54 @ =0x030067F0
	ldr r2, [sp, #0x5c]
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #0x2c]
	lsls r0, r3
	mvns r5, r0
_0802AE2C:
	ldr r1, [sp, #0x34]
	ldrh r0, [r1, #0xc]
	cmp r0, #7
	beq _0802AE44
	ldr r0, _0802AE58 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802AE5C
_0802AE44:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802B106
	.align 2, 0
_0802AE4C: .4byte 0x080FB9FC
_0802AE50: .4byte 0x0805289C
_0802AE54: .4byte 0x030067F0
_0802AE58: .4byte 0x030063D8
_0802AE5C:
	bl WaitFrame
	ldrh r0, [r6]
	cmp r0, #1
	bne _0802AE2C
_0802AE66:
	bl GetMultiplayerId
	ldr r2, [sp, #0x28]
	cmp r0, r2
	bne _0802AE86
	bl sub_08007544
	cmp r0, #0
	bne _0802AE86
	bl sub_080075AC
	cmp r0, #0
	bne _0802AE86
	movs r0, #0x2b
	bl PlaySE
_0802AE86:
	movs r3, #0
	str r3, [sp, #0x58]
	b _0802B0C2
_0802AE8C:
	ldr r0, _0802AF50 @ =gFrameCounter
	ldr r0, [r0]
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0802AEA4
	movs r0, #0x18
	ldr r1, [sp, #0x40]
	adds r1, #0xa0
	movs r2, #1
	bl LoadPalette
_0802AEA4:
	ldr r6, [sp, #0x58]
	cmp r6, #0
	bne _0802AEE2
	movs r0, #3
	str r0, [sp]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x50]
	bl sub_08029560
	cmp r0, #0
	beq _0802AEE2
	ldr r1, [sp, #0x30]
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	beq _0802AEE2
	ldr r0, [sp, #0x54]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
	cmp r0, #0
	bne _0802AED6
	b _0802ADA2
_0802AED6:
	ldr r2, [sp, #0x34]
	ldr r0, [r2, #0x7c]
	adds r0, #1
	str r0, [r2, #0x7c]
	movs r3, #0xa
	str r3, [sp, #0x58]
_0802AEE2:
	ldr r0, [sp, #0x58]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x58]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0802AEFC
	movs r6, #0
	str r6, [sp, #0x58]
_0802AEFC:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0802AFB8
	ldr r1, [sp, #0x58]
	cmp r1, #0
	bne _0802AFB8
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #0x10]
	mov r3, sl
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	add r2, sp, #0x20
	strh r0, [r2]
	ldr r4, [sp, #0x30]
	ldr r1, [r4, #0x14]
	mov r6, sb
	subs r1, r1, r6
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x22
	strh r1, [r0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r2, r3, #0
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r2, r0
	cmp r1, #0x80
	ble _0802AF58
	ldr r4, _0802AF54 @ =0xFFFFFF00
	adds r0, r4, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0802AF6A
	.align 2, 0
_0802AF50: .4byte gFrameCounter
_0802AF54: .4byte 0xFFFFFF00
_0802AF58:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802AF6A
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	adds r3, r0, #0
	orrs r3, r2
_0802AF6A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	subs r0, r0, r4
	movs r1, #7
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _0802AF94
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802AF94:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _0802AFA8
	ldr r3, _0802B118 @ =0xFFFFFF00
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802AFA8:
	movs r0, #0xff
	ands r7, r0
	ldr r4, [sp, #0x30]
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	bne _0802AFB8
	movs r6, #0
	str r6, [sp, #0x44]
_0802AFB8:
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r5, #0xf
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _0802AFDA
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802AFDA
	b _0802ADB8
_0802AFDA:
	ldr r3, _0802B11C @ =0x0805289C
	lsls r4, r7, #0x10
	asrs r2, r4, #0x10
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add sl, r0
	lsls r0, r2, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add sb, r0
	ands r2, r5
	str r4, [sp, #0x60]
	mov r4, sl
	asrs r5, r4, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r6, sb
	asrs r4, r6, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x20
	movs r2, #0x22
	add r2, sp
	mov r8, r2
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, [sp, #0x4c]
	adds r4, #0x1d
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	ldr r3, [sp, #0x3c]
	bl sub_08004214
	ldr r0, _0802B120 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B0BE
	bl sub_08007510
	cmp r0, #0
	bne _0802B0BE
	bl sub_08007604
	cmp r0, #0
	bne _0802B0BE
	bl sub_08007544
	cmp r0, #0
	bne _0802B0BE
	movs r3, #0
	ldrsh r0, [r6, r3]
	ldr r2, _0802B124 @ =0x080FB720
	ldr r6, [sp, #0x60]
	asrs r1, r6, #0x14
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r3, _0802B128 @ =0x080FBB24
	adds r1, r2, r3
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r0, r0, r1
	mov r3, r8
	movs r6, #0
	ldrsh r1, [r3, r6]
	ldr r3, _0802B12C @ =0x080FBB26
	adds r2, r2, r3
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	mov r2, sp
	ldrh r3, [r2, #0x24]
	str r5, [sp]
	add r6, sp, #0x10
	str r6, [sp, #4]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #8]
	ldr r6, [sp, #0x38]
	str r6, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802B0BE:
	bl WaitFrame
_0802B0C2:
	ldr r1, [sp, #0x48]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x48]
	cmp r1, #0
	beq _0802B0F4
	bl GetMultiplayerId
	ldr r1, [sp, #0x28]
	cmp r1, r0
	beq _0802B0DC
	b _0802AE8C
_0802B0DC:
	ldr r2, [sp, #0x34]
	ldrh r0, [r2, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802B0F4
	bl sub_080077C0
	cmp r0, #0
	bne _0802B0F4
	b _0802AE8C
_0802B0F4:
	ldr r2, _0802B130 @ =0x030067F0
	ldr r3, [sp, #0x5c]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x2c]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802B106:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B118: .4byte 0xFFFFFF00
_0802B11C: .4byte 0x0805289C
_0802B120: .4byte 0x030063D8
_0802B124: .4byte 0x080FB720
_0802B128: .4byte 0x080FBB24
_0802B12C: .4byte 0x080FBB26
_0802B130: .4byte 0x030067F0

	thumb_func_start sub_0802B134
sub_0802B134: @ 0x0802B134
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	str r0, [sp, #0x44]
	str r1, [sp, #0x48]
	movs r6, #0xd4
	adds r1, r0, #0
	adds r0, r1, #0
	muls r0, r6, r0
	ldr r5, _0802B1BC @ =gPlayers
	adds r0, r0, r5
	str r0, [sp, #0x4c]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x4c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov sl, r0
	mov r7, sl
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x44]
	cmp r2, r3
	bne _0802B1FE
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r5, r0, r5
	ldr r1, _0802B1C0 @ =0x080FBB84
	mov r2, sl
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _0802B1A4
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802B1A4:
	adds r0, r5, #0
	adds r0, #0x78
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802B1C4
	movs r0, #0
	b _0802B1C6
	.align 2, 0
_0802B1BC: .4byte gPlayers
_0802B1C0: .4byte 0x080FBB84
_0802B1C4:
	adds r0, r1, #1
_0802B1C6:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802B1E4
	ldr r0, _0802B1E0 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	ldr r0, [sp, #0x4c]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	b _0802B620
	.align 2, 0
_0802B1E0: .4byte 0x0009001B
_0802B1E4:
	ldr r2, [sp, #0x4c]
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802B1FE
	movs r0, #0
	strh r0, [r2]
_0802B1FE:
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	movs r6, #0
	adds r1, #0x18
	str r1, [sp, #0x78]
	mov r2, sp
	adds r2, #0x34
	str r2, [sp, #0x80]
	ldr r5, [sp, #0x4c]
	adds r5, #0x72
	ldr r3, [sp, #0x44]
	lsls r3, r3, #2
	str r3, [sp, #0x7c]
	adds r4, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x80]
_0802B220:
	lsls r1, r6, #1
	adds r0, r4, r1
	strh r2, [r0]
	adds r1, r3, r1
	strh r2, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802B220
	ldr r0, _0802B294 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x54]
	ldr r0, _0802B298 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x50]
	ldr r0, _0802B29C @ =0x00130004
	bl GetDataRecord
	str r0, [sp, #0x58]
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	cmp r7, #0
	beq _0802B260
	movs r0, #2
	strh r0, [r5]
_0802B260:
	ldrh r0, [r5]
	cmp r0, #1
	bhi _0802B2B2
	ldr r0, _0802B2A0 @ =0x030067F0
	ldr r1, [sp, #0x7c]
	adds r4, r1, r0
	movs r0, #1
	ldr r2, [sp, #0x48]
	lsls r0, r2
	mvns r6, r0
_0802B274:
	ldr r3, [sp, #0x4c]
	ldrh r0, [r3, #0xc]
	cmp r0, #7
	beq _0802B28C
	ldr r0, _0802B2A4 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802B2A8
_0802B28C:
	ldr r0, [r4]
	ands r0, r6
	str r0, [r4]
	b _0802B620
	.align 2, 0
_0802B294: .4byte 0x00100004
_0802B298: .4byte 0x00110004
_0802B29C: .4byte 0x00130004
_0802B2A0: .4byte 0x030067F0
_0802B2A4: .4byte 0x030063D8
_0802B2A8:
	bl WaitFrame
	ldrh r0, [r5]
	cmp r0, #1
	bls _0802B274
_0802B2B2:
	ldr r2, [sp, #0x4c]
	adds r2, #0xd0
	ldr r1, [r2]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0x5c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [sp, #0x60]
	movs r7, #0
	movs r4, #0
	str r4, [sp, #0x68]
	movs r6, #0
	str r2, [sp, #0x74]
	ldr r0, [sp, #0x4c]
	adds r0, #0x76
	str r0, [sp, #0x70]
	ldr r0, _0802B390 @ =gActiveEnemyMask
	ldr r0, [r0]
	mov sb, r0
	add r5, sp, #0x40
	add r1, sp, #0x20
	mov r8, r1
	ldr r2, _0802B394 @ =0x03003978
	mov ip, r2
_0802B2E8:
	movs r0, #1
	lsls r0, r6
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _0802B376
	ldr r2, _0802B398 @ =gEnemies
	movs r0, #0x94
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	ldrh r1, [r4, #0xa]
	cmp r1, #9
	beq _0802B376
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802B31C
	mov r2, ip
	ldrh r0, [r2]
	cmp r0, #8
	bne _0802B31C
	cmp r1, #0
	beq _0802B376
_0802B31C:
	cmp r1, #8
	beq _0802B376
	ldr r0, [r4, #0x10]
	ldr r3, [sp, #0x5c]
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	strh r0, [r5]
	ldr r0, [r4, #0x14]
	ldr r4, [sp, #0x60]
	subs r0, r0, r4
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bge _0802B344
	rsbs r2, r2, #0
_0802B344:
	mov r3, sl
	lsls r0, r3, #1
	add r0, sl
	lsls r0, r0, #2
	adds r3, r0, #0
	adds r3, #0x28
	cmp r2, r3
	bge _0802B376
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B35E
	rsbs r0, r0, #0
_0802B35E:
	cmp r0, r3
	bge _0802B376
	ldr r0, [sp, #0x68]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x68]
	add r0, r8
	strb r6, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802B376:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802B2E8
	mov r4, sl
	cmp r4, #5
	bhi _0802B3C8
	lsls r0, r4, #2
	ldr r1, _0802B39C @ =_0802B3A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B390: .4byte gActiveEnemyMask
_0802B394: .4byte 0x03003978
_0802B398: .4byte gEnemies
_0802B39C: .4byte _0802B3A0
_0802B3A0: @ jump table
	.4byte _0802B3C8 @ case 0
	.4byte _0802B3B8 @ case 1
	.4byte _0802B3B8 @ case 2
	.4byte _0802B3BE @ case 3
	.4byte _0802B3BE @ case 4
	.4byte _0802B3C4 @ case 5
_0802B3B8:
	movs r0, #1
	mov sl, r0
	b _0802B3C8
_0802B3BE:
	movs r1, #2
	mov sl, r1
	b _0802B3C8
_0802B3C4:
	movs r2, #3
	mov sl, r2
_0802B3C8:
	ldr r3, [sp, #0x6c]
	ldr r4, [sp, #0x44]
	cmp r3, r4
	bne _0802B3E6
	bl sub_08007544
	cmp r0, #0
	bne _0802B3E6
	bl sub_080075AC
	cmp r0, #0
	bne _0802B3E6
	movs r0, #0x2c
	bl PlaySE
_0802B3E6:
	cmp r7, #0
	bne _0802B440
	ldr r1, _0802B438 @ =0x080FB9FC
	ldr r2, [sp, #0x74]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _0802B43C @ =0x0805289C
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r2, #0x64
	muls r0, r2, r0
	ldr r4, [sp, #0x5c]
	adds r4, r4, r0
	str r4, [sp, #0x5c]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	ldr r4, [sp, #0x60]
	adds r4, r4, r0
	str r4, [sp, #0x60]
	mov r0, sl
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	adds r1, r4, #0
	ldr r2, [sp, #0x44]
	movs r3, #4
	bl sub_08029A0C
	b _0802B5FA
	.align 2, 0
_0802B438: .4byte 0x080FB9FC
_0802B43C: .4byte 0x0805289C
_0802B440:
	movs r1, #0
	str r1, [sp, #0x64]
	b _0802B532
_0802B446:
	movs r6, #0
	ldr r2, [sp, #0x68]
	cmp r6, r2
	bhs _0802B516
	add r3, sp, #0x40
	mov sb, r3
	movs r4, #0x42
	add r4, sp
	mov r8, r4
_0802B458:
	ldr r2, _0802B5A4 @ =gEnemies
	add r0, sp, #0x20
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	ldr r0, [r4, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, sb
	mov r3, r8
	bl sub_08005FC4
	ldr r3, [sp, #0x5c]
	asrs r0, r3, #0xc
	ldr r4, [sp, #0x60]
	asrs r1, r4, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r5, sl
	adds r5, #0x21
	lsls r2, r6, #1
	ldr r0, [sp, #0x78]
	adds r4, r0, r2
	ldr r1, [sp, #0x80]
	adds r2, r1, r2
	movs r3, #0
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x54]
	bl sub_08004214
	cmp r0, #0
	beq _0802B4C0
	ldr r0, [sp, #0x64]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
_0802B4C0:
	ldr r0, _0802B5A8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B50A
	bl sub_08007510
	cmp r0, #0
	bne _0802B50A
	bl sub_08007604
	cmp r0, #0
	bne _0802B50A
	bl sub_08007544
	cmp r0, #0
	bne _0802B50A
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r3, [r4]
	str r7, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r2, [sp, #0x54]
	str r2, [sp, #8]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
_0802B50A:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0x68]
	cmp r6, r0
	blo _0802B458
_0802B516:
	ldr r0, _0802B5AC @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802B52E
	movs r0, #0x18
	ldr r1, [sp, #0x58]
	adds r1, #0xa0
	movs r2, #1
	bl LoadPalette
_0802B52E:
	bl WaitFrame
_0802B532:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	cmp r1, r2
	bhs _0802B55E
	bl GetMultiplayerId
	ldr r3, [sp, #0x44]
	cmp r3, r0
	beq _0802B546
	b _0802B446
_0802B546:
	ldr r4, [sp, #0x4c]
	ldrh r0, [r4, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802B55E
	bl sub_080077C0
	cmp r0, #0
	bne _0802B55E
	b _0802B446
_0802B55E:
	movs r6, #0
	ldr r0, [sp, #0x68]
	cmp r6, r0
	bhs _0802B5FA
	ldr r5, _0802B5A4 @ =gEnemies
_0802B568:
	add r0, sp, #0x20
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r5]
	adds r4, r0, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x44]
	cmp r1, r2
	bne _0802B5B0
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	movs r3, #4
	bl sub_080297D4
	bl sub_08007544
	cmp r0, #0
	bne _0802B5B6
	bl sub_080075AC
	cmp r0, #0
	bne _0802B5B6
	movs r0, #0x1a
	bl PlaySE
	b _0802B5B6
	.align 2, 0
_0802B5A4: .4byte gEnemies
_0802B5A8: .4byte 0x030063D8
_0802B5AC: .4byte gFrameCounter
_0802B5B0:
	add r3, sp, #0x44
	ldrh r3, [r3]
	strh r3, [r4, #0x34]
_0802B5B6:
	ldr r0, _0802B630 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B5EE
	bl sub_08007510
	cmp r0, #0
	bne _0802B5EE
	bl sub_08007604
	cmp r0, #0
	bne _0802B5EE
	bl sub_08007544
	cmp r0, #0
	bne _0802B5EE
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	mov r4, sl
	str r4, [sp]
	ldr r2, [sp, #0x44]
	movs r3, #4
	bl sub_08029A0C
_0802B5EE:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0x68]
	cmp r6, r0
	blo _0802B568
_0802B5FA:
	ldr r1, [sp, #0x70]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802B60E
_0802B602:
	bl WaitFrame
	ldr r2, [sp, #0x70]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802B602
_0802B60E:
	ldr r2, _0802B634 @ =0x030067F0
	ldr r3, [sp, #0x7c]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x48]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802B620:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B630: .4byte 0x030063D8
_0802B634: .4byte 0x030067F0

	thumb_func_start sub_0802B638
sub_0802B638: @ 0x0802B638
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r6, #0xd4
	adds r1, r0, #0
	adds r0, r1, #0
	muls r0, r6, r0
	ldr r5, _0802B6B8 @ =gPlayers
	adds r7, r0, r5
	bl GetMultiplayerId
	mov sl, r0
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov r8, r0
	mov r2, r8
	str r2, [sp, #0xc]
	ldr r4, [sp, #4]
	cmp sl, r4
	bne _0802B6FA
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r5, r0, r5
	ldr r1, _0802B6BC @ =0x080FBB84
	mov r2, r8
	lsls r0, r2, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r2, #0
	beq _0802B6A2
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802B6A2:
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802B6C0
	movs r0, #0
	b _0802B6C2
	.align 2, 0
_0802B6B8: .4byte gPlayers
_0802B6BC: .4byte 0x080FBB84
_0802B6C0:
	adds r0, r1, #1
_0802B6C2:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802B6E0
	ldr r0, _0802B6DC @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	strh r4, [r7, #0x12]
	strh r4, [r7, #0x14]
	b _0802BA1E
	.align 2, 0
_0802B6DC: .4byte 0x0009001B
_0802B6E0:
	adds r2, r7, #0
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802B6FA
	movs r0, #0
	strh r0, [r2]
_0802B6FA:
	adds r0, r7, #0
	adds r0, #0x72
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r2, [sp, #4]
	lsls r2, r2, #2
	str r2, [sp, #0x18]
	cmp r1, #1
	bhi _0802B71E
_0802B70C:
	ldrh r0, [r7, #0xc]
	cmp r0, #7
	bne _0802B714
	b _0802B8F6
_0802B714:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #1
	bls _0802B70C
_0802B71E:
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	str r0, [sp, #0x10]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x14]
	movs r5, #0
	movs r4, #0
	movs r0, #0x76
	adds r0, r0, r7
	mov sb, r0
	b _0802B7A6
_0802B73E:
	movs r0, #0xd4
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0802B810 @ =gPlayers
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _0802B7A0
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldr r2, [sp, #0x10]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r0, r8
	cmp r0, #0
	beq _0802B7A0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802B782
	rsbs r0, r0, #0
_0802B782:
	cmp r0, #0xc
	bgt _0802B7A0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802B790
	rsbs r0, r0, #0
_0802B790:
	cmp r0, #0xc
	bgt _0802B7A0
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	add r0, sp
	strb r4, [r0]
_0802B7A0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802B7A6:
	bl sub_08001EC4
	cmp r4, r0
	blo _0802B73E
	movs r4, #0
	cmp r4, r5
	bhs _0802B7C8
_0802B7B4:
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	bl StartItemUseEffect
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0802B7B4
_0802B7C8:
	mov r2, sb
	ldrh r0, [r2]
	cmp r0, #0
	bne _0802B7DC
_0802B7D0:
	bl WaitFrame
	mov r4, sb
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802B7D0
_0802B7DC:
	ldr r0, [sp, #4]
	cmp sl, r0
	beq _0802B7E4
	b _0802B908
_0802B7E4:
	bl sub_08007544
	cmp r0, #0
	bne _0802B7FA
	bl sub_080075AC
	cmp r0, #0
	bne _0802B7FA
	movs r0, #0x2d
	bl PlaySE
_0802B7FA:
	ldr r1, [sp, #4]
	cmp sl, r1
	beq _0802B802
	b _0802B908
_0802B802:
	mov r2, r8
	cmp r2, #0
	bne _0802B814
	movs r4, #1
	str r4, [sp, #0xc]
	b _0802B866
	.align 2, 0
_0802B810: .4byte gPlayers
_0802B814:
	mov r0, r8
	cmp r0, #0
	blt _0802B866
	cmp r0, #5
	bgt _0802B866
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B82C
	rsbs r0, r0, #0
_0802B82C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #9
	bl __umodsi3
	adds r0, #0x1b
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B84A
	rsbs r0, r0, #0
_0802B84A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #5
	bl __umodsi3
	adds r0, #0xb
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r8
	muls r0, r4, r0
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
_0802B866:
	adds r2, r7, #0
	adds r2, #0x7a
	ldrh r0, [r2]
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _0802B886
	strh r3, [r2]
_0802B886:
	movs r4, #0
	movs r3, #0
	adds r5, r7, #0
	adds r5, #0x24
	ldr r0, _0802B8A8 @ =0x0000FFFF
	adds r6, r0, #0
_0802B892:
	ldr r0, [r7, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #3
	beq _0802B8CC
	cmp r0, #3
	ble _0802B8AC
	cmp r0, #4
	beq _0802B8D4
	b _0802B8E4
	.align 2, 0
_0802B8A8: .4byte 0x0000FFFF
_0802B8AC:
	cmp r0, #1
	blt _0802B8E4
	mov r0, r8
	cmp r0, #2
	bls _0802B8E4
	strh r3, [r1]
	adds r1, r5, r2
	ldrh r0, [r1]
	orrs r0, r6
	strh r0, [r1]
	movs r0, #0x73
	str r3, [sp, #0x1c]
	bl StopSE
	ldr r3, [sp, #0x1c]
	b _0802B8E4
_0802B8CC:
	mov r0, r8
	cmp r0, #3
	bls _0802B8E4
	b _0802B8DA
_0802B8D4:
	mov r0, r8
	cmp r0, #4
	bls _0802B8E4
_0802B8DA:
	strh r3, [r1]
	adds r1, r5, r2
	ldrh r0, [r1]
	orrs r0, r6
	strh r0, [r1]
_0802B8E4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0802B892
	movs r0, #0
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	b _0802BA0C
_0802B8F6:
	ldr r2, _0802B904 @ =0x030067F0
	ldr r1, [sp, #0x18]
	adds r2, r1, r2
	movs r1, #1
	ldr r4, [sp, #8]
	lsls r1, r4
	b _0802BA18
	.align 2, 0
_0802B904: .4byte 0x030067F0
_0802B908:
	movs r4, #0
	cmp r4, r5
	blo _0802B910
	b _0802BA0C
_0802B910:
	mov r0, r8
	cmp r0, #0
	beq _0802BA0C
_0802B916:
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, sl
	bne _0802B9FC
	movs r0, #0xd4
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _0802B9B0 @ =gPlayers
	adds r6, r1, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B938
	rsbs r0, r0, #0
_0802B938:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #9
	bl __umodsi3
	adds r0, #0x1b
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B956
	rsbs r0, r0, #0
_0802B956:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #5
	bl __umodsi3
	adds r0, #0xb
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r8
	muls r0, r4, r0
	subs r0, r0, r5
	lsls r0, r0, #0x10
	adds r2, r6, #0
	adds r2, #0x7a
	lsrs r0, r0, #0x10
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _0802B98E
	strh r3, [r2]
_0802B98E:
	movs r4, #0
	movs r3, #0
	adds r5, r6, #0
	adds r5, #0x24
	ldr r0, _0802B9B4 @ =0x0000FFFF
	adds r7, r0, #0
_0802B99A:
	ldr r0, [r6, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #3
	beq _0802B9D8
	cmp r0, #3
	ble _0802B9B8
	cmp r0, #4
	beq _0802B9E0
	b _0802B9F0
	.align 2, 0
_0802B9B0: .4byte gPlayers
_0802B9B4: .4byte 0x0000FFFF
_0802B9B8:
	cmp r0, #1
	blt _0802B9F0
	mov r0, r8
	cmp r0, #2
	bls _0802B9F0
	strh r3, [r1]
	adds r1, r5, r2
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
	movs r0, #0x73
	str r3, [sp, #0x1c]
	bl StopSE
	ldr r3, [sp, #0x1c]
	b _0802B9F0
_0802B9D8:
	mov r0, r8
	cmp r0, #3
	bls _0802B9F0
	b _0802B9E6
_0802B9E0:
	mov r0, r8
	cmp r0, #4
	bls _0802B9F0
_0802B9E6:
	strh r3, [r1]
	adds r1, r5, r2
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
_0802B9F0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0802B99A
	b _0802BA0C
_0802B9FC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bhs _0802BA0C
	mov r1, r8
	cmp r1, #0
	bne _0802B916
_0802BA0C:
	ldr r2, _0802BA30 @ =0x030067F0
	ldr r4, [sp, #0x18]
	adds r2, r4, r2
	movs r1, #1
	ldr r0, [sp, #8]
	lsls r1, r0
_0802BA18:
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802BA1E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BA30: .4byte 0x030067F0

	thumb_func_start sub_0802BA34
sub_0802BA34: @ 0x0802BA34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0xd4
	mov r8, r0
	ldr r1, [sp, #4]
	mov r0, r8
	muls r0, r1, r0
	ldr r5, _0802BAB4 @ =gPlayers
	adds r6, r0, r5
	bl GetMultiplayerId
	mov sl, r0
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r7, r0, #0x1d
	mov sb, r7
	ldr r2, [sp, #4]
	cmp sl, r2
	bne _0802BAF6
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r5, r0, r5
	ldr r1, _0802BAB8 @ =0x080FBB84
	lsls r0, r7, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r7, #0
	beq _0802BA9E
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802BA9E:
	adds r0, r5, #0
	adds r0, #0x78
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802BABC
	movs r0, #0
	b _0802BABE
	.align 2, 0
_0802BAB4: .4byte gPlayers
_0802BAB8: .4byte 0x080FBB84
_0802BABC:
	adds r0, r1, #1
_0802BABE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802BADC
	ldr r0, _0802BAD8 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	strh r4, [r6, #0x12]
	strh r4, [r6, #0x14]
	b _0802BD18
	.align 2, 0
_0802BAD8: .4byte 0x0009001B
_0802BADC:
	adds r2, r6, #0
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802BAF6
	movs r0, #0
	strh r0, [r2]
_0802BAF6:
	adds r0, r6, #0
	adds r0, #0x72
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r0, [sp, #4]
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	cmp r1, #1
	bhi _0802BB1A
_0802BB08:
	ldrh r0, [r6, #0xc]
	cmp r0, #7
	bne _0802BB10
	b _0802BD06
_0802BB10:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #1
	bls _0802BB08
_0802BB1A:
	ldr r1, [sp, #4]
	cmp sl, r1
	bne _0802BB36
	bl sub_08007544
	cmp r0, #0
	bne _0802BB36
	bl sub_080075AC
	cmp r0, #0
	bne _0802BB36
	movs r0, #0x2e
	bl PlaySE
_0802BB36:
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	str r0, [sp, #0xc]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x10]
	movs r5, #0
	movs r4, #0
	movs r2, #0x76
	adds r2, r2, r6
	mov r8, r2
	b _0802BBBC
_0802BB56:
	movs r0, #0xd4
	muls r0, r4, r0
	ldr r1, _0802BC6C @ =gPlayers
	adds r0, r0, r1
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _0802BBB6
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldr r2, [sp, #0xc]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r7, #5
	beq _0802BBAA
	lsls r0, r2, #0x10
	asrs r1, r0, #0x13
	cmp r1, #0
	bge _0802BB94
	rsbs r1, r1, #0
_0802BB94:
	adds r0, r7, #1
	lsls r2, r0, #1
	cmp r1, r2
	bge _0802BBB6
	lsls r0, r3, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802BBA6
	rsbs r0, r0, #0
_0802BBA6:
	cmp r0, r2
	bge _0802BBB6
_0802BBAA:
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	add r0, sp
	strb r4, [r0]
_0802BBB6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802BBBC:
	bl sub_08001EC4
	cmp r4, r0
	blo _0802BB56
	movs r4, #0
	cmp r4, r5
	bhs _0802BBDE
_0802BBCA:
	mov r2, sp
	adds r0, r2, r4
	ldrb r0, [r0]
	bl sub_0802C66C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0802BBCA
_0802BBDE:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802BBF2
_0802BBE6:
	bl WaitFrame
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802BBE6
_0802BBF2:
	ldr r0, [sp, #4]
	cmp sl, r0
	bne _0802BC70
	movs r5, #0
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r2, r2, r0
	mov r8, r2
_0802BC0A:
	ldr r0, [r6, #0x1c]
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802BC1A
	cmp r0, #6
	bne _0802BC58
_0802BC1A:
	bl sub_08007510
	cmp r0, #0
	beq _0802BC26
	bl sub_08046104
_0802BC26:
	ldr r0, [r6, #0x1c]
	adds r0, r4, r0
	movs r1, #6
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r0, r4
	movs r1, #0xe1
	lsls r1, r1, #4
	strh r1, [r0]
	mov r0, r8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x20]
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r0, r1, r0
	strh r7, [r0, #0xa]
	ldr r0, [r6, #0x20]
	adds r0, r1, r0
	strh r7, [r0, #0xc]
	ldr r0, [r6, #0x20]
	adds r1, r1, r0
	strh r7, [r1, #0xe]
	movs r5, #0xd
_0802BC58:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xc
	bls _0802BC0A
	movs r0, #0
	strh r0, [r6, #0x12]
	strh r0, [r6, #0x14]
	b _0802BD06
	.align 2, 0
_0802BC6C: .4byte gPlayers
_0802BC70:
	movs r4, #0
	cmp r4, r5
	bhs _0802BD06
	movs r0, #0xd4
	mov r1, sl
	muls r1, r0, r1
_0802BC7C:
	mov r2, sp
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, sl
	bne _0802BCFC
	ldr r0, _0802BCF8 @ =gPlayers
	adds r6, r1, r0
	movs r5, #0
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r2, r2, r0
	mov r8, r2
_0802BC9C:
	ldr r0, [r6, #0x1c]
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802BCAC
	cmp r0, #6
	bne _0802BCEA
_0802BCAC:
	bl sub_08007510
	cmp r0, #0
	beq _0802BCB8
	bl sub_08046104
_0802BCB8:
	ldr r0, [r6, #0x1c]
	adds r0, r4, r0
	movs r1, #6
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r0, r4
	movs r1, #0xe1
	lsls r1, r1, #4
	strh r1, [r0]
	mov r0, r8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x20]
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r0, r1, r0
	strh r7, [r0, #0xa]
	ldr r0, [r6, #0x20]
	adds r0, r1, r0
	strh r7, [r0, #0xc]
	ldr r0, [r6, #0x20]
	adds r1, r1, r0
	strh r7, [r1, #0xe]
	movs r5, #0xd
_0802BCEA:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xc
	bls _0802BC9C
	b _0802BD06
	.align 2, 0
_0802BCF8: .4byte gPlayers
_0802BCFC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0802BC7C
_0802BD06:
	ldr r2, _0802BD28 @ =0x030067F0
	ldr r1, [sp, #0x14]
	adds r2, r1, r2
	movs r1, #1
	ldr r0, [sp, #8]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802BD18:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BD28: .4byte 0x030067F0

	thumb_func_start sub_0802BD2C
sub_0802BD2C: @ 0x0802BD2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	str r1, [sp, #8]
	movs r6, #0xd4
	mov r0, sb
	muls r0, r6, r0
	ldr r5, _0802BDA4 @ =gPlayers
	adds r0, r0, r5
	mov r8, r0
	bl GetMultiplayerId
	mov sl, r0
	mov r0, r8
	adds r0, #0xd0
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r7, r0, #0x1d
	cmp sl, sb
	bne _0802BDF2
	ldr r4, [r1, #4]
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x1c
	bl GetMultiplayerId
	muls r0, r6, r0
	adds r5, r0, r5
	ldr r1, _0802BDA8 @ =0x080FBB84
	lsls r0, r7, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r7, #0
	beq _0802BD8C
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802BD8C:
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802BDAC
	movs r0, #0
	b _0802BDAE
	.align 2, 0
_0802BDA4: .4byte gPlayers
_0802BDA8: .4byte 0x080FBB84
_0802BDAC:
	adds r0, r1, #1
_0802BDAE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0802BDD8
	ldr r0, _0802BDD0 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	mov r2, r8
	strh r4, [r2, #0x12]
	strh r4, [r2, #0x14]
	ldr r0, _0802BDD4 @ =0x030067F0
	mov r3, sb
	lsls r2, r3, #2
	adds r2, r2, r0
	b _0802BF8E
	.align 2, 0
_0802BDD0: .4byte 0x0009001B
_0802BDD4: .4byte 0x030067F0
_0802BDD8:
	mov r2, r8
	adds r2, #0x78
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802BDF2
	movs r0, #0
	strh r0, [r2]
_0802BDF2:
	mov r0, r8
	adds r0, #0x72
	ldrh r1, [r0]
	mov r2, sb
	lsls r2, r2, #2
	str r2, [sp, #0x14]
	adds r6, r0, #0
	cmp r1, #1
	bhi _0802BE36
	ldr r0, _0802BF6C @ =0x030067F0
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #8]
	lsls r0, r3
	mvns r5, r0
_0802BE10:
	mov r1, r8
	ldrh r0, [r1, #0xc]
	cmp r0, #7
	bne _0802BE1A
	b _0802BF62
_0802BE1A:
	ldr r0, _0802BF70 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802BE2C
	b _0802BF62
_0802BE2C:
	bl WaitFrame
	ldrh r0, [r6]
	cmp r0, #1
	bls _0802BE10
_0802BE36:
	cmp sl, sb
	bne _0802BE50
	bl sub_08007544
	cmp r0, #0
	bne _0802BE50
	bl sub_080075AC
	cmp r0, #0
	bne _0802BE50
	movs r0, #0x2f
	bl PlaySE
_0802BE50:
	mov r2, r8
	adds r2, #0xd0
	ldr r1, [r2]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov ip, r0
	movs r6, #0
	movs r5, #0
	str r2, [sp, #0x10]
	movs r2, #0x76
	add r2, r8
	mov sl, r2
	ldr r0, _0802BF74 @ =gActiveEnemyMask
	ldr r2, [r0]
_0802BE76:
	movs r0, #1
	lsls r0, r5
	ands r0, r2
	cmp r0, #0
	beq _0802BED6
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r3, _0802BF78 @ =gEnemies
	ldr r0, [r3]
	adds r3, r0, r1
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _0802BED6
	ldr r0, [r3, #0x10]
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r4, r0, #0x10
	ldr r0, [r3, #0x14]
	mov r3, ip
	subs r0, r0, r3
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	cmp r7, #5
	beq _0802BECA
	lsls r0, r4, #0x10
	asrs r3, r0, #0x13
	cmp r3, #0
	bge _0802BEB4
	rsbs r3, r3, #0
_0802BEB4:
	adds r0, r7, #4
	lsls r4, r0, #1
	cmp r3, r4
	bge _0802BED6
	lsls r0, r1, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802BEC6
	rsbs r0, r0, #0
_0802BEC6:
	cmp r0, r4
	bge _0802BED6
_0802BECA:
	adds r0, r6, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	add r0, sp
	strb r5, [r0]
_0802BED6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0802BE76
	movs r5, #0
	cmp r5, r6
	bhs _0802BF34
	ldr r2, _0802BF78 @ =gEnemies
	lsls r0, r7, #4
	subs r4, r0, r7
_0802BEEC:
	mov r7, sp
	adds r0, r7, r5
	ldrb r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, [r2]
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x64
	ldrh r1, [r0]
	lsrs r1, r1, #1
	subs r1, #0x19
	subs r1, r4, r1
	ldr r7, [sp, #0x10]
	ldr r0, [r7]
	ldrb r0, [r0, #7]
	lsrs r0, r0, #1
	cmp r1, r0
	ble _0802BF2A
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #2
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r1]
	movs r0, #1
	strh r0, [r3, #0x36]
	mov r0, sb
	strh r0, [r3, #0x34]
_0802BF2A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _0802BEEC
_0802BF34:
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802BF88
	ldr r0, _0802BF6C @ =0x030067F0
	ldr r2, [sp, #0x14]
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #8]
	lsls r0, r3
	mvns r5, r0
_0802BF4A:
	mov r7, r8
	ldrh r0, [r7, #0xc]
	cmp r0, #7
	beq _0802BF62
	ldr r0, _0802BF70 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802BF7C
_0802BF62:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802BF9A
	.align 2, 0
_0802BF6C: .4byte 0x030067F0
_0802BF70: .4byte 0x030063D8
_0802BF74: .4byte gActiveEnemyMask
_0802BF78: .4byte gEnemies
_0802BF7C:
	bl WaitFrame
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802BF4A
_0802BF88:
	ldr r2, _0802BFAC @ =0x030067F0
	ldr r3, [sp, #0x14]
	adds r2, r3, r2
_0802BF8E:
	movs r1, #1
	ldr r7, [sp, #8]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802BF9A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BFAC: .4byte 0x030067F0

	thumb_func_start sub_0802BFB0
sub_0802BFB0: @ 0x0802BFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _0802C03C @ =gPlayers
	adds r1, r1, r0
	mov sl, r1
	movs r7, #0
	ldr r1, _0802C040 @ =0x030067F0
	mov r2, sb
	lsls r0, r2, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802BFF2
	movs r3, #1
_0802BFDE:
	adds r7, #1
	cmp r7, #0xf
	bls _0802BFE6
	b _0802C152
_0802BFE6:
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802BFDE
_0802BFF2:
	cmp r7, #0xf
	bls _0802BFF8
	b _0802C152
_0802BFF8:
	ldr r5, _0802C044 @ =0x030067C0
	mov r0, sb
	lsls r0, r0, #2
	mov r8, r0
	add r5, r8
	ldr r1, [r5]
	lsls r6, r7, #2
	adds r4, r6, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001430
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	mov r0, sl
	adds r0, #0xd0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	mov r4, r8
	cmp r0, #7
	bls _0802C032
	b _0802C124
_0802C032:
	lsls r0, r0, #2
	ldr r1, _0802C048 @ =_0802C04C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C03C: .4byte gPlayers
_0802C040: .4byte 0x030067F0
_0802C044: .4byte 0x030067C0
_0802C048: .4byte _0802C04C
_0802C04C: @ jump table
	.4byte _0802C06C @ case 0
	.4byte _0802C084 @ case 1
	.4byte _0802C09C @ case 2
	.4byte _0802C0B4 @ case 3
	.4byte _0802C0CC @ case 4
	.4byte _0802C0FC @ case 5
	.4byte _0802C0E4 @ case 6
	.4byte _0802C114 @ case 7
_0802C06C:
	ldr r0, _0802C07C @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C080 @ =sub_08029C44
	b _0802C122
	.align 2, 0
_0802C07C: .4byte 0x030067C0
_0802C080: .4byte sub_08029C44
_0802C084:
	ldr r0, _0802C094 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C098 @ =sub_0802A0FC
	b _0802C122
	.align 2, 0
_0802C094: .4byte 0x030067C0
_0802C098: .4byte sub_0802A0FC
_0802C09C:
	ldr r0, _0802C0AC @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C0B0 @ =sub_0802A60C
	b _0802C122
	.align 2, 0
_0802C0AC: .4byte 0x030067C0
_0802C0B0: .4byte sub_0802A60C
_0802C0B4:
	ldr r0, _0802C0C4 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C0C8 @ =sub_0802AB94
	b _0802C122
	.align 2, 0
_0802C0C4: .4byte 0x030067C0
_0802C0C8: .4byte sub_0802AB94
_0802C0CC:
	ldr r0, _0802C0DC @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C0E0 @ =sub_0802B134
	b _0802C122
	.align 2, 0
_0802C0DC: .4byte 0x030067C0
_0802C0E0: .4byte sub_0802B134
_0802C0E4:
	ldr r0, _0802C0F4 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C0F8 @ =sub_0802B638
	b _0802C122
	.align 2, 0
_0802C0F4: .4byte 0x030067C0
_0802C0F8: .4byte sub_0802B638
_0802C0FC:
	ldr r0, _0802C10C @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C110 @ =sub_0802BA34
	b _0802C122
	.align 2, 0
_0802C10C: .4byte 0x030067C0
_0802C110: .4byte sub_0802BA34
_0802C114:
	ldr r0, _0802C160 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0802C164 @ =sub_0802BD2C
_0802C122:
	str r1, [r0, #0xc]
_0802C124:
	ldr r0, _0802C160 @ =0x030067C0
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #0x20]
	ldr r2, _0802C168 @ =0x000007FC
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, _0802C16C @ =sub_0802F0B4
	str r1, [r0, #0x24]
	mov r1, sb
	adds r2, r7, #0
	bl CreateThread
	ldr r2, _0802C170 @ =0x030067F0
	adds r2, r4, r2
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0802C152:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C160: .4byte 0x030067C0
_0802C164: .4byte sub_0802BD2C
_0802C168: .4byte 0x000007FC
_0802C16C: .4byte sub_0802F0B4
_0802C170: .4byte 0x030067F0

	thumb_func_start sub_0802C174
sub_0802C174: @ 0x0802C174
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0802C230 @ =gPlayers
	adds r1, r1, r0
	mov ip, r1
	ldr r5, _0802C234 @ =0x0000FFFF
	movs r6, #1
	rsbs r6, r6, #0
	movs r4, #0
	ldr r0, _0802C238 @ =gActiveEnemyMask
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _0802C23C @ =0x080FB9FC
	mov sl, r0
	ldr r1, _0802C240 @ =0x00007FFF
	mov sb, r1
_0802C1AA:
	movs r0, #1
	lsls r0, r4
	ldr r2, [sp]
	ands r0, r2
	cmp r0, #0
	beq _0802C212
	lsls r3, r4, #1
	mov r1, ip
	adds r1, #0xb8
	adds r1, r1, r3
	mov r7, ip
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	add r0, sl
	ldrh r1, [r1]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #8
	ble _0802C1DE
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802C1DE:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r7, #8
	rsbs r7, r7, #0
	cmp r0, r7
	bge _0802C1F0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802C1F0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802C1FA
	rsbs r0, r0, #0
_0802C1FA:
	cmp r0, r8
	bgt _0802C212
	mov r0, ip
	adds r0, #0xae
	adds r0, r0, r3
	ldrh r1, [r0]
	cmp r5, r1
	bls _0802C212
	cmp r1, sb
	beq _0802C212
	adds r5, r1, #0
	adds r6, r4, #0
_0802C212:
	adds r4, #1
	cmp r4, #4
	bls _0802C1AA
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0802C248
	ldr r2, _0802C244 @ =gEnemies
	movs r0, #0x94
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	b _0802C24A
	.align 2, 0
_0802C230: .4byte gPlayers
_0802C234: .4byte 0x0000FFFF
_0802C238: .4byte gActiveEnemyMask
_0802C23C: .4byte 0x080FB9FC
_0802C240: .4byte 0x00007FFF
_0802C244: .4byte gEnemies
_0802C248:
	movs r0, #0
_0802C24A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start ItemUseEffectThread
ItemUseEffectThread: @ 0x0802C25C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	str r1, [sp, #0x28]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #8
	strb r0, [r1, #5]
	add r5, sp, #0x24
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	ldr r0, _0802C2B4 @ =0x00100004
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0802C2B8 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802C2BC @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r7, #0
	cmp r6, #3
	bhi _0802C2C4
	movs r0, #0xd4
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0802C2C0 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x2c]
	b _0802C2D4
	.align 2, 0
_0802C2B4: .4byte 0x00100004
_0802C2B8: .4byte 0x00110004
_0802C2BC: .4byte 0x00130004
_0802C2C0: .4byte gPlayers
_0802C2C4:
	ldr r1, _0802C304 @ =gEnemies
	movs r0, #0x94
	muls r0, r6, r0
	ldr r2, _0802C308 @ =0xFFFFFDB0
	adds r0, r0, r2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
_0802C2D4:
	cmp r7, #0
	bne _0802C398
	movs r0, #0
	mov sb, r0
_0802C2DC:
	cmp r6, #3
	bhi _0802C30C
	ldr r0, [sp, #0x2c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
	b _0802C32C
	.align 2, 0
_0802C304: .4byte gEnemies
_0802C308: .4byte 0xFFFFFDB0
_0802C30C:
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
_0802C32C:
	add r5, sp, #0x20
	mov r4, sp
	adds r4, #0x22
	mov r0, sb
	str r0, [sp]
	movs r0, #0x14
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	mov r3, r8
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0802C3A4 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0802C390
	bl sub_08007510
	cmp r0, #0
	bne _0802C390
	bl sub_08007604
	cmp r0, #0
	bne _0802C390
	bl sub_08007544
	cmp r0, #0
	bne _0802C390
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #1
	mov r2, sp
	ldrh r3, [r2, #0x24]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0xc]
	movs r2, #0x14
	bl sub_08004344
_0802C390:
	bl WaitFrame
	cmp r7, #0
	beq _0802C2DC
_0802C398:
	cmp r6, #3
	bhi _0802C3AC
	ldr r0, _0802C3A8 @ =0x030067F0
	lsls r2, r6, #2
	b _0802C3B2
	.align 2, 0
_0802C3A4: .4byte gMapLayer_03003910
_0802C3A8: .4byte 0x030067F0
_0802C3AC:
	ldr r0, _0802C3D0 @ =0x030067A0
	subs r2, r6, #4
	lsls r2, r2, #2
_0802C3B2:
	adds r2, r2, r0
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C3D0: .4byte 0x030067A0

	thumb_func_start sub_0802C3D4
sub_0802C3D4: @ 0x0802C3D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x28]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #8
	strb r0, [r1, #5]
	add r5, sp, #0x24
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	ldr r0, _0802C42C @ =0x00100004
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0802C430 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802C434 @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r6, #0
	cmp r7, #3
	bhi _0802C43C
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0802C438 @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x2c]
	b _0802C44C
	.align 2, 0
_0802C42C: .4byte 0x00100004
_0802C430: .4byte 0x00110004
_0802C434: .4byte 0x00130004
_0802C438: .4byte gPlayers
_0802C43C:
	ldr r1, _0802C480 @ =gEnemies
	movs r0, #0x94
	muls r0, r7, r0
	ldr r2, _0802C484 @ =0xFFFFFDB0
	adds r0, r0, r2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
_0802C44C:
	lsls r0, r7, #2
	str r0, [sp, #0x34]
	cmp r6, #0
	bne _0802C514
	movs r1, #0
	mov sb, r1
_0802C458:
	cmp r7, #3
	bhi _0802C488
	ldr r0, [sp, #0x2c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
	b _0802C4A8
	.align 2, 0
_0802C480: .4byte gEnemies
_0802C484: .4byte 0xFFFFFDB0
_0802C488:
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
_0802C4A8:
	add r5, sp, #0x20
	mov r4, sp
	adds r4, #0x22
	mov r0, sb
	str r0, [sp]
	movs r0, #0x15
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	mov r3, r8
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0802C538 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0802C50C
	bl sub_08007510
	cmp r0, #0
	bne _0802C50C
	bl sub_08007604
	cmp r0, #0
	bne _0802C50C
	bl sub_08007544
	cmp r0, #0
	bne _0802C50C
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #1
	mov r2, sp
	ldrh r3, [r2, #0x24]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0xc]
	movs r2, #0x15
	bl sub_08004344
_0802C50C:
	bl WaitFrame
	cmp r6, #0
	beq _0802C458
_0802C514:
	ldr r2, _0802C53C @ =0x030067F0
	ldr r0, [sp, #0x34]
	adds r2, r0, r2
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C538: .4byte gMapLayer_03003910
_0802C53C: .4byte 0x030067F0

	thumb_func_start StartItemUseEffect
StartItemUseEffect: @ 0x0802C540
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	cmp r0, #3
	bhi _0802C5D4
	movs r7, #0
	ldr r0, _0802C5C8 @ =0x030067F0
	mov r1, r8
	lsls r2, r1, #2
	adds r3, r2, r0
	movs r1, #1
	ldr r0, [r3]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0802C578
	adds r2, r3, #0
	movs r3, #1
_0802C566:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802C654
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C566
_0802C578:
	cmp r7, #0xf
	bhi _0802C654
	ldr r5, _0802C5CC @ =0x030067C0
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802C5D0 @ =ItemUseEffectThread
	str r1, [r4, #0xc]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl CreateThread
	ldr r2, _0802C5C8 @ =0x030067F0
	adds r2, r6, r2
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _0802C654
	.align 2, 0
_0802C5C8: .4byte 0x030067F0
_0802C5CC: .4byte 0x030067C0
_0802C5D0: .4byte ItemUseEffectThread
_0802C5D4:
	movs r0, #4
	rsbs r0, r0, #0
	add r8, r0
	movs r7, #0
	ldr r1, _0802C660 @ =0x030067A0
	mov r2, r8
	lsls r0, r2, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802C602
	movs r3, #1
_0802C5F0:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802C654
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C5F0
_0802C602:
	cmp r7, #0xf
	bhi _0802C654
	ldr r5, _0802C664 @ =0x030067D0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	ldr r0, _0802C668 @ =ItemUseEffectThread
	str r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	mov r1, r8
	adds r1, #4
	adds r0, r4, #0
	adds r2, r7, #0
	bl CreateThread
	ldr r0, _0802C660 @ =0x030067A0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802C654:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C660: .4byte 0x030067A0
_0802C664: .4byte 0x030067D0
_0802C668: .4byte ItemUseEffectThread

	thumb_func_start sub_0802C66C
sub_0802C66C: @ 0x0802C66C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	cmp r0, #3
	bhi _0802C700
	movs r7, #0
	ldr r0, _0802C6F4 @ =0x030067F0
	mov r1, r8
	lsls r2, r1, #2
	adds r3, r2, r0
	movs r1, #1
	ldr r0, [r3]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0802C6A4
	adds r2, r3, #0
	movs r3, #1
_0802C692:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802C780
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C692
_0802C6A4:
	cmp r7, #0xf
	bhi _0802C780
	ldr r5, _0802C6F8 @ =0x030067C0
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802C6FC @ =sub_0802C3D4
	str r1, [r4, #0xc]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl CreateThread
	ldr r2, _0802C6F4 @ =0x030067F0
	adds r2, r6, r2
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _0802C780
	.align 2, 0
_0802C6F4: .4byte 0x030067F0
_0802C6F8: .4byte 0x030067C0
_0802C6FC: .4byte sub_0802C3D4
_0802C700:
	movs r0, #4
	rsbs r0, r0, #0
	add r8, r0
	movs r7, #0
	ldr r1, _0802C78C @ =0x030067A0
	mov r2, r8
	lsls r0, r2, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802C72E
	movs r3, #1
_0802C71C:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802C780
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C71C
_0802C72E:
	cmp r7, #0xf
	bhi _0802C780
	ldr r5, _0802C790 @ =0x030067D0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	ldr r0, _0802C794 @ =sub_0802C3D4
	str r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	mov r1, r8
	adds r1, #4
	adds r0, r4, #0
	adds r2, r7, #0
	bl CreateThread
	ldr r0, _0802C78C @ =0x030067A0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802C780:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C78C: .4byte 0x030067A0
_0802C790: .4byte 0x030067D0
_0802C794: .4byte sub_0802C3D4

	thumb_func_start sub_0802C798
sub_0802C798: @ 0x0802C798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x28]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #8
	strb r0, [r1, #5]
	add r5, sp, #0x24
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	ldr r0, _0802C7F0 @ =0x00100005
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0802C7F4 @ =0x00110005
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802C7F8 @ =0x00130005
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r6, #0
	cmp r7, #3
	bhi _0802C800
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0802C7FC @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x2c]
	b _0802C810
	.align 2, 0
_0802C7F0: .4byte 0x00100005
_0802C7F4: .4byte 0x00110005
_0802C7F8: .4byte 0x00130005
_0802C7FC: .4byte gPlayers
_0802C800:
	ldr r1, _0802C844 @ =gEnemies
	movs r0, #0x94
	muls r0, r7, r0
	ldr r2, _0802C848 @ =0xFFFFFDB0
	adds r0, r0, r2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
_0802C810:
	lsls r0, r7, #2
	str r0, [sp, #0x34]
	cmp r6, #0
	bne _0802C8D8
	movs r1, #0
	mov sb, r1
_0802C81C:
	cmp r7, #3
	bhi _0802C84C
	ldr r0, [sp, #0x2c]
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
	b _0802C86C
	.align 2, 0
_0802C844: .4byte gEnemies
_0802C848: .4byte 0xFFFFFDB0
_0802C84C:
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	add r2, sp, #0x20
	mov r3, sp
	adds r3, #0x22
	bl sub_08005FC4
_0802C86C:
	add r5, sp, #0x20
	mov r4, sp
	adds r4, #0x22
	mov r0, sb
	str r0, [sp]
	movs r0, #4
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	mov r3, r8
	bl sub_08004214
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0802C8FC @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0802C8D0
	bl sub_08007510
	cmp r0, #0
	bne _0802C8D0
	bl sub_08007604
	cmp r0, #0
	bne _0802C8D0
	bl sub_08007544
	cmp r0, #0
	bne _0802C8D0
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #1
	mov r2, sp
	ldrh r3, [r2, #0x24]
	movs r2, #1
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0xc]
	movs r2, #4
	bl sub_08004344
_0802C8D0:
	bl WaitFrame
	cmp r6, #0
	beq _0802C81C
_0802C8D8:
	ldr r2, _0802C900 @ =0x030067F0
	ldr r0, [sp, #0x34]
	adds r2, r0, r2
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C8FC: .4byte gMapLayer_03003910
_0802C900: .4byte 0x030067F0

	thumb_func_start sub_0802C904
sub_0802C904: @ 0x0802C904
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	cmp r0, #3
	bhi _0802C998
	movs r7, #0
	ldr r0, _0802C98C @ =0x030067F0
	mov r1, r8
	lsls r2, r1, #2
	adds r3, r2, r0
	movs r1, #1
	ldr r0, [r3]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0802C93C
	adds r2, r3, #0
	movs r3, #1
_0802C92A:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802CA18
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C92A
_0802C93C:
	cmp r7, #0xf
	bhi _0802CA18
	ldr r5, _0802C990 @ =0x030067C0
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802C994 @ =sub_0802C798
	str r1, [r4, #0xc]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl CreateThread
	ldr r2, _0802C98C @ =0x030067F0
	adds r2, r6, r2
	movs r1, #1
	lsls r1, r7
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _0802CA18
	.align 2, 0
_0802C98C: .4byte 0x030067F0
_0802C990: .4byte 0x030067C0
_0802C994: .4byte sub_0802C798
_0802C998:
	movs r0, #4
	rsbs r0, r0, #0
	add r8, r0
	movs r7, #0
	ldr r1, _0802CA24 @ =0x030067A0
	mov r2, r8
	lsls r0, r2, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802C9C6
	movs r3, #1
_0802C9B4:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802CA18
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802C9B4
_0802C9C6:
	cmp r7, #0xf
	bhi _0802CA18
	ldr r5, _0802CA28 @ =0x030067D0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	ldr r0, _0802CA2C @ =sub_0802C798
	str r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	mov r1, r8
	adds r1, #4
	adds r0, r4, #0
	adds r2, r7, #0
	bl CreateThread
	ldr r0, _0802CA24 @ =0x030067A0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802CA18:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CA24: .4byte 0x030067A0
_0802CA28: .4byte 0x030067D0
_0802CA2C: .4byte sub_0802C798

	thumb_func_start sub_0802CA30
sub_0802CA30: @ 0x0802CA30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	ldr r0, _0802CDC0 @ =0x00100005
	bl GetDataRecord
	str r0, [sp, #0x6c]
	ldr r0, _0802CDC4 @ =0x00110005
	bl GetDataRecord
	str r0, [sp, #0x68]
	ldr r0, _0802CDC8 @ =0x00130005
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r0, #0xd4
	ldr r2, [sp, #0x5c]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802CDCC @ =gPlayers
	adds r1, r1, r0
	str r1, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x70]
	mov r5, sp
	adds r5, #0x20
	str r5, [sp, #0xac]
	mov r7, sp
	adds r7, #0x2c
	str r7, [sp, #0x90]
	mov r0, sp
	adds r0, #0x38
	str r0, [sp, #0x9c]
	mov r1, sp
	adds r1, #0x40
	str r1, [sp, #0xa0]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0xa4]
	mov r3, sp
	adds r3, #0x50
	str r3, [sp, #0xa8]
	adds r7, r5, #0
	ldr r3, [sp, #0x64]
	adds r3, #0xd0
	adds r6, r0, #0
	movs r4, #0
	adds r5, r3, #0
_0802CAB4:
	ldr r0, [sp, #0x70]
	lsls r1, r0, #2
	adds r2, r7, r1
	ldr r0, [r3]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [r2]
	ldr r2, [sp, #0x90]
	adds r1, r2, r1
	ldr r0, [r3]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [r1]
	ldr r0, [sp, #0x70]
	lsls r1, r0, #1
	adds r0, r6, r1
	strh r4, [r0]
	ldr r2, [sp, #0xa0]
	adds r0, r2, r1
	strh r4, [r0]
	ldr r2, [sp, #0xa4]
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, [sp, #0xa8]
	adds r1, r0, r1
	ldr r2, [sp, #0x70]
	lsls r0, r2, #3
	adds r0, #1
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r0, #2
	bls _0802CAB4
	ldr r2, _0802CDD0 @ =0x080FB9FC
	ldr r0, [r5]
	ldrb r1, [r0, #3]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x10
	str r1, [sp, #0x7c]
	ldr r3, [sp, #0x84]
	ldr r5, [sp, #0x5c]
	cmp r3, r5
	bne _0802CB68
	ldr r7, [sp, #0x64]
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x7c]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x74]
	adds r0, #1
	str r0, [r7, #0x7c]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0802CB40
	rsbs r1, r1, #0
_0802CB40:
	adds r0, r1, #0
	cmp r1, #0
	bge _0802CB48
	adds r0, #0xf
_0802CB48:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	ldr r0, _0802CDD4 @ =gPlayerStats
	adds r0, #0x50
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [sp, #0x80]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
_0802CB68:
	ldr r2, [sp, #0x5c]
	lsls r2, r2, #2
	str r2, [sp, #0x94]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x88]
	lsls r0, r0, #1
	ldr r3, _0802CDD8 @ =0x0805289C
	adds r0, r0, r3
	str r0, [sp, #0x8c]
_0802CB7C:
	movs r5, #0
	str r5, [sp, #0x78]
	movs r7, #0
	str r7, [sp, #0x70]
_0802CB84:
	ldr r0, [sp, #0x70]
	lsls r1, r0, #1
	ldr r3, [sp, #0xa8]
	adds r2, r3, r1
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	str r1, [sp, #0x98]
	cmp r7, #0
	beq _0802CB9E
	b _0802CDA2
_0802CB9E:
	movs r0, #1
	strh r0, [r2]
	ldr r5, [sp, #0x70]
	lsls r6, r5, #2
	ldr r0, [sp, #0xac]
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [sp, #0x88]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802CDD8 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #0x28
	adds r1, r0, #0
	muls r1, r3, r1
	mov r5, r8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [sp, #0x90]
	adds r0, r0, r6
	mov sb, r0
	ldr r1, [sp, #0x8c]
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r3, r0
	mov r3, sb
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x58
	mov r5, sp
	adds r5, #0x5a
	movs r2, #0x30
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x9c]
	ldr r1, [sp, #0x98]
	adds r0, r0, r1
	mov sl, r0
	ldr r3, [sp, #0xa0]
	adds r2, r3, r1
	str r7, [sp]
	movs r0, #5
	mov r1, sl
	ldr r3, [sp, #0x6c]
	bl sub_08004214
	adds r2, r0, #0
	ldr r7, [sp, #0xa4]
	ldr r1, [sp, #0x98]
	adds r0, r7, r1
	strh r2, [r0]
	ldr r0, _0802CDDC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	str r6, [sp, #0xb4]
	adds r6, r4, #0
	cmp r0, #0
	bne _0802CCAC
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _0802CCAC
	bl sub_08007510
	cmp r0, #0
	bne _0802CCAC
	bl sub_08007604
	cmp r0, #0
	bne _0802CCAC
	bl sub_08007544
	cmp r0, #0
	bne _0802CCAC
	mov r2, r8
	ldr r5, [r2]
	asrs r5, r5, #0xc
	mov r3, sb
	ldr r4, [r3]
	asrs r4, r4, #0xc
	bl sub_08007544
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08006008
	movs r5, #0
	ldrsh r4, [r6, r5]
	ldr r2, _0802CDE0 @ =0x080FBB24
	ldr r7, [sp, #0x7c]
	lsls r3, r7, #2
	adds r1, r3, r2
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r4, r4, r1
	movs r5, #0x5a
	add r5, sp
	movs r7, #0
	ldrsh r1, [r5, r7]
	adds r2, #2
	adds r3, r3, r2
	movs r7, #0
	ldrsh r2, [r3, r7]
	adds r1, r1, r2
	mov r2, sl
	ldrh r3, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r7, [sp, #0x6c]
	str r7, [sp, #8]
	ldr r0, [sp, #0x68]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #5
	bl sub_08004344
_0802CCAC:
	ldr r1, [sp, #0x84]
	ldr r2, [sp, #0x5c]
	cmp r1, r2
	bne _0802CD90
	ldr r3, [sp, #0xa4]
	ldr r5, [sp, #0x98]
	adds r0, r3, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802CD9C
	bl GetMultiplayerId
	ldr r7, [sp, #0x84]
	cmp r7, r0
	bne _0802CCE0
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802CDB2
	bl sub_080077C0
	cmp r0, #0
	bne _0802CDB2
_0802CCE0:
	movs r4, #0
	ldr r2, _0802CDE4 @ =gActiveEnemyMask
	mov sb, r2
	movs r3, #1
	ldr r7, [sp, #0xb4]
	ldr r5, [sp, #0x90]
	adds r5, r5, r7
	mov r8, r5
_0802CCF0:
	adds r1, r3, #0
	lsls r1, r4
	mov r2, sb
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802CD86
	ldr r2, _0802CDE8 @ =gEnemies
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r0, [sp, #0xac]
	adds r1, r0, r7
	ldr r0, [r5, #0x10]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #0xc
	strh r0, [r6]
	ldr r0, [r5, #0x14]
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #0xc
	movs r1, #0x5a
	add r1, sp
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0802CD32
	rsbs r0, r0, #0
_0802CD32:
	cmp r0, #0x13
	bgt _0802CD86
	movs r2, #0x5a
	add r2, sp
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802CD44
	rsbs r0, r0, #0
_0802CD44:
	cmp r0, #0x13
	bgt _0802CD86
	ldrh r0, [r5, #0xa]
	cmp r0, #8
	beq _0802CD86
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x74]
	cmp r0, r1
	beq _0802CD86
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r1, [r0]
	movs r0, #0x6e
	subs r0, r0, r1
	ldr r2, [sp, #0x80]
	muls r0, r2, r0
	movs r1, #0x3c
	str r3, [sp, #0xb0]
	bl __divsi3
	strh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x28]
	adds r1, r1, r0
	strh r1, [r5, #0x28]
	movs r0, #7
	strh r0, [r5, #0xa]
	add r0, sp, #0x5c
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	ldr r1, [sp, #0x74]
	str r1, [r5, #0x30]
	ldr r3, [sp, #0xb0]
	strh r3, [r5, #0x36]
_0802CD86:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802CCF0
_0802CD90:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x98]
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802CDA2
_0802CD9C:
	ldr r5, [sp, #0x78]
	adds r5, #1
	str r5, [sp, #0x78]
_0802CDA2:
	ldr r0, [sp, #0x70]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r0, #2
	bhi _0802CDB2
	b _0802CB84
_0802CDB2:
	ldr r7, [sp, #0x78]
	cmp r7, #2
	bhi _0802CDEC
	bl WaitFrame
	b _0802CB7C
	.align 2, 0
_0802CDC0: .4byte 0x00100005
_0802CDC4: .4byte 0x00110005
_0802CDC8: .4byte 0x00130005
_0802CDCC: .4byte gPlayers
_0802CDD0: .4byte 0x080FB9FC
_0802CDD4: .4byte gPlayerStats
_0802CDD8: .4byte 0x0805289C
_0802CDDC: .4byte 0x030063D8
_0802CDE0: .4byte 0x080FBB24
_0802CDE4: .4byte gActiveEnemyMask
_0802CDE8: .4byte gEnemies
_0802CDEC:
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x5c]
	cmp r0, r1
	bne _0802CE16
	bl sub_08007510
	cmp r0, #0
	bne _0802CE16
	bl sub_080076E0
	cmp r0, #0
	bne _0802CE16
	bl sub_08007604
	cmp r0, #0
	bne _0802CE16
	ldr r2, [sp, #0x64]
	ldrh r1, [r2, #0x10]
	ldr r0, _0802CE38 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x10]
_0802CE16:
	ldr r2, _0802CE3C @ =0x030067F0
	ldr r3, [sp, #0x94]
	adds r2, r3, r2
	movs r1, #1
	ldr r5, [sp, #0x60]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CE38: .4byte 0x0000FFFE
_0802CE3C: .4byte 0x030067F0

	thumb_func_start sub_0802CE40
sub_0802CE40: @ 0x0802CE40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r7, #0
	ldr r1, _0802CEC8 @ =0x030067F0
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802CE6E
	movs r3, #1
_0802CE5C:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802CEBE
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802CE5C
_0802CE6E:
	cmp r7, #0xf
	bhi _0802CEBE
	ldr r5, _0802CECC @ =0x030067C0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802CED0 @ =sub_0802CA30
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl CreateThread
	ldr r0, _0802CEC8 @ =0x030067F0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802CEBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CEC8: .4byte 0x030067F0
_0802CECC: .4byte 0x030067C0
_0802CED0: .4byte sub_0802CA30

	thumb_func_start sub_0802CED4
sub_0802CED4: @ 0x0802CED4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	movs r0, #0xd4
	ldr r2, [sp, #0x48]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802CF94 @ =gPlayers
	adds r1, r1, r0
	mov r8, r1
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	ldr r1, _0802CF98 @ =0x00100001
	movs r3, #0x80
	lsls r3, r3, #0x18
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	mov r7, r8
	adds r7, #0xd0
	ldr r1, [r7]
	ldr r0, [r1, #4]
	lsls r0, r0, #9
	lsrs r6, r0, #0x18
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x54]
	ldrh r0, [r1, #6]
	lsrs r0, r0, #7
	str r0, [sp, #0x70]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x48]
	ldr r0, [sp, #0x7c]
	cmp r3, r0
	bne _0802CF46
	mov r1, r8
	ldr r0, [r1, #0x7c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	ldr r0, _0802CF9C @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	str r0, [sp, #0x60]
_0802CF46:
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	lsrs r2, r2, #0x10
	str r2, [sp, #0x4c]
	cmp r2, #0
	bne _0802CF5A
	movs r3, #1
	str r3, [sp, #0x4c]
_0802CF5A:
	ldr r1, _0802CFA0 @ =0x080548F8
	ldr r3, [sp, #0x4c]
	subs r3, #1
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x6c]
	movs r5, #0
	ldr r2, _0802CFA4 @ =gActiveEnemyMask
	movs r0, #1
	ldr r1, [r2]
	ands r1, r0
	str r7, [sp, #0x84]
	str r3, [sp, #0x88]
	adds r3, r2, #0
	ldr r7, _0802CFA8 @ =0x080FB9FC
	mov sb, r7
	ldr r0, _0802CFAC @ =0x0805289C
	mov sl, r0
	mov r7, r8
	adds r7, #0x72
	ldr r2, [sp, #0x48]
	lsls r2, r2, #2
	str r2, [sp, #0x8c]
	cmp r1, #0
	beq _0802CFB4
	ldr r0, _0802CFB0 @ =gEnemies
	ldr r4, [r0]
	b _0802CFD6
	.align 2, 0
_0802CF94: .4byte gPlayers
_0802CF98: .4byte 0x00100001
_0802CF9C: .4byte gPlayerStats
_0802CFA0: .4byte 0x080548F8
_0802CFA4: .4byte gActiveEnemyMask
_0802CFA8: .4byte 0x080FB9FC
_0802CFAC: .4byte 0x0805289C
_0802CFB0: .4byte gEnemies
_0802CFB4:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _0802CFE6
	movs r1, #1
	lsls r1, r5
	ldr r0, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0802CFB4
	ldr r2, _0802D10C @ =gEnemies
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
_0802CFD6:
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	beq _0802CFB4
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _0802CFB4
	cmp r5, #4
	bls _0802CFE8
_0802CFE6:
	movs r6, #0
_0802CFE8:
	ldr r3, [sp, #0x84]
	ldr r1, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	str r0, [sp, #0x64]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	str r0, [sp, #0x68]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r0, r1, #0x10
	str r0, [sp, #0x74]
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	ldr r2, [sp, #0x64]
	adds r2, r2, r0
	str r2, [sp, #0x64]
	lsls r1, r1, #1
	add r1, sl
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x68]
	adds r1, r1, r0
	str r1, [sp, #0x68]
	cmp r6, #0
	beq _0802D0A6
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r2, sp, #0x44
	strh r0, [r2]
	ldr r1, [r4, #0x14]
	ldr r3, [sp, #0x68]
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x18
	adds r1, r5, #0
	cmp r1, #0x80
	ble _0802D078
	ldr r6, _0802D110 @ =0xFFFFFF00
	adds r0, r6, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802D078:
	str r5, [sp, #0x74]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D08E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
_0802D08E:
	ldr r2, [sp, #0x74]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802D0A6
	ldr r3, _0802D110 @ =0xFFFFFF00
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
_0802D0A6:
	mov r4, r8
	ldrh r0, [r4, #0xc]
	cmp r0, #0xa
	beq _0802D0CA
	ldr r6, [sp, #0x4c]
	cmp r6, #1
	beq _0802D0CA
	bl sub_08007544
	cmp r0, #0
	bne _0802D0CA
	bl sub_080075AC
	cmp r0, #0
	bne _0802D0CA
	movs r0, #0x18
	bl PlaySE
_0802D0CA:
	ldr r2, _0802D114 @ =0x08054904
	ldr r1, [sp, #0x88]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r7]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _0802D132
	ldr r0, _0802D118 @ =0x030067F0
	ldr r3, [sp, #0x8c]
	adds r4, r3, r0
	adds r6, r2, #0
	movs r0, #1
	ldr r1, [sp, #0x50]
	lsls r0, r1
	mvns r5, r0
_0802D0EA:
	mov r2, r8
	ldrh r0, [r2, #0xc]
	cmp r0, #7
	beq _0802D102
	ldr r0, _0802D11C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D120
_0802D102:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802D478
	.align 2, 0
_0802D10C: .4byte gEnemies
_0802D110: .4byte 0xFFFFFF00
_0802D114: .4byte 0x08054904
_0802D118: .4byte 0x030067F0
_0802D11C: .4byte 0x030063D8
_0802D120:
	bl WaitFrame
	ldr r3, [sp, #0x88]
	lsls r0, r3, #1
	adds r0, r0, r6
	ldrh r1, [r7]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0802D0EA
_0802D132:
	ldr r4, [sp, #0x4c]
	cmp r4, #1
	bne _0802D140
	ldr r6, [sp, #0x70]
	lsls r0, r6, #2
	adds r0, #0xa
	b _0802D148
_0802D140:
	ldr r7, [sp, #0x70]
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, #0xd
_0802D148:
	str r0, [sp, #0x70]
	mov r1, r8
	ldrh r0, [r1, #0xc]
	cmp r0, #0xa
	beq _0802D16E
	ldr r2, [sp, #0x4c]
	cmp r2, #1
	bne _0802D16E
	bl sub_08007544
	cmp r0, #0
	bne _0802D16E
	bl sub_080075AC
	cmp r0, #0
	bne _0802D16E
	movs r0, #0x17
	bl PlaySE
_0802D16E:
	ldr r3, [sp, #0x84]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x78]
	add r4, sp, #0x44
	mov sl, r4
	mov r6, sp
	adds r6, #0x46
	str r6, [sp, #0x80]
	b _0802D436
_0802D184:
	movs r6, #0
	movs r5, #0
_0802D188:
	ldr r0, _0802D22C @ =gActiveEnemyMask
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0]
	ands r0, r1
	adds r7, r5, #1
	mov sb, r7
	cmp r0, #0
	bne _0802D19C
	b _0802D328
_0802D19C:
	ldr r2, _0802D230 @ =gEnemies
	movs r0, #0x94
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	ldrh r2, [r7, #0xa]
	cmp r2, #9
	bne _0802D1B0
	b _0802D328
_0802D1B0:
	ldr r0, [r7, #0x10]
	ldr r1, [sp, #0x64]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	mov r3, sl
	strh r0, [r3]
	ldr r0, [r7, #0x14]
	ldr r4, [sp, #0x68]
	subs r0, r0, r4
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x80]
	strh r0, [r1]
	movs r4, #0
	ldrsh r1, [r3, r4]
	cmp r1, #0
	bge _0802D1D4
	rsbs r1, r1, #0
_0802D1D4:
	cmp r1, #0xf
	ble _0802D1DA
	b _0802D328
_0802D1DA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D1E4
	rsbs r0, r0, #0
_0802D1E4:
	cmp r0, #0xf
	ble _0802D1EA
	b _0802D328
_0802D1EA:
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	beq _0802D1F4
	b _0802D328
_0802D1F4:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802D208
	ldr r0, _0802D234 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _0802D238
_0802D208:
	movs r4, #0
	cmp r2, #8
	beq _0802D24E
	ldr r0, [r7, #0x30]
	ldr r2, [sp, #0x58]
	cmp r0, r2
	beq _0802D24E
	ldrh r3, [r7, #0x38]
	ldrh r2, [r7, #0x28]
	subs r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0802D24E
	adds r1, r3, #0
	eors r1, r2
	b _0802D248
	.align 2, 0
_0802D22C: .4byte gActiveEnemyMask
_0802D230: .4byte gEnemies
_0802D234: .4byte gMapLayer_03003910
_0802D238:
	movs r4, #0
	cmp r2, #0
	beq _0802D24E
	cmp r2, #8
	beq _0802D24E
	ldr r1, [r7, #0x30]
	ldr r3, [sp, #0x58]
	eors r1, r3
_0802D248:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
_0802D24E:
	adds r5, #1
	mov sb, r5
	cmp r4, #0
	beq _0802D328
	ldr r4, _0802D2F0 @ =gPlayerStats
	movs r6, #0x26
	ldrsh r0, [r4, r6]
	adds r1, r7, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	bl sub_0801841C
	cmp r0, #0
	beq _0802D304
	mov r0, r8
	ldrh r2, [r0, #0xc]
	add r1, sp, #0x54
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrh r6, [r0, #0x14]
	add r3, sp, #0x5c
	ldrh r3, [r3]
	strh r3, [r0, #0x14]
	adds r4, #0x6c
	ldrh r5, [r4]
	add r0, sp, #0x60
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, r8
	adds r1, r7, #0
	str r2, [sp, #0x90]
	bl sub_08017150
	strh r0, [r7, #0x2a]
	strh r5, [r4]
	ldr r2, [sp, #0x90]
	mov r1, r8
	strh r2, [r1, #0xc]
	strh r6, [r1, #0x14]
	ldrh r0, [r7, #0x2a]
	ldrh r2, [r7, #0x28]
	adds r0, r0, r2
	strh r0, [r7, #0x28]
	ldr r3, [sp, #0x58]
	str r3, [r7, #0x30]
	movs r0, #7
	strh r0, [r7, #0xa]
	add r4, sp, #0x7c
	ldrh r4, [r4]
	strh r4, [r7, #0x34]
	movs r0, #1
	strh r0, [r7, #0x36]
	movs r4, #0
	mov r6, r8
	adds r6, #0xa2
	mov r0, r8
	adds r0, #0xc8
	ldr r5, [r0]
	ldr r2, _0802D2F4 @ =0x0000FFFF
_0802D2C4:
	ldrh r0, [r6]
	adds r0, r0, r4
	movs r1, #5
	str r2, [sp, #0x90]
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x94
	muls r0, r1, r0
	adds r1, r0, r5
	ldrh r0, [r1]
	ldr r2, [sp, #0x90]
	cmp r0, r2
	beq _0802D2F8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802D2C4
	b _0802D326
	.align 2, 0
_0802D2F0: .4byte gPlayerStats
_0802D2F4: .4byte 0x0000FFFF
_0802D2F8:
	adds r0, r1, #0
	adds r1, r7, #0
	movs r2, #0x94
	bl memcpy
	b _0802D326
_0802D304:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	bl sub_08018474
	ldr r6, [sp, #0x58]
	str r6, [r7, #0x30]
	bl sub_08007544
	cmp r0, #0
	bne _0802D326
	bl sub_080075AC
	cmp r0, #0
	bne _0802D326
	movs r0, #0x55
	bl PlaySE
_0802D326:
	movs r6, #1
_0802D328:
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _0802D334
	b _0802D188
_0802D334:
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	beq _0802D340
	ldr r1, [sp, #0x54]
	cmp r1, #5
	beq _0802D346
_0802D340:
	cmp r6, #0
	beq _0802D346
	b _0802D466
_0802D346:
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802D366
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802D366
	b _0802D466
_0802D366:
	ldr r2, _0802D488 @ =0x0805289C
	ldr r3, [sp, #0x74]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r6, [sp, #0x6c]
	muls r0, r6, r0
	ldr r7, [sp, #0x64]
	adds r7, r7, r0
	str r7, [sp, #0x64]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r6, r0
	ldr r3, [sp, #0x68]
	adds r3, r3, r0
	str r3, [sp, #0x68]
	ldr r0, _0802D48C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802D432
	bl sub_08007510
	cmp r0, #0
	bne _0802D432
	bl sub_08007604
	cmp r0, #0
	bne _0802D432
	bl sub_08007544
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D432
	asrs r5, r7, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r6, [sp, #0x68]
	asrs r4, r6, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, sl
	ldr r3, [sp, #0x80]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	ldr r5, [sp, #0x78]
	mov r7, sl
	movs r1, #0
	ldrsh r4, [r7, r1]
	ldr r2, _0802D490 @ =0x080FBB24
	lsls r3, r5, #2
	adds r1, r3, r2
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r4, r4, r1
	ldr r7, [sp, #0x80]
	movs r6, #0
	ldrsh r1, [r7, r6]
	adds r2, #2
	adds r3, r3, r2
	movs r7, #0
	ldrsh r2, [r3, r7]
	adds r1, r1, r2
	ldr r3, _0802D494 @ =0x08054900
	ldr r6, [sp, #0x88]
	lsls r2, r6, #1
	adds r2, r2, r3
	ldrh r2, [r2]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08004344
_0802D432:
	bl WaitFrame
_0802D436:
	ldr r0, [sp, #0x70]
	adds r7, r0, #0
	subs r7, #1
	str r7, [sp, #0x70]
	cmp r0, #0
	beq _0802D466
	bl GetMultiplayerId
	ldr r1, [sp, #0x48]
	cmp r1, r0
	beq _0802D44E
	b _0802D184
_0802D44E:
	mov r2, r8
	ldrh r0, [r2, #0xc]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802D466
	bl sub_080077C0
	cmp r0, #0
	bne _0802D466
	b _0802D184
_0802D466:
	ldr r2, _0802D498 @ =0x030067F0
	ldr r3, [sp, #0x8c]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x50]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802D478:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D488: .4byte 0x0805289C
_0802D48C: .4byte 0x030063D8
_0802D490: .4byte 0x080FBB24
_0802D494: .4byte 0x08054900
_0802D498: .4byte 0x030067F0

	thumb_func_start sub_0802D49C
sub_0802D49C: @ 0x0802D49C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	movs r7, #0
	ldr r1, _0802D52C @ =0x030067F0
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802D4CE
	movs r3, #1
_0802D4BC:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802D520
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802D4BC
_0802D4CE:
	cmp r7, #0xf
	bhi _0802D520
	ldr r5, _0802D530 @ =0x030067C0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802D534 @ =sub_0802CED4
	str r1, [r4, #0xc]
	ldr r1, _0802D538 @ =0x000007FC
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	mov r0, sb
	lsls r2, r0, #0x10
	orrs r2, r7
	adds r0, r4, #0
	mov r1, r8
	bl CreateThread
	ldr r0, _0802D52C @ =0x030067F0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802D520:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D52C: .4byte 0x030067F0
_0802D530: .4byte 0x030067C0
_0802D534: .4byte sub_0802CED4
_0802D538: .4byte 0x000007FC

	thumb_func_start sub_0802D53C
sub_0802D53C: @ 0x0802D53C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	str r0, [sp, #0x48]
	adds r6, r1, #0
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	ldr r2, _0802D5A4 @ =gEnemies
	movs r0, #0x94
	ldr r3, [sp, #0x48]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	adds r4, r7, #0
	adds r4, #0x8c
	ldr r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x18
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	ldr r0, [r4]
	adds r1, r7, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	bl sub_0800EA00
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r4, #1
	str r4, [sp, #0x54]
	add r1, sp, #0x10
	adds r0, r2, #5
	strb r0, [r1, #0x1c]
	movs r0, #0xf
	adds r1, r6, #0
	ands r1, r0
	str r1, [sp, #0x50]
	lsrs r6, r6, #0x10
	cmp r6, #3
	bls _0802D5A8
	movs r0, #0xa
	b _0802D5B6
	.align 2, 0
_0802D5A4: .4byte gEnemies
_0802D5A8:
	movs r0, #0xd4
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0802D66C @ =gPlayers
	adds r5, r1, r0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
_0802D5B6:
	ldr r2, [r7, #0x10]
	mov sl, r2
	ldr r3, [r7, #0x14]
	mov sb, r3
	cmp r0, #3
	bhi _0802D678
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r2, sp, #0x44
	strh r0, [r2]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r1, r2, #0
	cmp r1, #0x80
	ble _0802D608
	ldr r5, _0802D670 @ =0xFFFFFF00
	adds r0, r5, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802D608:
	str r2, [sp, #0x58]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D61E
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D61E:
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802D636
	ldr r2, _0802D670 @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D636:
	ldr r3, [sp, #0x58]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	ldr r2, _0802D674 @ =0x080FB9FC
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0802D65A
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802D65A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D664
	rsbs r0, r0, #0
_0802D664:
	cmp r0, #3
	ble _0802D68A
	lsls r0, r1, #0x14
	b _0802D686
	.align 2, 0
_0802D66C: .4byte gPlayers
_0802D670: .4byte 0xFFFFFF00
_0802D674: .4byte 0x080FB9FC
_0802D678:
	ldr r0, _0802D6CC @ =0x080FB9FC
	movs r5, #8
	ldrsh r1, [r7, r5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x14
_0802D686:
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_0802D68A:
	adds r0, r7, #0
	adds r0, #0x4a
	ldr r1, _0802D6D0 @ =0x08054904
	ldrh r2, [r0]
	ldrh r1, [r1, #2]
	mov r8, r0
	ldr r6, [sp, #0x48]
	lsls r6, r6, #2
	str r6, [sp, #0x68]
	cmp r2, r1
	bhs _0802D6E8
	ldr r0, _0802D6D4 @ =0x030067A0
	adds r4, r6, r0
	adds r6, r1, #0
	movs r0, #1
	ldr r1, [sp, #0x50]
	lsls r0, r1
	mvns r5, r0
_0802D6AE:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	beq _0802D6C4
	ldr r0, _0802D6D8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D6DC
_0802D6C4:
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	b _0802D966
	.align 2, 0
_0802D6CC: .4byte 0x080FB9FC
_0802D6D0: .4byte 0x08054904
_0802D6D4: .4byte 0x030067A0
_0802D6D8: .4byte 0x030063D8
_0802D6DC:
	bl WaitFrame
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, r6
	blo _0802D6AE
_0802D6E8:
	ldr r3, [sp, #0x54]
	lsls r0, r3, #3
	adds r0, #0xa
	str r0, [sp, #0x54]
	bl sub_080075AC
	cmp r0, #0
	bne _0802D70E
	bl sub_08007544
	cmp r0, #0
	bne _0802D70E
	bl sub_08007604
	cmp r0, #0
	bne _0802D70E
	movs r0, #0x17
	bl PlaySE
_0802D70E:
	ldr r0, [sp, #0x54]
	adds r4, r0, #0
	subs r4, #1
	str r4, [sp, #0x54]
	cmp r0, #0
	bne _0802D71C
	b _0802D954
_0802D71C:
	add r5, sp, #0x44
	mov r8, r5
	mov r6, sp
	adds r6, #0x46
	str r6, [sp, #0x64]
_0802D726:
	movs r0, #0
	str r0, [sp, #0x5c]
	movs r6, #0
	b _0802D82A
_0802D72E:
	ldr r3, _0802D7F8 @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov r4, sl
	subs r0, r0, r4
	lsrs r0, r0, #0xc
	mov r5, r8
	strh r0, [r5]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	ldr r4, [sp, #0x64]
	strh r0, [r4]
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _0802D76A
	rsbs r1, r1, #0
_0802D76A:
	cmp r1, #7
	bgt _0802D824
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802D778
	rsbs r0, r0, #0
_0802D778:
	cmp r0, #7
	bgt _0802D824
	ldr r5, [sp, #0x60]
	cmp r5, r6
	bne _0802D824
	adds r5, r2, r3
	ldrh r1, [r5, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802D824
	ldrh r2, [r5, #0xc]
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802D824
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r4, r5, #0
	adds r4, #0x80
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802D824
	cmp r2, #9
	beq _0802D824
	bl sub_08007544
	cmp r0, #0
	bne _0802D824
	bl sub_080077C0
	cmp r0, #0
	bne _0802D824
	ldr r0, [sp, #0x4c]
	adds r0, #0x6a
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	bl sub_0801841C
	cmp r0, #0
	beq _0802D7FC
	adds r0, r7, #0
	adds r1, r5, #0
	bl CalcDamageToPlayer
	adds r1, r5, #0
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r5, #0xc]
	movs r4, #1
	str r4, [sp, #0x5c]
	b _0802D824
	.align 2, 0
_0802D7F8: .4byte gPlayers
_0802D7FC:
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r7, #0x2c]
	str r1, [r0]
	bl sub_080075AC
	cmp r0, #0
	bne _0802D824
	bl sub_08007544
	cmp r0, #0
	bne _0802D824
	bl sub_08007604
	cmp r0, #0
	bne _0802D824
	movs r0, #0x55
	bl PlaySE
_0802D824:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802D82A:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802D83C
	bl sub_08007670
	cmp r0, #0
	bne _0802D83C
	b _0802D72E
_0802D83C:
	ldr r5, [sp, #0x5c]
	cmp r5, #0
	beq _0802D844
	b _0802D954
_0802D844:
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _0802D862
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0802D954
_0802D862:
	ldr r2, _0802D978 @ =0x0805289C
	ldr r0, [sp, #0x58]
	lsls r6, r0, #0x10
	asrs r1, r6, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r4, #0x3c
	muls r0, r4, r0
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r4, r0
	add sb, r0
	ldr r0, _0802D97C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802D922
	bl sub_08007510
	cmp r0, #0
	bne _0802D922
	bl sub_08007604
	cmp r0, #0
	bne _0802D922
	bl sub_08007544
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D922
	mov r0, sl
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, r8
	ldr r3, [sp, #0x64]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	ldr r2, _0802D980 @ =0x08054908
	asrs r1, r6, #0x14
	adds r1, r1, r2
	mov r2, r8
	movs r3, #0
	ldrsh r5, [r2, r3]
	ldr r4, _0802D984 @ =0x080FBB24
	ldrb r2, [r1]
	lsls r3, r2, #2
	adds r1, r3, r4
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r5, r5, r1
	mov ip, r5
	ldr r5, [sp, #0x64]
	movs r6, #0
	ldrsh r1, [r5, r6]
	adds r4, #2
	adds r3, r3, r4
	movs r4, #0
	ldrsh r3, [r3, r4]
	adds r1, r1, r3
	adds r2, #0x21
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, ip
	movs r3, #0
	bl sub_08004344
_0802D922:
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	bne _0802D954
	ldr r0, _0802D97C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802D954
	bl sub_08007578
	cmp r0, #0
	bne _0802D954
	ldr r0, [sp, #0x54]
	adds r5, r0, #0
	subs r5, #1
	str r5, [sp, #0x54]
	cmp r0, #0
	beq _0802D954
	b _0802D726
_0802D954:
	ldr r2, _0802D988 @ =0x030067A0
	ldr r6, [sp, #0x68]
	adds r2, r6, r2
	movs r1, #1
	ldr r0, [sp, #0x50]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0802D966:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D978: .4byte 0x0805289C
_0802D97C: .4byte 0x030063D8
_0802D980: .4byte 0x08054908
_0802D984: .4byte 0x080FBB24
_0802D988: .4byte 0x030067A0

	thumb_func_start sub_0802D98C
sub_0802D98C: @ 0x0802D98C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	movs r7, #0
	ldr r1, _0802DA20 @ =0x030067A0
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802D9BE
	movs r3, #1
_0802D9AC:
	adds r7, #1
	cmp r7, #0xf
	bhi _0802DA12
	adds r1, r3, #0
	lsls r1, r7
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802D9AC
_0802D9BE:
	cmp r7, #0xf
	bhi _0802DA12
	ldr r5, _0802DA24 @ =0x030067D0
	mov r0, r8
	lsls r6, r0, #2
	adds r5, r6, r5
	ldr r1, [r5]
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r5]
	adds r4, r4, r1
	str r0, [r4, #0x20]
	ldr r1, _0802DA28 @ =sub_0802D53C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	mov r0, sb
	lsls r2, r0, #0x10
	orrs r2, r7
	adds r0, r4, #0
	mov r1, r8
	bl CreateThread
	ldr r0, _0802DA20 @ =0x030067A0
	adds r6, r6, r0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_0802DA12:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DA20: .4byte 0x030067A0
_0802DA24: .4byte 0x030067D0
_0802DA28: .4byte sub_0802D53C

	thumb_func_start sub_0802DA2C
sub_0802DA2C: @ 0x0802DA2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldr r1, _0802DA64 @ =0x080FBB84
	lsls r0, r2, #4
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r0, r6]
	mov sb, r1
	adds r3, #0x88
	ldrh r0, [r3]
	subs r0, #2
	cmp r0, #0x23
	bhi _0802DB12
	lsls r0, r0, #2
	ldr r1, _0802DA68 @ =_0802DA6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DA64: .4byte 0x080FBB84
_0802DA68: .4byte _0802DA6C
_0802DA6C: @ jump table
	.4byte _0802DAFC @ case 0
	.4byte _0802DB00 @ case 1
	.4byte _0802DB04 @ case 2
	.4byte _0802DB08 @ case 3
	.4byte _0802DB0C @ case 4
	.4byte _0802DB10 @ case 5
	.4byte _0802DAFC @ case 6
	.4byte _0802DB00 @ case 7
	.4byte _0802DB04 @ case 8
	.4byte _0802DB08 @ case 9
	.4byte _0802DB0C @ case 10
	.4byte _0802DB10 @ case 11
	.4byte _0802DAFC @ case 12
	.4byte _0802DB00 @ case 13
	.4byte _0802DB04 @ case 14
	.4byte _0802DB08 @ case 15
	.4byte _0802DB0C @ case 16
	.4byte _0802DB10 @ case 17
	.4byte _0802DAFC @ case 18
	.4byte _0802DB00 @ case 19
	.4byte _0802DB04 @ case 20
	.4byte _0802DB08 @ case 21
	.4byte _0802DB0C @ case 22
	.4byte _0802DB10 @ case 23
	.4byte _0802DAFC @ case 24
	.4byte _0802DB00 @ case 25
	.4byte _0802DB04 @ case 26
	.4byte _0802DB08 @ case 27
	.4byte _0802DB0C @ case 28
	.4byte _0802DB10 @ case 29
	.4byte _0802DAFC @ case 30
	.4byte _0802DB00 @ case 31
	.4byte _0802DB04 @ case 32
	.4byte _0802DB08 @ case 33
	.4byte _0802DB0C @ case 34
	.4byte _0802DB10 @ case 35
_0802DAFC:
	movs r4, #0
	b _0802DB12
_0802DB00:
	movs r4, #1
	b _0802DB12
_0802DB04:
	movs r4, #2
	b _0802DB12
_0802DB08:
	movs r4, #3
	b _0802DB12
_0802DB0C:
	movs r4, #4
	b _0802DB12
_0802DB10:
	movs r4, #5
_0802DB12:
	lsls r6, r2, #4
	adds r0, r4, #1
	mov r8, r0
	cmp r2, #1
	bne _0802DB8A
	lsls r1, r4, #2
	adds r1, r1, r4
	movs r2, #0x38
	ldrsh r0, [r5, r2]
	subs r0, #0x46
	subs r4, r1, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DB40
	rsbs r0, r0, #0
_0802DB40:
	cmp r4, r0
	bls _0802DB8A
	movs r4, #0
_0802DB46:
	ldr r0, [r5, #0x1c]
	lsls r2, r4, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802DB56
	cmp r0, #4
	bne _0802DB84
_0802DB56:
	movs r0, #4
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x24
	adds r1, r1, r2
	ldrh r2, [r5, #0x38]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r2
	strh r0, [r1]
	movs r4, #3
	bl sub_080075AC
	cmp r0, #0
	bne _0802DB84
	bl sub_08007544
	cmp r0, #0
	bne _0802DB84
	movs r0, #0x29
	bl PlaySE
_0802DB84:
	adds r4, #1
	cmp r4, #2
	bls _0802DB46
_0802DB8A:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DB98
	rsbs r0, r0, #0
_0802DB98:
	movs r1, #0x32
	bl __umodsi3
	adds r0, #0x64
	mov r1, r8
	mov r2, sb
	muls r2, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	add r1, sl
	muls r1, r2, r1
	muls r0, r1, r0
	ldr r1, _0802DBCC @ =0x0001D4C0
	bl __udivsi3
	adds r3, r0, #0
	ldr r1, _0802DBD0 @ =0x080FBB84
	adds r0, r6, r1
	ldrh r2, [r0, #2]
	cmp r2, #2
	beq _0802DBE0
	cmp r2, #2
	bgt _0802DBD4
	cmp r2, #1
	beq _0802DBDA
	b _0802DBEA
	.align 2, 0
_0802DBCC: .4byte 0x0001D4C0
_0802DBD0: .4byte 0x080FBB84
_0802DBD4:
	cmp r2, #3
	beq _0802DBE6
	b _0802DBEA
_0802DBDA:
	movs r2, #0x36
	ldrsh r7, [r5, r2]
	b _0802DBEA
_0802DBE0:
	movs r0, #0x38
	ldrsh r7, [r5, r0]
	b _0802DBEA
_0802DBE6:
	movs r2, #0x3a
	ldrsh r7, [r5, r2]
_0802DBEA:
	adds r0, r6, r1
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0802DC00
	movs r0, #0x6e
	subs r0, r0, r7
	muls r0, r3, r0
	movs r1, #0x3c
	bl __udivsi3
	adds r3, r0, #0
_0802DC00:
	cmp r3, #0
	bne _0802DC06
	movs r3, #1
_0802DC06:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802DC18
sub_0802DC18: @ 0x0802DC18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	ldr r2, _0802DC68 @ =gEnemies
	movs r0, #0x94
	ldr r3, [sp, #0x5c]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov sb, r0
	ldr r5, [sp, #0x60]
	lsrs r5, r5, #0x10
	mov r8, r5
	movs r0, #0xff
	ldr r6, [sp, #0x60]
	ands r6, r0
	str r6, [sp, #0x60]
	mov r0, sb
	adds r0, #0x88
	ldrh r0, [r0]
	subs r0, #2
	cmp r0, #0x17
	bhi _0802DCF2
	lsls r0, r0, #2
	ldr r1, _0802DC6C @ =_0802DC70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DC68: .4byte gEnemies
_0802DC6C: .4byte _0802DC70
_0802DC70: @ jump table
	.4byte _0802DCD0 @ case 0
	.4byte _0802DCD6 @ case 1
	.4byte _0802DCDC @ case 2
	.4byte _0802DCE2 @ case 3
	.4byte _0802DCE8 @ case 4
	.4byte _0802DCEE @ case 5
	.4byte _0802DCF2 @ case 6
	.4byte _0802DCF2 @ case 7
	.4byte _0802DCF2 @ case 8
	.4byte _0802DCF2 @ case 9
	.4byte _0802DCF2 @ case 10
	.4byte _0802DCF2 @ case 11
	.4byte _0802DCF2 @ case 12
	.4byte _0802DCF2 @ case 13
	.4byte _0802DCF2 @ case 14
	.4byte _0802DCF2 @ case 15
	.4byte _0802DCF2 @ case 16
	.4byte _0802DCF2 @ case 17
	.4byte _0802DCD0 @ case 18
	.4byte _0802DCD6 @ case 19
	.4byte _0802DCDC @ case 20
	.4byte _0802DCE2 @ case 21
	.4byte _0802DCE8 @ case 22
	.4byte _0802DCEE @ case 23
_0802DCD0:
	movs r0, #0
	str r0, [sp, #0x6c]
	b _0802DCF2
_0802DCD6:
	movs r1, #1
	str r1, [sp, #0x6c]
	b _0802DCF2
_0802DCDC:
	movs r2, #2
	str r2, [sp, #0x6c]
	b _0802DCF2
_0802DCE2:
	movs r3, #3
	str r3, [sp, #0x6c]
	b _0802DCF2
_0802DCE8:
	movs r5, #4
	str r5, [sp, #0x6c]
	b _0802DCF2
_0802DCEE:
	movs r6, #5
	str r6, [sp, #0x6c]
_0802DCF2:
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x64]
	add r6, sp, #0x58
	movs r4, #0
	strh r4, [r6]
	mov r5, sp
	adds r5, #0x5a
	strh r4, [r5]
	mov r1, sb
	ldr r1, [r1, #0x10]
	str r1, [sp, #0x70]
	mov r2, sb
	ldr r2, [r2, #0x14]
	str r2, [sp, #0x74]
	ldr r1, _0802DDF8 @ =0x00100006
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r0, #8
	strb r0, [r1]
	strh r4, [r6]
	strh r4, [r5]
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	strh r4, [r6]
	strh r4, [r5]
	ldr r1, _0802DDFC @ =0x080FB9FC
	mov r3, sb
	movs r2, #8
	ldrsh r0, [r3, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r2, r2, #0x14
	ldr r3, [sp, #0x64]
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	str r3, [sp, #0x64]
	ldr r3, [sp, #0x6c]
	lsls r1, r3, #0x13
	lsrs r1, r1, #0x10
	str r1, [sp, #0x68]
	lsrs r0, r0, #0x11
	str r0, [sp, #0x7c]
	ldr r3, _0802DE00 @ =0x0805289C
	lsrs r0, r2, #0x10
	mov sl, r0
	asrs r7, r2, #0x10
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x70]
	adds r1, r1, r0
	str r1, [sp, #0x70]
	lsls r0, r7, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0x74]
	adds r3, r3, r0
	str r3, [sp, #0x74]
	mov r5, r8
	cmp r5, #2
	bls _0802DDA2
	b _0802DECE
_0802DDA2:
	ldr r1, _0802DE04 @ =gPlayers
	movs r0, #0xd4
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r2, [sp, #0x70]
	subs r0, r0, r2
	lsrs r0, r0, #0xc
	add r4, sp, #0x54
	strh r0, [r4]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	subs r1, r1, r3
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x56
	strh r1, [r5]
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	subs r1, r3, r7
	cmp r1, #0x80
	ble _0802DE0C
	ldr r6, _0802DE08 @ =0xFFFFFF00
	adds r0, r6, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0802DE1E
	.align 2, 0
_0802DDF8: .4byte 0x00100006
_0802DDFC: .4byte 0x080FB9FC
_0802DE00: .4byte 0x0805289C
_0802DE04: .4byte gPlayers
_0802DE08: .4byte 0xFFFFFF00
_0802DE0C:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802DE1E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	adds r2, r0, #0
	orrs r2, r3
_0802DE1E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802DE30
	adds r0, #7
_0802DE30:
	asrs r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov sl, r3
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DE4C
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802DE4C:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802DE64
	ldr r2, _0802DEB0 @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0802DE64:
	movs r0, #0xff
	mov r3, sl
	ands r3, r0
	lsrs r1, r3, #4
	ldr r2, _0802DEB4 @ =0x080FB9FC
	mov r6, sb
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r3, [r0]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #8
	ble _0802DE8C
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802DE8C:
	ldr r0, _0802DEB8 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #7
	beq _0802DEBC
	mov r0, sb
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _0802DEBC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DEAA
	rsbs r0, r0, #0
_0802DEAA:
	lsls r0, r3, #0x14
	b _0802DED4
	.align 2, 0
_0802DEB0: .4byte 0xFFFFFF00
_0802DEB4: .4byte 0x080FB9FC
_0802DEB8: .4byte gMapLayer_03003910
_0802DEBC:
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	b _0802DED6
_0802DECE:
	mov r0, r8
	subs r0, #4
	lsls r0, r0, #0x10
_0802DED4:
	lsrs r0, r0, #0x10
_0802DED6:
	mov sl, r0
	mov r6, sb
	ldrh r6, [r6, #8]
	str r6, [sp, #0x78]
	mov r0, sb
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r0, [sp, #0x5c]
	lsls r0, r0, #2
	str r0, [sp, #0x90]
	cmp r1, #0
	bne _0802DF2C
_0802DEF0:
	bl sub_08007750
	cmp r0, #0
	bne _0802DF2C
	bl sub_080074CC
	cmp r0, #0
	bne _0802DF2C
	ldr r0, _0802DF6C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802DF2C
	bl sub_08007578
	cmp r0, #0
	bne _0802DF2C
	mov r1, sb
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bne _0802DF22
	b _0802E1EA
_0802DF22:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802DEF0
_0802DF2C:
	bl sub_080075AC
	cmp r0, #0
	bne _0802DF42
	bl sub_08007544
	cmp r0, #0
	bne _0802DF42
	movs r0, #0x28
	bl PlaySE
_0802DF42:
	ldr r1, [sp, #0x64]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	cmp r1, #0
	bne _0802DF52
	b _0802E1EA
_0802DF52:
	mov r2, sp
	adds r2, #0x54
	str r2, [sp, #0x8c]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x84]
	lsls r0, r0, #1
	ldr r5, _0802DF70 @ =0x0805289C
	adds r0, r0, r5
	str r0, [sp, #0x88]
_0802DF68:
	movs r6, #0
	b _0802E042
	.align 2, 0
_0802DF6C: .4byte 0x030063D8
_0802DF70: .4byte 0x0805289C
_0802DF74:
	mov r0, sb
	ldrh r1, [r0, #0x26]
	ldr r4, _0802E0BC @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r3, [r0]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0802E03C
	ldrh r0, [r3]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r1, [sp, #0x70]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	ldr r5, [sp, #0x8c]
	strh r0, [r5]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	ldr r1, [sp, #0x74]
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x56
	strh r1, [r0]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0802DFC0
	rsbs r0, r0, #0
_0802DFC0:
	cmp r0, #7
	bgt _0802E03C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802DFCE
	rsbs r0, r0, #0
_0802DFCE:
	cmp r0, #7
	bgt _0802E03C
	ldr r5, [sp, #0x80]
	cmp r5, r6
	bne _0802E03C
	adds r4, r2, r4
	ldrh r2, [r4, #0xc]
	adds r0, r2, #0
	cmp r0, #8
	beq _0802E03C
	cmp r0, #9
	beq _0802E03C
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802E03C
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802E03C
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r5, r0
	ldr r1, [r1, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802E03C
	bl sub_08007544
	cmp r0, #0
	bne _0802E03C
	movs r0, #0
	ldr r1, [sp, #0x6c]
	adds r2, r4, #0
	mov r3, sb
	bl sub_0802DA2C
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, sb
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r4, #0xc]
_0802E03C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802E042:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802E05A
	bl sub_080077C0
	cmp r0, #0
	bne _0802E03C
	bl sub_08007670
	cmp r0, #0
	beq _0802DF74
_0802E05A:
	ldr r5, [sp, #0x64]
	ldr r6, [sp, #0x7c]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802E07E
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802E07E
	b _0802E1EA
_0802E07E:
	bl sub_080076A8
	cmp r0, #0
	beq _0802E0C4
	ldr r0, [sp, #0x84]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802E0C0 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x70]
	adds r3, r3, r0
	str r3, [sp, #0x70]
	ldr r5, [sp, #0x88]
	movs r6, #0
	ldrsh r1, [r5, r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x74]
	adds r1, r1, r0
	str r1, [sp, #0x74]
	mov r2, sl
	lsls r2, r2, #0x10
	mov r8, r2
	b _0802E0F6
	.align 2, 0
_0802E0BC: .4byte gPlayers
_0802E0C0: .4byte 0x0805289C
_0802E0C4:
	ldr r0, [sp, #0x84]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _0802E20C @ =0x0805289C
	adds r0, r0, r3
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r6, [sp, #0x70]
	adds r6, r6, r0
	str r6, [sp, #0x70]
	ldr r0, [sp, #0x88]
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x74]
	adds r3, r3, r0
	str r3, [sp, #0x74]
	mov r5, sl
	lsls r5, r5, #0x10
	mov r8, r5
_0802E0F6:
	ldr r6, [sp, #0x70]
	asrs r5, r6, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x74]
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x54
	mov r7, sp
	adds r7, #0x56
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x78]
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r4, #0
	add r2, sp, #0x58
	mov r3, sp
	adds r3, #0x5a
	bl sub_08026C40
	ldr r0, _0802E210 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802E1AE
	bl sub_08007510
	cmp r0, #0
	bne _0802E1AE
	bl sub_08007604
	cmp r0, #0
	bne _0802E1AE
	bl sub_08007544
	cmp r0, #0
	bne _0802E1AE
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, _0802E214 @ =0x080FB720
	mov r3, r8
	asrs r1, r3, #0x14
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r6, _0802E218 @ =0x080FBB24
	adds r1, r2, r6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r7, r6]
	ldr r3, _0802E21C @ =0x080FBB26
	adds r2, r2, r3
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	add r2, sp, #0x58
	ldrh r3, [r2]
	str r5, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802E1AE:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0802E1EA
	bl sub_080074CC
	cmp r0, #0
	bne _0802E1EA
	ldr r0, _0802E210 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E1EA
	bl sub_08007578
	cmp r0, #0
	bne _0802E1EA
	ldr r1, [sp, #0x64]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	cmp r1, #0
	beq _0802E1EA
	b _0802DF68
_0802E1EA:
	ldr r2, _0802E220 @ =0x030067A0
	ldr r3, [sp, #0x90]
	adds r2, r3, r2
	movs r1, #1
	ldr r5, [sp, #0x60]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E20C: .4byte 0x0805289C
_0802E210: .4byte 0x030063D8
_0802E214: .4byte 0x080FB720
_0802E218: .4byte 0x080FBB24
_0802E21C: .4byte 0x080FBB26
_0802E220: .4byte 0x030067A0

	thumb_func_start sub_0802E224
sub_0802E224: @ 0x0802E224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	mov sb, r0
	str r1, [sp, #0x28]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r2, _0802E270 @ =gEnemies
	movs r0, #0x94
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [sp, #0x28]
	lsrs r7, r0, #0x10
	movs r0, #0xff
	ldr r1, [sp, #0x28]
	ands r1, r0
	str r1, [sp, #0x28]
	mov r0, r8
	adds r0, #0x88
	ldrh r0, [r0]
	subs r0, #8
	cmp r0, #0x17
	bhi _0802E2FA
	lsls r0, r0, #2
	ldr r1, _0802E274 @ =_0802E278
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802E270: .4byte gEnemies
_0802E274: .4byte _0802E278
_0802E278: @ jump table
	.4byte _0802E2D8 @ case 0
	.4byte _0802E2DE @ case 1
	.4byte _0802E2E4 @ case 2
	.4byte _0802E2EA @ case 3
	.4byte _0802E2F0 @ case 4
	.4byte _0802E2F6 @ case 5
	.4byte _0802E2FA @ case 6
	.4byte _0802E2FA @ case 7
	.4byte _0802E2FA @ case 8
	.4byte _0802E2FA @ case 9
	.4byte _0802E2FA @ case 10
	.4byte _0802E2FA @ case 11
	.4byte _0802E2FA @ case 12
	.4byte _0802E2FA @ case 13
	.4byte _0802E2FA @ case 14
	.4byte _0802E2FA @ case 15
	.4byte _0802E2FA @ case 16
	.4byte _0802E2FA @ case 17
	.4byte _0802E2D8 @ case 18
	.4byte _0802E2DE @ case 19
	.4byte _0802E2E4 @ case 20
	.4byte _0802E2EA @ case 21
	.4byte _0802E2F0 @ case 22
	.4byte _0802E2F6 @ case 23
_0802E2D8:
	movs r2, #0
	str r2, [sp, #0x3c]
	b _0802E2FA
_0802E2DE:
	movs r3, #1
	str r3, [sp, #0x3c]
	b _0802E2FA
_0802E2E4:
	movs r5, #2
	str r5, [sp, #0x3c]
	b _0802E2FA
_0802E2EA:
	movs r6, #3
	str r6, [sp, #0x3c]
	b _0802E2FA
_0802E2F0:
	movs r0, #4
	str r0, [sp, #0x3c]
	b _0802E2FA
_0802E2F6:
	movs r1, #5
	str r1, [sp, #0x3c]
_0802E2FA:
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0x34]
	add r5, sp, #0x24
	movs r2, #0
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x26
	strh r2, [r4]
	mov r3, r8
	ldr r3, [r3, #0x10]
	str r3, [sp, #0x40]
	mov r6, r8
	ldr r6, [r6, #0x14]
	mov sl, r6
	ldr r1, _0802E400 @ =0x080FB9FC
	mov r3, r8
	movs r6, #8
	ldrsh r0, [r3, r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
	ldrh r0, [r3, #8]
	str r0, [sp, #0x48]
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	strh r2, [r5]
	strh r2, [r4]
	ldr r0, _0802E404 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x30]
	ldr r0, _0802E408 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x2c]
	ldr r0, _0802E40C @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x34]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xd
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	ldr r3, [sp, #0x3c]
	lsls r0, r3, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp, #0x38]
	ldr r2, _0802E410 @ =0x0805289C
	ldr r6, [sp, #0x44]
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [sp, #0x40]
	adds r1, r1, r0
	str r1, [sp, #0x40]
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add sl, r0
	cmp r7, #2
	bls _0802E3AA
	b _0802E4DA
_0802E3AA:
	ldr r1, _0802E414 @ =gPlayers
	movs r0, #0xd4
	muls r0, r7, r0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r3, [sp, #0x40]
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	add r4, sp, #0x20
	strh r0, [r4]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	mov r5, sl
	subs r1, r1, r5
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x22
	strh r1, [r5]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	subs r3, r2, r6
	cmp r3, #0x80
	ble _0802E41C
	ldr r3, _0802E418 @ =0xFFFFFF00
	adds r0, r3, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0802E42E
	.align 2, 0
_0802E400: .4byte 0x080FB9FC
_0802E404: .4byte 0x00100004
_0802E408: .4byte 0x00110004
_0802E40C: .4byte 0x00130004
_0802E410: .4byte 0x0805289C
_0802E414: .4byte gPlayers
_0802E418: .4byte 0xFFFFFF00
_0802E41C:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r3, r0
	bge _0802E42E
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	adds r1, r0, #0
	orrs r1, r2
_0802E42E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x44]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	bge _0802E440
	adds r0, #3
_0802E440:
	asrs r0, r0, #2
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x44]
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802E45C
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
_0802E45C:
	ldr r1, [sp, #0x44]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802E474
	ldr r2, _0802E4BC @ =0xFFFFFF00
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
_0802E474:
	ldr r3, [sp, #0x44]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	ldr r2, _0802E4C0 @ =0x080FB9FC
	mov r6, r8
	movs r3, #8
	ldrsh r1, [r6, r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0802E49A
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802E49A:
	ldr r0, _0802E4C4 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #7
	beq _0802E4C8
	mov r0, r8
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _0802E4C8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802E4B8
	rsbs r0, r0, #0
_0802E4B8:
	lsls r0, r2, #0x14
	b _0802E4DE
	.align 2, 0
_0802E4BC: .4byte 0xFFFFFF00
_0802E4C0: .4byte 0x080FB9FC
_0802E4C4: .4byte gMapLayer_03003910
_0802E4C8:
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	b _0802E4E0
_0802E4DA:
	subs r0, r7, #4
	lsls r0, r0, #0x10
_0802E4DE:
	lsrs r0, r0, #0x10
_0802E4E0:
	str r0, [sp, #0x44]
	mov r0, r8
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r4, r0, #0
	mov r6, sb
	lsls r6, r6, #2
	str r6, [sp, #0x60]
	cmp r1, #0
	bne _0802E530
_0802E4F4:
	bl sub_08007750
	cmp r0, #0
	bne _0802E530
	bl sub_080074CC
	cmp r0, #0
	bne _0802E530
	ldr r0, _0802E578 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E530
	bl sub_08007578
	cmp r0, #0
	bne _0802E530
	mov r1, r8
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bne _0802E526
	b _0802E7E8
_0802E526:
	bl WaitFrame
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802E4F4
_0802E530:
	bl sub_080075AC
	cmp r0, #0
	bne _0802E546
	bl sub_08007544
	cmp r0, #0
	bne _0802E546
	movs r0, #0x29
	bl PlaySE
_0802E546:
	ldr r2, [sp, #0x34]
	lsls r0, r2, #0xf
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	adds r1, r2, #0
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	cmp r1, #0
	bne _0802E55E
	b _0802E7E8
_0802E55E:
	mov r3, sp
	adds r3, #0x20
	str r3, [sp, #0x5c]
	ldr r5, [sp, #0x44]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x54]
	lsls r0, r0, #1
	ldr r6, _0802E57C @ =0x0805289C
	adds r0, r0, r6
	str r0, [sp, #0x58]
_0802E574:
	movs r6, #0
	b _0802E64E
	.align 2, 0
_0802E578: .4byte 0x030063D8
_0802E57C: .4byte 0x0805289C
_0802E580:
	mov r0, r8
	ldrh r1, [r0, #0x26]
	ldr r4, _0802E6BC @ =gPlayers
	movs r0, #0xd4
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0xd0
	adds r0, r2, r0
	ldr r3, [r0]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0802E648
	ldrh r0, [r3]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldr r1, [sp, #0x40]
	subs r0, r0, r1
	lsrs r0, r0, #0xc
	ldr r5, [sp, #0x5c]
	strh r0, [r5]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #8
	mov r1, sl
	subs r0, r0, r1
	lsls r0, r0, #4
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x22
	strh r1, [r0]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0802E5CC
	rsbs r0, r0, #0
_0802E5CC:
	cmp r0, #7
	bgt _0802E648
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802E5DA
	rsbs r0, r0, #0
_0802E5DA:
	cmp r0, #7
	bgt _0802E648
	ldr r5, [sp, #0x50]
	cmp r5, r6
	bne _0802E648
	adds r4, r2, r4
	ldrh r2, [r4, #0xc]
	adds r0, r2, #0
	cmp r0, #8
	beq _0802E648
	cmp r0, #9
	beq _0802E648
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802E648
	subs r0, r2, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802E648
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r5, r0
	ldr r1, [r1, #0x2c]
	ldr r0, [r0]
	cmp r1, r0
	beq _0802E648
	bl sub_08007544
	cmp r0, #0
	bne _0802E648
	movs r0, #1
	ldr r1, [sp, #0x3c]
	adds r2, r4, #0
	mov r3, r8
	bl sub_0802DA2C
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	movs r0, #7
	strh r0, [r4, #0xc]
_0802E648:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802E64E:
	bl sub_08001EC4
	cmp r6, r0
	bhs _0802E666
	bl sub_080077C0
	cmp r0, #0
	bne _0802E648
	bl sub_08007670
	cmp r0, #0
	beq _0802E580
_0802E666:
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x4c]
	ldr r0, [sp, #0x40]
	mov r1, sl
	movs r2, #0
	bl GetMapTileAttributes
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802E68A
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802E68A
	b _0802E7E8
_0802E68A:
	bl sub_080076A8
	cmp r0, #0
	beq _0802E6C4
	ldr r0, [sp, #0x54]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802E6C0 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x40]
	adds r3, r3, r0
	str r3, [sp, #0x40]
	ldr r5, [sp, #0x58]
	movs r6, #0
	ldrsh r1, [r5, r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	b _0802E6EA
	.align 2, 0
_0802E6BC: .4byte gPlayers
_0802E6C0: .4byte 0x0805289C
_0802E6C4:
	ldr r0, [sp, #0x54]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0802E80C @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x40]
	adds r3, r3, r0
	str r3, [sp, #0x40]
	ldr r5, [sp, #0x58]
	movs r6, #0
	ldrsh r1, [r5, r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
_0802E6EA:
	add sl, r0
	ldr r0, [sp, #0x44]
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r1, [sp, #0x40]
	asrs r5, r1, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	asrs r4, r2, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x20
	mov r7, sp
	adds r7, #0x22
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x48]
	adds r0, #0x25
	ldr r3, [sp, #0x38]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	add r1, sp, #0x24
	mov r2, sp
	adds r2, #0x26
	ldr r3, [sp, #0x30]
	bl sub_08004214
	ldr r0, _0802E810 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802E7AC
	bl sub_08007510
	cmp r0, #0
	bne _0802E7AC
	bl sub_08007604
	cmp r0, #0
	bne _0802E7AC
	bl sub_08007544
	cmp r0, #0
	bne _0802E7AC
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, _0802E814 @ =0x080FB720
	mov r3, sb
	asrs r1, r3, #0x14
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r6, _0802E818 @ =0x080FBB24
	adds r1, r2, r6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r7, r6]
	ldr r3, _0802E81C @ =0x080FBB26
	adds r2, r2, r3
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	mov r2, sp
	ldrh r3, [r2, #0x24]
	str r5, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r6, [sp, #0x30]
	str r6, [sp, #8]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802E7AC:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0802E7E8
	bl sub_080074CC
	cmp r0, #0
	bne _0802E7E8
	ldr r0, _0802E810 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E7E8
	bl sub_08007578
	cmp r0, #0
	bne _0802E7E8
	ldr r1, [sp, #0x34]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	cmp r1, #0
	beq _0802E7E8
	b _0802E574
_0802E7E8:
	ldr r2, _0802E820 @ =0x030067A0
	ldr r3, [sp, #0x60]
	adds r2, r3, r2
	movs r1, #1
	ldr r5, [sp, #0x28]
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E80C: .4byte 0x0805289C
_0802E810: .4byte 0x030063D8
_0802E814: .4byte 0x080FB720
_0802E818: .4byte 0x080FBB24
_0802E81C: .4byte 0x080FBB26
_0802E820: .4byte 0x030067A0

	thumb_func_start sub_0802E824
sub_0802E824: @ 0x0802E824
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r4, r0, #0
	str r1, [sp, #0x38]
	bl GetMultiplayerId
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r2, _0802E86C @ =gEnemies
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov sl, r0
	movs r0, #0xff
	ldr r1, [sp, #0x38]
	ands r1, r0
	str r1, [sp, #0x38]
	mov r0, sl
	adds r0, #0x88
	ldrh r0, [r0]
	subs r0, #0xe
	cmp r0, #0x17
	bhi _0802E8F4
	lsls r0, r0, #2
	ldr r1, _0802E870 @ =_0802E874
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802E86C: .4byte gEnemies
_0802E870: .4byte _0802E874
_0802E874: @ jump table
	.4byte _0802E8D4 @ case 0
	.4byte _0802E8DA @ case 1
	.4byte _0802E8DE @ case 2
	.4byte _0802E8E4 @ case 3
	.4byte _0802E8EA @ case 4
	.4byte _0802E8F0 @ case 5
	.4byte _0802E8F4 @ case 6
	.4byte _0802E8F4 @ case 7
	.4byte _0802E8F4 @ case 8
	.4byte _0802E8F4 @ case 9
	.4byte _0802E8F4 @ case 10
	.4byte _0802E8F4 @ case 11
	.4byte _0802E8F4 @ case 12
	.4byte _0802E8F4 @ case 13
	.4byte _0802E8F4 @ case 14
	.4byte _0802E8F4 @ case 15
	.4byte _0802E8F4 @ case 16
	.4byte _0802E8F4 @ case 17
	.4byte _0802E8D4 @ case 18
	.4byte _0802E8DA @ case 19
	.4byte _0802E8DE @ case 20
	.4byte _0802E8E4 @ case 21
	.4byte _0802E8EA @ case 22
	.4byte _0802E8F0 @ case 23
_0802E8D4:
	movs r2, #0
	str r2, [sp, #0x48]
	b _0802E8F4
_0802E8DA:
	movs r3, #1
	b _0802E8F2
_0802E8DE:
	movs r0, #2
	str r0, [sp, #0x48]
	b _0802E8F4
_0802E8E4:
	movs r1, #3
	str r1, [sp, #0x48]
	b _0802E8F4
_0802E8EA:
	movs r2, #4
	str r2, [sp, #0x48]
	b _0802E8F4
_0802E8F0:
	movs r3, #5
_0802E8F2:
	str r3, [sp, #0x48]
_0802E8F4:
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x44]
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	movs r7, #0
	adds r1, #0x14
	str r1, [sp, #0x74]
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x64]
	mov r3, sl
	adds r3, #0x4a
	str r3, [sp, #0x70]
	lsls r4, r4, #2
	str r4, [sp, #0x68]
	adds r4, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x64]
_0802E91A:
	lsls r1, r7, #1
	adds r0, r4, r1
	strh r2, [r0]
	adds r1, r3, r1
	strh r2, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0802E91A
	ldr r0, _0802E980 @ =0x00100004
	bl GetDataRecord
	str r0, [sp, #0x40]
	ldr r0, _0802E984 @ =0x00110004
	bl GetDataRecord
	str r0, [sp, #0x3c]
	ldr r0, _0802E988 @ =0x00130004
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r4, sl
	ldr r4, [r4, #0x10]
	mov sb, r4
	mov r0, sl
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x4c]
	ldr r1, _0802E98C @ =0x080FB9FC
	mov r2, sl
	movs r3, #8
	ldrsh r0, [r2, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	movs r6, #0
	movs r4, #0
	str r4, [sp, #0x54]
	movs r7, #0
	add r0, sp, #0x20
	mov r8, r0
	b _0802EAD8
	.align 2, 0
_0802E980: .4byte 0x00100004
_0802E984: .4byte 0x00110004
_0802E988: .4byte 0x00130004
_0802E98C: .4byte 0x080FB9FC
_0802E990:
	ldrh r0, [r4, #0xc]
	cmp r0, #8
	bne _0802E998
	b _0802EAD2
_0802E998:
	cmp r0, #9
	bne _0802E99E
	b _0802EAD2
_0802E99E:
	mov r2, sl
	ldrh r1, [r2, #0x26]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	beq _0802E9B4
	b _0802EAD2
_0802E9B4:
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E9C0
	b _0802EAD2
_0802E9C0:
	ldrh r0, [r2]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	mov r3, sb
	subs r0, r0, r3
	lsrs r0, r0, #0xc
	add r4, sp, #0x34
	strh r0, [r4]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	ldr r0, [sp, #0x4c]
	subs r1, r1, r0
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x36
	strh r1, [r5]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1b
	ldr r3, [sp, #0x58]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0802EA0C
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802EA0C:
	ldr r0, _0802EA94 @ =gMapLayer_03003910
	adds r1, r0, #0
	adds r1, #0x68
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #7
	bne _0802EA34
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EA34
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802EA2E
	rsbs r0, r0, #0
_0802EA2E:
	cmp r0, #8
	bgt _0802EA34
	movs r2, #1
_0802EA34:
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0802EA58
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EA58
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802EA52
	rsbs r0, r0, #0
_0802EA52:
	cmp r0, #4
	bgt _0802EA58
	movs r2, #1
_0802EA58:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802EA62
	rsbs r0, r0, #0
_0802EA62:
	cmp r0, #1
	bgt _0802EAD2
	ldr r0, [sp, #0x44]
	cmp r0, #5
	beq _0802EABE
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	bne _0802EA98
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EA98
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x13
	cmp r4, #0
	bge _0802EA8C
	rsbs r4, r4, #0
_0802EA8C:
	ldr r0, [sp, #0x44]
	adds r0, #4
	lsls r1, r0, #2
	b _0802EAAA
	.align 2, 0
_0802EA94: .4byte gMapLayer_03003910
_0802EA98:
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x13
	cmp r4, #0
	bge _0802EAA4
	rsbs r4, r4, #0
_0802EAA4:
	ldr r0, [sp, #0x44]
	adds r0, #4
	lsls r1, r0, #1
_0802EAAA:
	cmp r4, r1
	bge _0802EAD2
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0802EABA
	rsbs r0, r0, #0
_0802EABA:
	cmp r0, r1
	bge _0802EAD2
_0802EABE:
	ldr r0, [sp, #0x54]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x54]
	add r0, r8
	strb r7, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802EAD2:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802EAD8:
	bl sub_08001EC4
	cmp r7, r0
	bhs _0802EAFC
	movs r0, #0xd4
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0802EB64 @ =gPlayers
	adds r4, r1, r0
	bl sub_080077C0
	cmp r0, #0
	bne _0802EAD2
	bl sub_08007670
	cmp r0, #0
	bne _0802EAFC
	b _0802E990
_0802EAFC:
	ldr r1, [sp, #0x70]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802EB42
_0802EB04:
	bl sub_08007750
	cmp r0, #0
	bne _0802EB42
	bl sub_080074CC
	cmp r0, #0
	bne _0802EB42
	ldr r0, _0802EB68 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EB42
	bl sub_08007578
	cmp r0, #0
	bne _0802EB42
	mov r2, sl
	ldrh r0, [r2, #0xa]
	cmp r0, #7
	bne _0802EB36
	b _0802EC88
_0802EB36:
	bl WaitFrame
	ldr r3, [sp, #0x70]
	ldrh r0, [r3]
	cmp r0, #0
	beq _0802EB04
_0802EB42:
	bl sub_080075AC
	cmp r0, #0
	bne _0802EB72
	bl sub_08007544
	cmp r0, #0
	bne _0802EB72
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	bne _0802EB6C
	movs r0, #0x77
	bl PlaySE
	b _0802EB72
	.align 2, 0
_0802EB64: .4byte gPlayers
_0802EB68: .4byte 0x030063D8
_0802EB6C:
	movs r0, #0x2a
	bl PlaySE
_0802EB72:
	cmp r6, #0
	beq _0802EB78
	b _0802EC9C
_0802EB78:
	ldr r1, _0802EC7C @ =0x080FB9FC
	mov r4, sl
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _0802EC80 @ =0x0805289C
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	add sb, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x4c]
	adds r1, r1, r0
	movs r2, #0
	str r2, [sp, #0x50]
	ldr r3, [sp, #0x44]
	adds r3, #0x17
	str r3, [sp, #0x6c]
	mov r4, sb
	asrs r4, r4, #0xc
	mov sl, r4
	asrs r1, r1, #0xc
	mov sb, r1
	add r0, sp, #0x34
	mov r8, r0
	mov r7, sp
	adds r7, #0x36
	lsls r4, r4, #0x10
	str r4, [sp, #0x60]
	ldr r5, [sp, #0x74]
_0802EBDC:
	mov r2, sb
	lsls r1, r2, #0x10
	movs r0, #0x30
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x60]
	asrs r0, r4, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	adds r3, r7, #0
	bl sub_08005FC4
	mov r0, sl
	mov r1, sb
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	str r2, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x40]
	bl sub_08004214
	cmp r0, #0
	beq _0802EC28
	ldr r0, [sp, #0x50]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
_0802EC28:
	ldr r0, _0802EC84 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802EC70
	bl sub_08007510
	cmp r0, #0
	bne _0802EC70
	bl sub_08007604
	cmp r0, #0
	bne _0802EC70
	bl sub_08007544
	cmp r0, #0
	bne _0802EC70
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldrh r3, [r5]
	str r6, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r2, [sp, #0x40]
	str r2, [sp, #8]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08004344
_0802EC70:
	bl WaitFrame
	ldr r3, [sp, #0x50]
	cmp r3, #0
	beq _0802EBDC
	b _0802EE7A
	.align 2, 0
_0802EC7C: .4byte 0x080FB9FC
_0802EC80: .4byte 0x0805289C
_0802EC84: .4byte 0x030063D8
_0802EC88:
	ldr r2, _0802EC98 @ =0x030067A0
	ldr r4, [sp, #0x68]
	adds r2, r4, r2
	movs r1, #1
	ldr r0, [sp, #0x38]
	lsls r1, r0
	b _0802EE86
	.align 2, 0
_0802EC98: .4byte 0x030067A0
_0802EC9C:
	movs r1, #0
	str r1, [sp, #0x50]
	b _0802EDA8
_0802ECA2:
	movs r7, #0
	ldr r3, [sp, #0x54]
	cmp r7, r3
	bhs _0802ED7A
	add r4, sp, #0x34
	mov sb, r4
	movs r0, #0x36
	add r0, sp
	mov r8, r0
_0802ECB4:
	add r0, sp, #0x20
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r0, #0xd4
	muls r1, r0, r1
	ldr r0, _0802EDB4 @ =gPlayers
	adds r4, r1, r0
	adds r4, #0xd0
	ldr r1, [r4]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, sb
	mov r3, r8
	bl sub_08005FC4
	ldr r1, [r4]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [sp, #0x44]
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r7, #1
	ldr r3, [sp, #0x74]
	adds r4, r3, r2
	ldr r0, [sp, #0x64]
	adds r2, r0, r2
	movs r1, #0
	str r1, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x40]
	bl sub_08004214
	cmp r0, #0
	beq _0802ED24
	ldr r0, [sp, #0x50]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
_0802ED24:
	ldr r0, _0802EDB8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802ED6E
	bl sub_08007510
	cmp r0, #0
	bne _0802ED6E
	bl sub_08007604
	cmp r0, #0
	bne _0802ED6E
	bl sub_08007544
	cmp r0, #0
	bne _0802ED6E
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r4]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r2, [sp, #0x40]
	str r2, [sp, #8]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
_0802ED6E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0x54]
	cmp r7, r0
	blo _0802ECB4
_0802ED7A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0802EDB0
	bl sub_080074CC
	cmp r0, #0
	bne _0802EDB0
	ldr r0, _0802EDB8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EDB0
	bl sub_08007578
	cmp r0, #0
	bne _0802EDB0
	ldr r1, [sp, #0x50]
_0802EDA8:
	ldr r2, [sp, #0x54]
	cmp r1, r2
	bhs _0802EDB0
	b _0802ECA2
_0802EDB0:
	movs r7, #0
	b _0802EE4E
	.align 2, 0
_0802EDB4: .4byte gPlayers
_0802EDB8: .4byte 0x030063D8
_0802EDBC:
	ldrh r0, [r4, #0xc]
	cmp r0, #8
	beq _0802EE48
	cmp r0, #9
	beq _0802EE48
	mov r3, sl
	ldrh r1, [r3, #0x26]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0802EE48
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802EE48
	movs r0, #2
	ldr r1, [sp, #0x48]
	adds r2, r4, #0
	bl sub_0802DA2C
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r3, #0x2c]
	str r0, [r1]
	movs r0, #7
	strh r0, [r4, #0xc]
	bl sub_080075AC
	cmp r0, #0
	bne _0802EE20
	bl sub_08007544
	cmp r0, #0
	bne _0802EE20
	movs r0, #0x1a
	bl PlaySE
_0802EE20:
	bl sub_08007750
	cmp r0, #0
	bne _0802EE7A
	bl sub_080074CC
	cmp r0, #0
	bne _0802EE7A
	ldr r0, _0802EE9C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EE7A
	bl sub_08007578
	cmp r0, #0
	bne _0802EE7A
_0802EE48:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802EE4E:
	ldr r4, [sp, #0x54]
	cmp r7, r4
	bhs _0802EE7A
	add r0, sp, #0x20
	adds r0, r0, r7
	ldrb r2, [r0]
	movs r0, #0xd4
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0802EEA0 @ =gPlayers
	adds r4, r1, r0
	ldr r0, [sp, #0x5c]
	cmp r0, r2
	bne _0802EE20
	bl sub_080077C0
	cmp r0, #0
	bne _0802EE48
	bl sub_08007670
	cmp r0, #0
	beq _0802EDBC
_0802EE7A:
	ldr r2, _0802EEA4 @ =0x030067A0
	ldr r1, [sp, #0x68]
	adds r2, r1, r2
	movs r1, #1
	ldr r3, [sp, #0x38]
	lsls r1, r3
_0802EE86:
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EE9C: .4byte 0x030063D8
_0802EEA0: .4byte gPlayers
_0802EEA4: .4byte 0x030067A0

	thumb_func_start sub_0802EEA8
sub_0802EEA8: @ 0x0802EEA8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	mov sb, r2
	movs r4, #0
	ldr r1, _0802EF08 @ =0x030067A0
	lsls r0, r6, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0802EEDC
	movs r3, #1
_0802EECA:
	adds r4, #1
	cmp r4, #0xf
	bhi _0802EF62
	adds r1, r3, #0
	lsls r1, r4
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0802EECA
_0802EEDC:
	cmp r4, #0xf
	bhi _0802EF62
	ldr r0, _0802EF0C @ =0x030067D0
	lsls r3, r6, #2
	adds r0, r3, r0
	ldr r1, [r0]
	lsls r2, r4, #2
	adds r0, r2, r4
	lsls r0, r0, #3
	adds r1, r0, r1
	movs r0, #0x34
	str r0, [r1, #8]
	mov r8, r3
	adds r7, r2, #0
	cmp r5, #1
	beq _0802EF18
	cmp r5, #1
	blo _0802EF10
	cmp r5, #2
	beq _0802EF20
	b _0802EF24
	.align 2, 0
_0802EF08: .4byte 0x030067A0
_0802EF0C: .4byte 0x030067D0
_0802EF10:
	ldr r0, _0802EF14 @ =sub_0802DC18
	b _0802EF22
	.align 2, 0
_0802EF14: .4byte sub_0802DC18
_0802EF18:
	ldr r0, _0802EF1C @ =sub_0802E224
	b _0802EF22
	.align 2, 0
_0802EF1C: .4byte sub_0802E224
_0802EF20:
	ldr r0, _0802EF70 @ =sub_0802E824
_0802EF22:
	str r0, [r1, #0xc]
_0802EF24:
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r1, r0, #0
	ldr r0, _0802EF74 @ =0x030067D0
	add r0, r8
	ldr r2, [r0]
	adds r0, r7, r4
	lsls r0, r0, #3
	adds r0, r0, r2
	str r1, [r0, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x24]
	mov r1, sb
	lsls r2, r1, #0x10
	orrs r2, r4
	adds r1, r6, #0
	bl CreateThread
	ldr r2, _0802EF78 @ =0x030067A0
	add r2, r8
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0802EF62:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EF70: .4byte sub_0802E824
_0802EF74: .4byte 0x030067D0
_0802EF78: .4byte 0x030067A0

	thumb_func_start sub_0802EF7C
sub_0802EF7C: @ 0x0802EF7C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802EFC0 @ =0x030067F0
	lsls r4, r5, #2
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0802EFC4 @ =0x03006800
	str r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	bl Alloc
	ldr r1, _0802EFC8 @ =0x030067C0
	adds r4, r4, r1
	str r0, [r4]
	cmp r5, #0
	bne _0802EFB8
	ldr r4, _0802EFCC @ =0x03006790
	movs r0, #0xa0
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _0802EFD0 @ =0x03006808
	movs r0, #0xc0
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
_0802EFB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802EFC0: .4byte 0x030067F0
_0802EFC4: .4byte 0x03006800
_0802EFC8: .4byte 0x030067C0
_0802EFCC: .4byte 0x03006790
_0802EFD0: .4byte 0x03006808

	thumb_func_start sub_0802EFD4
sub_0802EFD4: @ 0x0802EFD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802EFE8 @ =0x030067C0
	lsls r1, r4, #2
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0802EFFE
	adds r5, r1, #0
	b _0802EFF0
	.align 2, 0
_0802EFE8: .4byte 0x030067C0
_0802EFEC:
	bl WaitFrame
_0802EFF0:
	ldr r0, _0802F01C @ =0x030067C0
	adds r0, r5, r0
	ldr r0, [r0]
	bl IsThreadInList
	cmp r0, #0
	bne _0802EFEC
_0802EFFE:
	ldr r0, _0802F01C @ =0x030067C0
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	bl Free
	movs r0, #0
	str r0, [r4]
	ldr r1, _0802F020 @ =0x03006790
	ldr r0, [r1]
	cmp r0, #0
	beq _0802F032
	adds r4, r1, #0
	b _0802F028
	.align 2, 0
_0802F01C: .4byte 0x030067C0
_0802F020: .4byte 0x03006790
_0802F024:
	bl WaitFrame
_0802F028:
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	bne _0802F024
_0802F032:
	ldr r5, _0802F050 @ =0x03006790
	ldr r0, [r5]
	bl Free
	ldr r4, _0802F054 @ =0x03006808
	ldr r0, [r4]
	bl Free
	movs r0, #0
	str r0, [r5]
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F050: .4byte 0x03006790
_0802F054: .4byte 0x03006808

	thumb_func_start sub_0802F058
sub_0802F058: @ 0x0802F058
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0802F0A4 @ =gPlayers
	adds r6, r1, r0
	ldr r1, _0802F0A8 @ =0x080FBB84
	lsls r0, r5, #1
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r1, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r5, #0
	beq _0802F08A
	bl sub_0801076C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0802F08A:
	adds r0, r6, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	blt _0802F0AC
	adds r0, r1, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0802F0AE
	.align 2, 0
_0802F0A4: .4byte gPlayers
_0802F0A8: .4byte 0x080FBB84
_0802F0AC:
	movs r0, #0
_0802F0AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0802F0B4
sub_0802F0B4: @ 0x0802F0B4
	bx lr
	.align 2, 0

	thumb_func_start sub_0802F0B8
sub_0802F0B8: @ 0x0802F0B8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802F0F0 @ =0x030067A0
	lsls r4, r5, #2
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0802F0F4 @ =0x030067B4
	str r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	bl Alloc
	ldr r1, _0802F0F8 @ =0x030067D0
	adds r4, r4, r1
	str r0, [r4]
	cmp r5, #0
	bne _0802F0E8
	ldr r4, _0802F0FC @ =0x03006804
	movs r0, #0xa0
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4]
_0802F0E8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F0F0: .4byte 0x030067A0
_0802F0F4: .4byte 0x030067B4
_0802F0F8: .4byte 0x030067D0
_0802F0FC: .4byte 0x03006804

	thumb_func_start sub_0802F100
sub_0802F100: @ 0x0802F100
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0802F114 @ =0x030067D0
	lsls r4, r6, #2
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F12A
	adds r5, r4, #0
	b _0802F11C
	.align 2, 0
_0802F114: .4byte 0x030067D0
_0802F118:
	bl WaitFrame
_0802F11C:
	ldr r0, _0802F138 @ =0x030067D0
	adds r0, r5, r0
	ldr r0, [r0]
	bl IsThreadInList
	cmp r0, #0
	bne _0802F118
_0802F12A:
	ldr r0, _0802F13C @ =0x03006804
	ldr r0, [r0]
	lsls r5, r6, #2
	cmp r0, #0
	beq _0802F150
	b _0802F144
	.align 2, 0
_0802F138: .4byte 0x030067D0
_0802F13C: .4byte 0x03006804
_0802F140:
	bl WaitFrame
_0802F144:
	ldr r0, _0802F170 @ =0x03006804
	ldr r0, [r0]
	bl IsThreadInList
	cmp r0, #0
	bne _0802F140
_0802F150:
	ldr r4, _0802F174 @ =0x030067D0
	adds r4, r5, r4
	ldr r0, [r4]
	bl Free
	ldr r5, _0802F170 @ =0x03006804
	ldr r0, [r5]
	bl Free
	movs r0, #0
	str r0, [r4]
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F170: .4byte 0x03006804
_0802F174: .4byte 0x030067D0
