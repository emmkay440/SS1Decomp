	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800EEA0
sub_0800EEA0: @ 0x0800EEA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0800EEE8 @ =gFadeFlags
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0800EEEC @ =gBgRegsBuffer
	mov sl, r0
_0800EEB4:
	movs r0, #0x64
	bl _08000400
	ldr r0, _0800EEE8 @ =gFadeFlags
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0800EF58
	ldr r2, _0800EEEC @ =gBgRegsBuffer
	adds r0, r2, #0
	adds r0, #0x40
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r0]
	ldr r1, _0800EEF0 @ =gFadeDirection
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800EEF4
	adds r0, r2, #0
	adds r0, #0x44
	strh r3, [r0]
	b _0800EEFC
	.align 2, 0
_0800EEE8: .4byte gFadeFlags
_0800EEEC: .4byte gBgRegsBuffer
_0800EEF0: .4byte gFadeDirection
_0800EEF4:
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0x10
	strh r0, [r1]
_0800EEFC:
	ldr r4, _0800EF48 @ =gFadeTimer
	ldr r5, _0800EF4C @ =gFadeDuration
	ldr r6, _0800EF50 @ =0x03001CA4
	ldr r0, _0800EF54 @ =gFadeDirection
	mov r8, r0
	mov sb, r4
_0800EF08:
	ldrh r0, [r4]
	lsls r0, r0, #4
	ldrh r1, [r5]
	bl __divsi3
	strh r0, [r6]
	ldr r1, _0800EF54 @ =gFadeDirection
	ldrh r0, [r1]
	ldrh r3, [r4]
	adds r2, r0, r3
	strh r2, [r4]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	ble _0800EF30
	ldrh r1, [r5]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800EFE8
_0800EF30:
	cmp r3, #0
	bge _0800EF40
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	bne _0800EFE8
_0800EF40:
	bl WaitFrame
	b _0800EF08
	.align 2, 0
_0800EF48: .4byte gFadeTimer
_0800EF4C: .4byte gFadeDuration
_0800EF50: .4byte 0x03001CA4
_0800EF54: .4byte gFadeDirection
_0800EF58:
	movs r3, #0x10
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0800EFFC
	ldr r1, _0800EF78 @ =gFadeDirection
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800EF7C
	mov r0, sl
	adds r0, #0x44
	strh r2, [r0]
	b _0800EF82
	.align 2, 0
_0800EF78: .4byte gFadeDirection
_0800EF7C:
	mov r0, sl
	adds r0, #0x44
	strh r3, [r0]
_0800EF82:
	ldr r5, _0800EFD8 @ =gBgRegsBuffer
	ldr r4, _0800EFDC @ =gFadeTimer
	ldr r6, _0800EFE0 @ =gFadeDuration
	adds r7, r5, #0
	adds r7, #0x44
	ldr r0, _0800EFE4 @ =gFadeDirection
	mov r8, r0
	mov sb, r4
_0800EF92:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xff
	strh r0, [r1]
	ldrh r0, [r4]
	lsls r0, r0, #4
	ldrh r1, [r6]
	bl __divsi3
	strh r0, [r7]
	ldr r1, _0800EFE4 @ =gFadeDirection
	ldrh r0, [r1]
	ldrh r3, [r4]
	adds r2, r0, r3
	strh r2, [r4]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	ble _0800EFC2
	ldrh r1, [r6]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800EFE8
_0800EFC2:
	cmp r3, #0
	bge _0800EFD2
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	bne _0800EFE8
_0800EFD2:
	bl WaitFrame
	b _0800EF92
	.align 2, 0
_0800EFD8: .4byte gBgRegsBuffer
_0800EFDC: .4byte gFadeTimer
_0800EFE0: .4byte gFadeDuration
_0800EFE4: .4byte gFadeDirection
_0800EFE8:
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	blt _0800EFF4
	b _0800F15A
_0800EFF4:
	movs r0, #0
	mov r4, sb
	strh r0, [r4]
	b _0800F15A
