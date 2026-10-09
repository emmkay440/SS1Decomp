	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080119DC
sub_080119DC: @ 0x080119DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	mov r8, r0
	ldr r1, _08011AB4 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r2, r0, #2
	adds r0, r2, r1
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08011A0A
	b _08011B3A
_08011A0A:
	adds r0, r1, #0
	adds r0, #0x70
	adds r0, r2, r0
	movs r2, #0
	cmp r0, #0
	beq _08011A30
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _08011A30
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011A30:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	movs r3, #0
	mov sb, r0
	cmp r2, #0
	beq _08011A70
	movs r1, #0
	ldr r0, _08011AB8 @ =0x00000153
	adds r5, r2, r0
	adds r0, #3
	adds r4, r2, r0
_08011A48:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _08011A64
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011A64:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011A48
_08011A70:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r7, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _08011AB4 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r0, r0, r1
	cmp r0, #0
	beq _08011ADC
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08011AC6
	cmp r0, #3
	bgt _08011ABC
	cmp r0, #2
	beq _08011AC6
	b _08011ACA
	.align 2, 0
_08011AB4: .4byte gPlayerStats
_08011AB8: .4byte 0x00000153
_08011ABC:
	cmp r0, #4
	beq _08011AC6
	cmp r0, #5
	beq _08011ADC
	b _08011ACA
_08011AC6:
	lsls r0, r1, #0xc
	lsrs r6, r0, #0x1b
_08011ACA:
	cmp r6, #0
	beq _08011ADC
	subs r0, r6, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08011ADE
_08011ADC:
	movs r0, #0
_08011ADE:
	mov r1, sb
	asrs r6, r1, #0x10
	movs r3, #0
	cmp r0, #0
	beq _08011B1C
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011AF4:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _08011B10
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011B10:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011AF4
_08011B1C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08011B3A:
	ldr r1, _08011BE8 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08011B4A
	b _08011C72
_08011B4A:
	adds r0, r1, #0
	adds r0, #0x80
	movs r2, #0
	cmp r0, #0
	beq _08011B6E
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _08011B6E
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011B6E:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	movs r3, #0
	mov sb, r0
	cmp r2, #0
	beq _08011BAE
	movs r1, #0
	adds r5, r2, #0
	adds r5, #0xf2
	adds r4, r2, #0
	adds r4, #0xf5
_08011B86:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _08011BA2
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011BA2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011B86
_08011BAE:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08011BEC @ =0x03003D90
	cmp r0, #0
	beq _08011C14
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08011BFA
	cmp r0, #3
	bgt _08011BF0
	cmp r0, #2
	beq _08011BFA
	b _08011C00
	.align 2, 0
_08011BE8: .4byte gPlayerStats
_08011BEC: .4byte 0x03003D90
_08011BF0:
	cmp r0, #4
	beq _08011BFA
	cmp r0, #5
	beq _08011C14
	b _08011C00
_08011BFA:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	mov sl, r0
_08011C00:
	mov r0, sl
	cmp r0, #0
	beq _08011C14
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08011C16
_08011C14:
	movs r0, #0
_08011C16:
	mov r1, sb
	asrs r6, r1, #0x10
	movs r3, #0
	cmp r0, #0
	beq _08011C54
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011C2C:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _08011C48
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011C48:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011C2C
_08011C54:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08011C72:
	ldr r1, _08011D20 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08011C82
	b _08011DAA
_08011C82:
	adds r0, r1, #0
	adds r0, #0x7c
	movs r2, #0
	cmp r0, #0
	beq _08011CA6
	ldr r1, [r1, #0x7c]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _08011CA6
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011CA6:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	movs r3, #0
	mov sb, r0
	cmp r2, #0
	beq _08011CE6
	movs r1, #0
	adds r5, r2, #0
	adds r5, #0xf2
	adds r4, r2, #0
	adds r4, #0xf5
_08011CBE:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _08011CDA
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011CDA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011CBE
_08011CE6:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08011D24 @ =0x03003D8C
	cmp r0, #0
	beq _08011D4C
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08011D32
	cmp r0, #3
	bgt _08011D28
	cmp r0, #2
	beq _08011D32
	b _08011D38
	.align 2, 0
_08011D20: .4byte gPlayerStats
_08011D24: .4byte 0x03003D8C
_08011D28:
	cmp r0, #4
	beq _08011D32
	cmp r0, #5
	beq _08011D4C
	b _08011D38
_08011D32:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
_08011D38:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08011D4C
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08011D4E
_08011D4C:
	movs r0, #0
_08011D4E:
	mov r1, sb
	asrs r6, r1, #0x10
	movs r3, #0
	cmp r0, #0
	beq _08011D8C
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011D64:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _08011D80
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011D80:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011D64
_08011D8C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08011DAA:
	ldr r1, _08011E50 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08011E3A
	adds r0, r1, #0
	adds r0, #0x84
	movs r2, #0
	cmp r0, #0
	beq _08011DDC
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _08011DDC
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011DDC:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	movs r3, #0
	cmp r2, #0
	beq _08011E1C
	movs r1, #0
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r5, r2, r0
	adds r0, #3
	adds r4, r2, r0
_08011DF4:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _08011E10
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011E10:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011DF4
_08011E1C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08011E3A:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011E50: .4byte gPlayerStats
