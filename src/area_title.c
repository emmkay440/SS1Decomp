#include "global.h"
#include "data_record.h"
#include "display.h"
#include "map.h"
#include "player.h"
#include "sprite_obj.h"
#include "thread.h"

struct Unknown_080FB0F8
{
    u16 mapCount;      // number of maps in the area
    u8 unk2[0x5E];
};                     // size 0x60

extern struct Unknown_080FB0F8 gUnknown_080FB0F8[];
extern u16 gLanguage;

u32 sub_08004214(u16 a, u16 *frame, u16 *timer, u32 record, u32 loop);
void sub_08003518(u32 a, u32 b, u16 c, u16 d, u32 e, void *f, u32 g, u32 h);
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

// Copy of sub_08026B90 (src/sprite_obj.c).
static inline void DrawAnim(struct SpriteObj *obj, u32 x, u32 y, u16 anim, u16 frame)
{
    sub_08003518(x, y, anim, frame, 0, obj->unk1C, obj->unk8, obj->unk0);
}

// Thread (a guess: the area name shown when a map is entered): for 120
// frames draws two sprites of the language's record (0x10006B, 0x100077,
// 0x100094, 0x100088, 0x100087): animation area + 0x14 (0x26 from area 9
// on) and below it the map number, or area + 0x1C (0x23 from area 9) on
// the area's last map. Nothing on the first map.
void sub_080265A0(void)
{
    struct SpriteObj obj;
    struct SpriteObj obj2;
    u16 anims[2];
    u16 frames[2];
    u16 timers[2];
    u16 map;
    u16 i;

    switch (gLanguage)
    {
    case 1:
        SetUpSpriteObj(&obj, 0x10006B, 0, -1);
        SetUpSpriteObj(&obj2, 0x10006B, 0, -1);
        break;
    case 2:
        SetUpSpriteObj(&obj, 0x100077, 0, -1);
        SetUpSpriteObj(&obj2, 0x100077, 0, -1);
        break;
    case 3:
        SetUpSpriteObj(&obj, 0x100094, 0, -1);
        SetUpSpriteObj(&obj2, 0x100094, 0, -1);
        break;
    case 4:
        SetUpSpriteObj(&obj, 0x100088, 0, -1);
        SetUpSpriteObj(&obj2, 0x100088, 0, -1);
        break;
    case 5:
        SetUpSpriteObj(&obj, 0x100087, 0, -1);
        SetUpSpriteObj(&obj2, 0x100087, 0, -1);
        break;
    }
    LoadPalette(0x15, obj2.palettes, 1);
    obj.unk1C[0] = 5;
    obj2.unk1C[0] = 5;
    if (gMapLayer_03003910.unk6E != 0)
    {
        anims[0] = gMapLayer_03003910.unk6A + 0x14;
        map = gMapLayer_03003910.unk6E;
        if (map == gUnknown_080FB0F8[gMapLayer_03003910.unk6A].mapCount - 1)
        {
            if (gMapLayer_03003910.unk6A <= 8)
                anims[1] = gMapLayer_03003910.unk6A + 0x1C;
            else
                anims[1] = 0x23;
        }
        else
        {
            anims[1] = map;
        }
        frames[0] = 0;
        frames[1] = 0;
        timers[0] = 0;
        timers[1] = 0;
        i = 1;
        do
        {
            gBgRegsBuffer[29] = 0x3030;
            if (gMapLayer_03003910.unk6A <= 8)
                StepAnim(&obj, anims[0], &frames[0], &timers[0], 1);
            else
                StepAnim(&obj, 0x26, &frames[0], &timers[0], 1);
            StepAnim(&obj2, anims[1], &frames[1], &timers[1], 1);
            if (gMapLayer_03003910.unk6A <= 8)
                DrawAnim(&obj, 120, 54, anims[0], frames[0]);
            else
                DrawAnim(&obj, 120, 54, 0x26, frames[0]);
            DrawAnim(&obj2, 120, 106, anims[1], frames[1]);
            WaitFrame();
        } while (i++ <= 119);
        gBgRegsBuffer[29] = 0;
    }
    gPlayers[GetMultiplayerId()].unk10 &= ~0x80;
}
