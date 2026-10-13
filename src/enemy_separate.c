#include "global.h"
#include "enemy.h"

extern u32 gFrameCounter;
extern const u16 gUnknown_080FB4B8[];   // enemy body size by Enemy.unk82
extern const u8 gUnknown_080FB720[];    // by angle / 16: first argument of sub_08005A2C
extern const u16 gUnknown_080FB9FC[];   // direction (sixteenths of a turn) by sub_08005A2C's result - 1
extern const s16 gUnknown_0805289C[];   // sine table, 256 per turn; cosine is 64 entries on

int abs(int x);
u16 sub_08005A2C(u32 a, s32 x, s32 y, u32 d);

// Every other frame: for each active enemy in a later slot that is within
// 8 pixels on both axes, moves this enemy by (sum of the two half body
// sizes - distance) along the direction sub_08005A2C allows for the line
// between them.
void sub_0800E49C(struct Enemy *self)
{
    u8 unused[0x1C];   // the original has 28 bytes of stack it never touches
    s32 size;
    s32 x;
    s32 y;
    struct Enemy *other;
    u16 i;

    if ((gFrameCounter & 1) == (self->slot & 1))
        return;
    x = self->x;
    y = self->y;
    size = gUnknown_080FB4B8[self->unk82] >> 1;
    other = &gEnemies[self->slot + 1];
    for (i = self->slot + 1; i < MAX_ENEMIES; i++, other++)
    {
        if ((gActiveEnemyMask & (1 << i)) && self->state != 8)
        {
            u16 reach = size + (gUnknown_080FB4B8[other->unk82] >> 1);
            s16 dx = (x - other->x) >> 12;
            s16 dy = (y - other->y) >> 12;
            u16 distance;
            u16 angle;
            u16 hit;
            s32 newX;
            s32 newY;

            if (abs(dx) >> 3 > 0)
                continue;
            if (abs(dy) >> 3 > 0)
                continue;
            distance = Sqrt(dx * dx + dy * dy);
            angle = ArcTan2(dx, dy) >> 8;
            reach -= distance;
            newX = x + reach * gUnknown_0805289C[angle + 0x40];
            newY = y + reach * gUnknown_0805289C[angle];
            hit = sub_08005A2C(gUnknown_080FB720[angle >> 4], newX, newY, 0);
            if (hit != 0)
            {
                hit--;
                angle = gUnknown_080FB9FC[hit] << 4;
                newX = x + reach * gUnknown_0805289C[angle + 0x40];
                newY = y + reach * gUnknown_0805289C[angle];
                self->x = newX;
                self->y = newY;
            }
        }
    }
}
