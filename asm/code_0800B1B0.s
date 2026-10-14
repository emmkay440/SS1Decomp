	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800B1B0
sub_0800B1B0: @ 0x0800B1B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r2, #0
	ldr r0, _0800B3CC @ =gPlayerStats
	mov ip, r0
	movs r4, #0
_0800B1C4:
	movs r0, #0xd4
	muls r0, r2, r0
	ldr r3, _0800B3D0 @ =gPlayers
	adds r1, r0, r3
	strh r4, [r1]
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	strh r4, [r1, #0xa]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0xc]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x16]
	strh r4, [r1, #0x2c]
	strh r4, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	strh r4, [r1, #0x34]
	strh r4, [r1, #0x36]
	strh r4, [r1, #0x38]
	strh r4, [r1, #0x3a]
	adds r0, r1, #0
	adds r0, #0x48
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #6
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	adds r0, #0x2c
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	str r4, [r1, #0x58]
	str r4, [r1, #0x5c]
	str r4, [r1, #0x7c]
	adds r0, #0x2a
	strh r4, [r0]
	subs r0, #0x4e
	strh r4, [r0]
	adds r0, #0x78
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	movs r3, #0
	adds r2, #1
	str r2, [sp]
	subs r0, #0x50
_0800B226:
	stm r0!, {r4}
	adds r3, #1
	cmp r3, #4
	bls _0800B226
	movs r3, #0
	movs r0, #0x66
	add r0, ip
	mov sl, r0
	mov r7, ip
	adds r7, #0x80
	mov r1, ip
	adds r1, #0x7c
	str r1, [sp, #4]
	movs r0, #0x84
	add r0, ip
	mov r8, r0
	subs r1, #0x10
	str r1, [sp, #0xc]
	mov r0, ip
	adds r0, #0x40
	str r0, [sp, #8]
	movs r1, #0
	mov r0, ip
_0800B254:
	strh r1, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0xf
	bls _0800B254
	mov r1, ip
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x24]
	strh r4, [r1, #0x26]
	strh r4, [r1, #0x28]
	strh r4, [r1, #0x2a]
	strh r4, [r1, #0x2c]
	strh r4, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	strh r4, [r1, #0x3c]
	movs r3, #0
	movs r6, #0x71
	rsbs r6, r6, #0
	ldr r0, _0800B3D4 @ =0xFFFFC07F
	mov sb, r0
	mov r2, ip
	adds r2, #0x70
	movs r5, #0x41
	rsbs r5, r5, #0
_0800B286:
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r6
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, [r2]
	ldr r1, _0800B3D8 @ =0x00007FFF
	ands r0, r1
	stm r2!, {r0}
	lsls r0, r3, #1
	add r0, sl
	strh r4, [r0]
	adds r3, #1
	cmp r3, #2
	bls _0800B286
	movs r3, #0
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sl, r0
	movs r6, #0x71
	rsbs r6, r6, #0
	ldr r1, _0800B3D4 @ =0xFFFFC07F
	mov sb, r1
	movs r5, #0x41
	rsbs r5, r5, #0
	mov r2, ip
	adds r2, #0x88
_0800B2CE:
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	ands r0, r6
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, [r2]
	ldr r1, _0800B3D8 @ =0x00007FFF
	ands r0, r1
	stm r2!, {r0}
	adds r3, #1
	cmp r3, #0x18
	bls _0800B2CE
	movs r3, #0
	ldr r6, _0800B3DC @ =0xFFFF8000
	adds r5, r1, #0
	mov r2, ip
	adds r2, #0xec
_0800B300:
	ldrh r0, [r2]
	adds r1, r6, #0
	ands r1, r0
	strh r1, [r2]
	ldr r0, [r2]
	ands r0, r5
	stm r2!, {r0}
	adds r3, #1
	cmp r3, #0x3b
	bls _0800B300
	ldr r0, [r7]
	ldr r3, _0800B3D8 @ =0x00007FFF
	ands r0, r3
	str r0, [r7]
	ldrh r1, [r7]
	ldr r0, _0800B3DC @ =0xFFFF8000
	ands r0, r1
	strh r0, [r7]
	mov r1, ip
	ldr r0, [r1, #0x7c]
	ands r0, r3
	str r0, [r1, #0x7c]
	ldr r3, [sp, #4]
	ldrh r1, [r3]
	ldr r0, _0800B3DC @ =0xFFFF8000
	ands r0, r1
	strh r0, [r3]
	mov r1, r8
	ldr r0, [r1]
	ldr r3, _0800B3D8 @ =0x00007FFF
	ands r0, r3
	str r0, [r1]
	ldrh r1, [r1]
	ldr r0, _0800B3DC @ =0xFFFF8000
	ands r0, r1
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x9b
	lsls r0, r0, #2
	add r0, ip
	str r4, [r0]
	ldr r3, [sp, #0xc]
	strh r4, [r3]
	ldr r0, _0800B3E0 @ =gUnknown_03003F80
	ldrh r1, [r0]
	ldr r0, _0800B3E4 @ =0xFFFFFC00
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _0800B3E0 @ =gUnknown_03003F80
	strh r0, [r1]
	ldr r1, [r1]
	ldr r0, _0800B3E8 @ =0xFFF003FF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #4
	orrs r1, r0
	ldr r3, _0800B3E0 @ =gUnknown_03003F80
	str r1, [r3]
	ldr r0, _0800B3EC @ =0x03003F82
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	ldr r1, _0800B3EC @ =0x03003F82
	strh r0, [r1]
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, ip
	strb r4, [r0]
	ldr r3, _0800B3F0 @ =0x03003F85
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r0, [sp, #8]
	strh r4, [r0]
	movs r3, #0
	movs r1, #0
	mov r0, ip
	adds r0, #0x44
_0800B3A8:
	strh r1, [r0, #2]
	strh r1, [r0]
	adds r0, #4
	adds r3, #1
	cmp r3, #7
	bls _0800B3A8
	ldr r2, [sp]
	cmp r2, #3
	bhi _0800B3BC
	b _0800B1C4
_0800B3BC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B3CC: .4byte gPlayerStats
_0800B3D0: .4byte gPlayers
_0800B3D4: .4byte 0xFFFFC07F
_0800B3D8: .4byte 0x00007FFF
_0800B3DC: .4byte 0xFFFF8000
_0800B3E0: .4byte gUnknown_03003F80
_0800B3E4: .4byte 0xFFFFFC00
_0800B3E8: .4byte 0xFFF003FF
_0800B3EC: .4byte 0x03003F82
_0800B3F0: .4byte 0x03003F85
