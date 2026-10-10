	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08047F6C
sub_08047F6C: @ 0x08047F6C
	push {r4, lr}
	ldr r0, _08047FF0 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #5
	beq _08047F78
	b _0804823A
_08047F78:
	ldr r0, _08047FF4 @ =gUnknown_03000600
	ldrh r2, [r0]
	ldr r1, _08047FF8 @ =0x0000060C
	adds r3, r0, #0
	cmp r2, r1
	bne _08048008
	ldr r0, _08047FFC @ =0x03000604
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r2, _08048000 @ =gUnknown_030005F2
	cmp r1, #0x40
	bne _08047FBE
	ldrb r1, [r3, #1]
	subs r0, r1, #1
	strb r0, [r3, #1]
	ldr r0, _08048004 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #0
	blt _08047FAE
	cmp r0, #1
	ble _08047FAA
	cmp r0, #5
	bgt _08047FAE
	cmp r0, #3
	blt _08047FAE
_08047FAA:
	subs r0, r1, #2
	strb r0, [r3, #1]
_08047FAE:
	ldr r0, _08048000 @ =gUnknown_030005F2
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bne _08047FBE
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08047FBE:
	ldrh r0, [r4]
	cmp r0, #0x80
	bne _08047FD4
	movs r0, #0
	strb r0, [r3, #1]
	ldrb r0, [r2]
	cmp r0, #2
	bne _08047FD4
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08047FD4:
	ldrb r0, [r2]
	cmp r0, #1
	bls _08047FDC
	b _0804823A
_08047FDC:
	ldrh r0, [r4]
	cmp r0, #0x20
	bne _08047FE6
	movs r0, #9
	strb r0, [r3]
_08047FE6:
	ldrh r0, [r4]
	cmp r0, #0x10
	beq _08047FEE
	b _0804823A
_08047FEE:
	b _0804811C
	.align 2, 0
_08047FF0: .4byte gUnknown_030005F0
_08047FF4: .4byte gUnknown_03000600
_08047FF8: .4byte 0x0000060C
_08047FFC: .4byte 0x03000604
_08048000: .4byte gUnknown_030005F2
_08048004: .4byte gLanguage
_08048008:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bls _0804801C
	ldrb r0, [r3]
	cmp r0, #9
	bls _0804801C
	ldr r0, _08048034 @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x80
	beq _0804802C
_0804801C:
	ldrh r1, [r3]
	ldr r0, _08048038 @ =0x00000609
	cmp r1, r0
	bne _0804803C
	ldr r0, _08048034 @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x10
	bne _0804803C
_0804802C:
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
	.align 2, 0
_08048034: .4byte 0x03000604
_08048038: .4byte 0x00000609
_0804803C:
	ldr r0, _08048050 @ =gUnknown_030005F2
	ldrb r0, [r0]
	cmp r0, #0
	bge _08048046
	b _0804823A
_08048046:
	cmp r0, #1
	ble _08048054
	cmp r0, #2
	beq _080480B8
	b _0804823A
	.align 2, 0
_08048050: .4byte gUnknown_030005F2
_08048054:
	ldr r0, _08048068 @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _0804807E
	cmp r0, #0x20
	bgt _0804806C
	cmp r0, #0x10
	beq _08048076
	b _0804823A
	.align 2, 0
_08048068: .4byte 0x03000604
_0804806C:
	cmp r0, #0x40
	beq _08048098
	cmp r0, #0x80
	beq _0804808A
	b _0804823A
_08048076:
	ldrb r0, [r3]
	cmp r0, #0xb
	bls _08048102
	b _0804811C
_0804807E:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0804814E
	movs r0, #0xc
	strb r0, [r3]
	b _0804823A
_0804808A:
	ldrb r0, [r3, #1]
	cmp r0, #5
	bhi _08048094
	adds r0, #1
	b _08048238
_08048094:
	movs r0, #0
	b _08048238
_08048098:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080480A2
	subs r0, #1
	b _08048238
_080480A2:
	ldrb r0, [r3]
	cmp r0, #0xc
	bne _080480AC
	movs r0, #6
	b _08048238
_080480AC:
	cmp r0, #9
	bls _080480B4
	movs r0, #5
	b _08048238
_080480B4:
	movs r0, #6
	b _08048238
_080480B8:
	ldr r0, _080480CC @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _08048122
	cmp r0, #0x20
	bgt _080480D0
	cmp r0, #0x10
	beq _080480DC
	b _0804823A
	.align 2, 0
_080480CC: .4byte 0x03000604
_080480D0:
	cmp r0, #0x40
	bne _080480D6
	b _08048218
_080480D6:
	cmp r0, #0x80
	beq _0804815A
	b _0804823A
_080480DC:
	ldr r0, _080480F8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #0
	bge _080480E6
	b _0804823A
_080480E6:
	cmp r0, #1
	ble _080480FC
	cmp r0, #5
	ble _080480F0
	b _0804823A
_080480F0:
	ldrb r0, [r3]
	cmp r0, #0xc
	bhi _08048110
	b _08048102
	.align 2, 0
_080480F8: .4byte gLanguage
_080480FC:
	ldrb r0, [r3]
	cmp r0, #0xc
	bhi _08048108
_08048102:
	adds r0, #1
	strb r0, [r3]
	b _0804823A
_08048108:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bhi _08048116
	b _0804811C
_08048110:
	ldrb r0, [r3, #1]
	cmp r0, #6
	bls _0804811C
_08048116:
	movs r0, #0xb
	strb r0, [r3]
	b _0804823A
_0804811C:
	movs r0, #0
	strb r0, [r3]
	b _0804823A
_08048122:
	ldr r0, _0804813C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #1
	bgt _08048148
	cmp r0, #0
	blt _08048148
	ldrb r0, [r3, #1]
	cmp r0, #4
	bls _08048140
	ldrb r0, [r3]
	cmp r0, #0xb
	bhi _0804814E
	b _08048154
	.align 2, 0
_0804813C: .4byte gLanguage
_08048140:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0804814E
	b _08048154
_08048148:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08048154
_0804814E:
	subs r0, #1
	strb r0, [r3]
	b _0804823A
_08048154:
	movs r0, #0xd
	strb r0, [r3]
	b _0804823A
_0804815A:
	ldr r0, _0804816C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0804823A
	lsls r0, r0, #2
	ldr r1, _08048170 @ =_08048174
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804816C: .4byte gLanguage
_08048170: .4byte _08048174
_08048174: @ jump table
	.4byte _0804818C @ case 0
	.4byte _0804818C @ case 1
	.4byte _080481A8 @ case 2
	.4byte _080481C4 @ case 3
	.4byte _080481E0 @ case 4
	.4byte _080481FC @ case 5
_0804818C:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _08048196
	adds r0, #1
	b _08048238
_08048196:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _080481A4
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481A4:
	movs r0, #0
	b _08048238
_080481A8:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bhi _080481B2
	adds r0, #1
	b _08048238
_080481B2:
	ldrb r0, [r3]
	cmp r0, #0xd
	bls _080481C0
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481C0:
	movs r0, #0
	b _08048238
_080481C4:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _080481CE
	adds r0, #1
	b _08048238
_080481CE:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _080481DC
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481DC:
	movs r0, #0
	b _08048238
_080481E0:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _080481EA
	adds r0, #1
	b _08048238
_080481EA:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _080481F8
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481F8:
	movs r0, #0
	b _08048238
_080481FC:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _08048206
	adds r0, #1
	b _08048238
_08048206:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _08048214
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_08048214:
	movs r0, #0
	b _08048238
_08048218:
	adds r1, r3, #0
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08048226
	subs r0, #1
	strb r0, [r1, #1]
	b _0804823A
_08048226:
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08048236
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #6
	strb r0, [r1, #1]
	b _0804823A
_08048236:
	movs r0, #4
_08048238:
	strb r0, [r3, #1]
_0804823A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08048240
sub_08048240: @ 0x08048240
	ldr r1, _0804824C @ =gUnknown_030005F0
	ldrb r1, [r1]
	cmp r1, #5
	beq _08048250
	movs r0, #0
	b _08048372
	.align 2, 0
_0804824C: .4byte gUnknown_030005F0
_08048250:
	ldr r1, _08048264 @ =gUnknown_030005F2
	ldrb r1, [r1]
	cmp r1, #1
	beq _0804828C
	cmp r1, #1
	bgt _08048268
	cmp r1, #0
	beq _0804826E
	b _08048372
	.align 2, 0
_08048264: .4byte gUnknown_030005F2
_08048268:
	cmp r1, #2
	beq _080482A8
	b _08048372
_0804826E:
	ldr r3, _08048284 @ =0x080FBE1C
	ldr r2, _08048288 @ =gUnknown_03000600
	ldrb r1, [r2, #1]
	movs r0, #0xd
	muls r0, r1, r0
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	b _08048372
	.align 2, 0
_08048284: .4byte 0x080FBE1C
_08048288: .4byte gUnknown_03000600
_0804828C:
	ldr r3, _080482A0 @ =0x080FBE77
	ldr r2, _080482A4 @ =gUnknown_03000600
	ldrb r1, [r2, #1]
	movs r0, #0xd
	muls r0, r1, r0
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	b _08048372
	.align 2, 0
_080482A0: .4byte 0x080FBE77
_080482A4: .4byte gUnknown_03000600
_080482A8:
	ldr r1, _080482BC @ =gLanguage
	ldrh r1, [r1]
	cmp r1, #5
	bhi _08048372
	lsls r0, r1, #2
	ldr r1, _080482C0 @ =_080482C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080482BC: .4byte gLanguage
_080482C0: .4byte _080482C4
_080482C4: @ jump table
	.4byte _080482DC @ case 0
	.4byte _080482DC @ case 1
	.4byte _080482FC @ case 2
	.4byte _0804831C @ case 3
	.4byte _0804833C @ case 4
	.4byte _0804835C @ case 5
_080482DC:
	ldr r3, _080482F4 @ =0x080FBED2
	ldr r0, _080482F8 @ =gUnknown_03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_080482F4: .4byte 0x080FBED2
_080482F8: .4byte gUnknown_03000600
_080482FC:
	ldr r3, _08048314 @ =0x080FBF5E
	ldr r0, _08048318 @ =gUnknown_03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_08048314: .4byte 0x080FBF5E
_08048318: .4byte gUnknown_03000600
_0804831C:
	ldr r3, _08048334 @ =0x080FC006
	ldr r0, _08048338 @ =gUnknown_03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_08048334: .4byte 0x080FC006
_08048338: .4byte gUnknown_03000600
_0804833C:
	ldr r3, _08048354 @ =0x080FC0AE
	ldr r0, _08048358 @ =gUnknown_03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_08048354: .4byte 0x080FC0AE
_08048358: .4byte gUnknown_03000600
_0804835C:
	ldr r3, _08048374 @ =0x080FC156
	ldr r0, _08048378 @ =gUnknown_03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
_08048372:
	bx lr
	.align 2, 0
_08048374: .4byte 0x080FC156
_08048378: .4byte gUnknown_03000600

	thumb_func_start sub_0804837C
sub_0804837C: @ 0x0804837C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _080483E0 @ =0x03000730
	ldr r7, _080483E4 @ =gUnknown_03000614
	ldr r4, _080483E8 @ =gUnknown_0300061C
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #4
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08026C40
	adds r2, r7, #2
	adds r4, #2
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #5
	adds r3, r4, #0
	bl sub_08026C40
	ldr r0, _080483EC @ =0x030005F7
	ldrb r4, [r0]
	cmp r4, #0
	beq _080483F0
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x94
	movs r3, #4
	bl sub_08026BC4
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x94
	movs r3, #5
	bl sub_08026B90
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x94
	movs r3, #8
	bl sub_08026B90
	b _0804841E
	.align 2, 0
_080483E0: .4byte 0x03000730
_080483E4: .4byte gUnknown_03000614
_080483E8: .4byte gUnknown_0300061C
_080483EC: .4byte 0x030005F7
_080483F0:
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x94
	movs r3, #4
	bl sub_08026B90
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x94
	movs r3, #5
	bl sub_08026BC4
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x94
	movs r3, #9
	bl sub_08026B90
_0804841E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
