	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080487B8
sub_080487B8: @ 0x080487B8
	push {lr}
	ldr r1, _080487D0 @ =gUnknown_03000768
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #8
	bhi _08048830
	lsls r0, r0, #2
	ldr r1, _080487D4 @ =_080487D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080487D0: .4byte gUnknown_03000768
_080487D4: .4byte _080487D8
_080487D8: @ jump table
	.4byte _080487FC @ case 0
	.4byte _08048802 @ case 1
	.4byte _08048808 @ case 2
	.4byte _0804880E @ case 3
	.4byte _08048814 @ case 4
	.4byte _0804881A @ case 5
	.4byte _08048820 @ case 6
	.4byte _08048826 @ case 7
	.4byte _0804882C @ case 8
_080487FC:
	bl sub_08048F38
	b _08048830
_08048802:
	bl sub_08049678
	b _08048830
_08048808:
	bl sub_08049DBC
	b _08048830
_0804880E:
	bl sub_0804A3F4
	b _08048830
_08048814:
	bl sub_0804AB7C
	b _08048830
_0804881A:
	bl sub_0804B4CC
	b _08048830
_08048820:
	bl sub_0804BB88
	b _08048830
_08048826:
	bl sub_0804C2E0
	b _08048830
_0804882C:
	bl sub_0804C9A4
_08048830:
	pop {r0}
	bx r0

	thumb_func_start sub_08048834
