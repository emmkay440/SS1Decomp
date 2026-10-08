	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803F5E8
sub_0803F5E8: @ 0x0803F5E8
	ldr r0, _0803F64C @ =gMenuPage
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803F650 @ =gUnknown_03000479
	strb r1, [r0]
	ldr r1, _0803F654 @ =0x03000488
	movs r0, #0
	str r0, [r1]
	ldr r1, _0803F658 @ =gMenuHeldCount
	str r0, [r1]
	ldr r1, _0803F65C @ =gUnknown_0300047A
	strb r0, [r1]
	ldr r2, _0803F660 @ =gUnknown_030004C0
	movs r3, #1
	rsbs r3, r3, #0
	adds r1, r3, #0
	strb r1, [r2]
	ldr r1, _0803F664 @ =gUnknown_0300047B
	strb r0, [r1]
	ldr r1, _0803F668 @ =gUnknown_0300047C
	strb r0, [r1]
	ldr r1, _0803F66C @ =gUnknown_0300048C
	str r0, [r1]
	ldr r1, _0803F670 @ =gUnknown_03000490
	str r0, [r1]
	ldr r1, _0803F674 @ =gMenuSavedStatPoints
	strh r0, [r1]
	ldr r1, _0803F678 @ =gMenuSavedSkillPoints
	strh r0, [r1]
	ldr r1, _0803F67C @ =gMenuInventory
	str r0, [r1]
	ldr r1, _0803F680 @ =gMenuWeapons
	str r0, [r1]
	ldr r1, _0803F684 @ =gUnknown_03000494
	str r0, [r1]
	ldr r1, _0803F688 @ =gMenuEquipment
	str r0, [r1]
	ldr r1, _0803F68C @ =gUnknown_030004A4
	str r0, [r1]
	ldr r1, _0803F690 @ =gUnknown_030004A8
	str r0, [r1]
	ldr r1, _0803F694 @ =gMenuSelectedItem
	str r0, [r1]
	ldr r1, _0803F698 @ =gMenuStatBlock
	str r0, [r1]
	ldr r1, _0803F69C @ =gMenuSkillBlock
	str r0, [r1]
	ldr r1, _0803F6A0 @ =gUnknown_030004B8
	str r0, [r1]
	bx lr
	.align 2, 0
_0803F64C: .4byte gMenuPage
_0803F650: .4byte gUnknown_03000479
_0803F654: .4byte 0x03000488
_0803F658: .4byte gMenuHeldCount
_0803F65C: .4byte gUnknown_0300047A
_0803F660: .4byte gUnknown_030004C0
_0803F664: .4byte gUnknown_0300047B
_0803F668: .4byte gUnknown_0300047C
_0803F66C: .4byte gUnknown_0300048C
_0803F670: .4byte gUnknown_03000490
_0803F674: .4byte gMenuSavedStatPoints
_0803F678: .4byte gMenuSavedSkillPoints
_0803F67C: .4byte gMenuInventory
_0803F680: .4byte gMenuWeapons
_0803F684: .4byte gUnknown_03000494
_0803F688: .4byte gMenuEquipment
_0803F68C: .4byte gUnknown_030004A4
_0803F690: .4byte gUnknown_030004A8
_0803F694: .4byte gMenuSelectedItem
_0803F698: .4byte gMenuStatBlock
_0803F69C: .4byte gMenuSkillBlock
_0803F6A0: .4byte gUnknown_030004B8
