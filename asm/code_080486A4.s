	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080486A4
sub_080486A4: @ 0x080486A4
	ldr r1, _080486C0 @ =gUnknown_03000768
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080486C4 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_080486C0: .4byte gUnknown_03000768
_080486C4: .4byte gBgRegsBuffer

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
	ldr r0, _0804B824 @ =0x03000910
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
	ldr r3, _0804B828 @ =0x03000912
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
	ldr r1, _0804B824 @ =0x03000910
	mov r0, r8
	strh r0, [r1]
	ldr r0, _0804B828 @ =0x03000912
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
	ldr r3, _0804B828 @ =0x03000912
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
	ldr r0, _0804B824 @ =0x03000910
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
_0804B824: .4byte 0x03000910
_0804B828: .4byte 0x03000912
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
	ldr r4, _0804BB80 @ =0x03000910
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
	ldr r3, _0804BB84 @ =0x03000912
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
	ldr r4, _0804BB80 @ =0x03000910
	movs r1, #0
	strh r1, [r4]
	ldr r0, _0804BB84 @ =0x03000912
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
	ldr r3, _0804BB84 @ =0x03000912
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
	ldr r2, _0804BB80 @ =0x03000910
	movs r1, #0
	strh r1, [r2]
	ldr r0, _0804BB84 @ =0x03000912
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
	ldr r3, _0804BB84 @ =0x03000912
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
	ldr r4, _0804BB80 @ =0x03000910
	movs r1, #0
	strh r1, [r4]
	ldr r0, _0804BB84 @ =0x03000912
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
	ldr r3, _0804BB84 @ =0x03000912
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
_0804BB80: .4byte 0x03000910
_0804BB84: .4byte 0x03000912

	thumb_func_start sub_0804BB88
sub_0804BB88: @ 0x0804BB88
	ldr r0, _0804BB94 @ =0x03000910
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0804BB98 @ =0x03000912
	strh r1, [r0]
	bx lr
	.align 2, 0
_0804BB94: .4byte 0x03000910
_0804BB98: .4byte 0x03000912

	thumb_func_start sub_0804BB9C
sub_0804BB9C: @ 0x0804BB9C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804BBA0
sub_0804BBA0: @ 0x0804BBA0
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
	ldr r1, _0804BC90 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804BC94 @ =0x00009A01
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804BC98 @ =0x00001E43
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804BC9C @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x19
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804BCA0 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1a
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804BCA4 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x18
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804BCA8 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
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
	beq _0804BCC2
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804BCB0
	ldr r1, _0804BCAC @ =0x06004000
	b _0804BCB4
	.align 2, 0
_0804BC90: .4byte 0xFFFF0000
_0804BC94: .4byte 0x00009A01
_0804BC98: .4byte 0x00001E43
_0804BC9C: .4byte 0x00001F03
_0804BCA0: .4byte 0x0600F800
_0804BCA4: .4byte 0x0600F000
_0804BCA8: .4byte 0x0600D000
_0804BCAC: .4byte 0x06004000
_0804BCB0:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804BCB4:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804BCD2
_0804BCC2:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804BCD2:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804BD04 @ =0x03000960
	ldr r1, _0804BD08 @ =0x0010004E
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD04: .4byte 0x03000960
_0804BD08: .4byte 0x0010004E

	thumb_func_start sub_0804BD0C
