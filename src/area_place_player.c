#include "global.h"
#include "area_state.h"
#include "player.h"

extern u16 gUnknown_0300397C;

// Puts the player on the area's start position (the first entry of kind
// 0, see sub_080216E0), half a tile away in the direction they face. With
// `second` set it fills the second position instead.
void sub_080191FC(struct Player *player, u32 second)
{
    struct AreaEntry *entry = gUnknown_030063D8->unk4;
    u32 count = ((struct AreaHeader *)gUnknown_030063D8->unk0)->entryCount;
    u32 i;

    for (i = 0; i < count; i++, entry++)
    {
        u16 *row = &gUnknown_0300397C;

        if (entry->kind == 0)
        {
            u8 index;
            struct AreaPos *pos;

            if (second == 0)
            {
                player->layer = *row;
                index = gUnknown_030063D8->unkCC[i + player->layer * 15];
            }
            else
            {
                player->layer2 = *row;
                index = gUnknown_030063D8->unkCC[i + player->layer2 * 15];
            }
            pos = (struct AreaPos *)((u8 *)entry + entry->offset);
            if (second != 0)
            {
                player->x2 = pos[index].x << 15;
                player->y2 = pos[index].y << 15;
            }
            else
            {
                player->x = pos[index].x << 15;
                player->y = pos[index].y << 15;
                player->unk0A = 0;
            }
            switch (player->facing)
            {
            case 0:
                if (second != 0)
                    player->y2 += 0x8000;
                else
                    player->y += 0x8000;
                break;
            case 1:
                if (second != 0)
                    player->x2 -= 0x8000;
                else
                    player->x -= 0x8000;
                break;
            case 2:
                if (second != 0)
                    player->y2 -= 0x8000;
                else
                    player->y -= 0x8000;
                break;
            case 3:
                if (second != 0)
                    player->x2 += 0x8000;
                else
                    player->x += 0x8000;
                break;
            }
            return;
        }
    }
}
