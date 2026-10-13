#include "global.h"
#include "map.h"
#include "player.h"
#include "sprite_obj.h"
#include "thread.h"

extern struct SpriteObj gUnknown_03006430;

bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
bool32 sub_08004214(u16 animId, u16 *frame, u16 *timer, void *data, u32 loop);
void sub_08003518(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Same as sub_08026C40 and sub_08026B90 (src/sprite_obj.c); this function
// has them inlined.
static inline u32 StepAnim(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop)
{
    return sub_08004214(anim, frame, timer, (void *)obj->unk8, loop);
}

static inline void DrawAnim(struct SpriteObj *obj, u32 x, u32 y, u16 anim, u16 frame)
{
    sub_08003518(x, y, anim, frame, 0, obj->unk1C, obj->unk8, obj->unk0);
}

// Plays animation 14 of gUnknown_03006430 rising from the player's
// position for 96 frames (not drawn while the map flags 0xC are set).
void sub_08024420(struct Player *player)
{
    struct SpriteObj *obj = &gUnknown_03006430;
    s32 x = player->x;
    s32 y = player->y;
    s16 screenX;
    s16 screenY;
    u16 frame = 0;
    u16 timer = 0;
    u16 i;

    for (i = 95; i != 0xFFFF; i--)
    {
        y -= 0x200;
        sub_08005FC4((s16)(x >> 12), (s16)(y >> 12), &screenX, &screenY, 0x30, 0);
        screenX -= 8;
        screenY -= 8;
        StepAnim(obj, 14, &frame, &timer, 1);
        if (!(gMapLayer_03003910.flags & 0xC))
            DrawAnim(obj, screenX, screenY, 14, frame);
        WaitFrame();
    }
}
