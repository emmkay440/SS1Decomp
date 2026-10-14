	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08005A2C
sub_08005A2C: @ 0x08005A2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	asrs r1, r1, #0xf
	mov r8, r1
	asrs r2, r2, #0xf
	mov ip, r2
	cmp r3, #0
	beq _08005A90
	ldr r0, _08005A8C @ =gMapLayer_03003C00
	ldr r6, [r0, #0x54]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, #0x58
	ldrh r0, [r0]
	mov sb, r0
_08005A54:
	movs r1, #2
	rsbs r1, r1, #0
	adds r2, r3, #1
	mov r0, r8
	adds r4, r0, r3
	mov r7, sp
	adds r0, r7, r3
	adds r3, r0, #2
_08005A64:
	mov r7, ip
	adds r0, r7, r1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	strb r0, [r3]
	adds r3, #5
	adds r1, #1
	cmp r1, #2
	ble _08005A64
	adds r3, r2, #0
	cmp r3, #2
	ble _08005A54
	b _08005AD4
	.align 2, 0
_08005A8C: .4byte gMapLayer_03003C00
_08005A90:
	ldr r0, _08005AE8 @ =gMapLayer_03003910
	ldr r6, [r0, #0x54]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, #0x58
	ldrh r0, [r0]
	mov sb, r0
_08005A9E:
	movs r1, #2
	rsbs r1, r1, #0
	adds r2, r3, #1
	mov r0, r8
	adds r4, r0, r3
	mov r7, sp
	adds r0, r7, r3
	adds r3, r0, #2
_08005AAE:
	mov r7, ip
	adds r0, r7, r1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r6, r0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	strb r0, [r3]
	adds r3, #5
	adds r1, #1
	cmp r1, #2
	ble _08005AAE
	adds r3, r2, #0
	cmp r3, #2
	ble _08005A9E
_08005AD4:
	mov r0, sp
	ldrb r0, [r0, #0xc]
	cmp r0, #0xd
	bls _08005ADE
	b _08005ED8
_08005ADE:
	lsls r0, r0, #2
	ldr r1, _08005AEC @ =_08005AF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005AE8: .4byte gMapLayer_03003910
_08005AEC: .4byte _08005AF0
_08005AF0: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005B28 @ case 1
	.4byte _08005D1E @ case 2
	.4byte _08005D1E @ case 3
	.4byte _08005D54 @ case 4
	.4byte _08005D54 @ case 5
	.4byte _08005D88 @ case 6
	.4byte _08005D88 @ case 7
	.4byte _08005DC0 @ case 8
	.4byte _08005DC0 @ case 9
	.4byte _08005DF4 @ case 10
	.4byte _08005E28 @ case 11
	.4byte _08005E60 @ case 12
	.4byte _08005E98 @ case 13
_08005B28:
	cmp r5, #7
	bls _08005B2E
	b _08005ED8
_08005B2E:
	lsls r0, r5, #2
	ldr r1, _08005B38 @ =_08005B3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005B38: .4byte _08005B3C
_08005B3C: @ jump table
	.4byte _08005B5C @ case 0
	.4byte _08005C94 @ case 1
	.4byte _08005B98 @ case 2
	.4byte _08005CBE @ case 3
	.4byte _08005BEC @ case 4
	.4byte _08005CDE @ case 5
	.4byte _08005C44 @ case 6
	.4byte _08005CFE @ case 7
_08005B5C:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #1
	beq _08005B66
	b _08005ED0
_08005B66:
	mov r0, sp
	ldrb r0, [r0, #7]
	subs r0, #6
	cmp r0, #5
	bls _08005B72
	b _08005ED4
_08005B72:
	lsls r0, r0, #2
	ldr r1, _08005B7C @ =_08005B80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005B7C: .4byte _08005B80
_08005B80: @ jump table
	.4byte _08005D88 @ case 0
	.4byte _08005D88 @ case 1
	.4byte _08005DC0 @ case 2
	.4byte _08005DC0 @ case 3
	.4byte _08005DF4 @ case 4
	.4byte _08005E28 @ case 5
_08005B98:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	beq _08005BA4
_08005BA0:
	movs r0, #3
	b _08005EDA
_08005BA4:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	subs r0, #2
	cmp r0, #0xa
	bls _08005BB0
	b _08005ED4
_08005BB0:
	lsls r0, r0, #2
	ldr r1, _08005BBC @ =_08005BC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005BBC: .4byte _08005BC0
_08005BC0: @ jump table
	.4byte _08005D1E @ case 0
	.4byte _08005D1E @ case 1
	.4byte _08005ED4 @ case 2
	.4byte _08005ED4 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005DC0 @ case 6
	.4byte _08005DC0 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005E28 @ case 9
	.4byte _08005E60 @ case 10
_08005BEC:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #1
	beq _08005BF8
_08005BF4:
	movs r0, #5
	b _08005EDA
_08005BF8:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	subs r0, #2
	cmp r0, #0xb
	bls _08005C04
	b _08005ED4
_08005C04:
	lsls r0, r0, #2
	ldr r1, _08005C10 @ =_08005C14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005C10: .4byte _08005C14
_08005C14: @ jump table
	.4byte _08005D1E @ case 0
	.4byte _08005D1E @ case 1
	.4byte _08005D54 @ case 2
	.4byte _08005D54 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005ED4 @ case 6
	.4byte _08005ED4 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005ED4 @ case 9
	.4byte _08005E60 @ case 10
	.4byte _08005E98 @ case 11
_08005C44:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	beq _08005C50
_08005C4C:
	movs r0, #7
	b _08005EDA
_08005C50:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	subs r0, #4
	cmp r0, #9
	bls _08005C5C
	b _08005ED4
_08005C5C:
	lsls r0, r0, #2
	ldr r1, _08005C68 @ =_08005C6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005C68: .4byte _08005C6C
_08005C6C: @ jump table
	.4byte _08005D54 @ case 0
	.4byte _08005D54 @ case 1
	.4byte _08005D88 @ case 2
	.4byte _08005D88 @ case 3
	.4byte _08005ED4 @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005DF4 @ case 6
	.4byte _08005ED4 @ case 7
	.4byte _08005ED4 @ case 8
	.4byte _08005E98 @ case 9
_08005C94:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08005C9E
	b _08005DBC
_08005C9E:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _08005CB2
	mov r0, sp
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08005CB0
	b _08005ED4
_08005CB0:
	b _08005DBC
_08005CB2:
	mov r0, sp
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08005CBC
	b _08005ED0
_08005CBC:
	b _08005DBC
_08005CBE:
	mov r0, sp
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08005CC8
	b _08005ECC
_08005CC8:
	mov r0, sp
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08005CD2
	b _08005ECC
_08005CD2:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08005CDC
	b _08005ED4
_08005CDC:
	b _08005BF4
_08005CDE:
	mov r0, sp
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08005CE8
	b _08005E94
_08005CE8:
	mov r0, sp
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _08005CF2
	b _08005E94
_08005CF2:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08005CFC
	b _08005ED4
_08005CFC:
	b _08005C4C
_08005CFE:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	bne _08005D08
	b _08005E5C
_08005D08:
	mov r0, sp
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _08005D12
	b _08005E5C
_08005D12:
	mov r0, sp
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08005D1C
	b _08005ED4
_08005D1C:
	b _08005C4C
_08005D1E:
	cmp r5, #7
	bls _08005D24
	b _08005ED8
_08005D24:
	lsls r0, r5, #2
	ldr r1, _08005D30 @ =_08005D34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D30: .4byte _08005D34
_08005D34: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005DBC @ case 2
	.4byte _08005DBC @ case 3
	.4byte _08005E94 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005D54:
	cmp r5, #7
	bls _08005D5A
	b _08005ED8
_08005D5A:
	lsls r0, r5, #2
	ldr r1, _08005D64 @ =_08005D68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D64: .4byte _08005D68
_08005D68: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ECC @ case 4
	.4byte _08005E5C @ case 5
	.4byte _08005E5C @ case 6
	.4byte _08005ED8 @ case 7
_08005D88:
	cmp r5, #7
	bls _08005D8E
	b _08005ED8
_08005D8E:
	lsls r0, r5, #2
	ldr r1, _08005D98 @ =_08005D9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005D98: .4byte _08005D9C
_08005D9C: @ jump table
	.4byte _08005DBC @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005E94 @ case 6
	.4byte _08005E94 @ case 7
_08005DBC:
	movs r0, #2
	b _08005EDA
_08005DC0:
	cmp r5, #7
	bls _08005DC6
	b _08005ED8
_08005DC6:
	lsls r0, r5, #2
	ldr r1, _08005DD0 @ =_08005DD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005DD0: .4byte _08005DD4
_08005DD4: @ jump table
	.4byte _08005E5C @ case 0
	.4byte _08005ECC @ case 1
	.4byte _08005ECC @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005DF4:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E04 @ =_08005E08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E04: .4byte _08005E08
_08005E08: @ jump table
	.4byte _08005BA0 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005BF4 @ case 5
	.4byte _08005BF4 @ case 6
	.4byte _08005ED4 @ case 7
_08005E28:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E38 @ =_08005E3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E38: .4byte _08005E3C
_08005E3C: @ jump table
	.4byte _08005E5C @ case 0
	.4byte _08005ED4 @ case 1
	.4byte _08005BF4 @ case 2
	.4byte _08005BF4 @ case 3
	.4byte _08005ED8 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005E5C:
	movs r0, #8
	b _08005EDA
_08005E60:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005E70 @ =_08005E74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E70: .4byte _08005E74
_08005E74: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED0 @ case 1
	.4byte _08005ED0 @ case 2
	.4byte _08005ED4 @ case 3
	.4byte _08005E94 @ case 4
	.4byte _08005ED8 @ case 5
	.4byte _08005ED8 @ case 6
	.4byte _08005ED8 @ case 7
_08005E94:
	movs r0, #6
	b _08005EDA
_08005E98:
	cmp r5, #7
	bhi _08005ED8
	lsls r0, r5, #2
	ldr r1, _08005EA8 @ =_08005EAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005EA8: .4byte _08005EAC
_08005EAC: @ jump table
	.4byte _08005ED8 @ case 0
	.4byte _08005ED8 @ case 1
	.4byte _08005ED8 @ case 2
	.4byte _08005ED8 @ case 3
	.4byte _08005ECC @ case 4
	.4byte _08005ED4 @ case 5
	.4byte _08005ED0 @ case 6
	.4byte _08005ED0 @ case 7
_08005ECC:
	movs r0, #4
	b _08005EDA
_08005ED0:
	movs r0, #1
	b _08005EDA
_08005ED4:
	movs r0, #0
	b _08005EDA
_08005ED8:
	adds r0, r5, #1
_08005EDA:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08005EE8:
	.byte 0x00, 0x04, 0x00, 0x0C, 0x81, 0x00, 0x09, 0x18
	.byte 0x89, 0x00, 0x05, 0x48, 0x09, 0x18, 0x88, 0x68, 0x00, 0x28, 0x04, 0xD0, 0x00, 0x20, 0xC8, 0x81
	.byte 0x88, 0x81, 0x48, 0x80, 0x08, 0x80, 0x70, 0x47, 0x10, 0x39, 0x00, 0x03, 0x00, 0x04, 0x00, 0x0C
	.byte 0x81, 0x00, 0x09, 0x18, 0x89, 0x00, 0x05, 0x48, 0x09, 0x18, 0x88, 0x68, 0x00, 0x28, 0x04, 0xD0
	.byte 0x00, 0x20, 0xC8, 0x81, 0x88, 0x81, 0x48, 0x80, 0x08, 0x80, 0x70, 0x47, 0x00, 0x3C, 0x00, 0x03
	.byte 0x06, 0x4A, 0x53, 0x6D, 0x00, 0x04, 0x09, 0x04, 0xC0, 0x14, 0xC9, 0x14, 0x58, 0x32, 0x12, 0x88
	.byte 0x51, 0x43, 0x40, 0x18, 0x40, 0x00, 0x1B, 0x18, 0x18, 0x1C, 0x70, 0x47, 0x10, 0x39, 0x00, 0x03
