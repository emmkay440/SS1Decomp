	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804B660
sub_0804B660: @ 0x0804B660
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #0x78
	bl PlaySE
	movs r6, #0
	movs r5, #0
	ldr r0, _0804B81C @ =gBgRegsBuffer
	mov r8, r0
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r7, r1, #0
_0804B68C:
	movs r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #0x18
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	str r5, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, _0804B820 @ =gUnknown_03000918
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	subs r0, r7, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r0, #0x78
	mov r2, r8
	strh r0, [r2, #8]
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x3b
	ble _0804B68C
	movs r0, #0x7a
	bl PlaySE
	movs r6, #0
	ldr r7, _0804B820 @ =gUnknown_03000918
	movs r3, #3
	mov sl, r3
	ldr r0, _0804B824 @ =gUnknown_03000910
	mov sb, r0
_0804B6E4:
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	mov r2, sl
	str r2, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	mov r2, sb
	ldr r3, _0804B828 @ =gUnknown_03000912
	bl sub_08026C40
	lsls r5, r6, #0x10
	asrs r5, r5, #0x10
	movs r4, #0x82
	lsls r4, r4, #1
	subs r4, r4, r5
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	str r0, [sp]
	mov r2, sl
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0x64
	movs r3, #1
	bl sub_0802706C
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	rsbs r4, r4, #0
	adds r4, #0x78
	ldr r3, _0804B81C @ =gBgRegsBuffer
	strh r4, [r3, #8]
	bl WaitFrame
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r6, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0x45
	ble _0804B6E4
	movs r0, #0x7a
	bl StopSE
	movs r0, #0x79
	bl PlaySE
	ldr r1, _0804B824 @ =gUnknown_03000910
	mov r0, r8
	strh r0, [r1]
	ldr r0, _0804B828 @ =gUnknown_03000912
	mov r2, r8
	strh r2, [r0]
	movs r6, #0
	ldr r5, _0804B820 @ =gUnknown_03000918
	mov sl, r6
	movs r3, #3
	mov sb, r3
	mov r8, r1
	movs r7, #0xbe
_0804B76E:
	mov r0, sl
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	mov r2, sl
	str r2, [sp]
	adds r0, r5, #0
	movs r1, #5
	mov r2, r8
	ldr r3, _0804B828 @ =gUnknown_03000912
	bl sub_08026C40
	lsls r1, r6, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x11
	subs r1, r7, r1
	mov r3, r8
	movs r2, #0
	ldrsh r0, [r3, r2]
	str r0, [sp]
	mov r3, sb
	str r3, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x64
	movs r3, #5
	bl sub_0802706C
	subs r0, r7, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r0, #0x78
	ldr r1, _0804B81C @ =gBgRegsBuffer
	strh r0, [r1, #8]
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x27
	ble _0804B76E
	movs r6, #0
	ldr r2, _0804B820 @ =gUnknown_03000918
	mov r8, r2
	movs r7, #0
	movs r5, #3
	ldr r4, _0804B81C @ =gBgRegsBuffer
	movs r3, #0x96
	mov sb, r3
_0804B7DE:
	str r7, [sp]
	str r5, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	ldr r0, _0804B824 @ =gUnknown_03000910
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, r8
	movs r1, #0xaa
	movs r2, #0x64
	movs r3, #5
	bl sub_0802706C
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r2, r0
	cmp r0, #0x78
	ble _0804B82C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r0, #0x78
	strh r0, [r4, #8]
	b _0804B82E
	.align 2, 0
_0804B81C: .4byte gBgRegsBuffer
_0804B820: .4byte gUnknown_03000918
_0804B824: .4byte gUnknown_03000910
_0804B828: .4byte gUnknown_03000912
_0804B82C:
	strh r7, [r4, #8]
_0804B82E:
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804B7DE
	movs r6, #0
	ldr r7, _0804BB78 @ =gUnknown_03000918
	movs r4, #0
	movs r5, #3
_0804B84A:
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xaf
	movs r2, #0x64
	movs r3, #5
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804B84A
	ldr r4, _0804BB80 @ =gUnknown_03000910
	movs r0, #0
	strh r0, [r4]
	movs r0, #0x7a
	bl PlaySE
	movs r6, #0
	ldr r5, _0804BB78 @ =gUnknown_03000918
	mov sb, r6
	movs r2, #3
	mov r8, r2
	adds r7, r4, #0
_0804B89A:
	mov r3, sb
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	ldr r3, _0804BB84 @ =gUnknown_03000912
	bl sub_08026C40
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	movs r1, #0xaf
	subs r1, r1, r4
	movs r2, #0
	ldrsh r0, [r7, r2]
	str r0, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x64
	movs r3, #1
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	mov r1, sb
	strh r1, [r0, #8]
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x36
	ble _0804B89A
	movs r0, #0x78
	bl StopSE
	movs r0, #0x7a
	bl StopSE
	movs r6, #0
	ldr r7, _0804BB78 @ =gUnknown_03000918
	movs r4, #0
	movs r5, #3
_0804B904:
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804B904
	movs r6, #0
	ldr r7, _0804BB78 @ =gUnknown_03000918
	movs r4, #0
	movs r5, #3
_0804B944:
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804B944
	ldr r4, _0804BB80 @ =gUnknown_03000910
	movs r1, #0
	strh r1, [r4]
	ldr r0, _0804BB84 @ =gUnknown_03000912
	strh r1, [r0]
	movs r0, #0x7b
	bl PlaySE
	movs r6, #0
	ldr r5, _0804BB78 @ =gUnknown_03000918
	mov r8, r6
	movs r7, #3
_0804B994:
	mov r0, r8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	ldr r3, _0804BB84 @ =gUnknown_03000912
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	mov r2, r8
	strh r2, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x31
	ble _0804B994
	movs r6, #0
	ldr r7, _0804BB78 @ =gUnknown_03000918
	movs r4, #0
	movs r5, #3
_0804B9EC:
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804B9EC
	ldr r2, _0804BB80 @ =gUnknown_03000910
	movs r1, #0
	strh r1, [r2]
	ldr r0, _0804BB84 @ =gUnknown_03000912
	strh r1, [r0]
	movs r6, #0
	ldr r5, _0804BB78 @ =gUnknown_03000918
	movs r4, #0
	movs r3, #3
	mov r8, r3
	adds r7, r2, #0
_0804BA3A:
	str r4, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	ldr r3, _0804BB84 @ =gUnknown_03000912
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #2
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804BA3A
	movs r6, #0
	ldr r0, _0804BB78 @ =gUnknown_03000918
	mov r8, r0
	movs r4, #0
	movs r5, #3
_0804BA92:
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r7, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r7, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804BA92
	ldr r4, _0804BB80 @ =gUnknown_03000910
	movs r1, #0
	strh r1, [r4]
	ldr r0, _0804BB84 @ =gUnknown_03000912
	strh r1, [r0]
	movs r0, #0x78
	bl PlaySE
	movs r0, #0x7a
	bl PlaySE
	movs r6, #0
	ldr r2, _0804BB78 @ =gUnknown_03000918
	mov r8, r2
	movs r3, #3
	mov sl, r3
	mov sb, r4
_0804BAEC:
	lsls r0, r6, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0xae
	bne _0804BAFA
	movs r0, #6
	bl sub_0800F3A0
_0804BAFA:
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	mov r2, sb
	ldr r3, _0804BB84 @ =gUnknown_03000912
	bl sub_08026C40
	movs r1, #0x78
	subs r4, r1, r5
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r4, #0
	movs r2, #0x64
	movs r3, #1
	bl sub_0802706C
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	rsbs r4, r4, #0
	adds r4, #0x78
	strh r4, [r7, #8]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xbd
	ble _0804BAEC
	movs r0, #1
	bl FadeOutAllMusicPlayers
	movs r0, #0x78
	bl StopSE
	movs r0, #0x7a
	bl StopSE
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB78: .4byte gUnknown_03000918
_0804BB7C: .4byte gBgRegsBuffer
_0804BB80: .4byte gUnknown_03000910
_0804BB84: .4byte gUnknown_03000912
