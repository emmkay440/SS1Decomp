	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08041538
sub_08041538: @ 0x08041538
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
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
	ldr r0, _08041588 @ =gUnknown_030004C8
	ldrb r0, [r0]
	cmp r0, #5
	beq _08041578
	cmp r0, #8
	beq _08041578
	cmp r0, #2
	beq _08041578
	cmp r0, #3
	beq _08041578
	cmp r0, #4
	beq _08041578
	cmp r0, #5
	bne _0804158C
_08041578:
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _08041598
	.align 2, 0
_08041588: .4byte gUnknown_030004C8
_0804158C:
	movs r0, #0xe8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
_08041598:
	ldr r1, _080415FC @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _08041600 @ =0x00001F03
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08041604 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08041608 @ =0x00005A01
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #4
	bl SetBgCnt
	movs r1, #0xe0
	lsls r1, r1, #5
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	bl sub_0800EC74
	movs r0, #0
	bl sub_0800EE44
	bl sub_0800ED08
	ldr r0, _0804160C @ =gUnknown_030004C8
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #8
	bls _080415F2
	b _080418B0
_080415F2:
	lsls r0, r0, #2
	ldr r1, _08041610 @ =_08041614
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080415FC: .4byte 0xFFFF0000
_08041600: .4byte 0x00001F03
_08041604: .4byte 0x00001E02
_08041608: .4byte 0x00005A01
_0804160C: .4byte gUnknown_030004C8
_08041610: .4byte _08041614
_08041614: @ jump table
	.4byte _08041638 @ case 0
	.4byte _08041688 @ case 1
	.4byte _080416D8 @ case 2
	.4byte _08041728 @ case 3
	.4byte _08041778 @ case 4
	.4byte _080418B0 @ case 5
	.4byte _080417C8 @ case 6
	.4byte _08041814 @ case 7
	.4byte _08041860 @ case 8
_08041638:
	movs r0, #2
	bl GetDataRecord
	mov r8, r0
	ldr r0, _08041658 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804164C
	b _080418B0
_0804164C:
	lsls r0, r0, #2
	ldr r1, _0804165C @ =_08041660
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041658: .4byte gLanguage
_0804165C: .4byte _08041660
_08041660: @ jump table
	.4byte _08041674 @ case 0
	.4byte _08041678 @ case 1
	.4byte _0804167C @ case 2
	.4byte _08041680 @ case 3
	.4byte _08041684 @ case 4
_08041674:
	movs r0, #0x51
	b _080418AA
_08041678:
	movs r0, #0x8a
	b _080418AA
_0804167C:
	movs r0, #0x89
	b _080418AA
_08041680:
	movs r0, #0xbc
	b _080418AA
_08041684:
	movs r0, #0xb5
	b _080418AA
_08041688:
	movs r0, #6
	bl GetDataRecord
	mov r8, r0
	ldr r0, _080416A8 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804169C
	b _080418B0
_0804169C:
	lsls r0, r0, #2
	ldr r1, _080416AC @ =_080416B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080416A8: .4byte gLanguage
_080416AC: .4byte _080416B0
_080416B0: @ jump table
	.4byte _080416C4 @ case 0
	.4byte _080416C8 @ case 1
	.4byte _080416CC @ case 2
	.4byte _080416D0 @ case 3
	.4byte _080416D4 @ case 4
_080416C4:
	movs r0, #0x50
	b _080418AA
_080416C8:
	movs r0, #0x9c
	b _080418AA
_080416CC:
	movs r0, #0x9d
	b _080418AA
_080416D0:
	movs r0, #0xba
	b _080418AA
_080416D4:
	movs r0, #0xbb
	b _080418AA
_080416D8:
	movs r0, #0x12
	bl GetDataRecord
	mov r8, r0
	ldr r0, _080416F8 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _080416EC
	b _080418B0
