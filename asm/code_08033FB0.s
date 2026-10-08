	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08033FB0
sub_08033FB0: @ 0x08033FB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf8
	adds r7, r0, #0
	ldr r0, _08033FF0 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r5, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r2, sp
	adds r2, #0x80
	str r2, [sp, #0xf4]
	mov r3, sp
	adds r3, #0x7e
	str r3, [sp, #0xf0]
	mov r6, sp
	adds r6, #0x7c
	str r6, [sp, #0xec]
	cmp r5, r0
	bhs _08034006
	adds r2, r0, #0
_08033FE2:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _08033FF4
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _08033FFE
	.align 2, 0
_08033FF0: .4byte 0x030063D8
_08033FF4:
	cmp r0, #3
	bne _08033FFE
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x90]
_08033FFE:
	adds r5, #1
	adds r1, #8
	cmp r5, r2
	blo _08033FE2
_08034006:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x8c]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	strh r0, [r7, #2]
	ldrh r0, [r4]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _0803417C @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x8c]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0xd8]
	strh r2, [r6]
	movs r0, #0x4a
	adds r0, r0, r7
	mov sb, r0
	strh r2, [r0]
	movs r1, #0x4c
	adds r1, r1, r7
	mov r8, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r2, #0x72
	adds r2, r2, r7
	mov sl, r2
	ldrh r4, [r2]
	ldr r6, _08034180 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r3, sl
	strh r4, [r3]
	adds r4, r7, #0
	adds r4, #0x6e
	str r4, [sp, #0xdc]
	ldrh r4, [r4]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	ldr r6, [sp, #0xdc]
	strh r4, [r6]
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #0x28]
	ldrh r1, [r2, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
	ldr r3, [sp, #0x8c]
	ldr r1, [r3, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x98]
	adds r0, #0x15
	ldr r4, [sp, #0x8c]
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x98]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x98]
	adds r0, #6
	strb r0, [r1, #0x1d]
	bl sub_08033DF4
	bl sub_08035678
	bl sub_08035740
	bl sub_080312E0
	bl sub_08007544
	ldr r6, [sp, #0xd8]
	str r6, [sp, #0xe0]
	mov r1, sb
	str r1, [sp, #0xe4]
	mov r2, r8
	str r2, [sp, #0xe8]
	cmp r0, #0
	bne _08034170
	bl sub_080075AC
	cmp r0, #0
	bne _08034170
	ldr r5, _08034184 @ =gPlayers
	movs r4, #0xd4
_0803413C:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _0803413C
	bl GetMultiplayerId
	ldr r5, _08034184 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	strh r1, [r0, #0xa]
_08034170:
	ldr r0, [sp, #0xf4]
	movs r1, #0x1f
	bl sub_0802934C
	b _0803418C
	.align 2, 0
_0803417C: .4byte gMapLayer_03003910
_08034180: .4byte 0x080FB740
_08034184: .4byte gPlayers
_08034188:
	bl WaitFrame
_0803418C:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _08034188
	ldr r3, _080341D4 @ =0x0000FFFF
	str r3, [sp, #0xa0]
	movs r4, #1
	str r4, [sp, #0xac]
	movs r6, #0
	mov sb, r6
	mov sl, r6
	movs r0, #0
	str r0, [sp, #0xc4]
	mov r2, sb
	ldr r1, [sp, #0xf0]
	strh r2, [r1]
	ldr r3, [sp, #0xec]
	strh r2, [r3]
	movs r4, #0
	str r4, [sp, #0xc0]
	str r6, [sp, #0xcc]
	str r0, [sp, #0xd0]

	non_word_aligned_thumb_func_start sub_080341B6
sub_080341B6: @ 0x080341B6
	bl sub_080271D0
	cmp r0, #0
	beq _080341C0
	b _0803497A
_080341C0:
	mov r1, sb
	cmp r1, #0x1a
	bls _080341C8
	b _0803497A
_080341C8:
	lsls r0, r1, #2
	ldr r1, _080341D8 @ =_080341DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080341D4: .4byte 0x0000FFFF
_080341D8: .4byte _080341DC
_080341DC: @ jump table
	.4byte _08034248 @ case 0
	.4byte _08034258 @ case 1
	.4byte _08034288 @ case 2
	.4byte _080342C0 @ case 3
	.4byte _080342E8 @ case 4
	.4byte _080342EE @ case 5
	.4byte _080342F4 @ case 6
	.4byte _080342FA @ case 7
	.4byte _08034300 @ case 8
	.4byte _08034314 @ case 9
	.4byte _08034360 @ case 10
	.4byte _08034384 @ case 11
	.4byte _080343A6 @ case 12
	.4byte _080343C0 @ case 13
	.4byte _08034448 @ case 14
	.4byte _08034498 @ case 15
	.4byte _08034534 @ case 16
	.4byte _08034584 @ case 17
	.4byte _080345D4 @ case 18
	.4byte _08034624 @ case 19
	.4byte _080346A6 @ case 20
	.4byte _080347F0 @ case 21
	.4byte _080346BE @ case 22
	.4byte _0803472C @ case 23
	.4byte _080347B0 @ case 24
	.4byte _080347E0 @ case 25
	.4byte _080347FA @ case 26
_08034248:
	movs r2, #1
	mov sb, r2
	movs r0, #0
	str r0, [sp, #0x84]
	str r0, [sp, #0x88]
	movs r3, #0
	str r3, [sp, #0xd4]
	b _0803497A
_08034258:
	add r0, sp, #0x84
	movs r2, #0x5a
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0xd4]
	bl Lerp1024
	add r0, sp, #0x88
	movs r1, #0
	movs r2, #0x64
	ldr r3, [sp, #0xd4]
	bl Lerp1024
	ldr r4, [sp, #0xd4]
	adds r4, #8
	str r4, [sp, #0xd4]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bgt _08034282
	b _0803497A
_08034282:
	movs r6, #2
	mov sb, r6
	b _0803497A
_08034288:
	bl sub_08007510
	cmp r0, #0
	bne _080342B6
	bl sub_08007544
	cmp r0, #0
	bne _080342B6
	bl sub_080075AC
	cmp r0, #0
	bne _080342B6
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080342BC @ =0x00090073
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x94]
_080342B6:
	movs r0, #3
	mov sb, r0
	b _0803497A
	.align 2, 0
_080342BC: .4byte 0x00090073
_080342C0:
	bl sub_08007544
	cmp r0, #0
	bne _080342E2
	bl sub_080075AC
	cmp r0, #0
	bne _080342E2
	ldr r0, [sp, #0x94]
	bl sub_0802294C
	cmp r0, #0
	bne _080342DC
	b _0803497A
_080342DC:
	movs r1, #7
	mov sb, r1
	b _0803497A
_080342E2:
	movs r2, #7
	mov sb, r2
	b _0803497A
_080342E8:
	movs r3, #6
	mov sb, r3
	b _0803497A
_080342EE:
	movs r4, #6
	mov sb, r4
	b _0803497A
_080342F4:
	movs r6, #7
	mov sb, r6
	b _0803497A
_080342FA:
	movs r0, #8
	mov sb, r0
	b _0803497A
_08034300:
	movs r1, #9
	mov sb, r1
	movs r0, #0x5a
	rsbs r0, r0, #0
	str r0, [sp, #0x84]
	movs r0, #0x64
	str r0, [sp, #0x88]
	movs r2, #0
	str r2, [sp, #0xd4]
	b _0803497A
_08034314:
	add r0, sp, #0x84
	movs r1, #0x5a
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0xd4]
	bl Lerp1024
	add r0, sp, #0x88
	movs r1, #0x64
	movs r2, #0
	ldr r3, [sp, #0xd4]
	bl Lerp1024
	ldr r3, [sp, #0xd4]
	adds r3, #8
	str r3, [sp, #0xd4]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bgt _0803433E
	b _0803497A
_0803433E:
	bl GetMultiplayerId
	ldr r2, _08034358 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803435C @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r4, #0xa
	mov sb, r4
	b _0803497A
	.align 2, 0
_08034358: .4byte gPlayers
_0803435C: .4byte 0x0000FFFE
_08034360:
	movs r6, #0x3c
	mov sl, r6
	movs r0, #0xb
	mov sb, r0
	bl sub_08007544
	cmp r0, #0
	beq _08034372
	b _0803497A
_08034372:
	bl sub_080075AC
	cmp r0, #0
	beq _0803437C
	b _0803497A
_0803437C:
	movs r0, #0x89
	bl PlaySE
	b _0803497A
_08034384:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #1
	bls _08034394
	b _0803497A
_08034394:
	movs r1, #0xc
	mov sb, r1
	ldr r0, [sp, #0xf4]
	movs r1, #0x20
	bl sub_0802934C
	movs r2, #1
	mov sl, r2
	b _0803497A
_080343A6:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _080343AE
	b _0803497A
_080343AE:
	movs r3, #0xd
	mov sb, r3
	movs r0, #0x1c
	str r0, [r7, #0x5c]
	movs r4, #1
	mov sl, r4
	movs r6, #0
	str r6, [sp, #0xbc]
	b _0803497A
_080343C0:
	ldr r1, _080343F8 @ =0x080FBC20
	ldr r2, [sp, #0xcc]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	ldr r2, _080343FC @ =0x080FBC2E
	ldr r3, [sp, #0xd0]
	lsls r1, r3, #1
	ldr r4, [sp, #0xcc]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1]
	str r1, [sp, #0xc8]
	mov r6, sb
	cmp r6, #0x12
	bne _08034400
	lsls r0, r1, #2
	ldr r1, [sp, #0x90]
	adds r0, r0, r1
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #0x22]
	b _08034410
	.align 2, 0
_080343F8: .4byte 0x080FBC20
_080343FC: .4byte 0x080FBC2E
_08034400:
	ldr r2, [sp, #0xc8]
	lsls r0, r2, #2
	ldr r3, [sp, #0x90]
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #2]
_08034410:
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	movs r4, #0
	mov sl, r4
	movs r0, #0x88
	bl StopSE
	ldr r0, [sp, #0xcc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xcc]
	cmp r0, #6
	bhi _0803442E
	b _0803497A
_0803442E:
	movs r6, #0
	str r6, [sp, #0xcc]
	ldr r0, [sp, #0xd0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	cmp r0, #0xa
	bhi _08034442
	b _0803497A
_08034442:
	movs r0, #0
	str r0, [sp, #0xd0]
	b _0803497A
_08034448:
	ldr r1, [sp, #0xc8]
	lsls r2, r1, #2
	ldr r3, [sp, #0x90]
	adds r1, r2, r3
	ldrh r0, [r1]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	movs r4, #0xf
	mov sb, r4
	ldr r0, _08034494 @ =0x080FBCBC
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	ldr r6, [sp, #0xe0]
	strh r0, [r6]
	ldr r0, [sp, #0xe4]
	strh r1, [r0]
	ldr r2, [sp, #0xe8]
	strh r1, [r2]
	movs r3, #0
	str r3, [sp, #0xac]
	movs r4, #0
	str r4, [sp, #0xb0]
	movs r6, #0xc
	str r6, [sp, #0xc0]
	ldr r0, [sp, #0xec]
	strh r4, [r0]
	add r1, sp, #0xb0
	ldrh r2, [r1]
	ldr r1, [sp, #0xf0]
	strh r2, [r1]
	movs r2, #0
	str r2, [sp, #0xc4]
	b _0803497A
	.align 2, 0
_08034494: .4byte 0x080FBCBC
_08034498:
	ldr r3, [sp, #0xc8]
	lsls r0, r3, #2
	ldr r4, [sp, #0x90]
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r6, [sp, #0xc4]
	cmp r6, #0
	bne _080344B4
	b _0803497A
_080344B4:
	ldr r0, [sp, #0xc0]
	cmp r0, #0xc
	bne _080344C2
	movs r1, #0xd
	str r1, [sp, #0xc0]
	movs r2, #0
	str r2, [sp, #0xc4]
_080344C2:
	ldr r3, [sp, #0xc4]
	cmp r3, #0
	bne _080344CA
	b _0803497A
_080344CA:
	ldr r4, [sp, #0xb0]
	cmp r4, #0
	bne _080344D2
	b _0803497A
_080344D2:
	movs r6, #0x10
	mov sb, r6
	movs r5, #0
	ldr r0, [sp, #0xc8]
	lsls r1, r0, #1
	ldr r0, _08034530 @ =0x080FBCDC
	adds r6, r1, r0
_080344E0:
	ldrh r0, [r6]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #7
	movs r1, #7
	bl __udivsi3
	adds r0, r4, r0
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r4, r1, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08035610
	adds r5, #1
	cmp r5, #7
	bls _080344E0
	movs r1, #0
	str r1, [sp, #0xbc]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	bl sub_08007544
	cmp r0, #0
	beq _0803451E
	b _0803497A
_0803451E:
	bl sub_080075AC
	cmp r0, #0
	beq _08034528
	b _0803497A
_08034528:
	movs r0, #0x85
	bl PlaySE
	b _0803497A
	.align 2, 0
_08034530: .4byte 0x080FBCDC
_08034534:
	ldr r0, [sp, #0xbc]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xbc]
	cmp r0, #0x3b
	bhi _08034542
	b _0803497A
_08034542:
	movs r5, #0
	ldr r3, [sp, #0xc8]
	lsls r1, r3, #1
	ldr r0, _08034580 @ =0x080FBCDC
	adds r6, r1, r0
_0803454C:
	ldrh r0, [r6]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #7
	movs r1, #7
	bl __udivsi3
	adds r0, r4, r0
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r4, r1, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08035610
	adds r5, #1
	cmp r5, #7
	bls _0803454C
	movs r4, #0x11
	mov sb, r4
	movs r6, #0
	str r6, [sp, #0xbc]
	b _080347D8
	.align 2, 0
_08034580: .4byte 0x080FBCDC
_08034584:
	ldr r0, [sp, #0xbc]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xbc]
	cmp r0, #0x3b
	bhi _08034592
	b _0803497A
_08034592:
	movs r5, #0
	ldr r2, [sp, #0xc8]
	lsls r1, r2, #1
	ldr r0, _080345D0 @ =0x080FBCDC
	adds r6, r1, r0
_0803459C:
	ldrh r0, [r6]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #7
	movs r1, #7
	bl __udivsi3
	adds r0, r4, r0
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r4, r1, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08035610
	adds r5, #1
	cmp r5, #7
	bls _0803459C
	movs r3, #0x78
	mov sl, r3
	movs r4, #0xb
	mov sb, r4
	b _080347D8
	.align 2, 0
_080345D0: .4byte 0x080FBCDC
_080345D4:
	ldr r6, [sp, #0xc8]
	lsls r1, r6, #2
	ldr r0, [sp, #0x90]
	adds r2, r1, r0
	ldrh r0, [r2, #0x20]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r2, #0x22]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _08034620 @ =0x080FBCEC
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	ldr r2, [sp, #0xe0]
	strh r0, [r2]
	ldr r3, [sp, #0xe4]
	strh r1, [r3]
	ldr r4, [sp, #0xe8]
	strh r1, [r4]
	movs r6, #0
	str r6, [sp, #0xac]
	movs r0, #0
	str r0, [sp, #0xb0]
	movs r1, #0xe
	str r1, [sp, #0xc0]
	ldr r2, [sp, #0xec]
	strh r0, [r2]
	add r3, sp, #0xb0
	ldrh r4, [r3]
	ldr r3, [sp, #0xf0]
	strh r4, [r3]
	movs r4, #0
	str r4, [sp, #0xc4]
	movs r6, #0x13
	mov sb, r6
	b _0803497A
	.align 2, 0
_08034620: .4byte 0x080FBCEC
_08034624:
	ldr r0, [sp, #0xc8]
	lsls r2, r0, #2
	ldr r1, [sp, #0x90]
	adds r0, r2, r1
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r3, [sp, #0xc4]
	cmp r3, #0
	bne _08034640
	b _0803497A
_08034640:
	ldr r4, [sp, #0xc0]
	cmp r4, #0xe
	bne _0803464E
	movs r6, #0xf
	str r6, [sp, #0xc0]
	movs r0, #0
	str r0, [sp, #0xc4]
_0803464E:
	ldr r1, [sp, #0xc4]
	cmp r1, #0
	bne _08034656
	b _0803497A
_08034656:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	bne _0803465E
	b _0803497A
_0803465E:
	ldr r4, [sp, #0xc8]
	cmp r4, #4
	bhi _08034696
	ldr r0, _0803466C @ =0x08034670
	adds r0, r2, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803466C: .4byte 0x08034670
_08034670:
	.byte 0x84, 0x46, 0x03, 0x08, 0x8E, 0x46, 0x03, 0x08, 0x84, 0x46, 0x03, 0x08, 0x8E, 0x46, 0x03, 0x08
	.byte 0x84, 0x46, 0x03, 0x08, 0x38, 0x1C, 0x00, 0x21, 0x01, 0xF0, 0x32, 0xF8, 0x03, 0xE0, 0x38, 0x1C
	.byte 0x01, 0x21, 0x01, 0xF0, 0x2D, 0xF8
_08034696:
	movs r6, #0x14
	mov sb, r6
	movs r0, #0
	str r0, [sp, #0xbc]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	b _08034794
_080346A6:
	ldr r0, [sp, #0xbc]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xbc]
	cmp r0, #0x78
	bhi _080346B4
	b _0803497A
_080346B4:
	movs r2, #0x15
	mov sb, r2
	movs r3, #0
	str r3, [sp, #0xbc]
	b _0803497A
_080346BE:
	ldr r0, [sp, #0xc8]
	lsls r2, r0, #2
	ldr r1, [sp, #0x90]
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r3, [sp, #0xc8]
	cmp r3, #7
	bls _080346F0
	ldr r0, _080346EC @ =0x080FBCEC
	adds r1, r3, #0
	subs r1, #8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r4, [sp, #0xe0]
	strh r0, [r4]
	b _080346FA
	.align 2, 0
_080346EC: .4byte 0x080FBCEC
_080346F0:
	ldr r0, _08034728 @ =0x080FBCBC
	adds r0, r2, r0
	ldr r0, [r0]
	ldr r6, [sp, #0xe0]
	strh r0, [r6]
_080346FA:
	movs r0, #0
	ldr r1, [sp, #0xe4]
	strh r0, [r1]
	ldr r2, [sp, #0xe8]
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0xac]
	movs r4, #0
	str r4, [sp, #0xb0]
	movs r6, #0xe
	str r6, [sp, #0xc0]
	ldr r0, [sp, #0xec]
	strh r4, [r0]
	add r1, sp, #0xb0
	ldrh r2, [r1]
	ldr r1, [sp, #0xf0]
	strh r2, [r1]
	movs r2, #0
	str r2, [sp, #0xc4]
	movs r3, #0x17
	mov sb, r3
	b _0803497A
	.align 2, 0
_08034728: .4byte 0x080FBCBC
_0803472C:
	ldr r4, [sp, #0xc8]
	lsls r0, r4, #2
	ldr r6, [sp, #0x90]
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #0xf
	str r1, [r7, #0x10]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, [sp, #0xc4]
	cmp r0, #0
	bne _08034748
	b _0803497A
_08034748:
	ldr r1, [sp, #0xc0]
	cmp r1, #0xe
	bne _08034756
	movs r2, #0xf
	str r2, [sp, #0xc0]
	movs r3, #0
	str r3, [sp, #0xc4]
_08034756:
	ldr r4, [sp, #0xc4]
	cmp r4, #0
	bne _0803475E
	b _0803497A
_0803475E:
	ldr r6, [sp, #0xb0]
	cmp r6, #0
	bne _08034766
	b _0803497A
_08034766:
	movs r5, #0
_08034768:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08031250
	adds r5, #1
	cmp r5, #3
	bls _08034768
	movs r0, #0
	str r0, [sp, #0xbc]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	bl sub_080076A8
	movs r1, #0xb4
	str r1, [sp, #0x9c]
	cmp r0, #0
	beq _08034790
	movs r2, #0x78
	str r2, [sp, #0x9c]
_08034790:
	movs r3, #0x18
	mov sb, r3
_08034794:
	bl sub_08007544
	cmp r0, #0
	beq _0803479E
	b _0803497A
_0803479E:
	bl sub_080075AC
	cmp r0, #0
	beq _080347A8
	b _0803497A
_080347A8:
	movs r0, #0x8a
	bl PlaySE
	b _0803497A
_080347B0:
	ldr r0, [sp, #0xbc]
	adds r4, r0, #0
	adds r4, #1
	str r4, [sp, #0xbc]
	ldr r6, [sp, #0x9c]
	cmp r0, r6
	bhi _080347C0
	b _0803497A
_080347C0:
	movs r5, #0
_080347C2:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08031250
	adds r5, #1
	cmp r5, #3
	bls _080347C2
	movs r0, #0x19
	mov sb, r0
	movs r1, #0
	str r1, [sp, #0xbc]
_080347D8:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	b _0803497A
_080347E0:
	ldr r0, [sp, #0xbc]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xbc]
	ldr r3, [sp, #0x9c]
	cmp r0, r3
	bhi _080347F0
	b _0803497A
_080347F0:
	movs r4, #0x3c
	mov sl, r4
	movs r6, #0xb
	mov sb, r6
	b _0803497A
_080347FA:
	ldr r1, _0803491C @ =0x0000012B
	ldr r0, [sp, #0xbc]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xbc]
	cmp r0, r1
	bls _0803480A
	b _08034920
_0803480A:
	bl sub_08007544
	cmp r0, #0
	bne _08034834
	bl sub_080075AC
	cmp r0, #0
	bne _08034834
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
_08034834:
	movs r0, #7
	ldr r3, [sp, #0xbc]
	ands r0, r3
	cmp r0, #0
	beq _08034840
	b _0803497A
_08034840:
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08034854
	adds r0, r2, #7
_08034854:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08034874
	adds r1, r0, #7
_08034874:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803489C
	adds r0, r2, #7
_0803489C:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _080348BC
	adds r1, r0, #7
_080348BC:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080348E4
	adds r0, r2, #7
_080348E4:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08034904
	adds r1, r0, #7
_08034904:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	b _0803497A
	.align 2, 0
_0803491C: .4byte 0x0000012B
_08034920:
	ldr r0, [sp, #0x94]
	bl sub_0802294C
	cmp r0, #0
	beq _0803497A
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #2
	bl FadeOutBGM
	bl sub_080077AC
	bl sub_08016FA0
	cmp r0, #0
	bne _0803497A
	bl sub_08007544
	cmp r0, #0
	bne _0803497A
	bl sub_08007510
	cmp r0, #0
	bne _0803497A
	bl sub_080075AC
	cmp r0, #0
	bne _0803497A
	bl sub_080076E0
	cmp r0, #0
	bne _0803497A
	bl GetMultiplayerId
	ldr r2, _08034A1C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08034A20 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_0803497A:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _08034A2E
	movs r4, #0x14
	str r4, [sp, #0xa0]
	ldrh r6, [r7, #0x28]
	str r6, [sp, #0xb4]
	movs r0, #0
	str r0, [sp, #0xb8]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08034A28
	bl sub_08016FA0
	cmp r0, #0
	bne _080349F2
	bl sub_080271D0
	cmp r0, #0
	bne _080349F2
	bl sub_08007544
	cmp r0, #0
	bne _080349F2
	bl sub_08007510
	cmp r0, #0
	bne _080349F2
	bl sub_080075AC
	cmp r0, #0
	bne _080349F2
	bl sub_080076E0
	cmp r0, #0
	bne _080349F2
	bl GetMultiplayerId
	ldr r2, _08034A1C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08034A24 @ =0x00090076
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x94]
_080349F2:
	bl sub_08007798
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	movs r1, #0x1a
	mov sb, r1
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r2, #0
	str r2, [sp, #0xbc]
	mov sl, r2
	b _08034A2E
	.align 2, 0
_08034A1C: .4byte gPlayers
_08034A20: .4byte 0x0000FFFE
_08034A24: .4byte 0x00090076
_08034A28:
	add r3, sp, #0xb8
	ldrh r3, [r3]
	strh r3, [r7, #0xa]
_08034A2E:
	ldr r0, [sp, #0xa0]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xa0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08034AA0
	ldr r4, [sp, #0xb4]
	cmp r4, #0
	bne _08034A54
	ldr r6, _08034A50 @ =0x0000FFFF
	str r6, [sp, #0xa0]
	b _08034AA4
	.align 2, 0
_08034A50: .4byte 0x0000FFFF
_08034A54:
	bl sub_08007544
	cmp r0, #0
	bne _08034A82
	bl sub_08007510
	cmp r0, #0
	bne _08034A82
	bl sub_08007604
	cmp r0, #0
	bne _08034A82
	bl sub_080075AC
	cmp r0, #0
	bne _08034A82
	ldr r0, [sp, #0xb8]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xb4]
	bl sub_0800EA74
_08034A82:
	movs r0, #2
	ldr r1, [sp, #0xa0]
	ands r0, r1
	cmp r0, #0
	beq _08034AA4
	ldr r2, [sp, #0xb8]
	lsls r0, r2, #0x10
	ldr r3, _08034A9C @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
	b _08034AA4
	.align 2, 0
_08034A9C: .4byte 0xFFFF0000
_08034AA0:
	ldr r4, _08034BC0 @ =0x0000FFFF
	str r4, [sp, #0xa0]
_08034AA4:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _08034AAC
	b _08034C6A
_08034AAC:
	ldr r0, [sp, #0x98]
	adds r0, #0x15
	ldr r6, [sp, #0x8c]
	ldrh r2, [r6, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x98]
	adds r0, #5
	movs r6, #0
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x98]
	adds r0, #6
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x84]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08005F60
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x30
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0xe0]
	ldrh r1, [r0]
	ldr r2, [sp, #0xac]
	str r2, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0xe4]
	ldr r3, [sp, #0xe8]
	bl sub_08026C40
	str r0, [sp, #0xb0]
	adds r6, r4, #0
	mov r3, sb
	cmp r3, #0xf
	beq _08034B38
	cmp r3, #0x13
	beq _08034B38
	cmp r3, #0x17
	bne _08034B4E
_08034B38:
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	ldr r1, [sp, #0xc0]
	ldr r2, [sp, #0xec]
	ldr r3, [sp, #0xf0]
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc4]
_08034B4E:
	movs r0, #1
	mov r4, sl
	ands r0, r4
	cmp r0, #0
	beq _08034B5A
	b _08034C6A
_08034B5A:
	bl sub_08007510
	cmp r0, #0
	bne _08034B9E
	bl sub_08007604
	cmp r0, #0
	bne _08034B9E
	bl sub_08007544
	cmp r0, #0
	bne _08034B9E
	bl sub_080075AC
	cmp r0, #0
	bne _08034B9E
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xe0]
	ldrh r2, [r3]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4]
	mov r4, r8
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08034B9E:
	mov r0, sb
	cmp r0, #0xf
	beq _08034BAC
	cmp r0, #0x13
	beq _08034BAC
	cmp r0, #0x17
	bne _08034C6A
_08034BAC:
	ldr r1, [sp, #0xe0]
	ldrh r0, [r1]
	cmp r0, #0xa
	beq _08034C0C
	cmp r0, #0xa
	bgt _08034BC4
	cmp r0, #9
	beq _08034BCE
	b _08034C18
	.align 2, 0
_08034BC0: .4byte 0x0000FFFF
_08034BC4:
	cmp r0, #0xb
	beq _08034BE0
	cmp r0, #0x15
	beq _08034BF8
	b _08034C18
_08034BCE:
	ldr r2, _08034BDC @ =0x0000FFF8
	str r2, [sp, #0xa4]
	movs r3, #0
	mov r8, r3
	movs r4, #0
	str r4, [sp, #0xa8]
	b _08034C18
	.align 2, 0
_08034BDC: .4byte 0x0000FFF8
_08034BE0:
	ldr r0, _08034BF0 @ =0x0000FFF0
	str r0, [sp, #0xa4]
	movs r1, #0
	mov r8, r1
	ldr r2, _08034BF4 @ =0x0000FFF8
	str r2, [sp, #0xa8]
	b _08034C18
	.align 2, 0
_08034BF0: .4byte 0x0000FFF0
_08034BF4: .4byte 0x0000FFF8
_08034BF8:
	ldr r3, _08034C08 @ =0x0000FFF0
	str r3, [sp, #0xa4]
	movs r4, #0
	mov r8, r4
	movs r0, #8
	str r0, [sp, #0xa8]
	b _08034C18
	.align 2, 0
_08034C08: .4byte 0x0000FFF0
_08034C0C:
	ldr r1, _08034EFC @ =0x0000FFEC
	str r1, [sp, #0xa4]
	movs r2, #3
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0xa8]
_08034C18:
	bl sub_08007510
	cmp r0, #0
	bne _08034C6A
	bl sub_08007604
	cmp r0, #0
	bne _08034C6A
	bl sub_08007544
	cmp r0, #0
	bne _08034C6A
	bl sub_080075AC
	cmp r0, #0
	bne _08034C6A
	movs r4, #0
	ldrsh r0, [r6, r4]
	ldr r6, [sp, #0xa8]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xa4]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	ldr r4, [sp, #0xec]
	ldrh r3, [r4]
	mov r6, r8
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xc0]
	bl sub_08004344
_08034C6A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08034CA0
	bl sub_080074CC
	cmp r0, #0
	bne _08034CA0
	ldr r0, _08034F00 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08034CA0
	bl sub_08007578
	cmp r0, #0
	bne _08034CA0
	mov r0, sb
	cmp r0, #0x1b
	beq _08034CA0
	bl sub_080341B6
_08034CA0:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	bl sub_080356A4
	bl sub_0803575C
	bl sub_08031304
	ldr r1, _08034F04 @ =gActiveEnemyMask
	ldrh r2, [r7]
	lsls r4, r2
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	ldr r0, [sp, #0x98]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _08034D2E
	ldr r4, _08034F08 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08034D2E
	ldr r0, _08034F0C @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _08034D2E
	bl sub_08007544
	cmp r0, #0
	bne _08034D2E
	bl sub_08007510
	cmp r0, #0
	bne _08034D2E
	bl sub_08007604
	cmp r0, #0
	bne _08034D2E
	bl sub_080075AC
	cmp r0, #0
	bne _08034D2E
	bl sub_080076E0
	cmp r0, #0
	bne _08034D2E
	ldr r0, _08034F10 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_08034D2E:
	bl sub_08007750
	cmp r0, #0
	beq _08034D38
	b _08034E44
_08034D38:
	bl sub_080074CC
	cmp r0, #0
	beq _08034D42
	b _08034E44
_08034D42:
	ldr r4, _08034F00 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08034E44
	bl sub_08007578
	cmp r0, #0
	bne _08034E44
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _08034E44
	ldr r4, _08034F14 @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _08034D96
	movs r3, #0xab
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034D96
	ldr r6, _08034F18 @ =0x00000157
	adds r1, r1, r6
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08034D96
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08034D96:
	ldr r4, _08034F08 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x8c]
	bl CalcExpGain
	str r0, [sp, #0xac]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xac]
	bl AddExp
	str r0, [sp, #0xb0]
	movs r4, #0x13
	ldr r5, _08034F1C @ =0x0000FFFF
_08034DC4:
	ldr r0, [r7, #0x14]
	ldr r1, _08034F20 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _08034DF8
	bl sub_08007510
	cmp r0, #0
	bne _08034DF8
	bl sub_080075AC
	cmp r0, #0
	bne _08034DF8
	ldr r0, _08034F10 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08034DF8
	adds r0, r7, #0
	ldr r1, [sp, #0xac]
	bl sub_08024320
_08034DF8:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bne _08034DC4
	ldr r2, [sp, #0xb0]
	cmp r2, #0
	beq _08034E44
	bl sub_08007544
	cmp r0, #0
	bne _08034E22
	bl sub_080075AC
	cmp r0, #0
	bne _08034E22
	movs r0, #0x25
	bl PlaySE
_08034E22:
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _08034F08 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_08034E44:
	bl sub_08007750
	cmp r0, #0
	bne _08034EE2
	bl sub_080074CC
	cmp r0, #0
	bne _08034EE2
	ldr r4, _08034F00 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08034EE2
	bl sub_08007578
	cmp r0, #0
	bne _08034EE2
	ldr r0, _08034F24 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08034F28 @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08034ECC
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08034ECC
	ldr r2, _08034F2C @ =gPlayerStats
	ldr r4, _08034F30 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08034F34 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08034ECC:
	bl sub_0800F53C
	ldr r4, _08034F38 @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08034EE2
	ldr r0, [r4]
	bl KillThread
_08034EE2:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xf8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034EFC: .4byte 0x0000FFEC
_08034F00: .4byte 0x030063D8
_08034F04: .4byte gActiveEnemyMask
_08034F08: .4byte gPlayers
_08034F0C: .4byte gUnknown_030064D8
_08034F10: .4byte gMapLayer_03003910
_08034F14: .4byte 0x03003D94
_08034F18: .4byte 0x00000157
_08034F1C: .4byte 0x0000FFFF
_08034F20: .4byte 0xFFFFFE00
_08034F24: .4byte 0x00000BB8
_08034F28: .4byte gUnknown_03003D08
_08034F2C: .4byte gPlayerStats
_08034F30: .4byte 0x00000272
_08034F34: .4byte 0x00000275
_08034F38: .4byte gUnknownThreadPtr_030063E4

	thumb_func_start sub_08034F3C
sub_08034F3C: @ 0x08034F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	mov sl, r0
	str r1, [sp, #0x4c]
	ldr r1, _08035024 @ =0x00100004
	movs r6, #1
	rsbs r6, r6, #0
	add r0, sp, #0x10
	movs r2, #0
	adds r3, r6, #0
	bl sub_08026ADC
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	mov r0, sl
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x50]
	mov r1, sl
	ldr r1, [r1, #0x14]
	str r1, [sp, #0x54]
	ldr r0, [sp, #0x4c]
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	lsrs r0, r0, #5
	mov sb, r0
	movs r0, #0x1f
	ldr r1, [sp, #0x4c]
	ands r0, r1
	cmp r0, #0x10
	bls _08034F96
	movs r0, #1
	add sb, r0
_08034F96:
	mov r0, sb
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #8
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08034FB6
	mov r0, sb
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_08034FB6:
	mov r0, sb
	adds r0, #0x65
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r5, sp, #0x48
	strh r2, [r5]
	mov r4, sp
	adds r4, #0x4a
	strh r2, [r4]
	bl sub_080076A8
	movs r2, #0x3c
	str r2, [sp, #0x58]
	cmp r0, #0
	beq _08034FDA
	movs r0, #0x5a
	str r0, [sp, #0x58]
_08034FDA:
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	ldr r2, _08035028 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	str r1, [sp, #0x58]
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _08034FEE
	b _0803520E
_08034FEE:
	bl sub_080076A8
	cmp r0, #0
	beq _08035030
	ldr r0, [sp, #0x4c]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _0803502C @ =0x0805289C
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #6
	ldr r2, [sp, #0x50]
	adds r2, r2, r0
	str r2, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #1
	ldr r2, _0803502C @ =0x0805289C
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #6
	ldr r2, [sp, #0x54]
	adds r2, r2, r0
	str r2, [sp, #0x54]
	b _0803505A
	.align 2, 0
_08035024: .4byte 0x00100004
_08035028: .4byte 0xFFFF0000
_0803502C: .4byte 0x0805289C
_08035030:
	ldr r0, [sp, #0x4c]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _080352AC @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	ldr r1, [sp, #0x50]
	adds r1, r1, r0
	str r1, [sp, #0x50]
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #1
	ldr r1, _080352AC @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	ldr r1, [sp, #0x54]
	adds r1, r1, r0
	str r1, [sp, #0x54]
_0803505A:
	ldr r2, [sp, #0x50]
	asrs r5, r2, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x44
	mov r7, sp
	adds r7, #0x46
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
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	mov r1, sb
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08026C40
	bl sub_080271D0
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	cmp r0, #0
	bne _080350E8
	bl sub_08007544
	cmp r0, #0
	bne _080350E8
	bl sub_08007510
	cmp r0, #0
	bne _080350E8
	bl sub_080075AC
	cmp r0, #0
	bne _080350E8
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	add r2, sp, #0x48
	ldrh r3, [r2]
	mov r2, r8
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sb
	bl sub_08004344
_080350E8:
	bl GetMultiplayerId
	ldr r6, _080352B0 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	ldr r0, [sp, #0x5c]
	subs r4, r0, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	ldr r2, [sp, #0x60]
	subs r1, r2, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _080351CA
	cmp r4, #7
	bhi _080351CA
	bl GetMultiplayerId
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r7, r6, #0
	adds r7, #0x80
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	beq _080351CA
	ldrh r0, [r2, #0xa]
	cmp r0, #8
	beq _080351CA
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080351CA
	bl sub_08007544
	cmp r0, #0
	bne _080351CA
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _080352B4 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	mov r0, sl
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_080351CA:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08035290
	bl sub_080074CC
	cmp r0, #0
	bne _08035290
	ldr r0, _080352B8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035290
	bl sub_08007578
	cmp r0, #0
	bne _08035290
	ldr r1, [sp, #0x58]
	lsls r0, r1, #0x10
	ldr r2, _080352BC @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	str r1, [sp, #0x58]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0803520E
	b _08034FEE
_0803520E:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0803521C
	rsbs r1, r1, #0
_0803521C:
	movs r0, #7
	ands r1, r0
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080352C0 @ =0x0000FFFF
	ldr r2, [sp, #0x50]
	asrs r2, r2, #0xc
	str r2, [sp, #0x5c]
	ldr r1, [sp, #0x54]
	asrs r1, r1, #0xc
	str r1, [sp, #0x60]
	cmp r4, r0
	beq _08035270
	adds r5, r0, #0
_0803523A:
	bl sub_08007750
	cmp r0, #0
	bne _08035270
	bl sub_080074CC
	cmp r0, #0
	bne _08035270
	ldr r0, _080352B8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035270
	bl sub_08007578
	cmp r0, #0
	bne _08035270
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bne _0803523A
_08035270:
	bl sub_08007544
	cmp r0, #0
	bne _08035286
	bl sub_080075AC
	cmp r0, #0
	bne _08035286
	movs r0, #0x6a
	bl PlaySE
_08035286:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	movs r2, #7
	bl sub_08033E6C
_08035290:
	bl GetCurrentThread
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080352AC: .4byte 0x0805289C
_080352B0: .4byte gPlayers
_080352B4: .4byte 0x0000FFFE
_080352B8: .4byte 0x030063D8
_080352BC: .4byte 0xFFFF0000
_080352C0: .4byte 0x0000FFFF

	thumb_func_start sub_080352C4
sub_080352C4: @ 0x080352C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	mov r0, sb
	ldr r6, [r0, #0x10]
	ldr r1, [r0, #0x14]
	mov sl, r1
	mov r2, r8
	cmp r2, #0
	beq _08035310
	movs r3, #0x80
	str r3, [sp, #0x50]
	ldr r0, _0803530C @ =0xFFFE8000
	adds r6, r6, r0
	b _0803531A
	.align 2, 0
_0803530C: .4byte 0xFFFE8000
_08035310:
	movs r1, #0
	str r1, [sp, #0x50]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r6, r6, r2
_0803531A:
	movs r3, #0x78
	str r3, [sp, #0x4c]
	movs r5, #0
	mov r1, sp
	adds r1, #0x4a
	strh r5, [r1]
	add r0, sp, #0x48
	strh r5, [r0]
	subs r0, #4
	str r0, [sp, #0x54]
	subs r1, #4
	str r1, [sp, #0x58]
	mov r2, sl
	asrs r7, r2, #0xc
_08035336:
	mov r3, r8
	cmp r3, #0
	beq _0803535C
	ldr r1, _08035504 @ =0x0805289C
	ldr r0, [sp, #0x50]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #4
	adds r6, r6, r0
_0803535C:
	asrs r4, r6, #0xc
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x58]
	bl sub_08005FC4
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0x10
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_080271D0
	cmp r0, #0
	bne _080353E0
	bl sub_08007544
	cmp r0, #0
	bne _080353E0
	bl sub_08007510
	cmp r0, #0
	bne _080353E0
	bl sub_080075AC
	cmp r0, #0
	bne _080353E0
	ldr r1, [sp, #0x54]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x58]
	movs r2, #0
	ldrsh r1, [r3, r2]
	subs r1, #0x10
	add r2, sp, #0x48
	ldrh r3, [r2]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x10
	bl sub_08004344
_080353E0:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08035410
	bl sub_080074CC
	cmp r0, #0
	bne _08035410
	ldr r0, _08035508 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035410
	bl sub_08007578
	cmp r0, #0
	bne _08035410
	cmp r5, #0
	beq _08035336
_08035410:
	ldr r3, [sp, #0x4c]
	lsls r0, r3, #0x10
	ldr r1, _0803550C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x4c]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08035428
	b _080355F6
_08035428:
	ldr r3, _08035510 @ =gPlayers
	mov r8, r3
	movs r7, #0xd4
_0803542E:
	ldr r0, [sp, #0x50]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08035504 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #6
	adds r6, r6, r0
	ldr r3, [sp, #0x50]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #6
	add sl, r0
	bl GetMultiplayerId
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	mov r2, sl
	subs r0, r2, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _08035468
	rsbs r0, r0, #0
_08035468:
	asrs r0, r0, #3
	cmp r0, #1
	bgt _08035542
	bl sub_08007670
	cmp r0, #0
	bne _08035542
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0x80
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08035542
	bl GetMultiplayerId
	muls r0, r7, r0
	mov r5, r8
	adds r5, #0x58
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r6, r0
	bge _08035542
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r4, r6, r0
	bl GetMultiplayerId
	muls r0, r7, r0
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r4, r0
	ble _08035542
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08035542
	bl sub_08007544
	cmp r0, #0
	bne _08035542
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	adds r0, #0x70
	ldr r1, _08035514 @ =0x0000FFFE
	strh r1, [r0]
	bl sub_080076A8
	cmp r0, #0
	beq _08035518
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x54
	ldrh r0, [r1]
	adds r0, #0x96
	b _08035528
	.align 2, 0
_08035504: .4byte 0x0805289C
_08035508: .4byte 0x030063D8
_0803550C: .4byte 0xFFFF0000
_08035510: .4byte gPlayers
_08035514: .4byte 0x0000FFFE
_08035518:
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x54
	ldrh r0, [r1]
	adds r0, #0x32
_08035528:
	strh r0, [r1]
	bl GetMultiplayerId
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0x80
	adds r1, r1, r0
	ldr r0, [r2, #0x2c]
	str r0, [r1]
_08035542:
	asrs r5, r6, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r3, sl
	asrs r4, r3, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x58]
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_080271D0
	cmp r0, #0
	bne _080355B2
	bl sub_08007544
	cmp r0, #0
	bne _080355B2
	bl sub_08007510
	cmp r0, #0
	bne _080355B2
	bl sub_080075AC
	cmp r0, #0
	bne _080355B2
	ldr r1, [sp, #0x54]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x58]
	movs r2, #0
	ldrsh r1, [r3, r2]
	subs r1, #0x10
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x11
	movs r3, #0
	bl sub_08004344
_080355B2:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080355F6
	bl sub_080074CC
	cmp r0, #0
	bne _080355F6
	ldr r0, _08035608 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080355F6
	bl sub_08007578
	cmp r0, #0
	bne _080355F6
	ldr r3, [sp, #0x4c]
	lsls r0, r3, #0x10
	ldr r1, _0803560C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x4c]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080355F6
	b _0803542E
_080355F6:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035608: .4byte 0x030063D8
_0803560C: .4byte 0xFFFF0000

	thumb_func_start sub_08035610
sub_08035610: @ 0x08035610
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _08035624 @ =0x0300005C
	ldr r4, [r0]
	movs r6, #0
	b _0803562C
	.align 2, 0
_08035624: .4byte 0x0300005C
_08035628:
	adds r6, #1
	adds r4, #0x28
_0803562C:
	cmp r6, #0x3f
	bhi _0803566A
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _08035628
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _08035628
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	ldr r1, _08035674 @ =sub_08034F3C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	lsls r0, r7, #0x10
	orrs r6, r0
	adds r0, r4, #0
	mov r1, r8
	adds r2, r6, #0
	bl CreateThread
_0803566A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035674: .4byte sub_08034F3C

	thumb_func_start sub_08035678
sub_08035678: @ 0x08035678
	push {r4, lr}
	ldr r4, _080356A0 @ =0x0300005C
	movs r0, #0xa0
	lsls r0, r0, #4
	bl Alloc
	str r0, [r4]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_0803568C:
	ldr r0, [r4]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #0x3f
	bls _0803568C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080356A0: .4byte 0x0300005C

	thumb_func_start sub_080356A4
sub_080356A4: @ 0x080356A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080356B8 @ =0x0300005C
	ldr r0, [r0]
	mov r8, r0
	movs r4, #0
_080356B2:
	lsls r6, r4, #2
	adds r7, r4, #1
	b _080356C0
	.align 2, 0
_080356B8: .4byte 0x0300005C
_080356BC:
	bl WaitFrame
_080356C0:
	adds r0, r6, r4
	lsls r0, r0, #3
	add r0, r8
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _080356BC
	adds r4, r7, #0
	cmp r4, #0x3f
	bls _080356B2
	ldr r4, _080356EC @ =0x0300005C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080356EC: .4byte 0x0300005C

	thumb_func_start sub_080356F0
sub_080356F0: @ 0x080356F0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r4, _08035738 @ =0x03000060
	ldr r0, [r4]
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _08035730
	ldr r1, [r4]
	movs r0, #0x3c
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	ldr r1, [r4]
	str r0, [r1, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _0803573C @ =sub_080352C4
	str r0, [r1, #0xc]
	str r5, [r1, #0x24]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl CreateThread
_08035730:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035738: .4byte 0x03000060
_0803573C: .4byte sub_080352C4

	thumb_func_start sub_08035740
sub_08035740: @ 0x08035740
	push {r4, lr}
	ldr r4, _08035758 @ =0x03000060
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	movs r1, #0
	str r1, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035758: .4byte 0x03000060

	thumb_func_start sub_0803575C
sub_0803575C: @ 0x0803575C
	push {r4, r5, lr}
	ldr r4, _08035764 @ =0x03000060
	b _0803576C
	.align 2, 0
_08035764: .4byte 0x03000060
_08035768:
	bl WaitFrame
_0803576C:
	ldr r0, [r4]
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _08035768
	ldr r4, _08035788 @ =0x03000060
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08035788: .4byte 0x03000060

	thumb_func_start sub_0803578C
sub_0803578C: @ 0x0803578C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	adds r7, r0, #0
	ldr r0, _0803593C @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r4, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0x98]
	cmp r4, r0
	bhs _080357C4
	adds r2, r0, #0
_080357B2:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _080357BC
	ldr r0, [r1, #4]
	adds r6, r1, r0
_080357BC:
	adds r4, #1
	adds r1, #8
	cmp r4, r2
	blo _080357B2
_080357C4:
	ldrh r0, [r6, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x54]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r3, #0
	mov r8, r3
	movs r0, #0xff
	strh r0, [r7, #2]
	ldrh r0, [r6]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r6, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _08035940 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	mov r4, r8
	strh r4, [r7, #8]
	strh r4, [r7, #0xa]
	strh r4, [r7, #0xc]
	strh r4, [r7, #0x28]
	mov r6, r8
	str r6, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x54]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0x8c]
	mov r0, r8
	strh r0, [r6]
	adds r1, r7, #0
	adds r1, #0x4a
	str r1, [sp, #0x90]
	strh r0, [r1]
	movs r2, #0x4c
	adds r2, r2, r7
	mov sb, r2
	strh r0, [r2]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r3, #0x72
	adds r3, r3, r7
	mov sl, r3
	ldrh r4, [r3]
	ldr r6, _08035944 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r0, sl
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x6e
	str r1, [sp, #0x94]
	ldrh r4, [r1]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	ldr r2, [sp, #0x94]
	strh r4, [r2]
	mov r3, sl
	ldrh r0, [r3]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	ldr r4, [sp, #0x54]
	ldr r0, [r4, #0x28]
	ldrh r1, [r4, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r0, _08035948 @ =0x0300680C
	mov r5, r8
	str r5, [r0]
	ldr r1, [r4, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x5c]
	adds r0, #0x15
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x5c]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x5c]
	adds r0, #6
	strb r0, [r1, #0x1d]
	bl sub_08033DF4
	bl sub_08007544
	ldr r6, [sp, #0x8c]
	str r6, [sp, #0x9c]
	ldr r1, [sp, #0x90]
	str r1, [sp, #0xa0]
	mov r2, sb
	str r2, [sp, #0xa4]
	adds r3, r7, #0
	adds r3, #0x4e
	str r3, [sp, #0xa8]
	cmp r0, #0
	bne _08035932
	bl sub_080075AC
	cmp r0, #0
	bne _08035932
	ldr r5, _0803594C @ =gPlayers
	movs r4, #0xd4
_080358FE:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _080358FE
	bl GetMultiplayerId
	ldr r5, _0803594C @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #4
	strh r1, [r0, #0xa]
_08035932:
	ldr r0, [sp, #0x98]
	movs r1, #0x29
	bl sub_0802934C
	b _08035954
	.align 2, 0
_0803593C: .4byte 0x030063D8
_08035940: .4byte gMapLayer_03003910
_08035944: .4byte 0x080FB740
_08035948: .4byte 0x0300680C
_0803594C: .4byte gPlayers
_08035950:
	bl WaitFrame
_08035954:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _08035950
	movs r4, #0
	str r4, [sp, #0x68]
	ldr r5, _08035990 @ =0x0000FFFF
	str r5, [sp, #0x6c]
	movs r6, #1
	str r6, [sp, #0x70]
	movs r0, #0
	str r0, [sp, #0x64]
	str r0, [r7, #0x54]
	movs r1, #0xfa
	lsls r1, r1, #2
	str r1, [sp, #0x60]

	non_word_aligned_thumb_func_start sub_08035972
sub_08035972: @ 0x08035972
	bl sub_080271D0
	cmp r0, #0
	beq _0803597C
	b _08036020
_0803597C:
	ldr r2, [sp, #0x64]
	cmp r2, #0x14
	bls _08035984
	b _08035BD8
_08035984:
	lsls r0, r2, #2
	ldr r1, _08035994 @ =_08035998
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035990: .4byte 0x0000FFFF
_08035994: .4byte _08035998
_08035998: @ jump table
	.4byte _080359EC @ case 0
	.4byte _080359FC @ case 1
	.4byte _08035A2C @ case 2
	.4byte _08035A6C @ case 3
	.4byte _08035BD8 @ case 4
	.4byte _08035BD8 @ case 5
	.4byte _08035BD8 @ case 6
	.4byte _08035A9C @ case 7
	.4byte _08035AB0 @ case 8
	.4byte _08035BD8 @ case 9
	.4byte _08035BCC @ case 10
	.4byte _08035BD8 @ case 11
	.4byte _08035BD8 @ case 12
	.4byte _08035BD8 @ case 13
	.4byte _08035BD8 @ case 14
	.4byte _08035BD8 @ case 15
	.4byte _08035BD8 @ case 16
	.4byte _08035BD8 @ case 17
	.4byte _08035BD8 @ case 18
	.4byte _08035BD8 @ case 19
	.4byte _08035B0C @ case 20
_080359EC:
	movs r3, #1
	str r3, [sp, #0x64]
	movs r0, #0
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	movs r4, #0
	str r4, [sp, #0x88]
	b _08035BD8
_080359FC:
	add r0, sp, #0x4c
	movs r2, #0xa0
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0x88]
	bl Lerp1024
	add r0, sp, #0x50
	movs r2, #0x5a
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0x88]
	bl Lerp1024
	ldr r5, [sp, #0x88]
	adds r5, #0x10
	str r5, [sp, #0x88]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r5, r0
	bgt _08035A28
	b _08035BD8
_08035A28:
	movs r6, #2
	b _08035BD6
_08035A2C:
	bl sub_08007510
	cmp r0, #0
	bne _08035A5A
	bl sub_08007544
	cmp r0, #0
	bne _08035A5A
	bl sub_080075AC
	cmp r0, #0
	bne _08035A5A
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08035A68 @ =0x00090077
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
_08035A5A:
	ldr r0, [sp, #0x64]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	b _08035BD8
	.align 2, 0
_08035A68: .4byte 0x00090077
_08035A6C:
	bl sub_08007510
	cmp r0, #0
	bne _08035A96
	bl sub_08007544
	cmp r0, #0
	bne _08035A96
	bl sub_080075AC
	cmp r0, #0
	bne _08035A96
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	cmp r0, #0
	bne _08035A90
	b _08035BD8
_08035A90:
	movs r0, #7
	str r0, [sp, #0x64]
	b _08035BD8
_08035A96:
	movs r1, #7
	str r1, [sp, #0x64]
	b _08035BD8
_08035A9C:
	movs r2, #8
	str r2, [sp, #0x64]
	movs r0, #0xa0
	rsbs r0, r0, #0
	str r0, [sp, #0x4c]
	adds r0, #0x46
	str r0, [sp, #0x50]
	movs r3, #0
	str r3, [sp, #0x88]
	b _08035BD8
_08035AB0:
	add r0, sp, #0x4c
	movs r1, #0xa0
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x88]
	bl Lerp1024
	add r0, sp, #0x50
	movs r1, #0x5a
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x88]
	bl Lerp1024
	ldr r4, [sp, #0x88]
	adds r4, #0x10
	str r4, [sp, #0x88]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bgt _08035ADC
	b _08035BD8
_08035ADC:
	bl GetMultiplayerId
	ldr r2, _08035B04 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08035B08 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r4, #0
_08035AF2:
	bl sub_08036D28
	adds r4, #1
	cmp r4, #3
	bls _08035AF2
	movs r5, #0xb
	str r5, [sp, #0x64]
	b _08035BD8
	.align 2, 0
_08035B04: .4byte gPlayers
_08035B08: .4byte 0x0000FFFE
_08035B0C:
	bl sub_08016FA0
	cmp r0, #0
	bne _08035B6C
	bl sub_080271D0
	cmp r0, #0
	bne _08035B6C
	bl sub_08007544
	cmp r0, #0
	bne _08035B6C
	bl sub_08007510
	cmp r0, #0
	bne _08035B6C
	bl sub_080075AC
	cmp r0, #0
	bne _08035B6C
	bl sub_080076E0
	adds r4, r0, #0
	cmp r4, #0
	bne _08035B6C
	ldr r0, [sp, #0x58]
	bl sub_0802294C
	cmp r0, #0
	beq _08035BD8
	ldr r6, [sp, #0xa8]
	ldrh r0, [r6]
	cmp r0, #0
	beq _08035BD8
	movs r0, #0x21
	ldr r1, [sp, #0x9c]
	strh r0, [r1]
	ldr r2, [sp, #0xa0]
	strh r4, [r2]
	ldr r3, [sp, #0xa4]
	strh r4, [r3]
	movs r4, #0
	str r4, [sp, #0x70]
	movs r5, #0xa
	str r5, [sp, #0x64]
	bl sub_080077AC
	b _08035BAC
_08035B6C:
	movs r0, #0
	movs r1, #0x21
	ldr r6, [sp, #0x9c]
	strh r1, [r6]
	ldr r1, [sp, #0xa0]
	strh r0, [r1]
	ldr r2, [sp, #0xa4]
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0x70]
	movs r4, #0xa
	str r4, [sp, #0x64]
	bl sub_08016FA0
	cmp r0, #0
	bne _08035BD8
	bl sub_08007544
	cmp r0, #0
	bne _08035BD8
	bl sub_08007510
	cmp r0, #0
	bne _08035BD8
	bl sub_080075AC
	cmp r0, #0
	bne _08035BD8
	bl sub_080076E0
	cmp r0, #0
	bne _08035BD8
_08035BAC:
	bl GetMultiplayerId
	ldr r2, _08035BC4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08035BC8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	b _08035BD8
	.align 2, 0
_08035BC4: .4byte gPlayers
_08035BC8: .4byte 0x0000FFFE
_08035BCC:
	ldr r5, [sp, #0xa8]
	ldrh r0, [r5]
	cmp r0, #0
	beq _08035BD8
	movs r6, #0x15
_08035BD6:
	str r6, [sp, #0x64]
_08035BD8:
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #6]
	strh r4, [r7, #4]
	ldr r0, [sp, #0x64]
	cmp r0, #0xb
	beq _08035BE8
	b _08035D3A
_08035BE8:
	ldr r0, [sp, #0x60]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	ldr r0, [r7, #0x54]
	cmp r0, #1
	beq _08035C1C
	cmp r0, #1
	blo _08035C06
	cmp r0, #2
	beq _08035CBC
	cmp r0, #3
	beq _08035CF4
	b _08035D3A
_08035C06:
	adds r0, r7, #0
	movs r1, #0x3c
	bl sub_0800C8F8
	str r0, [sp, #0x74]
	cmp r0, #3
	bhi _08035C18
	movs r0, #1
	b _08035CEE
_08035C18:
	movs r0, #2
	b _08035CEE
_08035C1C:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08035C58 @ =gPlayers
	movs r2, #0xd4
	ldr r6, [sp, #0x74]
	muls r2, r6, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r4, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08035C60
	ldr r0, _08035C5C @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _08035C6E
	.align 2, 0
_08035C58: .4byte gPlayers
_08035C5C: .4byte 0x0000FFBF
_08035C60:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08035C70
	ldr r0, _08035C88 @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_08035C6E:
	strh r0, [r7, #4]
_08035C70:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035C90
	ldr r0, _08035C8C @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _08035C9E
	.align 2, 0
_08035C88: .4byte 0x0000FF7F
_08035C8C: .4byte 0x0000FFDF
_08035C90:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035CA0
	ldr r0, _08035CB8 @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_08035C9E:
	strh r0, [r7, #4]
_08035CA0:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bls _08035D3A
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x37
	str r0, [r7, #0x5c]
	b _08035D3A
	.align 2, 0
_08035CB8: .4byte 0x0000FFEF
_08035CBC:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	str r0, [sp, #0x74]
	cmp r0, #3
	bhi _08035CEC
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _08035D3A
	ldr r1, [sp, #0x54]
	ldrh r0, [r1, #8]
	ldr r2, [sp, #0x60]
	cmp r0, r2
	bhs _08035D3A
	movs r3, #0
	str r3, [sp, #0x60]
	movs r0, #1
	strh r0, [r7, #6]
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x3c
	str r0, [r7, #0x5c]
	b _08035D3A
_08035CEC:
	movs r0, #3
_08035CEE:
	str r0, [r7, #0x54]
	str r4, [r7, #0x5c]
	b _08035D3A
_08035CF4:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	str r0, [sp, #0x74]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08035D4C @ =gPlayers
	movs r2, #0xd4
	ldr r5, [sp, #0x74]
	muls r2, r5, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _08035D3A
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bls _08035D3A
	str r4, [r7, #0x54]
_08035D3A:
	ldrh r0, [r7, #0xa]
	cmp r0, #1
	beq _08035D9C
	cmp r0, #1
	bgt _08035D50
	cmp r0, #0
	beq _08035D5E
	b _08036020
	.align 2, 0
_08035D4C: .4byte gPlayers
_08035D50:
	cmp r0, #6
	bne _08035D56
	b _08035F1C
_08035D56:
	cmp r0, #7
	bne _08035D5C
	b _08035FDA
_08035D5C:
	b _08036020
_08035D5E:
	ldrh r0, [r7, #8]
	ldr r6, [sp, #0x9c]
	strh r0, [r6]
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035D8A
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _08035D78
	subs r0, #1
	b _08035D7A
_08035D78:
	ldrh r0, [r7, #8]
_08035D7A:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0xa4]
	strh r1, [r2]
	ldr r3, [sp, #0xa0]
	strh r1, [r3]
_08035D8A:
	ldrh r1, [r7, #4]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _08035D96
	b _08036020
_08035D96:
	movs r0, #1
	strh r0, [r7, #0xa]
	b _08036020
_08035D9C:
	movs r4, #0
	str r4, [sp, #0x68]
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08035DB0
	movs r5, #5
	str r5, [sp, #0x68]
	b _08035DBC
_08035DB0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08035DBC
	movs r6, #1
	str r6, [sp, #0x68]
_08035DBC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035DE2
	ldr r0, [sp, #0x68]
	cmp r0, #5
	bne _08035DD0
	movs r1, #4
	str r1, [sp, #0x68]
	b _08035E06
_08035DD0:
	ldr r2, [sp, #0x68]
	cmp r2, #1
	bne _08035DDC
	movs r3, #2
	str r3, [sp, #0x68]
	b _08035E06
_08035DDC:
	movs r4, #3
	str r4, [sp, #0x68]
	b _08035E06
_08035DE2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035E06
	ldr r5, [sp, #0x68]
	cmp r5, #5
	bne _08035DF6
	movs r6, #6
	str r6, [sp, #0x68]
	b _08035E06
_08035DF6:
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne _08035E02
	movs r1, #8
	str r1, [sp, #0x68]
	b _08035E06
_08035E02:
	movs r2, #7
	str r2, [sp, #0x68]
_08035E06:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035E30
	ldr r3, [sp, #0x68]
	cmp r3, #0
	beq _08035E1C
	adds r0, r3, #0
	subs r0, #1
	b _08035E1E
_08035E1C:
	ldrh r0, [r7, #8]
_08035E1E:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r4, [sp, #0xa4]
	strh r1, [r4]
	ldr r5, [sp, #0xa0]
	strh r1, [r5]
	b _08035F06
_08035E30:
	ldr r6, [sp, #0x68]
	cmp r6, #0
	bne _08035E3A
	strh r6, [r7, #0xa]
	b _08035F06
_08035E3A:
	ldr r0, [sp, #0x68]
	subs r0, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	str r5, [r7, #0x18]
	ldr r6, [r7, #0x14]
	str r6, [r7, #0x1c]
	ldr r1, _08035F10 @ =0x080FB5D0
	mov sb, r1
	movs r2, #8
	ldrsh r0, [r7, r2]
	lsls r3, r0, #3
	adds r2, r3, r1
	ldr r4, _08035F14 @ =0x080FB5AC
	mov sl, r4
	movs r1, #0x68
	adds r1, r1, r7
	mov r8, r1
	ldrh r1, [r1]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r2, _08035F18 @ =0x080FB5D4
	adds r3, r3, r2
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08035F06
	subs r0, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r3, r0, #3
	mov r4, sb
	adds r2, r3, r4
	mov r4, r8
	ldrh r1, [r4]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r1, _08035F18 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x68]
	cmp r0, #0
	beq _08035F06
	movs r2, #8
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, sb
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #3
	ldr r5, _08035F18 @ =0x080FB5D4
	adds r1, r1, r5
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_08035F06:
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r6, [sp, #0x9c]
	strh r0, [r6]
	b _08036020
	.align 2, 0
_08035F10: .4byte 0x080FB5D0
_08035F14: .4byte 0x080FB5AC
_08035F18: .4byte 0x080FB5D4
_08035F1C:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1]
	ldr r2, [sp, #0x80]
	cmp r0, r2
	bne _08035F54
	ldr r3, [sp, #0xa8]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08035F42
	ldr r4, [sp, #0x84]
	cmp r4, #6
	bne _08035F42
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r5, #0
	str r5, [sp, #0x60]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
_08035F42:
	ldr r6, [sp, #0x9c]
	ldrh r0, [r6]
	ldr r1, [sp, #0x80]
	cmp r0, r1
	bne _08035F54
	ldr r2, [sp, #0x84]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	beq _0803601C
_08035F54:
	ldrh r4, [r7, #0xa]
	str r4, [sp, #0x84]
	ldrh r0, [r7, #8]
	adds r0, #0x18
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08035FA6
	bl sub_08007544
	cmp r0, #0
	bne _08035F82
	bl sub_080075AC
	cmp r0, #0
	bne _08035F82
	movs r0, #0x93
	bl PlaySE
_08035F82:
	bl sub_080076A8
	cmp r0, #0
	beq _08035F92
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1d
	b _08035F98
_08035F92:
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1b
_08035F98:
	strh r0, [r1]
	ldrh r0, [r7]
	movs r1, #1
	ldr r2, [sp, #0x74]
	bl sub_0802EEA8
	b _08035FD4
_08035FA6:
	bl sub_08007544
	cmp r0, #0
	bne _08035FBC
	bl sub_080075AC
	cmp r0, #0
	bne _08035FBC
	movs r0, #0x94
	bl PlaySE
_08035FBC:
	adds r0, r7, #0
	adds r0, #0x88
	movs r1, #0x23
	strh r1, [r0]
	ldrh r0, [r7]
	movs r1, #2
	ldr r2, [sp, #0x74]
	bl sub_0802EEA8
	movs r0, #0x77
	bl PlaySE
_08035FD4:
	ldr r6, [sp, #0x9c]
	ldrh r6, [r6]
	b _0803601A
_08035FDA:
	ldr r1, [sp, #0x9c]
	ldrh r0, [r1]
	ldr r2, [sp, #0x80]
	cmp r0, r2
	bne _0803600C
	ldr r3, [sp, #0xa8]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08035FFA
	ldr r4, [sp, #0x84]
	cmp r4, #7
	bne _08035FFA
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r5, #0
	str r5, [sp, #0x60]
_08035FFA:
	ldr r6, [sp, #0x9c]
	ldrh r0, [r6]
	ldr r1, [sp, #0x80]
	cmp r0, r1
	bne _0803600C
	ldr r2, [sp, #0x84]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	beq _0803601C
_0803600C:
	ldrh r4, [r7, #0xa]
	str r4, [sp, #0x84]
	ldrh r0, [r7, #8]
	adds r0, #0x10
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	ldrh r6, [r5]
_0803601A:
	str r6, [sp, #0x80]
_0803601C:
	movs r0, #0
	str r0, [sp, #0x70]
_08036020:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _080360EA
	movs r1, #0x14
	str r1, [sp, #0x6c]
	ldrh r2, [r7, #0x28]
	str r2, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x7c]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080360E4
	bl sub_08016FA0
	cmp r0, #0
	bne _0803609C
	bl sub_080271D0
	cmp r0, #0
	bne _0803609C
	bl sub_08007544
	cmp r0, #0
	bne _0803609C
	bl sub_08007510
	cmp r0, #0
	bne _0803609C
	bl sub_080075AC
	cmp r0, #0
	bne _0803609C
	bl sub_080076E0
	cmp r0, #0
	bne _0803609C
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080360D8 @ =0x00090078
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x58]
	bl GetMultiplayerId
	ldr r2, _080360DC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007798
_0803609C:
	movs r4, #0x14
	str r4, [sp, #0x64]
	movs r1, #0
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r0, #0x20
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	ldr r6, [sp, #0xa0]
	strh r1, [r6]
	ldr r0, [sp, #0xa4]
	strh r1, [r0]
	str r1, [sp, #0x70]
	ldr r0, _080360E0 @ =0x0300680C
	movs r4, #1
	str r4, [r0]
	movs r0, #2
	bl FadeOutBGM
	ldrh r3, [r7, #2]
	ldr r2, [sp, #0x70]
	str r2, [sp]
	str r4, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	b _080360EA
	.align 2, 0
_080360D8: .4byte 0x00090078
_080360DC: .4byte gPlayers
_080360E0: .4byte 0x0300680C
_080360E4:
	add r3, sp, #0x7c
	ldrh r3, [r3]
	strh r3, [r7, #0xa]
_080360EA:
	ldr r0, [sp, #0x6c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x6c]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803615C
	ldr r4, [sp, #0x78]
	cmp r4, #0
	bne _08036110
	ldr r5, _0803610C @ =0x0000FFFF
	str r5, [sp, #0x6c]
	b _08036160
	.align 2, 0
_0803610C: .4byte 0x0000FFFF
_08036110:
	bl sub_08007544
	cmp r0, #0
	bne _0803613E
	bl sub_08007510
	cmp r0, #0
	bne _0803613E
	bl sub_08007604
	cmp r0, #0
	bne _0803613E
	bl sub_080075AC
	cmp r0, #0
	bne _0803613E
	ldr r6, [sp, #0x7c]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x78]
	bl sub_0800EA74
_0803613E:
	movs r0, #2
	ldr r1, [sp, #0x6c]
	ands r0, r1
	cmp r0, #0
	beq _08036160
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #0x10
	ldr r3, _08036158 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	b _08036160
	.align 2, 0
_08036158: .4byte 0xFFFF0000
_0803615C:
	ldr r4, _08036484 @ =0x0000FFFF
	str r4, [sp, #0x6c]
_08036160:
	ldr r5, [sp, #0x9c]
	ldrh r1, [r5]
	ldr r6, [sp, #0x70]
	str r6, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	bl sub_08026C40
	ldr r1, [sp, #0xa8]
	strh r0, [r1]
	bl sub_08007510
	cmp r0, #0
	bne _08036200
	bl sub_080271D0
	cmp r0, #0
	bne _08036200
	bl sub_08007544
	cmp r0, #0
	bne _08036200
	bl sub_080075AC
	mov r8, r0
	cmp r0, #0
	bne _08036200
	ldr r0, [sp, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x4c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08005F60
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	movs r2, #0x30
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r5, #0
	ldrsh r1, [r6, r5]
	ldr r6, [sp, #0x9c]
	ldrh r2, [r6]
	ldr r5, [sp, #0xa0]
	ldrh r3, [r5]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08036200:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08036236
	bl sub_080074CC
	cmp r0, #0
	bne _08036236
	ldr r0, _08036488 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08036236
	bl sub_08007578
	cmp r0, #0
	bne _08036236
	ldr r6, [sp, #0x64]
	cmp r6, #0x15
	beq _08036236
	bl sub_08035972
_08036236:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	ldr r1, _0803648C @ =gActiveEnemyMask
	ldrh r0, [r7]
	lsls r4, r0
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	ldr r0, [sp, #0x5c]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _080362B8
	ldr r4, _08036490 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080362B8
	ldr r0, _08036494 @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _080362B8
	bl sub_08007544
	cmp r0, #0
	bne _080362B8
	bl sub_08007510
	cmp r0, #0
	bne _080362B8
	bl sub_08007604
	cmp r0, #0
	bne _080362B8
	bl sub_080075AC
	cmp r0, #0
	bne _080362B8
	bl sub_080076E0
	cmp r0, #0
	bne _080362B8
	ldr r0, _08036498 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_080362B8:
	bl sub_08007750
	cmp r0, #0
	beq _080362C2
	b _080363CC
_080362C2:
	bl sub_080074CC
	cmp r0, #0
	beq _080362CC
	b _080363CC
_080362CC:
	ldr r4, _08036488 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080363CC
	bl sub_08007578
	cmp r0, #0
	bne _080363CC
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _080363CC
	ldr r4, _0803649C @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _08036320
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036320
	ldr r3, _080364A0 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08036320
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08036320:
	ldr r4, _08036490 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x54]
	bl CalcExpGain
	str r0, [sp, #0x70]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x70]
	bl AddExp
	adds r5, r0, #0
	movs r4, #0x13
	ldr r6, _08036484 @ =0x0000FFFF
_0803634E:
	ldr r0, [r7, #0x14]
	ldr r1, _080364A4 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _08036382
	bl sub_08007510
	cmp r0, #0
	bne _08036382
	bl sub_080075AC
	cmp r0, #0
	bne _08036382
	ldr r0, _08036498 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08036382
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	bl sub_08024320
_08036382:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bne _0803634E
	cmp r5, #0
	beq _080363CC
	bl sub_08007544
	cmp r0, #0
	bne _080363AA
	bl sub_080075AC
	cmp r0, #0
	bne _080363AA
	movs r0, #0x25
	bl PlaySE
_080363AA:
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _08036490 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_080363CC:
	bl sub_08007750
	cmp r0, #0
	bne _0803646A
	bl sub_080074CC
	cmp r0, #0
	bne _0803646A
	ldr r4, _08036488 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803646A
	bl sub_08007578
	cmp r0, #0
	bne _0803646A
	ldr r0, _080364A8 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _080364AC @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08036454
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08036454
	ldr r2, _080364B0 @ =gPlayerStats
	ldr r4, _080364B4 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r5, #0x9d
	lsls r5, r5, #2
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
	ldr r6, _080364B8 @ =0x00000275
	adds r2, r2, r6
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08036454:
	bl sub_0800F53C
	ldr r4, _080364BC @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0803646A
	ldr r0, [r4]
	bl KillThread
_0803646A:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036484: .4byte 0x0000FFFF
_08036488: .4byte 0x030063D8
_0803648C: .4byte gActiveEnemyMask
_08036490: .4byte gPlayers
_08036494: .4byte gUnknown_030064D8
_08036498: .4byte gMapLayer_03003910
_0803649C: .4byte 0x03003D94
_080364A0: .4byte 0x00000157
_080364A4: .4byte 0xFFFFFE00
_080364A8: .4byte 0x00000BB8
_080364AC: .4byte gUnknown_03003D08
_080364B0: .4byte gPlayerStats
_080364B4: .4byte 0x00000272
_080364B8: .4byte 0x00000275
_080364BC: .4byte gUnknownThreadPtr_030063E4

	thumb_func_start sub_080364C0
sub_080364C0: @ 0x080364C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	ldr r0, _080364EC @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	cmp r2, r0
	bhs _08036502
	adds r3, r0, #0
_080364E0:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _080364F0
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _080364FA
	.align 2, 0
_080364EC: .4byte 0x030063D8
_080364F0:
	cmp r0, #3
	bne _080364FA
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x4c]
_080364FA:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _080364E0
_08036502:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x48]
	ldrh r0, [r7]
	adds r0, #0xf0
	movs r4, #0
	strh r0, [r7, #2]
	ldr r0, _08036664 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r1, [sp, #0x4c]
	adds r0, r0, r1
	subs r0, #4
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r0, #4
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	strh r4, [r7, #8]
	strh r4, [r7, #0xa]
	strh r4, [r7, #0xc]
	strh r4, [r7, #0x28]
	str r4, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x48]
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r5, #0x72
	adds r5, r5, r7
	mov sl, r5
	ldrh r0, [r5]
	movs r1, #5
	bl __udivsi3
	strh r0, [r7, #0x38]
	movs r0, #0x74
	adds r0, r0, r7
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	movs r1, #0x48
	adds r1, r1, r7
	mov r8, r1
	movs r0, #0x2a
	strh r0, [r1]
	adds r6, r7, #0
	adds r6, #0x4a
	strh r4, [r6]
	adds r5, r7, #0
	adds r5, #0x4c
	strh r4, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	adds r2, r7, #0
	adds r2, #0x6c
	ldrh r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	ldrh r0, [r7]
	movs r1, #1
	ands r1, r0
	movs r0, #3
	mov r4, sl
	str r4, [sp, #0x84]
	mov r3, sb
	str r3, [sp, #0x88]
	mov r4, r8
	str r4, [sp, #0x74]
	str r6, [sp, #0x78]
	str r5, [sp, #0x7c]
	str r2, [sp, #0x80]
	cmp r1, #0
	beq _080365D0
	movs r0, #1
_080365D0:
	adds r4, r7, #0
	adds r4, #0x86
	strb r0, [r4]
	ldr r5, [sp, #0x48]
	ldr r0, [r5, #0x28]
	ldrh r1, [r5, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r1, [r5, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x50]
	adds r0, #0x15
	ldrh r2, [r5, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x50]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x50]
	adds r0, #6
	strb r0, [r1, #0x1d]
	movs r2, #0
	ldr r0, _08036668 @ =0x0000FFFF
	str r0, [sp, #0x58]
	movs r1, #1
	str r1, [sp, #0x5c]
	str r2, [r7, #0x54]
	movs r2, #0xfa
	lsls r2, r2, #2
	str r2, [sp, #0x54]
	ldr r0, _0803666C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	ldrh r0, [r0]
	str r4, [sp, #0x8c]
	cmp r0, #0
	beq _08036636
	b _08036CF4
_08036636:
	bl sub_080271D0
	adds r5, r0, #0
	cmp r5, #0
	beq _08036642
	b _08036B78
_08036642:
	ldr r0, [sp, #0x54]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
	movs r6, #0
	strh r5, [r7, #6]
	strh r5, [r7, #4]
	ldr r3, [sp, #0x8c]
	ldrb r4, [r3]
	cmp r4, #1
	beq _08036670
	cmp r4, #3
	bne _08036660
	b _0803677A
_08036660:
	b _0803686E
	.align 2, 0
_08036664: .4byte gMapLayer_03003910
_08036668: .4byte 0x0000FFFF
_0803666C: .4byte 0x030063D8
_08036670:
	ldr r0, [r7, #0x54]
	cmp r0, #1
	beq _0803669E
	cmp r0, #1
	blo _08036686
	cmp r0, #2
	beq _08036740
	cmp r0, #3
	bne _08036684
	b _08036828
_08036684:
	b _0803686E
_08036686:
	adds r0, r7, #0
	movs r1, #0x1e
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _0803669A
	str r4, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _0803686E
_0803669A:
	movs r0, #2
	b _08036774
_0803669E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _080366DC @ =gPlayers
	movs r2, #0xd4
	ldr r4, [sp, #0x60]
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080366E4
	ldr r0, _080366E0 @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _080366F2
	.align 2, 0
_080366DC: .4byte gPlayers
_080366E0: .4byte 0x0000FFBF
_080366E4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080366F4
	ldr r0, _0803670C @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_080366F2:
	strh r0, [r7, #4]
_080366F4:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036714
	ldr r0, _08036710 @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _08036722
	.align 2, 0
_0803670C: .4byte 0x0000FF7F
_08036710: .4byte 0x0000FFDF
_08036714:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08036724
	ldr r0, _0803673C @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_08036722:
	strh r0, [r7, #4]
_08036724:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _08036732
	b _0803686E
_08036732:
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x37
	str r0, [r7, #0x5c]
	b _0803686E
	.align 2, 0
_0803673C: .4byte 0x0000FFEF
_08036740:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _08036772
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	bne _08036756
	b _0803686E
_08036756:
	ldr r5, [sp, #0x80]
	ldrh r0, [r5]
	ldr r1, [sp, #0x54]
	cmp r0, r1
	blo _08036762
	b _0803686E
_08036762:
	movs r2, #0
	str r2, [sp, #0x54]
	strh r4, [r7, #6]
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x3c
	str r0, [r7, #0x5c]
	b _0803686E
_08036772:
	movs r0, #3
_08036774:
	str r0, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _0803686E
_0803677A:
	strh r5, [r7, #6]
	strh r5, [r7, #4]
	ldr r6, [r7, #0x54]
	cmp r6, #1
	beq _080367AA
	cmp r6, #1
	blo _0803678E
	cmp r6, #2
	beq _08036828
	b _0803686E
_0803678E:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _080367A2
	movs r0, #1
	str r0, [r7, #0x54]
	b _08036820
_080367A2:
	movs r0, #2
	str r0, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _08036820
_080367AA:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	cmp r0, #3
	bhi _08036820
	ldr r1, _08036818 @ =gPlayers
	movs r0, #0xd4
	ldr r2, [sp, #0x60]
	muls r0, r2, r0
	adds r1, #0xd0
	adds r4, r0, r1
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _08036820
	bl sub_08007604
	cmp r0, #0
	bne _08036820
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, [r4]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #0xb4
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803681C
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _0803681C
	ldr r3, [sp, #0x80]
	ldrh r0, [r3]
	ldr r4, [sp, #0x54]
	cmp r0, r4
	bhs _0803681C
	movs r5, #0
	str r5, [sp, #0x54]
	movs r0, #2
	str r0, [r7, #0x54]
	movs r0, #0x3a
	str r0, [r7, #0x5c]
	strh r6, [r7, #6]
	b _0803686E
	.align 2, 0
_08036818: .4byte gPlayers
_0803681C:
	strh r5, [r7, #6]
	b _0803686E
_08036820:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	b _0803686E
_08036828:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	str r0, [sp, #0x60]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08036880 @ =gPlayers
	movs r2, #0xd4
	ldr r4, [sp, #0x60]
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r5, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #6
	beq _0803686E
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bls _0803686E
	str r5, [r7, #0x54]
_0803686E:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bls _08036876
	b _08036B78
_08036876:
	lsls r0, r0, #2
	ldr r1, _08036884 @ =_08036888
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08036880: .4byte gPlayers
_08036884: .4byte _08036888
_08036888: @ jump table
	.4byte _080368AC @ case 0
	.4byte _080368DE @ case 1
	.4byte _08036B78 @ case 2
	.4byte _08036B78 @ case 3
	.4byte _08036B78 @ case 4
	.4byte _08036B78 @ case 5
	.4byte _08036A38 @ case 6
	.4byte _08036AAC @ case 7
	.4byte _08036AF8 @ case 8
_080368AC:
	ldrh r0, [r7, #8]
	adds r0, #0x2a
	movs r2, #0
	ldr r5, [sp, #0x74]
	strh r0, [r5]
	ldrh r1, [r7, #6]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080368CE
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r0, [sp, #0x7c]
	strh r2, [r0]
	ldr r1, [sp, #0x78]
	strh r2, [r1]
_080368CE:
	ldrh r1, [r7, #4]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _080368DA
	b _08036B78
_080368DA:
	strh r3, [r7, #0xa]
	b _08036B78
_080368DE:
	movs r2, #0
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080368EE
	movs r2, #5
	b _080368F8
_080368EE:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080368F8
	movs r2, #1
_080368F8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036914
	cmp r2, #5
	bne _08036908
	movs r2, #4
	b _0803692E
_08036908:
	cmp r2, #1
	bne _08036910
	movs r2, #2
	b _0803692E
_08036910:
	movs r2, #3
	b _0803692E
_08036914:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803692E
	cmp r2, #5
	bne _08036924
	movs r2, #6
	b _0803692E
_08036924:
	cmp r2, #1
	bne _0803692C
	movs r2, #8
	b _0803692E
_0803692C:
	movs r2, #7
_0803692E:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08036954
	cmp r2, #0
	beq _08036940
	subs r0, r2, #1
	b _08036942
_08036940:
	ldrh r0, [r7, #8]
_08036942:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0x7c]
	strh r1, [r2]
	ldr r3, [sp, #0x78]
	strh r1, [r3]
	b _08036A20
_08036954:
	cmp r2, #0
	bne _0803695C
	strh r2, [r7, #0xa]
	b _08036A20
_0803695C:
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	str r5, [r7, #0x18]
	ldr r6, [r7, #0x14]
	str r6, [r7, #0x1c]
	ldr r4, _08036A2C @ =0x080FB5D0
	mov sb, r4
	movs r1, #8
	ldrsh r0, [r7, r1]
	lsls r3, r0, #3
	adds r2, r3, r4
	ldr r4, _08036A30 @ =0x080FB5AC
	mov sl, r4
	movs r1, #0x68
	adds r1, r1, r7
	mov r8, r1
	ldrh r1, [r1]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r2, _08036A34 @ =0x080FB5D4
	adds r3, r3, r2
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08036A20
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r3, r0, #3
	mov r4, sb
	adds r2, r3, r4
	mov r4, r8
	ldrh r1, [r4]
	lsls r1, r1, #2
	add r1, sl
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	adds r5, r5, r1
	ldr r1, _08036A34 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08036A20
	movs r2, #8
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, sb
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #3
	ldr r5, _08036A34 @ =0x080FB5D4
	adds r1, r1, r5
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_08036A20:
	ldrh r0, [r7, #8]
	adds r0, #0x32
	ldr r1, [sp, #0x74]
	strh r0, [r1]
	b _08036B78
	.align 2, 0
_08036A2C: .4byte 0x080FB5D0
_08036A30: .4byte 0x080FB5AC
_08036A34: .4byte 0x080FB5D4
_08036A38:
	ldr r2, [sp, #0x74]
	ldrh r0, [r2]
	ldr r3, [sp, #0x6c]
	cmp r0, r3
	bne _08036A72
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08036A60
	ldr r4, [sp, #0x70]
	ldrh r5, [r7, #0xa]
	cmp r4, r5
	bne _08036A60
	movs r0, #0
	strh r0, [r7, #0xa]
	str r0, [sp, #0x54]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
_08036A60:
	ldr r1, [sp, #0x74]
	ldrh r0, [r1]
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bne _08036A72
	ldr r3, [sp, #0x70]
	ldrh r4, [r7, #0xa]
	cmp r3, r4
	beq _08036AA6
_08036A72:
	ldrh r5, [r7, #0xa]
	str r5, [sp, #0x70]
	ldrh r0, [r7, #8]
	adds r0, #0x3a
	ldr r1, [sp, #0x74]
	strh r0, [r1]
	bl sub_080076A8
	cmp r0, #0
	beq _08036A8E
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1d
	b _08036A94
_08036A8E:
	adds r1, r7, #0
	adds r1, #0x88
	movs r0, #0x1b
_08036A94:
	strh r0, [r1]
	ldrh r0, [r7]
	movs r1, #1
	ldr r2, [sp, #0x60]
	bl sub_0802EEA8
	ldr r2, [sp, #0x74]
	ldrh r2, [r2]
	str r2, [sp, #0x6c]
_08036AA6:
	movs r3, #0
	str r3, [sp, #0x5c]
	b _08036B78
_08036AAC:
	ldr r4, [sp, #0x74]
	ldrh r0, [r4]
	ldr r5, [sp, #0x6c]
	cmp r0, r5
	bne _08036AE2
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08036AD0
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0xa]
	cmp r0, r1
	bne _08036AD0
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r2, #0
	str r2, [sp, #0x54]
_08036AD0:
	ldr r3, [sp, #0x74]
	ldrh r0, [r3]
	ldr r4, [sp, #0x6c]
	cmp r0, r4
	bne _08036AE2
	ldr r5, [sp, #0x70]
	ldrh r0, [r7, #0xa]
	cmp r5, r0
	beq _08036AF2
_08036AE2:
	ldrh r1, [r7, #0xa]
	str r1, [sp, #0x70]
	ldrh r0, [r7, #8]
	adds r0, #0x10
	ldr r2, [sp, #0x74]
	strh r0, [r2]
	ldrh r3, [r2]
	str r3, [sp, #0x6c]
_08036AF2:
	movs r4, #0
	str r4, [sp, #0x5c]
	b _08036B78
_08036AF8:
	ldr r5, [sp, #0x74]
	ldrh r0, [r5]
	ldr r1, [sp, #0x6c]
	cmp r0, r1
	bne _08036B64
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08036B52
	ldr r2, [sp, #0x70]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	bne _08036B52
	ldr r0, _08036BA8 @ =0x0300680C
	ldr r4, [r0]
	cmp r4, #0
	bne _08036B52
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r5, [sp, #0x4c]
	adds r0, r0, r5
	subs r0, #4
	ldrh r0, [r0]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r5
	subs r0, #4
	ldrh r0, [r0, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r1, [sp, #0x84]
	ldrh r0, [r1]
	movs r1, #5
	bl __udivsi3
	strh r0, [r7, #0x38]
	ldr r2, [sp, #0x88]
	ldrh r0, [r2]
	strh r0, [r7, #0x3a]
	strh r4, [r7, #0xa]
	movs r3, #0
	str r3, [sp, #0x54]
_08036B52:
	ldr r4, [sp, #0x74]
	ldrh r0, [r4]
	ldr r5, [sp, #0x6c]
	cmp r0, r5
	bne _08036B64
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0xa]
	cmp r0, r1
	beq _08036B74
_08036B64:
	ldrh r2, [r7, #0xa]
	str r2, [sp, #0x70]
	ldrh r0, [r7, #8]
	adds r0, #0x22
	ldr r3, [sp, #0x74]
	strh r0, [r3]
	ldrh r4, [r3]
	str r4, [sp, #0x6c]
_08036B74:
	movs r5, #0
	str r5, [sp, #0x5c]
_08036B78:
	ldr r0, _08036BA8 @ =0x0300680C
	ldr r0, [r0]
	cmp r0, #0
	beq _08036B84
	movs r0, #8
	strh r0, [r7, #0xa]
_08036B84:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _08036BB2
	movs r0, #0x14
	str r0, [sp, #0x58]
	ldrh r1, [r7, #0x28]
	str r1, [sp, #0x64]
	movs r2, #0
	str r2, [sp, #0x68]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08036BAC
	movs r0, #8
	strh r0, [r7, #0xa]
	b _08036BB2
	.align 2, 0
_08036BA8: .4byte 0x0300680C
_08036BAC:
	add r3, sp, #0x68
	ldrh r3, [r3]
	strh r3, [r7, #0xa]
_08036BB2:
	ldr r0, [sp, #0x58]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x58]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08036C24
	ldr r4, [sp, #0x64]
	cmp r4, #0
	bne _08036BD8
	ldr r5, _08036BD4 @ =0x0000FFFF
	str r5, [sp, #0x58]
	b _08036C28
	.align 2, 0
_08036BD4: .4byte 0x0000FFFF
_08036BD8:
	bl sub_08007544
	cmp r0, #0
	bne _08036C06
	bl sub_08007510
	cmp r0, #0
	bne _08036C06
	bl sub_08007604
	cmp r0, #0
	bne _08036C06
	bl sub_080075AC
	cmp r0, #0
	bne _08036C06
	ldr r0, [sp, #0x68]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x64]
	bl sub_0800EA74
_08036C06:
	movs r0, #2
	ldr r1, [sp, #0x58]
	ands r0, r1
	cmp r0, #0
	beq _08036C28
	ldr r2, [sp, #0x68]
	lsls r0, r2, #0x10
	ldr r3, _08036C20 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	b _08036C28
	.align 2, 0
_08036C20: .4byte 0xFFFF0000
_08036C24:
	ldr r4, _08036D1C @ =0x0000FFFF
	str r4, [sp, #0x58]
_08036C28:
	bl sub_08007510
	cmp r0, #0
	bne _08036CBC
	bl sub_08007604
	cmp r0, #0
	bne _08036CBC
	bl sub_08007544
	cmp r0, #0
	bne _08036CBC
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08036CBC
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	str r3, [sp, #0x90]
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	movs r2, #0x30
	str r2, [sp]
	ldr r3, [sp, #0x90]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x74]
	ldrh r1, [r0]
	ldr r2, [sp, #0x5c]
	str r2, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r5, #0
	ldrsh r1, [r6, r5]
	ldr r3, [sp, #0x74]
	ldrh r2, [r3]
	ldr r5, [sp, #0x78]
	ldrh r3, [r5]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08036CBC:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08036CF4
	bl sub_080074CC
	cmp r0, #0
	bne _08036CF4
	ldr r4, _08036D20 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08036CF4
	bl sub_08007578
	cmp r0, #0
	bne _08036CF4
	ldr r0, [r4]
	adds r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08036CF4
	b _08036636
_08036CF4:
	ldr r2, _08036D24 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x50]
	bl sub_0800CB84
	bl ThreadExit
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036D1C: .4byte 0x0000FFFF
_08036D20: .4byte 0x030063D8
_08036D24: .4byte gActiveEnemyMask

	thumb_func_start sub_08036D28
sub_08036D28: @ 0x08036D28
	push {r4, r5, r6, r7, lr}
	bl sub_0800E934
	adds r3, r0, #0
	cmp r3, #0
	blt _08036DB8
	ldr r2, _08036DA4 @ =gActiveEnemyMask
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08036DA8 @ =gEnemies
	movs r0, #0x94
	muls r0, r3, r0
	ldr r5, [r1]
	adds r5, r5, r0
	movs r6, #0
	strh r3, [r5]
	lsls r0, r3, #0x18
	str r0, [r5, #0x2c]
	ldr r7, _08036DAC @ =0x030048D0
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #3
	adds r0, r7, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08036DB0 @ =sub_080364C0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	bl Alloc
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r0, [r1]
	adds r1, r7, #0
	adds r1, #0x10
	adds r1, r4, r1
	ldr r2, _08036DB4 @ =0x000007FC
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x3c
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x18
	adds r0, r4, r0
	str r6, [r0]
	adds r4, r4, r7
	str r6, [r4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
	movs r0, #1
	b _08036DBA
	.align 2, 0
_08036DA4: .4byte gActiveEnemyMask
_08036DA8: .4byte gEnemies
_08036DAC: .4byte 0x030048D0
_08036DB0: .4byte sub_080364C0
_08036DB4: .4byte 0x000007FC
_08036DB8:
	movs r0, #0
_08036DBA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08036DC0
sub_08036DC0: @ 0x08036DC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe0
	mov sl, r0
	ldr r0, _08036FA4 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r3, sp
	adds r3, #0x31
	str r3, [sp, #0xc4]
	mov r6, sp
	adds r6, #0x80
	str r6, [sp, #0xdc]
	adds r3, #0x4d
	str r3, [sp, #0xd8]
	subs r6, #4
	str r6, [sp, #0xd4]
	cmp r2, r0
	bhs _08036E06
	adds r3, r0, #0
_08036DF4:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _08036DFE
	ldr r0, [r1, #4]
	adds r4, r1, r0
_08036DFE:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _08036DF4
_08036E06:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x8c]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	mov r1, sl
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsls r0, r0, #0xf
	str r0, [r1, #0x10]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xf
	str r0, [r1, #0x14]
	ldr r0, _08036FA8 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r1, #0x26]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	strh r2, [r1, #0xc]
	strh r2, [r1, #0x28]
	str r2, [r1, #0x30]
	strh r2, [r1, #0x2a]
	adds r1, #0x64
	ldr r0, [sp, #0x8c]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r6, sl
	adds r6, #0x48
	str r6, [sp, #0xbc]
	strh r2, [r6]
	mov r0, sl
	adds r0, #0x4a
	str r0, [sp, #0xc0]
	strh r2, [r0]
	movs r1, #0x4c
	add r1, sl
	mov r8, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	str r0, [r2, #0x2c]
	mov r7, sl
	adds r7, #0x72
	ldrh r4, [r7]
	ldr r6, _08036FAC @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r7]
	movs r3, #0x6e
	add r3, sl
	mov sb, r3
	ldrh r4, [r3]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r6, sb
	strh r4, [r6]
	ldrh r0, [r7]
	mov r1, sl
	strh r0, [r1, #0x38]
	mov r0, sl
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r1, #0x3a]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #0x28]
	ldrh r1, [r2, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	ldr r3, [sp, #0x8c]
	ldr r1, [r3, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldr r4, [sp, #0x8c]
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x94]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x94]
	adds r0, #6
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #0x94]
	adds r0, #7
	strb r0, [r1, #0x1e]
	movs r0, #8
	ldr r1, [sp, #0xc4]
	strb r0, [r1]
	bl sub_08033DF4
	bl sub_08038924
	bl sub_08038980
	bl sub_08038A44
	bl sub_08007544
	ldr r2, [sp, #0xbc]
	str r2, [sp, #0xc8]
	ldr r3, [sp, #0xc0]
	str r3, [sp, #0xcc]
	mov r4, r8
	str r4, [sp, #0xd0]
	cmp r0, #0
	bne _08036F98
	bl sub_080075AC
	cmp r0, #0
	bne _08036F98
	ldr r5, _08036FB0 @ =gPlayers
	movs r4, #0xd4
_08036F64:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _08036F64
	bl GetMultiplayerId
	ldr r5, _08036FB0 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	strh r1, [r0, #0xa]
_08036F98:
	ldr r0, [sp, #0xdc]
	movs r1, #0x33
	bl sub_0802934C
	b _08036FB8
	.align 2, 0
_08036FA4: .4byte 0x030063D8
_08036FA8: .4byte gMapLayer_03003910
_08036FAC: .4byte 0x080FB740
_08036FB0: .4byte gPlayers
_08036FB4:
	bl WaitFrame
_08036FB8:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _08036FB4
	ldr r6, _08036FF8 @ =0x0000FFFF
	str r6, [sp, #0x98]
	movs r0, #1
	str r0, [sp, #0x9c]
	movs r1, #0
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xac]
	mov r4, r8
	ldr r3, [sp, #0xd8]
	strh r4, [r3]
	ldr r6, [sp, #0xd4]
	strh r4, [r6]
	movs r0, #0
	str r0, [sp, #0xb8]

	thumb_func_start sub_08036FDC
sub_08036FDC: @ 0x08036FDC
	bl sub_080271D0
	cmp r0, #0
	beq _08036FE6
	b _08037508
_08036FE6:
	mov r1, r8
	cmp r1, #0x10
	bls _08036FEE
	b _08037508
_08036FEE:
	lsls r0, r1, #2
	ldr r1, _08036FFC @ =_08037000
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08036FF8: .4byte 0x0000FFFF
_08036FFC: .4byte _08037000
_08037000: @ jump table
	.4byte _08037044 @ case 0
	.4byte _08037050 @ case 1
	.4byte _08037088 @ case 2
	.4byte _080370D0 @ case 3
	.4byte _08037106 @ case 4
	.4byte _08037110 @ case 5
	.4byte _08037174 @ case 6
	.4byte _08037188 @ case 7
	.4byte _080371BC @ case 8
	.4byte _080371D8 @ case 9
	.4byte _08037252 @ case 10
	.4byte _08037260 @ case 11
	.4byte _080372AE @ case 12
	.4byte _080372C8 @ case 13
	.4byte _08037302 @ case 14
	.4byte _08037322 @ case 15
	.4byte _0803734A @ case 16
_08037044:
	movs r2, #1
	mov r8, r2
	movs r0, #0
	str r0, [sp, #0x84]
	str r0, [sp, #0x88]
	b _0803710A
_08037050:
	add r0, sp, #0x84
	movs r2, #0x7d
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0xb4]
	bl Lerp1024
	add r0, sp, #0x88
	movs r1, #0
	movs r2, #0xdc
	ldr r3, [sp, #0xb4]
	bl Lerp1024
	ldr r4, [sp, #0xb4]
	adds r4, #8
	str r4, [sp, #0xb4]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bgt _0803707A
	b _08037508
_0803707A:
	movs r6, #2
	mov r8, r6
	ldr r0, [sp, #0xdc]
	movs r1, #0x34
	bl sub_0802934C
	b _08037508
_08037088:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _08037090
	b _08037508
_08037090:
	bl sub_08007510
	cmp r0, #0
	bne _080370BE
	bl sub_08007544
	cmp r0, #0
	bne _080370BE
	bl sub_080075AC
	cmp r0, #0
	bne _080370BE
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080370CC @ =0x00090079
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
_080370BE:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _08037508
	.align 2, 0
_080370CC: .4byte 0x00090079
_080370D0:
	bl sub_08007510
	cmp r0, #0
	bne _080370FA
	bl sub_08007544
	cmp r0, #0
	bne _080370FA
	bl sub_080075AC
	cmp r0, #0
	bne _080370FA
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	bne _080370F4
	b _08037508
_080370F4:
	movs r0, #4
	mov r8, r0
	b _080370FE
_080370FA:
	movs r1, #4
	mov r8, r1
_080370FE:
	mov r0, sl
	bl sub_080389DC
	b _08037508
_08037106:
	movs r2, #5
	mov r8, r2
_0803710A:
	movs r3, #0
	str r3, [sp, #0xb4]
	b _08037508
_08037110:
	add r0, sp, #0x84
	movs r1, #0x7d
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0xb4]
	bl Lerp1024
	add r0, sp, #0x88
	movs r1, #0xdc
	movs r2, #0
	ldr r3, [sp, #0xb4]
	bl Lerp1024
	ldr r4, [sp, #0xb4]
	adds r4, #8
	str r4, [sp, #0xb4]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _0803713E
	mov r0, sl
	bl sub_080389DC
_0803713E:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r6, [sp, #0xb4]
	cmp r6, r0
	bgt _0803714A
	b _08037508
_0803714A:
	bl GetMultiplayerId
	ldr r2, _0803716C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08037170 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
	movs r0, #6
	mov r8, r0
	b _08037508
	.align 2, 0
_0803716C: .4byte gPlayers
_08037170: .4byte 0x0000FFFE
_08037174:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _0803717C
	b _08037508
_0803717C:
	movs r1, #7
	mov r8, r1
	movs r0, #0x12
	mov r2, sl
	str r0, [r2, #0x5c]
	b _08037508
_08037188:
	ldr r1, _080371B8 @ =0x080FBD00
	ldr r3, [sp, #0xb8]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r8, r0
	movs r4, #0
	str r4, [sp, #0xac]
	ldr r6, [sp, #0xd8]
	strh r4, [r6]
	add r0, sp, #0xac
	ldrh r1, [r0]
	ldr r0, [sp, #0xd4]
	strh r1, [r0]
	adds r3, #1
	str r3, [sp, #0xb8]
	cmp r3, #6
	ble _080371B0
	movs r1, #0
	str r1, [sp, #0xb8]
_080371B0:
	movs r2, #0
	str r2, [sp, #0xa8]
	b _08037508
	.align 2, 0
_080371B8: .4byte 0x080FBD00
_080371BC:
	movs r1, #0
	movs r0, #1
	ldr r3, [sp, #0xc8]
	strh r0, [r3]
	ldr r4, [sp, #0xd0]
	strh r1, [r4]
	ldr r6, [sp, #0xcc]
	strh r1, [r6]
	mov r0, sl
	adds r0, #0x4e
	strh r1, [r0]
	movs r0, #9
	mov r8, r0
	b _08037508
_080371D8:
	mov r0, sl
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803722E
	bl sub_080076A8
	cmp r0, #0
	beq _0803721A
	ldr r0, [sp, #0xa8]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xa8]
	cmp r0, #3
	bls _08037204
	movs r2, #6
	mov r8, r2
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
	b _08037226
_08037204:
	movs r3, #8
	mov r8, r3
	movs r4, #0
	str r4, [sp, #0xac]
	ldr r6, [sp, #0xd8]
	strh r4, [r6]
	add r0, sp, #0xac
	ldrh r1, [r0]
	ldr r0, [sp, #0xd4]
	strh r1, [r0]
	b _08037226
_0803721A:
	movs r1, #6
	mov r8, r1
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
_08037226:
	mov r2, sl
	ldr r0, [r2, #0x2c]
	adds r0, #1
	str r0, [r2, #0x2c]
_0803722E:
	bl sub_08007544
	cmp r0, #0
	bne _0803724C
	ldr r3, [sp, #0xcc]
	ldrh r0, [r3]
	cmp r0, #1
	bne _0803724C
	bl sub_080075AC
	cmp r0, #0
	bne _0803724C
	movs r0, #0x2c
	bl PlaySE
_0803724C:
	movs r4, #0
	str r4, [sp, #0x9c]
	b _08037508
_08037252:
	ldr r6, [sp, #0xac]
	cmp r6, #0
	bne _0803725A
	b _08037508
_0803725A:
	movs r0, #0xb
	mov r8, r0
	b _080372BE
_08037260:
	mov r0, sl
	movs r1, #0
	bl sub_08038AA0
	mov r0, sl
	movs r1, #1
	bl sub_08038AA0
	mov r0, sl
	movs r1, #2
	bl sub_08038AA0
	bl sub_080076A8
	cmp r0, #0
	beq _080372A8
	ldr r0, [sp, #0xa8]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xa8]
	cmp r0, #3
	bls _08037292
	movs r3, #6
	mov r8, r3
	b _08037340
_08037292:
	movs r4, #0xa
	mov r8, r4
	movs r6, #0
	str r6, [sp, #0xac]
	ldr r0, [sp, #0xd8]
	strh r6, [r0]
	add r1, sp, #0xac
	ldrh r2, [r1]
	ldr r1, [sp, #0xd4]
	strh r2, [r1]
	b _08037508
_080372A8:
	movs r2, #6
	mov r8, r2
	b _08037340
_080372AE:
	ldr r3, [sp, #0xac]
	cmp r3, #0
	bne _080372B6
	b _08037508
_080372B6:
	movs r4, #0xd
	mov r8, r4
	movs r6, #0
	str r6, [sp, #0xb0]
_080372BE:
	mov r1, sl
	ldr r0, [r1, #0x2c]
	adds r0, #1
	str r0, [r1, #0x2c]
	b _08037508
_080372C8:
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xa
	bhi _080372D8
	b _08037508
_080372D8:
	movs r2, #0
	str r2, [sp, #0xb0]
	mov r0, sl
	bl sub_080388D0
	movs r3, #0xe
	mov r8, r3
	bl sub_08007544
	cmp r0, #0
	beq _080372F0
	b _08037508
_080372F0:
	bl sub_080075AC
	cmp r0, #0
	beq _080372FA
	b _08037508
_080372FA:
	movs r0, #0x39
	bl PlaySE
	b _08037508
_08037302:
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xa
	bhi _08037312
	b _08037508
_08037312:
	movs r4, #0
	str r4, [sp, #0xb0]
	mov r0, sl
	bl sub_080388D0
	movs r6, #0xf
	mov r8, r6
	b _08037508
_08037322:
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xa
	bhi _08037332
	b _08037508
_08037332:
	movs r0, #0
	str r0, [sp, #0xb0]
	mov r0, sl
	bl sub_080388D0
	movs r1, #6
	mov r8, r1
_08037340:
	ldr r0, [sp, #0xdc]
	movs r1, #0x35
	bl sub_0802934C
	b _08037508
_0803734A:
	bl sub_08016FA0
	cmp r0, #0
	beq _08037354
	b _080374BC
_08037354:
	bl sub_080271D0
	cmp r0, #0
	beq _0803735E
	b _080374BC
_0803735E:
	bl sub_08007544
	cmp r0, #0
	beq _08037368
	b _080374BC
_08037368:
	bl sub_08007510
	cmp r0, #0
	beq _08037372
	b _080374BC
_08037372:
	bl sub_080075AC
	cmp r0, #0
	beq _0803737C
	b _080374BC
_0803737C:
	bl sub_080076E0
	cmp r0, #0
	beq _08037386
	b _080374BC
_08037386:
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	beq _080373B8
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	bl FadeOutBGM
	bl GetMultiplayerId
	ldr r2, _080374B4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080374B8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	bl sub_080077AC
_080373B8:
	movs r0, #0xf
	ldr r2, [sp, #0xa8]
	ands r0, r2
	adds r2, #1
	str r2, [sp, #0xa8]
	cmp r0, #0
	beq _080373C8
	b _08037508
_080373C8:
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080373DE
	adds r0, #0xf
_080373DE:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08037400
	adds r1, #0x1f
_08037400:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803742C
	adds r0, #0xf
_0803742C:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803744E
	adds r1, #0x1f
_0803744E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803747A
	adds r0, #0xf
_0803747A:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803749C
	adds r1, #0x1f
_0803749C:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	b _08037508
	.align 2, 0
_080374B4: .4byte gPlayers
_080374B8: .4byte 0x0000FFFE
_080374BC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	bl FadeOutBGM
	bl sub_08016FA0
	cmp r0, #0
	bne _08037508
	bl sub_08007544
	cmp r0, #0
	bne _08037508
	bl sub_08007510
	cmp r0, #0
	bne _08037508
	bl sub_080075AC
	cmp r0, #0
	bne _08037508
	bl sub_080076E0
	cmp r0, #0
	bne _08037508
	bl GetMultiplayerId
	ldr r2, _080375A8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _080375AC @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_08037508:
	mov r1, sl
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bne _080375BC
	movs r2, #0x14
	str r2, [sp, #0x98]
	ldrh r3, [r1, #0x28]
	str r3, [sp, #0xa0]
	movs r4, #0
	str r4, [sp, #0xa4]
	mov r0, sl
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080375B4
	bl sub_08016FA0
	cmp r0, #0
	bne _08037586
	bl sub_080271D0
	cmp r0, #0
	bne _08037586
	bl sub_08007544
	cmp r0, #0
	bne _08037586
	bl sub_08007510
	cmp r0, #0
	bne _08037586
	bl sub_080075AC
	cmp r0, #0
	bne _08037586
	bl sub_080076E0
	cmp r0, #0
	bne _08037586
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080375B0 @ =0x0009007A
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
	bl GetMultiplayerId
	ldr r2, _080375A8 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007798
_08037586:
	mov r6, sl
	ldrh r3, [r6, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	movs r0, #0x10
	mov r8, r0
	movs r0, #8
	strh r0, [r6, #0xa]
	b _080375BC
	.align 2, 0
_080375A8: .4byte gPlayers
_080375AC: .4byte 0x0000FFFE
_080375B0: .4byte 0x0009007A
_080375B4:
	add r1, sp, #0xa4
	ldrh r2, [r1]
	mov r1, sl
	strh r2, [r1, #0xa]
_080375BC:
	ldr r0, [sp, #0x98]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x98]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08037620
	ldr r2, [sp, #0xa0]
	cmp r2, #0
	beq _08037620
	bl sub_08007544
	cmp r0, #0
	bne _08037604
	bl sub_08007510
	cmp r0, #0
	bne _08037604
	bl sub_08007604
	cmp r0, #0
	bne _08037604
	bl sub_080075AC
	cmp r0, #0
	bne _08037604
	ldr r4, [sp, #0xa4]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0xa0]
	bl sub_0800EA74
_08037604:
	movs r0, #2
	ldr r6, [sp, #0x98]
	ands r0, r6
	cmp r0, #0
	beq _08037624
	ldr r1, [sp, #0xa4]
	lsls r0, r1, #0x10
	ldr r2, _0803761C @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	b _08037624
	.align 2, 0
_0803761C: .4byte 0xFFFF0000
_08037620:
	ldr r3, _08037988 @ =0x0000FFFF
	str r3, [sp, #0x98]
_08037624:
	mov r4, r8
	cmp r4, #9
	bne _08037710
	bl GetMultiplayerId
	mov r6, sl
	ldr r4, [r6, #0x10]
	asrs r4, r4, #0xc
	ldr r6, _0803798C @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	mov r1, sl
	ldr r2, [r1, #0x14]
	asrs r2, r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08037710
	ldr r2, [sp, #0xcc]
	ldrh r0, [r2]
	cmp r0, #2
	bne _08037710
	cmp r4, #0x31
	bhi _08037710
	bl GetMultiplayerId
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r7, r6, #0
	adds r7, #0x80
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _08037710
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	bne _080376A8
	b _0803787A
_080376A8:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08037710
	bl sub_08007544
	cmp r0, #0
	bne _08037710
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _08037990 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	mov r0, sl
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	mov r6, sl
	ldrh r1, [r6]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r6, #0x2c]
	str r0, [r1]
_08037710:
	mov r1, sl
	ldrh r0, [r1, #0xa]
	cmp r0, #8
	bne _0803771A
	b _0803787A
_0803771A:
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x84]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08005F60
	mov r2, sl
	ldr r0, [r2, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r2, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r3, sl
	ldr r0, [r3, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x30
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0xc8]
	ldrh r1, [r0]
	ldr r2, [sp, #0x9c]
	str r2, [sp]
	add r0, sp, #0x10
	ldr r2, [sp, #0xcc]
	ldr r3, [sp, #0xd0]
	bl sub_08026C40
	mov r1, sl
	adds r1, #0x4e
	strh r0, [r1]
	mov r3, r8
	cmp r3, #0xc
	bne _08037796
	str r6, [sp]
	add r0, sp, #0x10
	movs r1, #0xb
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
_08037796:
	mov r4, r8
	cmp r4, #0xa
	bne _080377B0
	str r6, [sp]
	add r0, sp, #0x10
	movs r1, #0xa
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
_080377B0:
	bl sub_08007510
	cmp r0, #0
	bne _0803787A
	bl sub_08007604
	cmp r0, #0
	bne _0803787A
	bl sub_08007544
	cmp r0, #0
	bne _0803787A
	bl sub_080075AC
	cmp r0, #0
	bne _0803787A
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldr r6, [sp, #0x8c]
	ldrh r2, [r6, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	mov r0, r8
	cmp r0, #3
	beq _080377FE
	bl sub_080077C0
	cmp r0, #0
	bne _080377FE
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
_080377FE:
	add r7, sp, #0x78
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xc8]
	ldrh r2, [r3]
	ldr r4, [sp, #0xcc]
	ldrh r3, [r4]
	mov r6, sb
	str r6, [sp]
	add r6, sp, #0x2c
	str r6, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	mov r0, r8
	cmp r0, #0xc
	bne _0803784E
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp, #0xd4]
	ldrh r3, [r4]
	movs r2, #0
	str r2, [sp]
	str r6, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xb
	bl sub_08004344
_0803784E:
	mov r0, r8
	cmp r0, #0xa
	bne _0803787A
	add r2, sp, #0x78
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r4, #0x7a
	add r4, sp
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r2, [sp, #0xd4]
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	str r6, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08004344
_0803787A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080378B0
	bl sub_080074CC
	cmp r0, #0
	bne _080378B0
	ldr r0, _08037994 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080378B0
	bl sub_08007578
	cmp r0, #0
	bne _080378B0
	mov r3, r8
	cmp r3, #0x11
	beq _080378B0
	bl sub_08036FDC
_080378B0:
	bl sub_080292D0
	mov r4, sl
	ldrh r3, [r4, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	bl sub_08038948
	bl sub_080389A4
	bl sub_08038A68
	ldr r1, _08037998 @ =gActiveEnemyMask
	mov r6, sl
	ldrh r6, [r6]
	lsls r4, r6
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	ldr r0, [sp, #0x94]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _08037942
	ldr r4, _0803798C @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08037942
	ldr r0, _0803799C @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _08037942
	bl sub_08007544
	cmp r0, #0
	bne _08037942
	bl sub_08007510
	cmp r0, #0
	bne _08037942
	bl sub_08007604
	cmp r0, #0
	bne _08037942
	bl sub_080075AC
	cmp r0, #0
	bne _08037942
	bl sub_080076E0
	cmp r0, #0
	bne _08037942
	ldr r0, _080379A0 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_08037942:
	bl sub_08007750
	cmp r0, #0
	beq _0803794C
	b _08037A72
_0803794C:
	bl sub_080074CC
	cmp r0, #0
	beq _08037956
	b _08037A72
_08037956:
	ldr r4, _08037994 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037968
	b _08037A72
_08037968:
	bl sub_08007578
	cmp r0, #0
	beq _08037972
	b _08037A72
_08037972:
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	mov r1, sl
	ldrh r0, [r1, #0x36]
	cmp r0, #0
	beq _08037A72
	ldr r4, _080379A4 @ =0x03003D94
	b _080379A8
	.align 2, 0
_08037988: .4byte 0x0000FFFF
_0803798C: .4byte gPlayers
_08037990: .4byte 0x0000FFFE
_08037994: .4byte 0x030063D8
_08037998: .4byte gActiveEnemyMask
_0803799C: .4byte gUnknown_030064D8
_080379A0: .4byte gMapLayer_03003910
_080379A4: .4byte 0x03003D94
_080379A8:
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _080379D4
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080379D4
	ldr r3, _08037B28 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080379D4
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_080379D4:
	ldr r4, _08037B2C @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x8c]
	bl CalcExpGain
	str r0, [sp, #0x9c]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x9c]
	bl AddExp
	adds r5, r0, #0
	movs r4, #0x13
	ldr r6, _08037B30 @ =0x0000FFFF
_08037A02:
	mov r1, sl
	ldr r0, [r1, #0x14]
	ldr r2, _08037B34 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r1, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _08037A38
	bl sub_08007510
	cmp r0, #0
	bne _08037A38
	bl sub_080075AC
	cmp r0, #0
	bne _08037A38
	ldr r0, _08037B38 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08037A38
	mov r0, sl
	ldr r1, [sp, #0x9c]
	bl sub_08024320
_08037A38:
	bl WaitFrame
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bne _08037A02
	cmp r5, #0
	beq _08037A72
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _08037B2C @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_08037A72:
	bl sub_08007750
	cmp r0, #0
	bne _08037B10
	bl sub_080074CC
	cmp r0, #0
	bne _08037B10
	ldr r4, _08037B3C @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037B10
	bl sub_08007578
	cmp r0, #0
	bne _08037B10
	ldr r0, _08037B40 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08037B44 @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08037AFA
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08037AFA
	ldr r2, _08037B48 @ =gPlayerStats
	ldr r4, _08037B4C @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08037B50 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08037AFA:
	bl sub_0800F53C
	ldr r4, _08037B54 @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08037B10
	ldr r0, [r4]
	bl KillThread
_08037B10:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xe0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037B28: .4byte 0x00000157
_08037B2C: .4byte gPlayers
_08037B30: .4byte 0x0000FFFF
_08037B34: .4byte 0xFFFFFE00
_08037B38: .4byte gMapLayer_03003910
_08037B3C: .4byte 0x030063D8
_08037B40: .4byte 0x00000BB8
_08037B44: .4byte gUnknown_03003D08
_08037B48: .4byte gPlayerStats
_08037B4C: .4byte 0x00000272
_08037B50: .4byte 0x00000275
_08037B54: .4byte gUnknownThreadPtr_030063E4

	thumb_func_start sub_08037B58
sub_08037B58: @ 0x08037B58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r7, r0, #0
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	adds r0, r7, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x15
	movs r2, #3
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r1, sp
	adds r1, #0x31
	movs r0, #8
	strb r0, [r1]
	ldr r1, [r7, #0x10]
	mov sb, r1
	ldr r2, [r7, #0x14]
	mov r8, r2
	movs r3, #0x78
	str r3, [sp, #0x48]
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0x4c]
	b _08037D46
_08037BB6:
	ldr r1, _08037D84 @ =0x0805289C
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #7
	add sb, r0
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #7
	add r8, r0
	bl GetMultiplayerId
	mov r3, sb
	asrs r4, r3, #0xc
	ldr r6, _08037D88 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	mov r1, r8
	asrs r2, r1, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _08037CA6
	cmp r4, #0xb
	bhi _08037CA6
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	movs r2, #0x80
	adds r2, r2, r6
	mov sl, r2
	add r1, sl
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _08037CA6
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _08037CA6
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08037CA6
	bl sub_08007544
	cmp r0, #0
	bne _08037CA6
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _08037D8C @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r0, r7, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sl
	ldr r0, [r7, #0x2c]
	str r0, [r1]
_08037CA6:
	bl sub_08007510
	cmp r0, #0
	bne _08037D1A
	bl sub_08007604
	cmp r0, #0
	bne _08037D1A
	bl sub_08007544
	cmp r0, #0
	bne _08037D1A
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08037D1A
	mov r0, sb
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	asrs r4, r1, #0xc
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r6, sp
	adds r6, #0x46
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0x4c]
	adds r3, r6, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	ldr r3, [sp, #0x4c]
	movs r1, #0
	ldrsh r2, [r3, r1]
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0xc
	movs r3, #2
	bl sub_08004344
_08037D1A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08037D66
	bl sub_080074CC
	cmp r0, #0
	bne _08037D66
	ldr r0, _08037D90 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037D66
	bl sub_08007578
	cmp r0, #0
	bne _08037D66
_08037D46:
	ldr r1, [sp, #0x48]
	lsls r0, r1, #0x10
	ldr r2, _08037D94 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x48]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08037D66
	bl sub_08007544
	cmp r0, #0
	bne _08037D66
	b _08037BB6
_08037D66:
	movs r0, #0x39
	bl StopSE
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037D84: .4byte 0x0805289C
_08037D88: .4byte gPlayers
_08037D8C: .4byte 0x0000FFFE
_08037D90: .4byte 0x030063D8
_08037D94: .4byte 0xFFFF0000

	thumb_func_start sub_08037D98
sub_08037D98: @ 0x08037D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	str r0, [sp, #0x5c]
	adds r6, r1, #0
	ldr r0, _08037E9C @ =0x00040022
	movs r1, #0
	bl sub_0800CAC0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08037EA0 @ =0x00100023
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x20
	movs r2, #0
	bl sub_08026ADC
	adds r0, r4, #0
	adds r0, #0x15
	ldr r1, [sp, #0x5c]
	adds r1, #0x7e
	ldrh r2, [r1]
	lsls r2, r2, #5
	ldr r1, [sp, #0x2c]
	adds r1, r1, r2
	movs r2, #1
	bl LoadPalette
	add r0, sp, #0x20
	adds r4, #5
	movs r5, #0
	strb r4, [r0, #0x1c]
	ldr r0, [sp, #0x5c]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x5c]
	ldr r1, [r1, #0x14]
	mov sl, r1
	ldr r1, _08037EA4 @ =gEnemies
	movs r0, #0x94
	muls r0, r6, r0
	adds r0, #0x94
	ldr r1, [r1]
	adds r7, r1, r0
	ldr r2, _08037EA8 @ =gActiveEnemyMask
	adds r4, r6, #1
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r0, #0xfe
	subs r0, r0, r6
	strh r0, [r7, #2]
	ldr r2, [sp, #0x5c]
	ldr r0, [r2, #0x10]
	str r0, [r7, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r7, #0x14]
	ldr r0, _08037EAC @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r5, [r7, #8]
	strh r5, [r7, #0xa]
	strh r5, [r7, #0xc]
	strh r5, [r7, #0x28]
	strh r5, [r7, #0x2a]
	str r5, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	adds r0, r2, #0
	adds r0, #0x64
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r3, r6}
	stm r1!, {r3, r6}
	adds r1, r7, #0
	adds r1, #0x87
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x38]
	strh r5, [r7, #0x3a]
	adds r0, r7, #0
	adds r0, #0x48
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	strh r4, [r7]
	strh r5, [r7, #0xa]
	movs r0, #0
	str r0, [sp, #0x74]
	mov r2, sp
	adds r2, #0x56
	strh r0, [r2]
	add r1, sp, #0x54
	add r3, sp, #0x74
	ldrh r3, [r3]
	strh r3, [r1]
	movs r4, #2
	str r4, [sp, #0x68]
	movs r6, #1
	str r6, [sp, #0x78]
	str r0, [sp, #0x88]
	movs r3, #0
	str r3, [sp, #0x84]
	ldr r4, _08037EB0 @ =0x0000FFFF
	str r4, [sp, #0x7c]
	adds r6, #0xff
	str r6, [sp, #0x8c]
	b _080385D2
	.align 2, 0
_08037E9C: .4byte 0x00040022
_08037EA0: .4byte 0x00100023
_08037EA4: .4byte gEnemies
_08037EA8: .4byte gActiveEnemyMask
_08037EAC: .4byte gMapLayer_03003910
_08037EB0: .4byte 0x0000FFFF
_08037EB4:
	bl sub_08007510
	cmp r0, #0
	bne _08037ECA
	bl sub_08007604
	cmp r0, #0
	bne _08037ECA
	adds r0, r7, #0
	bl sub_0800E49C
_08037ECA:
	bl GetMultiplayerId
	ldr r5, [r7, #0x10]
	asrs r5, r5, #0xc
	ldr r4, _08037F20 @ =gPlayers
	movs r6, #0xd4
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r5, r5, r0
	bl GetMultiplayerId
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	muls r0, r6, r0
	adds r4, #0x5c
	adds r0, r0, r4
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r1, r1, r0
	adds r0, r5, #0
	muls r0, r5, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bls _08037F14
	b _080382AC
_08037F14:
	lsls r0, r0, #2
	ldr r1, _08037F24 @ =_08037F28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08037F20: .4byte gPlayers
_08037F24: .4byte _08037F28
_08037F28: @ jump table
	.4byte _08037F4C @ case 0
	.4byte _08037FCE @ case 1
	.4byte _08038224 @ case 2
	.4byte _080382AC @ case 3
	.4byte _080382AC @ case 4
	.4byte _080382AC @ case 5
	.4byte _080382AC @ case 6
	.4byte _08038236 @ case 7
	.4byte _0803827E @ case 8
_08037F4C:
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	adds r4, r0, #0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08037F88 @ =gPlayers
	movs r2, #0xd4
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #8
	str r4, [sp]
	bl sub_0800C9EC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08037F8C
	movs r0, #1
	strh r0, [r7, #0xa]
	b _080382AC
	.align 2, 0
_08037F88: .4byte gPlayers
_08037F8C:
	cmp r5, #0x20
	bls _08037F92
	b _080382AC
_08037F92:
	ldr r1, [sp, #0x88]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	cmp r1, #0xb4
	bhi _08037FA2
	b _080382AC
_08037FA2:
	ldrh r0, [r7, #8]
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x78]
	movs r4, #0
	str r4, [sp, #0x74]
	movs r0, #2
	strh r0, [r7, #0xa]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r6, #0x56
	add r6, sp
	strh r4, [r6]
	add r0, sp, #0x74
	ldrh r0, [r0]
	add r1, sp, #0x54
	strh r0, [r1]
	b _080382AC
_08037FCE:
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	adds r4, r0, #0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _08038010 @ =gPlayers
	movs r2, #0xd4
	muls r2, r4, r2
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #8
	str r4, [sp]
	bl sub_0800C9EC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08038014
	movs r2, #5
	str r2, [sp, #0x64]
	b _08038020
	.align 2, 0
_08038010: .4byte gPlayers
_08038014:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038020
	movs r3, #1
	str r3, [sp, #0x64]
_08038020:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08038042
	ldr r4, [sp, #0x64]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r6, #4
	str r6, [sp, #0x64]
	cmp r0, #5
	beq _08038064
	movs r2, #3
	str r2, [sp, #0x64]
	cmp r0, #1
	bne _08038064
	movs r3, #2
	b _08038062
_08038042:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08038064
	ldr r4, [sp, #0x64]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r6, #6
	str r6, [sp, #0x64]
	cmp r0, #5
	beq _08038064
	movs r2, #7
	str r2, [sp, #0x64]
	cmp r0, #1
	bne _08038064
	movs r3, #8
_08038062:
	str r3, [sp, #0x64]
_08038064:
	cmp r1, #0
	bne _0803806C
	strh r1, [r7, #0xa]
	b _080382AC
_0803806C:
	ldr r4, [sp, #0x64]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r0, #1
	strh r1, [r7, #8]
	adds r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	cmp r0, #0x17
	bls _08038084
	b _080381DE
_08038084:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r6, [sp, #0x8c]
	cmp r6, r0
	beq _08038090
	b _080381DE
_08038090:
	ldr r1, [r7, #0x10]
	str r1, [r7, #0x18]
	ldr r0, [r7, #0x14]
	str r0, [r7, #0x1c]
	str r1, [sp, #0x60]
	mov sl, r0
	bl sub_080076A8
	cmp r0, #0
	beq _080380C0
	ldr r3, _080380B8 @ =0x080FB5D0
	movs r0, #8
	ldrsh r1, [r7, r0]
	lsls r1, r1, #3
	adds r0, r1, r3
	ldr r2, _080380BC @ =0x080FB5AC
	ldr r0, [r0]
	ldr r2, [r2, #0x10]
	b _080380D0
	.align 2, 0
_080380B8: .4byte 0x080FB5D0
_080380BC: .4byte 0x080FB5AC
_080380C0:
	ldr r3, _0803812C @ =0x080FB5D0
	movs r6, #8
	ldrsh r1, [r7, r6]
	lsls r1, r1, #3
	adds r0, r1, r3
	ldr r2, _08038130 @ =0x080FB5AC
	ldr r0, [r0]
	ldr r2, [r2, #8]
_080380D0:
	muls r0, r2, r0
	ldr r4, [sp, #0x60]
	adds r4, r4, r0
	str r4, [sp, #0x60]
	adds r3, #4
	adds r1, r1, r3
	ldr r0, [r1]
	muls r0, r2, r0
	add sl, r0
	movs r6, #8
	ldrsh r0, [r7, r6]
	ldr r1, [sp, #0x60]
	mov r2, sl
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0x64]
	cmp r0, #0
	beq _080381DE
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r7, #8]
	ldr r2, [r7, #0x10]
	str r2, [sp, #0x60]
	ldr r3, [r7, #0x14]
	mov sl, r3
	bl sub_080076A8
	cmp r0, #0
	beq _08038134
	ldr r3, _0803812C @ =0x080FB5D0
	movs r4, #8
	ldrsh r1, [r7, r4]
	lsls r1, r1, #3
	adds r0, r1, r3
	ldr r2, _08038130 @ =0x080FB5AC
	ldr r0, [r0]
	ldr r2, [r2, #0x10]
	muls r0, r2, r0
	ldr r6, [sp, #0x60]
	adds r6, r6, r0
	str r6, [sp, #0x60]
	b _0803814C
	.align 2, 0
_0803812C: .4byte 0x080FB5D0
_08038130: .4byte 0x080FB5AC
_08038134:
	ldr r3, _080381A8 @ =0x080FB5D0
	movs r0, #8
	ldrsh r1, [r7, r0]
	lsls r1, r1, #3
	adds r0, r1, r3
	ldr r2, _080381AC @ =0x080FB5AC
	ldr r0, [r0]
	ldr r2, [r2, #8]
	muls r0, r2, r0
	ldr r4, [sp, #0x60]
	adds r4, r4, r0
	str r4, [sp, #0x60]
_0803814C:
	adds r3, #4
	adds r1, r1, r3
	ldr r0, [r1]
	muls r0, r2, r0
	add sl, r0
	movs r6, #8
	ldrsh r0, [r7, r6]
	ldr r1, [sp, #0x60]
	mov r2, sl
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0x64]
	cmp r0, #0
	beq _080381DE
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r7, #8]
	bl sub_080076A8
	cmp r0, #0
	beq _080381B0
	ldr r2, _080381A8 @ =0x080FB5D0
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r3, _080381AC @ =0x080FB5AC
	ldr r1, [r0]
	ldr r0, [r3, #0x10]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r4, #8
	ldrsh r0, [r7, r4]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r3, #0x10]
	b _080381D6
	.align 2, 0
_080381A8: .4byte 0x080FB5D0
_080381AC: .4byte 0x080FB5AC
_080381B0:
	ldr r2, _0803821C @ =0x080FB5D0
	movs r6, #8
	ldrsh r0, [r7, r6]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r3, _08038220 @ =0x080FB5AC
	ldr r1, [r0]
	ldr r0, [r3, #8]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r1, #8
	ldrsh r0, [r7, r1]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r3, #8]
_080381D6:
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_080381DE:
	cmp r5, #0x20
	bhi _080382AC
	ldr r1, [sp, #0x88]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	cmp r1, #0xb4
	bls _080382AC
	ldrh r0, [r7, #8]
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	movs r2, #0
	str r2, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x74]
	movs r0, #2
	strh r0, [r7, #0xa]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r4, #0x56
	add r4, sp
	strh r3, [r4]
	add r6, sp, #0x74
	ldrh r6, [r6]
	add r0, sp, #0x54
	strh r6, [r0]
	b _080382AC
	.align 2, 0
_0803821C: .4byte 0x080FB5D0
_08038220: .4byte 0x080FB5AC
_08038224:
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne _080382AC
	strh r0, [r7, #0xa]
	movs r2, #1
	str r2, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x88]
	b _080382AC
_08038236:
	ldr r0, [sp, #0x68]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08038266
	ldrh r4, [r7, #8]
	adds r0, r4, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	movs r6, #0
	str r6, [sp, #0x74]
	movs r0, #0
	str r0, [sp, #0x78]
	add r1, sp, #0x54
	strh r6, [r1]
	add r2, sp, #0x74
	ldrh r2, [r2]
	movs r3, #0x56
	add r3, sp
	strh r2, [r3]
	b _080382AC
_08038266:
	movs r3, #0
	str r3, [sp, #0x78]
	ldr r4, [sp, #0x74]
	cmp r4, #0
	beq _080382AC
	strh r3, [r7, #0xa]
	add r0, sp, #0x78
	ldrh r0, [r0]
	strh r0, [r7, #0x28]
	movs r1, #1
	str r1, [sp, #0x78]
	b _080382AC
_0803827E:
	ldr r2, [sp, #0x74]
	cmp r2, #0
	beq _080382AC
	ldr r0, [sp, #0x84]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x84]
	movs r1, #0x96
	lsls r1, r1, #2
	cmp r0, r1
	bls _080382AC
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x38]
	movs r3, #0
	str r3, [sp, #0x84]
	strh r3, [r7, #0x2a]
	add r6, sp, #0x84
	ldrh r6, [r6]
	strh r6, [r7, #0x28]
_080382AC:
	bl sub_08001F64
	cmp r0, #0
	beq _080382DC
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _080382DC
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	beq _080382DC
	ldr r1, [sp, #0x80]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	cmp r1, #0x1e
	bls _080382DC
	adds r0, r7, #0
	bl sub_080273DC
	cmp r0, #0
	beq _080382DC
	movs r0, #0
	str r0, [sp, #0x80]
_080382DC:
	bl sub_08007670
	cmp r0, #0
	bne _0803838A
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0803838A
	add r1, sp, #0x54
	ldrh r0, [r1]
	cmp r0, #2
	bne _0803838A
	cmp r5, #0x17
	bhi _0803838A
	ldr r5, _08038428 @ =gPlayers
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	movs r4, #0xd4
	muls r0, r4, r0
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _0803838A
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0803838A
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0803838A
	bl sub_08007544
	cmp r0, #0
	bne _0803838A
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r4, r0, r5
	movs r0, #7
	strh r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x70
	ldr r0, _0803842C @ =0x0000FFFE
	strh r0, [r1]
	adds r0, r7, #0
	adds r1, r4, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r7, #0x2c]
	str r0, [r1]
	movs r3, #0
	movs r6, #3
	movs r5, #0x96
	lsls r5, r5, #1
	adds r2, r4, #0
	adds r2, #0x24
_0803836E:
	ldr r1, [r4, #0x1c]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0
	beq _0803837E
	cmp r1, #3
	bne _08038382
_0803837E:
	strh r6, [r0]
	strh r5, [r2]
_08038382:
	adds r2, #2
	adds r3, #1
	cmp r3, #2
	bls _0803836E
_0803838A:
	add r3, sp, #0x54
	mov sb, r3
	ldr r4, [sp, #0x78]
	str r4, [sp]
	add r0, sp, #0x20
	ldr r1, [sp, #0x68]
	mov r2, sb
	mov r3, sp
	adds r3, #0x56
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	bl sub_08007510
	cmp r0, #0
	beq _080383B0
	b _080384D0
_080383B0:
	bl sub_08007604
	cmp r0, #0
	beq _080383BA
	b _080384D0
_080383BA:
	bl sub_08007544
	cmp r0, #0
	beq _080383C4
	b _080384D0
_080383C4:
	bl sub_080075AC
	mov r8, r0
	cmp r0, #0
	beq _080383D0
	b _080384D0
_080383D0:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x58
	mov r5, sp
	adds r5, #0x5a
	movs r2, #0x30
	str r2, [sp]
	mov r6, r8
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r1, [sp, #0x60]
	asrs r0, r1, #0xc
	mov r2, sl
	asrs r1, r2, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r2, #0
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _0803845E
	ldr r0, [sp, #0x8c]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	ldr r0, _08038430 @ =0x000009FF
	ldr r3, [sp, #0x8c]
	cmp r3, r0
	bls _08038434
	movs r4, #0xa0
	lsls r4, r4, #4
	str r4, [sp, #0x8c]
	b _080384D0
	.align 2, 0
_08038428: .4byte gPlayers
_0803842C: .4byte 0x0000FFFE
_08038430: .4byte 0x000009FF
_08038434:
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r4, sb
	ldrh r3, [r4]
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	ldr r2, [sp, #0x20]
	str r2, [sp, #0xc]
	ldr r6, [sp, #0x8c]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r2, r8
	str r2, [sp, #0x18]
	b _080384A4
_0803845E:
	ldr r0, [sp, #0x8c]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	cmp r0, #0xff
	bhi _08038472
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x8c]
_08038472:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x8c]
	cmp r1, r0
	bls _080384B0
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r6, sb
	ldrh r3, [r6]
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	ldr r2, [sp, #0x20]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x8c]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r6, r8
	str r6, [sp, #0x18]
_080384A4:
	movs r2, #1
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x68]
	bl sub_080039C8
	b _080384D0
_080384B0:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	add r4, sp, #0x54
	ldrh r3, [r4]
	str r6, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	ldr r2, [sp, #0x20]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x68]
	bl sub_08004344
_080384D0:
	ldr r6, [sp, #0x5c]
	ldrh r0, [r6, #0x38]
	cmp r0, #0
	bne _080384DA
	strh r0, [r7, #0x38]
_080384DA:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _08038536
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0x2a]
	cmp r0, r1
	beq _080384F4
	movs r2, #0x14
	str r2, [sp, #0x7c]
	ldrh r3, [r7, #0x2a]
	str r3, [sp, #0x70]
	movs r4, #0
	str r4, [sp, #0x6c]
_080384F4:
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038536
	ldrh r3, [r7, #2]
	movs r4, #0
	str r4, [sp]
	movs r5, #1
	str r5, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_080076A8
	cmp r0, #0
	beq _08038524
	movs r6, #0x96
	lsls r6, r6, #1
	str r6, [sp, #0x84]
_08038524:
	movs r0, #8
	strh r0, [r7, #0xa]
	strh r5, [r7, #0x38]
	strh r4, [r7, #0x2a]
	strh r4, [r7, #0x28]
	movs r0, #0
	str r0, [sp, #0x78]
	movs r1, #0
	str r1, [sp, #0x74]
_08038536:
	ldr r0, [sp, #0x7c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x7c]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803859C
	ldr r2, [sp, #0x70]
	cmp r2, #0
	bne _0803855C
	ldr r3, _08038558 @ =0x0000FFFF
	str r3, [sp, #0x7c]
	b _080385A6
	.align 2, 0
_08038558: .4byte 0x0000FFFF
_0803855C:
	bl sub_08007544
	cmp r0, #0
	bne _08038586
	bl sub_08007510
	cmp r0, #0
	bne _08038586
	bl sub_08007604
	cmp r0, #0
	bne _08038586
	bl sub_080075AC
	cmp r0, #0
	bne _08038586
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	ldr r2, [sp, #0x6c]
	bl sub_0800EA74
_08038586:
	movs r0, #2
	ldr r4, [sp, #0x7c]
	ands r0, r4
	cmp r0, #0
	beq _080385A6
	ldr r0, [sp, #0x6c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	b _080385A6
_0803859C:
	ldr r6, _08038610 @ =0x0000FFFF
	str r6, [sp, #0x7c]
	movs r0, #0
	str r0, [sp, #0x70]
	strh r0, [r7, #0x2a]
_080385A6:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080385DA
	bl sub_080074CC
	cmp r0, #0
	bne _080385DA
	ldr r0, _08038614 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080385DA
	bl sub_08007578
	cmp r0, #0
	bne _080385DA
_080385D2:
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	beq _080385DA
	b _08037EB4
_080385DA:
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #7
	bl sub_08033E6C
	ldr r2, _08038618 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038610: .4byte 0x0000FFFF
_08038614: .4byte 0x030063D8
_08038618: .4byte gActiveEnemyMask

	thumb_func_start sub_0803861C
sub_0803861C: @ 0x0803861C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sb, r0
	str r1, [sp, #0x58]
	add r5, sp, #0x44
	ldr r1, _08038684 @ =0x08054948
	adds r0, r5, #0
	movs r2, #6
	bl memcpy
	add r4, sp, #0x4c
	ldr r1, _08038688 @ =0x0805494E
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	ldr r1, _0803868C @ =0x00100020
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #0xe
	strb r0, [r1, #0x1c]
	mov r0, sb
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x5c]
	mov r1, sb
	ldr r1, [r1, #0x14]
	mov sl, r1
	movs r2, #0x78
	str r2, [sp, #0x60]
	bl sub_08007544
	cmp r0, #0
	beq _08038672
	b _0803888A
_08038672:
	bl sub_080075AC
	cmp r0, #0
	beq _0803867C
	b _0803888A
_0803867C:
	movs r0, #0x56
	bl PlaySE
	b _0803888A
	.align 2, 0
_08038684: .4byte 0x08054948
_08038688: .4byte 0x0805494E
_0803868C: .4byte 0x00100020
_08038690:
	bl sub_080076A8
	cmp r0, #0
	beq _080386CC
	ldr r3, [sp, #0x58]
	lsls r2, r3, #1
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _080386C8 @ =0x0805289C
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #6
	ldr r3, [sp, #0x5c]
	adds r3, r3, r0
	str r3, [sp, #0x5c]
	lsls r1, r1, #1
	ldr r0, _080386C8 @ =0x0805289C
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #6
	b _080386FA
	.align 2, 0
_080386C8: .4byte 0x0805289C
_080386CC:
	ldr r0, [sp, #0x58]
	lsls r2, r0, #1
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _080388BC @ =0x0805289C
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	ldr r3, [sp, #0x5c]
	adds r3, r3, r0
	str r3, [sp, #0x5c]
	lsls r1, r1, #1
	ldr r0, _080388BC @ =0x0805289C
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #5
_080386FA:
	add sl, r0
	str r2, [sp, #0x6c]
	bl GetMultiplayerId
	ldr r1, [sp, #0x5c]
	asrs r6, r1, #0xc
	ldr r2, _080388C0 @ =gPlayers
	mov r8, r2
	movs r7, #0xd4
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r3, sl
	asrs r5, r3, #0xc
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x64]
	str r5, [sp, #0x68]
	cmp r0, #0
	bne _080387DE
	cmp r4, #0x11
	bhi _080387DE
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r5, r8
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	beq _080387DE
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _080387DE
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080387DE
	bl sub_08007544
	cmp r0, #0
	bne _080387DE
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r7, r0
	add r0, r8
	adds r0, #0x70
	ldr r1, _080388C4 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	mov r0, sb
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x2c]
	str r0, [r1]
_080387DE:
	bl sub_08007510
	cmp r0, #0
	bne _0803885E
	bl sub_08007604
	cmp r0, #0
	bne _0803885E
	bl sub_08007544
	cmp r0, #0
	bne _0803885E
	bl sub_080075AC
	adds r6, r0, #0
	cmp r6, #0
	bne _0803885E
	ldr r1, [sp, #0x1c]
	movs r0, #0x1e
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x64]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x68]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x54
	mov r5, sp
	adds r5, #0x56
	movs r2, #0x30
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	movs r2, #0
	bl sub_08006008
	movs r1, #0
	ldrsh r3, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r2, [sp, #0x6c]
	add r2, sp
	adds r2, #0x4c
	ldrh r2, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r3, #0
	movs r3, #2
	bl sub_08004344
_0803885E:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _080388A2
	bl sub_080074CC
	cmp r0, #0
	bne _080388A2
	ldr r0, _080388C8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080388A2
	bl sub_08007578
	cmp r0, #0
	bne _080388A2
_0803888A:
	ldr r3, [sp, #0x60]
	lsls r0, r3, #0x10
	ldr r1, _080388CC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x60]
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080388A2
	b _08038690
_080388A2:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080388BC: .4byte 0x0805289C
_080388C0: .4byte gPlayers
_080388C4: .4byte 0x0000FFFE
_080388C8: .4byte 0x030063D8
_080388CC: .4byte 0xFFFF0000

	thumb_func_start sub_080388D0
sub_080388D0: @ 0x080388D0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080388DC @ =gUnknown_03000064
	ldr r4, [r0]
	movs r1, #0
	b _080388E8
	.align 2, 0
_080388DC: .4byte gUnknown_03000064
_080388E0:
	adds r1, #1
	adds r4, #0x28
	cmp r1, #2
	bhi _08038918
_080388E8:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080388E0
	cmp r1, #2
	bhi _08038918
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08038920 @ =sub_08037B58
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateThread
_08038918:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038920: .4byte sub_08037B58