sub_08048834: @ 0x08048834
	push {r4, r5, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _080488C8 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _080488CC @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0x10
	bl GetDataRecord
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _080488D0 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r4, #0
	bl Free
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _080488E8
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _080488D8
	ldr r1, _080488D4 @ =0x06004000
	b _080488DC
	.align 2, 0
_080488C8: .4byte 0xFFFF0000
_080488CC: .4byte 0x00001F03
_080488D0: .4byte 0x0600F800
_080488D4: .4byte 0x06004000
_080488D8:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_080488DC:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	bl QueueCopy
	b _080488F6
_080488E8:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	bl QueueCopy
_080488F6:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _08048928 @ =0x03000778
	ldr r1, _0804892C @ =0x0010004C
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048928: .4byte 0x03000778
_0804892C: .4byte 0x0010004C

	thumb_func_start sub_08048930
sub_08048930: @ 0x08048930
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r6, #0
_0804893E:
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x3b
	bls _0804893E
	ldr r4, _08048A18 @ =0xFFC40000
_0804894E:
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048A1C @ =0x03000778
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r4, #4
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0x4f
	ble _0804894E
	movs r0, #5
	mov r8, r0
	movs r0, #0x68
	bl PlaySE
	movs r6, #0
_0804897E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r7, r5, #0x10
	asrs r4, r7, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048A1C @ =0x03000778
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	rsbs r4, r4, #0
	adds r4, #0x4e
	ldr r3, _08048A20 @ =gBgRegsBuffer
	strh r4, [r3, #0xe]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _0804897E
	movs r6, #0
	str r7, [sp, #8]
	movs r4, #0
_080489D2:
	cmp r6, #0x1e
	bne _080489DC
	movs r0, #0x66
	bl PlaySE
_080489DC:
	cmp r6, #0x50
	bne _080489E6
	movs r0, #0x66
	bl StopSE
_080489E6:
	adds r0, r6, #0
	subs r0, #0x1f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3a
	bhi _08048A42
	cmp r6, #0x3b
	bhi _08048A24
	str r4, [sp]
	adds r0, r6, #0
	subs r0, #0x1e
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _08048A42
	.align 2, 0
_08048A18: .4byte 0xFFC40000
_08048A1C: .4byte 0x03000778
_08048A20: .4byte gBgRegsBuffer
_08048A24:
	str r4, [sp]
	movs r0, #0x5a
	subs r0, r0, r6
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
_08048A42:
	str r4, [sp]
	ldr r0, _08048BE4 @ =0x03000778
	movs r1, #0x78
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x77
	bls _080489D2
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x37
	bl PlaySE
	movs r0, #0x67
	bl PlaySE
	movs r6, #0
	ldr r0, _08048BE8 @ =0x00002710
	mov r8, r0
	ldr r7, _08048BEC @ =gBgRegsBuffer
_08048A98:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08048AD4
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	strh r1, [r7, #0xe]
	lsrs r3, r0, #0x18
	mov sl, r3
	asrs r0, r0, #0x18
	strh r0, [r7, #0xc]
_08048AD4:
	bl sub_08048BF0
	mov r0, sl
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	mov r1, sb
	lsls r4, r1, #0x18
	asrs r4, r4, #0x18
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	movs r1, #0x78
	subs r1, r1, r5
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	subs r2, r2, r4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048BE4 @ =0x03000778
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xb3
	bls _08048A98
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r6, #0
	ldr r0, _08048BE8 @ =0x00002710
	mov r8, r0
	ldr r7, _08048BEC @ =gBgRegsBuffer
_08048B32:
	cmp r6, #0x2c
	bne _08048B3C
	movs r0, #6
	bl sub_0800F3A0
_08048B3C:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08048B78
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	strh r1, [r7, #0xe]
	lsrs r3, r0, #0x18
	mov sl, r3
	asrs r0, r0, #0x18
	strh r0, [r7, #0xc]
_08048B78:
	bl sub_08048BF0
	mov r0, sl
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	mov r1, sb
	lsls r4, r1, #0x18
	asrs r4, r4, #0x18
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	movs r1, #0x78
	subs r1, r1, r5
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	subs r2, r2, r4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048BE4 @ =0x03000778
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x3b
	bls _08048B32
	movs r0, #0x37
	bl StopSE
	movs r0, #0x67
	bl StopSE
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048BE4: .4byte 0x03000778
_08048BE8: .4byte 0x00002710
_08048BEC: .4byte gBgRegsBuffer

	thumb_func_start sub_08048BF0
sub_08048BF0: @ 0x08048BF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08048C6C @ =gUnknown_03000770
	ldrb r1, [r0]
	cmp r1, #0x63
	bls _08048C06
	b _08048D80
_08048C06:
	movs r4, #0
	movs r5, #0
	cmp r5, r1
	bhs _08048C30
	ldr r0, _08048C70 @ =gUnknown_03000774
	ldr r2, [r0]
_08048C12:
	lsls r0, r5, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048C26
	cmp r0, #3
	beq _08048C26
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08048C26:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _08048C12
_08048C30:
	bl Random
	lsls r0, r0, #0x10
	movs r1, #0xfa
	lsls r1, r1, #0x16
	cmp r0, r1
	ble _08048CD2
	cmp r4, #9
	bhi _08048CD2
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08048C74
	ldr r3, _08048C6C @ =gUnknown_03000770
	ldrb r1, [r3]
	ldr r2, _08048C70 @ =gUnknown_03000774
	ldr r0, [r2]
	lsls r1, r1, #4
	adds r1, r1, r0
	movs r4, #0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	ldr r1, [r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	strh r4, [r0, #2]
	b _08048C90
	.align 2, 0
_08048C6C: .4byte gUnknown_03000770
_08048C70: .4byte gUnknown_03000774
_08048C74:
	ldr r3, _08048CA8 @ =gUnknown_03000770
	ldrb r0, [r3]
	ldr r2, _08048CAC @ =gUnknown_03000774
	ldr r1, [r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	ldrb r0, [r3]
	ldr r1, [r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xf0
	strh r1, [r0, #2]
_08048C90:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08048CB0
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x3c
	b _08048CBA
	.align 2, 0
_08048CA8: .4byte gUnknown_03000770
_08048CAC: .4byte gUnknown_03000774
_08048CB0:
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x78
_08048CBA:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08048D90 @ =gUnknown_03000770
	ldrb r0, [r2]
	ldr r1, _08048D94 @ =gUnknown_03000774
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	strh r3, [r0, #4]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08048CD2:
	movs r5, #0
	ldr r0, _08048D90 @ =gUnknown_03000770
	ldrb r1, [r0]
	cmp r5, r1
	bhs _08048D80
	ldr r2, _08048D94 @ =gUnknown_03000774
	mov r8, r2
	mov sl, r0
_08048CE2:
	mov r3, r8
	ldr r0, [r3]
	lsls r1, r5, #4
	adds r2, r1, r0
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r1
	adds r4, r5, #1
	mov sb, r4
	cmp r0, #1
	bhi _08048D72
	ldrh r6, [r2, #4]
	adds r2, r5, #0
	adds r3, r5, #0
	mov r7, sl
	ldrb r0, [r7]
	cmp r5, r0
	bhs _08048D40
	str r0, [sp, #0x10]
_08048D0C:
	cmp r5, r3
	beq _08048D34
	mov r0, r8
	ldr r1, [r0]
	lsls r0, r3, #4
	adds r4, r0, r1
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08048D34
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r7, #4
	ldrsh r1, [r4, r7]
	cmp r0, r1
	bge _08048D34
	ldrh r6, [r4, #4]
	adds r2, r3, #0
_08048D34:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r3, r0
	blo _08048D0C
_08048D40:
	cmp r2, r5
	beq _08048D72
	mov r1, r8
	ldr r3, [r1]
	lsls r2, r2, #4
	adds r2, r2, r3
	mov r1, sp
	adds r0, r2, #0
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	add r3, ip
	ldm r3!, {r0, r1, r7}
	stm r2!, {r0, r1, r7}
	ldr r0, [r3]
	str r0, [r2]
	mov r2, r8
	ldr r1, [r2]
	add r1, ip
	mov r0, sp
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
_08048D72:
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r5, r0, #0x18
	ldr r7, _08048D90 @ =gUnknown_03000770
	ldrb r7, [r7]
	cmp r5, r7
	blo _08048CE2
_08048D80:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048D90: .4byte gUnknown_03000770
_08048D94: .4byte gUnknown_03000774

	thumb_func_start sub_08048D98
sub_08048D98: @ 0x08048D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, _08048DF0 @ =gUnknown_03000774
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r5, _08048DF4 @ =0x03000778
	movs r0, #1
	mov sl, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r1, [sp, #0x1c]
	adds r1, #4
	str r1, [sp, #0x20]
	movs r1, #0xc
	adds r1, r1, r4
	mov r8, r1
	adds r7, r4, #6
	lsls r2, r2, #0x18
	asrs r6, r2, #0x18
_08048DCE:
	ldrb r0, [r4]
	adds r3, r4, #0
	adds r3, #8
	movs r2, #0xa
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #1
	bne _08048E7A
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08048DF8
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x4f
	ble _08048E02
	b _08048F10
	.align 2, 0
_08048DF0: .4byte gUnknown_03000774
_08048DF4: .4byte 0x03000778
_08048DF8:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x4f
	bgt _08048E02
	b _08048F10
_08048E02:
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	mov r0, sl
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #3
	adds r2, r7, #0
	bl sub_08026C40
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r0, [sp, #0x1c]
	subs r1, r1, r0
	movs r0, #4
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	ldrh r0, [r4, #6]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #3
	bl sub_08026B90
	mov r1, sl
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #4
	mov r2, sb
	mov r3, r8
	bl sub_08026C40
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldr r1, [sp, #0x20]
	subs r0, r0, r1
	movs r2, #4
	ldrsh r1, [r4, r2]
	subs r1, r1, r6
	ldrh r3, [r4, #0xa]
	movs r2, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	mov r2, sl
	str r2, [sp, #0x10]
	movs r2, #4
	bl sub_08003FA4
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, r0
	ble _08048F10
	b _08048F0C
_08048E7A:
	cmp r0, #2
	bne _08048F10
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _08048E8E
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x4f
	ble _08048E96
	b _08048F10
_08048E8E:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x4f
	ble _08048F10
_08048E96:
	ldrh r0, [r4, #2]
	subs r0, #4
	strh r0, [r4, #2]
	mov r2, sl
	str r2, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_08026C40
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r2, [sp, #0x1c]
	subs r1, r1, r2
	movs r0, #4
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	ldrh r0, [r4, #6]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
	mov r1, sl
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #2
	mov r2, sb
	mov r3, r8
	bl sub_08026C40
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldr r1, [sp, #0x20]
	subs r0, r0, r1
	movs r2, #4
	ldrsh r1, [r4, r2]
	subs r1, r1, r6
	ldrh r3, [r4, #0xa]
	movs r2, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	mov r2, sl
	str r2, [sp, #0x10]
	movs r2, #2
	bl sub_08003FA4
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08048F10
_08048F0C:
	movs r0, #3
	strb r0, [r4]
_08048F10:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	movs r1, #0x10
	add r8, r1
	adds r7, #0x10
	adds r4, #0x10
	cmp r0, #0x63
	bhi _08048F28
	b _08048DCE
_08048F28:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
