#include "global.h"
#include "data_record.h"
#include "display.h"
#include "player.h"
#include "sprite_obj.h"
#include "thread.h"

struct DrawNode
{
    struct DrawNode *prev;
    struct DrawNode *next;
    u32 unk8;
    s32 unkC;          // sort key
};

struct AreaEntryRef
{
    u16 unk0;
    u16 kind;          // 3: the spot this thread draws
    s32 offset;        // from the entry to its data
};

struct WarpSpot
{
    u8 unk0[0x14];
    u16 x;             // +0x14 in 8-pixel units
    u16 y;
};

struct Unknown_080FB0F8
{
    u8 unk0[0x10];
    u32 keys[20];      // +0x10 data record keys of the area's maps
};

extern struct Unknown_080FB0F8 gUnknown_080FB0F8[];

u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007578(void);
u32 sub_080075AC(void);
u32 sub_08007604(void);
u32 sub_08007638(void);
u32 sub_08006008(u32 x, u32 y, u32 second);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08004214(u16 a, u16 *frame, u16 *timer, u32 record, u32 loop);
struct DrawNode *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);
u16 sub_080044DC(u32 record);
void sub_08026C64(struct SpriteObj *obj, s16 max, s16 min, s16 step);

// Copy of sub_08026ADC (src/sprite_obj.c).
static inline struct SpriteObj *SetUpSpriteObj(struct SpriteObj *obj, u32 key, u32 palette, s32 paletteCount)
{
    u32 i;

    obj->unk10 = key;
    obj->palette = palette;
    obj->paletteCount = paletteCount;
    obj->unk8 = (u32)GetDataRecord(key);
    if (obj->unk8 == 0)
        return NULL;
    key = (key & 0xFFFF) | 0x110000;
    obj->unk0 = (u32)GetDataRecord(key);
    if (obj->unk0 == 0)
        return NULL;
    obj->palettes = GetDataRecord(0x130000 | (key & 0xFFFF));
    if (obj->palettes == NULL)
        return NULL;
    if (paletteCount >= 0)
        LoadPalette(obj->palette + 16, obj->palettes + obj->palette * 32, obj->paletteCount);
    for (i = 0; i < 16; i++)
        obj->unk1C[i] = i;
    sub_08026C64(obj, 0x120, 0xE0, 8);
    return obj;
}

// Copy of sub_08026C40 (src/sprite_obj.c).
static inline u32 StepAnim(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop)
{
    return sub_08004214(anim, frame, timer, obj->unk8, loop);
}

// Thread on area 0's first map (a guess: the warp spot back from the
// field): draws sprite record 0x100010 at the map's kind 3 spot (two layers
// while the player stands on it in state 9 with unk0E 8 or 6, which also
// pins the player there) and record 0x100000 otherwise. Runs while the
// local player is on layer 0.
void sub_08025940(void)
{
    struct SpriteObj obj;
    struct SpriteObj obj2;
    u16 frame;
    u16 timer;
    s16 screenX;
    s16 screenY;
    u16 frame2;
    u16 timer2;
    u32 offsetY;
    u8 *record;
    struct AreaEntryRef *entry;
    struct WarpSpot *spot;
    struct DrawNode *node;
    s16 i;
    u8 priority;

    SetUpSpriteObj(&obj, 0x100010, 0, 0x80000000);
    SetUpSpriteObj(&obj2, 0x100000, 0, 0x80000000);
    record = GetDataRecord(gUnknown_080FB0F8[0].keys[0]);
    entry = (struct AreaEntryRef *)(record + *(s32 *)(record + 8));
    for (i = 0; i < *(u16 *)(record + 0xC); i++, entry++)
    {
        if (entry->kind == 3)
        {
            spot = (struct WarpSpot *)((u8 *)entry + entry->offset);
            break;
        }
    }
    offsetY = 0;
    while (!sub_080074CC() && !sub_08007578() && !sub_08007638() && gPlayers[GetMultiplayerId()].layer == 0)
    {
        if (gPlayers[GetMultiplayerId()].state == 9)
        {
            if (gPlayers[GetMultiplayerId()].unk0E == 8 || gPlayers[GetMultiplayerId()].unk0E == 6)
            {
                offsetY = ((u16 *)gPlayers[GetMultiplayerId()].unkD0)[3];
                gPlayers[GetMultiplayerId()].x = spot->x << 15;
                gPlayers[GetMultiplayerId()].y = spot->y << 15;
            }
        }
        else
        {
            offsetY = 0;
        }
        obj.unk1C[0] = 4;
        priority = sub_08006008(spot->x << 3, spot->y << 3, 1);
        StepAnim(&obj, 0, &frame, &timer, 1);
        if (!sub_08007510() && !sub_08007604() && !sub_080075AC())
        {
            sub_08005FC4((s16)(spot->x << 3), (s16)(spot->y << 3), &screenX, &screenY, 0x30, 1);
            node = sub_08004344(screenX, screenY + (s16)offsetY, 0, frame, priority, obj.unk1C, obj.unk8, obj.unk0);
            node->unkC -= 0x14;
            if ((s16)offsetY != 0)
            {
                StepAnim(&obj, 1, &frame2, &timer2, 1);
                sub_08004344(screenX, screenY + (s16)offsetY + 8, 1, frame2, 0, obj.unk1C, obj.unk8, obj.unk0);
            }
            else
            {
                sub_08004344(screenX, screenY, sub_080044DC(obj2.unk8), 0, 3, obj2.unk1C, obj2.unk8, obj2.unk0);
            }
        }
        WaitFrame();
    }
}
