	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08023330
sub_08023330: @ 0x08023330
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	str r0, [sp, #0x8c]
	str r1, [sp, #0x90]
	adds r7, r2, #0
	str r3, [sp, #0x94]
	cmp r7, #0
	bne _0802334A
	b _08023A80
_0802334A:
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x9c]
	movs r2, #0
	str r2, [sp, #0xa0]
	movs r3, #0
	str r3, [sp, #0xa4]
	ldr r0, _0802337C @ =0x7FFFFFFF
	ldr r1, [sp, #0x94]
	ands r1, r0
	mov sb, r1
	ldr r1, [r7]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	adds r2, r1, #0
	cmp r0, #7
	bls _08023370
	b _08023A80
_08023370:
	lsls r0, r0, #2
	ldr r1, _08023380 @ =_08023384
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802337C: .4byte 0x7FFFFFFF
_08023380: .4byte _08023384
_08023384: @ jump table
	.4byte _08023A80 @ case 0
	.4byte _080233A4 @ case 1
	.4byte _08023410 @ case 2
	.4byte _080234D4 @ case 3
	.4byte _0802355C @ case 4
	.4byte _08023610 @ case 5
	.4byte _0802367C @ case 6
	.4byte _080236F0 @ case 7
_080233A4:
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x98]
	mov r2, sb
	cmp r2, #1
	beq _080233D8
	cmp r2, #1
	blo _080233C4
	cmp r2, #2
	beq _080233F4
	b _08023764
_080233C4:
	ldr r0, _080233D4 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0x98]
	adds r5, r3, r0
	b _08023764
	.align 2, 0
_080233D4: .4byte gLanguage
_080233D8:
	ldr r0, _080233F0 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, [sp, #0x98]
	adds r5, r2, r0
	b _08023764
	.align 2, 0
_080233F0: .4byte gLanguage
_080233F4:
	ldr r0, _0802340C @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r3, #0xbd
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [sp, #0x98]
	adds r5, r1, r0
	b _08023764
	.align 2, 0
_0802340C: .4byte gLanguage
_08023410:
	ldr r0, [r7]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r7]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _0802343A
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	mov sl, r0
_0802343A:
	mov r2, sb
	cmp r2, #1
	beq _0802345C
	cmp r2, #1
	blo _0802344A
	cmp r2, #2
	beq _08023474
	b _080234A8
_0802344A:
	ldr r0, _08023458 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r5, r4, r0
	b _080234A8
	.align 2, 0
_08023458: .4byte gLanguage
_0802345C:
	ldr r0, _08023470 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r5, r4, r0
	b _080234A8
	.align 2, 0
_08023470: .4byte gLanguage
_08023474:
	mov r0, sl
	cmp r0, #0
	bne _08023494
	ldr r0, _08023490 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r5, r4, r0
	b _080234A8
	.align 2, 0
_08023490: .4byte gLanguage
_08023494:
	ldr r0, _080234CC @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r3, sl
	adds r5, r3, r0
_080234A8:
	ldr r0, [r7]
	lsls r1, r0, #5
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x9c]
	lsls r1, r0, #8
	lsrs r1, r1, #0x1c
	str r1, [sp, #0xa0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1e
	str r0, [sp, #0xa4]
	cmp r0, #0
	beq _080234C2
	b _08023764
_080234C2:
	ldr r1, _080234D0 @ =0x0000015B
	adds r0, r4, r1
	ldrb r0, [r0]
	str r0, [sp, #0xa4]
	b _08023764
	.align 2, 0
_080234CC: .4byte gLanguage
_080234D0: .4byte 0x0000015B
_080234D4:
	ldr r0, [r7]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r7]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _080234FE
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	mov sl, r0
_080234FE:
	mov r2, sb
	cmp r2, #1
	beq _0802350E
	cmp r2, #1
	blo _08023596
	cmp r2, #2
	beq _08023524
	b _080235F4
_0802350E:
	ldr r0, _08023520 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r3, #0x82
	lsls r3, r3, #1
	b _080235D4
	.align 2, 0
_08023520: .4byte gLanguage
_08023524:
	mov r0, sl
	cmp r0, #0
	bne _08023540
	ldr r0, _0802353C @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xa7
	lsls r1, r1, #2
	b _080235B6
	.align 2, 0
_0802353C: .4byte gLanguage
_08023540:
	ldr r0, _08023558 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r3, sl
	adds r5, r3, r0
	b _080235F4
	.align 2, 0
_08023558: .4byte gLanguage
_0802355C:
	ldr r0, [r7]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, [r7]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _08023586
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	mov sl, r0
_08023586:
	mov r0, sb
	cmp r0, #1
	beq _080235A8
	cmp r0, #1
	blo _08023596
	cmp r0, #2
	beq _080235C0
	b _080235F4
_08023596:
	ldr r0, _080235A4 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r5, r4, r0
	b _080235F4
	.align 2, 0
_080235A4: .4byte gLanguage
_080235A8:
	ldr r0, _080235BC @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x82
	lsls r1, r1, #1
_080235B6:
	adds r0, r0, r1
	adds r5, r4, r0
	b _080235F4
	.align 2, 0
_080235BC: .4byte gLanguage
_080235C0:
	mov r2, sl
	cmp r2, #0
	bne _080235E0
	ldr r0, _080235DC @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r3, #0xa7
	lsls r3, r3, #2
_080235D4:
	adds r0, r0, r3
	adds r5, r4, r0
	b _080235F4
	.align 2, 0
_080235DC: .4byte gLanguage
_080235E0:
	ldr r0, _0802360C @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, sl
	adds r5, r2, r0
_080235F4:
	ldr r0, [r7]
	lsls r1, r0, #5
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x9c]
	lsls r1, r0, #8
	lsrs r1, r1, #0x1c
	str r1, [sp, #0xa0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1e
	str r0, [sp, #0xa4]
	b _08023764
	.align 2, 0
_0802360C: .4byte gLanguage
_08023610:
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
	movs r3, #0
	mov sl, r3
	mov r0, sb
	cmp r0, #1
	beq _08023644
	cmp r0, #1
	blo _08023634
	cmp r0, #2
	beq _0802365C
	b _0802366E
_08023634:
	ldr r0, _08023640 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	b _0802366C
	.align 2, 0
_08023640: .4byte gLanguage
_08023644:
	ldr r0, _08023658 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0802366C
	.align 2, 0
_08023658: .4byte gLanguage
_0802365C:
	ldr r0, _08023678 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r0, r0, r3
_0802366C:
	adds r5, r2, r0
_0802366E:
	movs r0, #0
	str r0, [sp, #0x9c]
	movs r1, #0
	str r1, [sp, #0xa0]
	b _08023764
	.align 2, 0
_08023678: .4byte gLanguage
_0802367C:
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	ldr r0, _080236A4 @ =0x000900E9
	bl GetDataRecord
	mov r2, sb
	cmp r2, #1
	beq _080236BC
	cmp r2, #1
	blo _080236A8
	cmp r2, #2
	beq _080236C2
	b _08023764
	.align 2, 0
_080236A4: .4byte 0x000900E9
_080236A8:
	ldr r0, _080236B8 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r4, r0
	b _08023764
	.align 2, 0
_080236B8: .4byte gLanguage
_080236BC:
	adds r5, r0, #0
	adds r5, #0xa
	b _08023764
_080236C2:
	adds r5, r0, #0
	adds r5, #0xa
	movs r0, #0
	add r1, sp, #0x88
	str r0, [r1]
	ldr r2, [r7]
	adds r3, r1, #0
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x19
	adds r2, r0, #1
_080236D6:
	ldrh r0, [r5]
	cmp r0, #0
	bne _080236E2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r3]
_080236E2:
	ldr r0, [r1]
	cmp r0, r2
	beq _080236EC
	adds r5, #2
	b _080236D6
_080236EC:
	adds r5, #2
	b _08023764
_080236F0:
	bl sub_08007510
	cmp r0, #0
	bne _08023748
	ldr r0, [r7]
	lsrs r0, r0, #0xf
	add r1, sp, #0x88
	str r0, [r1]
	ldr r5, _08023744 @ =0x080FBAAC
	add r4, sp, #0x44
	movs r6, #0
	mov r8, r6
	adds r3, r1, #0
_0802370A:
	ldr r1, [r5]
	adds r0, r3, #0
	str r3, [sp, #0xa8]
	bl sub_080004A4
	adds r0, #0xef
	strh r0, [r4]
	ldr r3, [sp, #0xa8]
	cmp r6, #0
	bne _08023726
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	beq _0802372A
_08023726:
	adds r4, #2
	movs r6, #1
_0802372A:
	movs r0, #1
	add r8, r0
	adds r5, #4
	mov r1, r8
	cmp r1, #5
	bls _0802370A
	movs r0, #0xb7
	strh r0, [r4]
	movs r0, #0
	strh r0, [r4, #2]
	add r5, sp, #0x44
	b _08023764
	.align 2, 0
_08023744: .4byte 0x080FBAAC
_08023748:
	ldr r0, [r7]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb8
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	ldr r1, _08023778 @ =gLanguage
	ldrh r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r5, r0, r1
_08023764:
	mov r2, sb
	cmp r2, #1
	bne _0802376C
	b _080238A0
_0802376C:
	cmp r2, #1
	blo _0802377C
	cmp r2, #2
	bne _08023776
	b _08023A12
_08023776:
	b _08023A50
	.align 2, 0
_08023778: .4byte gLanguage
_0802377C:
	ldr r3, [sp, #0x9c]
	cmp r3, #0
	beq _080237B0
	mov r0, sp
	movs r1, #0xfe
	strh r1, [r0]
	movs r6, #0
	ldrh r0, [r5]
	cmp r0, #0
	beq _080237A6
	adds r1, r5, #0
	mov r2, sp
	adds r2, #2
_08023796:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r6, #1
	ldrh r0, [r1]
	cmp r0, #0
	bne _08023796
_080237A6:
	adds r0, r6, #1
	lsls r0, r0, #1
	mov r2, sp
	adds r1, r2, r0
	b _08023A4C
_080237B0:
	ldr r3, [sp, #0xa4]
	cmp r3, #0
	beq _080237C2
	mov r1, sp
	adds r0, r3, #0
	adds r0, #0xfa
	strh r0, [r1]
	movs r6, #1
	b _080237C4
_080237C2:
	movs r6, #0
_080237C4:
	movs r4, #0
	ldrh r0, [r5]
	cmp r0, #0
	beq _080237EC
_080237CC:
	adds r0, r4, r6
	lsls r0, r0, #1
	mov r2, sp
	adds r1, r2, r0
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _080237CC
_080237EC:
	adds r6, r6, r4
	mov r3, sl
	cmp r3, #0
	beq _08023834
	movs r4, #0
	ldr r0, _0802389C @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08023832
	adds r2, r1, #0
_0802380A:
	adds r0, r4, r6
	lsls r0, r0, #1
	mov r3, sp
	adds r1, r3, r0
	lsls r0, r4, #1
	adds r0, r0, r2
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r2
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0
	beq _08023832
	cmp r4, #0x20
	bls _0802380A
_08023832:
	adds r6, r6, r4
_08023834:
	lsls r0, r6, #0x18
	lsrs r4, r0, #0x18
	adds r1, r4, #0
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	bne _08023842
	b _08023A46
_08023842:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	lsls r0, r1, #1
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0xa3
	strh r0, [r1]
	ldr r0, [sp, #0xa0]
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	ldr r0, [sp, #0xa0]
	movs r1, #0xa
	bl __umodsi3
	str r0, [sp, #0xa0]
	cmp r6, #0
	beq _0802387E
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r5, #1
	mov r3, sp
	adds r1, r3, r0
	adds r0, r6, #0
	adds r0, #0xef
	strh r0, [r1]
_0802387E:
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #1
	add r1, sp
	ldr r0, [sp, #0xa0]
	adds r0, #0xef
	strh r0, [r1]
	lsls r0, r4, #1
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	b _08023A46
	.align 2, 0
_0802389C: .4byte gLanguage
_080238A0:
	movs r4, #0
	ldr r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _080238AE
	b _080239E8
_080238AE:
	ldr r1, [sp, #0x98]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _080238BE
	b _080239C4
_080238BE:
	bl GetPlayerClass
	cmp r0, #0
	bne _080238F4
	ldr r0, _080238F0 @ =gPlayerStats
	adds r0, #0x54
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x64
	ldr r3, [sp, #0x98]
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r7, r0
	movs r1, #0x64
	bl __udivsi3
	adds r7, r0, #0
	b _08023900
	.align 2, 0
_080238F0: .4byte gPlayerStats
_080238F4:
	ldr r3, [sp, #0x98]
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	ldrsh r7, [r0, r2]
_08023900:
	movs r4, #0
	ldrh r0, [r5]
	b _0802391E
_08023906:
	lsls r0, r4, #1
	mov r3, sp
	adds r1, r3, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
_0802391E:
	cmp r0, #0
	beq _08023926
	cmp r0, #0xef
	bne _08023906
_08023926:
	adds r0, r4, #3
	mov r8, r0
	mov sb, r4
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802399C
	adds r0, r7, #0
	movs r1, #0x64
	bl __udivsi3
	adds r6, r0, #0
	adds r0, r7, #0
	movs r1, #0x64
	bl __umodsi3
	adds r7, r0, #0
	cmp r6, #0
	beq _08023962
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sb
	lsls r0, r1, #1
	mov r2, sp
	adds r1, r2, r0
	adds r0, r6, #0
	adds r0, #0xef
	strh r0, [r1]
_08023962:
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	adds r0, r7, #0
	movs r1, #0xa
	bl __umodsi3
	adds r7, r0, #0
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r4, #0
	lsls r1, r1, #1
	add r1, sp
	adds r0, r6, #0
	adds r0, #0xef
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r2, r2, #1
	mov r3, sp
	adds r1, r3, r2
	adds r0, r7, #0
	adds r0, #0xef
	strh r0, [r1]
_0802399C:
	mov r1, r8
	lsls r0, r1, #1
	adds r1, r0, r5
	ldrh r0, [r1]
	cmp r0, #0
	beq _08023A0A
	adds r2, r1, #0
_080239AA:
	lsls r0, r4, #1
	mov r3, sp
	adds r1, r3, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrh r0, [r2]
	cmp r0, #0
	bne _080239AA
	b _08023A0A
_080239C4:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08023A0A
_080239CA:
	lsls r0, r4, #1
	mov r2, sp
	adds r1, r2, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _080239CA
	b _08023A0A
_080239E8:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08023A0A
_080239EE:
	lsls r0, r4, #1
	mov r3, sp
	adds r1, r3, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _080239EE
_08023A0A:
	lsls r0, r4, #1
	mov r2, sp
	adds r1, r2, r0
	b _08023A4C
_08023A12:
	movs r4, #0
	ldr r3, [sp, #0x9c]
	cmp r3, #0
	beq _08023A24
	mov r1, sp
	movs r0, #0xfe
	strh r0, [r1]
	movs r4, #1
	b _08023A46
_08023A24:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08023A46
_08023A2A:
	lsls r0, r4, #1
	mov r2, sp
	adds r1, r2, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _08023A2A
_08023A46:
	lsls r0, r4, #1
	mov r3, sp
	adds r1, r3, r0
_08023A4C:
	movs r0, #0
	strh r0, [r1]
_08023A50:
	movs r0, #0
	ldr r1, [sp, #0x94]
	cmp r1, #0
	bge _08023A70
	mov r0, sp
	bl sub_0800ED80
	ldr r1, _08023A90 @ =gUnknown_03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r6, r0, #1
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08023A70:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x8c]
	adds r1, r2, r1
	mov r0, sp
	ldr r2, [sp, #0x90]
	bl sub_0800EB30
_08023A80:
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023A90: .4byte gUnknown_03003CA0
