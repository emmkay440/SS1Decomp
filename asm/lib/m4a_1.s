@ m4a (MusicPlayer2000) sound engine, assembly part

	.include "asm/macros.inc"

	.syntax unified
	.text

	arm_func_start __umul3232H32
__umul3232H32: @ 0x0804FAAC
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x0804FAB8
	ldr r0, _0804FB24 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _0804FB28 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _0804FAC6
	bx lr
_0804FAC6:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _0804FAEA
	ldr r2, _0804FB30 @ =REG_VCOUNT
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _0804FAE8
	adds r2, #0xe4
_0804FAE8:
	adds r1, r1, r2
_0804FAEA:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _0804FAFA
	ldr r0, [r0, #0x24]
	bl sub_0804FE66
	ldr r0, [sp, #0x18]
_0804FAFA:
	ldr r3, [r0, #0x28]
	bl sub_0804FE66
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _0804FB34 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _0804FB1A
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_0804FB1A:
	str r5, [sp, #8]
	ldr r6, _0804FB38 @ =0x00000630
	ldr r3, _0804FB2C @ =0x030018C5
	bx r3
	.align 2, 0
_0804FB24: .4byte 0x03007FF0
_0804FB28: .4byte 0x68736D53
_0804FB2C: .4byte 0x030018C5
_0804FB30: .4byte REG_VCOUNT
_0804FB34: .4byte 0x00000350
_0804FB38: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x0804FB3C
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_0804FB88
	add r1, pc, #0x4 @ =SoundMainRAM_Reverb
	bx r1
	.align 2, 0

	arm_func_start SoundMainRAM_Reverb
SoundMainRAM_Reverb: @ 0x0804FB48
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_0804FB58:
	ldrsb r0, [r5]
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #8
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _0804FB58
	add r0, pc, #0x1F @ =sub_0804FBA6
	bx r0

	thumb_func_start sub_0804FB88
sub_0804FB88: @ 0x0804FB88
	movs r0, #0
	mov r1, r8
	lsrs r1, r1, #3
	blo _0804FB92
	stm r5!, {r0}
_0804FB92:
	lsrs r1, r1, #1
	blo _0804FB9A
	stm r5!, {r0}
	stm r5!, {r0}
_0804FB9A:
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	subs r1, #1
	bgt _0804FB9A

	non_word_aligned_thumb_func_start sub_0804FBA6
sub_0804FBA6: @ 0x0804FBA6
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_0804FBB0:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0804FBD0
	ldr r1, _0804FBCC @ =REG_VCOUNT
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _0804FBC4
	adds r1, #0xe4
_0804FBC4:
	cmp r1, r0
	blo _0804FBD0
	b _0804FE52
	.align 2, 0
_0804FBCC: .4byte REG_VCOUNT
_0804FBD0:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0804FBDA
	b sub_0804FE48
_0804FBDA:
	movs r0, #0x80
	tst r0, r6
	beq _0804FC0A
	movs r0, #0x40
	tst r0, r6
	bne _0804FC1A
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _0804FC62
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _0804FC62
_0804FC0A:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _0804FC20
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _0804FC70
_0804FC1A:
	movs r0, #0
	strb r0, [r4]
	b sub_0804FE48
_0804FC20:
	movs r0, #0x40
	tst r0, r6
	beq _0804FC40
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _0804FC70
_0804FC32:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _0804FC1A
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _0804FC70
_0804FC40:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _0804FC5E
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _0804FC70
	adds r5, r0, #0
	beq _0804FC32
	subs r6, #1
	strb r6, [r4]
	b _0804FC70
_0804FC5E:
	cmp r2, #3
	bne _0804FC70
_0804FC62:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _0804FC70
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_0804FC70:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _0804FCA0
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_0804FCA0:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_0804FCAC
	bx r0
	.align 2, 0

	arm_func_start sub_0804FCAC
sub_0804FCAC: @ 0x0804FCAC
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	lsl sl, sl, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _0804FDB4
_0804FCC4:
	cmp r2, #4
	ble sub_0804FD20
	subs r2, r2, r8
	movgt lr, #0
	bgt _0804FCF0
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_0804FCF0:
_0804FCF0:
	.byte 0x00, 0x60

	non_word_aligned_thumb_func_start sub_0804FCF2
sub_0804FCF2: @ 0x0804FCF2
	b _0804F820
_0804FCF4:
	.byte 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x66, 0x64, 0x81, 0xE0, 0x01, 0x51, 0x95, 0xE2, 0xF9, 0xFF, 0xFF, 0x3A, 0x04, 0x60, 0x85, 0xE4
	.byte 0x04, 0x80, 0x58, 0xE2, 0xF5, 0xFF, 0xFF, 0xCA, 0x0E, 0x80, 0x98, 0xE0, 0x44, 0x00, 0x00, 0x0A

	arm_func_start sub_0804FD20
sub_0804FD20: @ 0x0804FD20
	ldr r6, [r5]
_0804FD24:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	subs r2, r2, #1
	beq _0804FD84
_0804FD3C:
	adds r5, r5, #0x40000000
	blo _0804FD24
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0804FCC4
	b _0804FE34
_0804FD54:
	.byte 0x18, 0x00, 0x9D, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x05, 0x00, 0x00, 0x0A
	.byte 0x14, 0x30, 0x9D, 0xE5, 0x00, 0x90, 0x62, 0xE2, 0x02, 0x20, 0x90, 0xE0, 0x25, 0x00, 0x00, 0xCA
	.byte 0x00, 0x90, 0x49, 0xE0, 0xFB, 0xFF, 0xFF, 0xEA, 0x10, 0x10, 0xBD, 0xE8, 0x00, 0x20, 0xA0, 0xE3
	.byte 0x03, 0x00, 0x00, 0xEA
_0804FD84:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _0804FD3C
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	str r6, [r5], #4
	b _0804FE3C
_0804FDB4:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0804FDD0:
	ldr r6, [r5]
_0804FDD4:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq sub_0804FE14
	bic lr, lr, #0x3f800000

	thumb_func_start sub_0804FDF8
sub_0804FDF8: @ 0x0804FDF8
	movs r0, #9
	b _0804FEA2
_0804FDFC:
	.byte 0xD4, 0xFF, 0xFF, 0xDA
	.byte 0x01, 0x90, 0x59, 0xE2, 0x01, 0x00, 0x80, 0x00, 0xD9, 0x00, 0xB3, 0x11, 0xD1, 0x10, 0xF3, 0xE1
	.byte 0x00, 0x10, 0x41, 0xE0

	arm_func_start sub_0804FE14
sub_0804FE14: @ 0x0804FE14
	adds r5, r5, #0x40000000
	blo _0804FDD4
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0804FDD0
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_0804FE34:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_0804FE3C:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_0804FE48
	bx r0

	thumb_func_start sub_0804FE48
sub_0804FE48: @ 0x0804FE48
	ldr r0, [sp, #4]
	subs r0, #1
	ble _0804FE52
	adds r4, #0x40
	b _0804FBB0
_0804FE52:
	ldr r0, [sp, #0x18]
	ldr r3, _0804FE68 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_0804FE66
sub_0804FE66: @ 0x0804FE66
	bx r3
	.align 2, 0
_0804FE68: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x0804FE6C
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start RealClearChain
RealClearChain: @ 0x0804FE84
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _0804FEA2
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _0804FE96
	str r1, [r2, #0x34]
	b _0804FE98
_0804FE96:
	str r1, [r3, #0x20]
_0804FE98:
	cmp r1, #0
	beq _0804FE9E
	str r2, [r1, #0x30]
_0804FE9E:
	movs r1, #0
	str r1, [r0, #0x2c]
_0804FEA2:
	bx lr
_0804FEA4:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0804FEC8
_0804FEAE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0804FEBC
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_0804FEBC:
	adds r0, r4, #0
	bl RealClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0804FEAE
_0804FEC8:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x0804FED4
	mov ip, lr
	movs r1, #0x24
	ldr r2, _0804FF04 @ =0x0805496C
_0804FEDA:
	ldr r3, [r2]
	bl _0804FEEE
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0804FEDA
	bx ip
	.align 2, 0

	thumb_func_start sub_0804FEEC
sub_0804FEEC: @ 0x0804FEEC
	ldrb r3, [r2]
_0804FEEE:
	push {r0}
	lsrs r0, r2, #0x19
	bne _0804FF00
	ldr r0, _0804FF04 @ =0x0805496C
	cmp r2, r0
	blo _0804FEFE
	lsrs r0, r2, #0xe
	beq _0804FF00
_0804FEFE:
	movs r3, #0
_0804FF00:
	pop {r0}
	bx lr
	.align 2, 0
_0804FF04: .4byte 0x0805496C

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x0804FF08
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_0804FF0A
sub_0804FF0A: @ 0x0804FF0A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _0804FEEE
	.align 2, 0
_0804FF14:
	push {lr}
_0804FF16:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_0804FEEC
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x0804FF34
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _0804FF4C
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _0804FF14
_0804FF4C:
	b _0804FEA4
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x0804FF50
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _0804FF62
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_0804FF62:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x0804FF64
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _0804FF74
	adds r2, #1
	str r2, [r1, #0x40]
	b _0804FF16
_0804FF74:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _0804FF86
	b _0804FF16
_0804FF86:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x0804FF94
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x0804FFA0
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x0804FFB4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x0804FFC8
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _0804FEEE
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _0804FEEE
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _0804FEEE
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x0804FFF8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x0805000C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x08050020
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x08050034
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x08050048
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x08050054
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _0805006A
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_0805006A:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x0805006C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x08050080
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08050094 @ =REG_SOUND1CNT_L
	adds r0, r0, r3
	bl sub_0804FF0A
	strb r3, [r0]
	bx ip
	.align 2, 0
_08050094: .4byte REG_SOUND1CNT_L

	thumb_func_start m4aSoundVSync
m4aSoundVSync: @ 0x08050098
	ldr r0, _08050334 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _08050338 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _080500CA
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _080500CA
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _080500CC @ =REG_DMA1SAD
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _080500BE
	ldr r1, _080500D0 @ =0x84400004
	str r1, [r2, #8]
_080500BE:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
_080500CA:
	bx lr
	.align 2, 0
_080500CC: .4byte REG_DMA1SAD
_080500D0: .4byte 0x84400004

	thumb_func_start MPlayMain
MPlayMain: @ 0x080500D4
	ldr r2, _08050338 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _080500DE
	bx lr
_080500DE:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _080500F0
	ldr r0, [r0, #0x3c]
	bl sub_0805032C
_080500F0:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08050108
	b _0805031C
_08050108:
	ldr r0, _08050334 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0805011C
	b _0805031C
_0805011C:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _0805026C
_08050124:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_0805012C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _08050136
	b _08050248
_08050136:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0805016A
_08050142:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0805015E
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08050164
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08050164
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08050164
_0805015E:
	adds r0, r4, #0
	bl ClearChain
_08050164:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08050142
_0805016A:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _080501E8
	adds r0, r5, #0
	bl Clear64byte
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _080501E8
_08050190:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _0805019C
	ldrb r1, [r5, #7]
	b _080501A6
_0805019C:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _080501A6
	strb r1, [r5, #7]
_080501A6:
	cmp r1, #0xcf
	blo _080501BC
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0805032C
	b _080501E8
_080501BC:
	cmp r1, #0xb0
	bls _080501DE
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0805032C
	ldrb r0, [r5]
	cmp r0, #0
	beq _08050244
	b _080501E8
_080501DE:
	ldr r0, _08050330 @ =0x08054BE0
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_080501E8:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08050190
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08050244
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08050244
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0805020A
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08050244
_0805020A:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _0805021E
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08050222
_0805021E:
	movs r0, #0x80
	subs r2, r0, r1
_08050222:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08050244
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _0805023E
	movs r1, #0xc
	b _08050240
_0805023E:
	movs r1, #3
_08050240:
	orrs r0, r1
	strb r0, [r5]
_08050244:
	mov r3, sl
	mov r4, fp
_08050248:
	subs r6, #1
	ble _08050254
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _0805012C
_08050254:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08050266
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _0805031C
_08050266:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_0805026C:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08050274
	b _08050124
_08050274:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08050278:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08050312
	movs r1, #0xf
	tst r1, r0
	beq _08050312
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08050308
_08050296:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _080502A6
	adds r0, r4, #0
	bl ClearChain
	b _08050302
_080502A6:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _080502C4
	bl ChnVolSetAsm
	cmp r6, #0
	beq _080502C4
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080502C4:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08050302
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _080502D8
	movs r2, #0
_080502D8:
	cmp r6, #0
	beq _080502F6
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_0805032C
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08050302
_080502F6:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_08050302:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08050296
_08050308:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08050312:
	subs r2, #1
	ble _0805031C
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08050278
_0805031C:
	ldr r0, _08050338 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_0805032C
sub_0805032C: @ 0x0805032C
	bx r3
	.align 2, 0
_08050330: .4byte 0x08054BE0
_08050334: .4byte 0x03007FF0
_08050338: .4byte 0x68736D53

	thumb_func_start TrackStop
TrackStop: @ 0x0805033C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08050374
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08050372
	movs r6, #0
_08050350:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805036A
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08050368
	ldr r3, _0805037C @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_0805032C
_08050368:
	strb r6, [r4]
_0805036A:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08050350
_08050372:
	str r4, [r5, #0x20]
_08050374:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805037C: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x08050380
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08050398
	movs r0, #0xff
_08050398:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080503AC
	movs r0, #0xff
_080503AC:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note
ply_note: @ 0x080503B0
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _080505A8 @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _080505AC @ =0x08054BE0
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080503F6
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080503F4
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080503F4
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080503F4:
	str r3, [r5, #0x40]
_080503F6:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08050448
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08050416
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08050418
_08050416:
	adds r0, r3, #0
_08050418:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _08050430
	b _08050596
_08050430:
	movs r0, #0x80
	tst r0, r2
	beq _0805044C
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08050444
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08050444:
	ldrb r3, [r6, #1]
	b _0805044C
_08050448:
	mov sb, r4
	ldrb r3, [r5, #5]
_0805044C:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _0805045C
	movs r0, #0xff
_0805045C:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _0805049C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08050474
	b _08050596
_08050474:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080504F0
	movs r0, #0x40
	tst r0, r1
	bne _080504F0
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080504F0
	beq _08050494
	b _08050596
_08050494:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080504F0
	b _08050596
_0805049C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_080504AA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080504F0
	movs r0, #0x40
	tst r0, r1
	beq _080504C4
	cmp r2, #0
	bne _080504C8
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080504E2
_080504C4:
	cmp r2, #0
	bne _080504E4
_080504C8:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080504D4
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080504E2
_080504D4:
	bhi _080504E4
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080504E0
	adds r7, r0, #0
	b _080504E2
_080504E0:
	blo _080504E4
_080504E2:
	mov r8, r4
_080504E4:
	adds r4, #0x40
	subs r3, #1
	bgt _080504AA
	mov r4, r8
	cmp r4, #0
	beq _08050596
_080504F0:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08050504
	str r4, [r3, #0x30]
_08050504:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _08050516
	adds r1, r5, #0
	bl clear_modM
_08050516:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08050550
	movs r3, #0
_08050550:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0805057E
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0805056A
	movs r0, #0x70
	tst r0, r1
	bne _0805056C
_0805056A:
	movs r1, #8
_0805056C:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_0805032C
	b _08050588
_0805057E:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_08050588:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08050596:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_080505A8: .4byte 0x03007FF0
_080505AC: .4byte 0x08054BE0

	thumb_func_start ply_endtie
ply_endtie: @ 0x080505B0
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080505C2
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080505C4
_080505C2:
	ldrb r3, [r1, #5]
_080505C4:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080505EC
	movs r4, #0x83
	movs r5, #0x40
_080505CE:
	ldrb r2, [r1]
	tst r2, r4
	beq _080505E6
	tst r2, r5
	bne _080505E6
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080505E6
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _080505EC
_080505E6:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080505CE
_080505EC:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x080505F0
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08050600
	movs r2, #0xc
	b _08050602
_08050600:
	movs r2, #3
_08050602:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_unchecked
ld_r3_tp_adr_i_unchecked: @ 0x0805060C
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos
ply_lfos: @ 0x08050618
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08050628
	bl clear_modM
_08050628:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod
ply_mod: @ 0x0805062C
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _0805063C
	bl clear_modM
_0805063C:
	bx ip
	.align 2, 0
