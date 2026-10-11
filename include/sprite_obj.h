#ifndef GUARD_SPRITE_OBJ_H
#define GUARD_SPRITE_OBJ_H

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

struct SpriteObj *sub_08026ADC(struct SpriteObj *obj, u32 key, u32 palette, s32 paletteCount);
void sub_08026B64(struct SpriteObj *obj);
void sub_08026B74(struct SpriteObj *obj);
void sub_08026B90(struct SpriteObj *obj, u32 a, u32 b, u16 c, u16 d);
void sub_08026BC4(struct SpriteObj *obj, u32 a, u32 b, u16 c, u16 d);

#endif // GUARD_SPRITE_OBJ_H
