	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080486C8
sub_080486C8: @ 0x080486C8
	push {lr}
	ldr r0, _080486DC @ =gUnknown_03000768
	ldrb r0, [r0]
	cmp r0, #8
	bhi _0804873C
	lsls r0, r0, #2
	ldr r1, _080486E0 @ =_080486E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080486DC: .4byte gUnknown_03000768
_080486E0: .4byte _080486E4
_080486E4: @ jump table
	.4byte _08048708 @ case 0
	.4byte _0804870E @ case 1
	.4byte _08048714 @ case 2
	.4byte _0804871A @ case 3
	.4byte _08048720 @ case 4
	.4byte _08048726 @ case 5
	.4byte _0804872C @ case 6
	.4byte _08048732 @ case 7
	.4byte _08048738 @ case 8
_08048708:
	bl sub_08048834
	b _0804873C
_0804870E:
	bl sub_08048F7C
	b _0804873C
_08048714:
	bl sub_080496CC
	b _0804873C
_0804871A:
	bl sub_08049E70
	b _0804873C
_08048720:
	bl sub_0804A4AC
	b _0804873C
_08048726:
	bl sub_0804AC1C
	b _0804873C
_0804872C:
	bl sub_0804B52C
	b _0804873C
_08048732:
	bl sub_0804BBA0
	b _0804873C
_08048738:
	bl sub_0804C37C
_0804873C:
	pop {r0}
	bx r0

	thumb_func_start sub_08048740
sub_08048740: @ 0x08048740
	push {lr}
	ldr r0, _08048754 @ =gUnknown_03000768
	ldrb r0, [r0]
	cmp r0, #8
	bhi _080487B4
	lsls r0, r0, #2
	ldr r1, _08048758 @ =_0804875C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048754: .4byte gUnknown_03000768
_08048758: .4byte _0804875C
_0804875C: @ jump table
	.4byte _08048780 @ case 0
	.4byte _08048786 @ case 1
	.4byte _0804878C @ case 2
	.4byte _08048792 @ case 3
	.4byte _08048798 @ case 4
	.4byte _0804879E @ case 5
	.4byte _080487A4 @ case 6
	.4byte _080487AA @ case 7
	.4byte _080487B0 @ case 8
_08048780:
	bl sub_08048930
	b _080487B4
_08048786:
	bl sub_08049088
	b _080487B4
_0804878C:
	bl sub_080497D8
	b _080487B4
_08048792:
	bl sub_0804A074
	b _080487B4
_08048798:
	bl sub_0804A5FC
	b _080487B4
_0804879E:
	bl sub_0804ADF0
	b _080487B4
_080487A4:
	bl sub_0804B660
	b _080487B4
_080487AA:
	bl sub_0804BD48
	b _080487B4
_080487B0:
	bl sub_0804C548
_080487B4:
	pop {r0}
	bx r0

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
	ldr r0, _08048C6C @ =0x03000770
	ldrb r1, [r0]
	cmp r1, #0x63
	bls _08048C06
	b _08048D80
