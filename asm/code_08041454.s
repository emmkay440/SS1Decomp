	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08041454
sub_08041454: @ 0x08041454
	push {r4, lr}
	ldr r0, _08041474 @ =gMenuInventory
	ldr r2, [r0]
	movs r3, #0
_0804145C:
	movs r1, #0
	lsls r0, r3, #2
	adds r4, r0, r3
_08041462:
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08041478
	adds r0, r1, r4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08041492
	.align 2, 0
_08041474: .4byte gMenuInventory
_08041478:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, #4
	cmp r1, #4
	bls _08041462
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0804145C
	movs r0, #1
	rsbs r0, r0, #0
_08041492:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08041498
sub_08041498: @ 0x08041498
	push {r4, lr}
	ldr r4, _080414C4 @ =gMenuEquipment
	ldr r0, [r4]
	adds r0, #8
	bl GetCategory5Record
	cmp r0, #0
	beq _080414BC
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080414BC
	ldr r1, [r4]
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
_080414BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080414C4: .4byte gMenuEquipment

	thumb_func_start sub_080414C8
sub_080414C8: @ 0x080414C8
	push {r4, r5, r6, lr}
	ldr r0, _08041500 @ =gMenuInventory
	ldr r4, [r0]
	ldr r0, _08041504 @ =gMenuSelectedItem
	ldr r0, [r0]
	bl sub_08040900
	adds r3, r0, #0
	cmp r3, #0
	bne _080414DE
	movs r3, #1
_080414DE:
	movs r5, #0
	ldr r6, _08041508 @ =0x000186A0
_080414E2:
	movs r2, #0
_080414E4:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080414FA
	cmp r0, #7
	bne _0804150C
	lsrs r0, r1, #0xf
	adds r0, r0, r3
	cmp r0, r6
	bhi _0804150C
_080414FA:
	movs r0, #1
	b _08041524
	.align 2, 0
_08041500: .4byte gMenuInventory
_08041504: .4byte gMenuSelectedItem
_08041508: .4byte 0x000186A0
_0804150C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r4, #4
	cmp r2, #4
	bls _080414E4
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080414E2
	movs r0, #0
_08041524:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804152C
sub_0804152C: @ 0x0804152C
	ldr r0, _08041534 @ =0x030004B8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08041534: .4byte 0x030004B8

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
	ldr r0, _08041588 @ =0x030004C8
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
_08041588: .4byte 0x030004C8
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
	ldr r0, _0804160C @ =0x030004C8
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
_0804160C: .4byte 0x030004C8
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
	ldr r0, _08041658 @ =0x03003CA8
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
_08041658: .4byte 0x03003CA8
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
	ldr r0, _080416A8 @ =0x03003CA8
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
_080416A8: .4byte 0x03003CA8
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
	ldr r0, _080416F8 @ =0x03003CA8
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
_080416F8: .4byte 0x03003CA8
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
	ldr r0, _08041748 @ =0x03003CA8
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
_08041748: .4byte 0x03003CA8
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
	ldr r0, _08041798 @ =0x03003CA8
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
_08041798: .4byte 0x03003CA8
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
	ldr r0, _080417E4 @ =0x03003CA8
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
_080417E4: .4byte 0x03003CA8
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
	ldr r0, _08041830 @ =0x03003CA8
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
_08041830: .4byte 0x03003CA8
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
	ldr r0, _0804187C @ =0x03003CA8
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
_0804187C: .4byte 0x03003CA8
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
	ldr r0, _08041924 @ =0x030004C8
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
	ldr r1, _08041924 @ =0x030004C8
	ldrb r0, [r1]
	cmp r0, #8
	beq _08041906
	b _08041A3A
_08041906:
	ldr r0, _08041928 @ =0x03003CA8
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
_08041924: .4byte 0x030004C8
_08041928: .4byte 0x03003CA8
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
	ldr r4, _08041B0C @ =0x03000500
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	movs r0, #0xb
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B10 @ =0x03000504
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
	ldr r4, _08041B18 @ =0x03000508
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	movs r0, #0xd
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B1C @ =0x0300050C
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
_08041B0C: .4byte 0x03000500
_08041B10: .4byte 0x03000504
_08041B14: .4byte 0x0600D000
_08041B18: .4byte 0x03000508
_08041B1C: .4byte 0x0300050C
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
	ldr r0, _08041BC8 @ =0x03003CA8
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
_08041BC8: .4byte 0x03003CA8
_08041BCC: .4byte _08041BD0
_08041BD0: @ jump table
	.4byte _08041BE4 @ case 0
	.4byte _08041C08 @ case 1
	.4byte _08041C2C @ case 2
	.4byte _08041C50 @ case 3
	.4byte _08041C7C @ case 4
_08041BE4:
	ldr r0, _08041BF8 @ =0x03000510
	ldr r1, _08041BFC @ =0x00100069
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C00 @ =0x03000548
	ldr r1, _08041C04 @ =0x0010006A
	b _08041C60
	.align 2, 0
_08041BF8: .4byte 0x03000510
_08041BFC: .4byte 0x00100069
_08041C00: .4byte 0x03000548
_08041C04: .4byte 0x0010006A
_08041C08:
	ldr r0, _08041C1C @ =0x03000510
	ldr r1, _08041C20 @ =0x00100072
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C24 @ =0x03000548
	ldr r1, _08041C28 @ =0x00100073
	b _08041C60
	.align 2, 0
_08041C1C: .4byte 0x03000510
_08041C20: .4byte 0x00100072
_08041C24: .4byte 0x03000548
_08041C28: .4byte 0x00100073
_08041C2C:
	ldr r0, _08041C40 @ =0x03000510
	ldr r1, _08041C44 @ =0x00100071
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C48 @ =0x03000548
	ldr r1, _08041C4C @ =0x0010007B
	b _08041C60
	.align 2, 0
_08041C40: .4byte 0x03000510
_08041C44: .4byte 0x00100071
_08041C48: .4byte 0x03000548
_08041C4C: .4byte 0x0010007B
_08041C50:
	ldr r0, _08041C6C @ =0x03000510
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
_08041C6C: .4byte 0x03000510
_08041C70: .4byte 0x00100084
_08041C74: .4byte 0x03000548
_08041C78: .4byte 0x00100083
_08041C7C:
	ldr r0, _08041CA4 @ =0x03000510
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
	ldr r0, _08041CB4 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #2
	bne _08041CC0
	ldr r0, _08041CB8 @ =0x03000580
	ldr r1, _08041CBC @ =0x00100057
	b _08041CF0
	.align 2, 0
_08041CA4: .4byte 0x03000510
_08041CA8: .4byte 0x0010008E
_08041CAC: .4byte 0x03000548
_08041CB0: .4byte 0x0010008D
_08041CB4: .4byte 0x030004C8
_08041CB8: .4byte 0x03000580
_08041CBC: .4byte 0x00100057
_08041CC0:
	cmp r0, #3
	bne _08041CD4
	ldr r0, _08041CCC @ =0x03000580
	ldr r1, _08041CD0 @ =0x00100056
	b _08041CF0
	.align 2, 0
_08041CCC: .4byte 0x03000580
_08041CD0: .4byte 0x00100056
_08041CD4:
	cmp r0, #4
	bne _08041CE8
	ldr r0, _08041CE0 @ =0x03000580
	ldr r1, _08041CE4 @ =0x00100055
	b _08041CF0
	.align 2, 0
_08041CE0: .4byte 0x03000580
_08041CE4: .4byte 0x00100055
_08041CE8:
	cmp r0, #5
	bne _08041D04
	ldr r0, _08041CFC @ =0x03000580
	ldr r1, _08041D00 @ =0x00100058
_08041CF0:
	movs r2, #0xe
	movs r3, #1
	bl sub_08026ADC
	b _08041D14
	.align 2, 0
_08041CFC: .4byte 0x03000580
_08041D00: .4byte 0x00100058
_08041D04:
	cmp r0, #7
	bne _08041D14
	ldr r0, _08041D28 @ =0x03000580
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
_08041D28: .4byte 0x03000580
_08041D2C: .4byte 0x0010005E

	thumb_func_start sub_08041D30
sub_08041D30: @ 0x08041D30
	push {r4, lr}
	ldr r0, _08041D88 @ =0x030004C8
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	beq _08041D48
	cmp r1, #1
	blt _08041D5A
	cmp r1, #9
	bgt _08041D5A
	cmp r1, #8
	blt _08041D5A