_080416EC:
	lsls r0, r0, #2
	ldr r1, _080416FC @ =_08041700
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080416F8: .4byte gLanguage
_080416FC: .4byte _08041700
_08041700: @ jump table
	.4byte _08041714 @ case 0
	.4byte _08041718 @ case 1
	.4byte _0804171C @ case 2
	.4byte _08041720 @ case 3
	.4byte _08041724 @ case 4
_08041714:
	movs r0, #0x4f
	b _080418AA
_08041718:
	movs r0, #0x9a
	b _080418AA
_0804171C:
	movs r0, #0x9b
	b _080418AA
_08041720:
	movs r0, #0xb8
	b _080418AA
_08041724:
	movs r0, #0xb9
	b _080418AA
_08041728:
	movs r0, #3
	bl GetDataRecord
	mov r8, r0
	ldr r0, _08041748 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804173C
	b _080418B0
_0804173C:
	lsls r0, r0, #2
	ldr r1, _0804174C @ =_08041750
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041748: .4byte gLanguage
_0804174C: .4byte _08041750
_08041750: @ jump table
	.4byte _08041764 @ case 0
	.4byte _08041768 @ case 1
	.4byte _0804176C @ case 2
	.4byte _08041770 @ case 3
	.4byte _08041774 @ case 4
_08041764:
	movs r0, #0x54
	b _080418AA
_08041768:
	movs r0, #0xa0
	b _080418AA
_0804176C:
	movs r0, #0x98
	b _080418AA
_08041770:
	movs r0, #0xbf
	b _080418AA
_08041774:
	movs r0, #0xad
	b _080418AA
_08041778:
	movs r0, #4
	bl GetDataRecord
	mov r8, r0
	ldr r0, _08041798 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804178C
	b _080418B0
_0804178C:
	lsls r0, r0, #2
	ldr r1, _0804179C @ =_080417A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041798: .4byte gLanguage
_0804179C: .4byte _080417A0
_080417A0: @ jump table
	.4byte _080417B4 @ case 0
	.4byte _080417B8 @ case 1
	.4byte _080417BC @ case 2
	.4byte _080417C0 @ case 3
	.4byte _080417C4 @ case 4
_080417B4:
	movs r0, #0x59
	b _080418AA
_080417B8:
	movs r0, #0xa1
	b _080418AA
_080417BC:
	movs r0, #0x99
	b _080418AA
_080417C0:
	movs r0, #0xc1
	b _080418AA
_080417C4:
	movs r0, #0xb7
	b _080418AA
_080417C8:
	movs r0, #7
	bl GetDataRecord
	mov r8, r0
	ldr r0, _080417E4 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080418B0
	lsls r0, r0, #2
	ldr r1, _080417E8 @ =_080417EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080417E4: .4byte gLanguage
_080417E8: .4byte _080417EC
_080417EC: @ jump table
	.4byte _08041800 @ case 0
	.4byte _08041804 @ case 1
	.4byte _08041808 @ case 2
	.4byte _0804180C @ case 3
	.4byte _08041810 @ case 4
_08041800:
	movs r0, #0x52
	b _080418AA
_08041804:
	movs r0, #0x9e
	b _080418AA
_08041808:
	movs r0, #0x9f
	b _080418AA
_0804180C:
	movs r0, #0xbd
	b _080418AA
_08041810:
	movs r0, #0xbe
	b _080418AA
_08041814:
	movs r0, #0x25
	bl GetDataRecord
	mov r8, r0
	ldr r0, _08041830 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080418B0
	lsls r0, r0, #2
	ldr r1, _08041834 @ =_08041838
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041830: .4byte gLanguage
_08041834: .4byte _08041838
_08041838: @ jump table
	.4byte _0804184C @ case 0
	.4byte _08041850 @ case 1
	.4byte _08041854 @ case 2
	.4byte _08041858 @ case 3
	.4byte _0804185C @ case 4
_0804184C:
	movs r0, #0x4e
	b _080418AA
_08041850:
	movs r0, #0x95
	b _080418AA
_08041854:
	movs r0, #0xa4
	b _080418AA
_08041858:
	movs r0, #0xc0
	b _080418AA
_0804185C:
	movs r0, #0xb6
	b _080418AA
