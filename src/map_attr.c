#include "global.h"
#include "map.h"

// Draw priority for a sprite at (x, y) in pixels on layer 0 or 1, from the
// map tile's type (bits 14-15): 0 -> 2, 1 -> 1, 2 -> 3. Type 3 has no
// return (r0 still holds x). Same layout as GetMapTileAttributes below.
u32 sub_08006008(u32 x, u32 y, u32 which)
{
    void *p;
    u16 *tiles;

    x >>= 3;
    y >>= 3;
    if (which)
    {
        p = &gMapLayer_03003C00;
        tiles = ((struct MapLayer *)p)->tiles;
    }
    else
    {
        p = &gMapLayer_03003910;
        tiles = ((struct MapLayer *)p)->tiles;
    }
    p = tiles + (x + y * ((struct MapLayer *)p)->width);
    switch (((struct MapTile *)p)->type)
    {
    case 0:
        return 2;
    case 1:
        return 1;
    case 2:
        return 3;
    }
}

// Attribute bits of the map tile under (x, y) (pixels << 12, so
// >> 15 is the 8-pixel cell) on layer 0 or 1: attr (bits 8-11) and bit 12
// as bit 4. One pointer holds the layer and then the tile.
u32 GetMapTileAttributes(s32 x, s32 y, u32 which)
{
    void *p;
    u16 *tiles;
    u32 attr;

    if (which)
    {
        p = &gMapLayer_03003C00;
        tiles = ((struct MapLayer *)p)->tiles;
    }
    else
    {
        p = &gMapLayer_03003910;
        tiles = ((struct MapLayer *)p)->tiles;
    }
    p = tiles + ((x >> 15) + (y >> 15) * ((struct MapLayer *)p)->width);
    attr = ((struct MapTile *)p)->attr;
    return (((struct MapTile *)p)->attr4 << 4) | attr;
}