_0800EFFC:
	ldr r2, _0800F088 @ =gFadeDuration
	strh r3, [r2]
	ldr r3, _0800F08C @ =gFadeDirection
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _0800F0A0
	mov r0, sl
	strh r1, [r0, #0x3a]
	ldr r0, _0800F090 @ =0x00003F3F
	mov r1, sl
	strh r0, [r1, #0x38]
	ldr r7, _0800F094 @ =gFadeTimer
	mov sb, r2
	ldr r2, _0800F098 @ =gBgRegsBuffer
	mov r8, r2
_0800F01C:
	ldrh r4, [r7]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	mov r3, sb
	ldrh r5, [r3]
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r2, #8
	movs r0, #0xf0
	subs r0, r0, r2
	orrs r1, r0
	mov r4, r8
	strh r1, [r4, #0x30]
	lsls r1, r6, #8
	movs r0, #0xa0
	subs r0, r0, r6
	orrs r1, r0
	strh r1, [r4, #0x34]
	ldr r1, _0800F08C @ =gFadeDirection
	ldrh r0, [r1]
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
	mov r3, sb
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800F15A
	ldr r0, _0800F09C @ =gPaletteBuffer
	movs r4, #0
	strh r4, [r0]
	bl WaitFrame
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #1
	bl EnableDisplayLayers
	b _0800F01C
	.align 2, 0
_0800F088: .4byte gFadeDuration
_0800F08C: .4byte gFadeDirection
_0800F090: .4byte 0x00003F3F
_0800F094: .4byte gFadeTimer
_0800F098: .4byte gBgRegsBuffer
_0800F09C: .4byte gPaletteBuffer
_0800F0A0:
	movs r0, #0
	mov r1, sl
	strh r0, [r1, #0x3a]
	ldr r0, _0800F128 @ =0x00003F3F
	strh r0, [r1, #0x38]
	movs r0, #0
	ldr r1, _0800F12C @ =gFadeTimer
	strh r0, [r1]
	movs r0, #1
	ldr r2, _0800F130 @ =gFadeDirection
	strh r0, [r2]
	adds r7, r1, #0
	ldr r3, _0800F134 @ =gFadeDuration
	mov sb, r3
	ldr r4, _0800F138 @ =gBgRegsBuffer
	mov r8, r4
_0800F0C0:
	ldrh r4, [r7]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	mov r1, sb
	ldrh r5, [r1]
	adds r1, r5, #0
	bl __divsi3
	movs r1, #0x50
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	movs r1, #0x78
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r1, r2, #8
	movs r0, #0xf0
	subs r0, r0, r2
	orrs r1, r0
	mov r2, r8
	strh r1, [r2, #0x30]
	lsls r1, r6, #8
	movs r0, #0xa0
	subs r0, r0, r6
	orrs r1, r0
	strh r1, [r2, #0x34]
	ldr r3, _0800F130 @ =gFadeDirection
	ldrh r0, [r3]
	ldrh r4, [r7]
	adds r0, r0, r4
	strh r0, [r7]
	mov r2, sb
	ldrh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800F140
	ldr r0, _0800F13C @ =gPaletteBuffer
	movs r3, #0
	strh r3, [r0]
	bl WaitFrame
	b _0800F0C0
	.align 2, 0
_0800F128: .4byte 0x00003F3F
_0800F12C: .4byte gFadeTimer
_0800F130: .4byte gFadeDirection
_0800F134: .4byte gFadeDuration
_0800F138: .4byte gBgRegsBuffer
_0800F13C: .4byte gPaletteBuffer
_0800F140:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #1
	bl DisableDisplayLayers
	movs r4, #1
	rsbs r4, r4, #0
	adds r0, r4, #0
	ldr r1, _0800F16C @ =gFadeDirection
	strh r0, [r1]
	movs r2, #0
	strh r2, [r7]
_0800F15A:
	ldr r0, _0800F170 @ =gFadeFlags
	ldrh r1, [r0]
	movs r3, #0x17
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	b _0800EEB4
	.align 2, 0
_0800F16C: .4byte gFadeDirection
_0800F170: .4byte gFadeFlags
