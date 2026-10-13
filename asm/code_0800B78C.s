	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800B78C
sub_0800B78C: @ 0x0800B78C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _0800B89C @ =gPlayers
	adds r4, r1, r0
	ldr r5, [r4, #0x58]
	ldr r6, [r4, #0x5c]
	ldr r2, _0800B8A0 @ =0x080FB5D0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	mov ip, r0
	lsls r1, r0, #3
	adds r0, r1, r2
	ldr r0, [r0]
	muls r0, r7, r0
	adds r5, r5, r0
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	muls r0, r7, r0
	adds r6, r6, r0
	ldrh r0, [r4, #0xa]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r1, [r4, #0x10]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0800B7F8
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800B7E6
	movs r3, #1
_0800B7E6:
	mov r0, ip
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0800B890
_0800B7F8:
	cmp r3, #0
	beq _0800B800
	subs r0, r3, #1
	strh r0, [r4, #0xa]
_0800B800:
	ldr r5, [r4, #0x58]
	ldr r6, [r4, #0x5c]
	ldr r2, _0800B8A0 @ =0x080FB5D0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	mov ip, r0
	lsls r1, r0, #3
	adds r0, r1, r2
	ldr r0, [r0]
	muls r0, r7, r0
	adds r5, r5, r0
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	muls r0, r7, r0
	adds r6, r6, r0
	ldrh r1, [r4, #0x10]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	bne _0800B85C
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800B840
	movs r3, #1
_0800B840:
	mov r0, ip
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0800B860
	ldrh r1, [r4, #0x10]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0800B890
_0800B85C:
	cmp r3, #0
	beq _0800B864
_0800B860:
	subs r0, r3, #1
	strh r0, [r4, #0xa]
_0800B864:
	ldr r2, _0800B8A0 @ =0x080FB5D0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, #0
	muls r1, r7, r1
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, #0
	muls r1, r7, r1
	ldr r0, [r4, #0x5c]
	adds r0, r0, r1
	str r0, [r4, #0x5c]
_0800B890:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B89C: .4byte gPlayers
_0800B8A0: .4byte 0x080FB5D0

	thumb_func_start HudThread
HudThread: @ 0x0800B8A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	str r0, [sp, #0x70]
	bl GetPlayerClass
	cmp r0, #1
	beq _0800B8EC
	cmp r0, #1
	bgt _0800B8CA
	cmp r0, #0
	beq _0800B8D4
	mov r0, sp
	adds r0, #0x34
	str r0, [sp, #0x98]
	b _0800B900
_0800B8CA:
	mov r1, sp
	adds r1, #0x34
	str r1, [sp, #0x98]
	cmp r0, #3
	bgt _0800B900
_0800B8D4:
	movs r2, #0
	str r2, [sp, #0x78]
	add r4, sp, #0x34
	ldr r1, _0800B8E8 @ =0x00100040
	adds r0, r4, #0
	movs r3, #0
	bl sub_08026ADC
	b _0800B8FE
	.align 2, 0
_0800B8E8: .4byte 0x00100040
_0800B8EC:
	movs r3, #1
	str r3, [sp, #0x78]
	add r4, sp, #0x34
	ldr r1, _0800B934 @ =0x0010003F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08026ADC
_0800B8FE:
	str r4, [sp, #0x98]
_0800B900:
	bl sub_08026C78
	str r0, [sp, #0x74]
	movs r0, #0xa0
	lsls r0, r0, #3
	bl Alloc
	mov r8, r0
	ldr r0, [sp, #0x34]
	movs r2, #0xa0
	lsls r2, r2, #1
	mov r1, r8
	bl CpuFastSet
	mov r4, r8
	str r4, [sp, #0x34]
	ldr r6, _0800B938 @ =0x0000FFFF
	str r6, [sp, #0x80]
	str r6, [sp, #0x7c]
	str r6, [sp, #0x88]
	str r6, [sp, #0x84]
	mov r7, sp
	adds r7, #0x10
	str r7, [sp, #0x8c]
	b _0800BDFE
	.align 2, 0
_0800B934: .4byte 0x0010003F
_0800B938: .4byte 0x0000FFFF
_0800B93C:
	ldr r0, [sp, #0x70]
	adds r0, #0x7a
	str r0, [sp, #0xac]
	ldr r1, [sp, #0x7c]
	lsls r4, r1, #0x10
	ldr r2, [sp, #0x70]
	adds r2, #0x50
	str r2, [sp, #0xa8]
	ldr r3, [sp, #0x84]
	lsls r6, r3, #0x10
	b _0800B956
_0800B952:
	bl WaitFrame
_0800B956:
	bl sub_080075AC
	cmp r0, #0
	bne _0800B966
	bl sub_08007604
	cmp r0, #0
	beq _0800B976
_0800B966:
	bl sub_080074CC
	cmp r0, #0
	bne _0800B976
	bl sub_08007578
	cmp r0, #0
	beq _0800B952
_0800B976:
	asrs r5, r4, #0x10
	ldr r4, [sp, #0xac]
	movs r7, #0
	ldrsh r3, [r4, r7]
	adds r0, r5, #0
	eors r0, r3
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r2, r1, #0x1f
	asrs r0, r6, #0x10
	ldr r1, [sp, #0xa8]
	ldrh r4, [r1]
	movs r6, #0
	ldrsh r1, [r1, r6]
	cmp r0, r1
	beq _0800B998
	movs r2, #1
_0800B998:
	cmp r2, #0
	bne _0800B99E
	b _0800BB50
_0800B99E:
	cmp r3, r1
	ble _0800B9AE
	ldr r7, [sp, #0xac]
	strh r4, [r7]
	cmp r1, r5
	bge _0800B9AE
	ldrh r0, [r7]
	str r0, [sp, #0x7c]
_0800B9AE:
	ldr r1, [sp, #0xa8]
	ldrh r1, [r1]
	str r1, [sp, #0x84]
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _0800BA0C
	ldr r3, [sp, #0xac]
	ldrh r2, [r3]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bge _0800B9E8
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	cmp r3, #1
	ble _0800B9E0
	lsrs r0, r2, #0x1f
	adds r0, r3, r0
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
_0800B9E0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _0800BA04
_0800B9E8:
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	cmp r3, #1
	ble _0800B9FE
	lsrs r0, r2, #0x1f
	adds r0, r3, r0
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
_0800B9FE:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
_0800BA04:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	b _0800BA12
_0800BA0C:
	ldr r6, [sp, #0xac]
	ldrh r6, [r6]
	str r6, [sp, #0x7c]
_0800BA12:
	ldr r7, [sp, #0xac]
	movs r0, #0
	ldrsh r4, [r7, r0]
	ldr r2, [sp, #0x7c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, [sp, #0xa8]
	movs r6, #0
	ldrsh r1, [r3, r6]
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #0
	ble _0800BA3C
	cmp r3, #0
	bne _0800BA3C
	movs r3, #1
_0800BA3C:
	movs r2, #0
	lsrs r0, r3, #3
	cmp r2, r0
	bhs _0800BA78
	ldr r4, _0800BD70 @ =0x99999999
	adds r7, r0, #0
	mov r6, r8
	adds r6, #4
	mov r5, r8
	adds r5, #8
_0800BA50:
	adds r1, r2, #0
	adds r1, #9
	lsls r1, r1, #5
	adds r0, r6, r1
	str r4, [r0]
	adds r0, r5, r1
	str r4, [r0]
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r1
	str r4, [r0]
	mov r0, r8
	adds r0, #0x10
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r7
	blo _0800BA50
_0800BA78:
	movs r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0800BB1A
	ldr r4, [sp, #0x8c]
	str r0, [r4, #8]
	movs r0, #9
	ldr r7, [sp, #0x8c]
	str r0, [r7, #4]
	add r1, sp, #0x1c
	ldr r0, _0800BD74 @ =0x33333330
	str r0, [r1, #4]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	movs r5, #0
	ldr r0, [r7, #8]
	adds r6, r2, #0
	adds r6, #9
	movs r3, #4
	add r3, r8
	mov ip, r3
	movs r7, #8
	add r7, r8
	mov sl, r7
	mov r3, r8
	adds r3, #0xc
	str r3, [sp, #0x90]
	mov r7, r8
	adds r7, #0x10
	str r7, [sp, #0x94]
	adds r2, #1
	mov sb, r2
	cmp r5, r0
	bhs _0800BAE2
	adds r7, r1, #0
_0800BAC2:
	adds r3, r4, #0
	lsls r2, r5, #2
	ldr r1, [r4, #4]
	lsls r1, r2
	ldr r0, [sp, #0x10]
	orrs r0, r1
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	lsls r0, r2
	str r0, [sp, #0x1c]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r3, #8]
	cmp r5, r0
	blo _0800BAC2
_0800BAE2:
	lsls r2, r6, #5
	mov r0, ip
	adds r3, r0, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	mov r1, sl
	adds r3, r1, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	ldr r4, [sp, #0x90]
	adds r3, r4, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	ldr r6, [sp, #0x94]
	adds r2, r6, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r2]
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r2, r0, #0x10
_0800BB1A:
	cmp r2, #5
	bhi _0800BB50
	mov r7, r8
	adds r7, #4
	ldr r3, _0800BD78 @ =0x33333333
	mov r6, r8
	adds r6, #8
	mov r5, r8
	adds r5, #0xc
	mov r4, r8
	adds r4, #0x10
_0800BB30:
	adds r0, r2, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r1, r7, r0
	str r3, [r1]
	adds r1, r6, r0
	str r3, [r1]
	adds r1, r5, r0
	str r3, [r1]
	adds r0, r4, r0
	str r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #5
	bls _0800BB30
_0800BB50:
	ldr r0, [sp, #0x78]
	cmp r0, #0
	bne _0800BB58
	b _0800BCEA
_0800BB58:
	ldr r3, [sp, #0x70]
	adds r3, #0x78
	ldr r1, [sp, #0x80]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r5, [r3, r2]
	eors r0, r5
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r2, r1, #0x1f
	ldr r4, [sp, #0x70]
	adds r4, #0x4e
	ldr r6, [sp, #0x88]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r7, [r4]
	movs r6, #0
	ldrsh r1, [r4, r6]
	adds r6, r4, #0
	cmp r0, r1
	beq _0800BB86
	movs r2, #1
_0800BB86:
	cmp r2, #0
	bne _0800BB8C
	b _0800BCEA
_0800BB8C:
	cmp r5, r1
	ble _0800BB92
	strh r7, [r3]
_0800BB92:
	ldrh r0, [r3]
	str r0, [sp, #0x80]
	ldrh r6, [r6]
	str r6, [sp, #0x88]
	lsls r0, r0, #0x10
	ldr r3, [sp, #0x80]
	cmp r0, #0
	bgt _0800BBA4
	movs r3, #0
_0800BBA4:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	movs r7, #0
	ldrsh r1, [r4, r7]
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, [sp, #0xac]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0800BBC6
	cmp r3, #0
	bne _0800BBC6
	movs r3, #1
_0800BBC6:
	movs r2, #0
	lsrs r0, r3, #3
	cmp r2, r0
	bhs _0800BC08
	ldr r4, _0800BD7C @ =0xAAAAAAAA
	adds r6, r0, #0
	mov r5, r8
	adds r5, #0x18
_0800BBD6:
	adds r1, r2, #0
	adds r1, #9
	lsls r1, r1, #5
	adds r0, r5, r1
	str r4, [r0]
	mov r0, r8
	adds r0, #0x1c
	adds r0, r0, r1
	str r4, [r0]
	adds r1, r2, #0
	adds r1, #0x10
	lsls r1, r1, #5
	mov r0, r8
	adds r0, #0x20
	adds r0, r0, r1
	str r4, [r0]
	mov r0, r8
	adds r0, #0x24
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r6
	blo _0800BBD6
_0800BC08:
	movs r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0800BCAE
	ldr r4, [sp, #0x8c]
	str r0, [r4, #8]
	movs r0, #0xa
	str r0, [r4, #4]
	add r1, sp, #0x1c
	ldr r0, _0800BD74 @ =0x33333330
	str r0, [r1, #4]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	movs r5, #0
	ldr r0, [r4, #8]
	adds r6, r2, #0
	adds r6, #9
	adds r3, r2, #1
	mov sb, r3
	movs r7, #0x18
	add r7, r8
	mov ip, r7
	mov r3, r8
	adds r3, #0x1c
	str r3, [sp, #0x9c]
	adds r2, #0x10
	mov sl, r2
	mov r7, r8
	adds r7, #0x20
	str r7, [sp, #0xa0]
	mov r2, r8
	adds r2, #0x24
	str r2, [sp, #0xa4]
	cmp r5, r0
	bhs _0800BC72
	adds r7, r1, #0
_0800BC52:
	adds r3, r4, #0
	lsls r2, r5, #2
	ldr r1, [r4, #4]
	lsls r1, r2
	ldr r0, [sp, #0x10]
	orrs r0, r1
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	lsls r0, r2
	str r0, [sp, #0x1c]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r3, #8]
	cmp r5, r0
	blo _0800BC52
_0800BC72:
	lsls r2, r6, #5
	mov r4, ip
	adds r3, r4, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	ldr r6, [sp, #0x9c]
	adds r2, r6, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r2]
	mov r7, sl
	lsls r2, r7, #5
	ldr r0, [sp, #0xa0]
	adds r3, r0, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r3]
	ldr r1, [sp, #0xa4]
	adds r2, r1, r2
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [r2]
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
_0800BCAE:
	cmp r2, #5
	bhi _0800BCEA
	mov r7, r8
	adds r7, #0x18
	ldr r3, _0800BD78 @ =0x33333333
	mov r6, r8
	adds r6, #0x1c
	mov r5, r8
	adds r5, #0x20
	mov r4, r8
	adds r4, #0x24
_0800BCC4:
	adds r0, r2, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r1, r7, r0
	str r3, [r1]
	adds r0, r6, r0
	str r3, [r0]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #5
	adds r1, r5, r0
	str r3, [r1]
	adds r0, r4, r0
	str r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #5
	bls _0800BCC4
_0800BCEA:
	bl sub_08007510
	adds r3, r0, #0
	cmp r3, #0
	bne _0800BDBC
	ldr r4, [sp, #0x70]
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	beq _0800BDBC
	ldr r0, [r4, #0x58]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x5c]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x68
	mov r6, sp
	adds r6, #0x6a
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	bl sub_08016D4C
	ldrh r2, [r4, #0x14]
	cmp r0, r2
	bgt _0800BD80
	cmp r2, #0xf
	bhi _0800BDBC
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	beq _0800BDBC
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r0, #2
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #0x1c
	movs r3, #0
	bl sub_08026E70
	add r4, sp, #0x6c
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x74]
	movs r1, #0xc
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x6e
	bl sub_08026C40
	movs r7, #0
	ldrsh r1, [r5, r7]
	movs r0, #0
	ldrsh r2, [r6, r0]
	subs r2, #0x20
	ldrh r0, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x74]
	movs r3, #0xc
	bl sub_08026B90
	b _0800BDBC
	.align 2, 0
_0800BD70: .4byte 0x99999999
_0800BD74: .4byte 0x33333330
_0800BD78: .4byte 0x33333333
_0800BD7C: .4byte 0xAAAAAAAA
_0800BD80:
	ldr r1, [sp, #0x70]
	ldrh r0, [r1, #0xc]
	cmp r0, #5
	beq _0800BDBC
	cmp r2, #0
	bne _0800BD92
	ldrh r0, [r1, #0x12]
	cmp r0, #6
	bls _0800BDBC
_0800BD92:
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r0, #2
	movs r4, #0
	ldrsh r1, [r6, r4]
	subs r1, #0x1c
	movs r3, #0
	bl sub_08026E70
	movs r7, #0
	ldrsh r1, [r5, r7]
	movs r0, #0
	ldrsh r2, [r6, r0]
	subs r2, #0x20
	ldr r3, [sp, #0x70]
	ldrh r0, [r3, #0x12]
	str r0, [sp]
	ldr r0, [sp, #0x74]
	movs r3, #8
	bl sub_08026B90
_0800BDBC:
	ldr r4, [sp, #0x70]
	ldrh r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0800BDFA
	str r0, [sp]
	ldr r0, [sp, #0x98]
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_08026B90
	ldr r6, [sp, #0xa8]
	movs r7, #0
	ldrsh r2, [r6, r7]
	movs r0, #0x2e
	movs r1, #0xa
	movs r3, #0
	bl sub_08026E70
	ldr r0, [sp, #0xac]
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x18
	movs r1, #0xa
	movs r3, #0
	bl sub_08026E70
_0800BDFA:
	bl WaitFrame
_0800BDFE:
	bl sub_080074CC
	cmp r0, #0
	bne _0800BE10
	bl sub_08007578
	cmp r0, #0
	bne _0800BE10
	b _0800B93C
_0800BE10:
	ldr r0, [sp, #0x98]
	bl sub_08026B64
	mov r0, r8
	bl Free
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
