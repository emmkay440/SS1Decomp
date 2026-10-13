	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800E74C
sub_0800E74C: @ 0x0800E74C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	ldr r3, _0800E77C @ =gEnemies
	ldr r5, [r3]
	ldr r2, _0800E780 @ =gActiveEnemyMask
	movs r1, #1
	b _0800E798
	.align 2, 0
_0800E77C: .4byte gEnemies
_0800E780: .4byte gActiveEnemyMask
_0800E784:
	adds r4, #1
	cmp r4, #4
	bhi _0800E7AA
	movs r0, #0x94
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r3]
	adds r5, r0, r1
	movs r1, #1
	lsls r1, r4
_0800E798:
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0800E784
	ldrh r0, [r5, #2]
	cmp r0, r7
	bne _0800E784
	cmp r4, #4
	bls _0800E834
_0800E7AA:
	movs r4, #0
	ldr r0, _0800E824 @ =gUnknown_03005DD4
	ldrh r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _0800E7CA
	ldr r1, _0800E828 @ =gUnknown_03004998
	ldr r0, [r1]
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, r7
	beq _0800E7F2
_0800E7CA:
	adds r4, #1
	cmp r4, #0xf
	bls _0800E7D2
	b _0800E914
_0800E7D2:
	ldrh r0, [r3]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E7CA
	ldr r2, _0800E828 @ =gUnknown_03004998
	ldr r1, [r2]
	lsls r0, r4, #4
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	adds r5, r2, #0
	cmp r0, r7
	bne _0800E7CA
_0800E7F2:
	cmp r4, #0xf
	bls _0800E7F8
	b _0800E914
_0800E7F8:
	ldr r2, [r5]
	lsls r3, r4, #4
	adds r2, r3, r2
	ldrb r0, [r2, #0xd]
	movs r1, #0x3f
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r0, [r5]
	adds r3, r3, r0
	ldrh r2, [r3, #0xe]
	lsls r1, r2, #0x11
	lsrs r1, r1, #0x17
	add r1, sb
	ldr r4, _0800E82C @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	lsls r1, r1, #6
	ldr r0, _0800E830 @ =0xFFFF803F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0xe]
	b _0800E914
	.align 2, 0
_0800E824: .4byte gUnknown_03005DD4
_0800E828: .4byte gUnknown_03004998
_0800E82C: .4byte 0x000001FF
_0800E830: .4byte 0xFFFF803F
_0800E834:
	mov r0, ip
	cmp r0, #0
	beq _0800E84E
	ldrh r0, [r5, #0xa]
	cmp r0, #8
	beq _0800E866
	ldrh r0, [r5, #0x38]
	strh r0, [r5, #0x28]
	movs r0, #7
	strh r0, [r5, #0xa]
	mov r4, r8
	strh r4, [r5, #0x34]
	b _0800E866
_0800E84E:
	ldrh r0, [r5, #0x28]
	add r0, sb
	strh r0, [r5, #0x28]
	movs r0, #7
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #0x38]
	ldrh r1, [r5, #0x28]
	subs r0, r0, r1
	cmp r0, #0
	bgt _0800E866
	mov r0, r8
	strh r0, [r5, #0x34]
_0800E866:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _0800E87C
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
_0800E87C:
	cmp r6, #0
	beq _0800E914
	bl sub_08007638
	cmp r0, #0
	bne _0800E914
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #5
	bhi _0800E914
	lsls r0, r6, #2
	ldr r1, _0800E89C @ =_0800E8A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E89C: .4byte _0800E8A0
_0800E8A0: @ jump table
	.4byte _0800E8B8 @ case 0
	.4byte _0800E8E8 @ case 1
	.4byte _0800E914 @ case 2
	.4byte _0800E8F8 @ case 3
	.4byte _0800E902 @ case 4
	.4byte _0800E90C @ case 5
_0800E8B8:
	lsls r0, r6, #1
	adds r4, r5, #0
	adds r4, #0x42
	adds r4, r4, r0
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r0, #0x78
	subs r0, r0, r1
	movs r1, #9
	bl __divsi3
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r4]
	adds r2, r5, #0
	adds r2, #0x40
	movs r0, #1
	lsls r0, r6
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	b _0800E914
_0800E8E8:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #1
	lsls r1, r6
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	b _0800E914
_0800E8F8:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	bl sub_08018290
	b _0800E914
_0800E902:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	bl sub_08018314
	b _0800E914
_0800E90C:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	bl sub_08018398
_0800E914:
	movs r0, #1
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800E924:
	.byte 0x02, 0x48, 0x00, 0x68, 0x00, 0x28, 0x00, 0xD0, 0x01, 0x20, 0x70, 0x47
	.byte 0xAC, 0x5D, 0x00, 0x03
