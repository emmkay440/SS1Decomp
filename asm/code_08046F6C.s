	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08046F6C
sub_08046F6C: @ 0x08046F6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _08046F98 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #5
	beq _0804701C
	ldr r0, _08046F9C @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08047064
	lsls r0, r0, #2
	ldr r1, _08046FA0 @ =_08046FA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046F98: .4byte gUnknown_030005F0
_08046F9C: .4byte gLanguage
_08046FA0: .4byte _08046FA4
_08046FA4: @ jump table
	.4byte _08046FB8 @ case 0
	.4byte _08046FCC @ case 1
	.4byte _08046FE0 @ case 2
	.4byte _08046FF4 @ case 3
	.4byte _08047008 @ case 4
_08046FB8:
	ldr r0, _08046FC4 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FC8
	movs r0, #0x5d
	b _0804705E
	.align 2, 0
_08046FC4: .4byte gUnknown_030005F1
_08046FC8:
	movs r0, #0x5e
	b _0804705E
_08046FCC:
	ldr r0, _08046FD8 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FDC
	movs r0, #0x82
	b _0804705E
	.align 2, 0
_08046FD8: .4byte gUnknown_030005F1
_08046FDC:
	movs r0, #0x81
	b _0804705E
_08046FE0:
	ldr r0, _08046FEC @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FF0
	movs r0, #0x83
	b _0804705E
	.align 2, 0
_08046FEC: .4byte gUnknown_030005F1
_08046FF0:
	movs r0, #0x85
	b _0804705E
_08046FF4:
	ldr r0, _08047000 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047004
	movs r0, #0x88
	b _0804705E
	.align 2, 0
_08047000: .4byte gUnknown_030005F1
_08047004:
	movs r0, #0x86
	b _0804705E
_08047008:
	ldr r0, _08047014 @ =gUnknown_030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047018
	movs r0, #0x87
	b _0804705E
	.align 2, 0
_08047014: .4byte gUnknown_030005F1
_08047018:
	movs r0, #0x84
	b _0804705E
_0804701C:
	ldr r0, _08047030 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08047064
	lsls r0, r0, #2
	ldr r1, _08047034 @ =_08047038
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047030: .4byte gLanguage
_08047034: .4byte _08047038
_08047038: @ jump table
	.4byte _0804704C @ case 0
	.4byte _08047050 @ case 1
	.4byte _08047054 @ case 2
	.4byte _08047058 @ case 3
	.4byte _0804705C @ case 4
_0804704C:
	movs r0, #0x5c
	b _0804705E
_08047050:
	movs r0, #0x80
	b _0804705E
_08047054:
	movs r0, #0x7e
	b _0804705E
_08047058:
	movs r0, #0x7f
	b _0804705E
_0804705C:
	movs r0, #0x7d
_0804705E:
	bl GetDataRecord
	adds r5, r0, #0
_08047064:
	movs r6, #0
	ldr r0, _08047078 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #8
	bhi _08047124
	lsls r0, r0, #2
	ldr r1, _0804707C @ =_08047080
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047078: .4byte gUnknown_030005F0
_0804707C: .4byte _08047080
_08047080: @ jump table
	.4byte _080470A4 @ case 0
	.4byte _080470A4 @ case 1
	.4byte _080470A4 @ case 2
	.4byte _080470AE @ case 3
	.4byte _080470AE @ case 4
	.4byte _080470D0 @ case 5
	.4byte _080470A4 @ case 6
	.4byte _080470A4 @ case 7
	.4byte _080470A4 @ case 8
_080470A4:
	movs r0, #8
	bl GetDataRecord
	adds r6, r0, #0
	b _080470C2
_080470AE:
	movs r0, #9
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
_080470C2:
	movs r0, #0xe8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _08047124
_080470D0:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r0, _080470F0 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08047124
	lsls r0, r0, #2
	ldr r1, _080470F4 @ =_080470F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080470F0: .4byte gLanguage
_080470F4: .4byte _080470F8
_080470F8: @ jump table
	.4byte _0804710C @ case 0
	.4byte _08047110 @ case 1
	.4byte _08047114 @ case 2
	.4byte _08047118 @ case 3
	.4byte _0804711C @ case 4
