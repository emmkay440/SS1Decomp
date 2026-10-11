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
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);

// Effect thread: plays animation 0x20 once at a map position, then frees
// its pool slot. `pos` is y << 16 | x in pixels.
void sub_08017D88(s32 pos, u32 slot)
{
    struct SpriteObj *obj = sub_08026C78();
    u16 frame = 0;
    u16 timer = 0;
    u32 done = 0;
    s32 x = (pos & 0xFFFF) << 12;
    s32 y = (pos >> 16) << 12;
    s16 screenX;
    s16 screenY;

    while (!sub_080074CC() && !done)
    {
        if (!sub_08007510() && !sub_08007604() && !sub_08007544())
        {
            sub_08005FC4((s16)(x >> 12), y >> 12, &screenX, &screenY, 0x10, 0);
            done = sub_08026C40(obj, 0x20, &frame, &timer, 0);
            sub_08026B90(obj, screenX, screenY, 0x20, frame);
        }
        WaitFrame();
    }
    gUnknown_030063C4 &= ~(1 << slot);
}
