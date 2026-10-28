#include "global.h"
#include "area_state.h"
#include "data_record.h"
#include "map.h"
#include "player.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

struct Unknown_080FB0F8
{
    u16 unk0;
    u8 unk2[0xE];
    u32 keys[20];      // +0x10 data record keys of the area's maps
};

extern struct Unknown_080FB0F8 gUnknown_080FB0F8[];
extern const s32 gUnknown_080FB5D0[][2];

int abs(int x);
u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_080075AC(void);
u32 sub_08007604(void);
void sub_08005F60(u16 a, u16 b);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08006008(u32 x, u32 y, u32 second);
u32 sub_08026C40(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Player +0x98: the trigger id of the last trap hit.
#define LAST_TRAP(player) (*(u32 *)&(player)->unk80[0x18])

// Area thread (a guess: falling rocks): waits for gUnknown_030063D8->unkC4[3],
// then eight objects start around the map's kind 3 spot (offsets from the
// area state's unkAC/unkB4/unkBC/unkC4 tables), each after its own delay.
// They move by gUnknown_080FB5D0[1] * 100, fall with gravity and bounce
// (shaking the screen when unkBC > 3). Touching one costs the local player
// 10 HP once per bounce.
void sub_0801ECC4(void)
{
    struct SpriteObj obj;
    u16 frame[8][2];
    u16 timer[8][2];
    s32 x[8];
    s32 y[8];
    s32 z[8];
    s32 vz[8];
    u16 hitId[8];
    s32 delay[8];
    s16 screenX;
    s16 screenY;
    struct AreaPos *spot;
    struct Player *player;
    u8 *record;
    struct AreaEntry *entry;
    struct PlayerInfo *info;
    u16 i;
    u32 zero;
    u8 priority;
    s32 t;  // FAKE (by hand): holds the offset so it is added to the spot last

    player = &gPlayers[GetMultiplayerId()];
    sub_08026ADC(&obj, 0x100044, 13, 1);
    record = GetDataRecord(gUnknown_080FB0F8[gMapLayer_03003910.unk68].keys[gMapLayer_03003910.unk6C]);
    entry = (struct AreaEntry *)(record + ((struct AreaHeader *)record)->entriesOffset);
    for (i = 0; i < ((struct AreaHeader *)record)->entryCount; i++, entry++)
    {
        if (entry->kind == 3)
        {
            spot = (struct AreaPos *)((u8 *)entry + entry->offset);
            break;
        }
    }
    while (gUnknown_030063D8->unkC4[3] == 0)
    {
        if (!(gUnknown_030063D8->unk9C & 2))
            return;
        if (sub_080074CC())
            return;
        WaitFrame();
    }
    for (i = 0; i < 8; i++)
    {
        x[i] = (spot->x + (t = gUnknown_030063D8->unkAC[i] - 4)) << 15;
        y[i] = (spot->y + (t = gUnknown_030063D8->unkB4[i] - 10)) << 15;
        z[i] = gUnknown_030063D8->unkBC[i] * 5 << 13;
        vz[i] = 0;
        delay[i] = abs(gUnknown_030063D8->unkC4[i] * 70) + 1;
    }
    GetMultiplayerId();
    while (!sub_080074CC() && (gUnknown_030063D8->unk9C & 2))
    {
        if (sub_080075AC() || sub_08007510() || sub_08007544() || sub_08007604())
            sub_08005F60(0, 0);
        for (i = 0; i < 8; i++)
        {
            info = player->unkD0;
            if (abs(info->x - (x[i] >> 12)) <= 15 && abs(info->y - (y[i] >> 12)) <= 15
             && (z[i] >> 12) <= 15 && LAST_TRAP(player) != hitId[i]
             && player->state != 7 && player->state != 8 && player->state != 9)
            {
                player->state = 7;
                player->pendingDamage[0] += 10;
                LAST_TRAP(player) = hitId[i];
            }
            if (--delay[i] <= 0)
                delay[i] = 0;
            if (delay[i] == 0)
            {
                x[i] += gUnknown_080FB5D0[1][0] * 100;
                y[i] += gUnknown_080FB5D0[1][1] * 100;
                z[i] += vz[i];
                vz[i] -= 0x100;
                if (z[i] < 0)
                {
                    if (gUnknown_030063D8->unkBC[i] > 3)
                    {
                        if (!sub_080075AC() && !sub_08007510() && !sub_08007544() && !sub_08007604())
                        {
                            PlaySE(0x6A);
                            sub_08005F60(0, 5);
                        }
                        else
                        {
                            StopSE(0x6A);
                        }
                    }
                    z[i] = 0;
                    vz[i] = gUnknown_030063D8->unkBC[i] > 3 ? 0x2000 : 0;
                    hitId[i]++;
                }
            }
            if (x[i] < 0)
            {
                x[i] = (spot->x + (t = gUnknown_030063D8->unkAC[i] - 4)) << 15;
                y[i] = (spot->y + (t = gUnknown_030063D8->unkB4[i] - 10)) << 15;
                z[i] = (gUnknown_030063D8->unkBC[i] + 10) << 12;
                vz[i] = 0;
            }
            if (!sub_080075AC() && !sub_08007510() && !sub_08007544() && !(zero = sub_08007604()))
            {
                sub_08026B74(&obj);
                sub_08005FC4((s16)(x[i] >> 12), (s16)(y[i] >> 12), &screenX, &screenY, 0x10, zero);
                priority = sub_08006008(x[i], y[i], 0);
                sub_08026C40(&obj, 1, &frame[i][0], &timer[i][0], 1);
                sub_08026C40(&obj, 2, &frame[i][1], &timer[i][1], 1);
                sub_08004344(screenX, screenY - (z[i] >> 12), 1, frame[i][0], priority, obj.unk1C, obj.unk8, obj.unk0);
                sub_08004344(screenX, screenY, 2, frame[i][1], 3, obj.unk1C, obj.unk8, obj.unk0);
            }
        }
        WaitFrame();
    }
    StopSE(0x6A);
}
