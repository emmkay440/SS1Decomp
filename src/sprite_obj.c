#include "global.h"
#include "display.h"
#include "sprite_obj.h"

extern struct SpriteObj gUnknown_03006430;

void sub_08003518(u32 a, u32 b, u16 c, u16 d, u32 e, void *f, u32 g, u32 h);
void sub_08003724(u32 a, u32 b, u16 c, u16 d, u32 e, void *f, u32 g, u32 h, s32 scaleX, s32 scaleY, u32 k);
u32 sub_08004214(u16 a, u32 b, u32 c, u32 d, u32 e);

void *GetDataRecord(u32 key);
void sub_08026C64(struct SpriteObj *obj, s16 max, s16 min, s16 step);

// Sets up a sprite object from data record `key` and the records with the
// same low half in categories 0x11 and 0x13 (palettes). Loads the palettes
// unless paletteCount is negative. Returns NULL if a record is missing.
struct SpriteObj *sub_08026ADC(struct SpriteObj *obj, u32 key, u32 palette, s32 paletteCount)
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

void sub_08026B64(struct SpriteObj *obj)
{
    obj->unk10 = -1;
    obj->unk8 = 0;
    obj->unk0 = 0;
    obj->palettes = NULL;
}

void sub_08026B74(struct SpriteObj *obj)
{
    LoadPalette(obj->palette + 16, obj->palettes + obj->palette * 32, obj->paletteCount);
}

void sub_08026B90(struct SpriteObj *obj, u32 a, u32 b, u16 c, u16 d)
{
    sub_08003518(a, b, c, d, 0, obj->unk1C, obj->unk8, obj->unk0);
}

// Draws with a scale that bounces between scaleMin and scaleMax.
void sub_08026BC4(struct SpriteObj *obj, u32 a, u32 b, u16 c, u16 d)
{
    obj->scale += obj->scaleStep;
    if (obj->scaleStep > 0 && obj->scale > obj->scaleMax)
        obj->scaleStep = -obj->scaleStep;
    if (obj->scaleStep < 0 && obj->scale < obj->scaleMin)
        obj->scaleStep = -obj->scaleStep;
    sub_08003724(a, b, c, d, 0, obj->unk1C, obj->unk8, obj->unk0, obj->scale, obj->scale, 0);
}

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u32 b, u32 c, u32 d)
{
    return sub_08004214(a, b, c, obj->unk8, d);
}

void sub_08026C64(struct SpriteObj *obj, s16 max, s16 min, s16 step)
{
    obj->scale = 0x100;
    obj->scaleMax = max;
    obj->scaleMin = min;
    obj->scaleStep = step;
}

struct SpriteObj *sub_08026C78(void)
{
    return &gUnknown_03006430;
}