_08048C06:
	movs r4, #0
	movs r5, #0
	cmp r5, r1
	bhs _08048C30
	ldr r0, _08048C70 @ =0x03000774
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
	ldr r3, _08048C6C @ =0x03000770
	ldrb r1, [r3]
	ldr r2, _08048C70 @ =0x03000774
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
_08048C6C: .4byte 0x03000770
_08048C70: .4byte 0x03000774
_08048C74:
	ldr r3, _08048CA8 @ =0x03000770
	ldrb r0, [r3]
	ldr r2, _08048CAC @ =0x03000774
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
_08048CA8: .4byte 0x03000770
_08048CAC: .4byte 0x03000774
_08048CB0:
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x78
_08048CBA:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08048D90 @ =0x03000770
	ldrb r0, [r2]
	ldr r1, _08048D94 @ =0x03000774
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	strh r3, [r0, #4]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08048CD2:
	movs r5, #0
	ldr r0, _08048D90 @ =0x03000770
	ldrb r1, [r0]
	cmp r5, r1
	bhs _08048D80
	ldr r2, _08048D94 @ =0x03000774
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
	ldr r7, _08048D90 @ =0x03000770
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
_08048D90: .4byte 0x03000770
_08048D94: .4byte 0x03000774

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
	ldr r0, _08048DF0 @ =0x03000774
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
_08048DF0: .4byte 0x03000774
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

	thumb_func_start sub_08048F38
sub_08048F38: @ 0x08048F38
	push {r4, r5, lr}
	ldr r1, _08048F5C @ =0x03000770
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08048F60 @ =0x03000774
	movs r4, #0xc8
	lsls r4, r4, #3
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048F5C: .4byte 0x03000770
_08048F60: .4byte 0x03000774

	thumb_func_start sub_08048F64
sub_08048F64: @ 0x08048F64
	push {lr}
	ldr r0, _08048F78 @ =0x03000774
	ldr r0, [r0]
	cmp r0, #0
	beq _08048F72
	bl Free
_08048F72:
	pop {r0}
	bx r0
	.align 2, 0
_08048F78: .4byte 0x03000774

	thumb_func_start sub_08048F7C
sub_08048F7C: @ 0x08048F7C
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
	movs r2, #0
	bl DisableDisplayLayers
	ldr r1, _08049010 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049014 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0x11
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
	ldr r1, _08049018 @ =0x0600F800
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
	beq _08049032
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08049020
	ldr r1, _0804901C @ =0x06004000
	b _08049024
	.align 2, 0
_08049010: .4byte 0xFFFF0000
_08049014: .4byte 0x00001F03
_08049018: .4byte 0x0600F800
_0804901C: .4byte 0x06004000
_08049020:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08049024:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08049042
_08049032:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08049042:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804907C @ =0x030007B8
	ldr r1, _08049080 @ =0x0010004F
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _08049084 @ =gBgRegsBuffer
	movs r2, #0
	movs r0, #8
	strh r0, [r1, #0xc]
	strh r2, [r1, #0xe]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804907C: .4byte 0x030007B8
_08049080: .4byte 0x0010004F
_08049084: .4byte gBgRegsBuffer

	thumb_func_start sub_08049088
sub_08049088: @ 0x08049088
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r5, #0
_080490A0:
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080490A0
	movs r5, #0
	ldr r4, _0804928C @ =gBgRegsBuffer
_080490B2:
	strh r5, [r4, #0xe]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3f
	bls _080490B2
	ldr r4, _08049290 @ =0xFFC40000
	ldr r5, _0804928C @ =gBgRegsBuffer
	movs r7, #0
_080490C8:
	ldrh r0, [r5, #0xe]
	adds r0, #1
	strh r0, [r5, #0xe]
	asrs r4, r4, #0x10
	str r7, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r4, #0x10
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	lsls r4, r6, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0x4f
	ble _080490C8
	movs r7, #5
	movs r0, #0x68
	bl PlaySE
	movs r5, #0
	ldr r0, _0804928C @ =gBgRegsBuffer
	mov r8, r0
_080490FE:
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	rsbs r4, r4, #0
	adds r4, #0x9b
	mov r1, r8
	strh r4, [r1, #0xe]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _080490FE
	movs r7, #2
	movs r5, #0
	ldr r0, _0804928C @ =gBgRegsBuffer
	mov sb, r0
	mov r8, r5
_08049144:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r4, r6, #0x10
	asrs r2, r4, #0x10
	rsbs r0, r2, #0
	adds r0, #0x9b
	mov r1, sb
	strh r0, [r1, #0xe]
	mov r0, r8
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08049144
	movs r5, #0
	movs r6, #0
_08049184:
	str r6, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r1, #0x78
	asrs r2, r4, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1d
	bls _08049184
	movs r5, #0
	asrs r6, r4, #0x10
_080491A4:
	ldr r0, _08049298 @ =0x00007530
	bl sub_080492A8
	movs r0, #0
	bl sub_08049508
	ldr r0, _0804929C @ =0x030007B1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	ldr r0, _080492A0 @ =0x030007B2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r6, r2
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	bl sub_08049508
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x59
	bls _080491A4
	movs r0, #0x6a
	bl PlaySE
	movs r5, #0
	asrs r6, r4, #0x10
_080491EA:
	ldr r0, _080492A4 @ =0x00002EE0
	bl sub_080492A8
	movs r0, #0
	bl sub_08049508
	ldr r0, _0804929C @ =0x030007B1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	ldr r0, _080492A0 @ =0x030007B2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r6, r2
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	bl sub_08049508
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x59
	bls _080491EA
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
	asrs r4, r4, #0x10
_08049230:
	cmp r5, #0x2c
	bne _0804923A
	movs r0, #6
	bl sub_0800F3A0
_0804923A:
	movs r0, #0xfa
	lsls r0, r0, #6
	bl sub_080492A8
	movs r0, #0
	bl sub_08049508
	ldr r0, _0804929C @ =0x030007B1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	ldr r0, _080492A0 @ =0x030007B2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r4, r2
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	bl sub_08049508
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08049230
	movs r0, #0x6a
	bl StopSE
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804928C: .4byte gBgRegsBuffer
_08049290: .4byte 0xFFC40000
_08049294: .4byte 0x030007B8
_08049298: .4byte 0x00007530
_0804929C: .4byte 0x030007B1
_080492A0: .4byte 0x030007B2
_080492A4: .4byte 0x00002EE0

	thumb_func_start sub_080492A8
sub_080492A8: @ 0x080492A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080492D8 @ =0x030007B0
	ldrb r0, [r0]
	cmp r0, #0x63
	bls _080492C2
	b _080494EA
_080492C2:
	ldr r0, _080492DC @ =0x030007B1
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _080492E4
	cmp r1, #0
	ble _080492E0
	subs r0, r2, #1
	b _080492E2
	.align 2, 0
_080492D8: .4byte 0x030007B0
_080492DC: .4byte 0x030007B1
_080492E0:
	adds r0, r2, #1
_080492E2:
	strb r0, [r4]
_080492E4:
	ldr r0, _080492FC @ =0x030007B2
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08049304
	cmp r1, #0
	ble _08049300
	subs r0, r2, #1
	b _08049302
	.align 2, 0
_080492FC: .4byte 0x030007B2
_08049300:
	adds r0, r2, #1
_08049302:
	strb r0, [r3]
_08049304:
	ldr r1, _080493C4 @ =gBgRegsBuffer
	movs r0, #0
	ldrsb r0, [r4, r0]
	rsbs r0, r0, #0
	adds r0, #8
	strh r0, [r1, #0xc]
	movs r0, #0
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	adds r0, #0x4d
	strh r0, [r1, #0xe]
	movs r0, #0
	ldrsb r0, [r4, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r3, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	movs r4, #0
	movs r5, #0
	ldr r0, _080493C8 @ =0x030007B0
	ldrb r1, [r0]
	lsls r6, r6, #0x10
	cmp r5, r1
	bhs _0804935E
	ldr r0, _080493CC @ =0x030007B4
	ldr r2, [r0]
_0804933C:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049354
	cmp r0, #4
	beq _08049354
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08049354:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804933C
_0804935E:
	bl Random
	lsls r0, r0, #0x10
	cmp r0, r6
	ble _08049420
	cmp r4, #0x13
	bhi _08049420
	ldr r4, _080493C8 @ =0x030007B0
	ldrb r1, [r4]
	ldr r5, _080493CC @ =0x030007B4
	ldr r2, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0, #8]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	bl Random
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r4, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf0
	bl __umodsi3
	strh r0, [r4, #6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080493D0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x50
	b _080493DA
	.align 2, 0
_080493C4: .4byte gBgRegsBuffer
_080493C8: .4byte 0x030007B0
_080493CC: .4byte 0x030007B4
_080493D0:
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x8c
_080493DA:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r5, _080494FC @ =0x030007B0
	ldrb r1, [r5]
	ldr r4, _08049500 @ =0x030007B4
	ldr r2, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strh r3, [r0, #0xa]
	bl Random
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r4, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _08049504 @ =0x0000199D
	bl __divsi3
	adds r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r0, #0x68
	bl PlaySE
_08049420:
	movs r5, #0
	ldr r0, _080494FC @ =0x030007B0
	ldrb r2, [r0]
	cmp r5, r2
	bhs _080494EA
	ldr r3, _08049500 @ =0x030007B4
	mov sl, r3
_0804942E:
	mov r4, sl
	ldr r1, [r4]
	lsls r2, r5, #1
	adds r0, r2, r5
	lsls r4, r0, #2
	adds r1, r4, r1
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [sp, #0x10]
	adds r6, r5, #1
	str r6, [sp, #0xc]
	cmp r0, #2
	bhi _080494DC
	ldrh r7, [r1, #8]
	adds r6, r5, #0
	adds r3, r5, #0
	ldr r1, _080494FC @ =0x030007B0
	ldrb r0, [r1]
	cmp r5, r0
	bhs _080494AC
	ldr r2, _08049500 @ =0x030007B4
	mov ip, r2
	mov sb, r4
	mov r8, r0
_08049462:
	cmp r5, r3
	beq _080494A2
	mov r4, ip
	ldr r2, [r4]
	lsls r0, r3, #1
	adds r1, r0, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #1
	beq _08049488
	mov r1, sb
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _08049488
	cmp r0, #3
	bne _080494A2
_08049488:
	mov r2, ip
	ldr r1, [r2]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r2, r0, r1
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r4, #8
	ldrsh r1, [r2, r4]
	cmp r0, r1
	bge _080494A2
	ldrh r7, [r2, #8]
	adds r6, r3, #0
_080494A2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _08049462
_080494AC:
	cmp r6, r5
	beq _080494DC
	mov r7, sl
	ldr r3, [r7]
	lsls r2, r6, #1
	adds r2, r2, r6
	lsls r2, r2, #2
	adds r2, r2, r3
	mov r1, sp
	adds r0, r2, #0
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [sp, #0x10]
	adds r1, r0, r5
	lsls r1, r1, #2
	adds r3, r1, r3
	ldm r3!, {r4, r5, r6}
	stm r2!, {r4, r5, r6}
	mov r7, sl
	ldr r0, [r7]
	adds r1, r1, r0
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
_080494DC:
	ldr r5, [sp, #0xc]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	ldr r6, _080494FC @ =0x030007B0
	ldrb r6, [r6]
	cmp r5, r6
	blo _0804942E
_080494EA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080494FC: .4byte 0x030007B0
_08049500: .4byte 0x030007B4
_08049504: .4byte 0x0000199D

	thumb_func_start sub_08049508
sub_08049508: @ 0x08049508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08049534 @ =0x030007B4
	ldr r4, [r0]
	movs r0, #0
	mov r8, r0
	mov sb, r0
_08049524:
	mov r1, sl
	cmp r1, #0
	beq _08049538
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r0, #0x9f
	ble _08049542
	b _0804964A
	.align 2, 0
_08049534: .4byte 0x030007B4
_08049538:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0x9f
	bgt _08049542
	b _0804964A
_08049542:
	ldrb r0, [r4]
	cmp r0, #1
	bne _080495B8
	ldrh r0, [r4, #8]
	adds r0, #0xa
	movs r7, #0
	strh r0, [r4, #8]
	movs r2, #6
	ldrsh r1, [r4, r2]
	ldr r5, _080495AC @ =0x030007B1
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r1, r1, r0
	movs r0, #8
	ldrsh r2, [r4, r0]
	ldr r6, _080495B0 @ =0x030007B2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r2, r2, r0
	ldrb r3, [r4, #2]
	mov r0, sb
	str r0, [sp]
	ldr r0, _080495B4 @ =0x030007B8
	bl sub_08026B90
	movs r2, #8
	ldrsh r1, [r4, r2]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _08049604
	movs r0, #2
	strb r0, [r4]
	movs r0, #5
	strh r0, [r4, #4]
	strb r7, [r4, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	strb r0, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	strb r0, [r6]
	b _08049604
	.align 2, 0
_080495AC: .4byte 0x030007B1
_080495B0: .4byte 0x030007B2
_080495B4: .4byte 0x030007B8
_080495B8:
	cmp r0, #2
	bne _08049604
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	movs r5, #0
	strh r0, [r4, #8]
	subs r1, #1
	strh r1, [r4, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	movs r0, #6
	ldrsh r1, [r4, r0]
	ldr r0, _0804966C @ =0x030007B1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #8
	ldrsh r2, [r4, r0]
	ldr r0, _08049670 @ =0x030007B2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldrb r3, [r4, #2]
	mov r0, sb
	str r0, [sp]
	ldr r0, _08049674 @ =0x030007B8
	bl sub_08026B90
	ldrb r0, [r4, #1]
	cmp r0, #0xf
	bls _08049604
	movs r0, #3
	strb r0, [r4]
	strb r5, [r4, #1]
_08049604:
	ldrb r0, [r4]
	cmp r0, #3
	bne _0804964A
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08049640
	movs r2, #6
	ldrsh r1, [r4, r2]
	ldr r0, _0804966C @ =0x030007B1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #8
	ldrsh r2, [r4, r0]
	ldr r0, _08049670 @ =0x030007B2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldrb r3, [r4, #2]
	str r5, [sp]
	ldr r0, _08049674 @ =0x030007B8
	bl sub_08026B90
_08049640:
	ldrb r0, [r4, #1]
	cmp r0, #0x3c
	bls _0804964A
	movs r0, #4
	strb r0, [r4]
_0804964A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r4, #0xc
	cmp r0, #0x63
	bhi _0804965C
	b _08049524
_0804965C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804966C: .4byte 0x030007B1
_08049670: .4byte 0x030007B2
_08049674: .4byte 0x030007B8

	thumb_func_start sub_08049678
sub_08049678: @ 0x08049678
	push {r4, r5, lr}
	ldr r0, _080496A4 @ =0x030007B0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080496A8 @ =0x030007B1
	strb r1, [r0]
	ldr r0, _080496AC @ =0x030007B2
	strb r1, [r0]
	ldr r5, _080496B0 @ =0x030007B4
	movs r4, #0x96
	lsls r4, r4, #3
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080496A4: .4byte 0x030007B0
_080496A8: .4byte 0x030007B1
_080496AC: .4byte 0x030007B2
_080496B0: .4byte 0x030007B4

	thumb_func_start sub_080496B4
sub_080496B4: @ 0x080496B4
	push {lr}
	ldr r0, _080496C8 @ =0x030007B4
	ldr r0, [r0]
	cmp r0, #0
	beq _080496C2
	bl Free
_080496C2:
	pop {r0}
	bx r0
	.align 2, 0
_080496C8: .4byte 0x030007B4

	thumb_func_start sub_080496CC
sub_080496CC: @ 0x080496CC
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
	ldr r1, _08049760 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049764 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0x13
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
	ldr r1, _08049768 @ =0x0600F800
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
	beq _08049782
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08049770
	ldr r1, _0804976C @ =0x06004000
	b _08049774
	.align 2, 0
_08049760: .4byte 0xFFFF0000
_08049764: .4byte 0x00001F03
_08049768: .4byte 0x0600F800
_0804976C: .4byte 0x06004000
_08049770:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08049774:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08049792
_08049782:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08049792:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _080497CC @ =0x03000800
	ldr r1, _080497D0 @ =0x00100052
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _080497D4 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080497CC: .4byte 0x03000800
_080497D0: .4byte 0x00100052
_080497D4: .4byte gBgRegsBuffer

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
	ldr r0, _080498F0 @ =0x03000800
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
	ldr r0, _080498F0 @ =0x03000800
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
_080498F0: .4byte 0x03000800
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
	ldr r0, _08049948 @ =0x03000800
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
_08049948: .4byte 0x03000800
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
	ldr r0, _08049A18 @ =0x03000800
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
	ldr r0, _08049A18 @ =0x03000800
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
_08049A18: .4byte 0x03000800
_08049A1C: .4byte gBgRegsBuffer
_08049A20: .4byte 0x0805289C

	thumb_func_start sub_08049A24
sub_08049A24: @ 0x08049A24
	push {r4, r5, r6, lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08049A38 @ =0x030007F0
	ldrb r1, [r0]
	cmp r1, #0x3b
	bls _08049A3C
	movs r0, #0
	b _08049C46
	.align 2, 0
_08049A38: .4byte 0x030007F0
_08049A3C:
	movs r3, #0
	movs r2, #0
	lsls r5, r4, #0x10
	cmp r3, r1
	bhs _08049A68
	ldr r0, _08049ADC @ =0x030007F8
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
	ldr r4, _08049AE0 @ =0x030007F0
	ldrb r0, [r4]
	ldr r5, _08049ADC @ =0x030007F8
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
_08049ADC: .4byte 0x030007F8
_08049AE0: .4byte 0x030007F0
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
	ldr r5, _08049B4C @ =0x030007F0
	ldrb r1, [r5]
	ldr r4, _08049B50 @ =0x030007F8
	ldr r2, [r4]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0xc8
	strh r0, [r1, #8]
	b _08049C18
	.align 2, 0
_08049B4C: .4byte 0x030007F0
_08049B50: .4byte 0x030007F8
_08049B54:
	ldr r4, _08049BAC @ =0x030007F0
	ldrb r0, [r4]
	ldr r5, _08049BB0 @ =0x030007F8
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
_08049BAC: .4byte 0x030007F0
_08049BB0: .4byte 0x030007F8
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
	ldr r5, _08049C50 @ =0x030007F0
	ldrb r2, [r5]
	ldr r4, _08049C54 @ =0x030007F8
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
	ldr r1, _08049C50 @ =0x030007F0
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
_08049C50: .4byte 0x030007F0
_08049C54: .4byte 0x030007F8

	thumb_func_start sub_08049C58
sub_08049C58: @ 0x08049C58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08049CF4 @ =0x030007F8
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r1, _08049CF8 @ =0x03000800
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
_08049CF4: .4byte 0x030007F8
_08049CF8: .4byte 0x03000800
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

	thumb_func_start sub_08049DBC
sub_08049DBC: @ 0x08049DBC
	push {r4, r5, lr}
	ldr r0, _08049DF4 @ =0x030007F0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08049DF8 @ =0x030007F1
	strb r1, [r0]
	ldr r4, _08049DFC @ =0x030007F4
	movs r0, #0xa2
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
	ldr r1, _08049E00 @ =REG_BG3HOFS
	str r1, [r0]
	ldr r5, _08049E04 @ =0x030007F8
	movs r4, #0xf0
	lsls r4, r4, #2
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049DF4: .4byte 0x030007F0
_08049DF8: .4byte 0x030007F1
_08049DFC: .4byte 0x030007F4
_08049E00: .4byte REG_BG3HOFS
_08049E04: .4byte 0x030007F8

	thumb_func_start sub_08049E08
sub_08049E08: @ 0x08049E08
	push {lr}
	ldr r0, _08049E28 @ =0x030007F4
	ldr r0, [r0]
	cmp r0, #0
	beq _08049E16
	bl Free
_08049E16:
	ldr r0, _08049E2C @ =0x030007F8
	ldr r0, [r0]
	cmp r0, #0
	beq _08049E22
	bl Free
_08049E22:
	pop {r0}
	bx r0
	.align 2, 0
_08049E28: .4byte 0x030007F4
_08049E2C: .4byte 0x030007F8

	thumb_func_start sub_08049E30
sub_08049E30: @ 0x08049E30
	push {r4, lr}
	movs r3, #0
	movs r1, #0
	ldr r0, _08049E68 @ =0x030007F0
	ldrb r2, [r0]
	cmp r3, r2
	bhs _08049E60
	ldr r0, _08049E6C @ =0x030007F8
	ldr r4, [r0]
_08049E42:
	lsls r0, r1, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049E56
	cmp r0, #3
	beq _08049E56
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08049E56:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _08049E42
_08049E60:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08049E68: .4byte 0x030007F0
_08049E6C: .4byte 0x030007F8

	thumb_func_start sub_08049E70
sub_08049E70: @ 0x08049E70
	push {r4, r5, r6, lr}
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
	ldr r1, _08049F30 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049F34 @ =0x00001E03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049F38 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x20
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08049F3C @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1f
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08049F40 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08049F5A
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08049F48
	ldr r1, _08049F44 @ =0x06004000
	b _08049F4C
	.align 2, 0
_08049F30: .4byte 0xFFFF0000
_08049F34: .4byte 0x00001E03
_08049F38: .4byte 0x00001F03
_08049F3C: .4byte 0x0600F800
_08049F40: .4byte 0x0600F000
_08049F44: .4byte 0x06004000
_08049F48:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08049F4C:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08049F6A
_08049F5A:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08049F6A:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _08049FA4 @ =0x03000850
	ldr r1, _08049FA8 @ =0x00100051
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _08049FAC @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #0x3c
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08049FA4: .4byte 0x03000850
_08049FA8: .4byte 0x00100051
_08049FAC: .4byte gBgRegsBuffer

	thumb_func_start sub_08049FB0
sub_08049FB0: @ 0x08049FB0
	push {r4, r5, r6, lr}
	ldr r5, _08049FF4 @ =0x0300083C
	movs r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #0
	beq _0804A000
	ldr r4, _08049FF8 @ =0x0300083A
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	ldrsb r1, [r5, r1]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r4]
	ldr r4, _08049FFC @ =0x0300083B
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	ldrsb r1, [r5, r1]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0804A008
	.align 2, 0
_08049FF4: .4byte 0x0300083C
_08049FF8: .4byte 0x0300083A
_08049FFC: .4byte 0x0300083B
_0804A000:
	ldr r0, _0804A058 @ =0x0300083A
	strb r1, [r0]
	ldr r0, _0804A05C @ =0x0300083B
	strb r1, [r0]
_0804A008:
	ldr r4, _0804A060 @ =gBgRegsBuffer
	ldr r2, _0804A058 @ =0x0300083A
	movs r0, #0
	ldrsb r0, [r2, r0]
	rsbs r0, r0, #0
	strh r0, [r4, #8]
	ldr r5, _0804A05C @ =0x0300083B
	movs r0, #0
	ldrsb r0, [r5, r0]
	rsbs r0, r0, #0
	strh r0, [r4, #0xa]
	ldr r6, _0804A064 @ =0x0300083D
	ldrb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x1a
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	strh r1, [r4, #0xc]
	lsrs r0, r0, #0x19
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_08005F60
	ldrb r0, [r6]
	cmp r0, #0xf0
	bne _0804A068
	movs r0, #0
	b _0804A06A
	.align 2, 0
_0804A058: .4byte 0x0300083A
_0804A05C: .4byte 0x0300083B
_0804A060: .4byte gBgRegsBuffer
_0804A064: .4byte 0x0300083D
_0804A068:
	adds r0, #1
_0804A06A:
	strb r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804A074
sub_0804A074: @ 0x0804A074
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r5, #0
_0804A096:
	bl sub_08049FB0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0804A096
	movs r0, #0x3a
	bl PlaySE
	movs r5, #0
_0804A0B6:
	bl sub_08049FB0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A0B6
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x6a
	bl PlaySE
	movs r5, #0
	ldr r7, _0804A1B4 @ =0x03000850
	ldr r6, _0804A1B8 @ =0x03000842
_0804A0EC:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	asrs r0, r0, #1
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r6, #2
	bl sub_08026C40
	bl sub_08049FB0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1d
	ble _0804A0EC
	movs r5, #0x1e
	ldr r0, _0804A1B4 @ =0x03000850
	mov r8, r0
	ldr r7, _0804A1B8 @ =0x03000842
_0804A13C:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #1
	adds r2, r2, r4
	asrs r2, r2, #1
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r1, #0
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0804A1BC @ =0x0300083A
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	subs r1, r1, r2
	ldr r0, _0804A1C0 @ =0x0300083B
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r4, r2
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	adds r2, r7, #0
	adds r3, r7, #2
	bl sub_08026C40
	lsls r6, r5, #0x10
	asrs r1, r6, #0x10
	movs r0, #0xfa
	lsls r0, r0, #5
	adds r2, r4, #0
	bl sub_0804A224
	movs r0, #0
	bl sub_0804A2EC
	bl sub_08049FB0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0xef
	ble _0804A13C
	adds r5, r6, #0
	adds r4, r2, #0
	b _0804A1DC
	.align 2, 0
_0804A1B4: .4byte 0x03000850
_0804A1B8: .4byte 0x03000842
_0804A1BC: .4byte 0x0300083A
_0804A1C0: .4byte 0x0300083B
_0804A1C4:
	ldr r0, _0804A220 @ =0x00007FBC
	asrs r1, r5, #0x10
	asrs r2, r4, #0x10
	bl sub_0804A224
	movs r0, #0
	bl sub_0804A2EC
	bl sub_08049FB0
	bl WaitFrame
_0804A1DC:
	bl sub_0804A468
	cmp r0, #0
	bne _0804A1C4
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
_0804A1EC:
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x2c
	bne _0804A1FA
	movs r0, #6
	bl sub_0800F3A0
_0804A1FA:
	bl sub_08049FB0
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A1EC
	movs r0, #0x6a
	bl StopSE
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A220: .4byte 0x00007FBC

	thumb_func_start sub_0804A224
sub_0804A224: @ 0x0804A224
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _0804A2DC @ =0x03000838
	ldrb r2, [r0]
	cmp r2, #0x3b
	bhi _0804A2D0
	movs r1, #0
	lsls r4, r3, #0x10
	cmp r2, #0
	beq _0804A262
	ldr r0, _0804A2E0 @ =0x0300084C
	ldr r3, [r0]
_0804A24E:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804A24E
_0804A262:
	bl Random
	ldr r6, _0804A2E4 @ =0x0300083E
	ldrh r1, [r6]
	adds r1, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	cmp r0, r4
	ble _0804A2D0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0804A2D0
	ldr r3, _0804A2DC @ =0x03000838
	ldrb r1, [r3]
	ldr r4, _0804A2E0 @ =0x0300084C
	ldr r2, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r5, #0
	movs r1, #2
	strb r1, [r0]
	ldrb r1, [r3]
	ldr r2, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0
	strh r7, [r0, #6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r1, r8
	strh r1, [r0, #8]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strb r4, [r0, #1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strh r5, [r6]
	ldr r1, _0804A2E8 @ =0x0300083C
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #0x22
	bl PlaySE
_0804A2D0:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A2DC: .4byte 0x03000838
_0804A2E0: .4byte 0x0300084C
_0804A2E4: .4byte 0x0300083E
_0804A2E8: .4byte 0x0300083C

	thumb_func_start sub_0804A2EC
sub_0804A2EC: @ 0x0804A2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0804A3E0 @ =0x0300084C
	ldr r6, [r0]
	movs r0, #0
	mov sl, r0
	ldr r1, _0804A3E4 @ =0x03000850
	mov r8, r1
	movs r2, #1
	mov sb, r2
_0804A308:
	ldrb r0, [r6]
	cmp r0, #2
	bne _0804A3BE
	ldrb r5, [r6, #1]
	lsls r4, r5, #1
	adds r4, r4, r5
	lsrs r4, r4, #4
	lsrs r5, r5, #2
	adds r2, r6, #2
	adds r3, r6, #4
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	bl sub_08026C40
	movs r1, #6
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	subs r1, #0x40
	subs r0, r0, r1
	ldr r2, _0804A3E8 @ =0x0300083A
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #8
	ldrsh r1, [r6, r3]
	adds r2, r5, #0
	subs r2, #0x1c
	adds r1, r1, r2
	ldr r3, _0804A3EC @ =0x0300083B
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r2, [r6, #2]
	mov ip, r2
	movs r7, #0
	str r7, [sp]
	ldr r3, _0804A3F0 @ =0x0300086C
	str r3, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	mov r2, sb
	str r2, [sp, #0x10]
	movs r2, #1
	mov r3, ip
	bl sub_08003FA4
	movs r3, #6
	ldrsh r0, [r6, r3]
	adds r4, #8
	subs r0, r0, r4
	ldr r4, _0804A3E8 @ =0x0300083A
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	movs r2, #8
	ldrsh r1, [r6, r2]
	subs r5, #0x40
	adds r1, r1, r5
	ldr r3, _0804A3EC @ =0x0300083B
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r3, [r6, #2]
	str r7, [sp]
	ldr r4, _0804A3F0 @ =0x0300086C
	str r4, [sp, #4]
	mov r4, r8
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	mov r2, sb
	str r2, [sp, #0x10]
	movs r2, #1
	bl sub_08003FA4
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _0804A3BE
	movs r0, #5
	strb r0, [r6]
	strb r7, [r6, #1]
_0804A3BE:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r6, #0xc
	cmp r0, #0x3b
	bls _0804A308
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A3E0: .4byte 0x0300084C
_0804A3E4: .4byte 0x03000850
_0804A3E8: .4byte 0x0300083A
_0804A3EC: .4byte 0x0300083B
_0804A3F0: .4byte 0x0300086C

	thumb_func_start sub_0804A3F4
sub_0804A3F4: @ 0x0804A3F4
	push {r4, r5, lr}
	ldr r0, _0804A430 @ =0x03000838
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0804A434 @ =0x03000839
	strb r1, [r0]
	ldr r0, _0804A438 @ =0x0300083A
	strb r1, [r0]
	ldr r0, _0804A43C @ =0x0300083B
	strb r1, [r0]
	ldr r0, _0804A440 @ =0x0300083C
	strb r1, [r0]
	ldr r2, _0804A444 @ =0x0300083E
	movs r0, #0xa
	strh r0, [r2]
	ldr r0, _0804A448 @ =0x0300083D
	strb r1, [r0]
	ldr r5, _0804A44C @ =0x0300084C
	movs r4, #0xb4
	lsls r4, r4, #2
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A430: .4byte 0x03000838
_0804A434: .4byte 0x03000839
_0804A438: .4byte 0x0300083A
_0804A43C: .4byte 0x0300083B
_0804A440: .4byte 0x0300083C
_0804A444: .4byte 0x0300083E
_0804A448: .4byte 0x0300083D
_0804A44C: .4byte 0x0300084C

	thumb_func_start sub_0804A450
sub_0804A450: @ 0x0804A450
	push {lr}
	ldr r0, _0804A464 @ =0x0300084C
	ldr r0, [r0]
	cmp r0, #0
	beq _0804A45E
	bl Free
_0804A45E:
	pop {r0}
	bx r0
	.align 2, 0
_0804A464: .4byte 0x0300084C

	thumb_func_start sub_0804A468
sub_0804A468: @ 0x0804A468
	push {r4, lr}
	movs r3, #0
	movs r1, #0
	ldr r0, _0804A4A4 @ =0x03000838
	ldrb r2, [r0]
	cmp r3, r2
	bhs _0804A49C
	ldr r0, _0804A4A8 @ =0x0300084C
	ldr r4, [r0]
_0804A47A:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A492
	cmp r0, #5
	beq _0804A492
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804A492:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804A47A
_0804A49C:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A4A4: .4byte 0x03000838
_0804A4A8: .4byte 0x0300084C

	thumb_func_start sub_0804A4AC
sub_0804A4AC: @ 0x0804A4AC
	push {r4, r5, r6, lr}
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
	ldr r1, _0804A56C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804A570 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804A574 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x14
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804A578 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x15
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804A57C @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804A596
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804A584
	ldr r1, _0804A580 @ =0x06004000
	b _0804A588
	.align 2, 0
_0804A56C: .4byte 0xFFFF0000
_0804A570: .4byte 0x00001F03
_0804A574: .4byte 0x00001E02
_0804A578: .4byte 0x0600F800
_0804A57C: .4byte 0x0600F000
_0804A580: .4byte 0x06004000
_0804A584:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804A588:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804A5A6
_0804A596:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804A5A6:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804A5EC @ =gPaletteBuffer
	movs r4, #0
	strh r4, [r0]
	ldr r0, _0804A5F0 @ =0x03000890
	ldr r1, _0804A5F4 @ =0x0010004D
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _0804A5F8 @ =gBgRegsBuffer
	strh r4, [r1, #0xc]
	movs r0, #0x1b
	strh r0, [r1, #0xe]
	strh r4, [r1, #8]
	movs r0, #0x60
	strh r0, [r1, #0xa]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A5EC: .4byte gPaletteBuffer
_0804A5F0: .4byte 0x03000890
_0804A5F4: .4byte 0x0010004D
_0804A5F8: .4byte gBgRegsBuffer

	thumb_func_start sub_0804A5FC
sub_0804A5FC: @ 0x0804A5FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov r8, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r5, #0
_0804A61A:
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A61A
	movs r0, #0x6a
	bl PlaySE
	movs r5, #0
	ldr r2, _0804A8AC @ =0x03000889
	mov sb, r2
_0804A63A:
	lsls r7, r5, #0x10
	lsrs r6, r7, #0x10
	movs r5, #1
	ands r5, r6
	cmp r5, #0
	bne _0804A658
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl __modsi3
	mov r1, sb
	strb r0, [r1]
_0804A658:
	ldr r1, _0804A8B0 @ =gBgRegsBuffer
	ldr r4, _0804A8AC @ =0x03000889
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r2, #0
	mov ip, r2
	strh r0, [r1, #8]
	movs r0, #0
	ldrsb r0, [r4, r0]
	strh r0, [r1, #0xc]
	cmp r5, #0
	bne _0804A676
	ldrh r0, [r1, #0xa]
	subs r0, #1
	strh r0, [r1, #0xa]
_0804A676:
	movs r3, #3
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	bne _0804A686
	ldrh r0, [r1, #0xe]
	adds r0, #1
	strh r0, [r1, #0xe]
_0804A686:
	asrs r5, r7, #0x10
	cmp r5, #0x2d
	ble _0804A6AA
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #0x78
	subs r1, r1, r0
	lsls r0, r5, #1
	movs r2, #0x87
	lsls r2, r2, #1
	subs r2, r2, r0
	mov r0, ip
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r3, #0
	bl sub_0802706C
_0804A6AA:
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0804A8B8 @ =0x0300088A
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0x59
	ble _0804A63A
	movs r7, #0
	mov sl, r2
	adds r5, r4, #0
	str r0, [sp, #0xc]
	mov r1, sl
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	movs r2, #0
	mov sb, r2
_0804A6DE:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	ldr r2, _0804A8BC @ =0x0805289C
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #1
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804A718
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl __modsi3
	strb r0, [r5]
_0804A718:
	ldr r1, _0804A8B0 @ =gBgRegsBuffer
	movs r0, #0
	ldrsb r0, [r5, r0]
	strh r0, [r1, #8]
	movs r0, #0
	ldrsb r0, [r5, r0]
	strh r0, [r1, #0xc]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp, #0xc]
	subs r2, r0, r2
	mov r1, sb
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldr r1, _0804A8B8 @ =0x0300088A
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08005F60
	bl WaitFrame
	lsls r1, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _0804A6DE
	movs r0, #0x6a
	bl StopSE
	movs r7, #0
	ldr r5, _0804A8BC @ =0x0805289C
_0804A774:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	asrs r0, r0, #0x14
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804A774
	movs r0, #0x6c
	bl PlaySE
	movs r7, #0
	movs r0, #0
	mov sb, r0
_0804A7CC:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	ldr r1, _0804A8BC @ =0x0805289C
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	mov r0, sb
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	adds r5, #1
	lsls r5, r5, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0x3b
	ble _0804A7CC
	movs r0, #0x3b
	bl PlaySE
	movs r7, #0
	ldr r1, _0804A8BC @ =0x0805289C
	mov sb, r1
	ldr r5, _0804A8C0 @ =0x00000103
_0804A846:
	mov r0, sl
	asrs r2, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	movs r0, #0
	bl sub_0804AB10
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_0804AA10
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	ble _0804A846
	ldr r4, _0804A8BC @ =0x0805289C
	b _0804A90A
	.align 2, 0
_0804A8AC: .4byte 0x03000889
_0804A8B0: .4byte gBgRegsBuffer
_0804A8B4: .4byte 0x03000890
_0804A8B8: .4byte 0x0300088A
_0804A8BC: .4byte 0x0805289C
_0804A8C0: .4byte 0x00000103
_0804A8C4:
	mov r0, sl
	asrs r2, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804AA04 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804AA08 @ =0x00007FBC
	bl sub_0804AA10
	movs r0, #0
	bl sub_0804AB10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl WaitFrame
_0804A90A:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_0804ABD8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804A8C4
	movs r7, #0
	movs r6, #0
	ldr r2, _0804AA0C @ =0x0805289C
	mov sb, r2
_0804A92A:
	movs r0, #0x10
	lsls r5, r7, #0x10
	asrs r5, r5, #0x10
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	asrs r0, r0, #0x14
	subs r2, r2, r0
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, _0804AA04 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	adds r5, #1
	lsls r5, r5, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0xf
	ble _0804A92A
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r7, #0
	ldr r6, _0804AA0C @ =0x0805289C
_0804A996:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x2c
	bne _0804A9A4
	movs r0, #6
	bl sub_0800F3A0
_0804A9A4:
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	asrs r0, r0, #0x14
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804AA04 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A996
	movs r0, #0x3b
	bl StopSE
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AA04: .4byte 0x03000890
_0804AA08: .4byte 0x00007FBC
_0804AA0C: .4byte 0x0805289C

	thumb_func_start sub_0804AA10
sub_0804AA10: @ 0x0804AA10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _0804AB08 @ =0x03000888
	ldrb r0, [r2]
	cmp r0, #0x63
	bls _0804AA24
	movs r0, #0
	strb r0, [r2]
_0804AA24:
	movs r3, #0
	movs r1, #0
	ldrb r2, [r2]
	lsls r5, r4, #0x10
	cmp r3, r2
	bhs _0804AA56
	ldr r0, _0804AB0C @ =0x0300088C
	ldr r4, [r0]
_0804AA34:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AA4C
	cmp r0, #2
	beq _0804AA4C
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804AA4C:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804AA34
_0804AA56:
	adds r4, r3, #0
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0804AA66
	rsbs r1, r1, #0
_0804AA66:
	asrs r0, r5, #0x10
	cmp r1, r0
	ble _0804AAFE
	cmp r4, #0x13
	bhi _0804AAFE
	ldr r6, _0804AB08 @ =0x03000888
	ldrb r1, [r6]
	ldr r7, _0804AB0C @ =0x0300088C
	ldr r2, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	bl Random
	ldrb r2, [r6]
	ldr r5, [r7]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r4, r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0804AA9E
	rsbs r0, r0, #0
_0804AA9E:
	movs r1, #0xf0
	bl __modsi3
	strh r0, [r4, #8]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0, #0xa]
	bl Random
	lsls r0, r0, #0x10
	ldrb r1, [r6]
	ldr r2, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #2
	strb r1, [r0, #1]
	bl Random
	ldr r4, _0804AB08 @ =0x03000888
	ldrb r2, [r4]
	ldr r1, _0804AB0C @ =0x0300088C
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0804AAE8
	rsbs r2, r2, #0
_0804AAE8:
	adds r0, r2, #0
	cmp r2, #0
	bge _0804AAF0
	adds r0, r2, #3
_0804AAF0:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	strb r0, [r1, #2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0804AAFE:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AB08: .4byte 0x03000888
_0804AB0C: .4byte 0x0300088C

	thumb_func_start sub_0804AB10
sub_0804AB10: @ 0x0804AB10
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0804AB74 @ =0x0300088C
	ldr r4, [r0]
	movs r5, #0
	ldr r6, _0804AB78 @ =0x03000890
_0804AB1C:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0804AB5E
	ldrb r1, [r4, #1]
	adds r2, r4, #4
	adds r3, r4, #6
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08026C40
	movs r0, #8
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	ldrb r3, [r4, #1]
	ldrh r0, [r4, #4]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_0802706C
	ldrb r0, [r4, #2]
	adds r0, #2
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _0804AB5E
	movs r0, #2
	strb r0, [r4]
_0804AB5E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0xc
	cmp r5, #0x63
	bls _0804AB1C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AB74: .4byte 0x0300088C
_0804AB78: .4byte 0x03000890

	thumb_func_start sub_0804AB7C
sub_0804AB7C: @ 0x0804AB7C
	push {r4, r5, lr}
	ldr r0, _0804ABAC @ =0x03000888
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0804ABB0 @ =0x03000889
	strb r1, [r0]
	ldr r0, _0804ABB4 @ =0x0300088A
	strb r1, [r0]
	ldr r0, _0804ABB8 @ =0x0300088B
	strb r1, [r0]
	ldr r5, _0804ABBC @ =0x0300088C
	movs r4, #0x96
	lsls r4, r4, #3
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ABAC: .4byte 0x03000888
_0804ABB0: .4byte 0x03000889
_0804ABB4: .4byte 0x0300088A
_0804ABB8: .4byte 0x0300088B
_0804ABBC: .4byte 0x0300088C

	thumb_func_start sub_0804ABC0
sub_0804ABC0: @ 0x0804ABC0
	push {lr}
	ldr r0, _0804ABD4 @ =0x0300088C
	ldr r0, [r0]
	cmp r0, #0
	beq _0804ABCE
	bl Free
_0804ABCE:
	pop {r0}
	bx r0
	.align 2, 0
_0804ABD4: .4byte 0x0300088C

	thumb_func_start sub_0804ABD8
sub_0804ABD8: @ 0x0804ABD8
	push {r4, lr}
	movs r3, #0
	movs r1, #0
	ldr r0, _0804AC14 @ =0x03000888
	ldrb r2, [r0]
	cmp r3, r2
	bhs _0804AC0C
	ldr r0, _0804AC18 @ =0x0300088C
	ldr r4, [r0]
_0804ABEA:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AC02
	cmp r0, #2
	beq _0804AC02
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804AC02:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804ABEA
_0804AC0C:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804AC14: .4byte 0x03000888
_0804AC18: .4byte 0x0300088C

	thumb_func_start sub_0804AC1C
sub_0804AC1C: @ 0x0804AC1C
	push {r4, r5, r6, lr}
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
	ldr r1, _0804AD0C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804AD10 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804AD14 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804AD18 @ =0x00001D01
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x1e
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804AD1C @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1d
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804AD20 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1d
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804AD24 @ =0x0600E800
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804AD3E
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804AD2C
	ldr r1, _0804AD28 @ =0x06004000
	b _0804AD30
	.align 2, 0
_0804AD0C: .4byte 0xFFFF0000
_0804AD10: .4byte 0x00001F03
_0804AD14: .4byte 0x00001E02
_0804AD18: .4byte 0x00001D01
_0804AD1C: .4byte 0x0600F800
_0804AD20: .4byte 0x0600F000
_0804AD24: .4byte 0x0600E800
_0804AD28: .4byte 0x06004000
_0804AD2C:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804AD30:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804AD4E
_0804AD3E:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804AD4E:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804AD88 @ =0x030008D8
	ldr r1, _0804AD8C @ =0x00100053
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _0804AD90 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AD88: .4byte 0x030008D8
_0804AD8C: .4byte 0x00100053
_0804AD90: .4byte gBgRegsBuffer

	thumb_func_start sub_0804AD94
sub_0804AD94: @ 0x0804AD94
	push {r4, lr}
	ldr r2, _0804ADE0 @ =gBgRegsBuffer
	ldr r0, _0804ADE4 @ =0x030008C9
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #8
	subs r0, r0, r1
	strh r0, [r2, #0xc]
	ldr r0, _0804ADE8 @ =0x030008CA
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	rsbs r0, r0, #0
	strh r0, [r2, #0xe]
	ldr r4, _0804ADEC @ =0x030008CC
	ldrb r1, [r4]
	lsrs r3, r1, #3
	strh r3, [r2, #8]
	ldrb r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
	strh r3, [r2, #4]
	ldrb r0, [r4]
	rsbs r0, r0, #0
	asrs r0, r0, #1
	strh r0, [r2, #6]
	adds r1, #0xa
	strb r1, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xef
	bls _0804ADD8
	movs r0, #0
	strb r0, [r4]
_0804ADD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804ADE0: .4byte gBgRegsBuffer
_0804ADE4: .4byte 0x030008C9
_0804ADE8: .4byte 0x030008CA
_0804ADEC: .4byte 0x030008CC

	thumb_func_start sub_0804ADF0
sub_0804ADF0: @ 0x0804ADF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r0, #0x76
	bl PlaySE
	movs r5, #0
_0804AE10:
	bl WaitFrame
	bl sub_0804AD94
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0804AE10
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r5, #0
	ldr r7, _0804B01C @ =0x0000FFC4
_0804AE32:
	cmp r5, #0x3f
	bhi _0804AE48
	lsrs r3, r5, #2
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
_0804AE48:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl sub_0804AD94
	bl WaitFrame
	adds r4, #4
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x4f
	ble _0804AE32
	movs r0, #0x68
	bl PlaySE
	movs r0, #5
	mov r8, r0
	movs r5, #0
	ldr r6, _0804B024 @ =gBgRegsBuffer
_0804AE84:
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl sub_0804AD94
	rsbs r4, r4, #0
	adds r4, #0x4e
	strh r4, [r6, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0804AE84
	movs r2, #2
	mov r8, r2
	movs r5, #0
	ldr r3, _0804B024 @ =gBgRegsBuffer
	mov sl, r3
	mov sb, r5
_0804AEDA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	bl sub_0804AD94
	lsls r6, r7, #0x10
	asrs r4, r6, #0x10
	rsbs r0, r4, #0
	adds r0, #0x4e
	mov r3, sl
	strh r0, [r3, #0xe]
	ldr r0, _0804B028 @ =0x030008C9
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0804B02C @ =0x030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08005F60
	mov r0, sb
	str r0, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0804AEDA
	movs r5, #0
	mov sl, r6
_0804AF38:
	bl sub_0804AD94
	movs r6, #0
	str r6, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0804AF38
	str r6, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	movs r5, #0
_0804AF70:
	bl sub_0804AD94
	movs r6, #0
	str r6, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0804AF70
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x77
	bl PlaySE
	ldr r1, _0804B030 @ =0x030008CB
	movs r0, #0x1e
	strb r0, [r1]
	movs r5, #0
	mov sb, r5
	ldr r7, _0804B028 @ =0x030008C9
	ldr r6, _0804B02C @ =0x030008CA
	ldr r0, _0804B020 @ =0x030008D8
	mov r8, r0
_0804AFBE:
	lsrs r0, r5, #1
	movs r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x10
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
	adds r0, r5, #0
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0804B038
	ldr r4, _0804B030 @ =0x030008CB
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804B034
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r7]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r6]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0804B038
	.align 2, 0
_0804B01C: .4byte 0x0000FFC4
_0804B020: .4byte 0x030008D8
_0804B024: .4byte gBgRegsBuffer
_0804B028: .4byte 0x030008C9
_0804B02C: .4byte 0x030008CA
_0804B030: .4byte 0x030008CB
_0804B034:
	strb r0, [r7]
	strb r0, [r6]
_0804B038:
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r2, r2, r0
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x50
	mov r2, sb
	str r2, [sp]
	ldr r3, _0804B13C @ =0x030008F4
	str r3, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r3, #0
	bl sub_08003FA4
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, #0xb4
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x50
	mov r3, sb
	str r3, [sp]
	ldr r2, _0804B13C @ =0x030008F4
	str r2, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r2, #2
	movs r3, #0
	bl sub_08003FA4
	bl sub_0804AD94
	movs r0, #0
	ldrsb r0, [r7, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r6, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bhi _0804B0CA
	b _0804AFBE
_0804B0CA:
	movs r5, #0
	ldr r7, _0804B140 @ =0x030008C9
	ldr r6, _0804B144 @ =0x030008CA
_0804B0D0:
	movs r0, #0xfa
	lsls r0, r0, #3
	bl sub_0804B2A8
	movs r0, #0
	bl sub_0804B3A4
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B148 @ =0x030008D8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0804B154
	ldr r4, _0804B14C @ =0x030008CB
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804B150
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r7]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r6]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0804B154
	.align 2, 0
_0804B13C: .4byte 0x030008F4
_0804B140: .4byte 0x030008C9
_0804B144: .4byte 0x030008CA
_0804B148: .4byte 0x030008D8
_0804B14C: .4byte 0x030008CB
_0804B150:
	strb r0, [r7]
	strb r0, [r6]
_0804B154:
	bl sub_0804AD94
	movs r0, #0
	ldrsb r0, [r7, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r6, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _0804B0D0
_0804B176:
	movs r2, #0
	movs r5, #0
	ldr r0, _0804B220 @ =0x030008C8
	ldrb r1, [r0]
	cmp r5, r1
	bhs _0804B1A4
	ldr r0, _0804B224 @ =0x030008D0
	ldr r3, [r0]
_0804B186:
	lsls r0, r5, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B19A
	cmp r0, #3
	beq _0804B19A
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0804B19A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804B186
_0804B1A4:
	cmp r2, #0
	beq _0804B246
	movs r0, #0
	bl sub_0804B3A4
	ldr r6, _0804B228 @ =0x030008C9
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x78
	mov r0, sl
	asrs r2, r0, #0x10
	ldr r4, _0804B22C @ =0x030008CA
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B230 @ =0x030008D8
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	ldrsb r0, [r6, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r4, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _0804B23C
	ldr r5, _0804B234 @ =0x030008CB
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804B238
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r5]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r5]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0804B23C
	.align 2, 0
_0804B220: .4byte 0x030008C8
_0804B224: .4byte 0x030008D0
_0804B228: .4byte 0x030008C9
_0804B22C: .4byte 0x030008CA
_0804B230: .4byte 0x030008D8
_0804B234: .4byte 0x030008CB
_0804B238:
	strb r0, [r6]
	strb r0, [r4]
_0804B23C:
	bl sub_0804AD94
	bl WaitFrame
	b _0804B176
_0804B246:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
_0804B25E:
	bl sub_0804AD94
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B2A4 @ =0x030008D8
	movs r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	cmp r5, #0x2c
	bne _0804B282
	movs r0, #6
	bl sub_0800F3A0
_0804B282:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0804B25E
	movs r0, #0x76
	bl StopSE
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B2A4: .4byte 0x030008D8

	thumb_func_start sub_0804B2A8
sub_0804B2A8: @ 0x0804B2A8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
	movs r1, #0
	ldr r0, _0804B314 @ =0x030008C8
	ldrb r2, [r0]
	cmp r4, r2
	bhs _0804B2DC
	ldr r0, _0804B318 @ =0x030008D0
	ldr r3, [r0]
_0804B2BE:
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B2D2
	cmp r0, #3
	beq _0804B2D2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0804B2D2:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804B2BE
_0804B2DC:
	bl Random
	lsls r0, r0, #0x10
	lsls r1, r5, #0x10
	cmp r0, r1
	ble _0804B394
	cmp r4, #0
	bne _0804B394
	ldr r1, _0804B31C @ =0x030008CB
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0x77
	bl PlaySE
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804B320
	ldr r0, _0804B314 @ =0x030008C8
	ldrb r0, [r0]
	ldr r1, _0804B318 @ =0x030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #1
	b _0804B32E
	.align 2, 0
_0804B314: .4byte 0x030008C8
_0804B318: .4byte 0x030008D0
_0804B31C: .4byte 0x030008CB
_0804B320:
	ldr r0, _0804B34C @ =0x030008C8
	ldrb r0, [r0]
	ldr r1, _0804B350 @ =0x030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #2
_0804B32E:
	strb r1, [r0]
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804B354
	ldr r0, _0804B34C @ =0x030008C8
	ldrb r0, [r0]
	ldr r1, _0804B350 @ =0x030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x1e
	b _0804B362
	.align 2, 0
_0804B34C: .4byte 0x030008C8
_0804B350: .4byte 0x030008D0
_0804B354:
	ldr r0, _0804B39C @ =0x030008C8
	ldrb r0, [r0]
	ldr r1, _0804B3A0 @ =0x030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0xb4
_0804B362:
	strh r1, [r0, #2]
	bl Random
	ldr r5, _0804B39C @ =0x030008C8
	ldrb r4, [r5]
	ldr r1, _0804B3A0 @ =0x030008D0
	ldr r6, [r1]
	lsls r4, r4, #2
	adds r4, r4, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1e
	bl __umodsi3
	ldrh r1, [r4, #2]
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	strb r2, [r0, #1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0804B394:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B39C: .4byte 0x030008C8
_0804B3A0: .4byte 0x030008D0

	thumb_func_start sub_0804B3A4
sub_0804B3A4: @ 0x0804B3A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r0, _0804B3EC @ =0x030008D0
	ldr r4, [r0]
	movs r7, #0
	movs r0, #0x10
	mov r8, r0
	ldr r1, _0804B3F0 @ =0x030008F4
	mov sb, r1
	mov r6, sb
	subs r6, #0x1c
_0804B3C0:
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804B4AA
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhi _0804B3F4
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #1]
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r0, #0x1f
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _0804B4B6
	.align 2, 0
_0804B3EC: .4byte 0x030008D0
_0804B3F0: .4byte 0x030008F4
_0804B3F4:
	ldrb r0, [r4, #1]
	movs r3, #0x12
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
	ldrb r3, [r4]
	cmp r3, #1
	bne _0804B450
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r1, _0804B448 @ =0x030008C9
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, _0804B44C @ =0x030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x50
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r2, #1
	movs r3, #0
	bl sub_08003FA4
	b _0804B482
	.align 2, 0
_0804B448: .4byte 0x030008C9
_0804B44C: .4byte 0x030008CA
_0804B450:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r1, _0804B4C4 @ =0x030008C9
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, _0804B4C8 @ =0x030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x50
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r2, #2
	movs r3, #0
	bl sub_08003FA4
_0804B482:
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bls _0804B4AA
	strb r1, [r4, #1]
	mov r0, r8
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #8
	movs r2, #1
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	strb r0, [r4]
_0804B4AA:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r4, #4
	cmp r7, #9
	bls _0804B3C0
_0804B4B6:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B4C4: .4byte 0x030008C9
_0804B4C8: .4byte 0x030008CA

	thumb_func_start sub_0804B4CC
sub_0804B4CC: @ 0x0804B4CC
	push {r4, lr}
	ldr r0, _0804B4FC @ =0x030008C8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0804B500 @ =0x030008C9
	strb r1, [r0]
	ldr r0, _0804B504 @ =0x030008CA
	strb r1, [r0]
	ldr r0, _0804B508 @ =0x030008CB
	strb r1, [r0]
	ldr r0, _0804B50C @ =0x030008CC
	strb r1, [r0]
	ldr r4, _0804B510 @ =0x030008D0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	movs r1, #0x28
	bl bzero
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B4FC: .4byte 0x030008C8
_0804B500: .4byte 0x030008C9
_0804B504: .4byte 0x030008CA
_0804B508: .4byte 0x030008CB
_0804B50C: .4byte 0x030008CC
_0804B510: .4byte 0x030008D0

	thumb_func_start sub_0804B514
sub_0804B514: @ 0x0804B514
	push {lr}
	ldr r0, _0804B528 @ =0x030008D0
	ldr r0, [r0]
	cmp r0, #0
	beq _0804B522
	bl Free
_0804B522:
	pop {r0}
	bx r0
	.align 2, 0
_0804B528: .4byte 0x030008D0

	thumb_func_start sub_0804B52C
sub_0804B52C: @ 0x0804B52C
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
	ldr r1, _0804B5EC @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804B5F0 @ =0x00005A02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804B5F4 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x16
	bl GetDataRecord
	adds r5, r0, #0
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _0804B5F8 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r4, #0
	bl Free
	movs r0, #0x17
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _0804B5FC @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
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
	beq _0804B616
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804B604
	ldr r1, _0804B600 @ =0x06004000
	b _0804B608
	.align 2, 0
_0804B5EC: .4byte 0xFFFF0000
_0804B5F0: .4byte 0x00005A02
_0804B5F4: .4byte 0x00001F03
_0804B5F8: .4byte 0x0600F800
_0804B5FC: .4byte 0x0600D000
_0804B600: .4byte 0x06004000
_0804B604:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804B608:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804B626
_0804B616:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804B626:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804B658 @ =0x03000918
	ldr r1, _0804B65C @ =0x00100054
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
_0804B658: .4byte 0x03000918
_0804B65C: .4byte 0x00100054

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
	ldr r0, _0804B820 @ =0x03000918
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
	ldr r7, _0804B820 @ =0x03000918
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
	ldr r5, _0804B820 @ =0x03000918
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
	ldr r2, _0804B820 @ =0x03000918
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
_0804B820: .4byte 0x03000918
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
	ldr r7, _0804BB78 @ =0x03000918
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
	ldr r5, _0804BB78 @ =0x03000918
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
	ldr r7, _0804BB78 @ =0x03000918
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
	ldr r7, _0804BB78 @ =0x03000918
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
	ldr r5, _0804BB78 @ =0x03000918
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
	ldr r7, _0804BB78 @ =0x03000918
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
	ldr r5, _0804BB78 @ =0x03000918
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
	ldr r0, _0804BB78 @ =0x03000918
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
	ldr r2, _0804BB78 @ =0x03000918
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
_0804BB78: .4byte 0x03000918
_0804BB7C: .4byte gBgRegsBuffer
_0804BB80: .4byte gUnknown_03000910
_0804BB84: .4byte gUnknown_03000912