_08041D48:
	ldr r2, _08041D8C @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r2, #0xc]
	ldr r1, _08041D90 @ =0x030004CB
	ldrb r0, [r1]
	strh r0, [r2, #0xe]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08041D5A:
	ldrb r0, [r3]
	cmp r0, #5
	bne _08041DDA
	ldr r4, _08041D94 @ =0x030004C9
	bl sub_08045F84
	ldrb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08041DDA
	bl sub_08045F84
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #1
	beq _08041DAC
	cmp r0, #1
	bgt _08041D98
	cmp r0, #0
	beq _08041DA2
	b _08041DDA
	.align 2, 0
_08041D88: .4byte 0x030004C8
_08041D8C: .4byte gBgRegsBuffer
_08041D90: .4byte 0x030004CB
_08041D94: .4byte 0x030004C9
_08041D98:
	cmp r0, #2
	beq _08041DB4
	cmp r0, #3
	beq _08041DCC
	b _08041DDA
_08041DA2:
	ldr r0, _08041DA8 @ =0x03000500
	b _08041DB6
	.align 2, 0
_08041DA8: .4byte 0x03000500
_08041DAC:
	ldr r0, _08041DB0 @ =0x03000504
	b _08041DB6
	.align 2, 0
_08041DB0: .4byte 0x03000504
_08041DB4:
	ldr r0, _08041DC4 @ =0x03000508
_08041DB6:
	ldr r0, [r0]
	ldr r1, _08041DC8 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
	b _08041DDA
	.align 2, 0
_08041DC4: .4byte 0x03000508
_08041DC8: .4byte 0x0600D000
_08041DCC:
	ldr r0, _08041DE0 @ =0x0300050C
	ldr r0, [r0]
	ldr r1, _08041DE4 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
_08041DDA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041DE0: .4byte 0x0300050C
_08041DE4: .4byte 0x0600D000

	thumb_func_start sub_08041DE8
sub_08041DE8: @ 0x08041DE8
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r5, _08041E38 @ =0x030004C8
	ldrb r0, [r5]
	cmp r0, #6
	beq _08041E86
	cmp r0, #8
	beq _08041E86
	bl sub_08041EB8
	ldrb r0, [r5]
	cmp r0, #7
	beq _08041E0A
	bl sub_08043D48
	bl sub_08041F34
_08041E0A:
	bl sub_080460BC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08041E6C
	add r5, sp, #8
	adds r0, r5, #0
	bl sub_08045F28
	cmp r4, #1
	bne _08041E40
	ldr r0, _08041E3C @ =0x03000580
	add r1, sp, #8
	ldrb r1, [r1]
	adds r1, #0x64
	ldrb r2, [r5, #1]
	movs r3, #0
	str r3, [sp]
	bl sub_08026B90
	b _08041E54
	.align 2, 0
_08041E38: .4byte 0x030004C8
_08041E3C: .4byte 0x03000580
_08041E40:
	ldr r0, _08041E64 @ =0x03000580
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0xeb
	movs r2, #0x70
	movs r3, #0
	bl sub_0802706C
_08041E54:
	bl sub_08046044
	ldr r1, _08041E68 @ =gBgRegsBuffer
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	b _08041E7A
	.align 2, 0
_08041E64: .4byte 0x03000580
_08041E68: .4byte gBgRegsBuffer
_08041E6C:
	ldrb r0, [r5]
	cmp r0, #7
	beq _08041E7A
	cmp r0, #1
	beq _08041E82
	bl sub_08042054
_08041E7A:
	ldr r0, _08041E98 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08041E86
_08041E82:
	bl sub_08041FCC
_08041E86:
	bl sub_08040D98
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08041EA0
	ldr r1, _08041E9C @ =0x030004CA
	movs r0, #0
	strb r0, [r1]
	b _08041EAA
	.align 2, 0
_08041E98: .4byte 0x030004C8
_08041E9C: .4byte 0x030004CA
_08041EA0:
	ldr r0, _08041EB4 @ =0x030004CA
	ldrb r1, [r0]
	movs r2, #1
	eors r1, r2
	strb r1, [r0]
_08041EAA:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041EB4: .4byte 0x030004CA

	thumb_func_start sub_08041EB8
sub_08041EB8: @ 0x08041EB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08040BF8
	adds r4, r0, #0
	bl sub_08040C98
	mov r8, r0
	bl sub_08045F50
	cmp r0, #0
	bne _08041ED6
	movs r0, #0
	mov r8, r0
_08041ED6:
	cmp r4, #0
	beq _08041F28
	movs r0, #0
_08041EDC:
	movs r5, #0
	adds r7, r0, #1
	lsls r6, r0, #4
_08041EE2:
	cmp r8, r4
	bne _08041EEE
	ldr r0, _08041F10 @ =0x030004CA
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041F14
_08041EEE:
	adds r0, r4, #0
	bl CanEquipItem
	movs r3, #2
	cmp r0, #0
	beq _08041EFC
	movs r3, #0
_08041EFC:
	lsls r0, r5, #4
	adds r0, #0x58
	adds r2, r4, #0
	adds r4, #4
	adds r1, r6, #0
	adds r1, #0x1f
	bl sub_08023048
	b _08041F16
	.align 2, 0
_08041F10: .4byte 0x030004CA
_08041F14:
	adds r4, #4
_08041F16:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08041EE2
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08041EDC
_08041F28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041F34
sub_08041F34: @ 0x08041F34
	push {r4, r5, lr}
	bl sub_08040C3C
	adds r4, r0, #0
	bl sub_08040C98
	adds r5, r0, #0
	bl sub_08045F50
	cmp r0, #0
	bne _08041F4C
	movs r5, #0
_08041F4C:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _08041F62
	adds r0, r4, #0
	bl CanEquipItem
	movs r3, #2
	cmp r0, #0
	beq _08041F64
_08041F62:
	movs r3, #0
_08041F64:
	cmp r5, r4
	bne _08041F70
	ldr r0, _08041F80 @ =0x030004CA
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041F84
_08041F70:
	adds r2, r4, #0
	adds r4, #4
	movs r0, #0x3c
	movs r1, #0x3f
	bl sub_08023048
	b _08041F86
	.align 2, 0
_08041F80: .4byte 0x030004CA
_08041F84:
	adds r4, #4
_08041F86:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _08041F9C
	adds r0, r4, #0
	bl CanEquipItem
	movs r3, #2
	cmp r0, #0
	beq _08041F9E
_08041F9C:
	movs r3, #0
_08041F9E:
	cmp r5, r4
	beq _08041FB0
	adds r2, r4, #0
	adds r4, #4
	movs r0, #0x3c
	movs r1, #0x5f
	bl sub_08023048
	b _08041FB2
_08041FB0:
	adds r4, #4
_08041FB2:
	cmp r4, #0
	beq _08041FC6
	cmp r5, r4
	beq _08041FC6
	adds r2, r4, #0
	movs r0, #0xb
	movs r1, #0x57
	movs r3, #0
	bl sub_08023048
_08041FC6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08041FCC
sub_08041FCC: @ 0x08041FCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	bl sub_08040C30
	adds r7, r0, #0
	bl sub_08040C98
	bl sub_08045F50
	cmp r7, #0
	beq _08042046
	movs r0, #0
	mov r8, r0
_08041FEA:
	ldrh r0, [r7]
	cmp r0, #0
	beq _08042036
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08040C04
	adds r4, r0, #0
	cmp r4, #0
	beq _08042036
	bl sub_08040CAC
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r0, r8
	lsls r6, r0, #4
	lsls r5, r0, #3
	cmp r3, #0
	beq _08042026
	adds r0, r6, #0
	adds r0, #0xc4
	adds r1, r5, #0
	adds r1, #0x27
	movs r2, #2
	str r2, [sp]
	adds r2, r3, #0
	movs r3, #0
	bl sub_08026D98
_08042026:
	adds r0, r6, #0
	adds r0, #0xc4
	adds r1, r5, #0
	adds r1, #0x20
	adds r2, r4, #0
	movs r3, #0
	bl sub_08023048
_08042036:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r7, #2
	cmp r0, #2
	bls _08041FEA
_08042046:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08042054
sub_08042054: @ 0x08042054
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08040C48
	adds r4, r0, #0
	bl sub_08040C98
	mov r8, r0
	bl sub_08045F50
	cmp r0, #0
	bne _08042072
	movs r0, #0
	mov r8, r0
_08042072:
	ldr r0, _080420C4 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #5
	bne _0804208A
	bl sub_08045F84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r4, r4, r1
_0804208A:
	cmp r4, #0
	beq _080420E0
	movs r0, #0
_08042090:
	movs r5, #0
	adds r7, r0, #1
	lsls r6, r0, #4
_08042096:
	cmp r8, r4
	bne _080420A2
	ldr r0, _080420C8 @ =0x030004CA
	ldrb r0, [r0]
	cmp r0, #0
	bne _080420CC
_080420A2:
	adds r0, r4, #0
	bl CanEquipItem
	movs r3, #2
	cmp r0, #0
	beq _080420B0
	movs r3, #0
_080420B0:
	lsls r0, r5, #4
	adds r0, #0xc0
	adds r2, r4, #0
	adds r4, #4
	adds r1, r6, #0
	adds r1, #0x1f
	bl sub_08023048
	b _080420CE
	.align 2, 0
_080420C4: .4byte 0x030004C8
_080420C8: .4byte 0x030004CA
_080420CC:
	adds r4, #4
_080420CE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08042096
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08042090
_080420E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080420EC
sub_080420EC: @ 0x080420EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	add r4, sp, #0x24
	adds r0, r4, #0
	bl sub_08045F28
	ldr r6, _08042170 @ =0x030004C8
	ldrb r0, [r6]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	cmp r0, #1
	bls _08042130
	ldr r5, _08042174 @ =0x03000510
	ldr r4, _08042178 @ =0x030004DA
	ldr r3, _0804217C @ =0x030004F2
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xf
	adds r2, r4, #0
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xb2
	movs r2, #0x10
	movs r3, #0xf
	bl sub_08026B90
_08042130:
	bl sub_080460BC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804213E
	b _080425FA
_0804213E:
	ldrb r1, [r6]
	subs r0, r1, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804214C
	b _080422DC
_0804214C:
	add r0, sp, #0x14
	bl sub_08045F90
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08042180
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x20]
	add r3, sp, #0x14
	ldrb r4, [r3]
	movs r3, #6
	subs r3, r3, r4
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	b _080421DA
	.align 2, 0
_08042170: .4byte 0x030004C8
_08042174: .4byte 0x03000510
_08042178: .4byte 0x030004DA
_0804217C: .4byte 0x030004F2
_08042180:
	add r6, sp, #0x28
	adds r0, r6, #0
	bl sub_08045114
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080421AE
	cmp r4, #1
	bne _0804219E
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	str r5, [sp]
	b _080421DA
_0804219E:
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	str r5, [sp]
	movs r3, #1
	bl sub_08042790
	b _0804220E
_080421AE:
	adds r0, r6, #0
	bl sub_080451B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080421E2
	cmp r0, #1
	bne _080421D2
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	movs r3, #7
	str r3, [sp]
	movs r3, #2
	bl sub_08042790
	b _0804220E
_080421D2:
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	str r4, [sp]
_080421DA:
	movs r3, #0
	bl sub_08042790
	b _0804220E
_080421E2:
	bl sub_08045F50
	adds r4, r0, #0
	cmp r4, #0
	bne _0804220E
	bl sub_08046004
	bl sub_0804087C
	adds r5, r0, #0
	ldr r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0804220E
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	lsrs r2, r2, #0xf
	str r4, [sp]
	movs r3, #0
	bl sub_08042790
_0804220E:
	bl sub_08045F50
	cmp r0, #0
	beq _0804221C
	bl sub_08040C98
	b _08042224
_0804221C:
	bl sub_08046004
	bl sub_0804087C
_08042224:
	adds r5, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	subs r0, #2
	cmp r0, #3
	bhi _0804223C
	adds r0, r5, #0
	bl CanEquipItem
	cmp r0, #0
	bne _08042246
_0804223C:
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08042272
_08042246:
	bl GetCurrentWeaponIndex
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_080460F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042272
	adds r0, r5, #0
	adds r1, r4, #0
	bl EquipItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042272
	bl sub_08042FF8
	bl ApplyMenuChanges
	bl sub_08016DC0
_08042272:
	bl sub_08045F50
	adds r3, r0, #0
	cmp r3, #0
	beq _080422C4
	ldr r0, _080422B0 @ =0x03000510
	ldrb r1, [r7]
	add r4, sp, #0x24
	ldrb r2, [r4, #1]
	subs r2, #4
	movs r3, #1
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
	bl sub_08040C98
	adds r5, r0, #0
	bl CanEquipItem
	cmp r0, #0
	beq _080422B4
	ldrb r0, [r7]
	ldrb r1, [r4, #1]
	subs r1, #4
	adds r2, r5, #0
	movs r3, #0
	bl sub_08023048
	b _080425FA
	.align 2, 0
_080422B0: .4byte 0x03000510
_080422B4:
	ldrb r0, [r7]
	ldrb r1, [r4, #1]
	subs r1, #4
	adds r2, r5, #0
	movs r3, #2
	bl sub_08023048
	b _080425FA
_080422C4:
	ldr r0, _080422D8 @ =0x03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_080422D8: .4byte 0x03000510
_080422DC:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bne _0804238C
	bl sub_08045F78
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042306
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq _08042306
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _0804238C
_08042306:
	bl sub_08046004
	bl sub_0804087C
	adds r5, r0, #0
	bl IsItemUnappraised
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08042374
	adds r0, r5, #0
	bl sub_08040900
	str r0, [sp, #0x28]
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	ldr r3, [sp, #0x28]
	cmp r4, r3
	blo _0804234A
	ldrb r0, [r7]
	add r1, sp, #0x24
	ldrb r1, [r1, #1]
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	movs r3, #0
	bl sub_08042790
	b _0804235C
_0804234A:
	ldrb r0, [r7]
	add r1, sp, #0x24
	ldrb r1, [r1, #1]
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	movs r3, #1
	bl sub_08042790
_0804235C:
	ldr r0, _08042370 @ =0x03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	movs r3, #0
	str r3, [sp]
	movs r3, #9
	bl sub_08026BC4
	b _080425FA
	.align 2, 0
_08042370: .4byte 0x03000510
_08042374:
	ldr r0, _08042388 @ =0x03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	str r3, [sp]
	movs r3, #9
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_08042388: .4byte 0x03000510
_0804238C:
	ldr r0, _080423B8 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #8
	beq _08042396
	b _080424D8
_08042396:
	bl sub_08042614
	bl sub_08046004
	adds r5, r0, #0
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080423AE
	b _080425FA
_080423AE:
	lsls r0, r0, #2
	ldr r1, _080423BC @ =_080423C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080423B8: .4byte 0x030004C8
_080423BC: .4byte _080423C0
_080423C0: @ jump table
	.4byte _080425FA @ case 0
	.4byte _080425FA @ case 1
	.4byte _080425FA @ case 2
	.4byte _080425FA @ case 3
	.4byte _080425FA @ case 4
	.4byte _080425FA @ case 5
	.4byte _080423E8 @ case 6
	.4byte _080423E8 @ case 7
	.4byte _08042464 @ case 8
	.4byte _08042464 @ case 9
_080423E8:
	ldrb r1, [r5, #3]
	lsls r1, r1, #4
	adds r1, #0x37
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804245C @ =0x0300052C
	str r0, [sp, #4]
	adds r4, r0, #0
	subs r4, #0x1c
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	movs r6, #1
	str r6, [sp, #0x10]
	movs r0, #0x3a
	movs r2, #0x16
	movs r3, #0
	bl sub_08003FA4
	bl sub_08041074
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08042438
	ldrb r0, [r5, #3]
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042438
	ldrb r2, [r5, #3]
	lsls r2, r2, #4
	adds r2, #0x38
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x70
	movs r3, #3
	bl sub_08026B90
_08042438:
	adds r0, r5, #0
	bl sub_0803F9D4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042446
	b _080425FA
_08042446:
	ldr r0, _08042460 @ =0x03000510
	ldrb r2, [r5, #3]
	lsls r2, r2, #4
	adds r2, #0x38
	movs r1, #2
	str r1, [sp]
	movs r1, #0x58
	movs r3, #3
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_0804245C: .4byte 0x0300052C
_08042460: .4byte 0x03000510
_08042464:
	ldrb r1, [r5, #3]
	lsls r1, r1, #3
	adds r1, #0x37
	movs r0, #0
	str r0, [sp]
	ldr r0, _080424CC @ =0x0300052C
	str r0, [sp, #4]
	adds r7, r0, #0
	subs r7, #0x1c
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	ldr r0, [r7]
	str r0, [sp, #0xc]
	movs r0, #1
	mov r8, r0
	str r0, [sp, #0x10]
	movs r0, #0x82
	movs r2, #0x16
	movs r3, #1
	bl sub_08003FA4
	bl sub_08041294
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0804249C
	b _080425FA
_0804249C:
	ldr r4, _080424D0 @ =0x030004D8
	ldr r3, _080424D4 @ =0x030004F0
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #0xe
	adds r2, r4, #0
	bl sub_08026C40
	ldrb r2, [r5, #3]
	lsls r2, r2, #3
	movs r0, #0x4b
	subs r0, r0, r6
	asrs r0, r0, #2
	subs r0, #0x40
	subs r2, r2, r0
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd4
	movs r3, #0xe
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_080424CC: .4byte 0x0300052C
_080424D0: .4byte 0x030004D8
_080424D4: .4byte 0x030004F0
_080424D8:
	cmp r0, #9
	beq _080424DE
	b _080425FA
_080424DE:
	bl sub_0804152C
	mov r8, r0
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r6, r0, #0x1f
	cmp r6, #0
	beq _08042530
	ldr r4, _08042524 @ =0x03000510
	ldr r5, _08042528 @ =0x030004DC
	ldr r3, _0804252C @ =0x030004F4
	movs r6, #1
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x1a
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x28
	movs r3, #0x1a
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x28
	movs r3, #0x1c
	bl sub_08026B90
	b _08042562
	.align 2, 0
_08042524: .4byte 0x03000510
_08042528: .4byte 0x030004DC
_0804252C: .4byte 0x030004F4
_08042530:
	ldr r4, _080425A0 @ =0x03000510
	ldr r5, _080425A4 @ =0x030004DC
	ldr r3, _080425A8 @ =0x030004F4
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x1b
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x28
	movs r3, #0x1b
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x28
	movs r3, #0x1c
	bl sub_08026B90
_08042562:
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080425B4
	ldr r4, _080425A0 @ =0x03000510
	ldr r5, _080425AC @ =0x030004DE
	ldr r3, _080425B0 @ =0x030004F6
	movs r6, #1
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x17
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x40
	movs r3, #0x17
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x40
	movs r3, #0x19
	bl sub_08026B90
	b _080425E8
	.align 2, 0
_080425A0: .4byte 0x03000510
_080425A4: .4byte 0x030004DC
_080425A8: .4byte 0x030004F4
_080425AC: .4byte 0x030004DE
_080425B0: .4byte 0x030004F6
_080425B4:
	ldr r4, _08042608 @ =0x03000510
	ldr r5, _0804260C @ =0x030004DE
	ldr r3, _08042610 @ =0x030004F6
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x18
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x40
	movs r3, #0x18
	bl sub_08026B90
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x40
	movs r3, #0x19
	bl sub_08026B90
_080425E8:
	ldr r0, _08042608 @ =0x03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	movs r3, #0
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
_080425FA:
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042608: .4byte 0x03000510
_0804260C: .4byte 0x030004DE
_08042610: .4byte 0x030004F6

	thumb_func_start sub_08042614
sub_08042614: @ 0x08042614
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _08042668 @ =0x03000548
	ldr r5, _0804266C @ =0x030004D4
	ldr r3, _08042670 @ =0x030004EC
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, #0
	bl sub_08026C40
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08042674
	cmp r0, #0
	bge _0804263E
	b _0804277E
_0804263E:
	cmp r0, #9
	ble _08042644
	b _0804277E
_08042644:
	cmp r0, #6
	bge _0804264A
	b _0804277E
_0804264A:
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0804273C
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026B90
	b _0804274C
	.align 2, 0
_08042668: .4byte 0x03000548
_0804266C: .4byte 0x030004D4
_08042670: .4byte 0x030004EC
_08042674:
	bl sub_08046004
	ldrb r0, [r0, #2]
	cmp r0, #7
	bne _080426D4
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0804269A
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026BC4
	b _080426AA
_0804269A:
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026BC4
_080426AA:
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08042758
	ldr r0, _080426CC @ =0x03000548
	ldr r1, _080426D0 @ =0x030004D0
	ldrh r1, [r1, #4]
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
	b _0804277E
	.align 2, 0
_080426CC: .4byte 0x03000548
_080426D0: .4byte 0x030004D0
_080426D4:
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080426F0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026B90
	b _08042700
_080426F0:
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
_08042700:
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08042720
	ldr r0, _0804271C @ =0x03000548
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026BC4
	b _0804277E
	.align 2, 0
_0804271C: .4byte 0x03000548
_08042720:
	ldr r0, _08042734 @ =0x03000548
	ldr r1, _08042738 @ =0x030004D0
	ldrh r1, [r1, #4]
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026BC4
	b _0804277E
	.align 2, 0
_08042734: .4byte 0x03000548
_08042738: .4byte 0x030004D0
_0804273C:
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
_0804274C:
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0804276C
_08042758:
	ldr r0, _08042768 @ =0x03000548
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026B90
	b _0804277E
	.align 2, 0
_08042768: .4byte 0x03000548
_0804276C:
	ldr r0, _08042788 @ =0x03000548
	ldr r1, _0804278C @ =0x030004D0
	ldrh r1, [r1, #4]
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
_0804277E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042788: .4byte 0x03000548
_0804278C: .4byte 0x030004D0

	thumb_func_start sub_08042790
sub_08042790: @ 0x08042790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r2, [sp, #4]
	ldr r2, [sp, #0x2c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	bl sub_080460A0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042878
	movs r7, #0
	movs r6, #0x19
	bl sub_08046044
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	cmp r0, #2
	beq _08042830
	cmp r0, #2
	bgt _080427DC
	cmp r0, #1
	beq _08042840
	b _08042848
_080427DC:
	cmp r0, #3
	beq _080427E6
	cmp r0, #6
	beq _080427F0
	b _08042848
_080427E6:
	ldrb r0, [r5, #3]
	cmp r0, #0x13
	bls _08042848
	movs r6, #0xf3
	b _08042848
_080427F0:
	ldrb r4, [r5, #3]
	adds r0, r4, #1
	movs r1, #3
	bl __modsi3
	ldr r1, _08042818 @ =0x030004C8
	cmp r0, #0
	beq _0804280A
	cmp r4, #0xc
	bne _0804280C
	ldrb r0, [r1]
	cmp r0, #5
	beq _0804281C
_0804280A:
	movs r7, #0xf7
_0804280C:
	ldrb r0, [r1]
	cmp r0, #5
	beq _0804281C
	ldrb r0, [r5, #3]
	b _08042828
	.align 2, 0
_08042818: .4byte 0x030004C8
_0804281C:
	adds r0, r4, #0
	movs r1, #0xf
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08042828:
	cmp r0, #0xb
	bls _08042848
	movs r6, #0xf3
	b _08042848
_08042830:
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _08042838
	movs r7, #0xe
_08042838:
	cmp r0, #0
	beq _08042848
	movs r6, #0xf3
	b _08042848
_08042840:
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _08042848
	movs r7, #0xe
_08042848:
	mov r0, r8
	adds r0, #7
	lsls r5, r7, #0x18
	asrs r5, r5, #0x18
	adds r0, r0, r5
	lsls r4, r6, #0x18
	asrs r4, r4, #0x18
	add r4, sb
	movs r1, #6
	str r1, [sp]
	adds r1, r4, #0
	ldr r2, [sp, #4]
	mov r3, sl
	bl sub_08026D98
	ldr r0, _08042888 @ =0x03000510
	add r5, r8
	ldr r1, [sp, #8]
	str r1, [sp]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_08026B90
_08042878:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042888: .4byte 0x03000510

	thumb_func_start sub_0804288C
sub_0804288C: @ 0x0804288C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r5, _08042938 @ =0x030004C8
	ldrb r1, [r5]
	adds r0, r1, #0
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080428AA
	b _080429E4
_080428AA:
	add r0, sp, #0x2c
	add r1, sp, #0x30
	bl sub_0803FE70
	ldr r2, [sp, #0x2c]
	movs r4, #7
	str r4, [sp]
	movs r0, #0xe0
	movs r1, #0x10
	movs r3, #0
	bl sub_08026D98
	ldrb r0, [r5]
	cmp r0, #1
	beq _080428D6
	ldr r2, [sp, #0x30]
	str r4, [sp]
	movs r0, #0x90
	movs r1, #0x10
	movs r3, #2
	bl sub_08026D98
_080428D6:
	bl sub_08040C3C
	adds r4, r0, #0
	adds r4, #8
	adds r0, r4, #0
	bl GetCategory5Record
	adds r5, r0, #0
	cmp r5, #0
	beq _08042922
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08042922
	ldrb r2, [r4, #2]
	movs r0, #0xc
	movs r1, #0x68
	movs r3, #0
	bl sub_08026E70
	ldr r2, _0804293C @ =0x00000157
	adds r0, r5, r2
	ldrb r2, [r0]
	movs r0, #0x1f
	movs r1, #0x70
	movs r3, #0
	bl sub_08026E70
	ldr r0, _08042940 @ =0x03000510
	movs r1, #0
	str r1, [sp]
	movs r1, #0xf
	movs r2, #0x6c
	movs r3, #3
	bl sub_08026B90
_08042922:
	bl sub_080460F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042944
	bl sub_0800ED74
	bl sub_08046110
	b _08042FE4
	.align 2, 0
_08042938: .4byte 0x030004C8
_0804293C: .4byte 0x00000157
_08042940: .4byte 0x03000510
_08042944:
	bl sub_08016DC0
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_08016E4C
	add r0, sp, #4
	bl sub_08016E24
	add r0, sp, #4
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x78
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #0xc
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x80
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #0xe
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x88
	movs r3, #0
	bl sub_08022F60
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #0x78
	movs r1, #0x78
	movs r3, #0
	bl sub_08022F60
	movs r1, #2
	ldrsh r2, [r4, r1]
	movs r0, #0x78
	movs r1, #0x80
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r0, #0x78
	movs r1, #0x88
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0xc8
	movs r1, #0x78
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #6
	ldrsh r2, [r0, r1]
	movs r0, #0xc8
	movs r1, #0x80
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r0, #0xc8
	movs r1, #0x88
	movs r3, #0
	bl sub_08022F60
	b _08042FE4
_080429E4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _080429EE
	b _08042E5C
_080429EE:
	add r0, sp, #4
	bl sub_08016E24
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_08016E4C
	bl sub_0803FE1C
	mov sb, r0
	bl sub_08041080
	mov r8, r0
	add r0, sp, #4
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x78
	movs r3, #0
	bl sub_08026E70
	add r0, sp, #4
	movs r1, #0xc
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x80
	movs r3, #0
	bl sub_08026E70
	add r0, sp, #4
	movs r1, #0xe
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x88
	movs r3, #0
	bl sub_08026E70
	ldr r6, _08042B00 @ =0x03000510
	ldr r5, _08042B04 @ =0x030004E2
	ldr r3, _08042B08 @ =0x030004FA
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x11
	adds r2, r5, #0
	bl sub_08026C40
	movs r0, #7
	movs r1, #0
	bl sub_08043DD0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	add r0, sp, #4
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x38
	bl sub_08026E70
	movs r0, #0
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	adds r7, r4, #0
	cmp r0, #0
	beq _08042A84
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x5d
	movs r2, #0x31
	movs r3, #0x11
	bl sub_08026B90
_08042A84:
	movs r0, #7
	movs r1, #1
	bl sub_08043DD0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	add r0, sp, #4
	movs r1, #6
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x48
	bl sub_08026E70
	movs r0, #1
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042ABA
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x5d
	movs r2, #0x41
	movs r3, #0x11
	bl sub_08026B90
_08042ABA:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08042B0C
	movs r0, #7
	movs r1, #2
	bl sub_08043DD0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	add r0, sp, #4
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x58
	bl sub_08026E70
	movs r0, #2
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042B1C
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x5d
	movs r2, #0x51
	movs r3, #0x11
	bl sub_08026B90
	b _08042B1C
	.align 2, 0
_08042B00: .4byte 0x03000510
_08042B04: .4byte 0x030004E2
_08042B08: .4byte 0x030004FA
_08042B0C:
	add r0, sp, #4
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x58
	movs r3, #3
	bl sub_08026E70
_08042B1C:
	movs r0, #7
	movs r1, #3
	bl sub_08043DD0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	add r0, sp, #4
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x68
	bl sub_08026E70
	movs r0, #3
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042B54
	ldr r0, _08042C30 @ =0x03000510
	ldr r1, _08042C34 @ =0x030004D0
	ldrh r1, [r1, #0x12]
	str r1, [sp]
	movs r1, #0x5d
	movs r2, #0x61
	movs r3, #0x11
	bl sub_08026B90
_08042B54:
	movs r0, #0
	ldrsh r2, [r7, r0]
	movs r0, #0x69
	movs r1, #0x78
	movs r3, #0
	bl sub_08026E70
	movs r1, #2
	ldrsh r2, [r7, r1]
	movs r0, #0x69
	movs r1, #0x88
	movs r3, #0
	bl sub_08026E70
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08042BB6
	ldr r4, _08042C38 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0x78
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x18
	movs r1, #0x1c
	movs r3, #0
	bl sub_08026E70
	movs r0, #6
	ldrsh r2, [r7, r0]
	movs r0, #0x2e
	movs r1, #0x1c
	movs r3, #0
	bl sub_08026E70
	ldr r0, _08042C30 @ =0x03000510
	movs r1, #0
	str r1, [sp]
	movs r1, #0x1d
	movs r2, #0x1c
	movs r3, #3
	bl sub_08026B90
_08042BB6:
	mov r1, sb
	ldr r2, [r1, #0x14]
	movs r0, #0x50
	movs r1, #0x10
	movs r3, #1
	bl sub_08026E70
	mov r0, sb
	ldr r2, [r0, #0x10]
	movs r0, #7
	str r0, [sp]
	movs r0, #0x9a
	movs r1, #0x10
	movs r3, #2
	bl sub_08026D98
	ldr r6, _08042C30 @ =0x03000510
	ldr r7, _08042C3C @ =0x030004D6
	ldr r4, _08042C40 @ =0x030004EE
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08026C40
	adds r2, r7, #0
	adds r2, #0xa
	adds r4, #0xa
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x23
	adds r3, r4, #0
	bl sub_08026C40
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #9
	bhi _08042C44
	movs r7, #0
	cmp r7, r0
	bhs _08042C96
_08042C0C:
	lsls r1, r7, #3
	adds r1, #0xa0
	ldr r0, _08042C34 @ =0x030004D0
	ldrh r0, [r0, #6]
	str r0, [sp]
	ldr r0, _08042C30 @ =0x03000510
	movs r2, #0x28
	movs r3, #0x14
	bl sub_08026B90
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r2, r8
	ldrh r2, [r2]
	cmp r7, r2
	blo _08042C0C
	b _08042C96
	.align 2, 0
_08042C30: .4byte 0x03000510
_08042C34: .4byte 0x030004D0
_08042C38: .4byte gPlayers
_08042C3C: .4byte 0x030004D6
_08042C40: .4byte 0x030004EE
_08042C44:
	mov r0, r8
	ldrh r1, [r0]
	movs r4, #0
	subs r5, r7, #6
	cmp r1, #9
	bls _08042C66
_08042C50:
	adds r0, r1, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r1, #9
	bhi _08042C50
_08042C66:
	ldrh r0, [r5, #6]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xa0
	movs r2, #0x27
	movs r3, #0x14
	bl sub_08026B90
	movs r0, #7
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xa8
	movs r2, #0x28
	movs r3, #4
	bl sub_08026B90
	lsls r0, r4, #3
	adds r0, #0xb0
	mov r1, r8
	ldrh r2, [r1]
	movs r1, #0x27
	movs r3, #0
	bl sub_08026E70
_08042C96:
	mov r0, sb
	ldrh r2, [r0, #0x18]
	movs r0, #0x66
	movs r1, #0x26
	movs r3, #2
	bl sub_08026E70
	bl sub_08046004
	str r0, [sp, #0x34]
	movs r7, #0
_08042CAC:
	bl sub_08041294
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08042D04
	ldr r2, [sp, #0x34]
	ldrb r0, [r2, #3]
	cmp r0, r7
	bne _08042D04
	adds r0, r1, #0
	movs r1, #0xf
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _08042CEA
	lsls r5, r7, #3
	adds r1, r5, #0
	adds r1, #0x38
	lsls r4, r7, #2
	mov r2, r8
	adds r0, r2, r4
	ldrh r2, [r0, #4]
	adds r2, #1
	movs r0, #0xcc
	movs r3, #2
	bl sub_08022F60
	b _08042D3E
_08042CEA:
	lsls r5, r7, #3
	adds r1, r5, #0
	adds r1, #0x38
	lsls r4, r7, #2
	mov r2, r8
	adds r0, r2, r4
	ldrh r2, [r0, #4]
	adds r2, #1
	movs r0, #0xcc
	movs r3, #0
	bl sub_08022F60
	b _08042D3E
_08042D04:
	adds r0, r7, #0
	bl sub_080411D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042D28
	lsls r5, r7, #3
	adds r1, r5, #0
	adds r1, #0x38
	lsls r4, r7, #2
	mov r2, r8
	adds r0, r2, r4
	ldrh r2, [r0, #4]
	movs r0, #0xcc
	movs r3, #2
	bl sub_08022F60
	b _08042D3E
_08042D28:
	lsls r5, r7, #3
	adds r1, r5, #0
	adds r1, #0x38
	lsls r4, r7, #2
	mov r2, r8
	adds r0, r2, r4
	ldrh r2, [r0, #4]
	movs r0, #0xcc
	movs r3, #0
	bl sub_08022F60
_08042D3E:
	adds r6, r5, #0
	movs r0, #0
	mov sl, r0
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08042D5C
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bne _08042D7C
_08042D5C:
	bl sub_080413B4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bne _08042D7C
	mov r1, r8
	adds r0, r1, r4
	ldrh r0, [r0, #6]
	cmp r0, #0
	bne _08042D7C
	ldrh r0, [r1]
	cmp r0, #0
	bne _08042D7C
	movs r2, #1
	mov sl, r2
_08042D7C:
	add r4, r8
	ldrh r0, [r4, #4]
	cmp r0, #4
	bls _08042D8A
	mov r0, sl
	cmp r0, #0
	beq _08042E2C
_08042D8A:
	movs r5, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	adds r1, r7, #1
	mov sb, r1
	cmp r5, r0
	bge _08042E44
_08042D98:
	mov r2, sl
	cmp r2, #0
	beq _08042DB6
	ldrh r0, [r4, #4]
	cmp r5, r0
	bhs _08042E18
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08041208
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08042DCC
	b _08042DEC
_08042DB6:
	ldrh r0, [r4, #6]
	cmp r0, r5
	bls _08042E04
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08041208
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08042DEC
_08042DCC:
	lsls r1, r5, #3
	adds r1, #0xc0
	ldr r0, _08042DE4 @ =0x030004D0
	ldrh r0, [r0, #6]
	str r0, [sp]
	ldr r0, _08042DE8 @ =0x03000510
	adds r2, r6, #0
	adds r2, #0x38
	movs r3, #0x14
	bl sub_08026B90
	b _08042E18
	.align 2, 0
_08042DE4: .4byte 0x030004D0
_08042DE8: .4byte 0x03000510
_08042DEC:
	lsls r1, r5, #3
	adds r1, #0xc0
	str r0, [sp]
	ldr r0, _08042E00 @ =0x03000510
	adds r2, r6, #0
	adds r2, #0x38
	movs r3, #0x13
	bl sub_08026B90
	b _08042E18
	.align 2, 0
_08042E00: .4byte 0x03000510
_08042E04:
	lsls r1, r5, #3
	adds r1, #0xc0
	movs r0, #2
	str r0, [sp]
	ldr r0, _08042E28 @ =0x03000510
	adds r2, r6, #0
	adds r2, #0x38
	movs r3, #0x13
	bl sub_08026B90
_08042E18:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrh r0, [r4, #4]
	adds r0, #1
	cmp r5, r0
	blt _08042D98
	b _08042E44
	.align 2, 0
_08042E28: .4byte 0x03000510
_08042E2C:
	adds r2, r6, #0
	adds r2, #0x38
	ldr r0, _08042E54 @ =0x030004D0
	ldrh r0, [r0, #0x10]
	str r0, [sp]
	ldr r0, _08042E58 @ =0x03000510
	movs r1, #0xbc
	movs r3, #0x23
	bl sub_08026B90
	adds r7, #1
	mov sb, r7
_08042E44:
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bhi _08042E50
	b _08042CAC
_08042E50:
	b _08042FE4
	.align 2, 0
_08042E54: .4byte 0x030004D0
_08042E58: .4byte 0x03000510
_08042E5C:
	cmp r0, #9
	beq _08042E62
	b _08042FE4
_08042E62:
	bl sub_0804152C
	adds r4, r0, #0
	bl sub_08046004
	str r0, [sp, #0x34]
	ldrb r0, [r0, #2]
	cmp r0, #0xc
	bne _08042EC0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _08042E8E
	ldr r0, _08042EBC @ =0x03000510
	movs r1, #2
	str r1, [sp]
	movs r1, #0x98
	movs r2, #0x60
	movs r3, #3
	bl sub_08026B90
_08042E8E:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _08042EA8
	ldr r0, _08042EBC @ =0x03000510
	movs r1, #1
	str r1, [sp]
	movs r1, #0xb4
	movs r2, #0x60
	movs r3, #3
	bl sub_08026B90
_08042EA8:
	ldr r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x60
	movs r3, #2
	bl sub_08026E70
	b _08042ED0
	.align 2, 0
_08042EBC: .4byte 0x03000510
_08042EC0:
	ldr r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x60
	movs r3, #0
	bl sub_08026E70
_08042ED0:
	ldr r2, [sp, #0x34]
	ldrb r0, [r2, #2]
	cmp r0, #0xd
	bne _08042F24
	ldr r0, [r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _08042EF2
	ldr r0, _08042F20 @ =0x03000510
	movs r1, #2
	str r1, [sp]
	movs r1, #0x98
	movs r2, #0x68
	movs r3, #3
	bl sub_08026B90
_08042EF2:
	ldr r0, [r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _08042F0C
	ldr r0, _08042F20 @ =0x03000510
	movs r1, #1
	str r1, [sp]
	movs r1, #0xb4
	movs r2, #0x68
	movs r3, #3
	bl sub_08026B90
_08042F0C:
	ldr r2, [r4]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x68
	movs r3, #2
	bl sub_08026E70
	b _08042F34
	.align 2, 0
_08042F20: .4byte 0x03000510
_08042F24:
	ldr r2, [r4]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x68
	movs r3, #0
	bl sub_08026E70
_08042F34:
	ldr r1, [sp, #0x34]
	ldrb r0, [r1, #2]
	cmp r0, #0xe
	bne _08042F88
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _08042F56
	ldr r0, _08042F84 @ =0x03000510
	movs r1, #2
	str r1, [sp]
	movs r1, #0x98
	movs r2, #0x70
	movs r3, #3
	bl sub_08026B90
_08042F56:
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _08042F70
	ldr r0, _08042F84 @ =0x03000510
	movs r1, #1
	str r1, [sp]
	movs r1, #0xb4
	movs r2, #0x70
	movs r3, #3
	bl sub_08026B90
_08042F70:
	ldr r2, [r4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x70
	movs r3, #2
	bl sub_08026E70
	b _08042F98
	.align 2, 0
_08042F84: .4byte 0x03000510
_08042F88:
	ldr r2, [r4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x70
	movs r3, #0
	bl sub_08026E70
_08042F98:
	ldr r2, [sp, #0x34]
	ldrb r0, [r2, #2]
	cmp r0, #0xf
	bne _08042FD4
	ldr r5, _08042FC8 @ =0x03000510
	ldr r4, _08042FCC @ =0x030004D4
	ldr r3, _08042FD0 @ =0x030004EC
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x1d
	adds r2, r4, #0
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x9c
	movs r2, #0x7c
	movs r3, #0x1d
	bl sub_08026B90
	b _08042FE4
	.align 2, 0
_08042FC8: .4byte 0x03000510
_08042FCC: .4byte 0x030004D4
_08042FD0: .4byte 0x030004EC
_08042FD4:
	ldr r0, _08042FF4 @ =0x03000510
	movs r1, #0
	str r1, [sp]
	movs r1, #0x9c
	movs r2, #0x7c
	movs r3, #0x1e
	bl sub_08026B90
_08042FE4:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042FF4: .4byte 0x03000510

	thumb_func_start sub_08042FF8
sub_08042FF8: @ 0x08042FF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x50
	bl sub_080460F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0804301C
	bl sub_08016DC0
	bl sub_08014114
	bl sub_08014160
	bl sub_08016DC0
_0804301C:
	add r4, sp, #0x38
	adds r0, r4, #0
	bl sub_08016E4C
	mov r0, sp
	bl sub_08016E24
	bl sub_080460F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r4
	cmp r0, #2
	beq _08043048
	bl sub_08016DC0
	bl sub_08014114
	bl sub_08014160
	bl sub_08016DC0
_08043048:
	add r5, sp, #0x44
	adds r0, r5, #0
	bl sub_08016E4C
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_08016E24
	bl sub_08045F50
	adds r7, r5, #0
	adds r6, r4, #0
	cmp r0, #0
	beq _0804306A
	bl sub_08040C98
	b _08043072
_0804306A:
	bl sub_08046004
	bl sub_0804087C
_08043072:
	adds r4, r0, #0
	adds r0, r4, #0
	bl sub_0800F78C
	adds r5, r0, #0
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080430D2
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #9
	beq _080430AE
	cmp r0, #9
	bgt _08043098
	cmp r0, #8
	beq _080430A2
	b _080430D2
_08043098:
	cmp r0, #0xa
	beq _080430BA
	cmp r0, #0xb
	beq _080430C8
	b _080430D2
_080430A2:
	movs r0, #2
	orrs r5, r0
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	b _080430D2
_080430AE:
	movs r0, #4
	orrs r5, r0
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	b _080430D2
_080430BA:
	movs r0, #0x80
	lsls r0, r0, #0xf
	orrs r5, r0
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	b _080430D2
_080430C8:
	movs r0, #8
	orrs r5, r0
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
_080430D2:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08043110
	cmp r0, #3
	bgt _080430E6
	cmp r0, #2
	beq _080430F0
	b _08043122
_080430E6:
	cmp r0, #4
	beq _08043108
	cmp r0, #5
	beq _08043118
	b _08043122
_080430F0:
	bl sub_08040C24
	adds r4, r0, #0
	ldr r0, _08043104 @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r4, r4, r0
	b _08043124
	.align 2, 0
_08043104: .4byte gPlayerStats
_08043108:
	bl sub_08040C3C
	adds r4, r0, #0
	b _08043124
_08043110:
	bl sub_08040C3C
	adds r4, r0, #4
	b _08043124
_08043118:
	bl sub_08040C3C
	adds r4, r0, #0
	adds r4, #8
	b _08043124
_08043122:
	movs r4, #0
_08043124:
	cmp r4, #0
	beq _08043186
	adds r0, r4, #0
	bl sub_0800F78C
	orrs r5, r0
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08043186
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #9
	beq _08043162
	cmp r0, #9
	bgt _0804314C
	cmp r0, #8
	beq _08043156
	b _08043186
_0804314C:
	cmp r0, #0xa
	beq _0804316E
	cmp r0, #0xb
	beq _0804317C
	b _08043186
_08043156:
	movs r0, #2
	orrs r5, r0
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	b _08043186
_08043162:
	movs r0, #4
	orrs r5, r0
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	b _08043186
_0804316E:
	movs r0, #0x80
	lsls r0, r0, #0xf
	orrs r5, r0
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	b _08043186
_0804317C:
	movs r0, #8
	orrs r5, r0
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
_08043186:
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r1, r0
	beq _0804319A
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r5, r0
_0804319A:
	mov r0, r8
	ldrh r1, [r0, #2]
	ldrh r0, [r7, #2]
	cmp r1, r0
	beq _080431AA
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r5, r0
_080431AA:
	mov r0, sp
	adds r4, r6, #0
	ldrh r1, [r0, #2]
	ldrh r0, [r4, #2]
	cmp r1, r0
	beq _080431BA
	movs r0, #4
	orrs r5, r0
_080431BA:
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080431CC
	movs r0, #2
	orrs r5, r0
_080431CC:
	mov r0, sp
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r2, #6
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080431E0
	movs r0, #0x80
	lsls r0, r0, #0xf
	orrs r5, r0
_080431E0:
	mov r0, sp
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080431F2
	movs r0, #8
	orrs r5, r0
_080431F2:
	mov r0, sp
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _08043204
	movs r0, #0x40
	orrs r5, r0
_08043204:
	mov r0, sp
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _08043216
	movs r0, #0x80
	orrs r5, r0
_08043216:
	mov r0, sp
	movs r2, #0xe
	ldrsh r1, [r0, r2]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _0804322A
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r5, r0
_0804322A:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _0804324C
	mov r0, sp
	ldrh r0, [r0, #0xa]
	ldrh r1, [r4, #0xa]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	movs r0, #0x48
	movs r1, #0x78
	bl sub_08022F60
_0804324C:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0804326E
	mov r0, sp
	ldrh r0, [r0, #0xc]
	ldrh r1, [r4, #0xc]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #0xc
	ldrsh r2, [r4, r1]
	movs r0, #0x48
	movs r1, #0x80
	bl sub_08022F60
_0804326E:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08043292
	mov r0, sp
	ldrh r0, [r0, #0xe]
	ldrh r1, [r4, #0xe]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0xe
	ldrsh r2, [r4, r0]
	movs r0, #0x48
	movs r1, #0x88
	bl sub_08022F60
_08043292:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r5
	cmp r0, #0
	beq _080432BA
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #0
	ldrsh r1, [r7, r2]
	bl sub_08043DA0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0
	ldrsh r2, [r7, r0]
	movs r0, #0x98
	movs r1, #0x78
	bl sub_08022F60
_080432BA:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080432E2
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r7, r2]
	bl sub_08043DA0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #2
	ldrsh r2, [r7, r0]
	movs r0, #0x98
	movs r1, #0x80
	bl sub_08022F60
_080432E2:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08043304
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r1, [r4, #2]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #2
	ldrsh r2, [r4, r1]
	movs r0, #0x98
	movs r1, #0x88
	bl sub_08022F60
_08043304:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08043326
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #0xe8
	movs r1, #0x78
	bl sub_08022F60
_08043326:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r5
	cmp r0, #0
	beq _0804334A
	mov r0, sp
	ldrh r0, [r0, #6]
	ldrh r1, [r4, #6]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #6
	ldrsh r2, [r4, r1]
	movs r0, #0xe8
	movs r1, #0x80
	bl sub_08022F60
_0804334A:
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _0804336C
	mov r0, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r4, #4]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #4
	ldrsh r2, [r4, r0]
	movs r0, #0xe8
	movs r1, #0x88
	bl sub_08022F60
_0804336C:
	add sp, #0x50
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08043378
sub_08043378: @ 0x08043378
	push {r4, r5, r6, lr}
	sub sp, #0x10
	bl sub_080460BC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804338A
	b _080434E8
_0804338A:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	beq _0804339E
	cmp r0, #0xd
	beq _08043480
	bl _08043B1A
_0804339E:
	ldr r0, _080433B4 @ =0x030004C8
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #5
	bhi _0804341E
	lsls r0, r0, #2
	ldr r1, _080433B8 @ =_080433BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080433B4: .4byte 0x030004C8
_080433B8: .4byte _080433BC
_080433BC: @ jump table
	.4byte _080433D4 @ case 0
	.4byte _080433E4 @ case 1
	.4byte _080433F4 @ case 2
	.4byte _08043404 @ case 3
	.4byte _0804341E @ case 4
	.4byte _08043414 @ case 5
_080433D4:
	ldr r0, _080433E0 @ =0x00090063
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xdc
	b _0804341E
	.align 2, 0
_080433E0: .4byte 0x00090063
_080433E4:
	ldr r0, _080433F0 @ =0x00090065
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xd2
	b _0804341E
	.align 2, 0
_080433F0: .4byte 0x00090065
_080433F4:
	ldr r0, _08043400 @ =0x00090067
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xc3
	b _0804341E
	.align 2, 0
_08043400: .4byte 0x00090067
_08043404:
	ldr r0, _08043410 @ =0x0009006B
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xd7
	b _0804341E
	.align 2, 0
_08043410: .4byte 0x0009006B
_08043414:
	ldr r0, _08043474 @ =0x00090069
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xcd
_0804341E:
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08043478 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
	add r2, sp, #0xc
	movs r1, #0
	movs r0, #1
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r4, _0804347C @ =0x030004CC
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bhi _0804345A
	b _08043B1A
_0804345A:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #0x8c
	bl sub_0800EB30
	ldrb r0, [r4]
	cmp r0, #0x14
	bhi _0804346C
	b _08043B1A
_0804346C:
	movs r0, #0
	strb r0, [r4]
	b _08043B1A
	.align 2, 0
_08043474: .4byte 0x00090069
_08043478: .4byte 0x03003CA0
_0804347C: .4byte 0x030004CC
_08043480:
	ldr r0, _08043498 @ =0x030004C8
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #5
	bls _0804348C
	b _08043AA4
_0804348C:
	lsls r0, r0, #2
	ldr r1, _0804349C @ =_080434A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043498: .4byte 0x030004C8
_0804349C: .4byte _080434A0
_080434A0: @ jump table
	.4byte _080434B8 @ case 0
	.4byte _080434C0 @ case 1
	.4byte _080434C8 @ case 2
	.4byte _080434D0 @ case 3
	.4byte _08043AA4 @ case 4
	.4byte _080434D8 @ case 5
_080434B8:
	ldr r0, _080434BC @ =0x00090064
	b _080434DA
	.align 2, 0
_080434BC: .4byte 0x00090064
_080434C0:
	ldr r0, _080434C4 @ =0x00090066
	b _080434DA
	.align 2, 0
_080434C4: .4byte 0x00090066
_080434C8:
	ldr r0, _080434CC @ =0x00090068
	b _080434DA
	.align 2, 0
_080434CC: .4byte 0x00090068
_080434D0:
	ldr r0, _080434D4 @ =0x0009006C
	b _080434DA
	.align 2, 0
_080434D4: .4byte 0x0009006C
_080434D8:
	ldr r0, _080434E4 @ =0x0009006A
_080434DA:
	bl GetDataRecord
	adds r4, r0, #0
	b _08043AA4
	.align 2, 0
_080434E4: .4byte 0x0009006A
_080434E8:
	ldr r5, _08043518 @ =0x030004C8
	ldrb r0, [r5]
	cmp r0, #8
	beq _080434F2
	b _08043964
_080434F2:
	bl sub_08016F98
	adds r6, r0, #0
	bl sub_08046004
	adds r5, r0, #0
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0804350C
	b _08043950
_0804350C:
	lsls r0, r0, #2
	ldr r1, _0804351C @ =_08043520
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043518: .4byte 0x030004C8
_0804351C: .4byte _08043520
_08043520: @ jump table
	.4byte _08043548 @ case 0
	.4byte _08043950 @ case 1
	.4byte _08043950 @ case 2
	.4byte _08043950 @ case 3
	.4byte _08043950 @ case 4
	.4byte _08043950 @ case 5
	.4byte _080436BC @ case 6
	.4byte _08043924 @ case 7
	.4byte _080436F8 @ case 8
	.4byte _08043924 @ case 9
_08043548:
	ldrb r0, [r5, #2]
	cmp r0, #7
	bne _0804360C
	bl sub_08041074
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043560
	ldr r0, _0804355C @ =0x0009001F
	b _080438F2
	.align 2, 0
_0804355C: .4byte 0x0009001F
_08043560:
	ldr r0, _080435D4 @ =0x00090021
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _080435D8 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x64
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0
	movs r2, #0xff
_08043594:
	lsls r0, r1, #1
	add r0, sp
	adds r0, #4
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bls _08043594
	cmp r5, #0x63
	bls _080435DC
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0xef
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080435CC
	cmp r5, #9
	bhi _080435E0
_080435CC:
	add r1, sp, #4
	movs r0, #0xef
	strh r0, [r1, #2]
	b _080435FA
	.align 2, 0
_080435D4: .4byte 0x00090021
_080435D8: .4byte 0x03003CA0
_080435DC:
	cmp r5, #9
	bls _080435FA
_080435E0:
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0xef
	strh r0, [r4, #2]
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080435FA:
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0xef
	movs r2, #0
	strh r0, [r1, #4]
	adds r0, r1, #0
	strh r2, [r0, #6]
	movs r1, #0xc0
	b _08043912
_0804360C:
	bl sub_080410BC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043620
	ldr r0, _0804361C @ =0x00090020
	b _080438F2
	.align 2, 0
_0804361C: .4byte 0x00090020
_08043620:
	ldr r0, _080436B4 @ =0x00090022
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _080436B8 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x74
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0
	movs r2, #0xff
_08043654:
	lsls r0, r1, #1
	add r0, sp
	adds r0, #4
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bls _08043654
	cmp r5, #0x63
	bls _08043684
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0xef
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08043684:
	cmp r5, #9
	bls _080436A2
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0xef
	strh r0, [r4, #2]
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080436A2:
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0xef
	movs r2, #0
	strh r0, [r1, #4]
	adds r0, r1, #0
	strh r2, [r0, #6]
	movs r1, #0xd0
	b _08043912
	.align 2, 0
_080436B4: .4byte 0x00090022
_080436B8: .4byte 0x03003CA0
_080436BC:
	ldrb r0, [r5, #3]
	cmp r0, #1
	beq _080436E0
	cmp r0, #1
	bgt _080436CC
	cmp r0, #0
	beq _080436D6
	b _080438F8
_080436CC:
	cmp r0, #2
	beq _080436E8
	cmp r0, #3
	beq _080436F0
	b _080438F8
_080436D6:
	ldr r0, _080436DC @ =0x00090057
	b _080438F2
	.align 2, 0
_080436DC: .4byte 0x00090057
_080436E0:
	ldr r0, _080436E4 @ =0x0009005A
	b _080438F2
	.align 2, 0
_080436E4: .4byte 0x0009005A
_080436E8:
	ldr r0, _080436EC @ =0x00090059
	b _080438F2
	.align 2, 0
_080436EC: .4byte 0x00090059
_080436F0:
	ldr r0, _080436F4 @ =0x00090058
	b _080438F2
	.align 2, 0
_080436F4: .4byte 0x00090058
_080436F8:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08043794
	cmp r0, #1
	bgt _0804370E
	cmp r0, #0
	beq _0804371C
	b _080438F8
_0804370E:
	cmp r0, #2
	bne _08043714
	b _0804380C
_08043714:
	cmp r0, #3
	bne _0804371A
	b _08043884
_0804371A:
	b _080438F8
_0804371C:
	ldrb r0, [r5, #3]
	cmp r0, #7
	bls _08043724
	b _080438F8
_08043724:
	lsls r0, r0, #2
	ldr r1, _08043730 @ =_08043734
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043730: .4byte _08043734
_08043734: @ jump table
	.4byte _08043754 @ case 0
	.4byte _0804375C @ case 1
	.4byte _08043764 @ case 2
	.4byte _0804376C @ case 3
	.4byte _08043774 @ case 4
	.4byte _0804377C @ case 5
	.4byte _08043784 @ case 6
	.4byte _0804378C @ case 7
_08043754:
	ldr r0, _08043758 @ =0x0009002B
	b _080438F2
	.align 2, 0
_08043758: .4byte 0x0009002B
_0804375C:
	ldr r0, _08043760 @ =0x0009002C
	b _080438F2
	.align 2, 0
_08043760: .4byte 0x0009002C
_08043764:
	ldr r0, _08043768 @ =0x0009002D
	b _080438F2
	.align 2, 0
_08043768: .4byte 0x0009002D
_0804376C:
	ldr r0, _08043770 @ =0x0009002E
	b _080438F2
	.align 2, 0
_08043770: .4byte 0x0009002E
_08043774:
	ldr r0, _08043778 @ =0x0009002F
	b _080438F2
	.align 2, 0
_08043778: .4byte 0x0009002F
_0804377C:
	ldr r0, _08043780 @ =0x00090030
	b _080438F2
	.align 2, 0
_08043780: .4byte 0x00090030
_08043784:
	ldr r0, _08043788 @ =0x00090031
	b _080438F2
	.align 2, 0
_08043788: .4byte 0x00090031
_0804378C:
	ldr r0, _08043790 @ =0x00090032
	b _080438F2
	.align 2, 0
_08043790: .4byte 0x00090032
_08043794:
	ldrb r0, [r5, #3]
	cmp r0, #7
	bls _0804379C
	b _080438F8
_0804379C:
	lsls r0, r0, #2
	ldr r1, _080437A8 @ =_080437AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080437A8: .4byte _080437AC
_080437AC: @ jump table
	.4byte _080437CC @ case 0
	.4byte _080437D4 @ case 1
	.4byte _080437DC @ case 2
	.4byte _080437E4 @ case 3
	.4byte _080437EC @ case 4
	.4byte _080437F4 @ case 5
	.4byte _080437FC @ case 6
	.4byte _08043804 @ case 7
_080437CC:
	ldr r0, _080437D0 @ =0x00090033
	b _080438F2
	.align 2, 0
_080437D0: .4byte 0x00090033
_080437D4:
	ldr r0, _080437D8 @ =0x00090034
	b _080438F2
	.align 2, 0
_080437D8: .4byte 0x00090034
_080437DC:
	ldr r0, _080437E0 @ =0x00090035
	b _080438F2
	.align 2, 0
_080437E0: .4byte 0x00090035
_080437E4:
	ldr r0, _080437E8 @ =0x00090036
	b _080438F2
	.align 2, 0
_080437E8: .4byte 0x00090036
_080437EC:
	ldr r0, _080437F0 @ =0x00090037
	b _080438F2
	.align 2, 0
_080437F0: .4byte 0x00090037
_080437F4:
	ldr r0, _080437F8 @ =0x00090038
	b _080438F2
	.align 2, 0
_080437F8: .4byte 0x00090038
_080437FC:
	ldr r0, _08043800 @ =0x00090039
	b _080438F2
	.align 2, 0
_08043800: .4byte 0x00090039
_08043804:
	ldr r0, _08043808 @ =0x0009003A
	b _080438F2
	.align 2, 0
_08043808: .4byte 0x0009003A
_0804380C:
	ldrb r0, [r5, #3]
	cmp r0, #7
	bls _08043814
	b _080438F8
_08043814:
	lsls r0, r0, #2
	ldr r1, _08043820 @ =_08043824
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043820: .4byte _08043824
_08043824: @ jump table
	.4byte _08043844 @ case 0
	.4byte _0804384C @ case 1
	.4byte _08043854 @ case 2
	.4byte _0804385C @ case 3
	.4byte _08043864 @ case 4
	.4byte _0804386C @ case 5
	.4byte _08043874 @ case 6
	.4byte _0804387C @ case 7
_08043844:
	ldr r0, _08043848 @ =0x0009003B
	b _080438F2
	.align 2, 0
_08043848: .4byte 0x0009003B
_0804384C:
	ldr r0, _08043850 @ =0x0009003C
	b _080438F2
	.align 2, 0
_08043850: .4byte 0x0009003C
_08043854:
	ldr r0, _08043858 @ =0x0009003D
	b _080438F2
	.align 2, 0
_08043858: .4byte 0x0009003D
_0804385C:
	ldr r0, _08043860 @ =0x0009003E
	b _080438F2
	.align 2, 0
_08043860: .4byte 0x0009003E
_08043864:
	ldr r0, _08043868 @ =0x0009003F
	b _080438F2
	.align 2, 0
_08043868: .4byte 0x0009003F
_0804386C:
	ldr r0, _08043870 @ =0x00090040
	b _080438F2
	.align 2, 0
_08043870: .4byte 0x00090040
_08043874:
	ldr r0, _08043878 @ =0x00090041
	b _080438F2
	.align 2, 0
_08043878: .4byte 0x00090041
_0804387C:
	ldr r0, _08043880 @ =0x00090042
	b _080438F2
	.align 2, 0
_08043880: .4byte 0x00090042
_08043884:
	ldrb r0, [r5, #3]
	cmp r0, #7
	bhi _080438F8
	lsls r0, r0, #2
	ldr r1, _08043894 @ =_08043898
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043894: .4byte _08043898
_08043898: @ jump table
	.4byte _080438B8 @ case 0
	.4byte _080438C0 @ case 1
	.4byte _080438C8 @ case 2
	.4byte _080438D0 @ case 3
	.4byte _080438D8 @ case 4
	.4byte _080438E0 @ case 5
	.4byte _080438E8 @ case 6
	.4byte _080438F0 @ case 7
_080438B8:
	ldr r0, _080438BC @ =0x00090043
	b _080438F2
	.align 2, 0
_080438BC: .4byte 0x00090043
_080438C0:
	ldr r0, _080438C4 @ =0x00090044
	b _080438F2
	.align 2, 0
_080438C4: .4byte 0x00090044
_080438C8:
	ldr r0, _080438CC @ =0x00090045
	b _080438F2
	.align 2, 0
_080438CC: .4byte 0x00090045
_080438D0:
	ldr r0, _080438D4 @ =0x00090046
	b _080438F2
	.align 2, 0
_080438D4: .4byte 0x00090046
_080438D8:
	ldr r0, _080438DC @ =0x00090047
	b _080438F2
	.align 2, 0
_080438DC: .4byte 0x00090047
_080438E0:
	ldr r0, _080438E4 @ =0x00090048
	b _080438F2
	.align 2, 0
_080438E4: .4byte 0x00090048
_080438E8:
	ldr r0, _080438EC @ =0x00090049
	b _080438F2
	.align 2, 0
_080438EC: .4byte 0x00090049
_080438F0:
	ldr r0, _0804391C @ =0x0009004A
_080438F2:
	bl GetDataRecord
	adds r4, r0, #0
_080438F8:
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08043920 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
_08043912:
	movs r2, #0x8b
	bl sub_0800EB30
	b _08043950
	.align 2, 0
_0804391C: .4byte 0x0009004A
_08043920: .4byte 0x03003CA0
_08043924:
	ldr r0, _0804395C @ =0x0009000D
	bl GetDataRecord
	adds r4, r0, #0
	bl sub_08043B28
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08043960 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
_08043950:
	adds r0, r6, #0
	movs r1, #0x9d
	movs r2, #0x78
	bl sub_0800EB30
	b _08043B1A
	.align 2, 0
_0804395C: .4byte 0x0009000D
_08043960: .4byte 0x03003CA0
_08043964:
	cmp r0, #9
	bne _080439F0
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08043976
	b _08043A98
_08043976:
	bl sub_08046004
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	subs r0, #9
	cmp r0, #6
	bls _08043986
	b _08043AA4
_08043986:
	lsls r0, r0, #2
	ldr r1, _08043990 @ =_08043994
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043990: .4byte _08043994
_08043994: @ jump table
	.4byte _080439B0 @ case 0
	.4byte _080439B8 @ case 1
	.4byte _080439C0 @ case 2
	.4byte _080439C8 @ case 3
	.4byte _080439D0 @ case 4
	.4byte _080439D8 @ case 5
	.4byte _080439E0 @ case 6
_080439B0:
	ldr r0, _080439B4 @ =0x0009005C
	b _080439E2
	.align 2, 0
_080439B4: .4byte 0x0009005C
_080439B8:
	ldr r0, _080439BC @ =0x0009005D
	b _080439E2
	.align 2, 0
_080439BC: .4byte 0x0009005D
_080439C0:
	ldr r0, _080439C4 @ =0x0009005E
	b _080439E2
	.align 2, 0
_080439C4: .4byte 0x0009005E
_080439C8:
	ldr r0, _080439CC @ =0x0009005F
	b _080439E2
	.align 2, 0
_080439CC: .4byte 0x0009005F
_080439D0:
	ldr r0, _080439D4 @ =0x00090060
	b _080439E2
	.align 2, 0
_080439D4: .4byte 0x00090060
_080439D8:
	ldr r0, _080439DC @ =0x00090061
	b _080439E2
	.align 2, 0
_080439DC: .4byte 0x00090061
_080439E0:
	ldr r0, _080439EC @ =0x00090062
_080439E2:
	bl GetDataRecord
	adds r4, r0, #0
	b _08043AA4
	.align 2, 0
_080439EC: .4byte 0x00090062
_080439F0:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _08043A04
	ldr r0, _08043A00 @ =0x00090005
	b _08043A9A
	.align 2, 0
_08043A00: .4byte 0x00090005
_08043A04:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _08043A18
	ldr r0, _08043A14 @ =0x00090001
	b _08043A9A
	.align 2, 0
_08043A14: .4byte 0x00090001
_08043A18:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _08043A2C
	ldr r0, _08043A28 @ =0x00090002
	b _08043A9A
	.align 2, 0
_08043A28: .4byte 0x00090002
_08043A2C:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08043AD0
	ldrb r0, [r5]
	subs r0, #2
	cmp r0, #7
	bhi _08043AA0
	lsls r0, r0, #2
	ldr r1, _08043A4C @ =_08043A50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043A4C: .4byte _08043A50
_08043A50: @ jump table
	.4byte _08043A70 @ case 0
	.4byte _08043A78 @ case 1
	.4byte _08043A80 @ case 2
	.4byte _08043A90 @ case 3
	.4byte _08043AA0 @ case 4
	.4byte _08043A88 @ case 5
	.4byte _08043AA0 @ case 6
	.4byte _08043A98 @ case 7
_08043A70:
	ldr r0, _08043A74 @ =0x000900E1
	b _08043A9A
	.align 2, 0
_08043A74: .4byte 0x000900E1
_08043A78:
	ldr r0, _08043A7C @ =0x000900E2
	b _08043A9A
	.align 2, 0
_08043A7C: .4byte 0x000900E2
_08043A80:
	ldr r0, _08043A84 @ =0x000900E3
	b _08043A9A
	.align 2, 0
_08043A84: .4byte 0x000900E3
_08043A88:
	ldr r0, _08043A8C @ =0x000900E0
	b _08043A9A
	.align 2, 0
_08043A8C: .4byte 0x000900E0
_08043A90:
	ldr r0, _08043A94 @ =0x000900DF
	b _08043A9A
	.align 2, 0
_08043A94: .4byte 0x000900DF
_08043A98:
	ldr r0, _08043AC8 @ =0x000900E5
_08043A9A:
	bl GetDataRecord
	adds r4, r0, #0
_08043AA0:
	bl sub_08043B28
_08043AA4:
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08043ACC @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
	b _08043B1A
	.align 2, 0
_08043AC8: .4byte 0x000900E5
_08043ACC: .4byte 0x03003CA0
_08043AD0:
	bl sub_08045F50
	cmp r0, #0
	bne _08043AE2
	bl sub_08046170
	bl sub_0804087C
	b _08043AE6
_08043AE2:
	bl sub_08040C98
_08043AE6:
	adds r4, r0, #0
	bl sub_0804611C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	movs r0, #0x78
	movs r1, #0x8b
	adds r2, r4, #0
	bl sub_08023330
	bl sub_0804611C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08043B24 @ =0x03000510
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #4
	movs r2, #0x94
	movs r3, #0x25
	bl sub_08026B90
_08043B1A:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043B24: .4byte 0x03000510

	thumb_func_start sub_08043B28
sub_08043B28: @ 0x08043B28
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _08043B94 @ =0x03000548
	ldr r7, _08043B98 @ =0x030004D0
	ldr r4, _08043B9C @ =0x030004E8
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #4
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08026C40
	adds r2, r7, #2
	adds r4, #2
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #5
	adds r3, r4, #0
	bl sub_08026C40
	bl sub_08045FBC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08043BA0
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x7c
	movs r3, #4
	bl sub_08026BC4
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x7c
	movs r3, #5
	bl sub_08026B90
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x7c
	movs r3, #8
	bl sub_0802706C
	b _08043BD0
	.align 2, 0
_08043B94: .4byte 0x03000548
_08043B98: .4byte 0x030004D0
_08043B9C: .4byte 0x030004E8
_08043BA0:
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x7c
	movs r3, #4
	bl sub_08026B90
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x7c
	movs r3, #5
	bl sub_08026BC4
	str r4, [sp]
	str r4, [sp, #4]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x7c
	movs r3, #9
	bl sub_0802706C
_08043BD0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08043BD8
sub_08043BD8: @ 0x08043BD8
	push {r4, r5, lr}
	ldr r0, _08043C2C @ =0x030004C8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08043C30 @ =0x030004CB
	strb r1, [r0]
	ldr r0, _08043C34 @ =0x030004CA
	strb r1, [r0]
	ldr r2, _08043C38 @ =0x030004C9
	movs r0, #1
	strb r0, [r2]
	ldr r0, _08043C3C @ =0x030004CC
	strb r1, [r0]
	ldr r0, _08043C40 @ =0x030004FC
	movs r1, #0
	str r1, [r0]
	ldr r0, _08043C44 @ =0x03000500
	str r1, [r0]
	ldr r0, _08043C48 @ =0x03000504
	str r1, [r0]
	ldr r0, _08043C4C @ =0x03000508
	str r1, [r0]
	ldr r0, _08043C50 @ =0x0300050C
	str r1, [r0]
	movs r2, #0
	ldr r5, _08043C54 @ =0x030004D0
	movs r3, #0
	ldr r4, _08043C58 @ =0x030004E8
_08043C10:
	lsls r1, r2, #1
	adds r0, r1, r5
	strh r3, [r0]
	adds r1, r1, r4
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _08043C10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08043C2C: .4byte 0x030004C8
_08043C30: .4byte 0x030004CB
_08043C34: .4byte 0x030004CA
_08043C38: .4byte 0x030004C9
_08043C3C: .4byte 0x030004CC
_08043C40: .4byte 0x030004FC
_08043C44: .4byte 0x03000500
_08043C48: .4byte 0x03000504
_08043C4C: .4byte 0x03000508
_08043C50: .4byte 0x0300050C
_08043C54: .4byte 0x030004D0
_08043C58: .4byte 0x030004E8

	thumb_func_start sub_08043C5C
sub_08043C5C: @ 0x08043C5C
	push {r4, lr}
	ldr r4, _08043CB4 @ =0x030004FC
	ldr r0, [r4]
	cmp r0, #0
	beq _08043C6E
	bl Free
	movs r0, #0
	str r0, [r4]
_08043C6E:
	ldr r4, _08043CB8 @ =0x03000500
	ldr r0, [r4]
	cmp r0, #0
	beq _08043C7E
	bl Free
	movs r0, #0
	str r0, [r4]
_08043C7E:
	ldr r4, _08043CBC @ =0x03000504
	ldr r0, [r4]
	cmp r0, #0
	beq _08043C8E
	bl Free
	movs r0, #0
	str r0, [r4]
_08043C8E:
	ldr r4, _08043CC0 @ =0x03000508
	ldr r0, [r4]
	cmp r0, #0
	beq _08043C9E
	bl Free
	movs r0, #0
	str r0, [r4]
_08043C9E:
	ldr r4, _08043CC4 @ =0x0300050C
	ldr r0, [r4]
	cmp r0, #0
	beq _08043CAE
	bl Free
	movs r0, #0
	str r0, [r4]
_08043CAE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043CB4: .4byte 0x030004FC
_08043CB8: .4byte 0x03000500
_08043CBC: .4byte 0x03000504
_08043CC0: .4byte 0x03000508
_08043CC4: .4byte 0x0300050C

	thumb_func_start sub_08043CC8
sub_08043CC8: @ 0x08043CC8
	push {lr}
	sub sp, #0xc
	bl sub_08041D30
	bl sub_080420EC
	ldr r0, _08043CF8 @ =0x030004C8
	ldrb r0, [r0]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08043CE6
	bl sub_08041DE8
_08043CE6:
	bl sub_0804288C
	bl sub_08043378
	bl sub_08046110
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_08043CF8: .4byte 0x030004C8

	thumb_func_start sub_08043CFC
sub_08043CFC: @ 0x08043CFC
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldr r4, _08043D30 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r4]
	ldr r2, _08043D34 @ =0x030004CB
	ldrb r0, [r2]
	strh r0, [r4, #2]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r0, _08043D38 @ =0x03000510
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x78
	bl sub_08026B90
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043D30: .4byte gBgRegsBuffer
_08043D34: .4byte 0x030004CB
_08043D38: .4byte 0x03000510

	thumb_func_start sub_08043D3C
sub_08043D3C: @ 0x08043D3C
	ldr r1, _08043D44 @ =0x030004C8
	strb r0, [r1]
	bx lr
	.align 2, 0
_08043D44: .4byte 0x030004C8

	thumb_func_start sub_08043D48
sub_08043D48: @ 0x08043D48
	push {r4, r5, r6, lr}
	bl sub_08040C24
	adds r4, r0, #0
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08045F50
	cmp r0, #0
	bne _08043D60
	movs r6, #0
_08043D60:
	cmp r4, #0
	beq _08043D98
	movs r5, #0
_08043D66:
	cmp r6, r4
	bne _08043D72
	ldr r0, _08043D88 @ =0x030004CA
	ldrb r0, [r0]
	cmp r0, #0
	bne _08043D8C
_08043D72:
	lsls r1, r5, #4
	movs r0, #0x2c
	subs r0, r0, r1
	lsls r1, r5, #3
	adds r1, #0x20
	adds r2, r4, #0
	adds r4, #4
	movs r3, #8
	bl sub_08023048
	b _08043D8E
	.align 2, 0
_08043D88: .4byte 0x030004CA
_08043D8C:
	adds r4, #4
_08043D8E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08043D66
_08043D98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08043DA0
sub_08043DA0: @ 0x08043DA0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	cmp r2, r1
	beq _08043DB6
	movs r0, #2
	cmp r2, r1
	ble _08043DB6
	movs r0, #1
_08043DB6:
	bx lr

	thumb_func_start sub_08043DB8
sub_08043DB8: @ 0x08043DB8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	cmp r2, r1
	beq _08043DCE
	movs r0, #2
	cmp r2, r1
	bls _08043DCE
	movs r0, #1
_08043DCE:
	bx lr

	thumb_func_start sub_08043DD0
sub_08043DD0: @ 0x08043DD0
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r3, _08043DFC @ =0xFF00FFFF
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r0
	lsls r1, r1, #0x18
	ldr r0, _08043E00 @ =0x00FFFFFF
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	mov r0, sp
	bl sub_0803F9D4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043E04
	movs r0, #0
	b _08043E06
	.align 2, 0
_08043DFC: .4byte 0xFF00FFFF
_08043E00: .4byte 0x00FFFFFF
_08043E04:
	movs r0, #2
_08043E06:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_08043E0C
sub_08043E0C: @ 0x08043E0C
	push {r4, r5, r6, lr}
	ldr r0, _08043E90 @ =gUnknown_030005B8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08043E94 @ =gUnknown_030005B9
	strb r1, [r0]
	ldr r0, _08043E98 @ =0x030005C1
	strb r1, [r0]
	ldr r0, _08043E9C @ =0x030005BA
	strb r1, [r0]
	ldr r0, _08043EA0 @ =gUnknown_030005BB
	strb r1, [r0]
	ldr r0, _08043EA4 @ =gUnknown_030005BC
	strb r1, [r0]
	ldr r0, _08043EA8 @ =0x030005C2
	movs r4, #0
	strh r4, [r0]
	ldr r0, _08043EAC @ =0x030005C4
	strh r4, [r0]
	ldr r0, _08043EB0 @ =gUnknown_030005BD
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08043EB4 @ =gUnknown_030005C8
	movs r6, #0
	strb r4, [r0]
	strb r4, [r0, #1]
	ldr r0, _08043EB8 @ =0x030005BE
	strb r4, [r0]
	ldr r0, _08043EBC @ =gUnknown_030005C0
	strb r4, [r0]
	ldr r0, _08043EC0 @ =gUnknown_030005BF
	strb r1, [r0]
	ldr r0, _08043EC4 @ =gUnknown_030005CC
	strb r4, [r0, #1]
	movs r5, #4
	strb r5, [r0]
	ldr r0, _08043EC8 @ =gUnknown_030005D0
	strb r4, [r0, #2]
	strb r4, [r0, #3]
	strb r4, [r0]
	strb r4, [r0, #1]
	ldr r0, _08043ECC @ =gUnknown_030005D4
	strb r4, [r0, #2]
	strb r4, [r0, #3]
	strb r4, [r0]
	strb r4, [r0, #1]
	ldr r0, _08043ED0 @ =0x030005D8
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0xc
	strb r1, [r0, #3]
	bl sub_08045304
	ldr r0, _08043ED4 @ =0x030005DC
	movs r1, #6
	strb r1, [r0, #2]
	strb r5, [r0, #3]
	bl sub_08045304
	ldr r0, _08043ED8 @ =gUnknown_030005E0
	strb r4, [r0]
	str r6, [r0, #8]
	str r6, [r0, #0xc]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043E90: .4byte gUnknown_030005B8
_08043E94: .4byte gUnknown_030005B9
_08043E98: .4byte 0x030005C1
_08043E9C: .4byte 0x030005BA
_08043EA0: .4byte gUnknown_030005BB
_08043EA4: .4byte gUnknown_030005BC
_08043EA8: .4byte 0x030005C2
_08043EAC: .4byte 0x030005C4
_08043EB0: .4byte gUnknown_030005BD
_08043EB4: .4byte gUnknown_030005C8
_08043EB8: .4byte 0x030005BE
_08043EBC: .4byte gUnknown_030005C0
_08043EC0: .4byte gUnknown_030005BF
_08043EC4: .4byte gUnknown_030005CC
_08043EC8: .4byte gUnknown_030005D0
_08043ECC: .4byte gUnknown_030005D4
_08043ED0: .4byte 0x030005D8
_08043ED4: .4byte 0x030005DC
_08043ED8: .4byte gUnknown_030005E0

	thumb_func_start sub_08043EDC
sub_08043EDC: @ 0x08043EDC
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08041294
	cmp r0, #0
	beq _08043EEA
	b _08044580
_08043EEA:
	ldr r1, _08043F64 @ =0x030005C2
	strh r0, [r1]
	ldr r0, _08043F68 @ =gKeysRepeat
	ldrh r2, [r0]
	movs r6, #0x10
	adds r0, r6, #0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08043F00
	strh r6, [r5]
_08043F00:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	adds r1, r2, #0
	cmp r0, #0
	beq _08043F0E
	strh r3, [r5]
_08043F0E:
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08043F1A
	strh r3, [r5]
_08043F1A:
	movs r1, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08043F26
	strh r1, [r5]
_08043F26:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08043F32
	ldr r1, _08043F6C @ =0x030005C1
	movs r0, #0
	strb r0, [r1]
_08043F32:
	ldr r0, _08043F70 @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r4, r0, #0x1f
	ands r4, r6
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08043F4E
	movs r4, #0x20
_08043F4E:
	ldr r0, _08043F74 @ =gUnknown_030005B8
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x10
	bls _08043F5A
	b _08044580
_08043F5A:
	lsls r0, r1, #2
	ldr r1, _08043F78 @ =_08043F7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043F64: .4byte 0x030005C2
_08043F68: .4byte gKeysRepeat
_08043F6C: .4byte 0x030005C1
_08043F70: .4byte gKeysNew
_08043F74: .4byte gUnknown_030005B8
_08043F78: .4byte _08043F7C
_08043F7C: @ jump table
	.4byte _080440E8 @ case 0
	.4byte _080440E8 @ case 1
	.4byte _08044198 @ case 2
	.4byte _0804424C @ case 3
	.4byte _0804424C @ case 4
	.4byte _0804424C @ case 5
	.4byte _08044288 @ case 6
	.4byte _0804424C @ case 7
	.4byte _08044328 @ case 8
	.4byte _0804424C @ case 9
	.4byte _080443C8 @ case 10
	.4byte _08043FC0 @ case 11
	.4byte _08044580 @ case 12
	.4byte _0804456C @ case 13
	.4byte _08043FF8 @ case 14
	.4byte _0804407C @ case 15
	.4byte _0804424C @ case 16
_08043FC0:
	ldr r2, _08043FEC @ =gUnknown_030005C8
	ldr r3, _08043FF0 @ =0x030005BA
	ldrb r0, [r2]
	ldrb r1, [r3]
	subs r0, r0, r1
	strb r0, [r2]
	subs r1, #2
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x88
	bls _08043FDA
	b _08044580
_08043FDA:
	movs r0, #0xc
	strb r0, [r6]
	ldr r1, _08043FF4 @ =gUnknown_030005D4
	movs r0, #0x50
	strb r0, [r1]
	movs r0, #0x11
	strb r0, [r1, #3]
	b _08044580
	.align 2, 0
_08043FEC: .4byte gUnknown_030005C8
_08043FF0: .4byte 0x030005BA
_08043FF4: .4byte gUnknown_030005D4
_08043FF8:
	ldr r0, _08044030 @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #7
	beq _08044040
	ldr r1, _08044034 @ =gUnknown_030005C8
	ldr r3, _08044038 @ =0x030005BA
	ldrb r0, [r3]
	ldrb r4, [r1]
	adds r2, r0, r4
	strb r2, [r1]
	adds r0, #2
	strb r0, [r3]
	ldr r4, _0804403C @ =gUnknown_030005D4
	ldrb r0, [r4]
	ldrb r1, [r4, #3]
	subs r0, r0, r1
	strb r0, [r4]
	subs r1, #2
	strb r1, [r4, #3]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0xd7
	bhi _08044028
	b _08044580
_08044028:
	movs r0, #0
	strb r0, [r6]
	b _0804404C
	.align 2, 0
_08044030: .4byte gUnknown_030005B9
_08044034: .4byte gUnknown_030005C8
_08044038: .4byte 0x030005BA
_0804403C: .4byte gUnknown_030005D4
_08044040:
	ldr r1, _0804406C @ =gUnknown_030005C8
	movs r2, #0
	movs r0, #0xd8
	strb r0, [r1]
	strb r2, [r6]
	ldr r4, _08044070 @ =gUnknown_030005D4
_0804404C:
	movs r0, #3
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_08045304
	ldr r1, _08044074 @ =gUnknown_030005D0
	ldr r0, [r4]
	str r0, [r1]
	bl sub_08045E14
	ldr r1, _08044078 @ =gUnknown_030005BF
	movs r0, #1
	strb r0, [r1]
	b _08044580
	.align 2, 0
_0804406C: .4byte gUnknown_030005C8
_08044070: .4byte gUnknown_030005D4
_08044074: .4byte gUnknown_030005D0
_08044078: .4byte gUnknown_030005BF
_0804407C:
	ldr r0, _080440B8 @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #7
	beq _080440CC
	ldr r1, _080440BC @ =gUnknown_030005C8
	ldr r2, _080440C0 @ =0x030005BA
	ldrb r3, [r1]
	ldrb r0, [r2]
	subs r3, r3, r0
	strb r3, [r1]
	subs r0, #2
	strb r0, [r2]
	ldr r1, _080440C4 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	ldrb r4, [r1]
	adds r2, r0, r4
	strb r2, [r1]
	adds r0, #3
	strb r0, [r1, #3]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0x88
	bls _080440AC
	b _08044580
_080440AC:
	movs r0, #0xd
	strb r0, [r6]
	ldr r1, _080440C8 @ =gUnknown_030005D0
	movs r0, #0
	strb r0, [r1, #3]
	b _08044580
	.align 2, 0
_080440B8: .4byte gUnknown_030005B9
_080440BC: .4byte gUnknown_030005C8
_080440C0: .4byte 0x030005BA
_080440C4: .4byte gUnknown_030005D4
_080440C8: .4byte gUnknown_030005D0
_080440CC:
	ldr r1, _080440E0 @ =gUnknown_030005C8
	movs r2, #0
	movs r0, #0x87
	strb r0, [r1]
	movs r0, #0xd
	strb r0, [r6]
	ldr r0, _080440E4 @ =gUnknown_030005D0
	strb r2, [r0, #3]
	b _08044580
	.align 2, 0
_080440E0: .4byte gUnknown_030005C8
_080440E4: .4byte gUnknown_030005D0
_080440E8:
	ldr r0, _0804410C @ =gUnknown_030005B9
	ldrb r4, [r0]
	cmp r4, #8
	bne _08044148
	ldr r3, _08044110 @ =gUnknown_030005D0
	ldrb r1, [r3, #2]
	lsls r1, r1, #0x10
	ldr r2, _08044114 @ =0xFF00FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r5]
	cmp r1, #0x10
	beq _08044118
	cmp r1, #0x20
	beq _08044124
	b _0804412C
	.align 2, 0
_0804410C: .4byte gUnknown_030005B9
_08044110: .4byte gUnknown_030005D0
_08044114: .4byte 0xFF00FFFF
_08044118:
	ldr r0, _08044120 @ =gUnknown_030005D4
	strb r4, [r0, #2]
	strb r4, [r3, #2]
	b _0804412C
	.align 2, 0
_08044120: .4byte gUnknown_030005D4
_08044124:
	ldr r1, _08044144 @ =gUnknown_030005D4
	movs r0, #7
	strb r0, [r1, #2]
	strb r0, [r3, #2]
_0804412C:
	ldr r0, [sp]
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r3, #2]
	cmp r0, r3
	bne _0804413C
	b _08044580
_0804413C:
	movs r0, #0x62
	bl PlaySE
	b _08044580
	.align 2, 0
_08044144: .4byte gUnknown_030005D4
_08044148:
	cmp r4, #9
	bne _0804416C
	ldr r4, _08044168 @ =gUnknown_030005D0
	ldr r0, [r4]
	str r0, [sp]
	bl sub_08045D80
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r4, [r4, #2]
	cmp r0, r4
	beq _0804418A
	bl sub_0803F3E0
	b _0804418A
	.align 2, 0
_08044168: .4byte gUnknown_030005D0
_0804416C:
	ldr r4, _08044190 @ =gUnknown_030005D0
	ldr r0, [r4]
	str r0, [sp]
	bl sub_080453DC
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r4, [r4, #2]
	cmp r0, r4
	beq _0804418A
	bl sub_0803F3E0
	ldr r1, _08044194 @ =gUnknown_030005C0
	movs r0, #0
	strb r0, [r1]
_0804418A:
	bl sub_08045E14
	b _08044580
	.align 2, 0
_08044190: .4byte gUnknown_030005D0
_08044194: .4byte gUnknown_030005C0
_08044198:
	ldrh r1, [r5]
	cmp r1, #0x20
	beq _080441C8
	cmp r1, #0x20
	bgt _080441A8
	cmp r1, #0x10
	beq _080441B2
	b _08044580
_080441A8:
	cmp r1, #0x40
	beq _0804420C
	cmp r1, #0x80
	beq _080441DC
	b _08044580
_080441B2:
	ldr r1, _080441C4 @ =gUnknown_030005E0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080441BC
	b _08044580
_080441BC:
	subs r0, #1
	strb r0, [r1]
	b _08044580
	.align 2, 0
_080441C4: .4byte gUnknown_030005E0
_080441C8:
	ldr r1, _080441D8 @ =gUnknown_030005E0
	ldrb r0, [r1]
	cmp r0, #4
	bls _080441D2
	b _08044580
_080441D2:
	adds r0, #1
	strb r0, [r1]
	b _08044580
	.align 2, 0
_080441D8: .4byte gUnknown_030005E0
_080441DC:
	ldr r1, _080441F0 @ =gUnknown_030005E0
	adds r0, r1, #1
	ldrb r1, [r1]
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _080441F4
	movs r0, #9
	b _080441F6
	.align 2, 0
_080441F0: .4byte gUnknown_030005E0
_080441F4:
	subs r0, #1
_080441F6:
	strb r0, [r1]
	bl sub_08045FD4
	ldr r4, _08044208 @ =gUnknown_030005E0
	ldr r1, [r4, #8]
	cmp r0, r1
	bhi _08044234
	b _08044244
	.align 2, 0
_08044208: .4byte gUnknown_030005E0
_0804420C:
	ldr r1, _08044220 @ =gUnknown_030005E0
	adds r0, r1, #1
	ldrb r1, [r1]
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #9
	bne _08044224
	movs r0, #0
	b _08044226
	.align 2, 0
_08044220: .4byte gUnknown_030005E0
_08044224:
	adds r0, #1
_08044226:
	strb r0, [r1]
	bl sub_08045FD4
	ldr r4, _08044240 @ =gUnknown_030005E0
	ldr r1, [r4, #8]
	cmp r0, r1
	bls _08044244
_08044234:
	str r1, [r4, #0xc]
	adds r0, r1, #0
	bl sub_08045EA8
	b _08044580
	.align 2, 0
_08044240: .4byte gUnknown_030005E0
_08044244:
	bl sub_08045FD4
	str r0, [r4, #0xc]
	b _08044580
_0804424C:
	ldrh r1, [r5]
	cmp r1, #0x10
	beq _08044258
	cmp r1, #0x20
	beq _08044270
	b _08044580
_08044258:
	ldr r4, _0804426C @ =gUnknown_030005BD
	ldrb r0, [r4]
	cmp r0, #0
	beq _08044266
	movs r0, #0x62
	bl PlaySE
_08044266:
	movs r0, #0
	strb r0, [r4]
	b _08044580
	.align 2, 0
_0804426C: .4byte gUnknown_030005BD
_08044270:
	ldr r4, _08044284 @ =gUnknown_030005BD
	ldrb r0, [r4]
	cmp r0, #0
	bne _0804427E
	movs r0, #0x62
	bl PlaySE
_0804427E:
	movs r0, #1
	strb r0, [r4]
	b _08044580
	.align 2, 0
_08044284: .4byte gUnknown_030005BD
_08044288:
	ldrh r1, [r5]
	cmp r1, #0x20
	beq _080442B4
	cmp r1, #0x20
	bgt _08044298
	cmp r1, #0x10
	beq _080442A2
	b _080443B6
_08044298:
	cmp r1, #0x40
	beq _080442FC
	cmp r1, #0x80
	beq _080442D0
	b _080443B6
_080442A2:
	ldr r0, _080442B0 @ =gUnknown_030005D4
	bl sub_0803FC00
	cmp r0, #0
	bne _080442BE
	b _08044370
	.align 2, 0
_080442B0: .4byte gUnknown_030005D4
_080442B4:
	ldr r0, _080442CC @ =gUnknown_030005D4
	bl sub_0803FD3C
	cmp r0, #0
	beq _08044370
_080442BE:
	movs r0, #0x62
	bl PlaySE
	bl sub_08041404
	b _080443B6
	.align 2, 0
_080442CC: .4byte gUnknown_030005D4
_080442D0:
	ldr r4, _080442E4 @ =gUnknown_030005D4
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080442E8
	movs r0, #0
	b _080442F8
	.align 2, 0
_080442E4: .4byte gUnknown_030005D4
_080442E8:
	bl GetPlayerClass
	cmp r0, #1
	beq _08044390
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _08044390
	adds r0, #1
_080442F8:
	strb r0, [r4, #3]
	b _08044390
_080442FC:
	ldr r1, _08044308 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0804430C
	subs r0, #1
	b _0804430E
	.align 2, 0
_08044308: .4byte gUnknown_030005D4
_0804430C:
	movs r0, #3
_0804430E:
	strb r0, [r1, #3]
	bl GetPlayerClass
	cmp r0, #1
	beq _080443B0
	ldr r1, _08044324 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	cmp r0, #2
	bne _080443B0
	subs r0, #1
	b _080443AE
	.align 2, 0
_08044324: .4byte gUnknown_030005D4
_08044328:
	ldrh r1, [r5]
	cmp r1, #0x20
	beq _08044354
	cmp r1, #0x20
	bgt _08044338
	cmp r1, #0x10
	beq _08044342
	b _080443B6
_08044338:
	cmp r1, #0x40
	beq _0804439C
	cmp r1, #0x80
	beq _0804437C
	b _080443B6
_08044342:
	ldr r0, _08044350 @ =gUnknown_030005D4
	bl sub_0803FC00
	cmp r0, #0
	bne _0804435E
	b _08044370
	.align 2, 0
_08044350: .4byte gUnknown_030005D4
_08044354:
	ldr r0, _0804436C @ =gUnknown_030005D4
	bl sub_0803FD3C
	cmp r0, #0
	beq _08044370
_0804435E:
	movs r0, #0x62
	bl PlaySE
	bl sub_0804142C
	b _080443B6
	.align 2, 0
_0804436C: .4byte gUnknown_030005D4
_08044370:
	cmp r4, #0
	beq _080443B6
	movs r0, #0x61
	bl PlaySE
	b _080443B6
_0804437C:
	ldr r1, _08044398 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08044390
	movs r0, #0
	strb r0, [r1, #3]
_08044390:
	movs r0, #0x62
	bl PlaySE
	b _080443B6
	.align 2, 0
_08044398: .4byte gUnknown_030005D4
_0804439C:
	ldr r1, _080443A8 @ =gUnknown_030005D4
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _080443AC
	subs r0, #1
	b _080443AE
	.align 2, 0
_080443A8: .4byte gUnknown_030005D4
_080443AC:
	movs r0, #7
_080443AE:
	strb r0, [r1, #3]
_080443B0:
	movs r0, #0x62
	bl PlaySE
_080443B6:
	ldr r0, _080443C0 @ =gUnknown_030005D0
	ldr r1, _080443C4 @ =gUnknown_030005D4
	ldrb r1, [r1, #3]
	strb r1, [r0, #3]
	b _08044580
	.align 2, 0
_080443C0: .4byte gUnknown_030005D0
_080443C4: .4byte gUnknown_030005D4
_080443C8:
	ldr r5, _080443EC @ =gUnknown_030005D0
	ldr r0, [r5]
	str r0, [sp]
	bl sub_0804152C
	adds r4, r0, #0
	ldr r3, [r4]
	ldr r0, _080443F0 @ =0x030005C2
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _0804444A
	cmp r0, #0x20
	bgt _080443F8
	cmp r0, #0x10
	beq _08044408
	ldr r6, _080443F4 @ =gUnknown_030005D4
	b _080444F8
	.align 2, 0
_080443EC: .4byte gUnknown_030005D0
_080443F0: .4byte 0x030005C2
_080443F4: .4byte gUnknown_030005D4
_080443F8:
	cmp r0, #0x40
	beq _080444C8
	cmp r0, #0x80
	beq _080444E0
	ldr r6, _08044404 @ =gUnknown_030005D4
	b _080444F8
	.align 2, 0
_08044404: .4byte gUnknown_030005D4
_08044408:
	ldr r0, _0804441C @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xd
	beq _08044432
	cmp r1, #0xd
	bgt _08044420
	cmp r1, #0xc
	beq _08044426
	b _080444F8
	.align 2, 0
_0804441C: .4byte gUnknown_030005D4
_08044420:
	cmp r1, #0xe
	beq _0804443E
	b _080444F8
_08044426:
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _080444F8
	adds r1, r0, #1
	b _08044474
_08044432:
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _080444F8
	adds r1, r0, #1
	b _08044492
_0804443E:
	lsls r0, r3, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _080444F8
	adds r0, #1
	b _080444B2
_0804444A:
	ldr r0, _08044460 @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xd
	beq _08044488
	cmp r1, #0xd
	bgt _08044464
	cmp r1, #0xc
	beq _0804446A
	b _080444F8
	.align 2, 0
_08044460: .4byte gUnknown_030005D4
_08044464:
	cmp r1, #0xe
	beq _080444A8
	b _080444F8
_0804446A:
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _080444F8
	subs r1, r0, #1
_08044474:
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	b _080444F8
_08044488:
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _080444F8
	subs r1, r0, #1
_08044492:
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r4]
	ldr r0, _080444A4 @ =0xFFFFF07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	b _080444F8
	.align 2, 0
_080444A4: .4byte 0xFFFFF07F
_080444A8:
	lsls r0, r3, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _080444F8
	subs r0, #1
_080444B2:
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, _080444C4 @ =0xFFFE0FFF
	ands r1, r3
	orrs r1, r0
	str r1, [r4]
	b _080444F8
	.align 2, 0
_080444C4: .4byte 0xFFFE0FFF
_080444C8:
	ldr r0, _080444D8 @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xc
	beq _080444DC
	subs r0, r1, #1
	b _080444F6
	.align 2, 0
_080444D8: .4byte gUnknown_030005D4
_080444DC:
	movs r0, #0xf
	b _080444F6
_080444E0:
	ldr r0, _080444F0 @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xf
	beq _080444F4
	adds r0, r1, #1
	b _080444F6
	.align 2, 0
_080444F0: .4byte gUnknown_030005D4
_080444F4:
	movs r0, #0xc
_080444F6:
	strb r0, [r5, #2]
_080444F8:
	ldr r1, _08044510 @ =gUnknown_030005D0
	ldr r0, [r1]
	str r0, [r6]
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _08044514
	bl sub_0803F3E0
	b _08044524
	.align 2, 0
_08044510: .4byte gUnknown_030005D0
_08044514:
	ldr r0, [r4]
	ldr r1, _08044560 @ =0x0001FFFC
	ands r0, r1
	ands r3, r1
	cmp r0, r3
	beq _08044524
	bl sub_0803F3E0
_08044524:
	bl ApplyMenuChanges
	ldr r3, _08044564 @ =gPaletteBuffer
	ldr r2, [r4]
	lsls r1, r2, #0xf
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0xa
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	orrs r2, r1
	movs r1, #0xf1
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #0
	strh r2, [r0]
	ldr r0, _08044568 @ =gPaletteBufferQueued
	strh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	b _08044580
	.align 2, 0
_08044560: .4byte 0x0001FFFC
_08044564: .4byte gPaletteBuffer
_08044568: .4byte gPaletteBufferQueued
_0804456C:
	ldr r2, _08044588 @ =gUnknown_030005D0
	ldrb r0, [r2, #3]
	cmp r0, #0x32
	bne _0804457A
	ldr r1, _0804458C @ =gUnknown_030005BC
	movs r0, #1
	strb r0, [r1]
_0804457A:
	ldrb r0, [r2, #3]
	adds r0, #1
	strb r0, [r2, #3]
_08044580:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044588: .4byte gUnknown_030005D0
_0804458C: .4byte gUnknown_030005BC

	thumb_func_start sub_08044590
sub_08044590: @ 0x08044590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	bl sub_0803FCD8
	cmp r0, #0
	beq _080445A4
	bl _08045104
_080445A4:
	ldr r0, _0804464C @ =0x030005C2
	ldrh r3, [r0]
	cmp r3, #0
	beq _080445B0
	bl _08045104
_080445B0:
	ldr r0, _08044650 @ =gUnknown_030005B8
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	bhi _080445CA
	ldr r0, _08044654 @ =gUnknown_030005D4
	ldr r1, _08044658 @ =gUnknown_030005D0
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _080445CA
	bl _08045104
_080445CA:
	ldr r2, _0804465C @ =0x030005C4
	strh r3, [r2]
	ldr r3, _08044660 @ =gKeysNew
	ldrh r1, [r3]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080445E4
	strh r5, [r2]
	ldr r1, _08044664 @ =0x030005C1
	movs r0, #1
	strb r0, [r1]
_080445E4:
	ldrh r3, [r3]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r3
	adds r1, r3, #0
	cmp r0, #0
	beq _080445F4
	strh r4, [r2]
_080445F4:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08044602
	strh r4, [r2]
_08044602:
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08044610
	strh r4, [r2]
_08044610:
	ldr r0, _08044668 @ =gKeysHeld
	ldrh r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08044622
	ldr r1, _08044664 @ =0x030005C1
	movs r0, #0
	strb r0, [r1]
_08044622:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08044632
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
_08044632:
	ldrh r0, [r2]
	cmp r0, #1
	beq _0804463A
	b _08044C5E
_0804463A:
	ldrb r0, [r6]
	cmp r0, #0x10
	bls _08044642
	b _08044C5E
_08044642:
	lsls r0, r0, #2
	ldr r1, _0804466C @ =_08044670
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804464C: .4byte 0x030005C2
_08044650: .4byte gUnknown_030005B8
_08044654: .4byte gUnknown_030005D4
_08044658: .4byte gUnknown_030005D0
_0804465C: .4byte 0x030005C4
_08044660: .4byte gKeysNew
_08044664: .4byte 0x030005C1
_08044668: .4byte gKeysHeld
_0804466C: .4byte _08044670
_08044670: @ jump table
	.4byte _080446C8 @ case 0
	.4byte _08044848 @ case 1
	.4byte _08044818 @ case 2
	.4byte _08044A9C @ case 3
	.4byte _08044A02 @ case 4
	.4byte _08044A4C @ case 5
	.4byte _08044BC4 @ case 6
	.4byte _08044B38 @ case 7
	.4byte _08044BE0 @ case 8
	.4byte _08044B38 @ case 9
	.4byte _08044C04 @ case 10
	.4byte _08044C5E @ case 11
	.4byte _080446B4 @ case 12
	.4byte _08044C5E @ case 13
	.4byte _08044C5E @ case 14
	.4byte _08044C5E @ case 15
	.4byte _08044B6A @ case 16
_080446B4:
	movs r0, #0xf
	bl PlaySE
	ldr r1, _080446C4 @ =gUnknown_030005B8
	movs r0, #0xe
	strb r0, [r1]
	b _08044C5E
	.align 2, 0
_080446C4: .4byte gUnknown_030005B8
_080446C8:
	ldr r0, _080446E0 @ =gUnknown_030005B9
	ldrb r2, [r0]
	cmp r2, #8
	bne _0804470C
	ldr r0, _080446E4 @ =gUnknown_030005D4
	ldrb r1, [r0, #2]
	adds r3, r0, #0
	cmp r1, #7
	bne _080446E8
	movs r0, #6
	strb r0, [r6]
	b _080446EA
	.align 2, 0
_080446E0: .4byte gUnknown_030005B9
_080446E4: .4byte gUnknown_030005D4
_080446E8:
	strb r2, [r6]
_080446EA:
	movs r1, #0
	strb r1, [r3, #3]
	ldr r0, _08044708 @ =gUnknown_030005D0
	strb r1, [r0, #3]
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #1
	movs r3, #6
	bl sub_080044E4
	b _08044BF4
	.align 2, 0
_08044708: .4byte gUnknown_030005D0
_0804470C:
	cmp r2, #9
	bne _0804477C
	bl sub_0804152C
	adds r2, r0, #0
	ldr r3, _08044730 @ =gUnknown_030005D4
	ldrb r0, [r3, #2]
	cmp r0, #9
	bne _0804473A
	ldr r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08044734
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	b _0804474C
	.align 2, 0
_08044730: .4byte gUnknown_030005D4
_08044734:
	ldrb r0, [r2]
	movs r1, #1
	b _08044756
_0804473A:
	cmp r0, #0xa
	bne _0804475C
	ldr r0, [r2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08044752
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
_0804474C:
	ands r0, r1
	strb r0, [r2]
	b _0804476E
_08044752:
	ldrb r0, [r2]
	movs r1, #2
_08044756:
	orrs r0, r1
	strb r0, [r2]
	b _0804476E
_0804475C:
	cmp r0, #0xb
	bne _0804476E
	movs r1, #0xc
	strb r1, [r3, #2]
	ldr r0, _08044774 @ =gUnknown_030005D0
	strb r1, [r0, #2]
	ldr r1, _08044778 @ =gUnknown_030005B8
	movs r0, #0xa
	strb r0, [r1]
_0804476E:
	bl ApplyMenuChanges
	b _08044BF4
	.align 2, 0
_08044774: .4byte gUnknown_030005D0
_08044778: .4byte gUnknown_030005B8
_0804477C:
	cmp r2, #7
	bne _080447CC
	bl sub_08046004
	bl sub_0804087C
	adds r6, r0, #0
	bl sub_08040900
	adds r5, r0, #0
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	cmp r4, r5
	blo _080447C4
	adds r0, r6, #0
	bl IsItemUnappraised
	cmp r0, #0
	beq _080447C4
	movs r0, #0xf
	bl PlaySE
	ldr r1, _080447BC @ =gUnknown_030005B8
	movs r0, #3
	strb r0, [r1]
	ldr r1, _080447C0 @ =gUnknown_030005BD
	b _0804491A
	.align 2, 0
_080447BC: .4byte gUnknown_030005B8
_080447C0: .4byte gUnknown_030005BD
_080447C4:
	movs r0, #0x61
	bl PlaySE
	b _08044C5E
_080447CC:
	bl sub_08046004
	bl sub_08040120
	cmp r0, #0
	bne _080447DA
	b _08044C5E
_080447DA:
	bl sub_08040C98
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08044810
	ldr r1, _08044808 @ =gUnknown_030005B8
	movs r0, #2
	strb r0, [r1]
	ldr r4, _0804480C @ =gUnknown_030005E0
	ldr r0, [r6]
	lsrs r0, r0, #0xf
	str r0, [r4, #0xc]
	ldr r0, [r6]
	lsrs r0, r0, #0xf
	str r0, [r4, #8]
	bl sub_08045EA8
	movs r0, #0
	strb r0, [r4]
	b _08044C5E
	.align 2, 0
_08044808: .4byte gUnknown_030005B8
_0804480C: .4byte gUnknown_030005E0
_08044810:
	ldr r1, _08044814 @ =gUnknown_030005B8
	b _0804491A
	.align 2, 0
_08044814: .4byte gUnknown_030005B8
_08044818:
	ldr r0, _08044828 @ =gUnknown_030005E0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0804482C
	movs r0, #0
	bl sub_08040DA4
	b _08044A94
	.align 2, 0
_08044828: .4byte gUnknown_030005E0
_0804482C:
	ldr r0, [r0, #8]
	cmp r0, r1
	beq _0804483A
	movs r0, #1
	bl sub_08040DA4
	b _08044840
_0804483A:
	movs r0, #0
	bl sub_08040DA4
_08044840:
	ldr r1, _08044844 @ =gUnknown_030005B8
	b _0804491A
	.align 2, 0
_08044844: .4byte gUnknown_030005B8
_08044848:
	ldr r1, _08044870 @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	bl sub_08046004
	ldr r1, _08044874 @ =gUnknown_030005E0
	bl sub_080402B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	subs r0, #1
	cmp r0, #0xc
	bls _08044866
	b _08044C5E
_08044866:
	lsls r0, r0, #2
	ldr r1, _08044878 @ =_0804487C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044870: .4byte gUnknown_030005BD
_08044874: .4byte gUnknown_030005E0
_08044878: .4byte _0804487C
_0804487C: @ jump table
	.4byte _080448B8 @ case 0
	.4byte _080448D0 @ case 1
	.4byte _08044928 @ case 2
	.4byte _080449FC @ case 3
	.4byte _080448C4 @ case 4
	.4byte _080448C4 @ case 5
	.4byte _080448B0 @ case 6
	.4byte _080448B8 @ case 7
	.4byte _08044928 @ case 8
	.4byte _080448B8 @ case 9
	.4byte _080448C4 @ case 10
	.4byte _080448C4 @ case 11
	.4byte _080448B8 @ case 12
_080448B0:
	ldr r1, _080448B4 @ =gUnknown_030005BC
	b _0804491A
	.align 2, 0
_080448B4: .4byte gUnknown_030005BC
_080448B8:
	ldr r1, _080448C0 @ =gUnknown_030005BF
	movs r0, #1
	strb r0, [r1]
	b _08044B2C
	.align 2, 0
_080448C0: .4byte gUnknown_030005BF
_080448C4:
	ldr r1, _080448CC @ =gUnknown_030005BF
	movs r0, #2
	strb r0, [r1]
	b _08044B2C
	.align 2, 0
_080448CC: .4byte gUnknown_030005BF
_080448D0:
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040900
	adds r5, r0, #0
	cmp r5, #0
	bne _080448E2
	movs r5, #1
_080448E2:
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080412A0
	bl sub_08040EC0
	adds r0, r5, #0
	bl sub_08040E54
	bl ApplyMenuChanges
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _08044920 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x63
	bl PlaySE
	ldr r1, _08044924 @ =gUnknown_030005BF
_0804491A:
	movs r0, #1
	strb r0, [r1]
	b _08044C5E
	.align 2, 0
_08044920: .4byte gUnknown_030005B8
_08044924: .4byte gUnknown_030005BF
_08044928:
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_08040DB0
	cmp r4, r0
	blt _080449FC
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040CA4
	ldrb r7, [r0, #3]
	adds r0, r6, #0
	bl sub_08040DB0
	adds r5, r0, #0
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080412A0
	bl sub_08040D08
	cmp r0, r5
	bhs _08044986
	bl sub_08040D08
	subs r0, r5, r0
	bl sub_08040E10
	bl sub_08040D08
	bl sub_08040DBC
	b _0804498C
_08044986:
	adds r0, r5, #0
	bl sub_08040DBC
_0804498C:
	ldr r0, _080449D4 @ =gUnknown_030005D0
	bl sub_08040ED8
	bl ApplyMenuChanges
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _080449D8 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x63
	bl PlaySE
	ldr r1, _080449DC @ =gUnknown_030005BF
	movs r0, #2
	strb r0, [r1]
	mov r0, r8
	cmp r0, #9
	beq _080449BA
	b _08044C5E
_080449BA:
	adds r0, r7, #0
	bl sub_080413C4
	ldr r0, _080449E0 @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #3
	beq _080449EE
	cmp r0, #3
	bgt _080449E4
	cmp r0, #2
	beq _080449EA
	b _08044C5E
	.align 2, 0
_080449D4: .4byte gUnknown_030005D0
_080449D8: .4byte gUnknown_030005B8
_080449DC: .4byte gUnknown_030005BF
_080449E0: .4byte gUnknown_030005B9
_080449E4:
	cmp r0, #4
	beq _080449F2
	b _08044C5E
_080449EA:
	movs r0, #0
	b _080449F4
_080449EE:
	movs r0, #1
	b _080449F4
_080449F2:
	movs r0, #2
_080449F4:
	adds r1, r7, #0
	bl sub_08014E68
	b _08044C5E
_080449FC:
	bl sub_0803F3DC
	b _08044C5E
_08044A02:
	ldr r0, _08044A34 @ =gUnknown_030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044A90
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040DB0
	adds r5, r0, #0
	bl sub_08040D08
	cmp r0, r5
	bhs _08044A38
	bl sub_08040D08
	subs r0, r5, r0
	bl sub_08040E10
	bl sub_08040D08
	bl sub_08040DBC
	b _08044A3E
	.align 2, 0
_08044A34: .4byte gUnknown_030005BD
_08044A38:
	adds r0, r5, #0
	bl sub_08040DBC
_08044A3E:
	ldr r0, _08044A48 @ =gUnknown_030005D0
	bl sub_08040ED8
	b _08044A6C
	.align 2, 0
_08044A48: .4byte gUnknown_030005D0
_08044A4C:
	ldr r0, _08044A88 @ =gUnknown_030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044A90
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040DB0
	adds r5, r0, #0
	lsrs r5, r5, #2
	bl sub_08040EC0
	adds r0, r5, #0
	bl sub_08040E54
_08044A6C:
	bl ApplyMenuChanges
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _08044A8C @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x63
	bl PlaySE
	b _08044C5E
	.align 2, 0
_08044A88: .4byte gUnknown_030005BD
_08044A8C: .4byte gUnknown_030005B8
_08044A90:
	bl sub_0804604C
_08044A94:
	movs r0, #0x64
	bl PlaySE
	b _08044C5E
_08044A9C:
	ldr r0, _08044AC4 @ =gUnknown_030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044B2C
	bl sub_08046004
	bl sub_0804087C
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08044AD2
	cmp r0, #3
	bgt _08044AC8
	cmp r0, #2
	beq _08044AD2
	b _08044AE6
	.align 2, 0
_08044AC4: .4byte gUnknown_030005BD
_08044AC8:
	cmp r0, #4
	beq _08044AD2
	cmp r0, #5
	beq _08044ADE
	b _08044AE6
_08044AD2:
	ldrb r1, [r6, #3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #3]
	b _08044AE6
_08044ADE:
	ldrb r1, [r6, #1]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #1]
_08044AE6:
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080412A0
	adds r0, r6, #0
	bl sub_08040900
	adds r5, r0, #0
	bl sub_08040D08
	cmp r0, r5
	bhs _08044B1C
	bl sub_08040D08
	subs r0, r5, r0
	bl sub_08040E10
	bl sub_08040D08
	bl sub_08040DBC
	b _08044B22
_08044B1C:
	adds r0, r5, #0
	bl sub_08040DBC
_08044B22:
	movs r0, #0x63
	bl PlaySE
	bl ApplyMenuChanges
_08044B2C:
	ldr r1, _08044B34 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	b _08044C5E
	.align 2, 0
_08044B34: .4byte gUnknown_030005B8
_08044B38:
	ldr r0, _08044B54 @ =gUnknown_030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044B5C
	bl ApplyAllocatedPoints
	bl sub_08016DC0
	ldr r1, _08044B58 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	bl sub_080413F4
	b _08044BF4
	.align 2, 0
_08044B54: .4byte gUnknown_030005BD
_08044B58: .4byte gUnknown_030005B8
_08044B5C:
	ldrb r0, [r6]
	cmp r0, #9
	bne _08044B66
	movs r0, #8
	b _08044BBA
_08044B66:
	movs r0, #6
	b _08044BBA
_08044B6A:
	ldr r0, _08044B98 @ =gUnknown_030005BD
	ldrb r1, [r0]
	cmp r1, #1
	bne _08044BB8
	ldr r0, _08044B9C @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #9
	beq _08044BAC
	movs r0, #0xf
	strb r0, [r6]
	ldr r1, _08044BA0 @ =gUnknown_030005D4
	movs r0, #0
	strb r0, [r1]
	movs r0, #3
	strb r0, [r1, #3]
	ldr r1, _08044BA4 @ =gUnknown_030005C8
	movs r0, #0xd4
	strb r0, [r1]
	movs r0, #0x70
	strb r0, [r1, #1]
	ldr r1, _08044BA8 @ =0x030005BA
	movs r0, #0x11
	b _08044BF2
	.align 2, 0
_08044B98: .4byte gUnknown_030005BD
_08044B9C: .4byte gUnknown_030005B9
_08044BA0: .4byte gUnknown_030005D4
_08044BA4: .4byte gUnknown_030005C8
_08044BA8: .4byte 0x030005BA
_08044BAC:
	ldr r0, _08044BB4 @ =gUnknown_030005BC
	strb r1, [r0]
	b _08044BF4
	.align 2, 0
_08044BB4: .4byte gUnknown_030005BC
_08044BB8:
	movs r0, #0
_08044BBA:
	strb r0, [r6]
	movs r0, #0x10
	bl PlaySE
	b _08044C5E
_08044BC4:
	bl sub_0803FA9C
	cmp r0, #0
	beq _08044C5E
	ldr r1, _08044BD8 @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044BDC @ =gUnknown_030005B8
	movs r0, #7
	b _08044BF2
	.align 2, 0
_08044BD8: .4byte gUnknown_030005BD
_08044BDC: .4byte gUnknown_030005B8
_08044BE0:
	bl HaveSkillsChanged
	cmp r0, #0
	beq _08044C5E
	ldr r1, _08044BFC @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044C00 @ =gUnknown_030005B8
	movs r0, #9
_08044BF2:
	strb r0, [r1]
_08044BF4:
	movs r0, #0xf
	bl PlaySE
	b _08044C5E
	.align 2, 0
_08044BFC: .4byte gUnknown_030005BD
_08044C00: .4byte gUnknown_030005B8
_08044C04:
	ldr r3, _08044C40 @ =gUnknown_030005D4
	ldrb r0, [r3, #2]
	cmp r0, #0xf
	bne _08044C4C
	bl sub_0804152C
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x1c
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08044C44 @ =0xFFFFF07F
	ands r0, r1
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r2]
	ldr r1, _08044C48 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r2]
	b _08044C5E
	.align 2, 0
_08044C40: .4byte gUnknown_030005D4
_08044C44: .4byte 0xFFFFF07F
_08044C48: .4byte 0xFFFE0FFF
_08044C4C:
	movs r2, #0
	movs r1, #0xb
	strb r1, [r3, #2]
	ldr r0, _08044C98 @ =gUnknown_030005D0
	strb r1, [r0, #2]
	strb r2, [r6]
	movs r0, #0xf
	bl PlaySE
_08044C5E:
	ldr r0, _08044C9C @ =0x030005C4
	ldrh r0, [r0]
	cmp r0, #2
	beq _08044C68
	b _08044E0E
_08044C68:
	ldr r0, _08044CA0 @ =gUnknown_030005B8
	ldrb r1, [r0]
	cmp r1, #0xb
	bne _08044C72
	b _08045104
_08044C72:
	cmp r1, #0xe
	bne _08044C78
	b _08045104
_08044C78:
	cmp r1, #0xf
	bne _08044C7E
	b _08045104
_08044C7E:
	cmp r1, #0xd
	bne _08044C84
	b _08045104
_08044C84:
	movs r4, #0x10
	adds r0, r1, #0
	cmp r0, #0x10
	bls _08044C8E
	b _08044DEC
_08044C8E:
	lsls r0, r0, #2
	ldr r1, _08044CA4 @ =_08044CA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044C98: .4byte gUnknown_030005D0
_08044C9C: .4byte 0x030005C4
_08044CA0: .4byte gUnknown_030005B8
_08044CA4: .4byte _08044CA8
_08044CA8: @ jump table
	.4byte _08044CFC @ case 0
	.4byte _08044DEC @ case 1
	.4byte _08044DEC @ case 2
	.4byte _08044D5C @ case 3
	.4byte _08044DEC @ case 4
	.4byte _08044DEC @ case 5
	.4byte _08044D68 @ case 6
	.4byte _08044DB4 @ case 7
	.4byte _08044D88 @ case 8
	.4byte _08044DC0 @ case 9
	.4byte _08044DCC @ case 10
	.4byte _08044DEC @ case 11
	.4byte _08044CEC @ case 12
	.4byte _08044DEC @ case 13
	.4byte _08044DEC @ case 14
	.4byte _08044DEC @ case 15
	.4byte _08044D5C @ case 16
_08044CEC:
	ldr r1, _08044CF8 @ =gUnknown_030005B8
	movs r0, #0xe
	strb r0, [r1]
	movs r4, #0
	b _08044DF0
	.align 2, 0
_08044CF8: .4byte gUnknown_030005B8
_08044CFC:
	bl sub_08007604
	cmp r0, #0
	beq _08044D06
	b _08044DF0
_08044D06:
	ldr r0, _08044D34 @ =gUnknown_030005B9
	ldrb r1, [r0]
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08044D26
	adds r0, r1, #0
	cmp r0, #9
	beq _08044D26
	cmp r0, #4
	beq _08044D26
	cmp r0, #5
	beq _08044D26
	cmp r0, #7
	bne _08044D40
_08044D26:
	ldr r1, _08044D38 @ =gUnknown_030005B8
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08044D3C @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044D34: .4byte gUnknown_030005B9
_08044D38: .4byte gUnknown_030005B8
_08044D3C: .4byte gUnknown_030005BD
_08044D40:
	cmp r0, #1
	beq _08044D48
	cmp r0, #8
	bne _08044D4E
_08044D48:
	movs r0, #0x10
	bl PlaySE
_08044D4E:
	ldr r1, _08044D58 @ =gUnknown_030005BC
	movs r0, #1
	strb r0, [r1]
	b _08045104
	.align 2, 0
_08044D58: .4byte gUnknown_030005BC
_08044D5C:
	ldr r1, _08044D64 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044D64: .4byte gUnknown_030005B8
_08044D68:
	bl sub_0803FA9C
	adds r1, r0, #0
	cmp r1, #0
	beq _08044DA8
	ldr r1, _08044D80 @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044D84 @ =gUnknown_030005B8
	movs r0, #7
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044D80: .4byte gUnknown_030005BD
_08044D84: .4byte gUnknown_030005B8
_08044D88:
	bl HaveSkillsChanged
	adds r1, r0, #0
	cmp r1, #0
	beq _08044DA8
	ldr r1, _08044DA0 @ =gUnknown_030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044DA4 @ =gUnknown_030005B8
	movs r0, #9
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044DA0: .4byte gUnknown_030005BD
_08044DA4: .4byte gUnknown_030005B8
_08044DA8:
	ldr r0, _08044DB0 @ =gUnknown_030005B8
	strb r1, [r0]
	b _08044DF0
	.align 2, 0
_08044DB0: .4byte gUnknown_030005B8
_08044DB4:
	ldr r1, _08044DBC @ =gUnknown_030005B8
	movs r0, #6
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044DBC: .4byte gUnknown_030005B8
_08044DC0:
	ldr r1, _08044DC8 @ =gUnknown_030005B8
	movs r0, #8
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044DC8: .4byte gUnknown_030005B8
_08044DCC:
	ldr r1, _08044DE0 @ =gUnknown_030005B8
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08044DE4 @ =gUnknown_030005D4
	movs r1, #0xb
	strb r1, [r0, #2]
	ldr r0, _08044DE8 @ =gUnknown_030005D0
	strb r1, [r0, #2]
	b _08044DF0
	.align 2, 0
_08044DE0: .4byte gUnknown_030005B8
_08044DE4: .4byte gUnknown_030005D4
_08044DE8: .4byte gUnknown_030005D0
_08044DEC:
	bl sub_0804604C
_08044DF0:
	ldr r0, _08044E00 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044E04
	movs r0, #0x64
	bl PlaySE
	b _08044E0E
	.align 2, 0
_08044E00: .4byte gUnknown_030005B8
_08044E04:
	cmp r4, #0
	beq _08044E0E
	adds r0, r4, #0
	bl PlaySE
_08044E0E:
	ldr r0, _08044E7C @ =0x030005C4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _08044E32
	ldr r0, _08044E80 @ =gUnknown_030005B9
	ldrb r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08044E32
	ldr r1, _08044E84 @ =gUnknown_030005BF
	movs r0, #1
	strb r0, [r1]
	bl CycleWeapon
_08044E32:
	ldr r0, _08044E7C @ =0x030005C4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08044E40
	b _080450AA
_08044E40:
	ldr r0, _08044E80 @ =gUnknown_030005B9
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	bne _08044EC4
	ldr r0, _08044E88 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #2
	beq _08044EC4
	ldr r1, _08044E8C @ =gUnknown_030005D4
	ldr r2, _08044E90 @ =gUnknown_030005D0
	ldrh r0, [r1, #2]
	ldrh r3, [r2, #2]
	cmp r0, r3
	beq _08044E60
	b _08045104
_08044E60:
	ldrb r0, [r1, #2]
	ldr r3, _08044E94 @ =gUnknown_030005BB
	cmp r0, #6
	bne _08044EA4
	ldrb r0, [r3]
	cmp r0, #3
	beq _08044E98
	ldrb r0, [r1, #3]
	adds r0, #0xf
	strb r0, [r1, #3]
	ldrb r0, [r2, #3]
	adds r0, #0xf
	b _08044EA2
	.align 2, 0
_08044E7C: .4byte 0x030005C4
_08044E80: .4byte gUnknown_030005B9
_08044E84: .4byte gUnknown_030005BF
_08044E88: .4byte gUnknown_030005B8
_08044E8C: .4byte gUnknown_030005D4
_08044E90: .4byte gUnknown_030005D0
_08044E94: .4byte gUnknown_030005BB
_08044E98:
	ldrb r0, [r1, #3]
	subs r0, #0x2d
	strb r0, [r1, #3]
	ldrb r0, [r2, #3]
	subs r0, #0x2d
_08044EA2:
	strb r0, [r2, #3]
_08044EA4:
	ldrb r0, [r3]
	cmp r0, #3
	beq _08044EAE
	adds r0, #1
	b _08044EB0
_08044EAE:
	movs r0, #0
_08044EB0:
	strb r0, [r3]
	ldr r1, _08044EC0 @ =gUnknown_030005BF
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x80
	bl PlaySE
	b _080450AA
	.align 2, 0
_08044EC0: .4byte gUnknown_030005BF
_08044EC4:
	ldrb r0, [r2]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08044ED2
	b _080450AA
_08044ED2:
	ldr r6, _08044F04 @ =gUnknown_030005B8
	ldrb r0, [r6]
	cmp r0, #2
	bne _08044EDC
	b _080450AA
_08044EDC:
	ldr r5, _08044F08 @ =gUnknown_030005D4
	ldr r4, _08044F0C @ =gUnknown_030005D0
	ldrh r0, [r5, #2]
	ldrh r1, [r4, #2]
	cmp r0, r1
	beq _08044EEA
	b _08045104
_08044EEA:
	bl sub_0803F3E0
	ldrb r7, [r6]
	cmp r7, #1
	beq _08044F34
	ldrb r0, [r5, #2]
	cmp r0, #6
	bne _08044F18
	ldr r1, _08044F10 @ =0x030005DC
	ldr r0, [r4]
	str r0, [r1]
	ldr r0, _08044F14 @ =0x030005D8
	b _08044F20
	.align 2, 0
_08044F04: .4byte gUnknown_030005B8
_08044F08: .4byte gUnknown_030005D4
_08044F0C: .4byte gUnknown_030005D0
_08044F10: .4byte 0x030005DC
_08044F14: .4byte 0x030005D8
_08044F18:
	ldr r1, _08044F2C @ =0x030005D8
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, _08044F30 @ =0x030005DC
_08044F20:
	ldr r0, [r0]
	str r0, [r4]
	adds r0, r4, #0
	bl sub_08045304
	b _08045104
	.align 2, 0
_08044F2C: .4byte 0x030005D8
_08044F30: .4byte 0x030005DC
_08044F34:
	bl sub_08040C98
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1d
	cmp r1, #7
	bne _08044F46
	b _08045104
_08044F46:
	ldrb r0, [r5, #2]
	cmp r0, #6
	beq _08044F4E
	b _0804507C
_08044F4E:
	ldrb r0, [r5, #3]
	cmp r0, #0xc
	bne _08044F56
	b _0804505C
_08044F56:
	cmp r1, #3
	beq _08044FEC
	cmp r1, #3
	bgt _08044F64
	cmp r1, #2
	beq _08044F6E
	b _0804504A
_08044F64:
	cmp r1, #4
	beq _08044FC0
	cmp r1, #5
	beq _08045018
	b _0804504A
_08044F6E:
	ldr r6, _08044F94 @ =0x030005D8
	ldrb r0, [r6, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C24
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08044F98
	strb r7, [r6, #2]
	strb r5, [r6, #3]
	b _0804505C
	.align 2, 0
_08044F94: .4byte 0x030005D8
_08044F98:
	bl sub_08046128
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #4
	cmp r5, #2
	bhi _0804505C
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08044F98
	ldr r1, _08044FBC @ =0x030005D8
	movs r0, #1
	strb r0, [r1, #2]
	strb r5, [r1, #3]
	b _0804505C
	.align 2, 0
_08044FBC: .4byte 0x030005D8
_08044FC0:
	ldr r5, _08044FE8 @ =0x030005D8
	ldrb r0, [r5, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C3C
	adds r4, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1d
	cmp r1, #0
	bne _08045044
	movs r0, #2
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	b _0804505C
	.align 2, 0
_08044FE8: .4byte 0x030005D8
_08044FEC:
	ldr r5, _08045014 @ =0x030005D8
	ldrb r0, [r5, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C3C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08045044
	movs r0, #2
	strb r0, [r5, #2]
	strb r7, [r5, #3]
	b _0804505C
	.align 2, 0
_08045014: .4byte 0x030005D8
_08045018:
	ldr r5, _08045040 @ =0x030005D8
	ldrb r0, [r5, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C3C
	adds r4, r0, #0
	ldr r0, [r4, #8]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08045044
	movs r0, #2
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	b _0804505C
	.align 2, 0
_08045040: .4byte 0x030005D8
_08045044:
	bl sub_08046128
	b _0804505C
_0804504A:
	ldr r0, _08045070 @ =0x030005D8
	ldrb r0, [r0, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08046128
_0804505C:
	ldr r2, _08045074 @ =0x030005DC
	ldr r0, _08045078 @ =gUnknown_030005D0
	ldr r1, [r0]
	str r1, [r2]
	ldr r1, _08045070 @ =0x030005D8
	ldr r1, [r1]
	str r1, [r0]
	bl sub_08045304
	b _080450AA
	.align 2, 0
_08045070: .4byte 0x030005D8
_08045074: .4byte 0x030005DC
_08045078: .4byte gUnknown_030005D0
_0804507C:
	ldr r0, _08045094 @ =0x030005D8
	ldr r1, [r5]
	str r1, [r0]
	bl sub_08040CA4
	ldrb r0, [r0, #2]
	cmp r0, #6
	bne _0804509C
	ldr r0, _08045098 @ =0x030005DC
	ldr r0, [r0]
	str r0, [r4]
	b _080450A4
	.align 2, 0
_08045094: .4byte 0x030005D8
_08045098: .4byte 0x030005DC
_0804509C:
	movs r0, #6
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
_080450A4:
	ldr r0, _080450D4 @ =gUnknown_030005D0
	bl sub_08045304
_080450AA:
	ldr r0, _080450D8 @ =0x030005C4
	ldrh r0, [r0]
	cmp r0, #4
	bne _08045104
	ldr r0, _080450DC @ =gUnknown_030005B9
	ldrb r0, [r0]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08045104
	bl sub_08045F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080450E0
	bl sub_08046004
	bl sub_0804087C
	b _080450E4
	.align 2, 0
_080450D4: .4byte gUnknown_030005D0
_080450D8: .4byte 0x030005C4
_080450DC: .4byte gUnknown_030005B9
_080450E0:
	bl sub_08040C98
_080450E4:
	cmp r0, #0
	beq _08045104
	ldr r4, _08045110 @ =gUnknown_030005C0
	ldrb r0, [r4]
	adds r0, #0x9f
	bl PlaySE
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08045104
	movs r0, #0
	strb r0, [r4]
_08045104:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045110: .4byte gUnknown_030005C0

	thumb_func_start sub_08045114
sub_08045114: @ 0x08045114
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4]
	ldr r0, _08045170 @ =gUnknown_030005B9
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080451B0
	bl sub_08045F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045174
	bl sub_08040C98
	adds r5, r0, #0
	bl sub_08040CA4
	ldrb r0, [r0, #2]
	cmp r0, #6
	bne _080451B0
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _080451B0
	adds r0, r5, #0
	bl sub_08040DB0
	str r0, [r4]
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_08040DB0
	cmp r4, r0
	bge _080451A4
	b _080451AC
	.align 2, 0
_08045170: .4byte gUnknown_030005B9
_08045174:
	ldr r1, _080451A8 @ =gUnknown_030005D4
	ldrb r0, [r1, #2]
	cmp r0, #6
	bne _080451B0
	adds r0, r1, #0
	bl sub_0804087C
	adds r5, r0, #0
	cmp r5, #0
	beq _080451B0
	bl sub_08040DB0
	str r0, [r4]
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_08040DB0
	cmp r4, r0
	blt _080451AC
_080451A4:
	movs r0, #1
	b _080451B2
	.align 2, 0
_080451A8: .4byte gUnknown_030005D4
_080451AC:
	movs r0, #2
	b _080451B2
_080451B0:
	movs r0, #0
_080451B2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080451B8
sub_080451B8: @ 0x080451B8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4]
	ldr r0, _08045204 @ =gUnknown_030005B9
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804522C
	bl sub_08045F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804520C
	ldr r1, _08045208 @ =gUnknown_030005D4
	ldrb r0, [r1, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804522C
	adds r0, r1, #0
	bl sub_0804087C
	adds r1, r0, #0
	cmp r1, #0
	beq _0804522C
	ldr r2, [r1]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0804521C
	lsrs r0, r2, #0xf
	str r0, [r4]
	movs r0, #2
	b _0804522E
	.align 2, 0
_08045204: .4byte gUnknown_030005B9
_08045208: .4byte gUnknown_030005D4
_0804520C:
	bl sub_08040C98
	adds r1, r0, #0
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _0804522C
_0804521C:
	adds r0, r1, #0
	bl sub_08040900
	str r0, [r4]
	cmp r0, #0
	beq _0804522C
	movs r0, #1
	b _0804522E
_0804522C:
	movs r0, #0
_0804522E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08045234
sub_08045234: @ 0x08045234
	push {r4, r5, lr}
	ldr r1, _0804524C @ =gUnknown_030005B9
	strb r0, [r1]
	ldrb r0, [r1]
	subs r0, #1
	cmp r0, #8
	bhi _080452F6
	lsls r0, r0, #2
	ldr r1, _08045250 @ =_08045254
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804524C: .4byte gUnknown_030005B9
_08045250: .4byte _08045254
_08045254: @ jump table
	.4byte _08045278 @ case 0
	.4byte _08045298 @ case 1
	.4byte _08045298 @ case 2
	.4byte _08045298 @ case 3
	.4byte _08045298 @ case 4
	.4byte _080452F6 @ case 5
	.4byte _08045298 @ case 6
	.4byte _080452CC @ case 7
	.4byte _080452E4 @ case 8
_08045278:
	ldr r4, _08045290 @ =gUnknown_030005D4
	movs r0, #3
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_08045304
	ldr r1, _08045294 @ =gUnknown_030005D0
	ldr r0, [r4]
	str r0, [r1]
	b _080452F6
	.align 2, 0
_08045290: .4byte gUnknown_030005D4
_08045294: .4byte gUnknown_030005D0
_08045298:
	ldr r1, _080452BC @ =gUnknown_030005B8
	movs r0, #0xb
	strb r0, [r1]
	ldr r1, _080452C0 @ =gUnknown_030005C8
	movs r0, #0xd4
	strb r0, [r1]
	movs r0, #0x70
	strb r0, [r1, #1]
	ldr r1, _080452C4 @ =0x030005BA
	movs r0, #0x11
	strb r0, [r1]
	ldr r1, _080452C8 @ =gUnknown_030005D4
	movs r0, #3
	strb r0, [r1, #2]
	movs r0, #0x4c
	strb r0, [r1]
	b _080452F6
	.align 2, 0
_080452BC: .4byte gUnknown_030005B8
_080452C0: .4byte gUnknown_030005C8
_080452C4: .4byte 0x030005BA
_080452C8: .4byte gUnknown_030005D4
_080452CC:
	ldr r2, _080452DC @ =gUnknown_030005D4
	movs r0, #7
	strb r0, [r2, #2]
	ldr r1, _080452E0 @ =gUnknown_030005D0
	ldr r0, [r2]
	str r0, [r1]
	b _080452F6
	.align 2, 0
_080452DC: .4byte gUnknown_030005D4
_080452E0: .4byte gUnknown_030005D0
_080452E4:
	ldr r5, _080452FC @ =gUnknown_030005D4
	movs r0, #9
	strb r0, [r5, #2]
	ldr r4, _08045300 @ =gUnknown_030005D0
	strb r0, [r4, #2]
	bl sub_08045D80
	ldr r0, [r4]
	str r0, [r5]
_080452F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080452FC: .4byte gUnknown_030005D4
_08045300: .4byte gUnknown_030005D0

	thumb_func_start sub_08045304
sub_08045304: @ 0x08045304
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	subs r0, #1
	cmp r0, #5
	bhi _080453D2
	lsls r0, r0, #2
	ldr r1, _0804531C @ =_08045320
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804531C: .4byte _08045320
_08045320: @ jump table
	.4byte _08045338 @ case 0
	.4byte _08045348 @ case 1
	.4byte _08045376 @ case 2
	.4byte _0804538C @ case 3
	.4byte _0804539A @ case 4
	.4byte _080453A2 @ case 5
_08045338:
	ldrb r0, [r5, #3]
	lsls r0, r0, #4
	movs r1, #0x2c
	subs r1, r1, r0
	strb r1, [r5]
	ldrb r0, [r5, #3]
	lsls r0, r0, #3
	b _080453CE
_08045348:
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _08045356
	movs r0, #0x3c
	strb r0, [r5]
	movs r0, #0x3f
	b _080453D0
_08045356:
	cmp r0, #2
	bls _08045362
	movs r0, #0x24
	strb r0, [r5]
	movs r0, #0x50
	b _080453D0
_08045362:
	cmp r0, #1
	bls _0804536E
	movs r0, #0xb
	strb r0, [r5]
	movs r0, #0x57
	b _080453D0
_0804536E:
	movs r0, #0x3c
	strb r0, [r5]
	movs r0, #0x5f
	b _080453D0
_08045376:
	ldrb r0, [r5, #3]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	adds r0, #0x58
	strb r0, [r5]
	ldrb r0, [r5, #3]
	movs r1, #5
	b _080453C6
_0804538C:
	ldrb r0, [r5, #3]
	lsls r0, r0, #4
	subs r0, #0x3f
	strb r0, [r5]
	ldrb r0, [r5, #3]
	lsls r0, r0, #3
	b _080453CE
_0804539A:
	movs r0, #0xc9
	strb r0, [r5]
	movs r0, #0x59
	b _080453D0
_080453A2:
	ldr r0, _080453D8 @ =gUnknown_030005BB
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r4, [r5, #3]
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	subs r0, #0x40
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #3
_080453C6:
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
_080453CE:
	adds r0, #0x1f
_080453D0:
	strb r0, [r5, #1]
_080453D2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080453D8: .4byte gUnknown_030005BB

	thumb_func_start sub_080453DC
sub_080453DC: @ 0x080453DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08045414 @ =gUnknown_030005CC
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _080453F2
	bl _08045D6C
_080453F2:
	ldr r0, _08045418 @ =gUnknown_030005D4
	ldr r1, _0804541C @ =gUnknown_030005D0
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _08045402
	bl _08045D6C
_08045402:
	ldr r0, _08045420 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08045424
	bl sub_08040C98
	adds r4, r0, #0
	b _08045430
	.align 2, 0
_08045414: .4byte gUnknown_030005CC
_08045418: .4byte gUnknown_030005D4
_0804541C: .4byte gUnknown_030005D0
_08045420: .4byte gUnknown_030005B8
_08045424:
	movs r1, #0x71
	rsbs r1, r1, #0
	ldr r0, [sp]
	ands r0, r1
	str r0, [sp]
	mov r4, sp
_08045430:
	ldr r1, _08045450 @ =gUnknown_030005D4
	ldrb r0, [r1, #2]
	subs r0, #1
	adds r6, r1, #0
	ldr r1, _08045454 @ =0x030005C2
	mov sb, r1
	cmp r0, #5
	bls _08045444
	bl _08045D5E
_08045444:
	lsls r0, r0, #2
	ldr r1, _08045458 @ =_0804545C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045450: .4byte gUnknown_030005D4
_08045454: .4byte 0x030005C2
_08045458: .4byte _0804545C
_0804545C: @ jump table
	.4byte _08045474 @ case 0
	.4byte _08045508 @ case 1
	.4byte _080456C8 @ case 2
	.4byte _08045ABC @ case 3
	.4byte _08045B28 @ case 4
	.4byte _08045B68 @ case 5
_08045474:
	ldr r0, _0804548C @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	bne _08045480
	b _08045B14
_08045480:
	cmp r3, #0x20
	bgt _08045490
	cmp r3, #0x10
	beq _0804549E
	bl _08045D5E
	.align 2, 0
_0804548C: .4byte 0x030005C2
_08045490:
	cmp r3, #0x40
	bne _08045496
	b _08045AF4
_08045496:
	cmp r3, #0x80
	beq _080454D0
	bl _08045D5E
_0804549E:
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080454A6
	b _08045AFC
_080454A6:
	ldr r1, _080454C8 @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r1, #2]
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	mov r8, r1
	cmp r0, #2
	bne _080454C0
	ldr r0, _080454CC @ =0x030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _080454FC
_080454C0:
	movs r0, #0
	bl _08045D5A
	.align 2, 0
_080454C8: .4byte gUnknown_030005D0
_080454CC: .4byte 0x030005BE
_080454D0:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080454DE
	bl _08045D5E
_080454DE:
	ldrb r2, [r6, #3]
	cmp r2, #0
	bne _080454F0
	ldr r1, _080454EC @ =gUnknown_030005D0
	movs r0, #2
	b _08045584
	.align 2, 0
_080454EC: .4byte gUnknown_030005D0
_080454F0:
	cmp r2, #1
	bhi _080454F6
	b _08045B1C
_080454F6:
	ldr r1, _08045504 @ =gUnknown_030005D0
	movs r0, #2
	strb r0, [r1, #2]
_080454FC:
	strb r0, [r1, #3]
	bl _08045D5E
	.align 2, 0
_08045504: .4byte gUnknown_030005D0
_08045508:
	ldrb r2, [r6, #3]
	cmp r2, #0
	bne _08045590
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _08045544
	ldr r0, _08045538 @ =0x030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _08045526
	bl _08045D5E
_08045526:
	ldr r1, _0804553C @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r1, #2]
	ldr r0, _08045540 @ =0x030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _080454FC
	movs r0, #0xa
	b _080454FC
	.align 2, 0
_08045538: .4byte 0x030005C2
_0804553C: .4byte gUnknown_030005D0
_08045540: .4byte 0x030005BE
_08045544:
	ldr r0, _0804555C @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	bne _08045550
	b _080456B0
_08045550:
	cmp r3, #0x20
	bgt _08045560
	cmp r3, #0x10
	beq _0804556C
	bl _08045D5E
	.align 2, 0
_0804555C: .4byte 0x030005C2
_08045560:
	cmp r3, #0x40
	beq _08045580
	cmp r3, #0x80
	beq _080455E2
	bl _08045D5E
_0804556C:
	ldr r0, _0804557C @ =gUnknown_030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0xa
	strb r1, [r0, #3]
	bl _08045D5E
	.align 2, 0
_0804557C: .4byte gUnknown_030005D0
_08045580:
	ldr r1, _0804558C @ =gUnknown_030005D0
	movs r0, #1
_08045584:
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	bl _08045D5E
	.align 2, 0
_0804558C: .4byte gUnknown_030005D0
_08045590:
	cmp r2, #2
	bls _080455FC
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080455CC
	ldr r0, _080455C0 @ =0x030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _080455AC
	bl _08045D5E
_080455AC:
	ldr r1, _080455C4 @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r1, #2]
	ldr r0, _080455C8 @ =0x030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _080454FC
	movs r0, #0xf
	b _080454FC
	.align 2, 0
_080455C0: .4byte 0x030005C2
_080455C4: .4byte gUnknown_030005D0
_080455C8: .4byte 0x030005BE
_080455CC:
	ldr r0, _080455E8 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _080455F0
	cmp r3, #0x20
	bgt _08045632
	cmp r3, #0x10
	beq _080455E2
	bl _08045D5E
_080455E2:
	ldr r1, _080455EC @ =gUnknown_030005D0
	movs r0, #1
	b _080454FC
	.align 2, 0
_080455E8: .4byte 0x030005C2
_080455EC: .4byte gUnknown_030005D0
_080455F0:
	ldr r1, _080455F8 @ =gUnknown_030005D0
	movs r0, #2
	b _080454FC
	.align 2, 0
_080455F8: .4byte gUnknown_030005D0
_080455FC:
	cmp r2, #1
	bls _0804564C
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _08045628
	ldr r0, _08045620 @ =0x030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _08045616
	b _08045D5E
_08045616:
	ldr r1, _08045624 @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r1, #2]
	b _08045666
	.align 2, 0
_08045620: .4byte 0x030005C2
_08045624: .4byte gUnknown_030005D0
_08045628:
	ldr r0, _08045644 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x10
	beq _080456B0
_08045632:
	cmp r3, #0x40
	beq _08045638
	b _08045D5E
_08045638:
	ldr r0, _08045648 @ =gUnknown_030005D0
	movs r1, #1
	strb r1, [r0, #2]
	movs r1, #2
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045644: .4byte 0x030005C2
_08045648: .4byte gUnknown_030005D0
_0804564C:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1d
	cmp r2, #3
	bne _08045680
	ldr r0, _08045674 @ =0x030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _08045662
	b _08045D5E
_08045662:
	ldr r1, _08045678 @ =gUnknown_030005D0
	strb r2, [r1, #2]
_08045666:
	ldr r0, _0804567C @ =0x030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bhi _08045670
	b _080454FC
_08045670:
	movs r0, #0x14
	b _080454FC
	.align 2, 0
_08045674: .4byte 0x030005C2
_08045678: .4byte gUnknown_030005D0
_0804567C: .4byte 0x030005BE
_08045680:
	ldr r0, _08045694 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _080456B0
	cmp r3, #0x20
	bgt _08045698
	cmp r3, #0x10
	beq _0804569E
	b _08045D5E
	.align 2, 0
_08045694: .4byte 0x030005C2
_08045698:
	cmp r3, #0x40
	beq _080456BC
	b _08045D5E
_0804569E:
	ldr r0, _080456AC @ =gUnknown_030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0x14
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_080456AC: .4byte gUnknown_030005D0
_080456B0:
	ldr r1, _080456B8 @ =gUnknown_030005D0
	movs r0, #3
	b _080454FC
	.align 2, 0
_080456B8: .4byte gUnknown_030005D0
_080456BC:
	ldr r1, _080456C4 @ =gUnknown_030005D0
	movs r0, #0
	b _080454FC
	.align 2, 0
_080456C4: .4byte gUnknown_030005D0
_080456C8:
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080456E0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	ldr r1, _08045714 @ =0x030005C2
	mov sb, r1
	cmp r0, #0
	beq _080456E0
	b _080457F0
_080456E0:
	ldr r2, _08045714 @ =0x030005C2
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _080456F0
	b _080457F0
_080456F0:
	ldr r0, _08045718 @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #1
	bge _080456FA
	b _08045D5E
_080456FA:
	cmp r0, #5
	ble _08045700
	b _08045D5E
_08045700:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bhi _080457C0
	lsls r0, r0, #2
	ldr r1, _0804571C @ =_08045720
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045714: .4byte 0x030005C2
_08045718: .4byte gUnknown_030005B9
_0804571C: .4byte _08045720
_08045720: @ jump table
	.4byte _08045790 @ case 0
	.4byte _08045738 @ case 1
	.4byte _08045796 @ case 2
	.4byte _08045770 @ case 3
	.4byte _08045764 @ case 4
	.4byte _08045780 @ case 5
_08045738:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0xc
	beq _080457C0
	subs r0, #0x15
	cmp r0, #5
	bls _080457C0
	bl sub_08040CA4
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	cmp r0, #6
	beq _080457C0
	ldr r0, _08045760 @ =gUnknown_030005D0
	movs r1, #2
	strb r1, [r0, #2]
	movs r1, #3
	strb r1, [r0, #3]
	b _080457C0
	.align 2, 0
_08045760: .4byte gUnknown_030005D0
_08045764:
	ldr r0, _0804576C @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #2
	b _0804579C
	.align 2, 0
_0804576C: .4byte gUnknown_030005D0
_08045770:
	ldr r0, _0804577C @ =gUnknown_030005D0
	movs r1, #2
	strb r1, [r0, #2]
	movs r1, #1
	strb r1, [r0, #3]
	b _080457C0
	.align 2, 0
_0804577C: .4byte gUnknown_030005D0
_08045780:
	ldr r1, _0804578C @ =gUnknown_030005D0
	movs r0, #2
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	b _080457C0
	.align 2, 0
_0804578C: .4byte gUnknown_030005D0
_08045790:
	ldrb r1, [r6, #3]
	cmp r1, #4
	bhi _080457A8
_08045796:
	ldr r0, _080457A4 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #1
_0804579C:
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	b _080457C0
	.align 2, 0
_080457A4: .4byte gUnknown_030005D0
_080457A8:
	ldr r2, _080457B8 @ =gUnknown_030005D0
	movs r0, #2
	strb r0, [r2, #2]
	cmp r1, #0xe
	bhi _080457BC
	movs r0, #0
	b _080457BE
	.align 2, 0
_080457B8: .4byte gUnknown_030005D0
_080457BC:
	movs r0, #1
_080457BE:
	strb r0, [r2, #3]
_080457C0:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080457E4
	ldr r0, _080457D8 @ =0x030005BE
	ldr r1, _080457DC @ =gUnknown_030005D4
	ldrb r1, [r1, #3]
	strb r1, [r0]
	ldr r2, _080457E0 @ =0x030005C2
	mov sb, r2
	b _08045D5E
	.align 2, 0
_080457D8: .4byte 0x030005BE
_080457DC: .4byte gUnknown_030005D4
_080457E0: .4byte 0x030005C2
_080457E4:
	ldr r1, _080457EC @ =0x030005BE
	movs r0, #0x19
	strb r0, [r1]
	b _08045A5E
	.align 2, 0
_080457EC: .4byte 0x030005BE
_080457F0:
	ldrb r0, [r6, #3]
	adds r0, #1
	movs r1, #5
	bl __modsi3
	cmp r0, #0
	beq _08045800
	b _08045A78
_08045800:
	mov r2, sb
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0804580E
	b _08045A78
_0804580E:
	ldr r1, _08045828 @ =gUnknown_030005B9
	ldrb r0, [r1]
	subs r0, #1
	adds r2, r1, #0
	cmp r0, #7
	bls _0804581C
	b _08045D5E
_0804581C:
	lsls r0, r0, #2
	ldr r1, _0804582C @ =_08045830
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045828: .4byte gUnknown_030005B9
_0804582C: .4byte _08045830
_08045830: @ jump table
	.4byte _08045850 @ case 0
	.4byte _08045890 @ case 1
	.4byte _08045890 @ case 2
	.4byte _08045890 @ case 3
	.4byte _08045890 @ case 4
	.4byte _08045D5E @ case 5
	.4byte _08045D5E @ case 6
	.4byte _08045D5E @ case 7
_08045850:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bhi _08045884
	ldrb r0, [r6, #3]
	cmp r0, #0x12
	bhi _08045878
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0xc
	beq _0804586A
	b _08045B58
_0804586A:
	ldr r0, _08045874 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_08045874: .4byte gUnknown_030005D0
_08045878:
	ldr r0, _08045880 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_08045880: .4byte gUnknown_030005D0
_08045884:
	ldr r0, _0804588C @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_0804588C: .4byte gUnknown_030005D0
_08045890:
	ldr r0, _080458A4 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _080458A0
	cmp r0, #4
	beq _080458A0
	cmp r0, #5
	bne _080458A8
_080458A0:
	movs r0, #1
	b _080458AA
	.align 2, 0
_080458A4: .4byte gUnknown_030005B8
_080458A8:
	movs r0, #0
_080458AA:
	cmp r0, #0
	beq _08045988
	ldrb r0, [r2]
	cmp r0, #5
	beq _08045988
	bl sub_08040CA4
	adds r1, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080458C6
	b _08045A56
_080458C6:
	ldrb r0, [r1, #2]
	cmp r0, #6
	beq _080458D8
	ldr r1, _080458D4 @ =gUnknown_030005D0
	movs r0, #0xc
	b _0804597C
	.align 2, 0
_080458D4: .4byte gUnknown_030005D0
_080458D8:
	ldr r0, _080458F4 @ =gUnknown_030005D4
	ldrb r0, [r0, #3]
	subs r0, #4
	ldr r1, _080458F8 @ =gUnknown_030005D0
	mov r8, r1
	cmp r0, #0x14
	bls _080458E8
	b _08045A50
_080458E8:
	lsls r0, r0, #2
	ldr r1, _080458FC @ =_08045900
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080458F4: .4byte gUnknown_030005D4
_080458F8: .4byte gUnknown_030005D0
_080458FC: .4byte _08045900
_08045900: @ jump table
	.4byte _08045954 @ case 0
	.4byte _08045A50 @ case 1
	.4byte _08045A50 @ case 2
	.4byte _08045A50 @ case 3
	.4byte _08045A50 @ case 4
	.4byte _08045960 @ case 5
	.4byte _08045A50 @ case 6
	.4byte _08045A50 @ case 7
	.4byte _08045A50 @ case 8
	.4byte _08045A50 @ case 9
	.4byte _0804596C @ case 10
	.4byte _08045A50 @ case 11
	.4byte _08045A50 @ case 12
	.4byte _08045A50 @ case 13
	.4byte _08045A50 @ case 14
	.4byte _08045978 @ case 15
	.4byte _08045A50 @ case 16
	.4byte _08045A50 @ case 17
	.4byte _08045A50 @ case 18
	.4byte _08045A50 @ case 19
	.4byte _08045978 @ case 20
_08045954:
	ldr r1, _0804595C @ =gUnknown_030005D0
	movs r0, #0
	b _0804597C
	.align 2, 0
_0804595C: .4byte gUnknown_030005D0
_08045960:
	ldr r1, _08045968 @ =gUnknown_030005D0
	movs r0, #3
	b _0804597C
	.align 2, 0
_08045968: .4byte gUnknown_030005D0
_0804596C:
	ldr r1, _08045974 @ =gUnknown_030005D0
	movs r0, #6
	b _0804597C
	.align 2, 0
_08045974: .4byte gUnknown_030005D0
_08045978:
	ldr r1, _08045984 @ =gUnknown_030005D0
	movs r0, #9
_0804597C:
	strb r0, [r1, #3]
	mov r8, r1
	b _08045A50
	.align 2, 0
_08045984: .4byte gUnknown_030005D0
_08045988:
	ldr r0, _080459A0 @ =gUnknown_030005D4
	ldrb r0, [r0, #3]
	subs r0, #4
	ldr r1, _080459A4 @ =gUnknown_030005D0
	mov r8, r1
	cmp r0, #0x14
	bhi _08045A38
	lsls r0, r0, #2
	ldr r1, _080459A8 @ =_080459AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080459A0: .4byte gUnknown_030005D4
_080459A4: .4byte gUnknown_030005D0
_080459A8: .4byte _080459AC
_080459AC: @ jump table
	.4byte _08045A00 @ case 0
	.4byte _08045A38 @ case 1
	.4byte _08045A38 @ case 2
	.4byte _08045A38 @ case 3
	.4byte _08045A38 @ case 4
	.4byte _08045A0C @ case 5
	.4byte _08045A38 @ case 6
	.4byte _08045A38 @ case 7
	.4byte _08045A38 @ case 8
	.4byte _08045A38 @ case 9
	.4byte _08045A18 @ case 10
	.4byte _08045A38 @ case 11
	.4byte _08045A38 @ case 12
	.4byte _08045A38 @ case 13
	.4byte _08045A38 @ case 14
	.4byte _08045A24 @ case 15
	.4byte _08045A38 @ case 16
	.4byte _08045A38 @ case 17
	.4byte _08045A38 @ case 18
	.4byte _08045A38 @ case 19
	.4byte _08045A30 @ case 20
_08045A00:
	ldr r1, _08045A08 @ =gUnknown_030005D0
	movs r0, #0
	b _08045A34
	.align 2, 0
_08045A08: .4byte gUnknown_030005D0
_08045A0C:
	ldr r1, _08045A14 @ =gUnknown_030005D0
	movs r0, #3
	b _08045A34
	.align 2, 0
_08045A14: .4byte gUnknown_030005D0
_08045A18:
	ldr r1, _08045A20 @ =gUnknown_030005D0
	movs r0, #6
	b _08045A34
	.align 2, 0
_08045A20: .4byte gUnknown_030005D0
_08045A24:
	ldr r1, _08045A2C @ =gUnknown_030005D0
	movs r0, #9
	b _08045A34
	.align 2, 0
_08045A2C: .4byte gUnknown_030005D0
_08045A30:
	ldr r1, _08045A64 @ =gUnknown_030005D0
	movs r0, #0xc
_08045A34:
	strb r0, [r1, #3]
	mov r8, r1
_08045A38:
	ldrb r0, [r2]
	cmp r0, #5
	bne _08045A50
	ldr r0, _08045A68 @ =gUnknown_030005BB
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	mov r2, r8
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	mov r1, r8
	strb r0, [r1, #3]
_08045A50:
	movs r0, #6
	mov r2, r8
	strb r0, [r2, #2]
_08045A56:
	ldr r0, _08045A6C @ =0x030005BE
	ldr r1, _08045A70 @ =gUnknown_030005D4
	ldrb r1, [r1, #3]
	strb r1, [r0]
_08045A5E:
	ldr r0, _08045A74 @ =0x030005C2
	mov sb, r0
	b _08045D5E
	.align 2, 0
_08045A64: .4byte gUnknown_030005D0
_08045A68: .4byte gUnknown_030005BB
_08045A6C: .4byte 0x030005BE
_08045A70: .4byte gUnknown_030005D4
_08045A74: .4byte 0x030005C2
_08045A78:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0x20
	beq _08045AFC
	cmp r0, #0x20
	bgt _08045A8A
	cmp r0, #0x10
	beq _08045B1C
	b _08045D5E
_08045A8A:
	cmp r0, #0x40
	beq _08045A94
	cmp r0, #0x80
	beq _08045AA8
	b _08045D5E
_08045A94:
	ldrb r0, [r6, #3]
	cmp r0, #4
	bhi _08045A9C
	b _08045D5E
_08045A9C:
	ldr r1, _08045AA4 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	subs r0, #5
	b _080454FC
	.align 2, 0
_08045AA4: .4byte gUnknown_030005D0
_08045AA8:
	ldrb r0, [r6, #3]
	cmp r0, #0x13
	bls _08045AB0
	b _08045D5E
_08045AB0:
	ldr r1, _08045AB8 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	adds r0, #5
	b _080454FC
	.align 2, 0
_08045AB8: .4byte gUnknown_030005D0
_08045ABC:
	ldr r0, _08045AD0 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _08045ADE
	cmp r3, #0x20
	bgt _08045AD4
	cmp r3, #0x10
	beq _08045B14
	b _08045D5E
	.align 2, 0
_08045AD0: .4byte 0x030005C2
_08045AD4:
	cmp r3, #0x40
	beq _08045AF4
	cmp r3, #0x80
	beq _08045B08
	b _08045D5E
_08045ADE:
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _08045AFC
	ldr r0, _08045AF0 @ =gUnknown_030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #4
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045AF0: .4byte gUnknown_030005D0
_08045AF4:
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _08045AFC
	b _08045D5E
_08045AFC:
	ldr r1, _08045B04 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	subs r0, #1
	b _080454FC
	.align 2, 0
_08045B04: .4byte gUnknown_030005D0
_08045B08:
	ldr r0, _08045B10 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_08045B10: .4byte gUnknown_030005D0
_08045B14:
	ldrb r0, [r6, #3]
	cmp r0, #1
	bls _08045B1C
	b _08045D5E
_08045B1C:
	ldr r1, _08045B24 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	adds r0, #1
	b _080454FC
	.align 2, 0
_08045B24: .4byte gUnknown_030005D0
_08045B28:
	ldr r0, _08045B38 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _08045B3C
	cmp r3, #0x40
	beq _08045B4C
	b _08045D5E
	.align 2, 0
_08045B38: .4byte 0x030005C2
_08045B3C:
	ldr r0, _08045B48 @ =gUnknown_030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0x18
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045B48: .4byte gUnknown_030005D0
_08045B4C:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bls _08045B58
	b _08045D5E
_08045B58:
	ldr r0, _08045B64 @ =gUnknown_030005D0
	movs r2, #0
	movs r1, #4
_08045B5E:
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045B64: .4byte gUnknown_030005D0
_08045B68:
	ldrb r4, [r6, #3]
	cmp r4, #0
	beq _08045B80
	ldrb r0, [r6, #3]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	ldr r2, _08045BB4 @ =0x030005C2
	mov sb, r2
	cmp r0, #0
	bne _08045C0E
_08045B80:
	ldr r2, _08045BB4 @ =0x030005C2
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _08045C0E
	ldr r2, _08045BB8 @ =gUnknown_030005D0
	movs r0, #3
	strb r0, [r2, #2]
	ldr r0, _08045BBC @ =gUnknown_030005BB
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	subs r0, r4, r0
	strb r0, [r6, #3]
	ldrb r0, [r6, #3]
	mov r8, r2
	cmp r0, #0xc
	bls _08045BAA
	b _08045D5E
_08045BAA:
	lsls r0, r0, #2
	ldr r1, _08045BC0 @ =_08045BC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045BB4: .4byte 0x030005C2
_08045BB8: .4byte gUnknown_030005D0
_08045BBC: .4byte gUnknown_030005BB
_08045BC0: .4byte _08045BC4
_08045BC4: @ jump table
	.4byte _08045BF8 @ case 0
	.4byte _08045D5E @ case 1
	.4byte _08045D5E @ case 2
	.4byte _08045BFC @ case 3
	.4byte _08045D5E @ case 4
	.4byte _08045D5E @ case 5
	.4byte _08045C00 @ case 6
	.4byte _08045D5E @ case 7
	.4byte _08045D5E @ case 8
	.4byte _08045C04 @ case 9
	.4byte _08045D5E @ case 10
	.4byte _08045D5E @ case 11
	.4byte _08045C08 @ case 12
_08045BF8:
	movs r0, #4
	b _08045C0A
_08045BFC:
	movs r0, #9
	b _08045D5A
_08045C00:
	movs r0, #0xe
	b _08045C0A
_08045C04:
	movs r0, #0x13
	b _08045D5A
_08045C08:
	movs r0, #0x18
_08045C0A:
	mov r1, r8
	b _080454FC
_08045C0E:
	ldrb r0, [r6, #3]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08045C68
	mov r2, sb
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045C68
	ldr r0, _08045C3C @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08045C36
	cmp r0, #4
	beq _08045C36
	cmp r0, #5
	bne _08045C40
_08045C36:
	movs r0, #1
	b _08045C42
	.align 2, 0
_08045C3C: .4byte gUnknown_030005B8
_08045C40:
	movs r0, #0
_08045C42:
	ldr r2, _08045C60 @ =gUnknown_030005B9
	cmp r0, #0
	beq _08045C50
	ldrb r0, [r2]
	cmp r0, #5
	beq _08045C50
	b _08045D5E
_08045C50:
	ldrb r0, [r2]
	cmp r0, #5
	bne _08045CA2
	ldr r1, _08045C64 @ =gUnknown_030005D0
	ldrb r0, [r1, #3]
	adds r0, #3
	bl _080454FC
	.align 2, 0
_08045C60: .4byte gUnknown_030005B9
_08045C64: .4byte gUnknown_030005D0
_08045C68:
	ldrb r0, [r6, #3]
	cmp r0, #0xb
	bls _08045CB4
	mov r0, sb
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08045CB4
	ldr r0, _08045C90 @ =gUnknown_030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08045C8A
	cmp r0, #4
	beq _08045C8A
	cmp r0, #5
	bne _08045C94
_08045C8A:
	movs r0, #1
	b _08045C96
	.align 2, 0
_08045C90: .4byte gUnknown_030005B8
_08045C94:
	movs r0, #0
_08045C96:
	cmp r0, #0
	beq _08045CB4
	ldr r0, _08045CAC @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #5
	beq _08045CB4
_08045CA2:
	ldr r1, _08045CB0 @ =gUnknown_030005D0
	movs r0, #0xc
	bl _080454FC
	.align 2, 0
_08045CAC: .4byte gUnknown_030005B9
_08045CB0: .4byte gUnknown_030005D0
_08045CB4:
	ldr r3, _08045CE8 @ =gUnknown_030005BB
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r6, #3]
	subs r4, r1, r0
	strb r4, [r6, #3]
	ldr r2, _08045CEC @ =gUnknown_030005D0
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r2, #3]
	subs r5, r1, r0
	strb r5, [r2, #3]
	mov r1, sb
	ldrh r0, [r1]
	mov r8, r2
	adds r7, r3, #0
	cmp r0, #0x20
	beq _08045D20
	cmp r0, #0x20
	bgt _08045CF0
	cmp r0, #0x10
	beq _08045CFA
	b _08045D42
	.align 2, 0
_08045CE8: .4byte gUnknown_030005BB
_08045CEC: .4byte gUnknown_030005D0
_08045CF0:
	cmp r0, #0x40
	beq _08045D24
	cmp r0, #0x80
	beq _08045D34
	b _08045D42
_08045CFA:
	ldrb r0, [r6, #3]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	cmp r0, #0
	beq _08045D42
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bne _08045D18
	ldr r0, _08045D1C @ =gUnknown_030005B9
	ldrb r0, [r0]
	cmp r0, #5
	bne _08045D42
_08045D18:
	adds r0, r5, #1
	b _08045D2E
	.align 2, 0
_08045D1C: .4byte gUnknown_030005B9
_08045D20:
	subs r0, r5, #1
	b _08045D3E
_08045D24:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08045D42
	subs r0, r5, #3
_08045D2E:
	mov r2, r8
	strb r0, [r2, #3]
	b _08045D42
_08045D34:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _08045D42
	adds r0, r5, #3
_08045D3E:
	mov r1, r8
	strb r0, [r1, #3]
_08045D42:
	ldrb r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r2, [r6, #3]
	adds r0, r0, r2
	strb r0, [r6, #3]
	ldrb r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	mov r1, r8
	ldrb r1, [r1, #3]
	adds r0, r0, r1
_08045D5A:
	mov r2, r8
	strb r0, [r2, #3]
_08045D5E:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	beq _08045D6C
	ldr r0, _08045D7C @ =gUnknown_030005D0
	bl sub_08045304
_08045D6C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045D7C: .4byte gUnknown_030005D0

	thumb_func_start sub_08045D80
sub_08045D80: @ 0x08045D80
	push {r4, r5, lr}
	ldr r0, _08045DA8 @ =gUnknown_030005CC
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08045E0C
	ldr r3, _08045DAC @ =gUnknown_030005D4
	ldr r0, _08045DB0 @ =gUnknown_030005D0
	ldrh r1, [r3, #2]
	adds r2, r0, #0
	ldrh r0, [r2, #2]
	cmp r1, r0
	bne _08045E0C
	ldr r0, _08045DB4 @ =0x030005C2
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x40
	beq _08045DB8
	cmp r1, #0x80
	beq _08045DC6
	b _08045DD4
	.align 2, 0
_08045DA8: .4byte gUnknown_030005CC
_08045DAC: .4byte gUnknown_030005D4
_08045DB0: .4byte gUnknown_030005D0
_08045DB4: .4byte 0x030005C2
_08045DB8:
	ldrb r0, [r3, #2]
	cmp r0, #9
	beq _08045DC2
	subs r0, #1
	b _08045DD2
_08045DC2:
	movs r0, #0xb
	b _08045DD2
_08045DC6:
	ldrb r0, [r3, #2]
	cmp r0, #0xb
	beq _08045DD0
	adds r0, #1
	b _08045DD2
_08045DD0:
	movs r0, #9
_08045DD2:
	strb r0, [r2, #2]
_08045DD4:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08045DE0
	adds r0, r2, #0
	bl sub_08045304
_08045DE0:
	ldrb r0, [r4, #2]
	cmp r0, #9
	beq _08045DF4
	cmp r0, #9
	blt _08045E0C
	cmp r0, #0xa
	beq _08045DFC
	cmp r0, #0xb
	beq _08045E04
	b _08045E0C
_08045DF4:
	movs r0, #0x50
	strb r0, [r4]
	movs r0, #0x28
	b _08045E0A
_08045DFC:
	movs r0, #0x50
	strb r0, [r4]
	movs r0, #0x48
	b _08045E0A
_08045E04:
	movs r0, #0x50
	strb r0, [r4]
	movs r0, #0x68
_08045E0A:
	strb r0, [r4, #1]
_08045E0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08045E14
sub_08045E14: @ 0x08045E14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08045E34 @ =gUnknown_030005D4
	ldr r0, _08045E38 @ =gUnknown_030005D0
	mov r8, r0
	ldrh r0, [r7, #2]
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp r0, r1
	bne _08045E40
	ldr r1, _08045E3C @ =gUnknown_030005C8
	ldr r0, [r7]
	str r0, [r1]
	b _08045E92
	.align 2, 0
_08045E34: .4byte gUnknown_030005D4
_08045E38: .4byte gUnknown_030005D0
_08045E3C: .4byte gUnknown_030005C8
_08045E40:
	mov r2, r8
	ldrb r1, [r2]
	ldrb r4, [r7]
	subs r1, r1, r4
	ldr r5, _08045E9C @ =gUnknown_030005CC
	ldrb r0, [r5, #1]
	muls r0, r1, r0
	ldrb r1, [r5]
	bl __divsi3
	ldr r6, _08045EA0 @ =gUnknown_030005C8
	adds r4, r4, r0
	strb r4, [r6]
	mov r1, r8
	ldrb r0, [r1, #1]
	ldrb r4, [r7, #1]
	subs r0, r0, r4
	ldrb r1, [r5, #1]
	muls r0, r1, r0
	ldrb r1, [r5]
	bl __divsi3
	adds r4, r4, r0
	strb r4, [r6, #1]
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5]
	cmp r0, r2
	blo _08045E92
	mov r1, r8
	ldr r0, [r1]
	str r0, [r7]
	str r0, [r6]
	movs r0, #0
	strb r0, [r5, #1]
	ldr r1, _08045EA4 @ =gUnknown_030005BF
	movs r0, #1
	strb r0, [r1]
_08045E92:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045E9C: .4byte gUnknown_030005CC
_08045EA0: .4byte gUnknown_030005C8
_08045EA4: .4byte gUnknown_030005BF

	thumb_func_start sub_08045EA8
sub_08045EA8: @ 0x08045EA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08045F18 @ =gUnknown_030005E0
	ldr r6, _08045F1C @ =0x000186A0
	adds r1, r6, #0
	bl __udivsi3
	strb r0, [r5, #6]
	ldrb r0, [r5, #6]
	muls r0, r6, r0
	subs r4, r4, r0
	ldr r6, _08045F20 @ =0x00002710
	adds r0, r4, #0
	adds r1, r6, #0
	bl __udivsi3
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	muls r0, r6, r0
	subs r4, r4, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r4, #0
	bl __udivsi3
	strb r0, [r5, #4]
	ldrb r1, [r5, #4]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r4, r4, r0
	movs r6, #0x64
	adds r0, r4, #0
	movs r1, #0x64
	bl __udivsi3
	strb r0, [r5, #3]
	ldrb r0, [r5, #3]
	muls r0, r6, r0
	subs r4, r4, r0
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r4, r4, r0
	strb r4, [r5, #1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045F18: .4byte gUnknown_030005E0
_08045F1C: .4byte 0x000186A0
_08045F20: .4byte 0x00002710
