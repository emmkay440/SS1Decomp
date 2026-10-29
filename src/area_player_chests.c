#include "global.h"
#include "area_state.h"
#include "item.h"
#include "map.h"
#include "player.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

// A place for a dropped item, found by sub_0800FA74 (as in drop_item.c).
struct DropSpot
{
    s32 x;
    s32 y;
    u32 unk8;
    u32 unkC;
    u32 unk10;
};

// gUnknown_030063D8->unk38: one chest per player (a guess).
struct ChestSet
{
    u16 x[4];          // 8-pixel cells; 0 = no chest
    u16 y[4];
    u32 key[4];        // item table for sub_080130F4
};

extern u16 gKeysNew;

int abs(int x);
u32 sub_080074CC(void);
u32 sub_080074F0(void);
u32 sub_080075AC(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_08007604(void);
u32 sub_08007638(void);
u32 sub_080076A8(void);
u32 sub_080076E0(void);
u32 sub_08001EC4(void);
u32 sub_08001F64(void);
u32 GetPlayerClass(void);
void sub_080130F4(u32 key, u32 column, u32 *item, u32 roll);
bool32 sub_08029270(u32 value, u8 a, u8 b, u8 c);
struct DropSpot *sub_0800FA74(s32 x, s32 y, u32 layer, u32 *item);
bool32 SpawnFieldItem(u32 type, u32 arg, u32 unk20, u32 *data, u32 flag);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08006008(u32 x, u32 y, u32 second);
u32 sub_08026C40(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Thread of the area's player chests (a guess): one chest per player
// (only the players present in a link game). Opening one (action key next
// to it) sets its bit in gUnknown_030063D8->unk94; the opener's machine
// rolls an item for the player's class (sub_080130F4) and drops it.
void sub_0801E014(void)
{
    struct ChestSet chests;
    struct SpriteObj obj;
    u16 frame[4];
    u16 timer[4];
    u16 done[4];
    u16 opened[4];
    u16 rolled[4];
    u32 item[4];
    s16 screenX;
    s16 screenY;
    u32 priority;
    s16 i;
    struct Player *player;
    struct DropSpot *drop;
    struct PlayerInfo *info;

    player = &gPlayers[GetMultiplayerId()];
    for (i = 0; i <= 3; i++)
    {
        frame[i] = 0;
        timer[i] = 0;
        opened[i] = 0;
        if (sub_080074F0())
            rolled[i] = 1;
        else
            rolled[i] = 0;
    }
    GetMultiplayerId();
    if (sub_08007638())
    {
        chests = *(struct ChestSet *)gUnknown_030063D8->unk38;
        for (i = 3; i > (s32)sub_08001EC4() - 1; i--)
            chests.x[i] = 0;
    }
    else
    {
        chests = *(struct ChestSet *)gUnknown_030063D8->unk38;
    }
    sub_08026ADC(&obj, 0x100043, 13, -1);
    while (!sub_080074CC() && (gUnknown_030063D8->unk9C & 2))
    {
        if (!sub_08007604())
        {
            for (i = 0; i <= 3; i++)
            {
                if (chests.x[i] == 0)
                    continue;
                if (opened[i] == 0)
                {
                    if ((gUnknown_030063D8->unk94 >> i) & 1)
                    {
                        PlaySE(0x22);
                        opened[i] = 1;
                    }
                    if (!sub_08007544() && opened[i] == 0)
                    {
                        info = player->unkD0;
                        // FAKE (permuter): x >> 3 written as two shifts.
                        if (abs((info->x >> 1 >> 2) - chests.x[i]) <= 2 && abs((info->y >> 3) - chests.y[i]) <= 2)
                        {
                            if ((u16)(player->state - 3) > 1)
                                player->unk10 |= 0x10;
                            if (!sub_080076E0() && !sub_08007510() && (gKeysNew & player->actionKeys)
                             && player->state != 9)
                            {
                                if (sub_080074F0())
                                {
                                    if (sub_08001F64())
                                    {
                                        gUnknown_030063D8->unk94 |= 1 << i;
                                        if (sub_080076A8())
                                        {
                                            if (sub_08007638())
                                                sub_080130F4(0xF001A, GetPlayerClass(), &item[i], 0);
                                            else if (chests.key[i] == 0xF001B)
                                                sub_080130F4(0xF001C, GetPlayerClass(), &item[i], 0);
                                            else
                                                sub_080130F4(0xF0019, GetPlayerClass(), &item[i], 0);
                                        }
                                        else
                                        {
                                            if (sub_08007638())
                                                sub_080130F4(chests.key[i], GetPlayerClass(), &item[i], 0);
                                            else
                                                sub_080130F4(chests.key[i], GetPlayerClass(), &item[i], 0);
                                        }
                                        drop = sub_0800FA74(chests.x[i] << 15, chests.y[i] << 15,
                                                            gMapLayer_03003910.unk6C, &item[i]);
                                        SpawnFieldItem(drop->unk10 | 0x80, drop->x >> 12, drop->y >> 12, &item[i], 1);
                                        sub_08029270(10, i, 0, 0);
                                    }
                                    else
                                    {
                                        sub_08029270(10, i, 0, 0);
                                        gUnknown_030063D8->unk94 |= 1 << i;
                                    }
                                }
                                else
                                {
                                    gUnknown_030063D8->unk94 |= 1 << i;
                                }
                                gKeysNew &= ~player->actionKeys;
                            }
                        }
                    }
                }
                sub_08005FC4((s16)(chests.x[i] << 3), (s16)(chests.y[i] << 3), &screenX, &screenY, 0x10, 0);
                priority = (u8)sub_08006008(chests.x[i] << 3, chests.y[i] << 3, 0);
                if (opened[i] == 0)
                {
                    if (!sub_080075AC() && !sub_08007510() && !sub_08007544() && !sub_08007604())
                        sub_08004344(screenX, screenY, 0, 0, priority, obj.unk1C, obj.unk8, obj.unk0);
                }
                else
                {
                    done[i] = sub_08026C40(&obj, opened[i], &frame[i], &timer[i], 0);
                    if (done[i] == 0)
                    {
                        if (!sub_080075AC() && !sub_08007510() && !sub_08007544() && !sub_08007604())
                            sub_08004344(screenX, screenY, opened[i], frame[i], priority, obj.unk1C, obj.unk8, obj.unk0);
                    }
                    else if (rolled[i] == 0)
                    {
                        if (sub_080076A8())
                        {
                            // The original passes item (slot 0) here, not &item[i].
                            if (sub_08007638())
                                sub_080130F4(0xF001A, GetPlayerClass(), item, 0);
                            else if (chests.key[i] == 0xF001B)
                                sub_080130F4(0xF001C, GetPlayerClass(), &item[i], 0);
                            else
                                sub_080130F4(0xF0019, GetPlayerClass(), &item[i], 0);
                        }
                        else
                        {
                            if (sub_08007638())
                                sub_080130F4(chests.key[i], GetPlayerClass(), &item[i], 0);
                            else
                                sub_080130F4(chests.key[i], GetPlayerClass(), &item[i], 0);
                        }
                        sub_0800FA74(chests.x[i] << 15, chests.y[i] << 15, gMapLayer_03003910.unk6C, &item[i]);
                        rolled[i] = 1;
                    }
                }
            }
        }
        WaitFrame();
    }
}
