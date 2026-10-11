	.include "asm/macros.inc"

	.syntax unified
	.text

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
