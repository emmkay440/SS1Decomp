#include "global.h"
#include "data_record.h"
#include "display.h"
#include "item.h"
#include "player.h"
#include "player_stats.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

struct AreaEntryRef
{
    u16 unk0;
    u16 kind;          // 3: the spot this thread uses
    s32 offset;        // from the entry to its data
};

struct GiftSpot
{
    u8 unk0[0x74];
    u16 x;             // +0x74 in 8-pixel units
    u16 y;
};

struct GiftSpot2
{
    u8 unk0[0x58];
    s16 x;             // +0x58 in 8-pixel units
    s16 y;
};

struct DrawNode
{
    struct DrawNode *prev;
    struct DrawNode *next;
    u32 unk8;
    s32 unkC;          // sort key
};

struct Unknown_080FB0F8
{
    u8 unk0[0x10];
    u32 keys[20];      // +0x10 data record keys of the area's maps
};

extern struct Unknown_080FB0F8 gUnknown_080FB0F8[];

int abs(int x);
u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_08006008(u32 x, u32 y, u32 second);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08026C40(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop);
struct DrawNode *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);
void sub_0802706C(struct SpriteObj *obj, u32 a, u32 b, u16 c, u16 d, u8 e);
void *StartMessageWindow(u32 a, u8 y, u32 c, u8 lines, s32 e, u32 text);
bool32 sub_0802294C(void *window);
bool32 AddItemToInventory(struct Item *item);

// Like sub_0801FE1C: item 0x10 (messages 0x9009C, 0x9009D, 0x9009E), within a tile.
// Thread (a guess: a character on area 0's first map who gives an item):
// when the local player stands within 2 tiles of the map's kind 3 spot and
// presses the action keys, shows message 0x900B2, sets bit 0 of
// gPlayerStats +0x275 and gives item 0xA10 (message 0x900BB and then
// 0x900AA; 0x9009F and 0x900A0 when the inventory is full).
void sub_0801F160(void)
{
    u8 *record;
    struct AreaEntryRef *entry;
    struct GiftSpot2 *spot;
    struct Player *player;
    struct SpriteObj obj;
    s16 screenX;
    s16 screenY;
    u16 frame;
    u16 timer;
    u32 item;
    u32 nextText;
    void *window;
    u32 state;
    u32 anim;
    u32 i;
    u32 priority;

    record = GetDataRecord(gUnknown_080FB0F8[0].keys[0]);
    entry = (struct AreaEntryRef *)(record + *(s32 *)(record + 8));
    for (i = 0; i < *(u16 *)(record + 0xC); i++, entry++)
    {
        if (entry->kind == 3)
            spot = (struct GiftSpot2 *)((u8 *)entry + entry->offset);
    }
    player = &gPlayers[GetMultiplayerId()];
    sub_08026ADC(&obj, 0x100015, 13, -1);
    obj.unk1C[14] = 8;
    obj.unk1C[13] = 14;
    timer = 0;
    frame = 0;
    state = 0;
    anim = 1;
    while (!sub_080074CC())
    {
        if (!sub_08007544())
            WaitEvent(0x514C9);
        LoadPalette(0x18, obj.palettes + 0x1C0, 1);
        switch (state)
        {
        case 0:
            if (abs((player->x >> 15) - (u16)spot->x) <= 1 && abs((player->y >> 15) - (u16)spot->y) <= 1
             && (player->unk04 & player->actionKeys))
            {
                player->unk02 = 0;
                player->unk04 = 0;
                player->unk10 |= 1;
                state = 1;
            }
            break;
        case 1:
            window = StartMessageWindow(1, 14, 25, 2, -1, 0x9009C);
            state = 2;
            break;
        case 2:
            if (sub_0802294C(window))
            {
                gPlayerStats.unk270.b.unk275_0 |= 1;
                item = 0x10;
                state = 5;
                if (AddItemToInventory((struct Item *)&item))
                {
                    window = StartMessageWindow(1, 14, 25, 2, -1, 0x9009D);
                    nextText = 0x9009E;
                    PlaySE(0x26);
                }
                else
                {
                    window = StartMessageWindow(1, 14, 25, 2, -1, 0x9009F);
                    nextText = 0x900A0;
                }
            }
            break;
        case 5:
            if (sub_0802294C(window))
            {
                window = StartMessageWindow(1, 14, 25, 2, -1, nextText);
                state = 6;
                timer = 0;
                frame = 0;
            }
            break;
        case 6:
            if (sub_0802294C(window))
            {
                anim = 2;
                timer = 0;
                frame = 0;
                state++;
            }
            break;
        }
        sub_08005FC4((s16)(spot->x * 8), (s16)(spot->y * 8), &screenX, &screenY, 16, 1);
        priority = (u8)sub_08006008((u16)spot->x << 3, (u16)spot->y << 3, 1);
        if (!sub_08007510())
        {
            switch (anim)
            {
            case 1:
                sub_08026C40(&obj, 0, &frame, &timer, 1);
                sub_08004344(screenX, screenY, 0, frame, priority, obj.unk1C, obj.unk8, obj.unk0);
                break;
            case 2:
            {
                struct DrawNode *node;

                if (sub_08026C40(&obj, 3, &frame, &timer, 0))
                    anim = 0;
                node = sub_08004344(screenX, screenY + 1, 3, frame, priority, obj.unk1C, obj.unk8, obj.unk0);
                sub_08004344(screenX, screenY, 0, 0, priority, obj.unk1C, obj.unk8, obj.unk0);
                node->unkC -= 9;
                break;
            }
            case 0:
                player->unk10 &= ~1;
                return;
            }
        }
        WaitFrame();
    }
}
