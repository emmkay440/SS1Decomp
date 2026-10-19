#include "global.h"
#include "area_state.h"
#include "data_record.h"
#include "display.h"
#include "map.h"
#include "player.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

struct Unknown_080FB0F8
{
    u16 unk0;          // +0x00 number of maps in the area (a guess)
    u8 unk2[0xE];
    u32 keys[20];      // +0x10 data record keys of the area's maps
};

// The exit spot of this thread (kind 3 entry of the area's first map).
struct ExitSpot
{
    u8 unk0[0x8C];
    struct AreaPos pos; // +0x8C in 8-pixel units
};

extern struct Unknown_080FB0F8 gUnknown_080FB0F8[];
extern struct Thread *gUnknownThreadPtr_03006410;
extern u32 gUnknown_030064D8;
extern u16 gKeysNew;

u32 sub_080074CC(void);
u32 sub_080074F0(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_08007564(void);
u32 sub_080075AC(void);
u32 sub_08007604(void);
u32 sub_080076E0(void);
u32 sub_08007728(void);
s32 sub_08001EC4(void);
u32 sub_08001F64(void);
u32 sub_0800F298(void);
u32 sub_0800F430(void);
void sub_0800F3A0(u32 frames);
bool32 sub_08029270(u32 value, u8 a, u8 b, u8 c);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
struct DrawNode *sub_08004418(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);
struct SpriteObj *sub_08026ADC(struct SpriteObj *obj, u32 key, u32 palette, s32 paletteCount);
u32 sub_08026C40(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop);
int abs(int x);

#define PLAYER_INFO(i) ((u16 *)gPlayers[i].unkD0)

#define DRAW_SPOT()                                                                         \
    {                                                                                       \
        struct AreaPos *pos_ = &spot->pos;                                                  \
        sub_08005FC4((s16)(pos_->x << 3), (s16)(pos_->y << 3), &screenX, &screenY, 0x30, 1); \
        sub_08004418(screenX, screenY, 0, frame, 3, obj.unk1C, obj.unk8, obj.unk0);         \
    }

// Thread of the area exit (a guess): waits until every player is on layer
// 0, then draws sprite record 0x100064 at the kind 3 spot. Standing on it
// with an action key puts the local player in state 9/15; once all players
// are in that state (or the single player, info value 0xF009) the area is
// left: fade out, signal event 3001 and move to the area's last map.
void sub_0801AAC8(void)
{
    struct SpriteObj obj;
    u16 frame;
    u16 timer;
    s16 screenX;
    s16 screenY;
    struct Player *player;
    u8 *record;
    struct AreaEntry *entry;
    struct ExitSpot *spot;
    u16 i;
    u16 count;
    u32 ok;
    u32 flags;
    u16 map;
    u32 layer;
    u32 map32;
    struct AreaPos *pos;

    player = &gPlayers[GetMultiplayerId()];
    sub_08026ADC(&obj, 0x100064, 15, -1);
    if (sub_080074CC() || !(gUnknown_030063D8->unk9C & 2))
        ThreadExit();
    record = GetDataRecord(gUnknown_080FB0F8[0].keys[0]);
    entry = (struct AreaEntry *)(record + ((struct AreaHeader *)record)->entriesOffset);
    for (i = 0; i < ((struct AreaHeader *)record)->entryCount; i++, entry++)
    {
        if (entry->kind == 3)
        {
            spot = (struct ExitSpot *)((u8 *)entry + entry->offset);
            break;
        }
    }
    gUnknown_030063D8->unkA4 = 0;
    do
    {
        count = 0;
        for (i = 0; i < sub_08001EC4(); i++)
        {
            layer = ((struct PlayerInfo *)gPlayers[i].unkD0)->layer;
            if (layer == 0)
                count++;
        }
        if (gUnknown_030063D8->unk9E != 0)
        {
            gUnknown_030063D8->unkA4 = 0;
            return;
        }
        WaitFrame();
    } while (count < sub_08001EC4());
    sub_08007728();

    while (!sub_080074CC() && (gUnknown_030063D8->unk9C & 2))
    {
        sub_08026C40(&obj, 0, &frame, &timer, 1);
        if (!sub_08007510() && !sub_08007604() && !sub_080075AC())
            DRAW_SPOT();
        WaitFrame();
        if (sub_0800F430() && gUnknown_030064D8 == 0 && !sub_080076E0()
         && player->state != 9 && player->state != 5 && !sub_08007604())
        {
            screenX = player->x >> 15;
            screenY = player->y >> 15;
            if (abs(screenX - (pos = &spot->pos)->x) <= 1 && abs(screenY - pos->y) <= 1 && sub_08007544())
            {
                player->unk10 |= 0x10;
                if (gKeysNew & player->actionKeys)
                {
                    player->state = 9;
                    player->unk0E = 15;
                }
            }
        }
        else
        {
            ok = sub_080076E0();
            if (ok == 0 && player->state == 9)
            if (player->unk0E == 15)
            {
                flags = player->unk10 | 0x10;
                player->unk10 = flags;
                if ((gKeysNew & player->actionKeys) || gUnknown_030063D8->unk9E != 0)
                {
                    player->state = ok;
                    player->unk10 = flags & 0xFFFC;
                }
            }
        }
        if (sub_080074F0())
        {
            if (sub_08001F64())
            {
                count = 0;
                for (i = 0; i < sub_08001EC4(); i++)
                {
                    if ((PLAYER_INFO(i)[2] & 0xF00F) == 0xF009)
                        count++;
                }
                if (count == sub_08001EC4())
                {
                    gUnknown_030063D8->unkA4 = 1;
                    while (!sub_08029270(3, 0, 0, 0))
                        WaitFrame();
                }
            }
            if (gUnknown_030063D8->unkA4 != 0)
                goto leave;
        }
        else if ((PLAYER_INFO(0)[2] & 0xF00F) == 0xF009)
        {
            gUnknown_030063D8->unkA4 = 1;
            break;
        }
        if (gUnknown_030063D8->unk9E != 0)
        {
            gUnknown_030063D8->unkA4 = 0;
            break;
        }
    }
    if (gUnknown_030063D8->unkA4 == 0)
        return;

leave:
    FadeOutBGM(2);
    PlaySE(0x24);
    sub_0800F3A0(6);
    while (!sub_0800F298() && !sub_080074CC() && (gUnknown_030063D8->unk9C & 2))
    {
        sub_08026C40(&obj, 0, &frame, &timer, 1);
        if (!sub_08007510() && !sub_08007604() && !sub_080075AC())
            DRAW_SPOT();
        WaitFrame();
    }
    if (IsThreadInList(gUnknownThreadPtr_03006410))
        KillThread(gUnknownThreadPtr_03006410);
    gPlayers[GetMultiplayerId()].layer = gMapLayer_03003910.unk6E = gUnknown_080FB0F8[gMapLayer_03003910.unk68].unk0 - 1;
    sub_08007564();
    gMapLayer_03003C00.flags |= 0xC;
    SignalEvent(0xBB9);
    gUnknown_030063D8->unkA4 = 0;
}
