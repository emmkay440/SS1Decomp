	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080497D8
sub_080497D8: @ 0x080497D8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #0x6d
	bl PlaySE
	movs r5, #0
	ldr r4, _080498E8 @ =gBgRegsBuffer
_080497F2:
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080497F2
	movs r4, #0
	movs r0, #0x6c
	bl PlaySE
	movs r5, #0
	ldr r7, _080498EC @ =0x0805289C
_08049812:
	lsrs r3, r5, #2
	movs r0, #0x10
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	bl sub_080044E4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r6, #0
	str r6, [sp]
	ldr r0, _080498F0 @ =gUnknown_03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _080498E8 @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r5, #0x3b
	bls _08049812
	str r6, [sp]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r5, #0
	ldr r7, _080498EC @ =0x0805289C
_08049884:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r6, #0
	str r6, [sp]
	ldr r0, _080498F0 @ =gUnknown_03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _080498E8 @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r5, #0x59
	bls _08049884
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x39
	bl PlaySE
	ldr r5, _080498EC @ =0x0805289C
	b _08049936
	.align 2, 0
_080498E8: .4byte gBgRegsBuffer
_080498EC: .4byte 0x0805289C
_080498F0: .4byte gUnknown_03000800
_080498F4:
	movs r0, #0
	bl sub_08049C58
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049948 @ =gUnknown_03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _0804994C @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
_08049936:
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_08049A24
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080498F4
	ldr r5, _08049950 @ =0x0805289C
	b _0804999E
	.align 2, 0
_08049948: .4byte gUnknown_03000800
_0804994C: .4byte gBgRegsBuffer
_08049950: .4byte 0x0805289C
_08049954:
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_08049A24
	movs r0, #0
	bl sub_08049C58
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049A18 @ =gUnknown_03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _08049A1C @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
_0804999E:
	bl sub_08049E30
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049954
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
	ldr r6, _08049A20 @ =0x0805289C
_080499B2:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049A18 @ =gUnknown_03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _08049A1C @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
	cmp r5, #0x2c
	bne _080499F8
	movs r0, #6
	bl sub_0800F3A0
_080499F8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080499B2
	movs r0, #0x39
	bl StopSE
	movs r0, #0x6d
	bl StopSE
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049A18: .4byte gUnknown_03000800
_08049A1C: .4byte gBgRegsBuffer
_08049A20: .4byte 0x0805289C

	thumb_func_start sub_08049A24
