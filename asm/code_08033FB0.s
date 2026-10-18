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
	ldr r0, _08033FF0 @ =gUnknown_030063D8
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
_08033FF0: .4byte gUnknown_030063D8
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

_080341B6:
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
	ldr r0, _08034F00 @ =gUnknown_030063D8
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
	bl _080341B6
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
	ldr r4, _08034F00 @ =gUnknown_030063D8
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
	ldr r4, _08034F00 @ =gUnknown_030063D8
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
_08034F00: .4byte gUnknown_030063D8
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
	ldr r0, _080352B8 @ =gUnknown_030063D8
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
	ldr r0, _080352B8 @ =gUnknown_030063D8
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
_080352B8: .4byte gUnknown_030063D8
_080352BC: .4byte 0xFFFF0000
_080352C0: .4byte 0x0000FFFF
