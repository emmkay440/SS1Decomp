	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08010E00
sub_08010E00: @ 0x08010E00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	ldr r1, _08010E34 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r2, r0, #2
	adds r0, r2, r1
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	mov ip, r1
	cmp r0, #0
	blt _08010E24
	b _08010F2E
_08010E24:
	mov r0, ip
	adds r0, #0x70
	adds r0, r2, r0
	movs r2, #0
	cmp r0, #0
	bne _08010E38
	movs r0, #0
	b _08010E54
	.align 2, 0
_08010E34: .4byte gPlayerStats
_08010E38:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _08010E52
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08010E52:
	adds r0, r2, #0
_08010E54:
	movs r3, #0
	cmp r0, #0
	beq _08010E8C
	movs r1, #0
	ldr r2, _08010EBC @ =0x00000153
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08010E64:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08010E80
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08010E80:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010E64
_08010E8C:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _08010EC0 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r0, r0, r1
	cmp r0, #0
	beq _08010EE4
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08010ECE
	cmp r0, #3
	bgt _08010EC4
	cmp r0, #2
	beq _08010ECE
	b _08010ED2
	.align 2, 0
_08010EBC: .4byte 0x00000153
_08010EC0: .4byte gPlayerStats
_08010EC4:
	cmp r0, #4
	beq _08010ECE
	cmp r0, #5
	beq _08010EE4
	b _08010ED2
_08010ECE:
	lsls r0, r1, #0xc
	lsrs r6, r0, #0x1b
_08010ED2:
	cmp r6, #0
	beq _08010EE4
	subs r0, r6, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08010EE6
_08010EE4:
	movs r0, #0
_08010EE6:
	movs r3, #0
	ldr r1, _08010F4C @ =gPlayerStats
	mov ip, r1
	cmp r0, #0
	beq _08010F24
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08010EFC:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08010F18
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08010F18:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010EFC
_08010F24:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08010F2E:
	mov r0, ip
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08010F3C
	b _0801103A
_08010F3C:
	mov r0, ip
	adds r0, #0x80
	movs r2, #0
	cmp r0, #0
	bne _08010F50
	movs r0, #0
	b _08010F6C
	.align 2, 0
_08010F4C: .4byte gPlayerStats
_08010F50:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _08010F6A
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08010F6A:
	adds r0, r2, #0
_08010F6C:
	movs r3, #0
	ldr r6, _08010FC8 @ =0x03003D90
	cmp r0, #0
	beq _08010FA6
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_08010F7E:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08010F9A
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08010F9A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08010F7E
_08010FA6:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r6, #0
	beq _08010FF0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08010FD6
	cmp r0, #3
	bgt _08010FCC
	cmp r0, #2
	beq _08010FD6
	b _08010FDC
	.align 2, 0
_08010FC8: .4byte 0x03003D90
_08010FCC:
	cmp r0, #4
	beq _08010FD6
	cmp r0, #5
	beq _08010FF0
	b _08010FDC
_08010FD6:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	mov r8, r0
_08010FDC:
	mov r0, r8
	cmp r0, #0
	beq _08010FF0
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08010FF2
_08010FF0:
	movs r0, #0
_08010FF2:
	movs r3, #0
	ldr r1, _08011058 @ =gPlayerStats
	mov ip, r1
	cmp r0, #0
	beq _08011030
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011008:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08011024
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011024:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011008
_08011030:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801103A:
	mov r0, ip
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08011048
	b _0801114C
_08011048:
	mov r0, ip
	adds r0, #0x7c
	movs r2, #0
	cmp r0, #0
	bne _0801105C
	movs r0, #0
	b _0801107A
	.align 2, 0
