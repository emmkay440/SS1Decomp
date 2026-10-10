#ifndef GUARD_MAP_H
#define GUARD_MAP_H

// Two map layers with the same layout (src/map.c). Tiles are u16; their
// bits are read as a struct MapTile through a u32 access.

struct MapEntry
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u32 unk8;
    u8 unkC[0x8];
};                     // size 0x14

struct MapLayer
{
    struct MapEntry entries[4];
    u8 unk50[0x4];
    u16 *tiles;        // +0x54
    u16 width;         // +0x58 in tiles
    u8 unk5A[0x2];
    u16 originX;       // +0x5C
    u16 originY;       // +0x5E
    u16 unk60;
    u16 unk62;
    u8 unk64[0x4];
    u16 unk68;         // +0x68 index into gUnknown_080FB0F8 (area id?)
    u8 unk6A[0x2];
    u16 unk6C;         // +0x6C
    u8 unk6E[0xA];
    u32 flags;         // +0x78
};

struct MapTile
{
    u32 unk0:8;
    u32 attr:4;        // bits 8-11
    u32 attr4:1;       // bit 12
    u32 unk13:1;
    u32 type:2;        // bits 14-15
    u32 unk16:16;
};

extern struct MapLayer gMapLayer_03003910;
extern struct MapLayer gMapLayer_03003C00;

#endif // GUARD_MAP_H
