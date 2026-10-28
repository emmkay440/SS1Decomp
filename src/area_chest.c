#include "global.h"
#include "area_state.h"
#include "data_record.h"
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

// The dropped item word as this file sees it.
struct ChestItem
{
    u32 unk0:4;
    u32 category:3;
    u32 id:7;
    u32 flag14:1;
    u32 unk15:8;
    u32 unk23:9;
};

union ChestItemWord
{
    u32 raw;
    struct ChestItem item;
};

// gUnknown_030063D8->unk3C: the chest of this map (a guess).
struct ChestSpot
{
    u16 x;             // 8-pixel cells
    u16 y;
    u16 kind;          // 0: random 1-10
};

extern struct Thread gUnknownThread_03006680;
extern u16 gUnknown_03003CA0;      // character advance
extern u32 gFrameCounter;
extern u16 gKeysNew;

int abs(int x);
u16 Random(void);
u32 sub_080074CC(void);
u32 sub_080075AC(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_08007604(void);
u32 sub_080076E0(void);
u32 sub_08007670(void);
u32 sub_08001F64(void);
u32 sub_0800ED80(u16 *str);
void sub_0800EB30(u16 *str, s32 x, s32 y);
struct FieldItem *FindFieldItemNear(s32 x, s32 y, u32 layer);
struct DropSpot *sub_0800FA74(s32 x, s32 y, u32 layer, union ChestItemWord *item);
bool32 SpawnFieldItem(u32 type, u32 arg, u32 unk20, void *data, u32 flag);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08006008(u32 x, u32 y, u32 second);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Thread of the map's chest (a guess): standing next to it shows its
// message (string `kind` of data record 0x900DC); an action key opens it:
// kinds 1-4 and 8 give status 7-11 for 6000 frames, 5-7 status 5 with
// one of the three values 50, 9 refills HP and SP, 10 drops an item
// (category 6, a random 0-15 in bits 15-22). Kind 11 picks one at random.
// Once open it blinks for 60 frames and the thread ends.
void sub_0801E5C0(void)
{
    struct SpriteObj obj;
    s16 screenX;
    s16 screenY;
    union ChestItemWord item;
    struct DropSpot *drop;
    u16 xOffset;
    s16 half;
    u16 blink;
    u32 near;
    u32 opened;
    u16 kind;
    struct ChestSpot *spot;
    struct Player *player;
    u16 *record;
    u16 *str;
    struct PlayerInfo *info;
    u32 i;
    u32 r;
    u32 priority;

    spot = (struct ChestSpot *)gUnknown_030063D8->unk3C;
    player = &gPlayers[GetMultiplayerId()];
    opened = FALSE;
    blink = 1;
    near = FALSE;
    GetMultiplayerId();
    record = GetDataRecord(0x900DC);
    if (spot->kind == 0)
    {
        kind = (u16)abs((s16)Random()) % 10;
        kind += 1;
    }
    else
        kind = spot->kind;
    str = record + 5;
    for (i = 0; i < record[4] && i != kind - 1; i++)
    {
        while (*str != 0)
            str++;
        str++;
    }
    half = (s32)(sub_0800ED80(str) * gUnknown_03003CA0) / 2;
    xOffset = -half;
    sub_08026ADC(&obj, 0x100043, 11, -1);
    while (!sub_080074CC() && (gUnknown_030063D8->unk9C & 2) && blink < 60)
    {
        if (!sub_080075AC() && !sub_08007510() && !sub_08007544() && !sub_08007604())
        {
            if (!(gFrameCounter & 1))
            {
                info = player->unkD0;
                if (abs((info->x >> 3) - spot->x) <= 2 && abs((info->y >> 3) - spot->y) <= 2)
                    near = TRUE;
                else
                    near = FALSE;
            }
            if (!opened && near)
            {
                if (!IsThreadInList(&gUnknownThread_03006680) && !sub_080076E0() && !sub_08007670()
                 && FindFieldItemNear(gPlayers[GetMultiplayerId()].x, gPlayers[GetMultiplayerId()].y,
                                      gPlayers[GetMultiplayerId()].layer) == NULL)
                    sub_0800EB30(str, (s16)xOffset + 0x78, 0x8C);
                if ((u16)(player->state - 3) > 1)
                    player->unk10 |= 0x10;
                if ((gKeysNew & player->actionKeys) && !sub_080076E0()
                 && player->state != 8 && player->state != 9)
                {
                    PlaySE(0x22);
                    opened = TRUE;
                    if (kind == 11)
                    {
                        kind = (s16)Random() % 11;
                        if (kind == 0)
                            kind = 1;
                    }
                    for (i = 0; i <= 2; i++)
                    {
                        if (player->unk1C[i] == 0)
                            break;
                    }
                    if (i <= 2 || kind > 8)
                    {
                        switch (kind - 1)
                        {
                        case 0:
                            PlaySE(0x74);
                            player->unk1C[i] = 7;
                            player->unk24[i] = 6000;
                            break;
                        case 1:
                            PlaySE(0x74);
                            player->unk1C[i] = 8;
                            player->unk24[i] = 6000;
                            break;
                        case 2:
                            PlaySE(0x74);
                            player->unk1C[i] = 9;
                            player->unk24[i] = 6000;
                            break;
                        case 3:
                            PlaySE(0x74);
                            player->unk1C[i] = 10;
                            player->unk24[i] = 6000;
                            break;
                        case 4:
                            PlaySE(0x74);
                            player->unk1C[i] = 5;
                            player->unk20[i].unk0[5] = 50;
                            player->unk24[i] = 6000;
                            break;
                        case 5:
                            PlaySE(0x74);
                            player->unk1C[i] = 5;
                            player->unk20[i].unk0[6] = 50;
                            player->unk24[i] = 6000;
                            break;
                        case 6:
                            PlaySE(0x74);
                            player->unk1C[i] = 5;
                            player->unk20[i].unk0[7] = 50;
                            player->unk24[i] = 6000;
                            break;
                        case 7:
                            PlaySE(0x74);
                            player->unk1C[i] = 11;
                            player->unk24[i] = 6000;
                            break;
                        case 8:
                            player->hp = player->maxHp;
                            player->sp = player->maxSp;
                            break;
                        case 9:
                            item.item.category = 6;
                            item.item.id = 0;
                            item.item.unk15 = Random() & 15;
                            if ((r = sub_08001F64()) != 0)
                            {
                                drop = sub_0800FA74(spot->x << 15, spot->y << 15, gMapLayer_03003910.unk6C, &item);
                                SpawnFieldItem(drop->unk10 | 0x80, drop->x >> 12, drop->y >> 12, &item, sub_08001F64());
                            }
                            else
                            {
                                // drop is not set here (the original reads it too, as in DropItem).
                                SpawnFieldItem(drop->unk10 | 0x80, spot->x << 3, spot->y << 3, &item, r);
                            }
                            break;
                        case 10:
                            break;
                        }
                    }
                }
            }
            if (opened)
                blink++;
            if (blink & 1)
            {
                sub_08005FC4((s16)(spot->x << 3), (s16)(spot->y << 3), &screenX, &screenY, 0x10, 0);
                priority = sub_08006008(spot->x << 3, spot->y << 3, 0);
                sub_08004344(screenX, screenY, 2, 0, priority, obj.unk1C, obj.unk8, obj.unk0);
            }
        }
        WaitFrame();
    }
}