_0804710C:
	movs r0, #0x5c
	b _0804711E
_08047110:
	movs r0, #0x80
	b _0804711E
_08047114:
	movs r0, #0x7e
	b _0804711E
_08047118:
	movs r0, #0x7f
	b _0804711E
_0804711C:
	movs r0, #0x7d
_0804711E:
	bl GetDataRecord
	adds r6, r0, #0
_08047124:
	ldr r4, _08047188 @ =gUnknown_03000608
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _0804718C @ =0x0600F800
	movs r7, #0x80
	lsls r7, r7, #4
	adds r2, r7, #0
	bl QueueCopy
	cmp r6, #0
	beq _08047150
	ldr r4, _08047190 @ =gUnknown_0300060C
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _08047194 @ =0x0600F000
	adds r2, r7, #0
	bl QueueCopy
_08047150:
	ldr r0, _08047198 @ =gUnknown_030005F0
	ldrb r0, [r0]
	cmp r0, #5
	bne _08047208
	ldr r1, _0804719C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080471A0 @ =0x00001D01
	orrs r0, r1
	str r0, [sp]
	movs r0, #1
	mov r1, sp
	bl SetBgCnt
	ldr r0, _080471A4 @ =gUnknown_030005F2
	ldrb r0, [r0]
	cmp r0, #2
	bne _080471DC
	ldr r0, _080471A8 @ =gLanguage
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080471DC
	lsls r0, r0, #2
	ldr r1, _080471AC @ =_080471B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047188: .4byte gUnknown_03000608
_0804718C: .4byte 0x0600F800
_08047190: .4byte gUnknown_0300060C
_08047194: .4byte 0x0600F000
_08047198: .4byte gUnknown_030005F0
_0804719C: .4byte 0xFFFF0000
_080471A0: .4byte 0x00001D01
_080471A4: .4byte gUnknown_030005F2
_080471A8: .4byte gLanguage
_080471AC: .4byte _080471B0
_080471B0: @ jump table
	.4byte _080471C4 @ case 0
	.4byte _080471C8 @ case 1
	.4byte _080471CC @ case 2
	.4byte _080471D0 @ case 3
	.4byte _080471D4 @ case 4
_080471C4:
	movs r0, #0x5a
	b _080471D6
_080471C8:
	movs r0, #0x7c
	b _080471D6
_080471CC:
	movs r0, #0x7a
	b _080471D6
_080471D0:
	movs r0, #0x7b
	b _080471D6
_080471D4:
	movs r0, #0x79
_080471D6:
	bl GetDataRecord
	mov r8, r0
_080471DC:
	ldr r4, _08047200 @ =gUnknown_03000610
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _08047204 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _08047224
	.align 2, 0
_08047200: .4byte gUnknown_03000610
_08047204: .4byte 0x0600E800
_08047208:
	cmp r0, #7
	bne _08047224
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0xe0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
_08047224:
	mov r0, sb
	cmp r0, #0
	beq _0804726E
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804725E
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08047254
	ldr r1, _08047250 @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #7
	b _08047266
	.align 2, 0
_08047250: .4byte 0x06004000
_08047254:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #7
	b _08047266
_0804725E:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
_08047266:
	adds r0, r3, #0
	bl QueueCopy
	b _080472B2
_0804726E:
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _080472A4
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08047294
	ldr r1, _08047290 @ =0x06004000
	b _08047298
	.align 2, 0
_08047290: .4byte 0x06004000
_08047294:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08047298:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	bl sub_08048484
	b _080472B2
_080472A4:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	bl sub_08048484
_080472B2:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	movs r2, #0
	ldr r5, _080472F4 @ =gUnknown_03000614
	movs r3, #0
	ldr r4, _080472F8 @ =gUnknown_0300061C
_080472D0:
	lsls r1, r2, #1
	adds r0, r1, r5
	strh r3, [r0]
	adds r1, r1, r4
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _080472D0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080472F4: .4byte gUnknown_03000614
_080472F8: .4byte gUnknown_0300061C
