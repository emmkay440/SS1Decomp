	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803F73C
sub_0803F73C: @ 0x0803F73C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0803F820 @ =gMenuPage
	strb r0, [r1]
	adds r5, r1, #0
	cmp r0, #6
	bne _0803F74E
	b _0803F890
_0803F74E:
	cmp r0, #8
	bne _0803F754
	b _0803F896
_0803F754:
	cmp r0, #9
	bne _0803F75A
	b _0803F890
_0803F75A:
	ldr r4, _0803F824 @ =gMenuInventory
	movs r0, #0x64
	bl Alloc
	str r0, [r4]
	bl GetInventory
	ldr r4, _0803F828 @ =gMenuStatBlock
	movs r0, #0x1c
	bl Alloc
	str r0, [r4]
	movs r1, #0x1c
	bl bzero
	ldr r0, [r4]
	bl GetStatBlock
	ldr r1, _0803F82C @ =gMenuSavedStatPoints
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	strh r0, [r1]
	ldr r4, _0803F830 @ =gMenuSkillBlock
	movs r0, #0x24
	bl Alloc
	str r0, [r4]
	movs r1, #0x24
	bl bzero
	ldr r0, [r4]
	bl GetSkillBlock
	ldr r1, _0803F834 @ =gMenuSavedSkillPoints
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #7
	beq _0803F7F2
	ldr r4, _0803F838 @ =gMenuWeapons
	movs r0, #0xc
	bl Alloc
	str r0, [r4]
	bl GetWeapons
	ldr r4, _0803F83C @ =gMenuEquipment
	movs r0, #0x10
	bl Alloc
	str r0, [r4]
	bl sub_08013A58
	ldr r1, [r4]
	str r0, [r1]
	bl GetArmor
	ldr r1, [r4]
	str r0, [r1, #4]
	bl sub_08013A78
	adds r1, r0, #0
	ldr r0, [r4]
	str r1, [r0, #8]
	adds r0, #0xc
	movs r1, #4
	bl bzero
	ldr r4, _0803F840 @ =gUnknown_03000494
	movs r0, #0xc
	bl Alloc
	str r0, [r4]
	bl sub_08013AC4
_0803F7F2:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0803F7FA
	b _0803F912
_0803F7FA:
	cmp r0, #5
	beq _0803F874
	ldr r4, _0803F844 @ =gUnknown_030004A4
	movs r0, #0x3c
	bl Alloc
	str r0, [r4]
	movs r1, #0x3c
	bl bzero
	ldrb r1, [r5]
	cmp r1, #3
	beq _0803F858
	cmp r1, #3
	bgt _0803F848
	cmp r1, #2
	beq _0803F84E
	b _0803F86A
	.align 2, 0
_0803F820: .4byte gMenuPage
_0803F824: .4byte gMenuInventory
_0803F828: .4byte gMenuStatBlock
_0803F82C: .4byte gMenuSavedStatPoints
_0803F830: .4byte gMenuSkillBlock
_0803F834: .4byte gMenuSavedSkillPoints
_0803F838: .4byte gMenuWeapons
_0803F83C: .4byte gMenuEquipment
_0803F840: .4byte gUnknown_03000494
_0803F844: .4byte gUnknown_030004A4
_0803F848:
	cmp r1, #4
	beq _0803F862
	b _0803F86A
_0803F84E:
	ldr r1, [r4]
	movs r0, #0
	bl sub_08013B94
	b _0803F86A
_0803F858:
	ldr r1, [r4]
	movs r0, #1
	bl sub_08013B94
	b _0803F86A
_0803F862:
	ldr r1, [r4]
	movs r0, #2
	bl sub_08013B94
_0803F86A:
	ldr r4, _0803F870 @ =gUnknown_030004A8
	b _0803F876
	.align 2, 0
_0803F870: .4byte gUnknown_030004A8
_0803F874:
	ldr r4, _0803F88C @ =gUnknown_030004A4
_0803F876:
	movs r0, #0xf0
	bl Alloc
	str r0, [r4]
	movs r1, #0xf0
	bl bzero
	ldr r0, [r4]
	bl GetStorage
	b _0803F912
	.align 2, 0
_0803F88C: .4byte gUnknown_030004A4
_0803F890:
	ldrb r1, [r5]
	cmp r1, #8
	bne _0803F8F8
_0803F896:
	ldr r4, _0803F8E4 @ =gMenuInventory
	movs r0, #0x64
	bl Alloc
	str r0, [r4]
	bl GetInventory
	ldr r4, _0803F8E8 @ =gMenuStatBlock
	movs r0, #0x1c
	bl Alloc
	str r0, [r4]
	movs r1, #0x1c
	bl bzero
	ldr r0, [r4]
	bl GetStatBlock
	ldr r1, _0803F8EC @ =gMenuSavedStatPoints
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	strh r0, [r1]
	ldr r4, _0803F8F0 @ =gMenuSkillBlock
	movs r0, #0x24
	bl Alloc
	str r0, [r4]
	movs r1, #0x24
	bl bzero
	ldr r0, [r4]
	bl GetSkillBlock
	ldr r1, _0803F8F4 @ =gMenuSavedSkillPoints
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	b _0803F912
	.align 2, 0
_0803F8E4: .4byte gMenuInventory
_0803F8E8: .4byte gMenuStatBlock
_0803F8EC: .4byte gMenuSavedStatPoints
_0803F8F0: .4byte gMenuSkillBlock
_0803F8F4: .4byte gMenuSavedSkillPoints
_0803F8F8:
	cmp r1, #9
	bne _0803F912
	ldr r4, _0803F920 @ =gUnknown_030004B8
	movs r0, #4
	bl Alloc
	str r0, [r4]
	movs r1, #4
	bl bzero
	ldr r0, [r4]
	bl GetOptions
_0803F912:
	bl sub_08040D44
	ldr r1, _0803F924 @ =gUnknown_03000488
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F920: .4byte gUnknown_030004B8
_0803F924: .4byte gUnknown_03000488