sub_08049A24: @ 0x08049A24
	push {r4, r5, r6, lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08049A38 @ =gUnknown_030007F0
	ldrb r1, [r0]
	cmp r1, #0x3b
	bls _08049A3C
	movs r0, #0
	b _08049C46
	.align 2, 0
_08049A38: .4byte gUnknown_030007F0
_08049A3C:
	movs r3, #0
	movs r2, #0
	lsls r5, r4, #0x10
	cmp r3, r1
	bhs _08049A68
	ldr r0, _08049ADC @ =gUnknown_030007F8
	ldr r4, [r0]
_08049A4A:
	lsls r0, r2, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049A5E
	cmp r0, #3
	beq _08049A5E
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08049A5E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r1
	blo _08049A4A
_08049A68:
	adds r4, r3, #0
	bl Random
	lsls r0, r0, #0x10
	cmp r0, r5
	bgt _08049A76
	b _08049C44
_08049A76:
	cmp r4, #9
	bls _08049A7C
	b _08049C44
_08049A7C:
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049B54
	ldr r4, _08049AE0 @ =gUnknown_030007F0
	ldrb r0, [r4]
	ldr r5, _08049ADC @ =gUnknown_030007F8
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r6, #2
	strb r6, [r0]
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049AE4
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	strb r6, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0x40
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049AC4
	rsbs r0, r0, #0
_08049AC4:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x78
	b _08049B1E
	.align 2, 0
_08049ADC: .4byte gUnknown_030007F8
_08049AE0: .4byte gUnknown_030007F0
_08049AE4:
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xc0
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049B0A
	rsbs r0, r0, #0
_08049B0A:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x28
_08049B1E:
	strh r0, [r1, #0xa]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049B2E
	rsbs r0, r0, #0
_08049B2E:
	movs r1, #0x3c
	bl __modsi3
	ldr r5, _08049B4C @ =gUnknown_030007F0
	ldrb r1, [r5]
	ldr r4, _08049B50 @ =gUnknown_030007F8
	ldr r2, [r4]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0xc8
	strh r0, [r1, #8]
	b _08049C18
	.align 2, 0
_08049B4C: .4byte gUnknown_030007F0
_08049B50: .4byte gUnknown_030007F8
_08049B54:
	ldr r4, _08049BAC @ =gUnknown_030007F0
	ldrb r0, [r4]
	ldr r5, _08049BB0 @ =gUnknown_030007F8
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r6, #1
	strb r6, [r0]
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049BB4
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xc0
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049B94
	rsbs r0, r0, #0
_08049B94:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x78
	b _08049BEC
	.align 2, 0
_08049BAC: .4byte gUnknown_030007F0
_08049BB0: .4byte gUnknown_030007F8
_08049BB4:
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	strb r6, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0x40
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049BD8
	rsbs r0, r0, #0
_08049BD8:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x28
_08049BEC:
	strh r0, [r1, #0xa]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049BFC
	rsbs r0, r0, #0
_08049BFC:
	movs r1, #0x3c
	bl __modsi3
	ldr r5, _08049C50 @ =gUnknown_030007F0
	ldrb r2, [r5]
	ldr r4, _08049C54 @ =gUnknown_030007F8
	ldr r1, [r4]
	lsls r2, r2, #4
	adds r2, r2, r1
	movs r1, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2, #8]
_08049C18:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049C26
	rsbs r0, r0, #0
_08049C26:
	movs r1, #0x14
	bl __modsi3
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x28
	strh r0, [r1, #0xc]
	ldr r1, _08049C50 @ =gUnknown_030007F0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08049C44:
	movs r0, #1
_08049C46:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08049C50: .4byte gUnknown_030007F0
_08049C54: .4byte gUnknown_030007F8

	thumb_func_start sub_08049C58
sub_08049C58: @ 0x08049C58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08049CF4 @ =gUnknown_030007F8
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r1, _08049CF8 @ =gUnknown_03000800
	mov r8, r1
	adds r2, r4, #6
	mov sb, r2
	movs r5, #3
	mov sl, r5
_08049C78:
	ldrb r7, [r4]
	adds r3, r4, #4
	cmp r7, #2
	bne _08049D0E
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	ldrb r1, [r4, #1]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r5, _08049CFC @ =0x0805289C
	adds r0, r0, r5
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r2, r0
	asrs r6, r0, #6
	lsls r1, r1, #1
	ldr r0, _08049CFC @ =0x0805289C
	adds r1, r1, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r2, r0
	asrs r5, r0, #8
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	adds r2, r3, #0
	mov r3, sb
	bl sub_08026C40
	movs r1, #8
	ldrsh r0, [r4, r1]
	adds r0, r0, r6
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	adds r1, r1, r5
	ldrh r3, [r4, #4]
	movs r2, #0
	str r2, [sp]
	mov r2, r8
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r5, r8
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	bl sub_08003FA4
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08049D00
	ldrb r0, [r4, #1]
	cmp r0, #0x44
	bhi _08049D92
	mov r5, sl
	strb r5, [r4]
	b _08049D92
	.align 2, 0
_08049CF4: .4byte gUnknown_030007F8
_08049CF8: .4byte gUnknown_03000800
_08049CFC: .4byte 0x0805289C
_08049D00:
	ldrb r0, [r4, #1]
	cmp r0, #0xbb
	bls _08049D0A
	mov r1, sl
	strb r1, [r4]
_08049D0A:
	adds r0, #4
	b _08049D94
_08049D0E:
	cmp r7, #1
	bne _08049D96
	movs r5, #0xc
	ldrsh r2, [r4, r5]
	ldrb r1, [r4, #1]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r5, _08049D84 @ =0x0805289C
	adds r0, r0, r5
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r2, r0
	asrs r6, r0, #6
	lsls r1, r1, #1
	ldr r0, _08049D84 @ =0x0805289C
	adds r1, r1, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r2, r0
	asrs r5, r0, #8
	str r7, [sp]
	mov r0, r8
	movs r1, #1
	adds r2, r3, #0
	mov r3, sb
	bl sub_08026C40
	movs r1, #8
	ldrsh r0, [r4, r1]
	adds r0, r0, r6
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	adds r1, r1, r5
	ldrh r3, [r4, #4]
	movs r2, #0
	str r2, [sp]
	mov r2, r8
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r5, r8
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r2, #1
	bl sub_08003FA4
	ldrb r0, [r4, #2]
	cmp r0, #2
	bne _08049D88
	ldrb r0, [r4, #1]
	cmp r0, #0x40
	bne _08049D80
	mov r1, sl
	strb r1, [r4]
_08049D80:
	adds r0, #4
	b _08049D94
	.align 2, 0
_08049D84: .4byte 0x0805289C
_08049D88:
	ldrb r0, [r4, #1]
	cmp r0, #0xc0
	bne _08049D92
	mov r2, sl
	strb r2, [r4]
_08049D92:
	subs r0, #4
_08049D94:
	strb r0, [r4, #1]
_08049D96:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	movs r5, #0x10
	add sb, r5
	adds r4, #0x10
	cmp r0, #0x3b
	bhi _08049DAC
	b _08049C78
_08049DAC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