_08041860:
	movs r0, #0xa
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0804187C @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080418B0
	lsls r0, r0, #2
	ldr r1, _08041880 @ =_08041884
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804187C: .4byte gLanguage
_08041880: .4byte _08041884
_08041884: @ jump table
	.4byte _08041898 @ case 0
	.4byte _0804189C @ case 1
	.4byte _080418A0 @ case 2
	.4byte _080418A4 @ case 3
	.4byte _080418A8 @ case 4
_08041898:
	movs r0, #0x53
	b _080418AA
_0804189C:
	movs r0, #0x8b
	b _080418AA
_080418A0:
	movs r0, #0x8c
	b _080418AA
_080418A4:
	movs r0, #0xab
	b _080418AA
_080418A8:
	movs r0, #0xac
_080418AA:
	bl GetDataRecord
	adds r6, r0, #0
_080418B0:
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804191C @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08041920 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, _08041924 @ =gUnknown_030004C8
	ldrb r0, [r0]
	cmp r0, #8
	beq _08041906
	cmp r0, #2
	beq _080418FC
	cmp r0, #3
	beq _080418FC
	cmp r0, #4
	beq _080418FC
	b _08041A8C
_080418FC:
	ldr r1, _08041924 @ =gUnknown_030004C8
	ldrb r0, [r1]
	cmp r0, #8
	beq _08041906
	b _08041A3A
_08041906:
	ldr r0, _08041928 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _08041912
	b _08041A66
_08041912:
	lsls r0, r0, #2
	ldr r1, _0804192C @ =_08041930
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804191C: .4byte 0x0600F800
_08041920: .4byte 0x0600F000
_08041924: .4byte gUnknown_030004C8
_08041928: .4byte gLanguage
_0804192C: .4byte _08041930
_08041930: @ jump table
	.4byte _08041944 @ case 0
	.4byte _08041974 @ case 1
	.4byte _080419A4 @ case 2
	.4byte _080419D4 @ case 3
	.4byte _08041A04 @ case 4
_08041944:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08041968
	cmp r0, #1
	bgt _0804195A
	cmp r0, #0
	beq _08041964
	b _08041A66
_0804195A:
	cmp r0, #2
	beq _0804196C
	cmp r0, #3
	beq _08041970
	b _08041A66
_08041964:
	movs r0, #0x55
	b _08041A32
_08041968:
	movs r0, #0x56
	b _08041A32
_0804196C:
	movs r0, #0x57
	b _08041A32
_08041970:
	movs r0, #0x58
	b _08041A32
_08041974:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08041998
	cmp r0, #1
	bgt _0804198A
	cmp r0, #0
	beq _08041994
	b _08041A66
_0804198A:
	cmp r0, #2
	beq _0804199C
	cmp r0, #3
	beq _080419A0
	b _08041A66
_08041994:
	movs r0, #0x8d
	b _08041A32
_08041998:
	movs r0, #0x8f
	b _08041A32
_0804199C:
	movs r0, #0x91
	b _08041A32
_080419A0:
	movs r0, #0x93
	b _08041A32
_080419A4:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080419C8
	cmp r0, #1
	bgt _080419BA
	cmp r0, #0
	beq _080419C4
	b _08041A66
_080419BA:
	cmp r0, #2
	beq _080419CC
	cmp r0, #3
	beq _080419D0
	b _08041A66
_080419C4:
	movs r0, #0x8e
	b _08041A32
_080419C8:
	movs r0, #0x90
	b _08041A32
_080419CC:
	movs r0, #0x92
	b _08041A32
_080419D0:
	movs r0, #0x94
	b _08041A32
_080419D4:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080419F8
	cmp r0, #1
	bgt _080419EA
	cmp r0, #0
	beq _080419F4
	b _08041A66
_080419EA:
	cmp r0, #2
	beq _080419FC
	cmp r0, #3
	beq _08041A00
	b _08041A66
_080419F4:
	movs r0, #0xae
	b _08041A32
_080419F8:
	movs r0, #0xb0
	b _08041A32
