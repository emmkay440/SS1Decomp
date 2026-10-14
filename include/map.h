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
    u32 unk8;          // +0x08 the entry's tilemap (u16 tiles, `unkC` per row)
    u16 unkC;          // +0x0C tilemap width in tiles
    u16 unkE;          // +0x0E tilemap height in tiles
    u16 unk10;         // +0x10 index of its BG tilemap buffer (gUnknown_03003C90)
    u8 unk12[0x2];
};                     // size 0x14

struct MapLayer
{
    struct MapEntry entries[4];
    s16 *map;          // +0x50 map data: width, height, ... ; tiles follow at +0x10 + width * height * 6
    u16 *tiles;        // +0x54
    u16 width;         // +0x58 in tiles
    u16 height;        // +0x5A
    u16 originX;       // +0x5C
    u16 originY;       // +0x5E
    u16 unk60;
    u16 unk62;
    u16 unk64;         // +0x64 origin minus unk60 (kept while flag 0x10 holds the camera)
    u16 unk66;
    u16 unk68;         // +0x68 index into gUnknown_080FB0F8 (area id?)
    u8 unk6A[0x2];
    u16 unk6C;         // +0x6C
    u8 unk6E[0xA];
    u32 flags;         // +0x78
    u8 unk7C[0x10];
    u8 *record;        // +0x8C the area's data record (second layer, sub_08004EF8)
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
