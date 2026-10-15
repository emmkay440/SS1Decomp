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

	thumb_func_start sub_08023A94
sub_08023A94: @ 0x08023A94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x1c]
	ldr r1, _08023AB0 @ =0x080548C4
	add r0, sp, #0x10
	movs r2, #0xc
	bl memcpy
	b _08023E42
	.align 2, 0
_08023AB0: .4byte 0x080548C4
_08023AB4:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _08023ADE
	ldr r0, _08023AE8 @ =0x00018A92
	bl _08000400
	ldr r0, _08023AEC @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r0, #0x57
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	beq _08023ADE
	b _08023E4C
_08023ADE:
	ldr r1, _08023AF0 @ =0x0000FFE4
	mov sl, r1
	movs r2, #0x3c
	str r2, [sp, #0x20]
	b _08023CD8
	.align 2, 0
_08023AE8: .4byte 0x00018A92
_08023AEC: .4byte gPlayerStats
_08023AF0: .4byte 0x0000FFE4
_08023AF4:
	mov r3, r8
	asrs r4, r3, #0x10
	movs r0, #0x1c
	subs r0, r0, r4
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bgt _08023B0C
	movs r1, #1
_08023B0C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	asrs r0, r0, #0x10
	cmp r0, #0x1c
	ble _08023B22
	movs r2, #0x1c
	mov sl, r2
_08023B22:
	ldr r0, _08023BA0 @ =gKeysNew
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r1, r0
	ldr r0, _08023BA4 @ =gPlayerStats
	adds r0, #0x6c
	mov sb, r0
	cmp r1, #0
	beq _08023BD2
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _08023BC4
	ldr r5, _08023BA8 @ =gPlayers
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #5
	beq _08023BC4
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #2
	beq _08023BC4
	mov r2, sb
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08023B70
	strh r6, [r2]
_08023B70:
	bl sub_080140AC
	movs r3, #0x3c
	str r3, [sp, #0x20]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x14]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x12]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	cmp r0, #3
	beq _08023BAC
	cmp r0, #4
	beq _08023BB8
	b _08023BC4
	.align 2, 0
_08023BA0: .4byte gKeysNew
_08023BA4: .4byte gPlayerStats
_08023BA8: .4byte gPlayers
_08023BAC:
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0xc]
	b _08023BC4
_08023BB8:
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #1
	strh r1, [r0, #0xc]
_08023BC4:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #0x57
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
_08023BD2:
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	bne _08023BE6
	movs r3, #0x3c
	str r3, [sp, #0x20]
	movs r0, #0x1c
	mov sl, r0
	mov r5, sp
	adds r5, #0x12
	b _08023C24
_08023BE6:
	movs r0, #0
	mov r1, sl
	lsls r1, r1, #0x10
	mov r5, sp
	adds r5, #0x12
	asrs r6, r1, #0x10
_08023BF2:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r6, r0
	adds r1, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	adds r2, #0x70
	ldr r3, _08023D00 @ =gPlayerStats
	adds r2, r3, r2
	movs r3, #8
	bl sub_08023048
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #2
	ble _08023BF2
_08023C24:
	mov r0, sl
	lsls r4, r0, #0x10
	asrs r7, r4, #0x10
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r5, _08023D04 @ =gUnknown_03006430
	adds r0, r7, r0
	adds r1, #0x28
	movs r3, #0
	mov sb, r3
	str r3, [sp]
	adds r6, r5, #0
	adds r6, #0x1c
	str r6, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #7
	bl sub_08003518
	mov r8, r4
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _08023C82
	mov r1, sb
	str r1, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	adds r0, r7, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #0
	bl sub_08003518
_08023C82:
	bl WaitFrame
	bl sub_080075AC
	cmp r0, #0
	beq _08023C90
	b _08023E0C
_08023C90:
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	beq _08023CD8
	bl sub_080077C0
	cmp r0, #0
	beq _08023CA0
	b _08023E0C
_08023CA0:
	bl sub_08007510
	cmp r0, #0
	beq _08023CAA
	b _08023E0C
_08023CAA:
	ldr r4, _08023D08 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08023CBE
	b _08023E0C
_08023CBE:
	bl sub_08007544
	cmp r0, #0
	bne _08023CD8
	ldr r0, _08023D0C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08023CD8
	b _08023E0C
_08023CD8:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	ldr r3, _08023D10 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	lsls r1, r1, #0x10
	mov r0, sl
	lsls r0, r0, #0x10
	mov r8, r0
	cmp r1, #0
	bgt _08023CF2
	b _08023E0C
_08023CF2:
	bl sub_080074CC
	adds r6, r0, #0
	cmp r6, #0
	bne _08023CFE
	b _08023AF4
_08023CFE:
	b _08023E0C
	.align 2, 0
_08023D00: .4byte gPlayerStats
_08023D04: .4byte gUnknown_03006430
_08023D08: .4byte gPlayers
_08023D0C: .4byte gUnknown_030063D8
_08023D10: .4byte 0xFFFF0000
_08023D14:
	bl sub_08007544
	cmp r0, #0
	bne _08023D2E
	ldr r0, _08023E5C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08023D2E
	b _08023E42
_08023D2E:
	bl sub_080075AC
	cmp r0, #0
	beq _08023D38
	b _08023E42
_08023D38:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r5, #0x1c
	rsbs r5, r5, #0
	subs r0, r5, r4
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _08023D54
	ldr r1, _08023E60 @ =0x0000FFFF
_08023D54:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	cmp r0, r5
	bge _08023D6A
	ldr r3, _08023E64 @ =0x0000FFE4
	mov sl, r3
_08023D6A:
	movs r0, #0
	ldr r1, _08023E68 @ =gPlayerStats
	adds r1, #0x6c
	mov sb, r1
	mov r2, sl
	lsls r2, r2, #0x10
	mov r8, r2
	mov r5, sp
	adds r5, #0x12
	asrs r6, r2, #0x10
_08023D7E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r6, r0
	adds r1, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	adds r2, #0x70
	ldr r3, _08023E68 @ =gPlayerStats
	adds r2, r3, r2
	movs r3, #8
	bl sub_08023048
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #2
	ble _08023D7E
	mov r0, r8
	asrs r6, r0, #0x10
	mov r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r4, _08023E6C @ =gUnknown_03006430
	adds r0, r6, r0
	adds r1, #0x28
	movs r7, #0
	str r7, [sp]
	adds r5, r4, #0
	adds r5, #0x1c
	str r5, [sp, #4]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08003518
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	beq _08023E08
	str r7, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #0
	bl sub_08003518
_08023E08:
	bl WaitFrame
_08023E0C:
	mov r0, r8
	asrs r1, r0, #0x10
	movs r0, #0x1c
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08023E42
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _08023D2E
	bl sub_080077C0
	cmp r0, #0
	bne _08023E42
	bl sub_08007510
	cmp r0, #0
	bne _08023E42
	ldr r4, _08023E70 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _08023E42
	b _08023D14
_08023E42:
	bl sub_080074CC
	cmp r0, #0
	bne _08023E4C
	b _08023AB4
_08023E4C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023E5C: .4byte gUnknown_030063D8
_08023E60: .4byte 0x0000FFFF
_08023E64: .4byte 0x0000FFE4
_08023E68: .4byte gPlayerStats
_08023E6C: .4byte gUnknown_03006430
_08023E70: .4byte gPlayers

	thumb_func_start sub_08023E74
sub_08023E74: @ 0x08023E74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #0x24]
	ldr r1, _08023E90 @ =0x080548D0
	add r0, sp, #0x10
	movs r2, #0xc
	bl memcpy
	b _080242F0
	.align 2, 0
_08023E90: .4byte 0x080548D0
_08023E94:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _08023EBE
	ldr r0, _08023ECC @ =0x00018A93
	bl _08000400
	ldr r0, _08023ED0 @ =gPlayerStats
	adds r0, #0x64
	ldrh r0, [r0]
	adds r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	beq _08023EBE
	b _080242FA
_08023EBE:
	movs r1, #0x86
	lsls r1, r1, #1
	str r1, [sp, #0x2c]
	movs r2, #0x3c
	str r2, [sp, #0x30]
	b _0802416A
	.align 2, 0
_08023ECC: .4byte 0x00018A93
_08023ED0: .4byte gPlayerStats
_08023ED4:
	asrs r4, r6, #0x10
	movs r0, #0xd4
	subs r0, r0, r4
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _08023EEA
	ldr r1, _08024194 @ =0x0000FFFF
_08023EEA:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x2c]
	asrs r0, r0, #0x10
	cmp r0, #0xd3
	bgt _08023F00
	movs r0, #0xd4
	str r0, [sp, #0x2c]
_08023F00:
	ldr r0, _08024198 @ =gKeysNew
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r1, r0
	ldr r3, _0802419C @ =gPlayerStats
	adds r3, #0x64
	str r3, [sp, #0x3c]
	cmp r1, #0
	beq _08023F3E
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08023F26
	strh r5, [r3]
_08023F26:
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	adds r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08023F44
	movs r3, #0x3c
	str r3, [sp, #0x30]
_08023F3E:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _08023F5A
_08023F44:
	movs r1, #0x3c
	str r1, [sp, #0x30]
	movs r2, #0xd4
	str r2, [sp, #0x2c]
	movs r3, #0x12
	add r3, sp
	mov r8, r3
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _08023F5A
	b _080240C4
_08023F5A:
	movs r1, #0
	ldr r2, [sp, #0x2c]
	lsls r6, r2, #0x10
	ldr r3, _0802419C @ =gPlayerStats
	adds r3, #0x66
	str r3, [sp, #0x40]
	movs r0, #0x12
	add r0, sp
	mov r8, r0
	asrs r6, r6, #0x10
	str r6, [sp, #0x34]
_08023F70:
	lsls r0, r1, #0x10
	asrs r1, r0, #0xf
	ldr r3, [sp, #0x40]
	adds r2, r3, r1
	ldrh r1, [r2]
	str r0, [sp, #0x38]
	cmp r1, #0
	bne _08023F82
	b _080240B2
_08023F82:
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, #0x84
	ldr r1, _0802419C @ =gPlayerStats
	adds r0, r1, r0
	str r0, [sp, #0x28]
	movs r5, #0
	movs r2, #0
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r6, r0, #0x1d
	lsls r1, r1, #0x12
	lsrs r4, r1, #0x19
_08023F9C:
	lsls r0, r2, #0x10
	asrs r1, r0, #0xe
	ldr r2, _0802419C @ =gPlayerStats
	adds r1, r2, r1
	adds r2, r1, #0
	adds r2, #0x88
	ldrb r1, [r2]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1d
	adds r3, r0, #0
	cmp r6, r1
	bne _08023FC8
	ldrh r0, [r2]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r4, r0
	bne _08023FC8
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
_08023FC8:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r3, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08023F9C
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r2, #1
	ble _0802408A
	ldr r3, [sp, #0x38]
	asrs r1, r3, #0x10
	movs r0, #2
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x10
	movs r3, #0
	ldrsh r1, [r1, r3]
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, [sp, #0x34]
	adds r4, r3, r1
	adds r6, r0, #0
	adds r6, #0x30
	str r2, [sp, #0x20]
	ldr r5, _080241A0 @ =gUnknown_03006510
	add r0, sp, #0x20
	movs r1, #0x64
	bl sub_080004A4
	add r2, sp, #0x1c
	movs r1, #0
	mov sl, r1
	strb r0, [r2]
	ldr r1, [sp, #0x20]
	strb r1, [r2, #1]
	lsls r0, r0, #0x18
	adds r7, r2, #0
	cmp r0, #0
	beq _08024040
	adds r0, r4, #0
	subs r0, #0xc
	ldrb r3, [r7]
	mov r2, sl
	str r2, [sp]
	adds r1, r5, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	ldr r1, [r5, #8]
	str r1, [sp, #8]
	ldr r1, [r5]
	str r1, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08003518
_08024040:
	ldrb r0, [r7, #1]
	movs r3, #0x1c
	adds r3, r3, r5
	mov sb, r3
	cmp r0, #9
	bhi _0802406E
	ldrb r0, [r7]
	cmp r0, #0
	beq _0802406E
	subs r0, r4, #6
	mov r1, sl
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r1, [r5, #8]
	str r1, [sp, #8]
	ldr r1, [r5]
	str r1, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08003518
_0802406E:
	ldrb r3, [r7, #1]
	movs r0, #0
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08003518
_0802408A:
	ldr r2, [sp, #0x38]
	asrs r0, r2, #0x10
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, [sp, #0x34]
	adds r0, r2, r0
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	ldr r2, [sp, #0x28]
	movs r3, #0
	bl sub_08023048
_080240B2:
	ldr r1, [sp, #0x38]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bgt _080240C4
	b _08023F70
_080240C4:
	ldr r3, [sp, #0x2c]
	lsls r6, r3, #0x10
	asrs r5, r6, #0x10
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r4, _080241A4 @ =gUnknown_03006430
	adds r0, r5, r0
	adds r1, #0x28
	movs r2, #0
	str r2, [sp]
	ldr r3, _080241A8 @ =0x0300644C
	str r3, [sp, #4]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08003518
	movs r0, #0
	str r0, [sp]
	ldr r1, _080241A8 @ =0x0300644C
	str r1, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #1
	bl sub_08003518
	bl WaitFrame
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08024162
	bl sub_080077C0
	cmp r0, #0
	bne _0802418C
	bl sub_08007510
	cmp r0, #0
	bne _0802418C
	ldr r4, _080241AC @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0802418C
	bl sub_08007544
	cmp r0, #0
	bne _08024162
	ldr r0, _080241B0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802418C
_08024162:
	bl sub_080075AC
	cmp r0, #0
	bne _0802418C
_0802416A:
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x10
	ldr r3, _080241B4 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x2c]
	lsls r6, r0, #0x10
	cmp r1, #0
	ble _0802418C
	bl sub_080074CC
	adds r5, r0, #0
	cmp r5, #0
	bne _0802418C
	b _08023ED4
_0802418C:
	ldr r7, _080241A4 @ =gUnknown_03006430
	movs r1, #0
	mov sb, r1
	b _080242C0
	.align 2, 0
_08024194: .4byte 0x0000FFFF
_08024198: .4byte gKeysNew
_0802419C: .4byte gPlayerStats
_080241A0: .4byte gUnknown_03006510
_080241A4: .4byte gUnknown_03006430
_080241A8: .4byte 0x0300644C
_080241AC: .4byte gPlayers
_080241B0: .4byte gUnknown_030063D8
_080241B4: .4byte 0xFFFF0000
_080241B8:
	bl sub_08007544
	cmp r0, #0
	bne _080241D2
	ldr r0, _0802430C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080241D2
	b _080242F0
_080241D2:
	bl sub_080075AC
	cmp r0, #0
	beq _080241DC
	b _080242F0
_080241DC:
	ldr r2, [sp, #0x2c]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	movs r4, #0x86
	lsls r4, r4, #1
	subs r0, r4, r6
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bgt _080241F8
	movs r1, #1
_080241F8:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x2c]
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _0802420C
	str r4, [sp, #0x2c]
_0802420C:
	movs r1, #0
	ldr r0, _08024310 @ =gPlayerStats
	adds r0, #0x64
	str r0, [sp, #0x3c]
	ldr r2, [sp, #0x2c]
	lsls r6, r2, #0x10
	ldr r3, _08024310 @ =gPlayerStats
	adds r3, #0x66
	str r3, [sp, #0x40]
	movs r0, #0x12
	add r0, sp
	mov r8, r0
	asrs r5, r6, #0x10
_08024226:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r0, r4, #1
	ldr r1, [sp, #0x40]
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802425C
	lsls r1, r4, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r5, r0
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	ldrh r2, [r2]
	lsls r2, r2, #2
	adds r2, #0x84
	ldr r3, _08024310 @ =gPlayerStats
	adds r2, r3, r2
	movs r3, #0
	bl sub_08023048
_0802425C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08024226
	asrs r4, r6, #0x10
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r4, r0
	adds r1, #0x28
	mov r2, sb
	str r2, [sp]
	ldr r3, _08024314 @ =0x0300644C
	str r3, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08003518
	mov r0, sb
	str r0, [sp]
	ldr r1, _08024314 @ =0x0300644C
	str r1, [sp, #4]
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	ldr r0, [r7]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #1
	bl sub_08003518
	bl WaitFrame
_080242C0:
	ldr r0, _08024318 @ =0x010B0000
	cmp r6, r0
	bgt _080242F0
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _080241D2
	bl sub_080077C0
	cmp r0, #0
	bne _080242F0
	bl sub_08007510
	cmp r0, #0
	bne _080242F0
	ldr r4, _0802431C @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080242F0
	b _080241B8
_080242F0:
	bl sub_080074CC
	cmp r0, #0
	bne _080242FA
	b _08023E94
_080242FA:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802430C: .4byte gUnknown_030063D8
_08024310: .4byte gPlayerStats
_08024314: .4byte 0x0300644C
_08024318: .4byte 0x010B0000
_0802431C: .4byte gPlayers