_080419FC:
	movs r0, #0xb2
	b _08041A32
_08041A00:
	movs r0, #0xb4
	b _08041A32
_08041A04:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08041A28
	cmp r0, #1
	bgt _08041A1A
	cmp r0, #0
	beq _08041A24
	b _08041A66
_08041A1A:
	cmp r0, #2
	beq _08041A2C
	cmp r0, #3
	beq _08041A30
	b _08041A66
_08041A24:
	movs r0, #0xaf
	b _08041A32
_08041A28:
	movs r0, #0xb1
	b _08041A32
_08041A2C:
	movs r0, #0xb3
	b _08041A32
_08041A30:
	movs r0, #0xaa
_08041A32:
	bl GetDataRecord
	adds r7, r0, #0
	b _08041A66
_08041A3A:
	ldrb r0, [r1]
	cmp r0, #3
	beq _08041A54
	cmp r0, #3
	bgt _08041A4A
	cmp r0, #2
	beq _08041A50
	b _08041A60
_08041A4A:
	cmp r0, #4
	beq _08041A58
	b _08041A60
_08041A50:
	movs r0, #0x24
	b _08041A5A
_08041A54:
	movs r0, #0x23
	b _08041A5A
_08041A58:
	movs r0, #0xe
_08041A5A:
	bl GetDataRecord
	adds r7, r0, #0
_08041A60:
	ldr r1, _08041A84 @ =gBgRegsBuffer
	movs r0, #0x4c
	strh r0, [r1, #4]
_08041A66:
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08041A88 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	b _08041AE4
	.align 2, 0
_08041A84: .4byte gBgRegsBuffer
_08041A88: .4byte 0x0600D000
_08041A8C:
	cmp r0, #5
	bne _08041AE4
	movs r0, #5
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B0C @ =gUnknown_03000500
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	movs r0, #0xb
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B10 @ =gUnknown_03000504
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _08041B14 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	movs r3, #0x20
	bl sub_0804620C
	movs r0, #0xc
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B18 @ =gUnknown_03000508
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	movs r0, #0xd
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B1C @ =gUnknown_0300050C
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
_08041AE4:
	mov r1, r8
	ldr r0, [r1]
	bl GetDataRecord
	adds r3, r0, #0
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08041B36
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08041B24
	ldr r1, _08041B20 @ =0x06004000
	b _08041B28
	.align 2, 0
_08041B0C: .4byte gUnknown_03000500
_08041B10: .4byte gUnknown_03000504
_08041B14: .4byte 0x0600D000
_08041B18: .4byte gUnknown_03000508
_08041B1C: .4byte gUnknown_0300050C
_08041B20: .4byte 0x06004000
_08041B24:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08041B28:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08041B46
_08041B36:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08041B46:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r6]
	cmp r0, r1
	beq _08041B9A
	adds r0, r1, #0
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08041B8A
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08041B78
	ldr r1, _08041B74 @ =0x06004000
	b _08041B7C
	.align 2, 0
_08041B74: .4byte 0x06004000
_08041B78:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08041B7C:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08041B9A
_08041B8A:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08041B9A:
	mov r1, r8
	ldrh r0, [r1]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0xf
	bl LoadPalette
	ldr r0, _08041BC8 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08041C94
	lsls r0, r0, #2
	ldr r1, _08041BCC @ =_08041BD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041BC8: .4byte gLanguage
_08041BCC: .4byte _08041BD0
_08041BD0: @ jump table
	.4byte _08041BE4 @ case 0
	.4byte _08041C08 @ case 1
	.4byte _08041C2C @ case 2
	.4byte _08041C50 @ case 3
	.4byte _08041C7C @ case 4
_08041BE4:
	ldr r0, _08041BF8 @ =gUnknown_03000510
	ldr r1, _08041BFC @ =0x00100069
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C00 @ =0x03000548
	ldr r1, _08041C04 @ =0x0010006A
	b _08041C60
	.align 2, 0
