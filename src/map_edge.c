#include "global.h"
#include "map.h"

extern u16 *gUnknown_03003C90[4];   // BG tilemap buffers (32 x 32)

// Copies a column of 21 tiles of the entry's tilemap, starting at pixel
// (x, y), into its BG tilemap buffer (which wraps at row 32).
void sub_08004934(struct MapEntry *entry, s16 x, s16 y)
{
    s16 pos[2];
    u16 *dest = gUnknown_03003C90[entry->unk10];
    u16 *src = (u16 *)entry->unk8;
    u16 count;
    u16 tileX;
    u16 tileY;         // then the tile's offset in the tilemap
    u16 i;

    if (x < 0)
        x = 0;
    if (y < 0)
        y = 0;
    pos[0] = (x & 0xFF) >> 3;
    pos[1] = (y & 0xFF) >> 3;
    count = 32 - pos[1];
    if (count > 21)
        count = 21;
    tileX = x >> 3;
    tileY = y >> 3;
    dest += pos[0];
    src += tileX;
    i = 0;
    tileY *= entry->unkC;
    while (i < count)
    {
        dest[pos[1] * 32] = src[tileY];
        i++;
        pos[1]++;
        tileY += entry->unkC;
    }
    pos[1] = 0;
    while (i < 21)
    {
        dest[pos[1] * 32] = src[tileY];
        i++;
        pos[1]++;
        tileY += entry->unkC;
    }
}

// Copies a row of 32 tiles of the entry's tilemap, starting at pixel
// (x, y), into its BG tilemap buffer (wrapping at column 32).
void sub_08004A1C(struct MapEntry *entry, s16 x, s16 y)
{
    s16 pos[2];
    u16 *dest = gUnknown_03003C90[entry->unk10];
    u16 *src = (u16 *)entry->unk8;
    u16 count;
    u16 tileX;
    u16 tileY;         // then the tile's offset in the tilemap

    if (x < 0)
        x = 0;
    if (y < 0)
        y = 0;
    pos[0] = (x & 0xFF) >> 3;
    pos[1] = (y & 0xFF) >> 3;
    count = 32 - pos[0];
    pos[1] = ((y & 0xFF) >> 3) * 32;
    tileX = x >> 3;
    tileY = y >> 3;
    tileY *= entry->unkC;
    tileY += tileX;
    if (count != 0)
        CpuSet(src + tileY, dest + (pos[0] + pos[1]), count);
    CpuSet(src + (count + tileY), dest + pos[1], (32 - count) & 0x1FFFFF);
}
