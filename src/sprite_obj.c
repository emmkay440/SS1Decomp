#include "global.h"
#include "display.h"

// A sprite object used by menus/windows; field meanings are guesses from
// how these functions use them.
struct SpriteObj
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u8 *palettes;      // +0x0C
    s32 unk10;
    u32 palette;       // +0x14
    u32 paletteCount;  // +0x18
    u8 unk1C[0x10];
    s16 scale;         // +0x2C 0x100 = 1.0
    s16 scaleStep;     // +0x2E
    s16 scaleMax;      // +0x30
    s16 scaleMin;      // +0x32
};

extern struct SpriteObj gUnknown_03006430;

void sub_08003518(u32 a, u32 b, u16 c, u16 d, u32 e, void *f, u32 g, u32 h);
void sub_08003724(u32 a, u32 b, u16 c, u16 d, u32 e, void *f, u32 g, u32 h, s32 scaleX, s32 scaleY, u32 k);
u32 sub_08004214(u16 a, u32 b, u32 c, u32 d, u32 e);

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
