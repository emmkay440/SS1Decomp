	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08006114
sub_08006114: @ 0x08006114
	ldr r3, _08006138 @ =0x080FB0F8
	ldr r2, _0800613C @ =gMapLayer_03003910
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	ldrh r0, [r0]
	subs r0, #2
	adds r2, #0x6c
	ldrh r2, [r2]
	cmp r0, r2
	beq _08006140
	movs r0, #0
	b _08006142
	.align 2, 0
_08006138: .4byte 0x080FB0F8
_0800613C: .4byte gMapLayer_03003910
_08006140:
	movs r0, #1
_08006142:
	bx lr

	thumb_func_start sub_08006144
sub_08006144: @ 0x08006144
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	cmp r5, #1
	beq _080061BC
	ldr r0, _08006160 @ =gPlayerStats
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080061BC
	add r4, sp, #0xc
	b _08006168
	.align 2, 0
_08006160: .4byte gPlayerStats
_08006164:
	bl WaitFrame
_08006168:
	bl sub_0800F298
	cmp r0, #0
	beq _08006164
	ldr r1, _080061D0 @ =gBgRegsBuffer
	adds r2, r1, #0
	adds r2, #0x40
	movs r3, #0
	movs r0, #0xff
	strh r0, [r2]
	adds r1, #0x44
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _080061D4 @ =0x03006920
	strb r3, [r0]
	bl sub_0804C9C4
	bl WaitFrame
	movs r1, #0x80
	lsls r1, r1, #6
	movs r0, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r0, _080061D8 @ =0x11201100
	bl _08000400
	ldr r1, _080061DC @ =0xFFFF0000
	ldr r0, [sp, #0xc]
	ands r0, r1
	ldr r1, _080061E0 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r4, #0
	bl SetBgCnt
	bl sub_08021804
	bl sub_0800F53C
_080061BC:
	ldr r0, _080061E4 @ =gPlayerStats
	ldr r3, _080061E8 @ =0x00000275
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080061EC
	bl sub_08007700
	b _080061F0
	.align 2, 0
_080061D0: .4byte gBgRegsBuffer
_080061D4: .4byte 0x03006920
_080061D8: .4byte 0x11201100
_080061DC: .4byte 0xFFFF0000
_080061E0: .4byte 0x00001C08
_080061E4: .4byte gPlayerStats
_080061E8: .4byte 0x00000275
_080061EC:
	bl sub_08007714
_080061F0:
	bl GetThreadCount
	bl GetMultiplayerId
	bl sub_08001F24
	cmp r5, #1
	bne _08006218
	ldr r0, _08006210 @ =gGameFlags
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	ldr r1, _08006214 @ =gPlayerStats
	b _0800624A
	.align 2, 0
_08006210: .4byte gGameFlags
_08006214: .4byte gPlayerStats
_08006218:
	bl sub_080076A8
	cmp r0, #0
	beq _08006238
	ldr r2, _08006230 @ =gUnknown_03003D08
	ldr r1, _08006234 @ =gPlayerStats
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	lsls r0, r0, #0xc
	b _08006246
	.align 2, 0
_08006230: .4byte gUnknown_03003D08
_08006234: .4byte gPlayerStats
_08006238:
	ldr r2, _080062B4 @ =gUnknown_03003D08
	ldr r1, _080062B8 @ =gPlayerStats
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x16
_08006246:
	lsrs r0, r0, #0x16
	str r0, [r2]
_0800624A:
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r4, r1, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bl SetMusicEnabled
	ldr r0, _080062BC @ =0x00120002
	bl GetDataRecord
	adds r1, r0, #0
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	ldr r2, _080062C0 @ =gPaletteBuffer
	ldrb r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	ldrh r0, [r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	lsls r0, r0, #0xa
	orrs r1, r0
	movs r3, #0xf1
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	bl sub_0800454C
	bl sub_0800C3C0
	bl sub_080186A8
	bl InitFieldItems
	bl sub_08022AB4
	bl sub_08018254
	bl WaitFrame
	movs r4, #0
	b _080062CE
	.align 2, 0
_080062B4: .4byte gUnknown_03003D08
_080062B8: .4byte gPlayerStats
_080062BC: .4byte 0x00120002
_080062C0: .4byte gPaletteBuffer
_080062C4:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800AF90
	adds r4, #1
_080062CE:
	bl sub_08001EC4
	cmp r4, r0
	blo _080062C4
	bl sub_08027280
	bl sub_0802901C
	bl sub_08007554
	bl sub_08004EF8
	bl sub_08020F94
	bl sub_08021180
	bl sub_0802103C
	ldr r0, _08006314 @ =gPlayerStats
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	bne _08006318
	bl sub_080074F0
	cmp r0, #0

	non_word_aligned_thumb_func_start sub_08006306
sub_08006306: @ 0x08006306
	bne _08006318
	movs r0, #0x1e
	bl sub_0800F1EC
	movs r0, #1
	str r0, [r4]
	b _0800631E
	.align 2, 0
_08006314: .4byte gPlayerStats
_08006318:
	movs r0, #6
	bl sub_0800F308
_0800631E:
	bl sub_08007554
	b _0800635C
_08006324:
	bl sub_080229E0
	cmp r0, #0
	bne _08006358
	bl sub_080076E0
	cmp r0, #0
	bne _08006358
	bl sub_08007510
	cmp r0, #0
	bne _08006358
	bl sub_08007604
	cmp r0, #0
	bne _08006358
	bl sub_08007670
	cmp r0, #0
	bne _08006358
	bl sub_080077C0
	cmp r0, #0
	bne _08006358
	bl sub_0800ED74
_08006358:
	bl WaitFrame
_0800635C:
	bl sub_08001F08
	cmp r0, #0
	bne _08006374
	bl sub_08007578
	cmp r0, #0
	bne _08006374
	bl sub_080074CC
	cmp r0, #0
	beq _08006324
_08006374:
	bl SndMPlayAllStop
	b _0800637E
_0800637A:
	bl WaitFrame
_0800637E:
	bl sub_0800F298
	cmp r0, #0
	beq _0800637A
	bl sub_08001F08
	cmp r0, #0
	beq _0800639A
	bl sub_080244F4
	bl sub_08001FA8
	bl sub_08001E40
_0800639A:
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	bl sub_08029418
	bl sub_08007500
	bl sub_0800C46C
	bl sub_08018278
	bl sub_0800F2B0
	cmp r0, #0
	bne _080063D0
	bl sub_0800F3A0
	b _080063C8
_080063C4:
	bl WaitFrame
_080063C8:
	bl sub_0800F298
	cmp r0, #0
	beq _080063C4
_080063D0:
	ldr r1, _08006404 @ =gPlayerStats
	ldr r3, _08006408 @ =0x00000275
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl QuitToTitle
	ldr r1, _0800640C @ =0x03006920
	movs r0, #1
	strb r0, [r1]
	bl sub_0804C9C4
	ldr r0, _08006410 @ =0x11201100
	bl _08000400
	movs r0, #0
	bl SoftReset
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006404: .4byte gPlayerStats
_08006408: .4byte 0x00000275
_0800640C: .4byte 0x03006920
_08006410: .4byte 0x11201100

	thumb_func_start sub_08006414
sub_08006414: @ 0x08006414
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1b4
	movs r0, #0
	str r0, [sp, #0x180]
	movs r1, #0
	str r1, [sp, #0x18c]
	bl GetMultiplayerId
	mov sl, r0
	ldr r0, _0800644C @ =0x000900DE
	bl GetDataRecord
	str r0, [sp, #0x184]
	add r5, sp, #0x174
	movs r2, #0x47
	add r2, sp
	mov sb, r2
	mov r3, sp
	adds r3, #0x3c
	str r3, [sp, #0x1a0]
	mov r4, sp
	adds r4, #0x50
	str r4, [sp, #0x1a8]
	b _08006454
	.align 2, 0
_0800644C: .4byte 0x000900DE
_08006450:
	bl WaitFrame
_08006454:
	bl sub_0800F298
	cmp r0, #0
	beq _08006450
	ldr r6, _080064DC @ =gGameFlags
	ldr r0, [r6]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6]
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0xb0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _080064E0 @ =0xFFFF0000
	add r4, sp, #0x174
	ldr r0, [r4]
	ands r0, r1
	movs r1, #0x9c
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4]
	movs r0, #1
	adds r1, r5, #0
	bl SetBgCnt
	ldr r0, _080064E4 @ =0x00009A01
	strh r0, [r4]
	movs r0, #2
	adds r1, r5, #0
	bl SetBgCnt
	movs r0, #0xf
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r4]
	bl GetDataRecord
	adds r7, r0, #0
	ldrh r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bge _080064F4
	ldr r0, [r6]
	lsrs r0, r0, #9
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080064E8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r2, r5
	movs r0, #0
	b _080064EC
	.align 2, 0
_080064DC: .4byte gGameFlags
_080064E0: .4byte 0xFFFF0000
_080064E4: .4byte 0x00009A01
_080064E8:
	movs r0, #0
	adds r1, r2, #0
_080064EC:
	movs r2, #0x10
	bl LoadPalette
	b _080064FE
_080064F4:
	movs r0, #0
	adds r1, r2, #0
	movs r2, #0x10
	bl LoadPalette
_080064FE:
	adds r0, r4, #4
	bl LZ77DecompressAlloc
	mov r8, r0
	bl WaitFrame
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08006556
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08006538
	ldr r1, _08006534 @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r7, #0
	bl QueueCopy
	ldr r7, [sp, #0x184]
	adds r7, #0xa
	str r7, [sp, #0x1a4]
	b _08006582
	.align 2, 0
_08006534: .4byte 0x06004000
_08006538:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r7, #0
	bl QueueCopy
	ldr r0, [sp, #0x184]
	adds r0, #0xa
	str r0, [sp, #0x1a4]
	b _08006582

	non_word_aligned_thumb_func_start sub_0800654E
sub_0800654E: @ 0x0800654E
	ands r0, r2
	strb r0, [r1, #3]
	bl _08007168
_08006556:
	movs r6, #0
	ldr r1, [sp, #0x184]
	adds r1, #0xa
	str r1, [sp, #0x1a4]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r4, r7, #0
_08006564:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #3
	bl QueueCopy
	bl WaitFrame
	movs r2, #0x80
	lsls r2, r2, #3
	adds r5, r5, r2
	adds r4, r4, r2
	adds r6, #1
	cmp r6, #0x1f
	bls _08006564
_08006582:
	bl WaitFrame
	ldr r1, _08006724 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	movs r0, #0x22
	bl GetDataRecord
	adds r4, r0, #0
	adds r0, r4, #4
	bl LZ77DecompressAlloc
	mov r8, r0
	bl WaitFrame
	movs r6, #0
	movs r1, #0x80
	lsls r1, r1, #1
	add r0, sp, #0x164
_080065BC:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #3
	bls _080065BC
	add r4, sp, #0x120
	ldr r1, _08006728 @ =0x00100062
	adds r0, r4, #0
	movs r2, #4
	movs r3, #1
	bl sub_08026ADC
	ldr r0, _0800672C @ =gGameFlags
	ldr r0, [r0]
	lsrs r0, r0, #9
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080065EE
	ldr r1, [r4, #0xc]
	adds r1, #0xa0
	movs r0, #0x14
	movs r2, #1
	bl LoadPalette
_080065EE:
	bl WaitFrame
	ldr r1, _08006730 @ =0x0600E000
	movs r2, #0x80
	lsls r2, r2, #5
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	ldr r6, _08006734 @ =gBgRegsBuffer
	movs r5, #0
	strh r5, [r6, #8]
	strh r5, [r6, #0xa]
	strh r5, [r6, #4]
	strh r5, [r6, #6]
	ldr r0, _08006738 @ =gPlayers
	movs r1, #0xd4
	mov r3, sl
	muls r3, r1, r3
	adds r0, #0xd0
	adds r3, r3, r0
	ldr r4, [r3]
	ldrh r2, [r4]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldr r4, [r3]
	ldrh r2, [r4, #2]
	ldr r0, _0800673C @ =0xFFFFF000
	ands r0, r2
	strh r0, [r4, #2]
	ldr r2, [r3]
	ldrb r0, [r2, #3]
	ands r1, r0
	strb r1, [r2, #3]
	movs r0, #0xb7
	lsls r0, r0, #1
	add r0, sp
	strh r5, [r0]
	add r0, sp, #0x16c
	strh r5, [r0]
	bl sub_08001F64
	cmp r0, #0
	beq _0800665C
	movs r0, #0x70
	bl PlayBGM
_0800665C:
	movs r0, #6
	bl sub_0800F308
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	movs r3, #0x78
	str r3, [sp, #0x188]
	movs r0, #0xb
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #2
	movs r1, #0x14
	movs r2, #1
	movs r3, #5
	bl sub_080044E4
	ldrh r0, [r6, #0xa]
	cmp r0, #0x59
	bhi _080066E8
	adds r4, r6, #0
	add r6, sp, #0x120
	add r5, sp, #0x16c
	movs r7, #1
_08006692:
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	ldr r0, _08006740 @ =gUnknown_03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080066DE
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0xb7
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	ldr r2, [sp, #0x188]
	lsls r0, r2, #0x10
	ldr r1, _08006744 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x188]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r5]
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x70
	movs r3, #0
	bl sub_0802706C
_080066DE:
	bl WaitFrame
	ldrh r0, [r4, #0xa]
	cmp r0, #0x59
	bls _08006692
_080066E8:
	ldr r1, _08006748 @ =0x0010005B
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x1c
	movs r2, #0
	bl sub_08026ADC
	movs r0, #0xe
	mov r2, sb
	strb r0, [r2]
	movs r0, #0xd
	ldr r3, [sp, #0x1a0]
	strb r0, [r3]
_08006702:
	bl sub_0800ED74
	ldr r0, _0800674C @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800671A
	ldr r1, _08006734 @ =gBgRegsBuffer
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
_0800671A:
	movs r6, #0
	ldr r7, _08006750 @ =0x080FB504
	ldr r5, _08006754 @ =0x03004650
	b _0800679A
	.align 2, 0
_08006724: .4byte 0x0600D000
_08006728: .4byte 0x00100062
_0800672C: .4byte gGameFlags
_08006730: .4byte 0x0600E000
_08006734: .4byte gBgRegsBuffer
_08006738: .4byte gPlayers
_0800673C: .4byte 0xFFFFF000
_08006740: .4byte gUnknown_03003D08
_08006744: .4byte 0xFFFF0000
_08006748: .4byte 0x0010005B
_0800674C: .4byte gFrameCounter
_08006750: .4byte 0x080FB504
_08006754: .4byte 0x03004650
_08006758:
	movs r0, #0x34
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, [sp, #0x1a8]
	adds r4, r0, r4
	movs r0, #0xd4
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r0, [r0]
	ldrb r0, [r0]
	movs r1, #0xc
	ands r1, r0
	ldr r0, _08006818 @ =0x03003CA8
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r1, [r1]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08026ADC
	strb r6, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xe
	strb r0, [r1]
	adds r4, #0x20
	movs r0, #0xd
	strb r0, [r4]
	adds r6, #1
_0800679A:
	bl sub_08001EC4
	cmp r6, r0
	blo _08006758
	ldr r2, [sp, #0x1a8]
	ldr r1, [r2, #0xc]
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x1e
	movs r2, #1
	bl LoadPalette
	ldr r4, [sp, #0x1a8]
	ldr r1, [r4, #0xc]
	adds r1, #0x80
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	ldr r0, _0800681C @ =gUnknown_03003D08
	ldr r0, [r0]
	str r0, [sp, #0x17c]
	ldr r1, _08006820 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	str r0, [sp, #0x178]
	ldr r7, [sp, #0x180]
	cmp r7, #0
	beq _080067EA
	ldr r1, _08006824 @ =gKeysRepeat
	movs r0, #0
	strh r0, [r1]
_080067EA:
	ldr r0, _08006824 @ =gKeysRepeat
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080067F8
	b _0800691C
_080067F8:
	movs r0, #0xe
	bl PlaySE
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	subs r0, #1
	cmp r0, #7
	bls _0800680C
	b _08006D42
_0800680C:
	lsls r0, r0, #2
	ldr r1, _08006828 @ =_0800682C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006818: .4byte 0x03003CA8
_0800681C: .4byte gUnknown_03003D08
_08006820: .4byte gPlayers
_08006824: .4byte gKeysRepeat
_08006828: .4byte _0800682C
_0800682C: @ jump table
	.4byte _0800684C @ case 0
	.4byte _0800685C @ case 1
	.4byte _08006D42 @ case 2
	.4byte _0800687C @ case 3
	.4byte _0800689C @ case 4
	.4byte _080068BC @ case 5
	.4byte _080068DC @ case 6
	.4byte _080068FC @ case 7
_0800684C:
	ldr r1, _08006858 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	b _080068A6
	.align 2, 0
_08006858: .4byte gPlayers
_0800685C:
	ldr r1, _08006878 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	b _08006CF0
	.align 2, 0
_08006878: .4byte gPlayers
_0800687C:
	ldr r1, _08006898 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006898: .4byte gPlayers
_0800689C:
	ldr r1, _080068B8 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
_080068A6:
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r2]
	b _08006D42
	.align 2, 0
_080068B8: .4byte gPlayers
_080068BC:
	ldr r1, _080068D8 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_080068D8: .4byte gPlayers
_080068DC:
	ldr r1, _080068F8 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	b _08006CF0
	.align 2, 0
_080068F8: .4byte gPlayers
_080068FC:
	ldr r1, _08006918 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_08006918: .4byte gPlayers
_0800691C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08006926
	b _08006A58
_08006926:
	movs r0, #0xe
	bl PlaySE
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #7
	bls _08006938
	b _08006D42
_08006938:
	lsls r0, r0, #2
	ldr r1, _08006944 @ =_08006948
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006944: .4byte _08006948
_08006948: @ jump table
	.4byte _08006968 @ case 0
	.4byte _08006988 @ case 1
	.4byte _080069A8 @ case 2
	.4byte _080069C8 @ case 3
	.4byte _080069E8 @ case 4
	.4byte _08006A08 @ case 5
	.4byte _08006A18 @ case 6
	.4byte _08006A38 @ case 7
_08006968:
	ldr r1, _08006984 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	b _08006CF0
	.align 2, 0
_08006984: .4byte gPlayers
_08006988:
	ldr r1, _080069A4 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_080069A4: .4byte gPlayers
_080069A8:
	ldr r1, _080069C4 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	b _08006CF0
	.align 2, 0
_080069C4: .4byte gPlayers
_080069C8:
	ldr r1, _080069E4 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_080069E4: .4byte gPlayers
_080069E8:
	ldr r1, _08006A04 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	b _08006CF0
	.align 2, 0
_08006A04: .4byte gPlayers
_08006A08:
	ldr r1, _08006A14 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	b _08006CE2
	.align 2, 0
_08006A14: .4byte gPlayers
_08006A18:
	ldr r1, _08006A34 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	b _08006CF0
	.align 2, 0
_08006A34: .4byte gPlayers
_08006A38:
	ldr r1, _08006A54 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	b _08006CF0
	.align 2, 0
_08006A54: .4byte gPlayers
_08006A58:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08006A62
	b _08006BA8
_08006A62:
	movs r0, #0xe
	bl PlaySE
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #8
	bls _08006A74
	b _08006D42
_08006A74:
	lsls r0, r0, #2
	ldr r1, _08006A80 @ =_08006A84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006A80: .4byte _08006A84
_08006A84: @ jump table
	.4byte _08006AA8 @ case 0
	.4byte _08006AC8 @ case 1
	.4byte _08006AE8 @ case 2
	.4byte _08006B08 @ case 3
	.4byte _08006B28 @ case 4
	.4byte _08006B48 @ case 5
	.4byte _08006B68 @ case 6
	.4byte _08006D42 @ case 7
	.4byte _08006B88 @ case 8
_08006AA8:
	ldr r1, _08006AC4 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006AC4: .4byte gPlayers
_08006AC8:
	ldr r1, _08006AE4 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006AE4: .4byte gPlayers
_08006AE8:
	ldr r1, _08006B04 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006B04: .4byte gPlayers
_08006B08:
	ldr r1, _08006B24 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	b _08006CF0
	.align 2, 0
_08006B24: .4byte gPlayers
_08006B28:
	ldr r1, _08006B44 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x70
	b _08006CF0
	.align 2, 0
_08006B44: .4byte gPlayers
_08006B48:
	ldr r1, _08006B64 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_08006B64: .4byte gPlayers
_08006B68:
	ldr r1, _08006B84 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _08006CF0
	.align 2, 0
_08006B84: .4byte gPlayers
_08006B88:
	ldr r1, _08006BA4 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x70
	b _08006CF0
	.align 2, 0
_08006BA4: .4byte gPlayers
_08006BA8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08006BB2
	b _08006CFC
_08006BB2:
	movs r0, #0xe
	bl PlaySE
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #8
	bls _08006BC4
	b _08006D42
_08006BC4:
	lsls r0, r0, #2
	ldr r1, _08006BD0 @ =_08006BD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006BD0: .4byte _08006BD4
_08006BD4: @ jump table
	.4byte _08006BF8 @ case 0
	.4byte _08006C18 @ case 1
	.4byte _08006C38 @ case 2
	.4byte _08006C58 @ case 3
	.4byte _08006C78 @ case 4
	.4byte _08006D42 @ case 5
	.4byte _08006C98 @ case 6
	.4byte _08006CB8 @ case 7
	.4byte _08006CD8 @ case 8
_08006BF8:
	ldr r1, _08006C14 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_08006C14: .4byte gPlayers
_08006C18:
	ldr r1, _08006C34 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_08006C34: .4byte gPlayers
_08006C38:
	ldr r1, _08006C54 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_08006C54: .4byte gPlayers
_08006C58:
	ldr r1, _08006C74 @ =gPlayers
	movs r0, #0xd4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	b _08006CF0
	.align 2, 0
_08006C74: .4byte gPlayers
_08006C78:
	ldr r1, _08006C94 @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	b _08006CF0
	.align 2, 0
_08006C94: .4byte gPlayers
_08006C98:
	ldr r1, _08006CB4 @ =gPlayers
	movs r0, #0xd4
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	b _08006CF0
	.align 2, 0
_08006CB4: .4byte gPlayers
_08006CB8:
	ldr r1, _08006CD4 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	b _08006CF0
	.align 2, 0
_08006CD4: .4byte gPlayers
_08006CD8:
	ldr r1, _08006CF8 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
_08006CE2:
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x60
_08006CF0:
	orrs r0, r1
	strh r0, [r2]
	b _08006D42
	.align 2, 0
_08006CF8: .4byte gPlayers
_08006CFC:
	ldr r0, _08006D1C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08006D20
	ldr r3, [sp, #0x180]
	cmp r3, #0
	bne _08006D42
	movs r0, #0xf
	bl PlaySE
	movs r4, #1
	str r4, [sp, #0x180]
	b _08006D42
	.align 2, 0
_08006D1C: .4byte gKeysNew
_08006D20:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006D42
	ldr r5, [sp, #0x180]
	cmp r5, #0
	beq _08006D42
	movs r0, #0x10
	bl PlaySE
	movs r7, #0
	str r7, [sp, #0x180]
	ldr r2, [r4]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #3]
_08006D42:
	ldr r2, _08006D88 @ =gPlayers
	movs r0, #0xd4
	mov r1, sl
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0xd0
	adds r5, r1, r0
	ldr r4, [r5]
	ldrh r3, [r4]
	lsrs r1, r3, #4
	movs r0, #1
	lsls r0, r1
	ldr r1, [sp, #0x17c]
	ands r0, r1
	cmp r0, #0
	bne _08006D6E
	ldr r7, [sp, #0x178]
	lsls r1, r7, #4
	movs r0, #0xf
	ands r0, r3
	orrs r0, r1
	strh r0, [r4]
_08006D6E:
	ldr r4, [r5]
	ldrh r3, [r4]
	lsrs r1, r3, #4
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08006D8C
	movs r0, #0xf
	ands r0, r3
	movs r1, #0x80
	orrs r0, r1
	b _08006D94
	.align 2, 0
_08006D88: .4byte gPlayers
_08006D8C:
	cmp r1, #8
	ble _08006D96
	movs r0, #0xf
	ands r0, r3
_08006D94:
	strh r0, [r4]
_08006D96:
	ldr r0, [sp, #0x180]
	cmp r0, #0
	beq _08006DB4
	movs r0, #0xd4
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #3]
	movs r1, #0xf0
	orrs r0, r1
	strb r0, [r2, #3]
_08006DB4:
	movs r6, #0
	movs r0, #0x34
	mov r2, sl
	muls r2, r0, r2
	str r2, [sp, #0x190]
	ldr r5, [sp, #0x1a8]
	movs r3, #0
	str r3, [sp, #0x1b0]
	b _08006F6A
_08006DC6:
	movs r0, #0xd4
	muls r0, r6, r0
	ldr r4, _08006E08 @ =0x03004650
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x14
	cmp r4, #0
	beq _08006DDC
	b _08006F60
_08006DDC:
	cmp r6, sl
	bne _08006E14
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r7, _08006E0C @ =0x080FB564
	adds r1, r0, r7
	ldrh r1, [r1]
	ldr r2, _08006E10 @ =0x080FB566
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r3, sl
	adds r3, #9
	lsls r3, r3, #0x10
	str r4, [sp]
	ldr r4, [sp, #0x1a8]
	ldr r7, [sp, #0x190]
	adds r0, r4, r7
	lsrs r3, r3, #0x10
	bl sub_08026B90
	b _08006E34
	.align 2, 0
_08006E08: .4byte 0x03004650
_08006E0C: .4byte 0x080FB564
_08006E10: .4byte 0x080FB566
_08006E14:
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r2, _08006EA4 @ =0x080FB564
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _08006EA8 @ =0x080FB566
	adds r0, r0, r3
	ldrh r2, [r0]
	adds r3, r6, #5
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r5, #0
	bl sub_08026B90
_08006E34:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x154
	lsls r4, r6, #1
	adds r7, r0, r4
	add r3, sp, #0x15c
	adds r3, r3, r4
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	mov r1, sb
	adds r2, r7, #0
	bl sub_08026C40
	movs r0, #0xd4
	muls r0, r6, r0
	ldr r1, _08006EAC @ =0x03004650
	adds r2, r0, r1
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	cmp r0, #0xf
	beq _08006F00
	add r0, sp, #0x164
	adds r4, r0, r4
	ldrh r0, [r4]
	subs r0, #0x80
	movs r3, #0
	mov r8, r3
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bgt _08006EB0
	strh r1, [r4]
	ldr r0, [r2]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r4, _08006EA4 @ =0x080FB564
	adds r1, r0, r4
	ldrh r1, [r1]
	ldr r2, _08006EA8 @ =0x080FB566
	adds r0, r0, r2
	ldrh r2, [r0]
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r5, #0
	mov r3, sb
	bl sub_08026B90
	b _08006F60
	.align 2, 0
_08006EA4: .4byte 0x080FB564
_08006EA8: .4byte 0x080FB566
_08006EAC: .4byte 0x03004650
_08006EB0:
	ldr r0, [r2]
	ldrh r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #2
	ldr r3, _08006EF8 @ =0x080FB564
	adds r0, r1, r3
	ldrh r0, [r0]
	ldr r2, _08006EFC @ =0x080FB566
	adds r1, r1, r2
	ldrh r1, [r1]
	ldrh r3, [r7]
	mov r7, r8
	str r7, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x58
	ldr r7, [sp, #0x1b0]
	adds r2, r2, r7
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r7, #0
	ldrsh r2, [r4, r7]
	str r2, [sp, #0x10]
	movs r7, #0
	ldrsh r2, [r4, r7]
	str r2, [sp, #0x14]
	mov r2, r8
	str r2, [sp, #0x18]
	mov r2, sb
	bl sub_08003724
	b _08006F60
	.align 2, 0
_08006EF8: .4byte 0x080FB564
_08006EFC: .4byte 0x080FB566
_08006F00:
	add r0, sp, #0x164
	adds r4, r0, r4
	ldrh r0, [r4]
	adds r0, #0x80
	movs r3, #0
	mov r8, r3
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _08006F1C
	strh r1, [r4]
_08006F1C:
	ldr r0, [r2]
	ldrh r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #2
	ldr r2, _08006FB4 @ =0x080FB564
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r3, _08006FB8 @ =0x080FB566
	adds r1, r1, r3
	ldrh r1, [r1]
	ldrh r3, [r7]
	mov r7, r8
	str r7, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x58
	ldr r7, [sp, #0x1b0]
	adds r2, r2, r7
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r7, #0
	ldrsh r2, [r4, r7]
	str r2, [sp, #0x10]
	movs r7, #0
	ldrsh r2, [r4, r7]
	str r2, [sp, #0x14]
	mov r2, r8
	str r2, [sp, #0x18]
	mov r2, sb
	bl sub_08003724
_08006F60:
	adds r5, #0x34
	ldr r3, [sp, #0x1b0]
	adds r3, #0x34
	str r3, [sp, #0x1b0]
	adds r6, #1
_08006F6A:
	bl sub_08001EC4
	cmp r6, r0
	bhs _08006F74
	b _08006DC6
_08006F74:
	add r2, sp, #0x170
	movs r3, #0xb9
	lsls r3, r3, #1
	add r3, sp
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x1a8]
	movs r1, #4
	bl sub_08026C40
	movs r6, #0
	ldr r7, _08006FB4 @ =0x080FB564
	add r4, sp, #0x170
	adds r5, r7, #0
_08006F90:
	movs r0, #1
	lsls r0, r6
	ldr r1, [sp, #0x17c]
	ands r0, r1
	cmp r0, #0
	beq _08006FCC
	cmp r6, #0
	bne _08006FBC
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #0x1c
	movs r3, #0xd
	bl sub_08026B90
	b _08006FCC
	.align 2, 0
_08006FB4: .4byte 0x080FB564
_08006FB8: .4byte 0x080FB566
_08006FBC:
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldrh r0, [r4]
	str r0, [sp]
	add r0, sp, #0x1c
	movs r3, #4
	bl sub_08026B90
_08006FCC:
	adds r5, #4
	adds r6, #1
	cmp r6, #8
	bls _08006F90
	ldr r5, [sp, #0x1a4]
	movs r6, #0
	ldr r2, [sp, #0x184]
	ldrh r0, [r2, #8]
	cmp r6, r0
	bhs _08007006
	ldr r3, [sp, #0x178]
	cmp r6, r3
	beq _08007006
	adds r1, r0, #0
_08006FE8:
	ldrh r0, [r5]
	adds r3, r6, #1
	cmp r0, #0
	beq _08006FF8
_08006FF0:
	adds r5, #2
	ldrh r0, [r5]
	cmp r0, #0
	bne _08006FF0
_08006FF8:
	adds r5, #2
	adds r6, r3, #0
	cmp r6, r1
	bhs _08007006
	ldr r4, [sp, #0x178]
	cmp r6, r4
	bne _08006FE8
_08007006:
	adds r0, r5, #0
	bl sub_0800ED80
	ldr r1, _08007074 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0xf
	asrs r0, r0, #0x10
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r5, #0
	movs r2, #0x8c
	bl sub_0800EB30
	ldr r0, _08007078 @ =gUnknown_03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08007062
	add r6, sp, #0x120
	add r4, sp, #0x16c
	movs r3, #0xb7
	lsls r3, r3, #1
	add r3, sp
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08026C40
	ldr r7, [sp, #0x188]
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r4]
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x70
	movs r3, #0
	bl sub_0802706C
_08007062:
	bl sub_08001F64
	cmp r0, #0
	beq _0800711A
	movs r4, #0
	movs r6, #0
	ldr r5, _0800707C @ =0x03004650
	b _08007094
	.align 2, 0
_08007074: .4byte 0x03003CA0
_08007078: .4byte gUnknown_03003D08
_0800707C: .4byte 0x03004650
_08007080:
	movs r0, #0xd4
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	cmp r0, #0xf
	bne _08007092
	adds r4, #1
_08007092:
	adds r6, #1
_08007094:
	bl sub_08001EC4
	cmp r6, r0
	blo _08007080
	bl sub_08001EC4
	cmp r4, r0
	bne _08007128
	movs r4, #0
	movs r6, #1
	ldr r5, _080070AC @ =0x03004650
	b _080070CA
	.align 2, 0
_080070AC: .4byte 0x03004650
_080070B0:
	ldr r0, [r5]
	ldrh r1, [r0]
	lsrs r1, r1, #4
	movs r0, #0xd4
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	beq _080070C8
	adds r4, #1
_080070C8:
	adds r6, #1
_080070CA:
	bl sub_08001EC4
	cmp r6, r0
	blo _080070B0
	ldr r1, _08007110 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r2, r1, #0
	adds r2, #0xd0
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _080070EE
	movs r4, #0
_080070EE:
	cmp r4, #0
	bne _08007114
	ldr r1, [sp, #0x18c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18c]
	cmp r1, #0xa
	bls _08007128
	ldr r2, [r2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0xb0
	orrs r0, r1
	strb r0, [r2, #3]
	b _08007168
	.align 2, 0
_08007110: .4byte gPlayers
_08007114:
	movs r3, #0
	str r3, [sp, #0x18c]
	b _08007128
_0800711A:
	ldr r0, _08007160 @ =gPlayers
	adds r0, #0xd0
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	cmp r0, #0xb
	beq _08007168
_08007128:
	ldr r4, [sp, #0x178]
	cmp r4, #0
	bne _0800714A
	ldr r0, _08007160 @ =gPlayers
	movs r1, #0xd4
	mov r5, sl
	muls r5, r1, r5
	adds r1, r5, #0
	adds r0, #0xd0
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r2, [r1, #3]
	lsrs r0, r2, #4
	cmp r0, #0xf
	bne _0800714A
	bl sub_0800654E
_0800714A:
	ldr r0, _08007164 @ =gGameFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08007158
	b _08007464
_08007158:
	bl WaitFrame
	bl _08006702
	.align 2, 0
_08007160: .4byte gPlayers
_08007164: .4byte gGameFlags
_08007168:
	ldr r7, [sp, #0x178]
	cmp r7, #0
	beq _0800719C
	bl sub_08001F64
	cmp r0, #0
	bne _0800719C
	ldr r1, _080071C4 @ =gPlayers
	adds r1, #0xd0
	ldr r0, [r1]
	ldrh r0, [r0]
	lsrs r0, r0, #4
	str r0, [sp, #0x178]
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r4, [sp, #0x178]
	lsls r3, r4, #4
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
_0800719C:
	movs r0, #6
	bl sub_0800F3A0
	bl sub_08001F64
	cmp r0, #0
	beq _080071B0
	movs r0, #2
	bl FadeOutBGM
_080071B0:
	movs r5, #0x90
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x19c]
	mov r0, sl
	adds r0, #9
	lsls r0, r0, #0x10
	str r0, [sp, #0x198]
	b _08007320
	.align 2, 0
_080071C4: .4byte gPlayers
_080071C8:
	bl sub_0800ED74
	movs r6, #0
	movs r0, #0x34
	mov r7, sl
	muls r7, r0, r7
	str r7, [sp, #0x194]
	ldr r7, [sp, #0x1a8]
	movs r0, #0
	str r0, [sp, #0x1ac]
	b _080072D8
_080071DE:
	movs r0, #0xd4
	muls r0, r6, r0
	ldr r1, _0800721C @ =0x03004650
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x14
	cmp r4, #0
	bne _080072CE
	cmp r6, sl
	bne _08007228
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r2, _08007220 @ =0x080FB564
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _08007224 @ =0x080FB566
	adds r0, r0, r3
	ldrh r2, [r0]
	str r4, [sp]
	ldr r4, [sp, #0x1a8]
	ldr r5, [sp, #0x194]
	adds r0, r4, r5
	ldr r4, [sp, #0x198]
	lsrs r3, r4, #0x10
	bl sub_08026B90
	b _08007248
	.align 2, 0
_0800721C: .4byte 0x03004650
_08007220: .4byte 0x080FB564
_08007224: .4byte 0x080FB566
_08007228:
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	ldr r5, _08007380 @ =0x080FB564
	adds r1, r0, r5
	ldrh r1, [r1]
	ldr r2, _08007384 @ =0x080FB566
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r3, r6, #5
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl sub_08026B90
_08007248:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r0, sp, #0x154
	lsls r4, r6, #1
	adds r5, r0, r4
	add r3, sp, #0x15c
	adds r3, r3, r4
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_08026C40
	add r0, sp, #0x164
	adds r4, r0, r4
	ldrh r0, [r4]
	adds r0, #0x80
	movs r1, #0
	mov sb, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _08007282
	strh r1, [r4]
_08007282:
	movs r0, #0xd4
	muls r0, r6, r0
	ldr r2, _08007388 @ =0x03004650
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #2
	ldr r3, _08007380 @ =0x080FB564
	adds r0, r1, r3
	ldrh r0, [r0]
	ldr r2, _08007384 @ =0x080FB566
	adds r1, r1, r2
	ldrh r1, [r1]
	ldrh r3, [r5]
	mov r5, sb
	str r5, [sp]
	adds r2, r7, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	add r2, sp, #0x58
	ldr r5, [sp, #0x1ac]
	adds r2, r2, r5
	ldr r2, [r2]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	movs r5, #0
	ldrsh r2, [r4, r5]
	str r2, [sp, #0x10]
	movs r5, #0
	ldrsh r2, [r4, r5]
	str r2, [sp, #0x14]
	mov r2, sb
	str r2, [sp, #0x18]
	mov r2, r8
	bl sub_08003724
_080072CE:
	adds r7, #0x34
	ldr r3, [sp, #0x1ac]
	adds r3, #0x34
	str r3, [sp, #0x1ac]
	adds r6, #1
_080072D8:
	bl sub_08001EC4
	cmp r6, r0
	bhs _080072E2
	b _080071DE
_080072E2:
	ldr r0, _0800738C @ =gUnknown_03003D08
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800731C
	add r4, sp, #0x16c
	movs r5, #1
	str r5, [sp]
	ldr r0, [sp, #0x19c]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0xb7
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	ldr r7, [sp, #0x188]
	lsls r2, r7, #0x10
	ldrh r0, [r4]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x19c]
	movs r1, #0x70
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_0802706C
_0800731C:
	bl WaitFrame
_08007320:
	bl sub_0800F298
	cmp r0, #0
	bne _0800732A
	b _080071C8
_0800732A:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	bl sub_0800EC74
	movs r0, #0
	bl sub_0800EE44
	bl sub_0800ED08
	ldr r0, _08007390 @ =gGameFlags
	ldr r1, [r0]
	lsrs r0, r1, #9
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080073C4
	ldr r0, [sp, #0x178]
	cmp r0, #8
	bne _080073B0
	lsrs r0, r1, #1
	ands r0, r2
	cmp r0, #0
	bne _0800739C
	ldr r0, _08007394 @ =gKeysHeld
	ldrh r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800739C
	ldr r1, _08007398 @ =gMapLayer_03003910
	adds r2, r1, #0
	adds r2, #0x6a
	movs r0, #9
	strh r0, [r2]
	adds r2, r1, #0
	b _080073D2
	.align 2, 0
_08007380: .4byte 0x080FB564
_08007384: .4byte 0x080FB566
_08007388: .4byte 0x03004650
_0800738C: .4byte gUnknown_03003D08
_08007390: .4byte gGameFlags
_08007394: .4byte gKeysHeld
_08007398: .4byte gMapLayer_03003910
_0800739C:
	ldr r0, _080073AC @ =gMapLayer_03003910
	adds r2, r0, #0
	adds r2, #0x6a
	add r1, sp, #0x178
	ldrh r1, [r1]
	strh r1, [r2]
	b _080073D0
	.align 2, 0
_080073AC: .4byte gMapLayer_03003910
_080073B0:
	ldr r0, _080073C0 @ =gMapLayer_03003910
	adds r2, r0, #0
	adds r2, #0x6a
	add r3, sp, #0x178
	ldrh r3, [r3]
	strh r3, [r2]
	b _080073D0
	.align 2, 0
_080073C0: .4byte gMapLayer_03003910
_080073C4:
	ldr r0, _08007424 @ =gMapLayer_03003910
	adds r2, r0, #0
	adds r2, #0x6a
	add r4, sp, #0x178
	ldrh r4, [r4]
	strh r4, [r2]
_080073D0:
	adds r2, r0, #0
_080073D2:
	adds r6, r2, #0
	adds r6, #0x6e
	movs r5, #0
	movs r0, #1
	strh r0, [r6]
	ldr r4, _08007428 @ =gGameFlags
	ldr r0, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	adds r1, r2, #0
	adds r1, #0x6a
	ldrh r0, [r1]
	cmp r0, #0
	bne _08007434
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r1]
	strh r5, [r6]
	ldr r0, _0800742C @ =0x000514C9
	bl SignalEvent
	ldr r0, [r4]
	movs r1, #8
	orrs r0, r1
	str r0, [r4]
	ldr r1, _08007430 @ =gPlayers
	movs r0, #0xd4
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r0, r1
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x16]
	strh r5, [r0, #0xc]
	movs r0, #0
	bl sub_08019300
	b _08007464
	.align 2, 0
_08007424: .4byte gMapLayer_03003910
_08007428: .4byte gGameFlags
_0800742C: .4byte 0x000514C9
_08007430: .4byte gPlayers
_08007434:
	ldr r4, _08007474 @ =0x03006410
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08007446
	ldr r0, [r4]
	bl KillThread
_08007446:
	bl GetMultiplayerId
	ldr r2, _08007478 @ =gPlayers
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r6]
	strh r1, [r0, #0x16]
	ldr r0, _0800747C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9a
	strh r5, [r0]
	ldr r0, _08007480 @ =0x00000BB9
	bl SignalEvent
_08007464:
	add sp, #0x1b4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007474: .4byte 0x03006410
_08007478: .4byte gPlayers
_0800747C: .4byte 0x030063D8
_08007480: .4byte 0x00000BB9
