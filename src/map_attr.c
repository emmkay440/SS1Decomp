#include "global.h"
#include "map.h"

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