_08011058: .4byte gPlayerStats
_0801105C:
	mov r0, ip
	ldr r1, [r0, #0x7c]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _08011078
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011078:
	adds r0, r2, #0
_0801107A:
	movs r3, #0
	ldr r6, _080110D8 @ =0x03003D8C
	cmp r0, #0
	beq _080110B4
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_0801108C:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080110A8
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080110A8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801108C
_080110B4:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r6, #0
	beq _08011102
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080110E6
	cmp r0, #3
	bgt _080110DC
	cmp r0, #2
	beq _080110E6
	b _080110EC
	.align 2, 0
_080110D8: .4byte 0x03003D8C
_080110DC:
	cmp r0, #4
	beq _080110E6
	cmp r0, #5
	beq _08011102
	b _080110EC
_080110E6:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	mov sb, r0
_080110EC:
	mov r1, sb
	cmp r1, #0
	beq _08011102
	mov r0, sb
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08011104
_08011102:
	movs r0, #0
_08011104:
	movs r3, #0
	ldr r2, _08011168 @ =gPlayerStats
	mov ip, r2
	cmp r0, #0
	beq _08011142
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_0801111A:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08011136
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011136:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801111A
_08011142:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801114C:
	mov r0, ip
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080111CC
	mov r0, ip
	adds r0, #0x84
	movs r2, #0
	cmp r0, #0
	bne _0801116C
	movs r0, #0
	b _08011188
	.align 2, 0
_08011168: .4byte gPlayerStats
_0801116C:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _08011186
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011186:
	adds r0, r2, #0
_08011188:
	movs r3, #0
	cmp r0, #0
	beq _080111C2
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_0801119A:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080111B6
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080111B6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801119A
_080111C2:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080111CC:
	bl GetPlayerClass
	cmp r0, #3
	bne _080111EA
	ldr r0, _080111FC @ =gPlayerStats
	adds r0, #0x58
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080111EA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080111FC: .4byte gPlayerStats

	thumb_func_start sub_08011200
sub_08011200: @ 0x08011200
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	ldr r1, _08011234 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r2, r0, #2
	adds r0, r2, r1
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	mov ip, r1
	cmp r0, #0
	blt _08011224
	b _0801132E
_08011224:
	mov r0, ip
	adds r0, #0x70
	adds r0, r2, r0
	movs r2, #0
	cmp r0, #0
	bne _08011238
	movs r0, #0
	b _08011254
	.align 2, 0
_08011234: .4byte gPlayerStats
_08011238:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _08011252
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011252:
	adds r0, r2, #0
_08011254:
	movs r3, #0
	cmp r0, #0
	beq _0801128C
	movs r1, #0
	ldr r2, _080112BC @ =0x00000153
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011264:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08011280
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011280:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011264
_0801128C:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _080112C0 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r0, r0, r1
	cmp r0, #0
	beq _080112E4
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080112CE
	cmp r0, #3
	bgt _080112C4
	cmp r0, #2
	beq _080112CE
	b _080112D2
	.align 2, 0
_080112BC: .4byte 0x00000153
_080112C0: .4byte gPlayerStats
_080112C4:
	cmp r0, #4
	beq _080112CE
	cmp r0, #5
	beq _080112E4
	b _080112D2
_080112CE:
	lsls r0, r1, #0xc
	lsrs r6, r0, #0x1b
_080112D2:
	cmp r6, #0
	beq _080112E4
	subs r0, r6, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _080112E6
_080112E4:
	movs r0, #0
_080112E6:
	movs r3, #0
	ldr r1, _0801134C @ =gPlayerStats
	mov ip, r1
	cmp r0, #0
	beq _08011324
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_080112FC:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08011318
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011318:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080112FC
_08011324:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801132E:
	mov r0, ip
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0801133C
	b _0801143A
_0801133C:
	mov r0, ip
	adds r0, #0x80
	movs r2, #0
	cmp r0, #0
	bne _08011350
	movs r0, #0
	b _0801136C
	.align 2, 0
_0801134C: .4byte gPlayerStats
_08011350:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _0801136A
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0801136A:
	adds r0, r2, #0
_0801136C:
	movs r3, #0
	ldr r6, _080113C8 @ =0x03003D90
	cmp r0, #0
	beq _080113A6
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_0801137E:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0801139A
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801139A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801137E
_080113A6:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r6, #0
	beq _080113F0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080113D6
	cmp r0, #3
	bgt _080113CC
	cmp r0, #2
	beq _080113D6
	b _080113DC
	.align 2, 0
_080113C8: .4byte 0x03003D90
_080113CC:
	cmp r0, #4
	beq _080113D6
	cmp r0, #5
	beq _080113F0
	b _080113DC
_080113D6:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	mov r8, r0
_080113DC:
	mov r0, r8
	cmp r0, #0
	beq _080113F0
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _080113F2
_080113F0:
	movs r0, #0
_080113F2:
	movs r3, #0
	ldr r1, _08011458 @ =gPlayerStats
	mov ip, r1
	cmp r0, #0
	beq _08011430
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011408:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08011424
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011424:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011408
_08011430:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801143A:
	mov r0, ip
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08011448
	b _0801154C
_08011448:
	mov r0, ip
	adds r0, #0x7c
	movs r2, #0
	cmp r0, #0
	bne _0801145C
	movs r0, #0
	b _0801147A
	.align 2, 0
_08011458: .4byte gPlayerStats
_0801145C:
	mov r0, ip
	ldr r1, [r0, #0x7c]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _08011478
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011478:
	adds r0, r2, #0
_0801147A:
	movs r3, #0
	ldr r6, _080114D8 @ =0x03003D8C
	cmp r0, #0
	beq _080114B4
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_0801148C:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080114A8
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080114A8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801148C
_080114B4:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r6, #0
	beq _08011502
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080114E6
	cmp r0, #3
	bgt _080114DC
	cmp r0, #2
	beq _080114E6
	b _080114EC
	.align 2, 0
_080114D8: .4byte 0x03003D8C
_080114DC:
	cmp r0, #4
	beq _080114E6
	cmp r0, #5
	beq _08011502
	b _080114EC
_080114E6:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	mov sb, r0
_080114EC:
	mov r1, sb
	cmp r1, #0
	beq _08011502
	mov r0, sb
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08011504
_08011502:
	movs r0, #0
_08011504:
	movs r3, #0
	ldr r2, _08011568 @ =gPlayerStats
	mov ip, r2
	cmp r0, #0
	beq _08011542
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_0801151A:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08011536
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011536:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801151A
_08011542:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801154C:
	mov r0, ip
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080115CC
	mov r0, ip
	adds r0, #0x84
	movs r2, #0
	cmp r0, #0
	bne _0801156C
	movs r0, #0
	b _08011588
	.align 2, 0
_08011568: .4byte gPlayerStats
_0801156C:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _08011586
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011586:
	adds r0, r2, #0
_08011588:
	movs r3, #0
	cmp r0, #0
	beq _080115C2
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_0801159A:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080115B6
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080115B6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801159A
_080115C2:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080115CC:
	bl GetPlayerClass
	cmp r0, #2
	bne _080115EA
	ldr r0, _080115FC @ =gPlayerStats
	adds r0, #0x58
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080115EA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080115FC: .4byte gPlayerStats

	thumb_func_start sub_08011600
sub_08011600: @ 0x08011600
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	ldr r1, _08011634 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r2, r0, #2
	adds r0, r2, r1
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	mov ip, r1
	cmp r0, #0
	blt _08011624
	b _0801172E
_08011624:
	mov r0, ip
	adds r0, #0x70
	adds r0, r2, r0
	movs r2, #0
	cmp r0, #0
	bne _08011638
	movs r0, #0
	b _08011654
	.align 2, 0
_08011634: .4byte gPlayerStats
_08011638:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _08011652
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011652:
	adds r0, r2, #0
_08011654:
	movs r3, #0
	cmp r0, #0
	beq _0801168C
	movs r1, #0
	ldr r2, _080116BC @ =0x00000153
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011664:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08011680
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011680:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011664
_0801168C:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _080116C0 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r0, r0, r1
	cmp r0, #0
	beq _080116E4
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080116CE
	cmp r0, #3
	bgt _080116C4
	cmp r0, #2
	beq _080116CE
	b _080116D2
	.align 2, 0
_080116BC: .4byte 0x00000153
_080116C0: .4byte gPlayerStats
_080116C4:
	cmp r0, #4
	beq _080116CE
	cmp r0, #5
	beq _080116E4
	b _080116D2
_080116CE:
	lsls r0, r1, #0xc
	lsrs r6, r0, #0x1b
_080116D2:
	cmp r6, #0
	beq _080116E4
	subs r0, r6, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _080116E6
_080116E4:
	movs r0, #0
_080116E6:
	movs r3, #0
	ldr r1, _0801174C @ =gPlayerStats
	mov ip, r1
	cmp r0, #0
	beq _08011724
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_080116FC:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08011718
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011718:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080116FC
_08011724:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801172E:
	mov r0, ip
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0801173C
	b _0801183A
_0801173C:
	mov r0, ip
	adds r0, #0x80
	movs r2, #0
	cmp r0, #0
	bne _08011750
	movs r0, #0
	b _0801176C
	.align 2, 0
_0801174C: .4byte gPlayerStats
_08011750:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _0801176A
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0801176A:
	adds r0, r2, #0
_0801176C:
	movs r3, #0
	ldr r6, _080117C8 @ =0x03003D90
	cmp r0, #0
	beq _080117A6
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_0801177E:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _0801179A
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801179A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801177E
_080117A6:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r6, #0
	beq _080117F0
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080117D6
	cmp r0, #3
	bgt _080117CC
	cmp r0, #2
	beq _080117D6
	b _080117DC
	.align 2, 0
_080117C8: .4byte 0x03003D90
_080117CC:
	cmp r0, #4
	beq _080117D6
	cmp r0, #5
	beq _080117F0
	b _080117DC
_080117D6:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	mov r8, r0
_080117DC:
	mov r0, r8
	cmp r0, #0
	beq _080117F0
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _080117F2
_080117F0:
	movs r0, #0
_080117F2:
	movs r3, #0
	ldr r1, _08011858 @ =gPlayerStats
	mov ip, r1
	cmp r0, #0
	beq _08011830
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011808:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08011824
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011824:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011808
_08011830:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801183A:
	mov r0, ip
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08011848
	b _0801194C
_08011848:
	mov r0, ip
	adds r0, #0x7c
	movs r2, #0
	cmp r0, #0
	bne _0801185C
	movs r0, #0
	b _0801187A
	.align 2, 0
_08011858: .4byte gPlayerStats
_0801185C:
	mov r0, ip
	ldr r1, [r0, #0x7c]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _08011878
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011878:
	adds r0, r2, #0
_0801187A:
	movs r3, #0
	ldr r6, _080118D8 @ =0x03003D8C
	cmp r0, #0
	beq _080118B4
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_0801188C:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _080118A8
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080118A8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801188C
_080118B4:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r6, #0
	beq _08011902
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080118E6
	cmp r0, #3
	bgt _080118DC
	cmp r0, #2
	beq _080118E6
	b _080118EC
	.align 2, 0
_080118D8: .4byte 0x03003D8C
_080118DC:
	cmp r0, #4
	beq _080118E6
	cmp r0, #5
	beq _08011902
	b _080118EC
_080118E6:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	mov sb, r0
_080118EC:
	mov r1, sb
	cmp r1, #0
	beq _08011902
	mov r0, sb
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08011904
_08011902:
	movs r0, #0
_08011904:
	movs r3, #0
	ldr r2, _08011968 @ =gPlayerStats
	mov ip, r2
	cmp r0, #0
	beq _08011942
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_0801191A:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08011936
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011936:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801191A
_08011942:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801194C:
	mov r0, ip
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080119CC
	mov r0, ip
	adds r0, #0x84
	movs r2, #0
	cmp r0, #0
	bne _0801196C
	movs r0, #0
	b _08011988
	.align 2, 0
_08011968: .4byte gPlayerStats
_0801196C:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _08011986
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011986:
	adds r0, r2, #0
_08011988:
	movs r3, #0
	cmp r0, #0
	beq _080119C2
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_0801199A:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _080119B6
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080119B6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801199A
_080119C2:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080119CC:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

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

	thumb_func_start sub_08011E54
sub_08011E54: @ 0x08011E54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	ldr r1, _08011E88 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r2, r0, #2
	adds r0, r2, r1
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	mov ip, r1
	cmp r0, #0
	blt _08011E78
	b _08011F82
_08011E78:
	mov r0, ip
	adds r0, #0x70
	adds r0, r2, r0
	movs r2, #0
	cmp r0, #0
	bne _08011E8C
	movs r0, #0
	b _08011EA8
	.align 2, 0
_08011E88: .4byte gPlayerStats
_08011E8C:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _08011EA6
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011EA6:
	adds r0, r2, #0
_08011EA8:
	movs r3, #0
	cmp r0, #0
	beq _08011EE0
	movs r1, #0
	ldr r2, _08011F10 @ =0x00000153
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011EB8:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08011ED4
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011ED4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011EB8
_08011EE0:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _08011F14 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r0, r0, r1
	cmp r0, #0
	beq _08011F38
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08011F22
	cmp r0, #3
	bgt _08011F18
	cmp r0, #2
	beq _08011F22
	b _08011F26
	.align 2, 0
_08011F10: .4byte 0x00000153
_08011F14: .4byte gPlayerStats
_08011F18:
	cmp r0, #4
	beq _08011F22
	cmp r0, #5
	beq _08011F38
	b _08011F26
_08011F22:
	lsls r0, r1, #0xc
	lsrs r6, r0, #0x1b
_08011F26:
	cmp r6, #0
	beq _08011F38
	subs r0, r6, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08011F3A
_08011F38:
	movs r0, #0
_08011F3A:
	movs r3, #0
	ldr r1, _08011FA0 @ =gPlayerStats
	mov ip, r1
	cmp r0, #0
	beq _08011F78
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_08011F50:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08011F6C
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011F6C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011F50
_08011F78:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08011F82:
	mov r0, ip
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08011F90
	b _0801208E
_08011F90:
	mov r0, ip
	adds r0, #0x80
	movs r2, #0
	cmp r0, #0
	bne _08011FA4
	movs r0, #0
	b _08011FC0
	.align 2, 0
_08011FA0: .4byte gPlayerStats
_08011FA4:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _08011FBE
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_08011FBE:
	adds r0, r2, #0
_08011FC0:
	movs r3, #0
	ldr r6, _0801201C @ =0x03003D90
	cmp r0, #0
	beq _08011FFA
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_08011FD2:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08011FEE
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08011FEE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08011FD2
_08011FFA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r6, #0
	beq _08012044
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _0801202A
	cmp r0, #3
	bgt _08012020
	cmp r0, #2
	beq _0801202A
	b _08012030
	.align 2, 0
_0801201C: .4byte 0x03003D90
_08012020:
	cmp r0, #4
	beq _0801202A
	cmp r0, #5
	beq _08012044
	b _08012030
_0801202A:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	mov r8, r0
_08012030:
	mov r0, r8
	cmp r0, #0
	beq _08012044
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08012046
_08012044:
	movs r0, #0
_08012046:
	movs r3, #0
	ldr r1, _080120AC @ =gPlayerStats
	mov ip, r1
	cmp r0, #0
	beq _08012084
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_0801205C:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08012078
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08012078:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801205C
_08012084:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801208E:
	mov r0, ip
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0801209C
	b _080121A0
_0801209C:
	mov r0, ip
	adds r0, #0x7c
	movs r2, #0
	cmp r0, #0
	bne _080120B0
	movs r0, #0
	b _080120CE
	.align 2, 0
_080120AC: .4byte gPlayerStats
_080120B0:
	mov r0, ip
	ldr r1, [r0, #0x7c]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _080120CC
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_080120CC:
	adds r0, r2, #0
_080120CE:
	movs r3, #0
	ldr r6, _0801212C @ =0x03003D8C
	cmp r0, #0
	beq _08012108
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_080120E0:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _080120FC
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080120FC:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080120E0
_08012108:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r6, #0
	beq _08012156
	ldr r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _0801213A
	cmp r0, #3
	bgt _08012130
	cmp r0, #2
	beq _0801213A
	b _08012140
	.align 2, 0
_0801212C: .4byte 0x03003D8C
_08012130:
	cmp r0, #4
	beq _0801213A
	cmp r0, #5
	beq _08012156
	b _08012140
_0801213A:
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x1b
	mov sb, r0
_08012140:
	mov r1, sb
	cmp r1, #0
	beq _08012156
	mov r0, sb
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08012158
_08012156:
	movs r0, #0
_08012158:
	movs r3, #0
	ldr r2, _080121BC @ =gPlayerStats
	mov ip, r2
	cmp r0, #0
	beq _08012196
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_0801216E:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _0801218A
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801218A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801216E
_08012196:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080121A0:
	mov r0, ip
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08012220
	mov r0, ip
	adds r0, #0x84
	movs r2, #0
	cmp r0, #0
	bne _080121C0
	movs r0, #0
	b _080121DC
	.align 2, 0
_080121BC: .4byte gPlayerStats
_080121C0:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _080121DA
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_080121DA:
	adds r0, r2, #0
_080121DC:
	movs r3, #0
	cmp r0, #0
	beq _08012216
	movs r1, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r0, r2
	adds r2, #3
	adds r4, r0, r2
_080121EE:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _0801220A
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801220A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080121EE
_08012216:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08012220:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

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

	thumb_func_start sub_080124E8
sub_080124E8: @ 0x080124E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	mov sl, r1
	movs r0, #0xd
	bl sub_08002E18
	mov r8, r0
	movs r4, #1
	mov r0, sl
	ands r0, r4
	cmp r0, #0
	bne _0801251C
	bl Random
	movs r1, #3
	ands r1, r0
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r6, r0, #0x1f
	b _0801251E
_0801251C:
	movs r6, #0
_0801251E:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801252C
	rsbs r0, r0, #0
_0801252C:
	movs r5, #0xf
	adds r4, r5, #0
	ands r4, r0
	movs r3, #0
	ldr r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	beq _08012558
	cmp r0, #2
	blt _080125BA
	cmp r0, #4
	bgt _080125BA
	cmp r4, #7
	bhi _080125B8
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080125AA
	b _080125A8
_08012558:
	cmp r4, #2
	bhi _08012560
	movs r3, #7
	b _080125BA
_08012560:
	cmp r4, #7
	bhi _08012586
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012572
	rsbs r0, r0, #0
_08012572:
	adds r4, r5, #0
	ands r4, r0
	movs r3, #3
	cmp r4, #4
	bls _080125BA
	movs r3, #6
	cmp r4, #9
	bhi _080125BA
	movs r3, #5
	b _080125BA
_08012586:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012594
	rsbs r0, r0, #0
_08012594:
	adds r4, r5, #0
	ands r4, r0
	movs r3, #1
	cmp r4, #4
	bls _080125BA
	movs r3, #4
	cmp r4, #9
	bhi _080125BA
	movs r3, #2
	b _080125BA
_080125A8:
	rsbs r1, r1, #0
_080125AA:
	movs r0, #0xf
	ands r1, r0
	movs r3, #4
	cmp r1, #7
	bhi _080125BA
	movs r3, #2
	b _080125BA
_080125B8:
	movs r3, #6
_080125BA:
	cmp r6, #0
	beq _080125C0
	movs r3, #0
_080125C0:
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080125DE
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080125D8
	rsbs r0, r0, #0
_080125D8:
	movs r3, #7
	ands r3, r0
	adds r3, #1
_080125DE:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0801260C
	str r3, [sp, #8]
	bl Random
	movs r1, #0x10
	ands r1, r0
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	movs r2, #3
	str r2, [sp]
	ldr r3, [sp, #8]
	cmp r4, #5
	bls _08012610
	movs r0, #1
	str r0, [sp]
	cmp r4, #8
	bhi _08012610
	movs r1, #2
	str r1, [sp]
	b _08012610
_0801260C:
	movs r2, #0
	str r2, [sp]
_08012610:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080126DA
	movs r2, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	cmp r0, #0
	bge _08012630
	rsbs r0, r0, #0
_08012630:
	movs r4, #0xff
	ands r4, r0
	movs r0, #0
	mov sb, r0
	movs r6, #0
	cmp r6, r8
	bhs _080126CE
_0801263E:
	movs r0, #0xd0
	lsls r0, r0, #0xc
	orrs r0, r6
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl GetDataRecord
	adds r5, r0, #0
	ldr r1, [r7]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	cmp r0, #2
	beq _08012678
	cmp r0, #2
	blt _080126C8
	cmp r0, #4
	bgt _080126C8
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	cmp r4, r2
	blo _080126C6
	adds r0, r1, r2
	cmp r4, r0
	bhs _080126C6
	b _080126BE
_08012678:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl GetDataRecord
	mov ip, r0
	ldr r0, _080126A0 @ =0x00000159
	add r0, ip
	ldrb r0, [r0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	cmp r0, #8
	bne _080126A8
	ldr r1, _080126A4 @ =0x00000157
	b _080126AC
	.align 2, 0
_080126A0: .4byte 0x00000159
_080126A4: .4byte 0x00000157
_080126A8:
	movs r1, #0xab
	lsls r1, r1, #1
_080126AC:
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r1, r2
	cmp r4, r2
	blo _080126BA
	cmp r4, r0
	blo _080126BE
_080126BA:
	adds r2, r0, #0
	b _080126C8
_080126BE:
	adds r6, #1
	mov sb, r6
	mov r6, r8
	b _080126C8
_080126C6:
	adds r2, r2, r1
_080126C8:
	adds r6, #1
	cmp r6, r8
	blo _0801263E
_080126CE:
	mov r2, sb
	cmp r2, #0
	bne _080126DE
	movs r0, #1
	mov sb, r0
	b _080126DE
_080126DA:
	movs r1, #0
	mov sb, r1
_080126DE:
	movs r1, #4
	ands r3, r1
	cmp r3, #0
	bne _080126E8
	b _08012880
_080126E8:
	movs r0, #2
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _08012724
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012700
	rsbs r0, r0, #0
_08012700:
	movs r1, #0xf
	bl __umodsi3
	adds r4, r0, #0
	movs r5, #4
	cmp r4, #0
	bne _08012710
	b _08012882
_08012710:
	movs r5, #3
	cmp r4, #2
	bhi _08012718
	b _08012882
_08012718:
	movs r5, #1
	cmp r4, #6
	bls _08012720
	b _08012882
_08012720:
	movs r5, #2
	b _08012882
_08012724:
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0801272E
	b _08012830
_0801272E:
	bl Random
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bge _0801273C
	rsbs r4, r4, #0
_0801273C:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801274A
	rsbs r0, r0, #0
_0801274A:
	lsls r0, r0, #0x10
	orrs r0, r4
	ldr r1, _0801276C @ =0x00007FFF
	bl __umodsi3
	adds r4, r0, #0
	ldr r1, _08012770 @ =gMapLayer_03003910
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #7
	bls _08012774
	cmp r4, #1
	bhi _08012774
	movs r5, #0xf
	b _08012882
	.align 2, 0
_0801276C: .4byte 0x00007FFF
_08012770: .4byte gMapLayer_03003910
_08012774:
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #6
	bls _08012786
	cmp r4, #2
	bhi _08012786
	movs r5, #0xe
	b _08012882
_08012786:
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #5
	bls _08012798
	cmp r4, #6
	bhi _08012798
	movs r5, #0xd
	b _08012882
_08012798:
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #4
	bls _080127AA
	cmp r4, #0xe
	bhi _080127AA
	movs r5, #0xc
	b _08012882
_080127AA:
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #2
	bls _080127BC
	cmp r4, #0x1e
	bhi _080127BC
	movs r5, #0xb
	b _08012882
_080127BC:
	cmp r4, #0x3e
	bhi _080127C4
	movs r5, #0xa
	b _08012882
_080127C4:
	cmp r4, #0x7e
	bhi _080127CC
	movs r5, #9
	b _08012882
_080127CC:
	cmp r4, #0xfe
	bhi _080127D4
	movs r5, #8
	b _08012882
_080127D4:
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r4, r0
	bhi _080127E0
	movs r5, #7
	b _08012882
_080127E0:
	ldr r0, _080127EC @ =0x000003FE
	cmp r4, r0
	bhi _080127F0
	movs r5, #6
	b _08012882
	.align 2, 0
_080127EC: .4byte 0x000003FE
_080127F0:
	ldr r0, _080127FC @ =0x000007FE
	cmp r4, r0
	bhi _08012800
	movs r5, #5
	b _08012882
	.align 2, 0
_080127FC: .4byte 0x000007FE
_08012800:
	ldr r0, _0801280C @ =0x00000FFE
	cmp r4, r0
	bhi _08012810
	movs r5, #4
	b _08012882
	.align 2, 0
_0801280C: .4byte 0x00000FFE
_08012810:
	ldr r0, _0801281C @ =0x00001FFE
	cmp r4, r0
	bhi _08012820
	movs r5, #3
	b _08012882
	.align 2, 0
_0801281C: .4byte 0x00001FFE
_08012820:
	ldr r0, _0801282C @ =0x00003FFE
	movs r5, #1
	cmp r4, r0
	bhi _08012882
	movs r5, #2
	b _08012882
	.align 2, 0
_0801282C: .4byte 0x00003FFE
_08012830:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801283E
	rsbs r0, r0, #0
_0801283E:
	ldr r1, _0801287C @ =0x000001FF
	bl __umodsi3
	adds r4, r0, #0
	movs r5, #9
	cmp r4, #0
	beq _08012882
	movs r5, #8
	cmp r4, #2
	bls _08012882
	movs r5, #7
	cmp r4, #6
	bls _08012882
	movs r5, #6
	cmp r4, #0xe
	bls _08012882
	movs r5, #5
	cmp r4, #0x1e
	bls _08012882
	movs r5, #4
	cmp r4, #0x3e
	bls _08012882
	movs r5, #3
	cmp r4, #0x7e
	bls _08012882
	movs r5, #1
	cmp r4, #0xfe
	bhi _08012882
	movs r5, #2
	b _08012882
	.align 2, 0
_0801287C: .4byte 0x000001FF
_08012880:
	movs r5, #0
_08012882:
	ldr r1, [r7]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _0801288E
	b _08012A18
_0801288E:
	cmp r0, #3
	bgt _08012898
	cmp r0, #2
	beq _0801289E
	b _08012ABA
_08012898:
	cmp r0, #4
	beq _08012970
	b _08012ABA
_0801289E:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	mov ip, r0
	ldr r0, _0801291C @ =0x00000159
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #8
	bne _080128BC
	movs r0, #0
	str r0, [sp]
_080128BC:
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080128D8
	mov r2, sb
	cmp r2, #0
	bne _080128D8
	cmp r5, #0
	bne _080128D8
	ldr r0, [sp]
	cmp r0, #0
	bne _080128D8
	movs r5, #1
_080128D8:
	movs r1, #0x1f
	mov r2, sb
	ands r1, r2
	lsls r1, r1, #0xf
	ldr r0, [r7]
	ldr r2, _08012920 @ =0xFFF07FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r7]
	lsls r2, r5, #4
	ldrb r1, [r7, #2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #2]
	ldrb r0, [r7, #3]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	ldr r0, [sp]
	orrs r1, r0
	strb r1, [r7, #3]
	mov r2, sb
	cmp r2, #0
	bne _08012912
	cmp r5, #0
	bne _08012912
	cmp r0, #0
	beq _08012924
_08012912:
	ldrb r0, [r7, #3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r7, #3]
	b _0801292C
	.align 2, 0
_0801291C: .4byte 0x00000159
_08012920: .4byte 0xFFF07FFF
_08012924:
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r7, #3]
_0801292C:
	movs r6, #0
	ldr r2, _08012968 @ =0x00000153
	add r2, ip
	movs r0, #4
	rsbs r0, r0, #0
	mov r8, r0
	movs r5, #5
	rsbs r5, r5, #0
	ldr r3, _0801296C @ =0xFFF07FFF
	movs r4, #0xf
_08012940:
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012960
	ldr r0, [r7]
	ands r0, r3
	str r0, [r7]
	ldrb r1, [r7, #2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r7, #2]
	ldrb r1, [r7, #3]
	mov r0, r8
	ands r0, r1
	ands r0, r5
	strb r0, [r7, #3]
_08012960:
	adds r6, #1
	cmp r6, #2
	bls _08012940
	b _08012ABA
	.align 2, 0
_08012968: .4byte 0x00000153
_0801296C: .4byte 0xFFF07FFF
_08012970:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r3, r0, #0
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08012996
	mov r2, sb
	cmp r2, #0
	bne _08012996
	cmp r5, #0
	bne _08012996
	movs r5, #1
_08012996:
	movs r1, #0x1f
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #0xf
	ldr r0, [r7]
	ldr r2, _080129D0 @ =0xFFF07FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r7]
	lsls r2, r5, #4
	ldrb r1, [r7, #2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #2]
	ldrb r0, [r7, #3]
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r0
	strb r2, [r7, #3]
	mov r1, sb
	cmp r1, #0
	bne _080129C8
	cmp r5, #0
	beq _080129D4
_080129C8:
	movs r1, #4
	adds r0, r2, #0
	orrs r0, r1
	b _080129DA
	.align 2, 0
_080129D0: .4byte 0xFFF07FFF
_080129D4:
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
_080129DA:
	strb r0, [r7, #3]
	movs r6, #0
	movs r5, #4
	rsbs r5, r5, #0
	movs r4, #5
	rsbs r4, r4, #0
	adds r2, r3, #0
	adds r2, #0xf2
	ldr r3, _08012A14 @ =0xFFF07FFF
_080129EC:
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012A0C
	ldr r0, [r7]
	ands r0, r3
	str r0, [r7]
	ldrb r1, [r7, #2]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r7, #2]
	ldrb r1, [r7, #3]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r7, #3]
_08012A0C:
	adds r6, #1
	cmp r6, #2
	bls _080129EC
	b _08012ABA
	.align 2, 0
_08012A14: .4byte 0xFFF07FFF
_08012A18:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r3, r0, #0
	movs r0, #1
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _08012A3E
	mov r0, sb
	cmp r0, #0
	bne _08012A3E
	cmp r5, #0
	bne _08012A3E
	movs r5, #1
_08012A3E:
	movs r1, #0x1f
	mov r2, sb
	ands r1, r2
	lsls r1, r1, #0xf
	ldr r0, [r7]
	ldr r2, _08012A78 @ =0xFFF07FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r7]
	lsls r2, r5, #4
	ldrb r1, [r7, #2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #2]
	ldrb r0, [r7, #3]
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r0
	strb r2, [r7, #3]
	mov r0, sb
	cmp r0, #0
	bne _08012A70
	cmp r5, #0
	beq _08012A7C
_08012A70:
	movs r1, #4
	adds r0, r2, #0
	orrs r0, r1
	b _08012A82
	.align 2, 0
_08012A78: .4byte 0xFFF07FFF
_08012A7C:
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
_08012A82:
	strb r0, [r7, #3]
	movs r6, #0
	movs r5, #4
	rsbs r5, r5, #0
	movs r4, #5
	rsbs r4, r4, #0
	adds r2, r3, #0
	adds r2, #0xf2
	ldr r3, _08012ACC @ =0xFFF07FFF
_08012A94:
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012AB4
	ldr r0, [r7]
	ands r0, r3
	str r0, [r7]
	ldrb r1, [r7, #2]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r7, #2]
	ldrb r1, [r7, #3]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r7, #3]
_08012AB4:
	adds r6, #1
	cmp r6, #2
	bls _08012A94
_08012ABA:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012ACC: .4byte 0xFFF07FFF

	thumb_func_start sub_08012AD0
sub_08012AD0: @ 0x08012AD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r4, _08012B00 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0xa0
	ldrh r0, [r0]
	mov sb, r0
	movs r0, #0
	str r0, [sp]
	mov r1, r8
	ldrh r0, [r1, #2]
	bl sub_08019B98
	adds r1, r0, #0
	cmp r1, #0
	bne _08012B04
	ldr r0, [sp]
	b _080130DC
	.align 2, 0
_08012B00: .4byte 0x030063D8
_08012B04:
	subs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #2
	adds r0, #0xc
	adds r0, r0, r1
	ldr r7, [r0]
	bl sub_080076A8
	ldr r1, _08012B50 @ =0x000C0008
	cmp r0, #0
	bne _08012B1C
	ldr r1, [r7, #0x28]
_08012B1C:
	adds r0, r1, #0
	bl GetDataRecord
	adds r6, r0, #0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012B32
	rsbs r0, r0, #0
_08012B32:
	lsls r1, r0, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	lsrs r4, r0, #0x10
	bl sub_08001EC4
	cmp r0, #2
	beq _08012B62
	cmp r0, #2
	bhi _08012B54
	cmp r0, #1
	beq _08012B5E
	b _08012B6C
	.align 2, 0
_08012B50: .4byte 0x000C0008
_08012B54:
	cmp r0, #3
	beq _08012B66
	cmp r0, #4
	beq _08012B6A
	b _08012B6C
_08012B5E:
	movs r5, #0x20
	b _08012B6C
_08012B62:
	movs r5, #0x2b
	b _08012B6C
_08012B66:
	movs r5, #0x39
	b _08012B6C
_08012B6A:
	movs r5, #0x40
_08012B6C:
	cmp r4, r5
	blo _08012B72
	b _080130DA
_08012B72:
	mov r2, sb
	lsls r5, r2, #1
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r5
	mov sb, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08012C52
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012B92
	rsbs r0, r0, #0
_08012B92:
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x22
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r4, r0
	bhs _08012C52
	adds r0, r7, #0
	adds r0, #0x16
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #7
	ldr r4, _08012C00 @ =0xFFFFC07F
	ldr r0, [sp]
	ands r0, r4
	orrs r0, r1
	str r0, [sp]
	mov r3, sb
	ldrh r1, [r3]
	movs r2, #7
	ands r1, r2
	lsls r1, r1, #4
	subs r2, #0x78
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	movs r1, #0
	bl sub_080124E8
	bl sub_080076A8
	cmp r0, #0
	bne _08012BEE
	b _080130DA
_08012BEE:
	ldr r1, [sp]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	beq _08012C04
	cmp r0, #3
	beq _08012C32
	b _080130DA
	.align 2, 0
_08012C00: .4byte 0xFFFFC07F
_08012C04:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0x72
	beq _08012C22
	cmp r0, #0x75
	beq _08012C12
	b _080130DA
_08012C12:
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	movs r5, #0xec
	lsls r5, r5, #6
	adds r1, r5, #0
	b _08012C4A
_08012C22:
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	movs r2, #0xea
	lsls r2, r2, #6
	adds r1, r2, #0
	b _08012C4A
_08012C32:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0x2a
	beq _08012C3C
	b _080130DA
_08012C3C:
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	movs r3, #0xac
	lsls r3, r3, #5
	adds r1, r3, #0
_08012C4A:
	orrs r0, r1
	mov r1, sp
	strh r0, [r1]
	b _080130DA
_08012C52:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012C60
	rsbs r0, r0, #0
_08012C60:
	lsls r1, r0, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08012C70
	b _08012D8C
_08012C70:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012C7E
	rsbs r0, r0, #0
_08012C7E:
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0xc
	ands r1, r0
	lsrs r4, r1, #0x10
	bl sub_080076A8
	cmp r0, #0
	bne _08012D38
	ldr r0, _08012CA8 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #7
	bhi _08012D78
	lsls r0, r0, #2
	ldr r1, _08012CAC @ =_08012CB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012CA8: .4byte gMapLayer_03003910
_08012CAC: .4byte _08012CB0
_08012CB0: @ jump table
	.4byte _08012D6C @ case 0
	.4byte _08012D6C @ case 1
	.4byte _08012D6C @ case 2
	.4byte _08012D6C @ case 3
	.4byte _08012CD0 @ case 4
	.4byte _08012CD0 @ case 5
	.4byte _08012D04 @ case 6
	.4byte _08012D04 @ case 7
_08012CD0:
	cmp r4, #0
	bne _08012CE8
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08012CE4 @ =0xFFFFC07F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _08012D74
	.align 2, 0
_08012CE4: .4byte 0xFFFFC07F
_08012CE8:
	cmp r4, #1
	bne _08012D6C
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08012D00 @ =0xFFFFC07F
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	orrs r0, r1
	b _08012D74
	.align 2, 0
_08012D00: .4byte 0xFFFFC07F
_08012D04:
	cmp r4, #1
	bhi _08012D1C
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08012D18 @ =0xFFFFC07F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _08012D74
	.align 2, 0
_08012D18: .4byte 0xFFFFC07F
_08012D1C:
	cmp r4, #3
	bhi _08012D6C
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08012D34 @ =0xFFFFC07F
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	b _08012D74
	.align 2, 0
_08012D34: .4byte 0xFFFFC07F
_08012D38:
	cmp r4, #3
	bhi _08012D50
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08012D4C @ =0xFFFFC07F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _08012D74
	.align 2, 0
_08012D4C: .4byte 0xFFFFC07F
_08012D50:
	cmp r4, #7
	bhi _08012D6C
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08012D68 @ =0xFFFFC07F
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	b _08012D74
	.align 2, 0
_08012D68: .4byte 0xFFFFC07F
_08012D6C:
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08012D88 @ =0xFFFFC07F
	ands r0, r1
_08012D74:
	mov r1, sp
	strh r0, [r1]
_08012D78:
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x60
	b _08012FC6
	.align 2, 0
_08012D88: .4byte 0xFFFFC07F
_08012D8C:
	cmp r4, #1
	bne _08012DB8
	bl sub_080076A8
	cmp r0, #0
	beq _08012DA8
	ldr r4, _08012DA4 @ =0x000F0016
	bl sub_08001EC4
	adds r1, r0, #0
	subs r1, #1
	b _08013058
	.align 2, 0
_08012DA4: .4byte 0x000F0016
_08012DA8:
	ldr r4, _08012DB4 @ =0x000F0015
	bl sub_08001EC4
	adds r1, r0, #0
	subs r1, #1
	b _08013058
	.align 2, 0
_08012DB4: .4byte 0x000F0015
_08012DB8:
	subs r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _08012DC4
	b _08012ED4
_08012DC4:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012DD2
	rsbs r0, r0, #0
_08012DD2:
	lsls r1, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r1
	movs r5, #0
	mov sb, r5
	cmp r0, #0
	bne _08012DE6
	movs r0, #1
	mov sb, r0
_08012DE6:
	ldr r0, [r6, #0x10]
	adds r7, r6, r0
	movs r1, #0
	mov r8, r1
	mov r2, sb
	cmp r2, #0
	beq _08012E50
	movs r3, #0
	ldrb r5, [r6, #3]
	cmp r8, r5
	bhs _08012E46
	mov sl, sp
	adds r4, r7, #0
_08012E00:
	ldr r2, [r4]
	movs r0, #0x7f
	ands r2, r0
	lsls r2, r2, #7
	mov r1, sl
	ldrh r0, [r1]
	ldr r5, _08012E54 @ =0xFFFFC07F
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	mov r1, sl
	strh r0, [r1]
	ldr r0, [sp]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r3, [sp, #4]
	bl GetDataRecord
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	ldr r3, [sp, #4]
	cmp r0, #1
	bne _08012E3C
	movs r5, #1
	add r8, r5
_08012E3C:
	adds r4, #4
	adds r3, #1
	ldrb r0, [r6, #3]
	cmp r3, r0
	blo _08012E00
_08012E46:
	mov r1, r8
	cmp r1, #0
	bne _08012E50
	movs r2, #0
	mov sb, r2
_08012E50:
	mov r4, sp
	b _08012E64
	.align 2, 0
_08012E54: .4byte 0xFFFFC07F
_08012E58:
	movs r3, #0xab
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012EB6
_08012E64:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012E72
	rsbs r0, r0, #0
_08012E72:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r6, #3]
	bl __modsi3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	movs r0, #0x7f
	ands r2, r0
	lsls r2, r2, #7
	ldrh r0, [r4]
	ldr r5, _08012ED0 @ =0xFFFFC07F
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldr r0, [sp]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	mov r1, sb
	cmp r1, #0
	beq _08012E58
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012E64
_08012EB6:
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x50
	orrs r0, r1
	mov r1, sp
	strb r0, [r1]
	movs r0, #0
	strb r0, [r1, #2]
	b _080130D2
	.align 2, 0
_08012ED0: .4byte 0xFFFFC07F
_08012ED4:
	subs r0, r4, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x27
	bhi _08012F78
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08012F30
	ldr r0, [r6, #8]
	adds r7, r6, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012EF8
	rsbs r0, r0, #0
_08012EF8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r6, #1]
	bl __modsi3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #7
	mov r0, sp
	ldrh r2, [r0]
	ldr r0, _08012F2C @ =0xFFFFC07F
	ands r0, r2
	orrs r0, r1
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x30
	b _08012FC6
	.align 2, 0
_08012F2C: .4byte 0xFFFFC07F
_08012F30:
	ldr r0, [r6, #0xc]
	adds r7, r6, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012F42
	rsbs r0, r0, #0
_08012F42:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r6, #2]
	bl __modsi3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #7
	mov r0, sp
	ldrh r2, [r0]
	ldr r0, _08012F74 @ =0xFFFFC07F
	ands r0, r2
	orrs r0, r1
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x40
	b _08012FC6
	.align 2, 0
_08012F74: .4byte 0xFFFFC07F
_08012F78:
	adds r0, r4, #0
	subs r0, #0x2f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x35
	bhi _08012FD4
	ldr r0, [r6, #4]
	adds r7, r6, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012F96
	rsbs r0, r0, #0
_08012F96:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r6]
	bl __modsi3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #7
	mov r0, sp
	ldrh r2, [r0]
	ldr r0, _08012FD0 @ =0xFFFFC07F
	ands r0, r2
	orrs r0, r1
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
_08012FC6:
	orrs r0, r1
	mov r1, sp
	strb r0, [r1]
	b _080130D2
	.align 2, 0
_08012FD0: .4byte 0xFFFFC07F
_08012FD4:
	adds r0, r4, #0
	subs r0, #0x65
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x45
	bhi _08013068
	bl sub_080074F0
	cmp r0, #0
	beq _08013040
	mov r3, r8
	ldrh r0, [r3, #0x34]
	cmp r0, #3
	bls _08012FF4
	movs r0, #0
	strh r0, [r3, #0x34]
_08012FF4:
	bl sub_080076A8
	cmp r0, #0
	beq _08013020
	ldr r0, _08013018 @ =0x000F0001
	ldr r2, _0801301C @ =gPlayers
	mov r5, r8
	ldrh r3, [r5, #0x34]
	movs r1, #0xd4
	muls r1, r3, r1
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	b _0801305A
	.align 2, 0
_08013018: .4byte 0x000F0001
_0801301C: .4byte gPlayers
_08013020:
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ldr r2, _0801303C @ =gPlayers
	mov r1, r8
	ldrh r3, [r1, #0x34]
	movs r1, #0xd4
	muls r1, r3, r1
	adds r2, #0xd0
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	b _0801305A
	.align 2, 0
_0801303C: .4byte gPlayers
_08013040:
	bl sub_080076A8
	cmp r0, #0
	beq _08013050
	ldr r4, _0801304C @ =0x000F0018
	b _08013052
	.align 2, 0
_0801304C: .4byte 0x000F0018
_08013050:
	ldr r4, _08013064 @ =0x000F0017
_08013052:
	bl GetPlayerClass
	adds r1, r0, #0
_08013058:
	adds r0, r4, #0
_0801305A:
	mov r2, sp
	movs r3, #0
	bl sub_080130F4
	b _080130D2
	.align 2, 0
_08013064: .4byte 0x000F0017
_08013068:
	adds r0, r4, #0
	subs r0, #0xab
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x54
	bhi _080130D2
	mov r0, sp
	ldrb r0, [r0]
	movs r1, #0x70
	orrs r0, r1
	mov r1, sp
	strb r0, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801308E
	rsbs r0, r0, #0
_0801308E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x65
	bl __umodsi3
	lsls r0, r0, #0x10
	movs r2, #0xc8
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	bl sub_080076A8
	cmp r0, #0
	beq _080130AE
	movs r0, #0xe2
	b _080130BE
_080130AE:
	ldr r0, _080130EC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9a
	ldrh r0, [r0]
	subs r0, #1
	movs r1, #0x1a
	muls r0, r1, r0
	adds r0, #0x12
_080130BE:
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0xf
	ldr r1, [sp]
	ldr r2, _080130F0 @ =0x00007FFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
_080130D2:
	mov r0, sp
	movs r1, #0
	bl sub_080124E8
_080130DA:
	ldr r0, [sp]
_080130DC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080130EC: .4byte 0x030063D8
_080130F0: .4byte 0x00007FFF

	thumb_func_start sub_080130F4
sub_080130F4: @ 0x080130F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	adds r6, r2, #0
	mov sb, r3
	bl GetDataRecord
	adds r7, r0, #0
	ldrh r1, [r6]
	ldr r0, _0801312C @ =0xFFFF8000
	ands r0, r1
	strh r0, [r6]
	ldr r0, [r6]
	ldr r1, _08013130 @ =0x00007FFF
	ands r0, r1
	str r0, [r6]
	cmp r4, #1
	beq _0801313C
	cmp r4, #1
	blo _08013134
	cmp r4, #2
	beq _08013144
	cmp r4, #3
	beq _0801314C
	b _08013152
	.align 2, 0
_0801312C: .4byte 0xFFFF8000
_08013130: .4byte 0x00007FFF
_08013134:
	ldrb r0, [r7]
	mov r8, r0
	ldr r5, [r7, #8]
	b _08013152
_0801313C:
	ldrb r1, [r7, #1]
	mov r8, r1
	ldr r5, [r7, #0xc]
	b _08013152
_08013144:
	ldrb r0, [r7, #2]
	mov r8, r0
	ldr r5, [r7, #0x10]
	b _08013152
_0801314C:
	ldrb r1, [r7, #3]
	mov r8, r1
	ldr r5, [r7, #0x14]
_08013152:
	adds r5, r7, r5
	mov r0, sb
	cmp r0, #0
	bne _080131A0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08013168
	rsbs r0, r0, #0
_08013168:
	lsls r1, r0, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	b _080131A6
_08013172:
	ldrh r1, [r5, #2]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r6]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	ldrh r1, [r5]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r6]
	ldr r0, _0801319C @ =0xFFFFC07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6]
	b _080131CC
	.align 2, 0
_0801319C: .4byte 0xFFFFC07F
_080131A0:
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #0x10
_080131A6:
	lsrs r4, r0, #0x10
	movs r1, #0
	movs r2, #0
	cmp r2, r8
	bhs _080131CC
_080131B0:
	cmp r1, r4
	bhi _080131BC
	ldrh r0, [r5, #4]
	adds r0, r1, r0
	cmp r0, r4
	bgt _08013172
_080131BC:
	ldrh r0, [r5, #4]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, #1
	adds r5, #8
	cmp r2, r8
	blo _080131B0
_080131CC:
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08013230
	ldrb r0, [r6]
	movs r1, #0x70
	orrs r0, r1
	strb r0, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080131EC
	rsbs r0, r0, #0
_080131EC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x65
	bl __umodsi3
	lsls r0, r0, #0x10
	movs r1, #0xc8
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	bl sub_080076A8
	cmp r0, #0
	beq _0801320C
	movs r0, #0xe2
	b _0801321C
_0801320C:
	ldr r0, _0801325C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9a
	ldrh r0, [r0]
	subs r0, #1
	movs r1, #0x1a
	muls r0, r1, r0
	adds r0, #0x12
_0801321C:
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0xf
	ldr r1, [r6]
	ldr r2, _08013260 @ =0x00007FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r6]
_08013230:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0801323E
	rsbs r1, r1, #0
_0801323E:
	movs r0, #0xff
	ands r1, r0
	ldr r0, [r7, #4]
	cmp r0, r1
	bls _08013250
	adds r0, r6, #0
	movs r1, #1
	bl sub_080124E8
_08013250:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801325C: .4byte 0x030063D8
_08013260: .4byte 0x00007FFF

	thumb_func_start sub_08013264
sub_08013264: @ 0x08013264
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl GetMultiplayerId
	movs r1, #0xd4
	adds r7, r0, #0
	muls r7, r1, r7
	b _080132BC
_08013276:
	bl sub_08007510
	cmp r0, #0
	bne _080132B8
	bl sub_08007604
	cmp r0, #0
	bne _080132B8
	ldr r0, _080132FC @ =gFieldItems
	ldr r4, [r0]
	movs r5, #0
	ldr r0, _08013300 @ =gPlayers
	adds r6, r7, r0
_08013290:
	ldr r0, [r4, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080132B0
	ldr r0, [r4, #8]
	ldrh r1, [r6, #0x16]
	cmp r0, r1
	bne _080132B0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x18
	movs r3, #1
	bl sub_08023048
_080132B0:
	adds r5, #1
	adds r4, #0x1c
	cmp r5, #0xe
	bls _08013290
_080132B8:
	bl WaitFrame
_080132BC:
	bl sub_080074CC
	cmp r0, #0
	beq _08013276
	ldr r0, _080132FC @ =gFieldItems
	mov r8, r0
	ldr r0, [r0]
	bl Free
	ldr r6, _08013304 @ =gUnknown_030063AC
	ldr r0, [r6]
	bl Free
	ldr r5, _08013308 @ =gUnknown_030063B8
	ldr r0, [r5]
	bl Free
	ldr r4, _0801330C @ =gUnknown_030063A8
	ldr r0, [r4]
	bl Free
	movs r0, #0
	mov r1, r8
	str r0, [r1]
	str r0, [r6]
	str r0, [r5]
	str r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080132FC: .4byte gFieldItems
_08013300: .4byte gPlayers
_08013304: .4byte gUnknown_030063AC
_08013308: .4byte gUnknown_030063B8
_0801330C: .4byte gUnknown_030063A8

	thumb_func_start UseItem
UseItem: @ 0x08013310
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08013394 @ =gPlayers
	adds r6, r1, r0
	cmp r4, #0
	bne _0801332A
	b _0801381C
_0801332A:
	ldrh r0, [r6, #0xc]
	cmp r0, #8
	bne _08013332
	b _0801381C
_08013332:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _0801333E
	b _0801381C
_0801333E:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r7, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _080133D8
	movs r2, #0xa9
	lsls r2, r2, #1
	adds r5, r7, r2
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _080133A2
	bl GetPlayerClass
	cmp r0, #0
	bne _0801339C
	ldr r0, _08013398 @ =gPlayerStats
	adds r0, #0x54
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r0, #0
	adds r4, #0x64
	movs r1, #0
	ldrsh r0, [r5, r1]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r0, #0
	b _080133A6
	.align 2, 0
_08013394: .4byte gPlayers
_08013398: .4byte gPlayerStats
_0801339C:
	movs r2, #0
	ldrsh r4, [r5, r2]
	b _080133A6
_080133A2:
	movs r3, #0
	ldrsh r4, [r5, r3]
_080133A6:
	adds r3, r6, #0
	adds r3, #0x7a
	adds r2, r6, #0
	adds r2, #0x50
	ldrh r5, [r3]
	mov ip, r5
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r1, r0
	blt _080133C0
	b _08013816
_080133C0:
	mov r1, ip
	adds r0, r1, r4
	strh r0, [r3]
	ldrh r4, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080133D6
	b _0801379A
_080133D6:
	b _0801379E
_080133D8:
	mov r3, r8
	cmp r3, #1
	bne _08013426
	adds r4, r6, #0
	adds r4, #0x78
	adds r5, r6, #0
	adds r5, #0x4e
	ldrh r2, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r1, r0
	blt _080133F6
	b _08013816
_080133F6:
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	adds r0, r2, r0
	strh r0, [r4]
	ldrh r0, [r6]
	bl sub_0802C904
	ldrh r2, [r5]
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r5, #0
	ldrsh r1, [r4, r5]
	cmp r0, r1
	bge _0801341A
	strh r2, [r4]
	b _08013820
_0801341A:
	cmp r1, #0
	blt _08013420
	b _08013820
_08013420:
	movs r0, #0
	strh r0, [r4]
	b _08013820
_08013426:
	mov r0, r8
	cmp r0, #2
	bne _080134A4
	bl GetPlayerClass
	cmp r0, #1
	beq _08013468
	cmp r0, #1
	bgt _08013444
	cmp r0, #0
	beq _08013454
	ldr r2, _08013440 @ =gPlayerStats
	b _08013496
	.align 2, 0
_08013440: .4byte gPlayerStats
_08013444:
	cmp r0, #2
	beq _0801347C
	cmp r0, #3
	beq _08013488
	ldr r2, _08013450 @ =gPlayerStats
	b _08013496
	.align 2, 0
_08013450: .4byte gPlayerStats
_08013454:
	ldr r0, _08013464 @ =gPlayerStats
	movs r2, #0x24
	ldrsh r1, [r0, r2]
_0801345A:
	adds r2, r0, #0
	cmp r1, #0xc7
	ble _08013496
	b _08013816
	.align 2, 0
_08013464: .4byte gPlayerStats
_08013468:
	ldr r0, _08013478 @ =gPlayerStats
	movs r3, #0x24
	ldrsh r1, [r0, r3]
	adds r2, r0, #0
	cmp r1, #0x31
	ble _08013496
	b _08013816
	.align 2, 0
_08013478: .4byte gPlayerStats
_0801347C:
	ldr r0, _08013484 @ =gPlayerStats
	movs r5, #0x24
	ldrsh r1, [r0, r5]
	b _0801345A
	.align 2, 0
_08013484: .4byte gPlayerStats
_08013488:
	ldr r0, _080134A0 @ =gPlayerStats
	movs r2, #0x24
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0xe5
	ble _08013496
	b _08013816
_08013496:
	ldrh r0, [r2, #0x24]
	adds r0, #1
	strh r0, [r2, #0x24]
	b _08013820
	.align 2, 0
_080134A0: .4byte gPlayerStats
_080134A4:
	mov r3, r8
	cmp r3, #3
	bne _08013524
	bl GetPlayerClass
	cmp r0, #1
	beq _080134E8
	cmp r0, #1
	bgt _080134C4
	cmp r0, #0
	beq _080134D4
	ldr r2, _080134C0 @ =gPlayerStats
	b _0801351C
	.align 2, 0
_080134C0: .4byte gPlayerStats
_080134C4:
	cmp r0, #2
	beq _080134FC
	cmp r0, #3
	beq _08013510
	ldr r2, _080134D0 @ =gPlayerStats
	b _0801351C
	.align 2, 0
_080134D0: .4byte gPlayerStats
_080134D4:
	ldr r0, _080134E4 @ =gPlayerStats
	movs r5, #0x26
	ldrsh r1, [r0, r5]
	adds r2, r0, #0
	cmp r1, #0xc7
	ble _0801351C
	b _08013816
	.align 2, 0
_080134E4: .4byte gPlayerStats
_080134E8:
	ldr r0, _080134F8 @ =gPlayerStats
	movs r2, #0x26
	ldrsh r1, [r0, r2]
_080134EE:
	adds r2, r0, #0
	cmp r1, #0x95
	ble _0801351C
	b _08013816
	.align 2, 0
_080134F8: .4byte gPlayerStats
_080134FC:
	ldr r0, _0801350C @ =gPlayerStats
	movs r3, #0x26
	ldrsh r1, [r0, r3]
	adds r2, r0, #0
	cmp r1, #0xf9
	ble _0801351C
	b _08013816
	.align 2, 0
_0801350C: .4byte gPlayerStats
_08013510:
	ldr r0, _08013518 @ =gPlayerStats
	movs r5, #0x26
	ldrsh r1, [r0, r5]
	b _080134EE
	.align 2, 0
_08013518: .4byte gPlayerStats
_0801351C:
	ldrh r0, [r2, #0x26]
	adds r0, #1
	strh r0, [r2, #0x26]
	b _08013820
_08013524:
	mov r0, r8
	cmp r0, #4
	bne _080135AC
	bl GetPlayerClass
	cmp r0, #1
	beq _08013568
	cmp r0, #1
	bgt _08013544
	cmp r0, #0
	beq _08013554
	ldr r2, _08013540 @ =gPlayerStats
	b _0801359E
	.align 2, 0
_08013540: .4byte gPlayerStats
_08013544:
	cmp r0, #2
	beq _0801357C
	cmp r0, #3
	beq _08013590
	ldr r2, _08013550 @ =gPlayerStats
	b _0801359E
	.align 2, 0
_08013550: .4byte gPlayerStats
_08013554:
	ldr r0, _08013564 @ =gPlayerStats
	movs r2, #0x2a
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0xc7
	ble _0801359E
	b _08013816
	.align 2, 0
_08013564: .4byte gPlayerStats
_08013568:
	ldr r0, _08013578 @ =gPlayerStats
	movs r3, #0x2a
	ldrsh r1, [r0, r3]
	adds r2, r0, #0
	cmp r1, #0x63
	ble _0801359E
	b _08013816
	.align 2, 0
_08013578: .4byte gPlayerStats
_0801357C:
	ldr r0, _0801358C @ =gPlayerStats
	movs r5, #0x2a
	ldrsh r1, [r0, r5]
	adds r2, r0, #0
	cmp r1, #0x95
	ble _0801359E
	b _08013816
	.align 2, 0
_0801358C: .4byte gPlayerStats
_08013590:
	ldr r0, _080135A8 @ =gPlayerStats
	movs r2, #0x2a
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0xdb
	ble _0801359E
	b _08013816
_0801359E:
	ldrh r0, [r2, #0x2a]
	adds r0, #1
	strh r0, [r2, #0x2a]
	b _08013820
	.align 2, 0
_080135A8: .4byte gPlayerStats
_080135AC:
	mov r3, r8
	cmp r3, #5
	bne _080135DC
	bl GetPlayerClass
	cmp r0, #1
	beq _080135BC
	b _08013816
_080135BC:
	ldr r2, _080135D4 @ =gPlayerStats
	ldrh r3, [r2, #0x28]
	movs r5, #0x28
	ldrsh r1, [r2, r5]
	ldr r0, _080135D8 @ =0x0000012B
	cmp r1, r0
	ble _080135CC
	b _08013816
_080135CC:
	adds r0, r3, #1
	strh r0, [r2, #0x28]
	b _08013820
	.align 2, 0
_080135D4: .4byte gPlayerStats
_080135D8: .4byte 0x0000012B
_080135DC:
	mov r0, r8
	cmp r0, #6
	bne _0801360E
	movs r4, #0
	movs r1, #0
	ldr r0, [r6, #0x1c]
	movs r5, #2
_080135EA:
	ldrh r2, [r0]
	cmp r2, #2
	bgt _080135F8
	cmp r2, #1
	blt _080135F8
	strh r1, [r0]
	adds r4, #1
_080135F8:
	adds r0, #2
	subs r5, #1
	cmp r5, #0
	bge _080135EA
	cmp r4, #0
	bne _08013606
	b _08013816
_08013606:
	movs r0, #0x73
	bl StopSE
	b _08013820
_0801360E:
	mov r1, r8
	cmp r1, #7
	bne _080136A0
	movs r4, #0
	movs r5, #0
	ldr r7, _0801361C @ =0x03004650
	b _08013690
	.align 2, 0
_0801361C: .4byte 0x03004650
_08013620:
	bl GetMultiplayerId
	cmp r5, r0
	beq _0801368E
	movs r0, #0xd4
	muls r0, r5, r0
	adds r0, r0, r7
	ldr r2, [r0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _08013648
	cmp r0, #9
	bne _0801368E
	ldrb r0, [r2, #5]
	lsrs r0, r0, #4
	cmp r0, #0xb
	beq _08013648
	b _08013816
_08013648:
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	ble _0801368E
	ldr r1, [r6, #0x58]
	asrs r1, r1, #0xc
	ldrh r0, [r2]
	lsrs r0, r0, #4
	subs r1, r1, r0
	cmp r1, #0
	bge _08013662
	rsbs r1, r1, #0
_08013662:
	asrs r3, r1, #3
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #0xc
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	subs r0, r1, r0
	cmp r0, #0
	bge _08013676
	rsbs r0, r0, #0
_08013676:
	asrs r0, r0, #3
	cmp r3, #0x13
	bgt _0801368E
	cmp r0, #0x13
	bgt _0801368E
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08027790
	adds r4, #1
_0801368E:
	adds r5, #1
_08013690:
	bl sub_08001EC4
	cmp r5, r0
	blo _08013620
_08013698:
	cmp r4, #0
	beq _0801369E
	b _08013820
_0801369E:
	b _08013816
_080136A0:
	mov r2, r8
	cmp r2, #8
	bne _080136F2
	movs r4, #0
	movs r5, #0
	movs r3, #5
	rsbs r3, r3, #0
	ldr r6, _080136CC @ =gPlayerStats
_080136B0:
	lsls r0, r5, #2
	adds r1, r0, r6
	adds r0, r1, #0
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _080136D4
	cmp r0, #3
	bgt _080136D0
	cmp r0, #2
	beq _080136D4
	b _080136EA
	.align 2, 0
_080136CC: .4byte gPlayerStats
_080136D0:
	cmp r0, #4
	bne _080136EA
_080136D4:
	adds r2, r1, #0
	adds r2, #0x8b
	ldrb r1, [r2]
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge _080136EA
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	movs r5, #0x19
	adds r4, #1
_080136EA:
	adds r5, #1
	cmp r5, #0x18
	ble _080136B0
	b _08013698
_080136F2:
	mov r3, r8
	cmp r3, #9
	bne _08013724
	bl sub_08007544
	cmp r0, #0
	beq _08013702
	b _08013816
_08013702:
	ldrh r0, [r6, #0xc]
	cmp r0, #5
	bne _0801370A
	b _08013816
_0801370A:
	bl sub_08007638
	cmp r0, #0
	beq _08013714
	b _08013816
_08013714:
	movs r0, #0x75
	bl PlaySE
	mov r5, r8
	strh r5, [r6, #0xc]
	movs r0, #2
	strh r0, [r6, #0xe]
	b _08013820
_08013724:
	mov r0, r8
	cmp r0, #0xa
	bne _080137C2
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r5, r7, r1
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0801376A
	bl GetPlayerClass
	cmp r0, #0
	bne _08013764
	ldr r0, _08013760 @ =gPlayerStats
	adds r0, #0x54
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r0, #0
	adds r4, #0x64
	movs r3, #0
	ldrsh r0, [r5, r3]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r0, #0
	b _0801376E
	.align 2, 0
_08013760: .4byte gPlayerStats
_08013764:
	movs r0, #0
	ldrsh r4, [r5, r0]
	b _0801376E
_0801376A:
	movs r1, #0
	ldrsh r4, [r5, r1]
_0801376E:
	adds r3, r6, #0
	adds r3, #0x7a
	adds r2, r6, #0
	adds r2, #0x50
	ldrh r5, [r3]
	mov ip, r5
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _08013816
	mov r1, ip
	adds r0, r1, r4
	strh r0, [r3]
	ldrh r4, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0801379E
_0801379A:
	strh r4, [r3]
	b _080137A6
_0801379E:
	cmp r0, #0
	bge _080137A6
	movs r0, #0
	strh r0, [r3]
_080137A6:
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _080137BA
	ldrh r0, [r6]
	bl StartItemUseEffect
_080137BA:
	movs r0, #0x91
	bl PlaySE
	b _08013820
_080137C2:
	mov r3, r8
	cmp r3, #0xb
	bne _08013816
	movs r5, #0
_080137CA:
	ldr r0, [r6, #0x1c]
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801380E
	movs r0, #0x73
	bl PlaySE
	ldr r0, [r6, #0x1c]
	adds r0, r4, r0
	movs r1, #2
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	adds r4, r0, r4
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080137FE
	rsbs r0, r0, #0
_080137FE:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r5, [r4]
	adds r0, r0, r5
	strh r0, [r4]
	movs r5, #3
_0801380E:
	adds r5, #1
	cmp r5, #2
	ble _080137CA
	b _08013820
_08013816:
	movs r0, #0x61
	bl PlaySE
_0801381C:
	movs r0, #0
	b _0801382E
_08013820:
	mov r0, r8
	cmp r0, #0
	beq _0801382C
	movs r0, #0x20
	bl PlaySE
_0801382C:
	movs r0, #1
_0801382E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08013838
sub_08013838: @ 0x08013838
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r4, #0
	movs r3, #0
	ldr r0, _0801388C @ =gPlayerStats
	movs r7, #0x71
	rsbs r7, r7, #0
	ldr r6, _08013890 @ =0xFFFFC07F
	adds r2, r0, #0
	adds r2, #0x88
_0801384C:
	ldrb r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bne _0801387C
	ldrh r0, [r2]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0
	bne _0801387C
	adds r4, #1
	ldr r0, [r2]
	lsls r0, r0, #9
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	cmp r4, #2
	bhi _08013884
_0801387C:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x18
	bls _0801384C
_08013884:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801388C: .4byte gPlayerStats
_08013890: .4byte 0xFFFFC07F

	thumb_func_start sub_08013894
sub_08013894: @ 0x08013894
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r4, #0
	movs r3, #0
	ldr r0, _080138E8 @ =gPlayerStats
	movs r7, #0x71
	rsbs r7, r7, #0
	ldr r6, _080138EC @ =0xFFFFC07F
	adds r2, r0, #0
	adds r2, #0x88
_080138A8:
	ldrb r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bne _080138D8
	ldrh r0, [r2]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #1
	bne _080138D8
	adds r4, #1
	ldr r0, [r2]
	lsls r0, r0, #9
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	cmp r4, #2
	bhi _080138E0
_080138D8:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x18
	bls _080138A8
_080138E0:
	adds r0, r5, #0

	non_word_aligned_thumb_func_start sub_080138E2
sub_080138E2: @ 0x080138E2
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080138E8: .4byte gPlayerStats
_080138EC: .4byte 0xFFFFC07F

	thumb_func_start sub_080138F0
sub_080138F0: @ 0x080138F0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r4, #0
	movs r3, #0
	ldr r0, _08013944 @ =gPlayerStats
	movs r7, #0x71
	rsbs r7, r7, #0
	ldr r6, _08013948 @ =0xFFFFC07F
	adds r2, r0, #0
	adds r2, #0x88
_08013904:
	ldrb r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bne _08013934
	ldrh r0, [r2]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #2
	bne _08013934
	adds r4, #1
	ldr r0, [r2]
	lsls r0, r0, #9
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	cmp r4, #2
	bhi _0801393C
_08013934:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x18
	bls _08013904
_0801393C:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013944: .4byte gPlayerStats
_08013948: .4byte 0xFFFFC07F
_0801394C:
	.byte 0x00, 0x06, 0x00, 0x0E
	.byte 0x04, 0x49, 0x18, 0x28, 0x00, 0xD9, 0x00, 0x20, 0x80, 0x00, 0x88, 0x31, 0x40, 0x18, 0x00, 0x68
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0x3D, 0x00, 0x03
