#include "global.h"
#include "sprite_obj.h"
#include "thread.h"

extern vu32 gUnknown_030063C4;      // in-use mask of the effect pool

struct SpriteObj *sub_08026C78(void);
u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007604(void);
u32 sub_08007544(void);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);

// Effect thread: draws sprite 0x1F rising from a map position for 20
// frames, then frees its pool slot. `pos` is y << 16 | x in pixels.
void sub_08018600(s32 pos, u32 slot)
{
    struct SpriteObj *obj = sub_08026C78();
    s32 y = (pos >> 16) << 12;
    u32 i = 0;
    s32 x = pos << 16;
    s16 screenX;
    s16 screenY;
    u32 second;

    while (!sub_080074CC() && i++ < 20)
    {
        if (!sub_08007510() && !sub_08007604() && (second = sub_08007544()) == 0)
        {
            sub_08005FC4(x >> 16, (s16)(y >> 12), &screenX, &screenY, 0x10, second);
            sub_08026B90(obj, screenX, screenY, 0x1F, second);
        }
        y -= 0x200;
        WaitFrame();
    }
    gUnknown_030063C4 &= ~(1 << slot);
}
