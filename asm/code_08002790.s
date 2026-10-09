	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08002790
sub_08002790: @ 0x08002790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	movs r0, #1
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r0, _080027D8 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08002854
	lsls r0, r0, #2
	ldr r1, _080027DC @ =_080027E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080027D8: .4byte 0x03003CA8
_080027DC: .4byte _080027E0
_080027E0: @ jump table
	.4byte _080027F4 @ case 0
	.4byte _08002804 @ case 1
	.4byte _08002814 @ case 2
	.4byte _08002824 @ case 3
	.4byte _08002840 @ case 4
_080027F4:
	movs r0, #0xa3
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002800 @ =0x0010005F
	b _0800282E
	.align 2, 0
_08002800: .4byte 0x0010005F
_08002804:
	movs r0, #0xa2
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002810 @ =0x00100081
	b _0800282E
	.align 2, 0
_08002810: .4byte 0x00100081
_08002814:
	movs r0, #0xa6
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002820 @ =0x00100080
	b _0800282E
	.align 2, 0
_08002820: .4byte 0x00100080
_08002824:
	movs r0, #0xa5
	movs r1, #1
	bl sub_080060A0
	ldr r1, _0800283C @ =0x0010007F
_0800282E:
	add r0, sp, #4
	movs r2, #0
	movs r3, #3
	bl sub_08026ADC
	b _08002854
	.align 2, 0
_0800283C: .4byte 0x0010007F
_08002840:
	movs r0, #0xa9
	movs r1, #1
	bl sub_080060A0
	ldr r1, _08002884 @ =0x00100093
	add r0, sp, #4
	movs r2, #0
	movs r3, #3
	bl sub_08026ADC
