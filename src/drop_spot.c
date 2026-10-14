#include "global.h"
#include "heap.h"
#include "item.h"

extern u32 gUnknown_030063B4;      // next field item id (1-127)
extern u32 gUnknown_030063BC;      // next field item slot to take over when all are used

int abs(int x);
void *sub_08001430(u32 size);
u32 GetMapTileAttributes(s32 x, s32 y, u32 layer);

static inline struct FieldItem *FindFieldItemNear(s32 x, s32 y, u32 layer)
{
    struct FieldItem *item = gFieldItems;
    u32 i;

    for (i = 0; i < NUM_FIELD_ITEMS; i++, item++)
    {
        if (item->active & 1)
        {
            s32 dx = abs((x - item->x) >> 12);
            s32 dy = abs((y - item->y) >> 12);

            if (dx <= 7 && dy <= 7 && layer == item->layer)
                return item;
        }
    }
    return NULL;
}

// Puts `item` on the map near (x, y): marks the free spots of a 21 x 21
// grid of quarter tiles around it (walkable, no field item within 7 pixels)
// and takes the first free field item slot at the nearest such spot,
// searching outward up to 9 steps. When all 15 slots are in use the
// oldest one (gUnknown_030063BC) is freed first. Returns the field item,
// or NULL if there is no item or no spot.
struct FieldItem *sub_0800FA74(s32 x, s32 y, u32 layer, struct Item *item)
{
    u32 i;
    u8 *grid = sub_08001430(21 * 21);
    struct FieldItem *field;
    u32 count;
    s32 gx;
    s32 gy;
    s32 px;
    s32 py;
    s32 range;

    if (item->category == 0)
    {
        field = gFieldItems;
        goto fail;
    }
    field = gFieldItems;
    count = 0;
    for (i = 0; i < NUM_FIELD_ITEMS; i++, field++)
    {
        if (field->active & 1)
            count++;
    }
    if (count >= NUM_FIELD_ITEMS)
    {
        field = gFieldItems;
        field[gUnknown_030063BC].active = 0;
        if (++gUnknown_030063BC >= NUM_FIELD_ITEMS)
            gUnknown_030063BC = 0;
    }
    for (gx = 0; gx <= 20; gx++)
    {
        px = x + ((gx - 10) << 14);
        for (gy = 0; gy <= 20; gy++)
        {
            py = y + ((gy - 10) << 14);
            if ((GetMapTileAttributes(px, py, layer == 0) & 7) == 0 && FindFieldItemNear(px, py, layer) == NULL)
                grid[gy * 21 + gx] = 1;
            else
                grid[gy * 21 + gx] = 0;
        }
    }
    field = gFieldItems;
    for (i = 0; i < NUM_FIELD_ITEMS; i++, field++)
    {
        if (field->active & 1)
            continue;
        field->x = x;
        field->y = y;
        field->item = *item;
        field->unk10 = gUnknown_030063B4;
        if (++gUnknown_030063B4 > 127)
            gUnknown_030063B4 = 1;
        field->unk14 = 5;
        field->layer = layer;
        for (range = 0; range <= 9; range++)
        {
            for (gx = -range; gx < range; gx++)
            {
                px = field->x + (gx << 14);
                for (gy = -range; gy < range; gy++)
                {
                    py = field->y + (gy << 14);
                    if (grid[(gy + 10) * 21 + gx + 10])
                    {
                        field->x = px;
                        field->y = py;
                        field->active = 1;
                        Free(grid);
                        return field;
                    }
                }
            }
        }
    }
fail:
    Free(grid);
    return NULL;
}

// sub_0800FA74 with the field item id (unk10) given by the caller instead
// of a new one.
struct FieldItem *sub_0800FC70(s32 x, s32 y, u32 layer, struct Item *item, u32 id)
{
    u32 i;
    u8 *grid = sub_08001430(21 * 21);
    struct FieldItem *field;
    u32 count;
    s32 gx;
    s32 gy;
    s32 px;
    s32 py;
    s32 range;

    if (item->category == 0)
    {
        field = gFieldItems;
        goto fail;
    }
    field = gFieldItems;
    count = 0;
    for (i = 0; i < NUM_FIELD_ITEMS; i++, field++)
    {
        if (field->active & 1)
            count++;
    }
    if (count >= NUM_FIELD_ITEMS)
    {
        field = gFieldItems;
        field[gUnknown_030063BC].active = 0;
        if (++gUnknown_030063BC >= NUM_FIELD_ITEMS)
            gUnknown_030063BC = 0;
    }
    for (gx = 0; gx <= 20; gx++)
    {
        px = x + ((gx - 10) << 14);
        for (gy = 0; gy <= 20; gy++)
        {
            py = y + ((gy - 10) << 14);
            if ((GetMapTileAttributes(px, py, layer == 0) & 7) == 0 && FindFieldItemNear(px, py, layer) == NULL)
                grid[gy * 21 + gx] = 1;
            else
                grid[gy * 21 + gx] = 0;
        }
    }
    field = gFieldItems;
    for (i = 0; i < NUM_FIELD_ITEMS; i++, field++)
    {
        if (field->active & 1)
            continue;
        field->x = x;
        field->y = y;
        field->item = *item;
        field->unk10 = id;
        field->unk14 = 5;
        field->layer = layer;
        for (range = 0; range <= 9; range++)
        {
            for (gx = -range; gx < range; gx++)
            {
                px = field->x + (gx << 14);
                for (gy = -range; gy < range; gy++)
                {
                    py = field->y + (gy << 14);
                    if (grid[(gy + 10) * 21 + gx + 10])
                    {
                        field->x = px;
                        field->y = py;
                        field->active = 1;
                        Free(grid);
                        return field;
                    }
                }
            }
        }
    }
fail:
    Free(grid);
    return NULL;
}
