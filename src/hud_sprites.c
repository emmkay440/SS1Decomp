#include "global.h"
#include "display.h"
#include "sprite_obj.h"
#include "data_record.h"

extern u16 gLanguage;
extern struct SpriteObj gUnknown_03006510[4];
extern struct SpriteObj gUnknown_03006430;
extern struct SpriteObj gUnknown_03006470;

void sub_08026C64(struct SpriteObj *obj, s16 max, s16 min, s16 step);

// sub_08026ADC, inlined.
static inline struct SpriteObj *InitSpriteObj(struct SpriteObj *obj, u32 key, u32 palette, s32 paletteCount)
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

// Sets up the HUD sprite objects: the four number sprites, the one that
// depends on the language and the item icons.
void sub_08022AB4(void)
{
    InitSpriteObj(&gUnknown_03006510[0], 0x10004B, 9, 4);
    InitSpriteObj(&gUnknown_03006510[1], 0x100049, 9, 4);
    InitSpriteObj(&gUnknown_03006510[2], 0x10004A, 9, 4);
    InitSpriteObj(&gUnknown_03006510[3], 0x100048, 9, 4);
    switch (gLanguage)
    {
    case 1:
        InitSpriteObj(&gUnknown_03006430, 0x100069, 9, 4);
        break;
    case 2:
        InitSpriteObj(&gUnknown_03006430, 0x100072, 9, 4);
        break;
    case 3:
        InitSpriteObj(&gUnknown_03006430, 0x100071, 9, 4);
        break;
    case 4:
        InitSpriteObj(&gUnknown_03006430, 0x100084, 9, 4);
        break;
    case 5:
        InitSpriteObj(&gUnknown_03006430, 0x10008E, 9, 4);
        break;
    }
    InitSpriteObj(&gUnknown_03006470, 0x100041, 9, -1);
}