_08002854:
	ldr r1, _08002888 @ =0xFFFF0000
	ldr r0, [sp, #0x3c]
	ands r0, r1
	movs r1, #0xec
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #0x3c]
	add r1, sp, #0x3c
	movs r0, #1
	bl SetBgCnt
	bl WaitFrame
	bl WaitFrame
	movs r0, #6
	bl sub_0800F308
	bl GetMultiplayerId
	cmp r0, #0
	bne _080028A6
	movs r0, #0
	b _080028AA
	.align 2, 0
_08002884: .4byte 0x00100093
_08002888: .4byte 0xFFFF0000
_0800288C:
	movs r0, #0xf
	bl PlaySE
	movs r0, #0
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0x47
	strb r0, [r4, #8]
	movs r0, #0x4f
	strb r0, [r4, #9]
_080028A2:
	movs r5, #1
	b _08002AF8
_080028A6:
	bl GetMultiplayerId
_080028AA:
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0x30
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	movs r0, #0
	strb r0, [r4, #0xc]
	mov r1, sp
	adds r1, #0x3a
	movs r2, #0
	strh r2, [r1]
	add r0, sp, #0x38
	strh r2, [r0]
	mov sb, r0
	b _080028E6
_080028CA:
	bl sub_08001EC4
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
_080028E6:
	bl sub_0800F298
	cmp r0, #0
	beq _080028CA
	ldr r0, _08002914 @ =0x03003F80
	mov sl, r0
_080028F2:
	bl GetMultiplayerId
	cmp r0, #0
	beq _080028FC
	b _08002A00
_080028FC:
	movs r7, #0
	ldr r4, _08002918 @ =0x08052B6C
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	str r7, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	movs r5, #1
	adds r6, r4, #4
	b _08002946
	.align 2, 0
_08002914: .4byte 0x03003F80
_08002918: .4byte 0x08052B6C
_0800291C:
	adds r0, r5, #0
	bl sub_08001E78
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x4f
	bne _08002942
	ldrb r0, [r4, #9]
	cmp r0, #0x4b
	bne _08002942
	adds r7, #1
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	movs r0, #0
	str r0, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
_08002942:
	adds r6, #4
	adds r5, #1
_08002946:
	bl sub_08001EC4
	cmp r5, r0
	blo _0800291C
	bl sub_08001F98
	cmp r0, #0
	beq _08002990
	bl sub_08001EC4
	subs r0, #1
	cmp r7, r0
	bne _08002990
	movs r4, #1
	str r4, [sp]
	add r0, sp, #4
	movs r1, #2
	mov r2, sb
	mov r3, sp
	adds r3, #0x3a
	bl sub_08026C40
	mov r1, sb
	ldrh r0, [r1]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #2
	bl sub_08026B90
	ldr r0, _080029BC @ =gKeysNew
	ldrh r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08002990
	b _0800288C
_08002990:
	movs r0, #0
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #8
	bl sub_080076A8
	cmp r0, #0
	beq _080029C8
	mov r1, sl
	ldr r0, [r1]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x16
	ldr r1, _080029C0 @ =gUnknown_03003D08
	str r0, [r1]
	strh r0, [r4, #8]
	ldr r1, _080029C4 @ =0x00001819
	b _080029D8
	.align 2, 0
_080029BC: .4byte gKeysNew
_080029C0: .4byte gUnknown_03003D08
_080029C4: .4byte 0x00001819
_080029C8:
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r1, _080029F4 @ =gUnknown_03003D08
	str r0, [r1]
	strh r0, [r4, #8]
	ldr r1, _080029F8 @ =0x00001818
_080029D8:
	adds r0, r1, #0
	strh r0, [r5, #2]
_080029DC:
	ldr r0, _080029FC @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002ADA
	movs r0, #0x10
	bl PlaySE
	movs r5, #0
	b _08002AF8
	.align 2, 0
_080029F4: .4byte gUnknown_03003D08
_080029F8: .4byte 0x00001818
_080029FC: .4byte gKeysNew
_08002A00:
	bl GetMultiplayerId
	bl sub_08001E78
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	movs r0, #0x4f
	strb r0, [r4, #8]
	movs r0, #0x4b
	strb r0, [r4, #9]
	movs r0, #0
	bl sub_08001E78
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x47
	bne _08002A2C
	ldrb r0, [r4, #9]
	cmp r0, #0x4f
	bne _08002A2C
	b _080028A2
_08002A2C:
	movs r5, #0
	ldr r6, _08002A38 @ =0x08052B6C
	ldr r7, _08002A3C @ =gUnknown_03003D08
	mov r8, r6
	b _08002AD0
	.align 2, 0
_08002A38: .4byte 0x08052B6C
_08002A3C: .4byte gUnknown_03003D08
_08002A40:
	adds r0, r5, #0
	bl sub_08001E78
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x4f
	bne _08002A68
	ldrb r0, [r4, #9]
	cmp r0, #0x4b
	bne _08002A68
	mov r0, r8
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	movs r0, #0
	str r0, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	b _08002ACA
_08002A68:
	cmp r5, #0
	bne _08002ACA
	ldrb r0, [r4, #0xa]
	adds r1, r0, #0
	cmp r1, #0x18
	bne _08002A9A
	ldrb r0, [r4, #0xb]
	cmp r0, #0x18
	bne _08002A9A
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	str r5, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	ldrb r1, [r4, #8]
	str r1, [r7]
	ldrb r0, [r4, #9]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r7]
	bl sub_08007694
	b _08002ACA
_08002A9A:
	cmp r5, #0
	bne _08002ACA
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bne _08002ACA
	ldrb r0, [r4, #0xb]
	cmp r0, #0x18
	bne _08002ACA
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	str r5, [sp]
	add r0, sp, #4
	movs r3, #1
	bl sub_08026B90
	ldrb r1, [r4, #8]
	str r1, [r7]
	ldrb r0, [r4, #9]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r7]
	bl sub_08007680
_08002ACA:
	movs r1, #4
	add r8, r1
	adds r5, #1
_08002AD0:
	bl sub_08001EC4
	cmp r5, r0
	blo _08002A40
	b _080029DC
_08002ADA:
	bl sub_08001EC4
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	b _080028F2
_08002AF8:
	cmp r5, #1
	bne _08002B08
	movs r0, #6
	bl sub_0800F3A0
	bl WaitFrame
	b _08002B12
_08002B08:
	movs r0, #0xa
	bl sub_0800F244
_08002B0E:
	bl WaitFrame
_08002B12:
	bl sub_0800F298
	cmp r0, #0
	beq _08002B0E
	cmp r5, #0
	beq _08002B24
	cmp r5, #1
	beq _08002B3E
	b _08002B44
_08002B24:
	bl GetMultiplayerId
	bl sub_08001E78
	adds r4, r0, #0
	strb r5, [r4, #8]
	strb r5, [r4, #9]
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xb]
	movs r0, #0x14
	bl SignalEvent
	b _08002B44
_08002B3E:
	movs r0, #1
	bl sub_08007490
_08002B44:
	bl ThreadExit
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
