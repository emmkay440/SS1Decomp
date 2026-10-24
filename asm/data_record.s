	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start GetDataRecord
GetDataRecord: @ 0x08002B8C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08002BA8 @ =0x080FC200
	lsls r0, r3, #4
	lsrs r4, r0, #0x14
	cmp r4, #0x17
	bhi _08002C2E
	lsls r0, r4, #2
	ldr r1, _08002BAC @ =_08002BB0
	adds r1, r0, r1
	ldr r1, [r1]
	adds r5, r0, #0
	mov pc, r1
	.align 2, 0
_08002BA8: .4byte 0x080FC200
_08002BAC: .4byte _08002BB0
_08002BB0: @ jump table
	.4byte _08002C22 @ case 0
	.4byte _08002C22 @ case 1
	.4byte _08002C22 @ case 2
	.4byte _08002C22 @ case 3
	.4byte _08002C22 @ case 4
	.4byte _08002C22 @ case 5
	.4byte _08002C22 @ case 6
	.4byte _08002C22 @ case 7
	.4byte _08002C22 @ case 8
	.4byte _08002C22 @ case 9
	.4byte _08002C22 @ case 10
	.4byte _08002C22 @ case 11
	.4byte _08002C22 @ case 12
	.4byte _08002C22 @ case 13
	.4byte _08002C22 @ case 14
	.4byte _08002C22 @ case 15
	.4byte _08002C22 @ case 16
	.4byte _08002C22 @ case 17
	.4byte _08002C10 @ case 18
	.4byte _08002C16 @ case 19
	.4byte _08002C1C @ case 20
	.4byte _08002C2E @ case 21
	.4byte _08002C22 @ case 22
	.4byte _08002C22 @ case 23
_08002C10:
	ldr r0, [r2, #0xc]
	adds r2, r2, r0
	b _08002C32
_08002C16:
	ldr r0, [r2, #0x4c]
	adds r2, r2, r0
	b _08002C32
_08002C1C:
	ldr r0, [r2, #0x14]
	adds r2, r2, r0
	b _08002C32
_08002C22:
	adds r0, r2, #0
	adds r0, #8
	adds r0, r0, r5
	ldr r0, [r0]
	adds r2, r2, r0
	b _08002C32
_08002C2E:
	movs r0, #0
	b _08002E0C
_08002C32:
	cmp r4, #0x17
	bls _08002C38
	b _08002E0A
_08002C38:
	ldr r0, _08002C40 @ =0x08002C44
	adds r0, r5, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002C40: .4byte 0x08002C44
_08002C44:
	.4byte 0x08002CA4
	.4byte 0x08002DC8
	.4byte 0x08002CA4
	.4byte 0x08002DC8
	.4byte 0x08002CBC
	.4byte 0x08002CC8
	.4byte 0x08002CD4
	.4byte 0x08002CE0
	.4byte 0x08002CEC
	.4byte 0x08002CF8
	.4byte 0x08002D80
	.4byte 0x08002D8C
	.4byte 0x08002D98
	.4byte 0x08002DA4
	.4byte 0x08002DB0
	.4byte 0x08002DBC
	.4byte 0x08002CB0
	.4byte 0x08002DC8
	.4byte 0x08002DD4
	.4byte 0x08002DD4
	.4byte 0x08002DD4
	.4byte 0x08002E0A
	.4byte 0x08002DEC
	.4byte 0x08002E08
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE098
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE092
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE08C
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE086
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE080
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE07A
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE074
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x1C14
	.inst.n 0x4805
	.inst.n 0x8800
	.inst.n 0x2805
	.inst.n 0xD900
	.inst.n 0xE082
	.inst.n 0x0080
	.inst.n 0x4903
	.inst.n 0x1840
	.inst.n 0x6800
	.inst.n 0x4687
	.inst.n 0x0000
	.4byte gLanguage
	.4byte 0x08002D18
	.4byte 0x08002D30
	.4byte 0x08002D44
	.4byte 0x08002D4C
	.4byte 0x08002D54
	.4byte 0x08002D5C
	.4byte 0x08002D64
	.inst.n 0x4803
	.inst.n 0x4018
	.inst.n 0x0080
	.inst.n 0x1D21
	.inst.n 0x1809
	.inst.n 0x6808
	.inst.n 0x1822
	.inst.n 0xE064
	.4byte 0x0000FFFF
	.inst.n 0x4800
	.inst.n 0xE00E
	.4byte 0x00090107
	.inst.n 0x4800
	.inst.n 0xE00A
	.4byte 0x0009020E
	.inst.n 0x4800
	.inst.n 0xE006
	.4byte 0x00090315
	.inst.n 0x4800
	.inst.n 0xE002
	.4byte 0x0009041C
	.inst.n 0x4804
	.inst.n 0x1819
	.inst.n 0x4804
	.inst.n 0x4001
	.inst.n 0x0089
	.inst.n 0x1D20
	.inst.n 0x1840
	.inst.n 0x6800
	.inst.n 0x1822
	.inst.n 0xE048
	.4byte 0x00090523
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE02A
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE024
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE01E
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE018
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE012
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0xE00C
	.inst.n 0x0000
	.4byte 0x0000FFFF
	.inst.n 0x4801
	.inst.n 0x4018
	.inst.n 0x00C0
	.inst.n 0xE006
	.4byte 0x0000FFFF
	.inst.n 0x4804
	.inst.n 0x4018
	.inst.n 0x0040
	.inst.n 0x3001
	.inst.n 0x0080
	.inst.n 0x1D11
	.inst.n 0x1809
	.inst.n 0x6808
	.inst.n 0x1812
	.inst.n 0xE010
	.4byte 0x0000FFFF
	.inst.n 0x4804
	.inst.n 0x4018
	.inst.n 0x0041
	.inst.n 0x1809
	.inst.n 0x0089
	.inst.n 0x1809
	.inst.n 0x0149
	.inst.n 0x4802
	.inst.n 0x180A
	.inst.n 0xE004
	.4byte 0x0000FFFF
	.4byte 0x080FABD8
	.inst.n 0x4A02
_08002E0A:
	adds r0, r2, #0
_08002E0C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08002E14:
	.byte 0x5C, 0xAB, 0x0F, 0x08