_08041BF8: .4byte gUnknown_03000510
_08041BFC: .4byte 0x00100069
_08041C00: .4byte 0x03000548
_08041C04: .4byte 0x0010006A
_08041C08:
	ldr r0, _08041C1C @ =gUnknown_03000510
	ldr r1, _08041C20 @ =0x00100072
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C24 @ =0x03000548
	ldr r1, _08041C28 @ =0x00100073
	b _08041C60
	.align 2, 0
_08041C1C: .4byte gUnknown_03000510
_08041C20: .4byte 0x00100072
_08041C24: .4byte 0x03000548
_08041C28: .4byte 0x00100073
_08041C2C:
	ldr r0, _08041C40 @ =gUnknown_03000510
	ldr r1, _08041C44 @ =0x00100071
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C48 @ =0x03000548
	ldr r1, _08041C4C @ =0x0010007B
	b _08041C60
	.align 2, 0
_08041C40: .4byte gUnknown_03000510
_08041C44: .4byte 0x00100071
_08041C48: .4byte 0x03000548
_08041C4C: .4byte 0x0010007B
_08041C50:
	ldr r0, _08041C6C @ =gUnknown_03000510
	ldr r1, _08041C70 @ =0x00100084
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C74 @ =0x03000548
	ldr r1, _08041C78 @ =0x00100083
_08041C60:
	movs r2, #0
	movs r3, #0
	bl sub_08026ADC
	b _08041C94
	.align 2, 0
_08041C6C: .4byte gUnknown_03000510
_08041C70: .4byte 0x00100084
_08041C74: .4byte 0x03000548
_08041C78: .4byte 0x00100083
_08041C7C:
	ldr r0, _08041CA4 @ =gUnknown_03000510
	ldr r1, _08041CA8 @ =0x0010008E
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041CAC @ =0x03000548
	ldr r1, _08041CB0 @ =0x0010008D
	movs r2, #0
	movs r3, #0
	bl sub_08026ADC
_08041C94:
	ldr r0, _08041CB4 @ =gUnknown_030004C8
	ldrb r0, [r0]
	cmp r0, #2
	bne _08041CC0
	ldr r0, _08041CB8 @ =gUnknown_03000580
	ldr r1, _08041CBC @ =0x00100057
	b _08041CF0
	.align 2, 0
_08041CA4: .4byte gUnknown_03000510
_08041CA8: .4byte 0x0010008E
_08041CAC: .4byte 0x03000548
_08041CB0: .4byte 0x0010008D
_08041CB4: .4byte gUnknown_030004C8
_08041CB8: .4byte gUnknown_03000580
_08041CBC: .4byte 0x00100057
_08041CC0:
	cmp r0, #3
	bne _08041CD4
	ldr r0, _08041CCC @ =gUnknown_03000580
	ldr r1, _08041CD0 @ =0x00100056
	b _08041CF0
	.align 2, 0
_08041CCC: .4byte gUnknown_03000580
_08041CD0: .4byte 0x00100056
_08041CD4:
	cmp r0, #4
	bne _08041CE8
	ldr r0, _08041CE0 @ =gUnknown_03000580
	ldr r1, _08041CE4 @ =0x00100055
	b _08041CF0
	.align 2, 0
_08041CE0: .4byte gUnknown_03000580
_08041CE4: .4byte 0x00100055
_08041CE8:
	cmp r0, #5
	bne _08041D04
	ldr r0, _08041CFC @ =gUnknown_03000580
	ldr r1, _08041D00 @ =0x00100058
_08041CF0:
	movs r2, #0xe
	movs r3, #1
	bl sub_08026ADC
	b _08041D14
	.align 2, 0
_08041CFC: .4byte gUnknown_03000580
_08041D00: .4byte 0x00100058
_08041D04:
	cmp r0, #7
	bne _08041D14
	ldr r0, _08041D28 @ =gUnknown_03000580
	ldr r1, _08041D2C @ =0x0010005E
	movs r2, #0xe
	movs r3, #1
	bl sub_08026ADC
_08041D14:
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041D28: .4byte gUnknown_03000580
_08041D2C: .4byte 0x0010005E
