#include "global.h"
#include "sprite_obj.h"

// One of the 60 objects of save select mode 2 (gUnknown_030007F8).
struct Orbiter
{
    u8 state;          // 1, 2 moving; 3 done
    u8 angle;          // 256 = a full turn
    u8 dir;
    u16 frame;         // +0x04
    u16 timer;
    s16 x;             // +0x08 center
    s16 y;
    s16 radius;        // +0x0C
};                     // size 0x10

extern struct Orbiter *gUnknown_030007F8;
extern struct SpriteObj gUnknown_03000800;
extern const s16 gUnknown_0805289C[];   // sine table

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void sub_08003FA4(s32 x, s32 y, u32 c, u32 d, u32 e, void *f, u32 g, u32 h, u32 i);

// Animates and draws the objects in states 1 and 2 on an ellipse around
// their center (radius * 4 wide, radius high) and moves them 4 angle
// steps along it, forward or back depending on `dir`. State 2 ends
// (state 3) below angle 0x45 or above 0xBB, state 1 at 0x40 or 0xC0.
void sub_08049C58(void)
{
    struct Orbiter *entry = gUnknown_030007F8;
    u8 i;
    s32 dx;
    s32 dy;

    for (i = 0; i < 60; i++, entry++)
    {
        if (entry->state == 2)
        {
            dx = (entry->radius * gUnknown_0805289C[entry->angle + 0x40]) >> 6;
            dy = (entry->radius * gUnknown_0805289C[entry->angle]) >> 8;

            sub_08026C40(&gUnknown_03000800, 1, &entry->frame, &entry->timer, 1);
            sub_08003FA4(entry->x + dx, entry->y + dy, 1, entry->frame, 0, gUnknown_03000800.unk1C,
                         gUnknown_03000800.unk8, gUnknown_03000800.unk0, 1);
            if (entry->dir == 1)
            {
                if (entry->angle <= 0x44)
                    entry->state = 3;
                entry->angle -= 4;
            }
            else
            {
                if (entry->angle > 0xBB)
                    entry->state = 3;
                entry->angle += 4;
            }
        }
        else if (entry->state == 1)
        {
            dx = (entry->radius * gUnknown_0805289C[entry->angle + 0x40]) >> 6;
            dy = (entry->radius * gUnknown_0805289C[entry->angle]) >> 8;

            sub_08026C40(&gUnknown_03000800, 1, &entry->frame, &entry->timer, 1);
            sub_08003FA4(entry->x + dx, entry->y + dy, 1, entry->frame, 0, gUnknown_03000800.unk1C,
                         gUnknown_03000800.unk8, gUnknown_03000800.unk0, 1);
            if (entry->dir == 2)
            {
                if (entry->angle == 0x40)
                    entry->state = 3;
                entry->angle += 4;
            }
            else
            {
                if (entry->angle == 0xC0)
                    entry->state = 3;
                entry->angle -= 4;
            }
        }
    }
}
