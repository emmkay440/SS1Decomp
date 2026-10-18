	.include "asm/macros.inc"

	.syntax unified
	.text

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
	ldr r0, _080433B4 @ =gUnknown_030004C8
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
_080433B4: .4byte gUnknown_030004C8
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
	ldr r1, _08043478 @ =gUnknown_03003CA0
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
	ldr r4, _0804347C @ =gUnknown_030004CC
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
_08043478: .4byte gUnknown_03003CA0
_0804347C: .4byte gUnknown_030004CC
_08043480:
	ldr r0, _08043498 @ =gUnknown_030004C8
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
_08043498: .4byte gUnknown_030004C8
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
	ldr r5, _08043518 @ =gUnknown_030004C8
	ldrb r0, [r5]
	cmp r0, #8
	beq _080434F2
	b _08043964
_080434F2:
	bl GetPlayerStats
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
_08043518: .4byte gUnknown_030004C8
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
	ldr r1, _080435D8 @ =gUnknown_03003CA0
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
_080435D8: .4byte gUnknown_03003CA0
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
	ldr r1, _080436B8 @ =gUnknown_03003CA0
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
_080436B8: .4byte gUnknown_03003CA0
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
	ldr r1, _08043920 @ =gUnknown_03003CA0
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
_08043920: .4byte gUnknown_03003CA0
_08043924:
	ldr r0, _0804395C @ =0x0009000D
	bl GetDataRecord
	adds r4, r0, #0
	bl sub_08043B28
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08043960 @ =gUnknown_03003CA0
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
_08043960: .4byte gUnknown_03003CA0
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
	ldr r1, _08043ACC @ =gUnknown_03003CA0
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
_08043ACC: .4byte gUnknown_03003CA0
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
	ldr r1, _08043B24 @ =gUnknown_03000510
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
_08043B24: .4byte gUnknown_03000510
