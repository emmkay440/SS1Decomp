#include "global.h"
#include "map.h"
#include "player.h"
#include "sprite_obj.h"
#include "thread.h"

extern struct SpriteObj gUnknown_03006430;

bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
void sub_08003518(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// sub_08026B90 (src/sprite_obj.c), inlined.
static inline void DrawAnim(struct SpriteObj *obj, u32 x, u32 y, u16 anim, u16 frame)
{
    sub_08003518(x, y, anim, frame, 0, obj->unk1C, obj->unk8, obj->unk0);
}

extern const u32 gUnknown_080FBA9C[10];   // powers of ten, largest first

u32 sub_08007544(void);
u32 sub_080004A4(u32 *value, u32 divisor);

// What sub_08024320 reads of its object: a fixed point map position.
struct Unknown_sub_08024320
{
    u8 unk0[0x10];
    s32 x;
    s32 y;
};

// sub_08026D98, inlined.
static inline void DrawNumber(s32 x, s32 y, u32 val, u32 kind, u8 count)
{
    u8 digits[12];
    u32 value;
    u32 i;
    bool32 started;
    u8 *p;
    const u32 *table;

    switch (kind)
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

// Draws `value` (4 digits, leading zeros skipped) and sprite 4 above the
// object, unless sub_08007544() says not to.
void sub_08024320(struct Unknown_sub_08024320 *object, u32 value)
{
    u16 unused[10];    // the original reserves these 20 bytes
    s16 screenX;
    s16 screenY;
    u32 second;

    second = sub_08007544();
    if (second != 0)
        return;
    sub_08005FC4((s16)(object->x >> 12), (s16)(object->y >> 12), &screenX, &screenY, 0x30, second);
    DrawNumber((u16)screenX, (u16)screenY, value, 2, 4);
    DrawAnim(&gUnknown_03006430, (u16)screenX - 6, (u16)screenY - 8, 4, 6);
}

