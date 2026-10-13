#include "global.h"
#include "sprite_obj.h"

// One of the 100 objects crossing the screen (gUnknown_03000774).
struct Runner
{
    u8 state;          // 1 moving right, 2 moving left, 3 done
    s16 x;             // +0x02
    s16 y;
    u16 frame;         // +0x06 of the first sprite
    u16 timer;
    u16 frame2;        // +0x0A of the second sprite
    u16 timer2;
};                     // size 0x10

extern struct Runner *gUnknown_03000774;
extern struct SpriteObj gUnknown_03000778;

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void sub_08003FA4(s32 x, s32 y, u32 c, u32 d, u32 e, void *f, u32 g, u32 h, u32 i);

// Moves (4 pixels a frame) and draws the objects above row 80 (`front`
// set) or from there down (clear), shifted by (offsetX, offsetY). Each is
// two animated sprites, 3 and 4 going right, 1 and 2 going left, the
// second one 4 pixels to the left. They are done past x = 260 or -20.
void sub_08048D98(u8 front, s32 offsetX, s32 offsetY)
{
    struct Runner *runner = gUnknown_03000774;
    u8 i;

    for (i = 0; i < 100; i++, runner++)
    {
        if (runner->state == 1)
        {
            if ((front && runner->y < 80) || (!front && runner->y >= 80))
            {
                runner->x += 4;
                sub_08026C40(&gUnknown_03000778, 3, &runner->frame, &runner->timer, 1);
                sub_08026B90(&gUnknown_03000778, runner->x - (s8)offsetX, runner->y - (s8)offsetY, 3, runner->frame);
                sub_08026C40(&gUnknown_03000778, 4, &runner->frame2, &runner->timer2, 1);
                sub_08003FA4(runner->x - (s16)((s8)offsetX + 4), runner->y - (s8)offsetY, 4, runner->frame2, 0,
                             gUnknown_03000778.unk1C, gUnknown_03000778.unk8, gUnknown_03000778.unk0, 1);
                if (runner->x > 260)
                    runner->state = 3;
            }
        }
        else if (runner->state == 2)
        {
            if ((front && runner->y < 80) || (!front && runner->y >= 80))
            {
                runner->x -= 4;
                sub_08026C40(&gUnknown_03000778, 1, &runner->frame, &runner->timer, 1);
                sub_08026B90(&gUnknown_03000778, runner->x - (s8)offsetX, runner->y - (s8)offsetY, 1, runner->frame);
                sub_08026C40(&gUnknown_03000778, 2, &runner->frame2, &runner->timer2, 1);
                sub_08003FA4(runner->x - (s16)((s8)offsetX + 4), runner->y - (s8)offsetY, 2, runner->frame2, 0,
                             gUnknown_03000778.unk1C, gUnknown_03000778.unk8, gUnknown_03000778.unk0, 1);
                if (runner->x < -20)
                    runner->state = 3;
            }
        }
    }
}
