#include "global.h"
#include "sprite_obj.h"

extern struct SpriteObj gUnknown_03006430;
extern const u32 gUnknown_080FBA9C[10];   // powers of ten, 1000000000 first (a guess)

u32 sub_080004A4(u32 *value, u32 divisor);
void sub_08003518(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// sub_08026B90 (src/sprite_obj.c), inlined.
static inline void DrawAnim(struct SpriteObj *obj, u32 x, u32 y, u16 anim, u16 frame)
{
    sub_08003518(x, y, anim, frame, 0, obj->unk1C, obj->unk8, obj->unk0);
}

// Draws `value` with `count` digits right-aligned, ending at x, without
// leading zeros (the last digit always shows), 6 pixels per digit, with
// the gUnknown_03006430 sprites of kind `kind` (3 is drawn as 13).
void sub_08026D98(s32 x, s32 y, u32 val, u8 kind, u8 count)
{
    u8 digits[12];
    u32 value;
    u32 i;
    u8 *p;
    const u32 *table;
    bool32 started;

    switch (kind)  // FAKE? the self-assignments only give the compare tree
    {
    case 0:
        kind = 0;
        break;
    case 1:
        kind = 1;
        break;
    case 2:
        kind = 2;
        break;
    case 3:
        kind = 13;
        break;
    }
    value = val;
    table = &gUnknown_080FBA9C[10 - count];
    p = digits;
    for (i = 0; i < count; i++, p++)
        *p = sub_080004A4(&value, *table++);
    started = FALSE;
    x -= (count - 1) * 6;
    p = digits;
    for (i = 0; i < count; i++, x += 6, p++)
    {
        if (started || *p != 0 || i == count - 1)
        {
            started = TRUE;
            DrawAnim(&gUnknown_03006430, x, y, kind, *p);
        }
    }
}