sub_0804BD0C: @ 0x0804BD0C
	push {r4, lr}
	ldr r4, _0804BD40 @ =0x03000956
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	ldr r3, _0804BD44 @ =gBgRegsBuffer
	ldrh r2, [r4]
	lsls r1, r2, #2
	rsbs r1, r1, #0
	strh r1, [r3, #8]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r1, #1
	strh r1, [r3, #0xa]
	adds r2, #1
	rsbs r1, r2, #0
	strh r1, [r3, #0xc]
	asrs r0, r0, #0x12
	strh r0, [r3, #0xe]
	strh r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD40: .4byte 0x03000956
_0804BD44: .4byte gBgRegsBuffer

	thumb_func_start sub_0804BD48
sub_0804BD48: @ 0x0804BD48
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
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	ldr r1, _0804BE68 @ =gBgRegsBuffer
	strh r4, [r1, #4]
	ldr r0, _0804BE6C @ =0x0000FF60
	strh r0, [r1, #6]
	movs r0, #0x7c
	bl PlaySE
	movs r7, #0
_0804BD8E:
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804BD8E
	movs r0, #0x7d
	bl PlaySE
	movs r7, #0
	ldr r4, _0804BE68 @ =gBgRegsBuffer
_0804BDB0:
	ldrh r0, [r4, #6]
	adds r0, #2
	strh r0, [r4, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _0804BDB0
	movs r0, #0
	mov r8, r0
	ldr r1, _0804BE68 @ =gBgRegsBuffer
	ldrh r0, [r1, #6]
	movs r7, #0
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r6, _0804BE70 @ =0x0805289C
	mov sl, r0
_0804BDE2:
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r5, r0
	asrs r0, r0, #4
	mov r1, sb
	strh r0, [r1, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804BDE2
	movs r0, #0x6c
	bl PlaySE
	movs r7, #0
	ldr r0, _0804BE68 @ =gBgRegsBuffer
	mov sb, r0
	mov r1, sl
	asrs r5, r1, #0x10
	ldr r6, _0804BE70 @ =0x0805289C
_0804BE34:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	ldr r2, _0804BE74 @ =0xFFE10000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	cmp r0, #0x3a
	bhi _0804BE98
	cmp r1, #0x3b
	bgt _0804BE78
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	subs r0, #0x1e
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _0804BE98
	.align 2, 0
_0804BE68: .4byte gBgRegsBuffer
_0804BE6C: .4byte 0x0000FF60
_0804BE70: .4byte 0x0805289C
_0804BE74: .4byte 0xFFE10000
_0804BE78:
	movs r0, #0
	str r0, [sp]
	movs r0, #0x5a
	subs r0, r0, r1
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
_0804BE98:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r5, r0
	asrs r0, r0, #4
	mov r2, sb
	strh r0, [r2, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _0804BE34
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r7, #0
	ldr r2, _0804BFC8 @ =gBgRegsBuffer
	mov sb, r2
	mov r0, sl
	asrs r5, r0, #0x10
	ldr r6, _0804BFCC @ =0x0805289C
_0804BEF4:
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r5, r0
	asrs r0, r0, #4
	mov r1, sb
	strh r0, [r1, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804BEF4
	ldr r1, _0804BFD0 @ =0x03000954
	ldr r5, _0804BFC8 @ =gBgRegsBuffer
	ldrh r0, [r5, #4]
	strh r0, [r1]
	movs r0, #0x10
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	ldr r0, _0804BFD4 @ =0x03000958
	strh r4, [r0]
	ldr r0, _0804BFD8 @ =0x0300095A
	strh r4, [r0]
	movs r0, #0x7e
	bl PlaySE
	movs r7, #0
	mov sb, r5
_0804BF60:
	mov r0, r8
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	ldr r1, _0804BFCC @ =0x0805289C
	adds r0, r0, r1
	ldrh r4, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x14
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_0804C0A8
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_0804C0A8
	bl sub_0804C238
	mov r2, sl
	asrs r6, r2, #0x10
	adds r4, r6, r4
	mov r0, sb
	strh r4, [r0, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r5, #2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd1
	ble _0804BF60
	movs r0, #0x7e
	bl StopSE
	ldr r7, _0804BFC8 @ =gBgRegsBuffer
	adds r4, r6, #0
	ldr r5, _0804BFCC @ =0x0805289C
	b _0804C012
	.align 2, 0
_0804BFC8: .4byte gBgRegsBuffer
_0804BFCC: .4byte 0x0805289C
_0804BFD0: .4byte 0x03000954
_0804BFD4: .4byte 0x03000958
_0804BFD8: .4byte 0x0300095A
_0804BFDC:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_0804C238
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	asrs r0, r0, #4
	strh r0, [r7, #6]
	bl sub_0804BD0C
	bl WaitFrame
_0804C012:
	bl sub_0804C34C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0804BFDC
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r7, #0
	mov r2, sl
	asrs r6, r2, #0x10
	ldr r0, _0804C0A0 @ =0x0805289C
	mov sb, r0
_0804C03E:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x2c
	bne _0804C04C
	movs r0, #6
	bl sub_0800F3A0
_0804C04C:
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r6, r0
	asrs r0, r0, #4
	ldr r1, _0804C0A4 @ =gBgRegsBuffer
	strh r0, [r1, #6]
	bl sub_0804BD0C
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C03E
	movs r0, #0x7c
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
_0804C0A0: .4byte 0x0805289C
_0804C0A4: .4byte gBgRegsBuffer

	thumb_func_start sub_0804C0A8
sub_0804C0A8: @ 0x0804C0A8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0804C0C8 @ =0x03000950
	ldrh r3, [r0]
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r1, r0, #0
	cmp r2, #0
	beq _0804C0D0
	cmp r2, #0
	ble _0804C0CC
	subs r0, r3, #1
	b _0804C0CE
	.align 2, 0
_0804C0C8: .4byte 0x03000950
_0804C0CC:
	adds r0, r3, #1
_0804C0CE:
	strh r0, [r1]
_0804C0D0:
	ldr r2, _0804C0F4 @ =gBgRegsBuffer
	ldr r3, _0804C0F8 @ =0x03000954
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2, #4]
	ldr r0, _0804C0FC @ =0x03000952
	ldrh r5, [r0]
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r1, r0, #0
	cmp r4, #0
	beq _0804C104
	cmp r4, #0
	ble _0804C100
	subs r0, r5, #1
	b _0804C102
	.align 2, 0
_0804C0F4: .4byte gBgRegsBuffer
_0804C0F8: .4byte 0x03000954
_0804C0FC: .4byte 0x03000952
_0804C100:
	adds r0, r5, #1
_0804C102:
	strh r0, [r1]
_0804C104:
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2, #6]
	lsls r0, r6, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0804C11C
_0804C114:
	movs r0, #0
	b _0804C22C
_0804C118:
	adds r0, r1, #0
	b _0804C138
_0804C11C:
	movs r1, #0
	ldr r3, _0804C1F0 @ =0x0300095C
	ldr r2, [r3]
_0804C122:
	lsls r0, r1, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804C118
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x3b
	bls _0804C122
	movs r0, #0x3c
_0804C138:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	beq _0804C114
	lsls r1, r0, #4
	ldr r0, [r3]
	adds r6, r0, r1
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0804C154
	rsbs r1, r1, #0
_0804C154:
	asrs r0, r4, #0x10
	cmp r1, r0
	ble _0804C22A
	movs r5, #0
	movs r0, #1
	strb r0, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc8
	bl __modsi3
	movs r4, #0
	strh r0, [r6, #4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x78
	bl __modsi3
	strh r0, [r6, #6]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r1, #8
	strb r1, [r6, #1]
	strb r4, [r6, #2]
	strh r5, [r6, #8]
	strh r5, [r6, #0xa]
	ldr r4, _0804C1F4 @ =0x03000950
	ldrh r0, [r4]
	adds r0, #0x5c
	strh r0, [r6, #0xc]
	ldr r0, _0804C1F8 @ =0x03000952
	ldrh r1, [r0]
	adds r1, #0x60
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0xe]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0804C1C4
	adds r0, r1, #3
_0804C1C4:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0804C1D4
	rsbs r0, r0, #0
_0804C1D4:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #4
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0804C1FC
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	adds r2, r1, #0
	b _0804C206
	.align 2, 0
_0804C1F0: .4byte 0x0300095C
_0804C1F4: .4byte 0x03000950
_0804C1F8: .4byte 0x03000952
_0804C1FC:
	ldrh r0, [r4]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	subs r0, r0, r1
	strh r0, [r4]
_0804C206:
	movs r1, #6
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0804C220
	ldr r1, _0804C21C @ =0x03000952
	asrs r0, r2, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _0804C22A
	.align 2, 0
_0804C21C: .4byte 0x03000952
_0804C220:
	ldr r0, _0804C234 @ =0x03000952
	ldrh r1, [r0]
	asrs r2, r2, #0x10
	subs r1, r1, r2
	strh r1, [r0]
_0804C22A:
	movs r0, #1
_0804C22C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804C234: .4byte 0x03000952

	thumb_func_start sub_0804C238
sub_0804C238: @ 0x0804C238
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r0, _0804C2D8 @ =0x0300095C
	ldr r6, [r0]
	movs r0, #0
	mov sb, r0
	ldr r1, _0804C2DC @ =0x03000960
	mov r8, r1
_0804C24E:
	ldrb r7, [r6]
	cmp r7, #1
	bne _0804C2BA
	movs r2, #4
	ldrsh r0, [r6, r2]
	ldrb r1, [r6, #2]
	adds r5, r0, #0
	muls r5, r1, r5
	asrs r5, r5, #7
	movs r4, #6
	ldrsh r0, [r6, r4]
	adds r4, r0, #0
	muls r4, r1, r4
	asrs r4, r4, #7
	adds r2, r6, #0
	adds r2, #8
	adds r3, r6, #0
	adds r3, #0xa
	str r7, [sp]
	mov r0, r8
	movs r1, #0
	bl sub_08026C40
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	adds r0, r0, r5
	movs r2, #0xe
	ldrsh r1, [r6, r2]
	adds r1, r1, r4
	ldrh r3, [r6, #8]
	movs r2, #0
	str r2, [sp]
	mov r2, r8
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r4, r8
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r2, #0
	bl sub_08003FA4
	ldrb r0, [r6, #1]
	ldrb r1, [r6, #2]
	adds r0, r0, r1
	strb r0, [r6, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _0804C2BA
	movs r0, #2
	strb r0, [r6]
_0804C2BA:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r6, #0x10
	cmp r0, #0x3b
	bls _0804C24E
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C2D8: .4byte 0x0300095C
_0804C2DC: .4byte 0x03000960

	thumb_func_start sub_0804C2E0
sub_0804C2E0: @ 0x0804C2E0
	push {r4, r5, lr}
	ldr r0, _0804C318 @ =0x03000956
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0804C31C @ =0x03000958
	strh r1, [r0]
	ldr r0, _0804C320 @ =0x0300095A
	strh r1, [r0]
	ldr r0, _0804C324 @ =0x03000950
	strh r1, [r0]
	ldr r0, _0804C328 @ =0x03000952
	strh r1, [r0]
	ldr r0, _0804C32C @ =0x03000954
	strh r1, [r0]
	ldr r5, _0804C330 @ =0x0300095C
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
_0804C318: .4byte 0x03000956
_0804C31C: .4byte 0x03000958
_0804C320: .4byte 0x0300095A
_0804C324: .4byte 0x03000950
_0804C328: .4byte 0x03000952
_0804C32C: .4byte 0x03000954
_0804C330: .4byte 0x0300095C

	thumb_func_start sub_0804C334
sub_0804C334: @ 0x0804C334
	push {lr}
	ldr r0, _0804C348 @ =0x0300095C
	ldr r0, [r0]
	cmp r0, #0
	beq _0804C342
	bl Free
_0804C342:
	pop {r0}
	bx r0
	.align 2, 0
_0804C348: .4byte 0x0300095C

	thumb_func_start sub_0804C34C
sub_0804C34C: @ 0x0804C34C
	movs r2, #0
	movs r1, #0
	ldr r0, _0804C378 @ =0x0300095C
	ldr r3, [r0]
_0804C354:
	lsls r0, r1, #4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C368
	cmp r0, #2
	beq _0804C368
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0804C368:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x3b
	bls _0804C354
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0804C378: .4byte 0x0300095C

	thumb_func_start sub_0804C37C
sub_0804C37C: @ 0x0804C37C
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
	ldr r1, _0804C43C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804C440 @ =0x00001E43
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804C444 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x1b
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804C448 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1c
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804C44C @ =0x0600F000
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
	beq _0804C466
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804C454
	ldr r1, _0804C450 @ =0x06004000
	b _0804C458
	.align 2, 0
_0804C43C: .4byte 0xFFFF0000
_0804C440: .4byte 0x00001E43
_0804C444: .4byte 0x00001F03
_0804C448: .4byte 0x0600F800
_0804C44C: .4byte 0x0600F000
_0804C450: .4byte 0x06004000
_0804C454:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804C458:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804C476
_0804C466:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804C476:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804C4A8 @ =0x030009A0
	ldr r1, _0804C4AC @ =0x00100050
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C4A8: .4byte 0x030009A0
_0804C4AC: .4byte 0x00100050

	thumb_func_start sub_0804C4B0
sub_0804C4B0: @ 0x0804C4B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r7, _0804C50C @ =0x03000998
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	ldr r6, _0804C510 @ =gBgRegsBuffer
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #4
	strh r1, [r6, #0xa]
	lsls r0, r0, #2
	strh r0, [r6, #0xe]
	ldr r0, _0804C514 @ =0x0805289C
	mov r8, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r6, #8]
	strh r0, [r6, #0xc]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0x3b
	bgt _0804C518
	ldrh r0, [r7]
	adds r0, #1
	b _0804C53A
	.align 2, 0
_0804C50C: .4byte 0x03000998
_0804C510: .4byte gBgRegsBuffer
_0804C514: .4byte 0x0805289C
_0804C518:
	cmp r5, #0x77
	bgt _0804C522
	ldrh r0, [r7]
	adds r0, #2
	b _0804C53A
_0804C522:
	cmp r5, #0xb3
	bgt _0804C52C
	ldrh r0, [r7]
	adds r0, #4
	b _0804C53A
_0804C52C:
	cmp r5, #0xef
	bgt _0804C536
	ldrh r0, [r7]
	adds r0, #6
	b _0804C53A
_0804C536:
	ldrh r0, [r7]
	adds r0, #8
_0804C53A:
	strh r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804C548
sub_0804C548: @ 0x0804C548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	ldr r1, _0804C7A0 @ =gBgRegsBuffer
	ldr r0, _0804C7A4 @ =0x0000FFF8
	strh r0, [r1, #8]
	strh r0, [r1, #0xc]
	movs r0, #0x37
	bl PlaySE
	movs r5, #0
_0804C58C:
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C58C
	movs r5, #0
_0804C5AA:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, #0
	subs r2, #0x40
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804C7A8 @ =0x030009A0
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x8f
	ble _0804C5AA
	movs r0, #0x68
	bl PlaySE
	movs r5, #0
_0804C5E0:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0804C7A8 @ =0x030009A0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C5E0
	movs r0, #0x7f
	bl PlaySE
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	movs r5, #0
	ldr r6, _0804C7A8 @ =0x030009A0
	ldr r0, _0804C7AC @ =0x0300099A
	mov sl, r0
	movs r1, #1
	mov sb, r1
_0804C630:
	lsls r3, r5, #0x10
	asrs r4, r3, #0x10
	asrs r3, r3, #0x13
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r7, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	bl sub_080044E4
	movs r2, #0
	str r2, [sp]
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #1
	mov r2, sl
	ldr r3, _0804C7B0 @ =0x0300099C
	bl sub_08026C40
	mov r1, sl
	ldrh r3, [r1]
	movs r2, #0
	str r2, [sp]
	movs r0, #0x1c
	adds r0, r0, r6
	mov r8, r0
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	str r0, [sp, #8]
	ldr r0, [r6]
	str r0, [sp, #0xc]
	mov r1, sb
	str r1, [sp, #0x10]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #1
	bl sub_08003FA4
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x7f
	ble _0804C630
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	movs r5, #0
	mov r4, r8
	subs r4, #0x1c
	mov r8, r5
	ldr r7, _0804C7AC @ =0x0300099A
	movs r6, #1
_0804C6C4:
	mov r2, r8
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r7, #0
	ldr r3, _0804C7B0 @ =0x0300099C
	bl sub_08026C40
	ldrh r3, [r7]
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #1
	bl sub_08003FA4
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804C6C4
	ldr r0, _0804C7AC @ =0x0300099A
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0804C7B0 @ =0x0300099C
	strh r1, [r0]
	movs r2, #0
	mov r8, r2
	movs r5, #0
_0804C72E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	add r1, sp
	adds r1, #0x14
	strh r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0804C72E
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	movs r5, #0
_0804C75A:
	ldr r4, _0804C7A8 @ =0x030009A0
	ldr r2, _0804C7AC @ =0x0300099A
	ldr r3, _0804C7B0 @ =0x0300099C
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08026C40
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	movs r1, #6
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r4, #0
	cmp r0, #5
	bls _0804C794
	b _0804C8A8
_0804C794:
	lsls r0, r0, #2
	ldr r1, _0804C7B4 @ =_0804C7B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804C7A0: .4byte gBgRegsBuffer
_0804C7A4: .4byte 0x0000FFF8
_0804C7A8: .4byte 0x030009A0
_0804C7AC: .4byte 0x0300099A
_0804C7B0: .4byte 0x0300099C
_0804C7B4: .4byte _0804C7B8
_0804C7B8: @ jump table
	.4byte _0804C7D0 @ case 0
	.4byte _0804C7DE @ case 1
	.4byte _0804C7F2 @ case 2
	.4byte _0804C828 @ case 3
	.4byte _0804C83E @ case 4
	.4byte _0804C87C @ case 5
_0804C7D0:
	add r0, sp, #0x14
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x78
	add r1, sp, #0x14
	ldrh r2, [r1]
	b _0804C84C
_0804C7DE:
	add r0, sp, #0x14
	movs r2, #2
	ldrsh r0, [r0, r2]
	adds r0, #0x78
	add r1, sp, #0x14
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #0x50
	b _0804C854
_0804C7F2:
	add r0, sp, #0x14
	movs r2, #4
	ldrsh r1, [r0, r2]
	adds r1, #0x50
	ldr r0, _0804C820 @ =0x0300099A
	ldrh r3, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r2, _0804C824 @ =0x030009BC
	str r2, [sp, #4]
	subs r2, #0x1c
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x78
	movs r2, #1
	bl sub_08003FA4
	b _0804C8A8
	.align 2, 0
_0804C820: .4byte 0x0300099A
_0804C824: .4byte 0x030009BC
_0804C828:
	add r0, sp, #0x14
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r0, #0x78
	subs r0, r0, r1
	add r1, sp, #0x14
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #0x50
	b _0804C854
_0804C83E:
	add r0, sp, #0x14
	movs r2, #8
	ldrsh r1, [r0, r2]
	movs r0, #0x78
	subs r0, r0, r1
	add r1, sp, #0x14
	ldrh r2, [r1, #8]
_0804C84C:
	lsls r2, r2, #0x10
	asrs r2, r2, #0x11
	movs r1, #0x50
	subs r1, r1, r2
_0804C854:
	ldr r2, _0804C874 @ =0x0300099A
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	ldr r4, _0804C878 @ =0x030009BC
	str r4, [sp, #4]
	subs r4, #0x1c
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	bl sub_08003FA4
	b _0804C8A8
	.align 2, 0
_0804C874: .4byte 0x0300099A
_0804C878: .4byte 0x030009BC
_0804C87C:
	add r0, sp, #0x14
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	movs r1, #0x50
	subs r1, r1, r0
	ldr r0, _0804C8C0 @ =0x0300099A
	ldrh r3, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r2, _0804C8C4 @ =0x030009BC
	str r2, [sp, #4]
	subs r2, #0x1c
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x78
	movs r2, #1
	bl sub_08003FA4
_0804C8A8:
	asrs r0, r7, #0x10
	cmp r0, #0xc7
	bgt _0804C8C8
	lsls r0, r6, #0x10
	asrs r0, r0, #0xf
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x14
	ldrh r0, [r1]
	adds r0, #1
	b _0804C8D6
	.align 2, 0
_0804C8C0: .4byte 0x0300099A
_0804C8C4: .4byte 0x030009BC
_0804C8C8:
	lsls r0, r6, #0x10
	asrs r0, r0, #0xf
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x14
	ldrh r0, [r1]
	adds r0, #3
_0804C8D6:
	strh r0, [r1]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r5, r0
	ble _0804C902
	ldr r2, _0804C998 @ =0xFFFFFED4
	adds r0, r5, r2
	asrs r0, r0, #3
	movs r3, #8
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	bl sub_080044E4
_0804C902:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804C4B0
	bl WaitFrame
	adds r1, r5, #1
	lsls r1, r1, #0x10
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r5, r1, #0x10
	ldr r0, _0804C99C @ =0x01670000
	cmp r1, r0
	bgt _0804C92A
	b _0804C75A
_0804C92A:
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r5, #0
	lsls r6, r4, #0x10
_0804C944:
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x2c
	bne _0804C952
	movs r0, #6
	bl sub_0800F3A0
_0804C952:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804C9A0 @ =0x030009A0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	asrs r0, r6, #0x10
	movs r1, #0xb4
	lsls r1, r1, #1
	bl sub_0804C4B0
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C944
	movs r0, #0x37
	bl StopSE
	movs r0, #0x7f
	bl StopSE
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C998: .4byte 0xFFFFFED4
_0804C99C: .4byte 0x01670000
_0804C9A0: .4byte 0x030009A0

	thumb_func_start sub_0804C9A4
sub_0804C9A4: @ 0x0804C9A4
	ldr r0, _0804C9B4 @ =0x03000998
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0804C9B8 @ =0x0300099A
	strh r1, [r0]
	ldr r0, _0804C9BC @ =0x0300099C
	strh r1, [r0]
	bx lr
	.align 2, 0
_0804C9B4: .4byte 0x03000998
_0804C9B8: .4byte 0x0300099A
_0804C9BC: .4byte 0x0300099C

	thumb_func_start sub_0804C9C0
sub_0804C9C0: @ 0x0804C9C0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804C9C4
sub_0804C9C4: @ 0x0804C9C4
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r2, r0, #0
	ldr r0, _0804C9F8 @ =0x03006930
	ldr r1, _0804C9FC @ =sub_0804CA04
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0x32
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x18]
	str r1, [r0]
	ldr r1, _0804CA00 @ =sub_0804CA6C
	str r1, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_0804C9F8: .4byte 0x03006930
_0804C9FC: .4byte sub_0804CA04
_0804CA00: .4byte sub_0804CA6C

	thumb_func_start sub_0804CA04
sub_0804CA04: @ 0x0804CA04
	push {lr}
	ldr r0, _0804CA20 @ =0x03006920
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CA24
	bl sub_0804E1E4
	movs r0, #4
	bl sub_0804CA84
	bl sub_0804CF64
	b _0804CA4E
	.align 2, 0
_0804CA20: .4byte 0x03006920
_0804CA24:
	cmp r0, #1
	bne _0804CA3A
	bl sub_0804F944
	movs r0, #0
	bl sub_0804ED80
	movs r0, #0
	bl sub_0804F31C
	b _0804CA4E
_0804CA3A:
	cmp r0, #2
	bne _0804CA4E
	bl sub_0804F944
	movs r0, #0
	bl sub_0804ED80
	movs r0, #1
	bl sub_0804F31C
_0804CA4E:
	bl sub_0800277C
	cmp r0, #0
	beq _0804CA5E
	movs r0, #0x14
	bl SignalEvent
	b _0804CA64
_0804CA5E:
	ldr r0, _0804CA68 @ =0x11201100
	bl SignalEvent
_0804CA64:
	pop {r0}
	bx r0
	.align 2, 0
_0804CA68: .4byte 0x11201100

	thumb_func_start sub_0804CA6C
sub_0804CA6C: @ 0x0804CA6C
	push {lr}
	ldr r0, _0804CA80 @ =0x03006920
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CA7A
	bl sub_0804E1F0
_0804CA7A:
	pop {r0}
	bx r0
	.align 2, 0
_0804CA80: .4byte 0x03006920

	thumb_func_start sub_0804CA84
sub_0804CA84: @ 0x0804CA84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
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
	ldr r1, _0804CAF0 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _0804CAF4 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CAF8 @ =0x00001F03
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CAFC @ =0x00001E02
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #8
	bl SetBgCnt
	cmp r7, #4
	bls _0804CAE4
	b _0804CBF6
_0804CAE4:
	lsls r0, r7, #2
	ldr r1, _0804CB00 @ =_0804CB04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CAF0: .4byte 0xFFFF0000
_0804CAF4: .4byte 0x00001C08
_0804CAF8: .4byte 0x00001F03
_0804CAFC: .4byte 0x00001E02
_0804CB00: .4byte _0804CB04
_0804CB04: @ jump table
	.4byte _0804CB38 @ case 0
	.4byte _0804CB58 @ case 1
	.4byte _0804CB76 @ case 2
	.4byte _0804CBA8 @ case 3
	.4byte _0804CB18 @ case 4
_0804CB18:
	ldr r0, _0804CB34 @ =0x00001F83
	add r1, sp, #8
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0x4d
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	b _0804CB6C
	.align 2, 0
_0804CB34: .4byte 0x00001F83
_0804CB38:
	ldr r0, _0804CB54 @ =0x00001F83
	add r1, sp, #8
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0x2d
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	b _0804CB6C
	.align 2, 0
_0804CB54: .4byte 0x00001F83
_0804CB58:
	movs r0, #0x27
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x26
	bl GetDataRecord
	mov r8, r0
	movs r0, #0xe0
	lsls r0, r0, #5
_0804CB6C:
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _0804CBF6
_0804CB76:
	movs r0, #0x28
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x29
	bl GetDataRecord
	mov r8, r0
	movs r0, #0xe0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _0804CBA4 @ =0x00005D02
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #8
	bl SetBgCnt
	b _0804CBF6
	.align 2, 0
_0804CBA4: .4byte 0x00005D02
_0804CBA8:
	movs r0, #0x2b
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x2c
	bl GetDataRecord
	mov r8, r0
	movs r0, #0x2a
	bl GetDataRecord
	mov sb, r0
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _0804CC2C @ =0x00009403
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CC30 @ =0x00009202
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CC34 @ =0x00009001
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #8
	bl SetBgCnt
_0804CBF6:
	cmp r7, #3
	beq _0804CC68
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CC38 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	cmp r7, #1
	bne _0804CC40
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CC3C @ =0x0600F000
	adds r2, r4, #0
	b _0804CC54
	.align 2, 0
_0804CC2C: .4byte 0x00009403
_0804CC30: .4byte 0x00009202
_0804CC34: .4byte 0x00009001
_0804CC38: .4byte 0x0600F800
_0804CC3C: .4byte 0x0600F000
_0804CC40:
	cmp r7, #2
	bne _0804CCB8
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CC64 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #5
_0804CC54:
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	b _0804CCB8
	.align 2, 0
_0804CC64: .4byte 0x0600E800
_0804CC68:
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CCDC @ =0x0600A000
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CCE0 @ =0x06009000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	mov r0, sb
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CCE4 @ =0x06008000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
_0804CCB8:
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804CCFE
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804CCEC
	ldr r1, _0804CCE8 @ =0x06004000
	b _0804CCF0
	.align 2, 0
_0804CCDC: .4byte 0x0600A000
_0804CCE0: .4byte 0x06009000
_0804CCE4: .4byte 0x06008000
_0804CCE8: .4byte 0x06004000
_0804CCEC:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804CCF0:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804CD0E
_0804CCFE:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804CD0E:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804CD48 @ =gBgRegsBuffer
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	cmp r7, #1
	beq _0804CD70
	cmp r7, #1
	bgt _0804CD4C
	cmp r7, #0
	beq _0804CD58
	b _0804CF44
	.align 2, 0
_0804CD48: .4byte gBgRegsBuffer
_0804CD4C:
	cmp r7, #2
	beq _0804CE04
	cmp r7, #3
	bne _0804CD56
	b _0804CEA0
_0804CD56:
	b _0804CF44
_0804CD58:
	ldr r0, _0804CD68 @ =0x030009D8
	ldr r1, _0804CD6C @ =0x00100061
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	b _0804CF44
	.align 2, 0
_0804CD68: .4byte 0x030009D8
_0804CD6C: .4byte 0x00100061
_0804CD70:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	ldr r0, _0804CD98 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804CD8E
	b _0804CF44
_0804CD8E:
	lsls r0, r0, #2
	ldr r1, _0804CD9C @ =_0804CDA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CD98: .4byte 0x03003CA8
_0804CD9C: .4byte _0804CDA0
_0804CDA0: @ jump table
	.4byte _0804CDB4 @ case 0
	.4byte _0804CDC4 @ case 1
	.4byte _0804CDD4 @ case 2
	.4byte _0804CDE4 @ case 3
	.4byte _0804CDF4 @ case 4
_0804CDB4:
	ldr r0, _0804CDBC @ =0x030009D8
	ldr r1, _0804CDC0 @ =0x0010006F
	b _0804CE8C
	.align 2, 0
_0804CDBC: .4byte 0x030009D8
_0804CDC0: .4byte 0x0010006F
_0804CDC4:
	ldr r0, _0804CDCC @ =0x030009D8
	ldr r1, _0804CDD0 @ =0x0010007A
	b _0804CE8C
	.align 2, 0
_0804CDCC: .4byte 0x030009D8
_0804CDD0: .4byte 0x0010007A
_0804CDD4:
	ldr r0, _0804CDDC @ =0x030009D8
	ldr r1, _0804CDE0 @ =0x0010007D
	b _0804CE8C
	.align 2, 0
_0804CDDC: .4byte 0x030009D8
_0804CDE0: .4byte 0x0010007D
_0804CDE4:
	ldr r0, _0804CDEC @ =0x030009D8
	ldr r1, _0804CDF0 @ =0x0010008B
	b _0804CE8C
	.align 2, 0
_0804CDEC: .4byte 0x030009D8
_0804CDF0: .4byte 0x0010008B
_0804CDF4:
	ldr r0, _0804CDFC @ =0x030009D8
	ldr r1, _0804CE00 @ =0x00100092
	b _0804CE8C
	.align 2, 0
_0804CDFC: .4byte 0x030009D8
_0804CE00: .4byte 0x00100092
_0804CE04:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #4
	bl sub_080044E4
	ldr r0, _0804CE2C @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804CE22
	b _0804CF44
_0804CE22:
	lsls r0, r0, #2
	ldr r1, _0804CE30 @ =_0804CE34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CE2C: .4byte 0x03003CA8
_0804CE30: .4byte _0804CE34
_0804CE34: @ jump table
	.4byte _0804CE48 @ case 0
	.4byte _0804CE58 @ case 1
	.4byte _0804CE68 @ case 2
	.4byte _0804CE78 @ case 3
	.4byte _0804CE88 @ case 4
_0804CE48:
	ldr r0, _0804CE50 @ =0x030009D8
	ldr r1, _0804CE54 @ =0x0010006D
	b _0804CE8C
	.align 2, 0
_0804CE50: .4byte 0x030009D8
_0804CE54: .4byte 0x0010006D
_0804CE58:
	ldr r0, _0804CE60 @ =0x030009D8
	ldr r1, _0804CE64 @ =0x00100079
	b _0804CE8C
	.align 2, 0
_0804CE60: .4byte 0x030009D8
_0804CE64: .4byte 0x00100079
_0804CE68:
	ldr r0, _0804CE70 @ =0x030009D8
	ldr r1, _0804CE74 @ =0x0010008F
	b _0804CE8C
	.align 2, 0
_0804CE70: .4byte 0x030009D8
_0804CE74: .4byte 0x0010008F
_0804CE78:
	ldr r0, _0804CE80 @ =0x030009D8
	ldr r1, _0804CE84 @ =0x0010008A
	b _0804CE8C
	.align 2, 0
_0804CE80: .4byte 0x030009D8
_0804CE84: .4byte 0x0010008A
_0804CE88:
	ldr r0, _0804CE98 @ =0x030009D8
	ldr r1, _0804CE9C @ =0x00100091
_0804CE8C:
	movs r2, #0
	movs r3, #2
	bl sub_08026ADC
	b _0804CF44
	.align 2, 0
_0804CE98: .4byte 0x030009D8
_0804CE9C: .4byte 0x00100091
_0804CEA0:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0xc
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	ldr r0, _0804CEC8 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _0804CF38
	lsls r0, r0, #2
	ldr r1, _0804CECC @ =_0804CED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CEC8: .4byte 0x03003CA8
_0804CECC: .4byte _0804CED0
_0804CED0: @ jump table
	.4byte _0804CEE4 @ case 0
	.4byte _0804CEF4 @ case 1
	.4byte _0804CF04 @ case 2
	.4byte _0804CF14 @ case 3
	.4byte _0804CF2C @ case 4
_0804CEE4:
	ldr r0, _0804CEEC @ =0x03000A10
	ldr r1, _0804CEF0 @ =0x0010006E
	b _0804CF18
	.align 2, 0
_0804CEEC: .4byte 0x03000A10
_0804CEF0: .4byte 0x0010006E
_0804CEF4:
	ldr r0, _0804CEFC @ =0x03000A10
	ldr r1, _0804CF00 @ =0x00100078
	b _0804CF18
	.align 2, 0
_0804CEFC: .4byte 0x03000A10
_0804CF00: .4byte 0x00100078
_0804CF04:
	ldr r0, _0804CF0C @ =0x03000A10
	ldr r1, _0804CF10 @ =0x0010007C
	b _0804CF18
	.align 2, 0
_0804CF0C: .4byte 0x03000A10
_0804CF10: .4byte 0x0010007C
_0804CF14:
	ldr r0, _0804CF24 @ =0x03000A10
	ldr r1, _0804CF28 @ =0x00100089
_0804CF18:
	movs r2, #0
	movs r3, #6
	bl sub_08026ADC
	b _0804CF38
	.align 2, 0
_0804CF24: .4byte 0x03000A10
_0804CF28: .4byte 0x00100089
_0804CF2C:
	ldr r0, _0804CF54 @ =0x03000A10
	ldr r1, _0804CF58 @ =0x00100090
	movs r2, #0
	movs r3, #6
	bl sub_08026ADC
_0804CF38:
	ldr r0, _0804CF5C @ =0x030009D8
	ldr r1, _0804CF60 @ =0x00100060
	movs r2, #0
	movs r3, #6
	bl sub_08026ADC
_0804CF44:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CF54: .4byte 0x03000A10
_0804CF58: .4byte 0x00100090
_0804CF5C: .4byte 0x030009D8
_0804CF60: .4byte 0x00100060

	thumb_func_start sub_0804CF64
sub_0804CF64: @ 0x0804CF64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #1
	bl sub_0800F348
	movs r0, #0xa2
	bl PlaySE
	movs r6, #0
	ldr r4, _0804CFB8 @ =gKeysNew
_0804CF94:
	lsls r1, r6, #0x16
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
	bl sub_0800277C
	cmp r0, #0
	beq _0804CFBC
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804CFC8
	bl _0804E192
	.align 2, 0
_0804CFB8: .4byte gKeysNew
_0804CFBC:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804CFCA
_0804CFC8:
	movs r1, #0
_0804CFCA:
	cmp r1, #0
	beq _0804CFD2
	bl _0804E192
_0804CFD2:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x7f
	ble _0804CF94
	movs r6, #0
	ldr r4, _0804CFF8 @ =gKeysNew
_0804CFE0:
	bl sub_0800277C
	cmp r0, #0
	beq _0804CFFC
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D008
	bl _0804E192
	.align 2, 0
_0804CFF8: .4byte gKeysNew
_0804CFFC:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D00A
_0804D008:
	movs r1, #0
_0804D00A:
	cmp r1, #0
	beq _0804D012
	bl _0804E192
_0804D012:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x77
	ble _0804CFE0
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D048 @ =0x000900EA
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D04C @ =gKeysNew
_0804D034:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D050
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D05C
	b _0804D5A6
	.align 2, 0
_0804D048: .4byte 0x000900EA
_0804D04C: .4byte gKeysNew
_0804D050:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D05E
_0804D05C:
	movs r1, #0
_0804D05E:
	cmp r1, #0
	beq _0804D064
	b _0804D5A6
_0804D064:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D034
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D0A0 @ =0x000900EB
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D0A4 @ =gKeysNew
_0804D08A:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D0A8
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D0B4
	b _0804D5A6
	.align 2, 0
_0804D0A0: .4byte 0x000900EB
_0804D0A4: .4byte gKeysNew
_0804D0A8:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D0B6
_0804D0B4:
	movs r1, #0
_0804D0B6:
	cmp r1, #0
	beq _0804D0BC
	b _0804D5A6
_0804D0BC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D08A
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D0F8 @ =0x000900EC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D0FC @ =gKeysNew
_0804D0E2:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D100
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D10C
	b _0804D5A6
	.align 2, 0
_0804D0F8: .4byte 0x000900EC
_0804D0FC: .4byte gKeysNew
_0804D100:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D10E
_0804D10C:
	movs r1, #0
_0804D10E:
	cmp r1, #0
	beq _0804D114
	b _0804D5A6
_0804D114:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D0E2
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D150 @ =0x000900ED
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D154 @ =gKeysNew
_0804D13A:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D158
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D164
	b _0804D5A6
	.align 2, 0
_0804D150: .4byte 0x000900ED
_0804D154: .4byte gKeysNew
_0804D158:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D166
_0804D164:
	movs r1, #0
_0804D166:
	cmp r1, #0
	beq _0804D16C
	b _0804D5A6
_0804D16C:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D13A
	movs r6, #0
	movs r7, #1
	ldr r5, _0804D1A4 @ =gKeysNew
_0804D180:
	adds r0, r6, #0
	ands r0, r7
	cmp r0, #0
	bne _0804D18C
	bl sub_0804E80C
_0804D18C:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D1A8
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D1B4
	bl _0804E192
	.align 2, 0
_0804D1A4: .4byte gKeysNew
_0804D1A8:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804D1B6
_0804D1B4:
	movs r4, #0
_0804D1B6:
	cmp r4, #0
	beq _0804D1BE
	bl _0804E192
_0804D1BE:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3b
	ble _0804D180
	movs r0, #0
	bl sub_0804CA84
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	add r0, sp, #8
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r1, #0x79
	mov r8, r1
	movs r2, #0x1d
	mov sl, r2
	movs r6, #0
	adds r7, r0, #0
	ldr r4, _0804D218 @ =gKeysNew
_0804D1F4:
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
	bl sub_0800277C
	cmp r0, #0
	beq _0804D21C
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D228
	bl _0804E192
	.align 2, 0
_0804D218: .4byte gKeysNew
_0804D21C:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D22A
_0804D228:
	movs r1, #0
_0804D22A:
	cmp r1, #0
	beq _0804D232
	bl _0804E192
_0804D232:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3f
	ble _0804D1F4
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D28C @ =0x000900EE
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D290 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D294 @ =gKeysNew
_0804D258:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D298
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D2A4
	b _0804D5A6
	.align 2, 0
_0804D28C: .4byte 0x000900EE
_0804D290: .4byte 0x030009D8
_0804D294: .4byte gKeysNew
_0804D298:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D2A6
_0804D2A4:
	movs r1, #0
_0804D2A6:
	cmp r1, #0
	beq _0804D2AC
	b _0804D5A6
_0804D2AC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D258
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D30C @ =0x000900EF
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D310 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D314 @ =gKeysNew
_0804D2D6:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D318
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D324
	b _0804D5A6
	.align 2, 0
_0804D30C: .4byte 0x000900EF
_0804D310: .4byte 0x030009D8
_0804D314: .4byte gKeysNew
_0804D318:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D326
_0804D324:
	movs r1, #0
_0804D326:
	cmp r1, #0
	beq _0804D32C
	b _0804D5A6
_0804D32C:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D2D6
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D38C @ =0x000900F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D390 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D394 @ =gKeysNew
_0804D356:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D398
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D3A4
	b _0804D5A6
	.align 2, 0
_0804D38C: .4byte 0x000900F0
_0804D390: .4byte 0x030009D8
_0804D394: .4byte gKeysNew
_0804D398:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D3A6
_0804D3A4:
	movs r1, #0
_0804D3A6:
	cmp r1, #0
	beq _0804D3AC
	b _0804D5A6
_0804D3AC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D356
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D40C @ =0x000900F1
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D410 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D414 @ =gKeysNew
_0804D3D6:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D418
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D424
	b _0804D5A6
	.align 2, 0
_0804D40C: .4byte 0x000900F1
_0804D410: .4byte 0x030009D8
_0804D414: .4byte gKeysNew
_0804D418:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D426
_0804D424:
	movs r1, #0
_0804D426:
	cmp r1, #0
	beq _0804D42C
	b _0804D5A6
_0804D42C:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D3D6
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D48C @ =0x000900F2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D490 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D494 @ =gKeysNew
_0804D456:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D498
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D4A4
	b _0804D5A6
	.align 2, 0
_0804D48C: .4byte 0x000900F2
_0804D490: .4byte 0x030009D8
_0804D494: .4byte gKeysNew
_0804D498:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D4A6
_0804D4A4:
	movs r1, #0
_0804D4A6:
	cmp r1, #0
	beq _0804D4AC
	b _0804D5A6
_0804D4AC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D456
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D50C @ =0x000900F3
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D510 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D514 @ =gKeysNew
_0804D4D6:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D518
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D524
	b _0804D5A6
	.align 2, 0
_0804D50C: .4byte 0x000900F3
_0804D510: .4byte 0x030009D8
_0804D514: .4byte gKeysNew
_0804D518:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D526
_0804D524:
	movs r1, #0
_0804D526:
	cmp r1, #0
	bne _0804D5A6
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D4D6
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D588 @ =0x000900F4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D58C @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D590 @ =gKeysNew
_0804D554:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D594
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D5A0
	b _0804D5A6
	.align 2, 0
_0804D588: .4byte 0x000900F4
_0804D58C: .4byte 0x030009D8
_0804D590: .4byte gKeysNew
_0804D594:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D5A2
_0804D5A0:
	movs r1, #0
_0804D5A2:
	cmp r1, #0
	beq _0804D5B0
_0804D5A6:
	ldr r0, [sp, #0xc]
	bl sub_080228D4
	bl _0804E192
_0804D5B0:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D554
	movs r3, #0
	str r3, [sp, #0xc]
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #4
	bl FadeOutAllMusicPlayers
	movs r6, #0
	ldr r4, _0804D5F8 @ =gKeysNew
_0804D5D4:
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804D5E0
	bl sub_0804E80C
_0804D5E0:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D5FC
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D608
	bl _0804E1AE
	.align 2, 0
_0804D5F8: .4byte gKeysNew
_0804D5FC:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D60A
_0804D608:
	movs r1, #0
_0804D60A:
	cmp r1, #0
	beq _0804D612
	bl _0804E1AE
_0804D612:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x77
	ble _0804D5D4
	movs r6, #0
	ldr r5, _0804D638 @ =gKeysNew
_0804D620:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D63C
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D648
	bl _0804E192
	.align 2, 0
_0804D638: .4byte gKeysNew
_0804D63C:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804D64A
_0804D648:
	movs r4, #0
_0804D64A:
	cmp r4, #0
	beq _0804D652
	bl _0804E192
_0804D652:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3b
	ble _0804D620
	movs r0, #1
	bl sub_0804CA84
	ldr r0, _0804D6B8 @ =0x03000A48
	str r4, [r0]
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #0xa3
	bl PlaySE
	movs r6, #0
	ldr r5, _0804D6BC @ =gBgRegsBuffer
	ldr r4, _0804D6C0 @ =gKeysNew
_0804D682:
	lsls r1, r6, #0x16
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E2E8
	ldr r1, _0804D6B8 @ =0x03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	strh r1, [r5, #8]
	lsrs r0, r0, #2
	strh r0, [r5, #0xc]
	bl sub_0800277C
	cmp r0, #0
	beq _0804D6C4
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D6D0
	bl _0804E192
	.align 2, 0
_0804D6B8: .4byte 0x03000A48
_0804D6BC: .4byte gBgRegsBuffer
_0804D6C0: .4byte gKeysNew
_0804D6C4:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D6D2
_0804D6D0:
	movs r1, #0
_0804D6D2:
	cmp r1, #0
	beq _0804D6DA
	bl _0804E192
_0804D6DA:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x7f
	ble _0804D682
	movs r0, #0xf0
	mov r8, r0
	movs r0, #3
	movs r1, #0x11
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x11
	bl sub_0804ED04
	movs r6, #0
_0804D6FA:
	cmp r6, #0x3f
	bgt _0804D70A
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D70A:
	mov r0, r8
	subs r0, #0x10
	cmp r6, r0
	bge _0804D738
	subs r0, #0x10
	cmp r6, r0
	ble _0804D728
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D728:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804D764 @ =0x030009D8
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #2
	bl sub_08026B90
_0804D738:
	ldr r1, _0804D768 @ =0x03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0804D76C @ =gBgRegsBuffer
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	bl sub_0800277C
	cmp r0, #0
	beq _0804D774
	ldr r0, _0804D770 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D782
	bl _0804E192
	.align 2, 0
_0804D764: .4byte 0x030009D8
_0804D768: .4byte 0x03000A48
_0804D76C: .4byte gBgRegsBuffer
_0804D770: .4byte gKeysNew
_0804D774:
	ldr r0, _0804D7C8 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D784
_0804D782:
	movs r1, #0
_0804D784:
	cmp r1, #0
	beq _0804D78C
	bl _0804E192
_0804D78C:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804D6FA
	movs r6, #0
	ldr r3, _0804D7CC @ =gBgRegsBuffer
	mov r8, r3
	ldr r7, _0804D7C8 @ =gKeysNew
	ldr r5, _0804D7D0 @ =0x03000A48
_0804D7A0:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	mov r2, r8
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	bl sub_0800277C
	cmp r0, #0
	beq _0804D7D4
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D7E0
	bl _0804E192
	.align 2, 0
_0804D7C8: .4byte gKeysNew
_0804D7CC: .4byte gBgRegsBuffer
_0804D7D0: .4byte 0x03000A48
_0804D7D4:
	ldrh r1, [r7]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804D7E2
_0804D7E0:
	movs r4, #0
_0804D7E2:
	cmp r4, #0
	beq _0804D7EA
	bl _0804E192
_0804D7EA:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x59
	ble _0804D7A0
	movs r3, #0xff
	lsls r3, r3, #1
	mov r8, r3
	ldr r0, _0804D93C @ =0x03000A4C
	str r4, [r0]
	ldr r5, _0804D940 @ =0x03000A50
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r5]
	ldr r4, _0804D944 @ =0x03000A54
	movs r0, #0x5a
	str r0, [r4]
	movs r7, #0
	ldr r0, _0804D948 @ =0x03000A44
	strh r7, [r0]
	ldr r0, _0804D94C @ =0x03000A46
	strh r7, [r0]
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	movs r6, #0
	mov sb, r5
	ldr r5, _0804D950 @ =0x030009D8
	mov sl, r4
_0804D82E:
	adds r0, r6, #0
	subs r0, #0x11
	cmp r0, #0xe
	bhi _0804D842
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D842:
	mov r4, r8
	subs r4, #0x10
	cmp r6, r4
	bge _0804D862
	mov r0, r8
	subs r0, #0x20
	cmp r6, r0
	ble _0804D862
	mov r0, r8
	subs r1, r0, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D862:
	cmp r6, #0x10
	ble _0804D87A
	cmp r6, r4
	bge _0804D87A
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804D950 @ =0x030009D8
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #3
	bl sub_08026B90
_0804D87A:
	cmp r6, #0x5a
	ble _0804D89C
	mov r1, r8
	asrs r0, r1, #1
	cmp r6, r0
	bge _0804D89C
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804D890
	adds r7, #1
_0804D890:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804D89C:
	cmp r6, r8
	bge _0804D8C0
	mov r2, r8
	asrs r0, r2, #1
	adds r0, #0x3c
	cmp r6, r0
	ble _0804D8C0
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804D8B4
	subs r7, #1
_0804D8B4:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804D8C0:
	ldr r1, _0804D954 @ =0x03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0804D958 @ =gBgRegsBuffer
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	movs r3, #0
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	cmp r6, #0x3c
	ble _0804D924
	ldr r1, _0804D93C @ =0x03000A4C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bne _0804D8E8
	str r3, [r1]
_0804D8E8:
	mov r0, sb
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	mov r0, sl
	ldr r2, [r0]
	str r3, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08026B90
	ldr r4, _0804D948 @ =0x03000A44
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	ldr r3, _0804D94C @ =0x03000A46
	bl sub_08026C40
	mov r2, sb
	ldr r1, [r2]
	mov r3, sl
	ldr r2, [r3]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
_0804D924:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D960
	ldr r0, _0804D95C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D96E
	bl _0804E192
	.align 2, 0
_0804D93C: .4byte 0x03000A4C
_0804D940: .4byte 0x03000A50
_0804D944: .4byte 0x03000A54
_0804D948: .4byte 0x03000A44
_0804D94C: .4byte 0x03000A46
_0804D950: .4byte 0x030009D8
_0804D954: .4byte 0x03000A48
_0804D958: .4byte gBgRegsBuffer
_0804D95C: .4byte gKeysNew
_0804D960:
	ldr r0, _0804DA1C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D970
_0804D96E:
	movs r1, #0
_0804D970:
	cmp r1, #0
	beq _0804D978
	bl _0804E192
_0804D978:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	bge _0804D984
	b _0804D82E
_0804D984:
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r6, #0
	mov sl, r6
	ldr r7, _0804DA20 @ =0x03000A50
	ldr r5, _0804DA24 @ =0x030009D8
	ldr r0, _0804DA28 @ =0x03000A54
	mov sb, r0
	ldr r1, _0804DA2C @ =0x03000A44
	mov r8, r1
_0804D99C:
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E6C0
	ldr r1, _0804DA30 @ =0x03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0804DA34 @ =gBgRegsBuffer
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	ldr r1, _0804DA38 @ =0x03000A4C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bne _0804D9CC
	mov r2, sl
	str r2, [r1]
_0804D9CC:
	ldr r1, [r7]
	subs r1, #1
	str r1, [r7]
	mov r3, sb
	ldr r2, [r3]
	mov r0, sl
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08026B90
	movs r4, #1
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	mov r2, r8
	ldr r3, _0804DA3C @ =0x03000A46
	bl sub_08026C40
	ldr r1, [r7]
	mov r3, sb
	ldr r2, [r3]
	mov r3, r8
	ldrh r0, [r3]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804DA40
	ldr r0, _0804DA1C @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DA4E
	b _0804E192
	.align 2, 0
_0804DA1C: .4byte gKeysNew
_0804DA20: .4byte 0x03000A50
_0804DA24: .4byte 0x030009D8
_0804DA28: .4byte 0x03000A54
_0804DA2C: .4byte 0x03000A44
_0804DA30: .4byte 0x03000A48
_0804DA34: .4byte gBgRegsBuffer
_0804DA38: .4byte 0x03000A4C
_0804DA3C: .4byte 0x03000A46
_0804DA40:
	ldr r0, _0804DAA4 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DA50
_0804DA4E:
	movs r1, #0
_0804DA50:
	cmp r1, #0
	beq _0804DA56
	b _0804E192
_0804DA56:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3f
	ble _0804D99C
	movs r0, #2
	bl sub_0804CA84
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r6, #0
	ldr r7, _0804DAA4 @ =gKeysNew
	ldr r5, _0804DAA8 @ =gBgRegsBuffer
_0804DA7C:
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	bl sub_0800277C
	cmp r0, #0
	beq _0804DAAC
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DAB8
	b _0804E192
	.align 2, 0
_0804DAA4: .4byte gKeysNew
_0804DAA8: .4byte gBgRegsBuffer
_0804DAAC:
	ldrh r1, [r7]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804DABA
_0804DAB8:
	movs r4, #0
_0804DABA:
	cmp r4, #0
	beq _0804DAC0
	b _0804E192
_0804DAC0:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3f
	ble _0804DA7C
	movs r0, #0xd2
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _0804DB50 @ =0x03000A48
	str r4, [r0]
	movs r0, #3
	movs r1, #0x11
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x11
	bl sub_0804ED04
	movs r6, #0
_0804DAE6:
	adds r0, r6, #0
	subs r0, #0x11
	cmp r0, #0xe
	bhi _0804DAFA
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804DAFA:
	mov r4, r8
	subs r4, #0x10
	cmp r6, r4
	bge _0804DB1A
	mov r0, r8
	subs r0, #0x20
	cmp r6, r0
	ble _0804DB1A
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804DB1A:
	cmp r6, #0x10
	ble _0804DB32
	cmp r6, r4
	bge _0804DB32
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804DB54 @ =0x030009D8
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
_0804DB32:
	ldr r0, _0804DB58 @ =gBgRegsBuffer
	ldrh r1, [r0, #8]
	subs r1, #1
	strh r1, [r0, #8]
	bl sub_0800277C
	cmp r0, #0
	beq _0804DB60
	ldr r0, _0804DB5C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DB6E
	b _0804E192
	.align 2, 0
_0804DB50: .4byte 0x03000A48
_0804DB54: .4byte 0x030009D8
_0804DB58: .4byte gBgRegsBuffer
_0804DB5C: .4byte gKeysNew
_0804DB60:
	ldr r0, _0804DBAC @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DB70
_0804DB6E:
	movs r1, #0
_0804DB70:
	cmp r1, #0
	beq _0804DB76
	b _0804E192
_0804DB76:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804DAE6
	movs r6, #0
	ldr r5, _0804DBAC @ =gKeysNew
	ldr r4, _0804DBB0 @ =gBgRegsBuffer
_0804DB86:
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804DB92
	bl sub_0804E80C
_0804DB92:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	bl sub_0800277C
	cmp r0, #0
	beq _0804DBB4
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DBC0
	b _0804E192
	.align 2, 0
_0804DBAC: .4byte gKeysNew
_0804DBB0: .4byte gBgRegsBuffer
_0804DBB4:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DBC2
_0804DBC0:
	movs r1, #0
_0804DBC2:
	cmp r1, #0
	beq _0804DBC8
	b _0804E192
_0804DBC8:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x7f
	ble _0804DB86
	movs r6, #0
	ldr r5, _0804DBEC @ =gKeysNew
_0804DBD6:
	bl sub_0800277C
	cmp r0, #0
	beq _0804DBF0
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DBFC
	b _0804E192
	.align 2, 0
_0804DBEC: .4byte gKeysNew
_0804DBF0:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804DBFE
_0804DBFC:
	movs r4, #0
_0804DBFE:
	cmp r4, #0
	beq _0804DC04
	b _0804E192
_0804DC04:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x25
	ble _0804DBD6
	movs r0, #3
	bl sub_0804CA84
	ldr r0, _0804DC8C @ =gBgRegsBuffer
	movs r3, #0xb0
	lsls r3, r3, #1
	strh r3, [r0, #6]
	adds r1, r3, #0
	strh r1, [r0, #0xa]
	adds r2, r3, #0
	strh r2, [r0, #0xe]
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	ldr r1, _0804DC90 @ =0x03000A44
	strh r4, [r1]
	ldr r0, _0804DC94 @ =0x03000A46
	strh r4, [r0]
	movs r6, #0
	ldr r3, _0804DC98 @ =0x030009D8
	mov r8, r3
	adds r5, r1, #0
	movs r7, #1
	ldr r4, _0804DC9C @ =gKeysNew
_0804DC48:
	lsls r1, r6, #0x15
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
	str r7, [sp]
	mov r0, r8
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0804DC94 @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DCA0
	ldrh r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DCAC
	b _0804E192
	.align 2, 0
_0804DC8C: .4byte gBgRegsBuffer
_0804DC90: .4byte 0x03000A44
_0804DC94: .4byte 0x03000A46
_0804DC98: .4byte 0x030009D8
_0804DC9C: .4byte gKeysNew
_0804DCA0:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DCAE
_0804DCAC:
	movs r1, #0
_0804DCAE:
	cmp r1, #0
	beq _0804DCB4
	b _0804E192
_0804DCB4:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0xff
	ble _0804DC48
	movs r0, #0xd2
	lsls r0, r0, #1
	mov r8, r0
	movs r0, #3
	movs r1, #0x15
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x15
	bl sub_0804ED04
	movs r6, #0
	ldr r7, _0804DD4C @ =0x030009D8
	ldr r5, _0804DD50 @ =0x03000A44
_0804DCDA:
	cmp r6, #0x1f
	bgt _0804DCEA
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DCEA:
	mov r0, r8
	subs r0, #0x20
	cmp r6, r0
	ble _0804DD02
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DD02:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804DD54 @ =0x03000A10
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	movs r4, #1
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0804DD58 @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DD60
	ldr r0, _0804DD5C @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DD6E
	b _0804E192
	.align 2, 0
_0804DD4C: .4byte 0x030009D8
_0804DD50: .4byte 0x03000A44
_0804DD54: .4byte 0x03000A10
_0804DD58: .4byte 0x03000A46
_0804DD5C: .4byte gKeysNew
_0804DD60:
	ldr r0, _0804DDC4 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DD70
_0804DD6E:
	movs r1, #0
_0804DD70:
	cmp r1, #0
	beq _0804DD76
	b _0804E192
_0804DD76:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804DCDA
	movs r6, #0
	ldr r3, _0804DDC8 @ =0x030009D8
	mov r8, r3
	ldr r5, _0804DDCC @ =0x03000A44
	movs r7, #1
	ldr r4, _0804DDC4 @ =gKeysNew
_0804DD8C:
	str r7, [sp]
	mov r0, r8
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0804DDD0 @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DDD4
	ldrh r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DDE0
	b _0804E192
	.align 2, 0
_0804DDC4: .4byte gKeysNew
_0804DDC8: .4byte 0x030009D8
_0804DDCC: .4byte 0x03000A44
_0804DDD0: .4byte 0x03000A46
_0804DDD4:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DDE2
_0804DDE0:
	movs r1, #0
_0804DDE2:
	cmp r1, #0
	beq _0804DDE8
	b _0804E192
_0804DDE8:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3b
	ble _0804DD8C
	movs r0, #0xd2
	lsls r0, r0, #1
	mov r8, r0
	movs r0, #3
	movs r1, #0x11
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x11
	bl sub_0804ED04
	movs r0, #3
	movs r1, #0x12
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x12
	bl sub_0804ED04
	movs r0, #3
	movs r1, #0x13
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x13
	bl sub_0804ED04
	movs r0, #3
	movs r1, #0x14
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x14
	bl sub_0804ED04
	movs r6, #0
	movs r7, #0
_0804DE3C:
	cmp r6, #0x1f
	bgt _0804DE4C
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DE4C:
	mov r0, r8
	subs r0, #0x10
	cmp r6, r0
	bge _0804DE78
	subs r0, #0x10
	cmp r6, r0
	ble _0804DE6A
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DE6A:
	str r7, [sp]
	ldr r0, _0804DF50 @ =0x03000A10
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #1
	bl sub_08026B90
_0804DE78:
	ldr r5, _0804DF54 @ =0x030009D8
	ldr r4, _0804DF58 @ =0x03000A44
	movs r3, #1
	mov sb, r3
	str r3, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	ldr r3, _0804DF5C @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	adds r0, r6, #0
	subs r0, #0x3d
	cmp r0, #0x3e
	bhi _0804DEB6
	adds r1, r6, #0
	subs r1, #0x3c
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x14
	bl sub_0804E5A4
_0804DEB6:
	adds r0, r6, #0
	subs r0, #0x79
	cmp r0, #0x3e
	bhi _0804DECE
	adds r1, r6, #0
	subs r1, #0x78
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x13
	bl sub_0804E5A4
_0804DECE:
	adds r0, r6, #0
	subs r0, #0xb5
	cmp r0, #0x3e
	bhi _0804DEE6
	adds r1, r6, #0
	subs r1, #0xb4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x12
	bl sub_0804E5A4
_0804DEE6:
	adds r0, r6, #0
	subs r0, #0xf1
	cmp r0, #0x3e
	bhi _0804DEFE
	adds r1, r6, #0
	subs r1, #0xf0
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804DEFE:
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0x1e
	movs r2, #0x78
	movs r3, #4
	bl sub_08026B90
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0xd2
	movs r2, #0x78
	movs r3, #3
	bl sub_08026B90
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0x5a
	movs r2, #0x9b
	movs r3, #1
	bl sub_08026B90
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0x96
	movs r2, #0x99
	movs r3, #2
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DF64
	ldr r0, _0804DF60 @ =gKeysNew
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0804DF72
	b _0804E192
	.align 2, 0
_0804DF50: .4byte 0x03000A10
_0804DF54: .4byte 0x030009D8
_0804DF58: .4byte 0x03000A44
_0804DF5C: .4byte 0x03000A46
_0804DF60: .4byte gKeysNew
_0804DF64:
	ldr r0, _0804E008 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DF74
_0804DF72:
	movs r1, #0
_0804DF74:
	cmp r1, #0
	beq _0804DF7A
	b _0804E192
_0804DF7A:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	bge _0804DF86
	b _0804DE3C
_0804DF86:
	movs r0, #0xb4
	mov r8, r0
	movs r6, #0
	ldr r4, _0804E00C @ =0x030009D8
	ldr r7, _0804E010 @ =0x03000A44
	movs r1, #1
	mov sb, r1
	movs r5, #0
_0804DF96:
	mov r2, sb
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	ldr r3, _0804E014 @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #0x78
	movs r3, #4
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0xd2
	movs r2, #0x78
	movs r3, #3
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x5a
	movs r2, #0x9b
	movs r3, #1
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x96
	movs r2, #0x99
	movs r3, #2
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804E018
	ldr r0, _0804E008 @ =gKeysNew
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0804E026
	b _0804E192
	.align 2, 0
_0804E008: .4byte gKeysNew
_0804E00C: .4byte 0x030009D8
_0804E010: .4byte 0x03000A44
_0804E014: .4byte 0x03000A46
_0804E018:
	ldr r0, _0804E11C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804E028
_0804E026:
	movs r1, #0
_0804E028:
	cmp r1, #0
	beq _0804E02E
	b _0804E192
_0804E02E:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804DF96
	movs r3, #0xb4
	lsls r3, r3, #1
	mov r8, r3
	movs r6, #0
	ldr r0, _0804E120 @ =0x030009D8
	mov sb, r0
	ldr r1, _0804E124 @ =0xFFFFF9AC
	str r1, [sp, #0x10]
_0804E048:
	mov sl, r6
	movs r2, #0xb0
	lsls r2, r2, #1
	subs r0, r2, r6
	cmp r0, #0
	bge _0804E056
	mov sl, r2
_0804E056:
	movs r0, #1
	str r0, [sp]
	mov r0, sb
	movs r1, #0
	ldr r2, _0804E128 @ =0x03000A44
	ldr r3, _0804E12C @ =0x03000A46
	bl sub_08026C40
	mov r2, sl
	adds r2, #0x1e
	ldr r3, _0804E128 @ =0x03000A44
	ldrh r0, [r3]
	str r0, [sp]
	mov r0, sb
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	mov r4, sl
	adds r4, #0x78
	movs r5, #0
	str r5, [sp]
	mov r0, sb
	movs r1, #0x1e
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	str r5, [sp]
	mov r0, sb
	movs r1, #0xd2
	adds r2, r4, #0
	movs r3, #3
	bl sub_08026B90
	mov r2, sl
	adds r2, #0x9b
	str r5, [sp]
	mov r0, sb
	movs r1, #0x5a
	movs r3, #1
	bl sub_08026B90
	mov r2, sl
	adds r2, #0x99
	str r5, [sp]
	mov r0, sb
	movs r1, #0x96
	movs r3, #2
	bl sub_08026B90
	ldr r4, _0804E130 @ =gBgRegsBuffer
	movs r1, #0xb0
	lsls r1, r1, #1
	mov r2, sl
	subs r0, r1, r2
	movs r7, #0
	strh r0, [r4, #6]
	bl sub_0800ED74
	cmp r6, #0xf0
	bne _0804E0D8
	ldr r0, _0804E134 @ =0x0000FFC4
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
_0804E0D8:
	movs r1, #0x87
	lsls r1, r1, #1
	cmp r6, r1
	bne _0804E0E6
	ldr r0, _0804E138 @ =0x0000FFD8
	strh r0, [r4, #0xc]
	strh r5, [r4, #0xe]
_0804E0E6:
	cmp r6, #0xf0
	ble _0804E104
	movs r3, #0xb0
	lsls r3, r3, #1
	cmp sl, r3
	beq _0804E104
	adds r0, r6, #0
	subs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	cmp r6, r1
	ble _0804E104
	mov r0, sp
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0xe]
_0804E104:
	bl sub_0800277C
	cmp r0, #0
	beq _0804E13C
	ldr r0, _0804E11C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E14A
	b _0804E192
	.align 2, 0
_0804E11C: .4byte gKeysNew
_0804E120: .4byte 0x030009D8
_0804E124: .4byte 0xFFFFF9AC
_0804E128: .4byte 0x03000A44
_0804E12C: .4byte 0x03000A46
_0804E130: .4byte gBgRegsBuffer
_0804E134: .4byte 0x0000FFC4
_0804E138: .4byte 0x0000FFD8
_0804E13C:
	ldr r0, _0804E170 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804E14C
_0804E14A:
	movs r1, #0
_0804E14C:
	cmp r1, #0
	bne _0804E192
	bl WaitFrame
	ldr r1, [sp, #0x10]
	adds r1, #6
	str r1, [sp, #0x10]
	adds r6, #1
	cmp r6, r8
	bge _0804E162
	b _0804E048
_0804E162:
	movs r0, #8
	bl FadeOutAllMusicPlayers
	movs r0, #0x78
	bl sub_0800F244
	b _0804E17C
	.align 2, 0
_0804E170: .4byte gKeysNew
_0804E174:
	bl sub_0800ED74
	bl WaitFrame
_0804E17C:
	bl sub_0800F298
	cmp r0, #0
	beq _0804E174
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	b _0804E1D2
_0804E192:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0804E1A8
	b _0804E19E
_0804E19A:
	bl WaitFrame
_0804E19E:
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804E19A
_0804E1A8:
	movs r0, #2
	bl FadeOutAllMusicPlayers
_0804E1AE:
	movs r0, #0x1e
	bl sub_0800F244
	b _0804E1BE
_0804E1B6:
	bl sub_0800ED74
	bl WaitFrame
_0804E1BE:
	bl sub_0800F298
	cmp r0, #0
	beq _0804E1B6
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
_0804E1D2:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E1E4
sub_0804E1E4: @ 0x0804E1E4
	ldr r1, _0804E1EC @ =0x03000A48
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0804E1EC: .4byte 0x03000A48

	thumb_func_start sub_0804E1F0
sub_0804E1F0: @ 0x0804E1F0
	bx lr
	.align 2, 0
_0804E1F4:
	.byte 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x02, 0xD0, 0x02, 0x28, 0x0F, 0xD0
	.byte 0x12, 0xE0, 0x05, 0x49, 0x08, 0x68, 0x01, 0x30, 0x08, 0x60, 0x04, 0x4A, 0x40, 0x42, 0x01, 0x09
	.byte 0x11, 0x81, 0x80, 0x08, 0x90, 0x81, 0x07, 0xE0, 0x48, 0x0A, 0x00, 0x03, 0x60, 0x1C, 0x00, 0x03
	.byte 0x02, 0x49, 0x08, 0x89, 0x01, 0x38, 0x08, 0x81, 0x70, 0x47, 0x00, 0x00, 0x60, 0x1C, 0x00, 0x03

	thumb_func_start sub_0804E230
sub_0804E230: @ 0x0804E230
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bne _0804E28E
	ldr r1, _0804E29C @ =0x03000A4C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bne _0804E250
	movs r0, #0
	str r0, [r1]
_0804E250:
	ldr r4, _0804E2A0 @ =0x03000A50
	ldr r1, [r4]
	subs r1, #1
	str r1, [r4]
	ldr r5, _0804E2A4 @ =0x030009D8
	ldr r0, _0804E2A8 @ =0x03000A54
	mov r8, r0
	ldr r2, [r0]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08026B90
	ldr r6, _0804E2AC @ =0x03000A44
	ldr r3, _0804E2B0 @ =0x03000A46
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_08026C40
	ldr r1, [r4]
	mov r0, r8
	ldr r2, [r0]
	ldrh r0, [r6]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
_0804E28E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E29C: .4byte 0x03000A4C
_0804E2A0: .4byte 0x03000A50
_0804E2A4: .4byte 0x030009D8
_0804E2A8: .4byte 0x03000A54
_0804E2AC: .4byte 0x03000A44
_0804E2B0: .4byte 0x03000A46

	thumb_func_start sub_0804E2B4
sub_0804E2B4: @ 0x0804E2B4
	push {lr}
	bl sub_0800277C
	cmp r0, #0
	beq _0804E2CC
	ldr r0, _0804E2C8 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	b _0804E2D2
	.align 2, 0
_0804E2C8: .4byte gKeysNew
_0804E2CC:
	ldr r0, _0804E2DC @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
_0804E2D2:
	ands r0, r1
	cmp r0, #0
	beq _0804E2E0
	movs r0, #1
	b _0804E2E2
	.align 2, 0
_0804E2DC: .4byte gKeysNew
_0804E2E0:
	movs r0, #0
_0804E2E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804E2E8
sub_0804E2E8: @ 0x0804E2E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E312
	movs r7, #0
	movs r0, #0x20
	b _0804E336
_0804E312:
	cmp r4, #1
	bne _0804E31E
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E338
_0804E31E:
	cmp r4, #2
	bne _0804E32A
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E338
_0804E32A:
	cmp r6, #3
	bne _0804E338
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E336:
	str r0, [sp]
_0804E338:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	blo _0804E342
	b _0804E454
_0804E342:
	mov r2, r8
	lsls r2, r2, #0x18
	mov ip, r2
	asrs r7, r2, #0x18
	movs r0, #0x1f
	mov r8, r0
	mov r2, r8
	adds r0, r7, #0
	ands r2, r0
	str r2, [sp, #4]
	ldr r2, _0804E398 @ =0xFFFFFC1F
	mov sl, r2
	movs r0, #0x7d
	rsbs r0, r0, #0
	mov sb, r0
_0804E360:
	lsls r0, r1, #5
	ldr r2, _0804E39C @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #8]
	lsls r5, r1, #6
_0804E36E:
	lsls r1, r6, #2
	adds r0, r1, r5
	ldr r2, _0804E3A0 @ =0x03000A58
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp r7, r0
	bgt _0804E3B0
	cmp r7, #0
	blt _0804E3A4
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #4]
	orrs r0, r1
	strb r0, [r3]
	b _0804E3C2
	.align 2, 0
_0804E398: .4byte 0xFFFFFC1F
_0804E39C: .4byte gPaletteBuffer
_0804E3A0: .4byte 0x03000A58
_0804E3A4:
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _0804E3C2
_0804E3B0:
	lsrs r0, r2, #0x1b
	mov r2, r8
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E3C2:
	mov r0, ip
	asrs r2, r0, #0x18
	adds r0, r4, r5
	ldr r1, _0804E3E0 @ =0x03000A58
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E3EE
	cmp r2, #0
	blt _0804E3E4
	movs r0, #0x1f
	ands r0, r2
	b _0804E3F0
	.align 2, 0
_0804E3E0: .4byte 0x03000A58
_0804E3E4:
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	strh r0, [r3]
	b _0804E3FC
_0804E3EE:
	lsrs r0, r1, #0x1b
_0804E3F0:
	lsls r0, r0, #5
	ldrh r2, [r3]
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
_0804E3FC:
	mov r0, ip
	asrs r2, r0, #0x18
	adds r0, r4, r5
	ldr r1, _0804E41C @ =0x03000A58
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E42A
	cmp r2, #0
	blt _0804E420
	adds r0, r2, #0
	mov r2, r8
	ands r0, r2
	b _0804E430
	.align 2, 0
_0804E41C: .4byte 0x03000A58
_0804E420:
	ldrb r1, [r3, #1]
	mov r0, sb
	ands r0, r1
	strb r0, [r3, #1]
	b _0804E43C
_0804E42A:
	lsrs r0, r1, #0x1b
	mov r1, r8
	ands r0, r1
_0804E430:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_0804E43C:
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E36E
	ldr r2, [sp, #8]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [sp]
	cmp r1, r0
	blo _0804E360
_0804E454:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804E464
sub_0804E464: @ 0x0804E464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E48E
	movs r7, #0
	movs r0, #0x20
	b _0804E4B2
_0804E48E:
	cmp r4, #1
	bne _0804E49A
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E4B4
_0804E49A:
	cmp r4, #2
	bne _0804E4A6
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E4B4
_0804E4A6:
	cmp r6, #3
	bne _0804E4B4
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E4B2:
	str r0, [sp]
_0804E4B4:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804E592
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sb, r0
	ldr r2, _0804E504 @ =0x03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
_0804E4CC:
	lsls r0, r1, #5
	ldr r2, _0804E508 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	mov sl, r0
	lsls r5, r1, #6
_0804E4DA:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	add r0, sb
	adds r4, r1, #0
	cmp r0, #0x1f
	bgt _0804E50C
	lsrs r0, r2, #0x1b
	add r0, sb
	mov r1, ip
	ands r0, r1
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0804E514
	.align 2, 0
_0804E504: .4byte 0x03000A58
_0804E508: .4byte gPaletteBuffer
_0804E50C:
	ldrb r0, [r3]
	mov r2, ip
	orrs r0, r2
	strb r0, [r3]
_0804E514:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	adds r0, r2, r0
	cmp r0, #0x1f
	bgt _0804E53C
	lsrs r1, r1, #0x1b
	adds r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _0804E538 @ =0xFFFFFC1F
	ands r0, r2
	b _0804E544
	.align 2, 0
_0804E538: .4byte 0xFFFFFC1F
_0804E53C:
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
_0804E544:
	orrs r0, r1
	strh r0, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	adds r0, r2, r0
	cmp r0, #0x1f
	bgt _0804E572
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0804E57A
_0804E572:
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
_0804E57A:
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E4DA
	mov r2, sl
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [sp]
	cmp r1, r0
	blo _0804E4CC
_0804E592:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E5A4
sub_0804E5A4: @ 0x0804E5A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r7, r4, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	str r3, [sp]
	bl FlushPaletteBuffer
	ldr r3, [sp]
	cmp r4, #0
	bne _0804E5D0
	movs r3, #0
	movs r0, #0x20
	b _0804E5F2
_0804E5D0:
	cmp r4, #1
	bne _0804E5DC
	movs r3, #0
	movs r1, #0x10
	mov sl, r1
	b _0804E5F4
_0804E5DC:
	cmp r4, #2
	bne _0804E5E6
	movs r3, #0x10
	movs r0, #0x20
	b _0804E5F2
_0804E5E6:
	cmp r7, #3
	bne _0804E5F4
	adds r3, r6, #0
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E5F2:
	mov sl, r0
_0804E5F4:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1f
	ble _0804E5FE
	movs r5, #0x1f
_0804E5FE:
	adds r2, r3, #0
	cmp r2, sl
	bhs _0804E6A0
	lsls r0, r5, #0x18
	asrs r6, r0, #0x18
	movs r5, #0x1f
	ldr r1, _0804E6B0 @ =0x0000FFE1
	adds r7, r6, r1
_0804E60E:
	lsls r0, r2, #5
	ldr r1, _0804E6B4 @ =gPaletteBuffer
	adds r3, r0, r1
	movs r0, #0
	mov ip, r0
	lsls r1, r2, #6
	mov r8, r1
	adds r2, #1
	mov sb, r2
_0804E620:
	mov r1, ip
	lsls r0, r1, #2
	add r0, r8
	ldr r1, _0804E6B8 @ =0x03000A58
	adds r4, r0, r1
	ldrb r0, [r4]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	subs r0, r5, r0
	cmp r6, r0
	ble _0804E648
	lsrs r0, r1, #0x1b
	adds r0, r0, r7
	ands r0, r5
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E648:
	ldrh r0, [r4]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	subs r0, r5, r0
	cmp r6, r0
	ble _0804E666
	lsrs r0, r1, #0x1b
	adds r0, r0, r7
	ands r0, r5
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804E6BC @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
_0804E666:
	ldrb r0, [r4, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	subs r0, r5, r0
	cmp r6, r0
	ble _0804E686
	lsrs r0, r1, #0x1b
	adds r0, r0, r7
	ands r0, r5
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_0804E686:
	adds r3, #2
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #0xf
	bls _0804E620
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, sl
	blo _0804E60E
_0804E6A0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E6B0: .4byte 0x0000FFE1
_0804E6B4: .4byte gPaletteBuffer
_0804E6B8: .4byte 0x03000A58
_0804E6BC: .4byte 0xFFFFFC1F

	thumb_func_start sub_0804E6C0
sub_0804E6C0: @ 0x0804E6C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E6EA
	movs r7, #0
	movs r0, #0x20
	b _0804E70E
_0804E6EA:
	cmp r4, #1
	bne _0804E6F6
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E710
_0804E6F6:
	cmp r4, #2
	bne _0804E702
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E710
_0804E702:
	cmp r6, #3
	bne _0804E710
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E70E:
	str r0, [sp]
_0804E710:
	adds r1, r7, #0
	ldr r4, [sp]
	cmp r1, r4
	bhs _0804E7FA
	mov r0, r8
	lsls r7, r0, #0x18
	ldr r2, _0804E764 @ =0x03000A58
	mov ip, r2
	asrs r4, r7, #0x18
	mov r8, r4
	movs r0, #0x1f
	mov sl, r0
_0804E728:
	lsls r0, r1, #5
	ldr r2, _0804E768 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r4, r1, #1
	mov sb, r4
	lsls r5, r1, #6
_0804E736:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, ip
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	mov r4, r8
	subs r0, r0, r4
	adds r4, r1, #0
	cmp r0, #0
	blt _0804E76C
	lsrs r0, r2, #0x1b
	mov r1, r8
	subs r0, r0, r1
	mov r2, sl
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0804E776
	.align 2, 0
_0804E764: .4byte 0x03000A58
_0804E768: .4byte gPaletteBuffer
_0804E76C:
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_0804E776:
	adds r0, r4, r5
	add r0, ip
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	asrs r2, r7, #0x18
	subs r0, r0, r2
	cmp r0, #0
	blt _0804E7A0
	lsrs r1, r1, #0x1b
	subs r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _0804E79C @ =0xFFFFFC1F
	ands r0, r2
	orrs r0, r1
	b _0804E7A6
	.align 2, 0
_0804E79C: .4byte 0xFFFFFC1F
_0804E7A0:
	ldrh r1, [r3]
	ldr r0, _0804E7D4 @ =0xFFFFFC1F
	ands r0, r1
_0804E7A6:
	strh r0, [r3]
	adds r0, r4, r5
	add r0, ip
	ldrb r0, [r0, #1]
	lsls r2, r0, #0x19
	lsrs r0, r2, #0x1b
	asrs r1, r7, #0x18
	subs r0, r0, r1
	cmp r0, #0
	blt _0804E7D8
	lsrs r0, r2, #0x1b
	subs r0, r0, r1
	mov r4, sl
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0804E7E2
	.align 2, 0
_0804E7D4: .4byte 0xFFFFFC1F
_0804E7D8:
	ldrb r1, [r3, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
_0804E7E2:
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E736
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804E728
_0804E7FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E80C
sub_0804E80C: @ 0x0804E80C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl FlushPaletteBuffer
	movs r3, #0
	movs r6, #0x1f
	movs r7, #0x1f
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sb, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov r8, r0
	ldr r0, _0804E8B4 @ =0xFFFFFC1F
	mov ip, r0
_0804E82E:
	lsls r1, r3, #5
	ldr r0, _0804E8B8 @ =gPaletteBuffer
	adds r2, r1, r0
	movs r4, #0
	adds r5, r3, #1
_0804E838:
	ldrb r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _0804E854
	ldr r1, [r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_0804E854:
	ldrh r3, [r2]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0804E872
	ldr r1, [r2]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r7
	lsls r1, r1, #5
	mov r0, ip
	ands r0, r3
	orrs r0, r1
	strh r0, [r2]
_0804E872:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _0804E892
	ldr r1, [r2]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	lsls r1, r1, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #1]
_0804E892:
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804E838
	lsls r0, r5, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0804E82E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E8B4: .4byte 0xFFFFFC1F
_0804E8B8: .4byte gPaletteBuffer

	thumb_func_start sub_0804E8BC
sub_0804E8BC: @ 0x0804E8BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E8E6
	movs r7, #0
	movs r0, #0x20
	b _0804E90A
_0804E8E6:
	cmp r4, #1
	bne _0804E8F2
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E90C
_0804E8F2:
	cmp r4, #2
	bne _0804E8FE
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E90C
_0804E8FE:
	cmp r6, #3
	bne _0804E90C
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E90A:
	str r0, [sp]
_0804E90C:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804E9E8
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sl, r0
	ldr r2, _0804E960 @ =0x03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
	mov sb, sl
	mov r2, ip
	mov r0, sb
	ands r2, r0
	mov sb, r2
_0804E92E:
	lsls r0, r1, #5
	ldr r2, _0804E964 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #4]
	lsls r5, r1, #6
_0804E93C:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp sl, r0
	bgt _0804E968
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r3]
	b _0804E97A
	.align 2, 0
_0804E960: .4byte 0x03000A58
_0804E964: .4byte gPaletteBuffer
_0804E968:
	lsrs r0, r2, #0x1b
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E97A:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E990
	movs r0, #0x1f
	ands r0, r2
	b _0804E992
_0804E990:
	lsrs r0, r1, #0x1b
_0804E992:
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804E9B8 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E9BC
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	b _0804E9C2
	.align 2, 0
_0804E9B8: .4byte 0xFFFFFC1F
_0804E9BC:
	lsrs r0, r1, #0x1b
	mov r2, ip
	ands r0, r2
_0804E9C2:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E93C
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804E92E
_0804E9E8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804E9F8
sub_0804E9F8: @ 0x0804E9F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804EA22
	movs r7, #0
	movs r0, #0x20
	b _0804EA46
_0804EA22:
	cmp r4, #1
	bne _0804EA2E
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804EA48
_0804EA2E:
	cmp r4, #2
	bne _0804EA3A
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804EA48
_0804EA3A:
	cmp r6, #3
	bne _0804EA48
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804EA46:
	str r0, [sp]
_0804EA48:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804EB24
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sl, r0
	ldr r2, _0804EA9C @ =0x03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
	mov sb, sl
	mov r2, ip
	mov r0, sb
	ands r2, r0
	mov sb, r2
_0804EA6A:
	lsls r0, r1, #5
	ldr r2, _0804EAA0 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #4]
	lsls r5, r1, #6
_0804EA78:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp sl, r0
	blt _0804EAA4
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r3]
	b _0804EAB6
	.align 2, 0
_0804EA9C: .4byte 0x03000A58
_0804EAA0: .4byte gPaletteBuffer
_0804EAA4:
	lsrs r0, r2, #0x1b
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804EAB6:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	blt _0804EACC
	movs r0, #0x1f
	ands r0, r2
	b _0804EACE
_0804EACC:
	lsrs r0, r1, #0x1b
_0804EACE:
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804EAF4 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	blt _0804EAF8
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	b _0804EAFE
	.align 2, 0
_0804EAF4: .4byte 0xFFFFFC1F
_0804EAF8:
	lsrs r0, r1, #0x1b
	mov r2, ip
	ands r0, r2
_0804EAFE:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804EA78
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804EA6A
_0804EB24:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804EB34
sub_0804EB34: @ 0x0804EB34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804EB5C
	movs r7, #0
	movs r0, #0x20
	b _0804EB7E
_0804EB5C:
	cmp r4, #1
	bne _0804EB68
	movs r7, #0
	movs r1, #0x10
	mov sb, r1
	b _0804EB80
_0804EB68:
	cmp r4, #2
	bne _0804EB72
	movs r7, #0x10
	movs r0, #0x20
	b _0804EB7E
_0804EB72:
	cmp r6, #3
	bne _0804EB80
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804EB7E:
	mov sb, r0
_0804EB80:
	adds r3, r7, #0
	cmp r3, sb
	bhs _0804EBE6
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x1f
	adds r5, r0, #0
	ands r5, r1
	lsls r7, r5, #2
	ldr r1, _0804EBF4 @ =gPaletteBuffer
	mov sl, r1
	movs r1, #0x20
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0x1f
	ands r1, r0
	lsls r6, r1, #5
	ldr r0, _0804EBF8 @ =0xFFFFFC1F
	mov ip, r0
_0804EBA8:
	lsls r0, r3, #5
	mov r1, sl
	adds r2, r0, r1
	movs r4, #0
	adds r3, #1
_0804EBB2:
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, ip
	ands r0, r1
	orrs r0, r6
	strh r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804EBB2
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, sb
	blo _0804EBA8
_0804EBE6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EBF4: .4byte gPaletteBuffer
_0804EBF8: .4byte 0xFFFFFC1F

	thumb_func_start sub_0804EBFC
sub_0804EBFC: @ 0x0804EBFC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0804EC14
	movs r4, #0
	movs r3, #0x20
	b _0804EC34
_0804EC14:
	cmp r0, #1
	bne _0804EC1E
	movs r4, #0
	movs r3, #0x10
	b _0804EC34
_0804EC1E:
	cmp r0, #2
	bne _0804EC28
	movs r4, #0x10
	movs r3, #0x20
	b _0804EC34
_0804EC28:
	cmp r2, #3
	bne _0804EC34
	adds r4, r1, #0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804EC34:
	adds r0, r4, #0
	cmp r0, r3
	bhs _0804EC6E
_0804EC3A:
	movs r4, #0
	lsls r6, r0, #6
	lsls r5, r0, #5
	adds r7, r0, #1
_0804EC42:
	lsls r0, r4, #2
	adds r0, r6, r0
	ldr r1, _0804EC78 @ =0x03000A58
	adds r0, r0, r1
	lsls r1, r4, #1
	adds r1, r5, r1
	ldr r2, _0804EC7C @ =gPaletteBuffer
	adds r1, r1, r2
	movs r2, #4
	str r3, [sp]
	bl memcpy
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #0xf
	bls _0804EC42
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	blo _0804EC3A
_0804EC6E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC78: .4byte 0x03000A58
_0804EC7C: .4byte gPaletteBuffer

	thumb_func_start sub_0804EC80
sub_0804EC80: @ 0x0804EC80
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0804EC98
	movs r4, #0
	movs r3, #0x20
	b _0804ECB8
_0804EC98:
	cmp r0, #1
	bne _0804ECA2
	movs r4, #0
	movs r3, #0x10
	b _0804ECB8
_0804ECA2:
	cmp r0, #2
	bne _0804ECAC
	movs r4, #0x10
	movs r3, #0x20
	b _0804ECB8
_0804ECAC:
	cmp r2, #3
	bne _0804ECB8
	adds r4, r1, #0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804ECB8:
	adds r0, r4, #0
	cmp r0, r3
	bhs _0804ECF2
_0804ECBE:
	movs r4, #0
	lsls r6, r0, #5
	lsls r5, r0, #6
	adds r7, r0, #1
_0804ECC6:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldr r1, _0804ECFC @ =gPaletteBuffer
	adds r0, r0, r1
	lsls r1, r4, #2
	adds r1, r5, r1
	ldr r2, _0804ED00 @ =0x03000A58
	adds r1, r1, r2
	movs r2, #4
	str r3, [sp]
	bl memcpy
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #0xf
	bls _0804ECC6
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	blo _0804ECBE
_0804ECF2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ECFC: .4byte gPaletteBuffer
_0804ED00: .4byte 0x03000A58

	thumb_func_start sub_0804ED04
sub_0804ED04: @ 0x0804ED04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804ED22
	movs r7, #0
	movs r0, #0x20
	b _0804ED42
_0804ED22:
	cmp r4, #1
	bne _0804ED2C
	movs r7, #0
	movs r0, #0x10
	b _0804ED42
_0804ED2C:
	cmp r4, #2
	bne _0804ED36
	movs r7, #0x10
	movs r0, #0x20
	b _0804ED42
_0804ED36:
	cmp r6, #3
	bne _0804ED44
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804ED42:
	mov r8, r0
_0804ED44:
	adds r0, r7, #0
	cmp r0, r8
	bhs _0804ED70
	ldr r7, _0804ED7C @ =gPaletteBuffer
_0804ED4C:
	movs r4, #0
	lsls r5, r0, #5
	adds r6, r0, #1
_0804ED52:
	lsls r0, r4, #1
	adds r0, r0, r7
	adds r0, r5, r0
	movs r1, #4
	bl bzero
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804ED52
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r8
	blo _0804ED4C
_0804ED70:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ED7C: .4byte gPaletteBuffer

	thumb_func_start sub_0804ED80
sub_0804ED80: @ 0x0804ED80
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
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
	ldr r1, _0804EDE8 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	movs r4, #0
	ldr r1, _0804EDEC @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	cmp r6, #1
	bhi _0804EDF4
	ldr r0, _0804EDF0 @ =0x00001F83
	add r1, sp, #4
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _0804EE0C
	.align 2, 0
_0804EDE8: .4byte 0xFFFF0000
_0804EDEC: .4byte 0x00001E02
_0804EDF0: .4byte 0x00001F83
_0804EDF4:
	ldr r0, _0804EE28 @ =0x00001F03
	add r1, sp, #4
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
_0804EE0C:
	ldr r0, _0804EE2C @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804EE16
	b _0804EF30
_0804EE16:
	cmp r6, #0x1e
	bls _0804EE1C
	b _0804EF30
_0804EE1C:
	lsls r0, r6, #2
	ldr r1, _0804EE30 @ =_0804EE34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804EE28: .4byte 0x00001F03
_0804EE2C: .4byte 0x03003CA8
_0804EE30: .4byte _0804EE34
_0804EE34: @ jump table
	.4byte _0804EEB0 @ case 0
	.4byte _0804EEB4 @ case 1
	.4byte _0804EEB8 @ case 2
	.4byte _0804EEBC @ case 3
	.4byte _0804EEC0 @ case 4
	.4byte _0804EEC4 @ case 5
	.4byte _0804EEC8 @ case 6
	.4byte _0804EECC @ case 7
	.4byte _0804EED0 @ case 8
	.4byte _0804EED4 @ case 9
	.4byte _0804EED8 @ case 10
	.4byte _0804EEDC @ case 11
	.4byte _0804EEE0 @ case 12
	.4byte _0804EEE4 @ case 13
	.4byte _0804EEE8 @ case 14
	.4byte _0804EEEC @ case 15
	.4byte _0804EEF0 @ case 16
	.4byte _0804EEF4 @ case 17
	.4byte _0804EEF8 @ case 18
	.4byte _0804EEFC @ case 19
	.4byte _0804EF00 @ case 20
	.4byte _0804EF04 @ case 21
	.4byte _0804EF08 @ case 22
	.4byte _0804EF0C @ case 23
	.4byte _0804EF10 @ case 24
	.4byte _0804EF14 @ case 25
	.4byte _0804EF18 @ case 26
	.4byte _0804EF1C @ case 27
	.4byte _0804EF20 @ case 28
	.4byte _0804EF24 @ case 29
	.4byte _0804EF28 @ case 30
_0804EEB0:
	movs r0, #0x2e
	b _0804EF2A
_0804EEB4:
	movs r0, #0x2f
	b _0804EF2A
_0804EEB8:
	movs r0, #0x30
	b _0804EF2A
_0804EEBC:
	movs r0, #0x77
	b _0804EF2A
_0804EEC0:
	movs r0, #0x76
	b _0804EF2A
_0804EEC4:
	movs r0, #0x5f
	b _0804EF2A
_0804EEC8:
	movs r0, #0x75
	b _0804EF2A
_0804EECC:
	movs r0, #0x74
	b _0804EF2A
_0804EED0:
	movs r0, #0x73
	b _0804EF2A
_0804EED4:
	movs r0, #0x72
	b _0804EF2A
_0804EED8:
	movs r0, #0x71
	b _0804EF2A
_0804EEDC:
	movs r0, #0x70
	b _0804EF2A
_0804EEE0:
	movs r0, #0x6f
	b _0804EF2A
_0804EEE4:
	movs r0, #0x6e
	b _0804EF2A
_0804EEE8:
	movs r0, #0x78
	b _0804EF2A
_0804EEEC:
	movs r0, #0x6d
	b _0804EF2A
_0804EEF0:
	movs r0, #0x6c
	b _0804EF2A
_0804EEF4:
	movs r0, #0x6b
	b _0804EF2A
_0804EEF8:
	movs r0, #0x6a
	b _0804EF2A
_0804EEFC:
	movs r0, #0x69
	b _0804EF2A
_0804EF00:
	movs r0, #0x68
	b _0804EF2A
_0804EF04:
	movs r0, #0x67
	b _0804EF2A
_0804EF08:
	movs r0, #0x66
	b _0804EF2A
_0804EF0C:
	movs r0, #0x65
	b _0804EF2A
_0804EF10:
	movs r0, #0x64
	b _0804EF2A
_0804EF14:
	movs r0, #0x63
	b _0804EF2A
_0804EF18:
	movs r0, #0x62
	b _0804EF2A
_0804EF1C:
	movs r0, #0x61
	b _0804EF2A
_0804EF20:
	movs r0, #0x60
	b _0804EF2A
_0804EF24:
	movs r0, #0x4b
	b _0804EF2A
_0804EF28:
	movs r0, #0x42
_0804EF2A:
	bl GetDataRecord
	adds r5, r0, #0
_0804EF30:
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _0804EF6C @ =0x0600F800
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
	beq _0804EF86
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804EF74
	ldr r1, _0804EF70 @ =0x06004000
	b _0804EF78
	.align 2, 0
_0804EF6C: .4byte 0x0600F800
_0804EF70: .4byte 0x06004000
_0804EF74:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804EF78:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804EF96
_0804EF86:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804EF96:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r1, _0804EFD0 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	cmp r6, #1
	bne _0804EFC6
	b _0804F0DA
_0804EFC6:
	cmp r6, #1
	bgt _0804EFD4
	cmp r6, #0
	beq _0804EFDA
	b _0804F0DA
	.align 2, 0
_0804EFD0: .4byte gBgRegsBuffer
_0804EFD4:
	cmp r6, #0x1e
	beq _0804F064
	b _0804F0DA
_0804EFDA:
	ldr r0, _0804EFF0 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804EFE6
	b _0804F0DA
_0804EFE6:
	lsls r0, r0, #2
	ldr r1, _0804EFF4 @ =_0804EFF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804EFF0: .4byte 0x03003CA8
_0804EFF4: .4byte _0804EFF8
_0804EFF8: @ jump table
	.4byte _0804F00C @ case 0
	.4byte _0804F01C @ case 1
	.4byte _0804F02C @ case 2
	.4byte _0804F03C @ case 3
	.4byte _0804F04C @ case 4
_0804F00C:
	ldr r0, _0804F014 @ =0x03001258
	ldr r1, _0804F018 @ =0x00100070
	b _0804F050
	.align 2, 0
_0804F014: .4byte 0x03001258
_0804F018: .4byte 0x00100070
_0804F01C:
	ldr r0, _0804F024 @ =0x03001258
	ldr r1, _0804F028 @ =0x00100076
	b _0804F050
	.align 2, 0
_0804F024: .4byte 0x03001258
_0804F028: .4byte 0x00100076
_0804F02C:
	ldr r0, _0804F034 @ =0x03001258
	ldr r1, _0804F038 @ =0x0010007E
	b _0804F050
	.align 2, 0
_0804F034: .4byte 0x03001258
_0804F038: .4byte 0x0010007E
_0804F03C:
	ldr r0, _0804F044 @ =0x03001258
	ldr r1, _0804F048 @ =0x00100086
	b _0804F050
	.align 2, 0
_0804F044: .4byte 0x03001258
_0804F048: .4byte 0x00100086
_0804F04C:
	ldr r0, _0804F05C @ =0x03001258
	ldr r1, _0804F060 @ =0x00100085
_0804F050:
	movs r2, #0
	movs r3, #2
	bl sub_08026ADC
	b _0804F0DA
	.align 2, 0
_0804F05C: .4byte 0x03001258
_0804F060: .4byte 0x00100085
_0804F064:
	ldr r4, _0804F084 @ =0x03001290
	movs r6, #3
_0804F068:
	bl sub_0801708C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl GetPlayerClass
	cmp r0, #1
	beq _0804F09A
	cmp r0, #1
	bgt _0804F088
	cmp r0, #0
	beq _0804F092
	b _0804F0C4
	.align 2, 0
_0804F084: .4byte 0x03001290
_0804F088:
	cmp r0, #2
	beq _0804F0A4
	cmp r0, #3
	beq _0804F0B8
	b _0804F0C4
_0804F092:
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xd
	b _0804F0A8
_0804F09A:
	adds r0, r4, #0
	ldr r1, _0804F0A0 @ =0x00100002
	b _0804F0A8
	.align 2, 0
_0804F0A0: .4byte 0x00100002
_0804F0A4:
	adds r0, r4, #0
	ldr r1, _0804F0B4 @ =0x00100001
_0804F0A8:
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	b _0804F0C4
	.align 2, 0
_0804F0B4: .4byte 0x00100001
_0804F0B8:
	adds r0, r4, #0
	ldr r1, _0804F0E4 @ =0x00100003
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
_0804F0C4:
	lsls r0, r5, #5
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	movs r0, #0x10
	movs r2, #1
	bl LoadPalette
	adds r4, #0x34
	subs r6, #1
	cmp r6, #0
	bge _0804F068
_0804F0DA:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F0E4: .4byte 0x00100003

	thumb_func_start sub_0804F0E8
sub_0804F0E8: @ 0x0804F0E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0x78
	mov r8, r0
	movs r1, #0xc8
	mov sb, r1
	ldr r0, _0804F2E4 @ =0x03001400
	ldr r1, [r0]
	mov sl, r0
	cmp r1, #0x78
	ble _0804F156
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F2EC @ =0x03001398
	ldr r3, _0804F2F0 @ =0x030013A8
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r2, sl
	ldr r0, [r2]
	movs r1, #0x1e
	bl __modsi3
	cmp r0, #0
	bne _0804F142
	ldr r0, [r6]
	subs r0, #1
	str r0, [r6]
_0804F142:
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xc8
	bl __modsi3
	cmp r0, #0
	bne _0804F156
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
_0804F156:
	mov r1, r8
	adds r1, #0xc8
	mov r2, sl
	ldr r0, [r2]
	cmp r0, r1
	ble _0804F1B2
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F2FC @ =0x0300139A
	ldr r3, _0804F300 @ =0x030013AA
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #4]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #4]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1d
	bl __modsi3
	cmp r0, #0
	bne _0804F19E
	ldr r0, [r6, #4]
	subs r0, #1
	str r0, [r6, #4]
_0804F19E:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F1B2
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
_0804F1B2:
	movs r1, #0xc8
	lsls r1, r1, #1
	add r1, r8
	mov r2, sl
	ldr r0, [r2]
	cmp r0, r1
	ble _0804F210
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F304 @ =0x0300139C
	ldr r3, _0804F308 @ =0x030013AC
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #8]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #8]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1c
	bl __modsi3
	cmp r0, #0
	bne _0804F1FC
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
_0804F1FC:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F210
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
_0804F210:
	movs r1, #0xa5
	lsls r1, r1, #2
	add r1, r8
	mov r2, sl
	ldr r0, [r2]
	cmp r0, r1
	ble _0804F26E
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F30C @ =0x0300139E
	ldr r3, _0804F310 @ =0x030013AE
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #0xc]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #0xc]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1b
	bl __modsi3
	cmp r0, #0
	bne _0804F25A
	ldr r0, [r6, #0xc]
	subs r0, #1
	str r0, [r6, #0xc]
_0804F25A:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F26E
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
_0804F26E:
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, r8
	mov r2, sl
	ldr r1, [r2]
	cmp r1, r0
	ble _0804F2CC
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F314 @ =0x030013A0
	ldr r3, _0804F318 @ =0x030013B0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #0x10]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #0x10]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1a
	bl __modsi3
	cmp r0, #0
	bne _0804F2B8
	ldr r0, [r6, #0x10]
	subs r0, #1
	str r0, [r6, #0x10]
_0804F2B8:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F2CC
	ldr r0, [r7, #0x10]
	adds r0, #1
	str r0, [r7, #0x10]
_0804F2CC:
	mov r1, sl
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F2E4: .4byte 0x03001400
_0804F2E8: .4byte 0x03001258
_0804F2EC: .4byte 0x03001398
_0804F2F0: .4byte 0x030013A8
_0804F2F4: .4byte 0x030013D0
_0804F2F8: .4byte 0x030013E8
_0804F2FC: .4byte 0x0300139A
_0804F300: .4byte 0x030013AA
_0804F304: .4byte 0x0300139C
_0804F308: .4byte 0x030013AC
_0804F30C: .4byte 0x0300139E
_0804F310: .4byte 0x030013AE
_0804F314: .4byte 0x030013A0
_0804F318: .4byte 0x030013B0

	thumb_func_start sub_0804F31C
sub_0804F31C: @ 0x0804F31C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r3, r0, #0
	movs r2, #0
	ldr r1, _0804F354 @ =0x030013A8
	ldr r0, _0804F358 @ =0x03001398
	movs r5, #3
_0804F32E:
	strh r2, [r0]
	strh r2, [r1]
	adds r1, #2
	adds r0, #2
	subs r5, #1
	cmp r5, #0
	bge _0804F32E
	cmp r3, #0
	beq _0804F342
	b _0804F758
_0804F342:
	ldr r0, _0804F35C @ =0x03001400
	str r3, [r0]
	movs r0, #0x78
	bl sub_0800F348
	movs r0, #0xa4
	bl PlaySE
	b _0804F364
	.align 2, 0
_0804F354: .4byte 0x030013A8
_0804F358: .4byte 0x03001398
_0804F35C: .4byte 0x03001400
_0804F360:
	bl WaitFrame
_0804F364:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F360
	movs r5, #0x77
_0804F36E:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F36E
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	movs r7, #0xb4
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r6, #0
_0804F392:
	cmp r4, #0x3f
	bgt _0804F3A2
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3A2:
	cmp r4, #0x74
	ble _0804F3B4
	subs r1, r7, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3B4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r6, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F3D2
	b _0804F910
_0804F3D2:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0xb4
	blt _0804F392
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0x80
	lsls r7, r7, #9
_0804F3EA:
	cmp r4, #0x3f
	bgt _0804F3FA
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3FA:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F410
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F410:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F42E
	b _0804F910
_0804F42E:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F3EA
	movs r6, #0x96
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0x80
	lsls r7, r7, #0xa
_0804F446:
	cmp r4, #0x3f
	bgt _0804F456
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F456:
	cmp r4, #0xec
	ble _0804F468
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F468:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F486
	b _0804F910
_0804F486:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F446
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xc0
	lsls r7, r7, #0xa
_0804F49E:
	cmp r4, #0x3f
	bgt _0804F4AE
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F4AE:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F4C4
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F4C4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F4E2
	b _0804F910
_0804F4E2:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F49E
	movs r4, #0
_0804F4EE:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F4FC
	b _0804F910
_0804F4FC:
	bl WaitFrame
	adds r4, #1

	non_word_aligned_thumb_func_start sub_0804F502
sub_0804F502: @ 0x0804F502
	cmp r4, #0x3c
	blt _0804F4EE
	movs r7, #0xb4
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r6, #0x80
	lsls r6, r6, #0xb
_0804F512:
	cmp r4, #0x3f
	bgt _0804F522
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F522:
	cmp r4, #0x74
	ble _0804F534
	subs r1, r7, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F534:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r6, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F552
	b _0804F910
_0804F552:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0xb4
	blt _0804F512
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xa0
	lsls r7, r7, #0xb
_0804F56A:
	cmp r4, #0x3f
	bgt _0804F57A
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F57A:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F590
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F590:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F5AE
	b _0804F910
_0804F5AE:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F56A
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xc0
	lsls r7, r7, #0xb
_0804F5C6:
	cmp r4, #0x3f
	bgt _0804F5D6
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F5D6:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F5EC
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F5EC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F60A
	b _0804F910
_0804F60A:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F5C6
	movs r6, #0x96
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xe0
	lsls r7, r7, #0xb
_0804F622:
	cmp r4, #0x3f
	bgt _0804F632
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F632:
	cmp r4, #0xec
	ble _0804F644
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F644:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F662
	b _0804F910
_0804F662:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F622
	movs r4, #0
_0804F66E:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F67C
	b _0804F910
_0804F67C:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x5a
	blt _0804F66E
	movs r0, #0x78
	bl sub_0800F3DC
	b _0804F69C
	.align 2, 0
_0804F690: .4byte 0x03001258
_0804F694:
	bl sub_0804F0E8
	bl WaitFrame
_0804F69C:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F694
	movs r5, #0x3b
_0804F6A6:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F6A6
	movs r0, #1
	bl sub_0804ED80
	movs r0, #0x78
	bl sub_0800F348
	b _0804F6C2
_0804F6BE:
	bl WaitFrame
_0804F6C2:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F6BE
	movs r5, #0x13
_0804F6CC:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F6CC
	movs r4, #0xa5
	lsls r4, r4, #2
	movs r5, #0
_0804F6DC:
	cmp r5, #0x3f
	bgt _0804F6EC
	lsls r1, r5, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804F6EC:
	bl sub_080076A8
	cmp r0, #0

	non_word_aligned_thumb_func_start sub_0804F6F2
sub_0804F6F2: @ 0x0804F6F2
	beq _0804F70C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F708 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x93
	movs r3, #8
	bl sub_08026B90
	b _0804F71A
	.align 2, 0
_0804F708: .4byte 0x03001258
_0804F70C:
	str r0, [sp]
	ldr r0, _0804F73C @ =0x03001258
	movs r1, #0x78
	movs r2, #0x93
	movs r3, #9
	bl sub_08026B90
_0804F71A:
	adds r0, r4, #0
	subs r0, #0xf0
	cmp r5, r0
	bne _0804F72E
	movs r0, #0xf0
	bl sub_0800F3DC
	movs r0, #8
	bl FadeOutAllMusicPlayers
_0804F72E:
	bl WaitFrame
	adds r5, #1
	cmp r5, r4
	blt _0804F6DC
	b _0804F744
	.align 2, 0
_0804F73C: .4byte 0x03001258
_0804F740:
	bl WaitFrame
_0804F744:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F740
	movs r5, #0xb3
_0804F74E:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F74E
_0804F758:
	movs r0, #0xa5
	bl PlaySE
	movs r0, #2
	bl sub_0804ED80
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
	movs r6, #0x96
	lsls r6, r6, #1
	ldr r4, _0804F8EC @ =0x00000167
_0804F772:
	cmp r5, r6
	bne _0804F77C
	movs r0, #0x3c
	bl sub_0800F3DC
_0804F77C:
	bl WaitFrame
	adds r5, #1
	cmp r5, r4
	ble _0804F772
	movs r5, #0
	movs r7, #0
	add r0, sp, #4
	mov r8, r0
	ldr r6, _0804F8F0 @ =0x03001398
	ldr r4, _0804F8F4 @ =0x030013A8
_0804F792:
	strh r7, [r6]
	strh r7, [r4]
	bl sub_08016F98
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	adds r6, #2
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	ble _0804F792
	movs r0, #0x1e
	bl sub_0804ED80
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F7BC:
	ldr r0, _0804F8F0 @ =0x03001398
	ldrh r0, [r0]
	str r0, [sp]
	ldr r0, _0804F8F8 @ =0x03001290
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_08026B90
	ldr r4, [sp, #4]
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _0804F8FC @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x37
	bl sub_0800EB30
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r5, r0
	bne _0804F7FC
	movs r0, #0x3c
	bl sub_0800F3DC
_0804F7FC:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F8EC @ =0x00000167
	cmp r5, r0
	ble _0804F7BC
	movs r0, #3
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F81E:
	movs r0, #0x94
	.global _0804F820
_0804F820:
	lsls r0, r0, #1
	cmp r5, r0
	ble _0804F838
	movs r1, #0xb4
	lsls r1, r1, #1
	subs r1, r1, r5
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F838:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F8EC @ =0x00000167
	cmp r5, r0
	ble _0804F81E
	movs r5, #4
	movs r6, #0xb4
	lsls r6, r6, #1
_0804F84A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r4, #0
_0804F864:
	cmp r4, #0x3f
	bgt _0804F874
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F874:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F88A
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F88A:
	bl sub_0804F99C
	cmp r0, #0
	bne _0804F910
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F864
	adds r5, #1
	cmp r5, #0x1c
	ble _0804F84A
	movs r0, #0x1d
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F8C0:
	cmp r5, #0x3f
	bgt _0804F8D0
	lsls r1, r5, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F8D0:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F900 @ =0x00000257
	cmp r5, r0
	ble _0804F8C0
	movs r0, #0xf0
	bl sub_0800F3DC
	movs r0, #8
	bl FadeOutAllMusicPlayers
	b _0804F908
	.align 2, 0
_0804F8EC: .4byte 0x00000167
_0804F8F0: .4byte 0x03001398
_0804F8F4: .4byte 0x030013A8
_0804F8F8: .4byte 0x03001290
_0804F8FC: .4byte 0x03003CA0
_0804F900: .4byte 0x00000257
_0804F904:
	bl WaitFrame
_0804F908:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F904
_0804F910:
	movs r0, #2
	bl FadeOutAllMusicPlayers
	movs r0, #0x1e
	bl sub_0800F3DC
	b _0804F922
_0804F91E:
	bl WaitFrame
_0804F922:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F91E
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804F944
sub_0804F944: @ 0x0804F944
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r4, _0804F984 @ =0x030013E8
	movs r2, #0
	ldr r7, _0804F988 @ =0x030013B8
	ldr r1, _0804F98C @ =0x030013A8
	ldr r0, _0804F990 @ =0x03001398
	movs r5, #0xf0
	ldr r6, _0804F994 @ =0x030013D0
_0804F956:
	strh r2, [r0]
	strh r2, [r1]
	stm r7!, {r2}
	stm r6!, {r5}
	adds r1, #2
	adds r0, #2
	adds r3, #1
	cmp r3, #5
	ble _0804F956
	movs r0, #0x1e
	str r0, [r4]
	movs r0, #0x24
	str r0, [r4, #4]
	movs r0, #0x28
	str r0, [r4, #8]
	movs r0, #0x25
	str r0, [r4, #0xc]
	movs r0, #0x22
	str r0, [r4, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F984: .4byte 0x030013E8
_0804F988: .4byte 0x030013B8
_0804F98C: .4byte 0x030013A8
_0804F990: .4byte 0x03001398
_0804F994: .4byte 0x030013D0
_0804F998:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_0804F99C
sub_0804F99C: @ 0x0804F99C
	movs r0, #0
	bx lr

	thumb_func_start sub_0804F9A0
sub_0804F9A0: @ 0x0804F9A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sb, r1
	movs r4, #0
	cmp r4, r5
	bge _0804FA08
	lsls r6, r3, #0x18
	lsls r2, r2, #0x10
	mov r8, r2
_0804F9BA:
	cmp r4, #0x3f
	bgt _0804F9CA
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r6, #0x18
	bl sub_0804E5A4
_0804F9CA:
	adds r0, r5, #0
	subs r0, #0x40
	cmp r4, r0
	ble _0804F9E0
	subs r1, r5, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r6, #0x18
	bl sub_0804E5A4
_0804F9E0:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804FA20 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	mov r7, r8
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	bne _0804FA1A
	bl WaitFrame
	adds r4, #1
	cmp r4, r5

	non_word_aligned_thumb_func_start sub_0804FA06
sub_0804FA06: @ 0x0804FA06
	blt _0804F9BA
_0804FA08:
	movs r4, #0
	cmp r4, sb
	bge _0804FA2E
_0804FA0E:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804FA24
_0804FA1A:
	movs r0, #0
	b _0804FA30
	.align 2, 0
_0804FA20: .4byte 0x03001258
_0804FA24:
	bl WaitFrame
	adds r4, #1
	cmp r4, sb
	blt _0804FA0E
_0804FA2E:
	movs r0, #1
_0804FA30:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804FA40
sub_0804FA40: @ 0x0804FA40
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	cmp r4, r5
	bge _0804FA84
_0804FA4C:
	cmp r4, #0x3f
	bgt _0804FA5C
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804FA5C:
	adds r0, r5, #0
	subs r0, #0x40
	cmp r4, r0
	ble _0804FA72
	subs r1, r5, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804FA72:
	bl sub_0804F99C
	cmp r0, #0
	bne _0804FA92
	bl WaitFrame
	adds r4, #1
	cmp r4, r5
	blt _0804FA4C
_0804FA84:
	movs r4, #0
	cmp r4, r6
	bge _0804FAA0
_0804FA8A:
	bl sub_0804F99C
	cmp r0, #0
	beq _0804FA96
_0804FA92:
	movs r0, #0
	b _0804FAA2
_0804FA96:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804FA8A
_0804FAA0:
	movs r0, #1
_0804FAA2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start umul3232H32
umul3232H32: @ 0x0804FAA8
	add r2, pc, #0x0 @ =__umul3232H32
	bx r2
