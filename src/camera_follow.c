#include "global.h"
#include "map.h"

// Centers a map layer's view on (x, y) (fixed point, 4.12 in tiles of 8
// pixels... the integer part is in pixels), clamped to the map: the
// second layer if `second`, else the first. Unless flag 0x10 holds it,
// the first layer remembers the offset in unk64/unk66 (and with the flag
// set it is restored from them). x and y come back with the integer part
// unchanged.
// Declared u32 with no return: the original never uses r0 as scratch.
u32 sub_0800588C(u32 *x, u32 *y, u32 second)
{
    struct MapLayer *layer;
    u16 px = *x >> 12;
    u16 py = *y >> 12;
    s32 fx;
    s32 fy;
    u32 held;

    if (second)
    {
        layer = &gMapLayer_03003C00;
        held = layer->flags & 0x10;
        fx = px << 16;
        fy = py << 16;
        if (!held)
        {
            layer->originX = (fx >> 16) + layer->unk60 - 120;
            layer->originY = (fy >> 16) + layer->unk62 - 88;
        }
        if ((s16)layer->originX < 0)
            layer->originX = 0;
        if ((s16)layer->originX > (layer->width - 30) * 8)
            layer->originX = (layer->width - 30) * 8;
        if ((s16)layer->originY < 0)
            layer->originY = 0;
        if ((s16)layer->originY > (layer->height - 20) * 8)
            layer->originY = (layer->height - 20) * 8;
    }
    else
    {
        layer = &gMapLayer_03003910;
        held = layer->flags & 0x10;
        fx = px << 16;
        fy = py << 16;
        if (!held)
        {
            layer->originX = (fx >> 16) + layer->unk60 - 120;
            layer->originY = (fy >> 16) + layer->unk62 - 88;
        }
        if ((s16)layer->originX < 0)
            layer->originX = 0;
        if ((s16)layer->originX > (layer->width - 30) * 8)
            layer->originX = (layer->width - 30) * 8;
        if ((s16)layer->originY < 0)
            layer->originY = 0;
        if ((s16)layer->originY > (layer->height - 20) * 8)
            layer->originY = (layer->height - 20) * 8;
        if (!(layer->flags & 0x10))
        {
            layer->unk64 = layer->originX - layer->unk60;
            layer->unk66 = layer->originY - layer->unk62;
        }
        else
        {
            layer->originX = layer->unk60 + layer->unk64;
            layer->originY = layer->unk62 + layer->unk66;
        }
    }
    px = *x & 0xFFF;
    py = *y & 0xFFF;
    *x = px + (fx >> 4);
    *y = py + (fy >> 4);
}
