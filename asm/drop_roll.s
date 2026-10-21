	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08012AD0
sub_08012AD0: @ 0x08012AD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r4, _08012B00 @ =gUnknown_030063D8
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
_08012B00: .4byte gUnknown_030063D8
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
	ldr r0, _080130EC @ =gUnknown_030063D8
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
_080130EC: .4byte gUnknown_030063D8
_080130F0: .4byte 0x00007FFF
