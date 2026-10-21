#include "global.h"
#include "player.h"

// A place for a dropped item, found by sub_0800FA74.
struct DropSpot
{
    s32 x;             // fixed point, like Player.x
    s32 y;
    u32 unk8;
    u32 unkC;
    u32 unk10;         // first argument of SpawnFieldItem
};

u32 sub_08001F64(void);
struct DropSpot *sub_0800FA74(s32 x, s32 y, u32 layer, u32 *item);
bool32 SpawnFieldItem(u32 type, u32 arg, u32 unk20, u32 *data, u32 flag);

// Drops an item near the local player. FALSE if there is no room for it.
// When sub_08001F64() is 0, `spot` is read without having been set (the
// original does that too: it uses whatever the caller left in r7).
bool32 DropItem(u32 item)
{
    struct DropSpot *spot;
    s32 x;
    s32 y;

    x = sub_08001F64();
    if (x != 0)
    {
        x = gPlayers[GetMultiplayerId()].x;
        y = gPlayers[GetMultiplayerId()].y;
        spot = sub_0800FA74(x, y, gPlayers[GetMultiplayerId()].layer, &item);
        if (spot != NULL)
        {
            if (spot->unk8 == 0)
                SpawnFieldItem(spot->unk10, spot->x >> 12, spot->y >> 12, &item, 1);
            else
                SpawnFieldItem(spot->unk10 | 0x80, spot->x >> 12, spot->y >> 12, &item, 1);
            return TRUE;
        }
        else
        {
            return FALSE;
        }
    }
    else
    {
        SpawnFieldItem(spot->unk10, gPlayers[GetMultiplayerId()].x >> 12,
            gPlayers[GetMultiplayerId()].y >> 12, &item, 0);
        return TRUE;
    }
    return TRUE;
}
