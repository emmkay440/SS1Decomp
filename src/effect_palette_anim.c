#include "global.h"
#include "area_state.h"
#include "display.h"
#include "sprite_obj.h"
#include "thread.h"

u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_08007578(void);
u32 sub_080075AC(void);
u32 sub_08007604(void);
u32 sub_08007750(void);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void sub_0802706C(struct SpriteObj *obj, u32 a, u32 b, u16 c, u16 d, u8 e);

// Effect thread started by sub_08033E6C: plays animation 10 of sprite
// record 0x10002C once at a map position (`pos` is y << 16 | x in pixels)
// with one color of its palette data copied to object palette entry
// `arg >> 16`. Stops early when one of the checks fails (among them bit 1
// of the area state's unk9C being clear). Ends by clearing its thread's
// priority, which frees the slot for sub_08033E6C.
void sub_08033CC8(u32 pos, u32 arg)
{
    struct SpriteObj obj;
    s16 screenX;
    s16 screenY;
    u16 frame;
    u16 timer;
    u32 palette = arg >> 16;
    u16 x;
    u16 y;
    u16 done;

    sub_08026ADC(&obj, 0x10002C, 5, -1);
    if (!sub_08007510() && !sub_08007604() && !sub_08007544() && !sub_080075AC())
        LoadPalette(palette + 0x10, obj.palettes + 0x20, 1);
    obj.unk1C[0] = 5;
    obj.unk1C[1] = palette;
    y = pos >> 16;
    x = pos;
    frame = 0;
    timer = 0;
    do
    {
        sub_08005FC4((s16)x, (s16)y, &screenX, &screenY, 0x30, 0);
        done = sub_08026C40(&obj, 10, &frame, &timer, 0);
        if (!sub_08007510() && !sub_08007604() && !sub_08007544() && !sub_080075AC())
            sub_0802706C(&obj, screenX, screenY, 10, frame, 1);
        WaitFrame();
        if (sub_08007750() || sub_080074CC() || !(gUnknown_030063D8->unk9C & 2)
         || sub_08007578() || done)
            break;
    } while (1);
    GetCurrentThread()->priority = 0;
}
