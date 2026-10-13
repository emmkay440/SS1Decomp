#include "global.h"

// One of the 100 objects crossing the screen (see
// src/save_select_mode0_runners.c).
struct Runner
{
    u8 state;          // 1 moving right, 2 moving left, 3 done
    s16 x;             // +0x02
    s16 y;
    u16 frame;
    u16 timer;
    u16 frame2;
    u16 timer2;
};                     // size 0x10

extern u8 gUnknown_03000770;       // number of objects made so far (up to 100)
extern struct Runner *gUnknown_03000774;

s16 Random(void);

// By chance (Random() above 16000) and with fewer than 10 on the way, adds
// an object: from the left or from the right edge, at a random height
// (20 to 60 or 120 to 160). Then sorts the moving objects by y,
// largest first (each one is swapped with the largest after it).
void sub_08048BF0(void)
{
    struct Runner temp;
    u8 active;
    u8 i;
    u8 j;
    u8 best;
    s16 bestY;
    s16 roll;
    u16 y;

    if (gUnknown_03000770 > 99)
        return;
    active = 0;
    for (i = 0; i < gUnknown_03000770; i++)
    {
        if (gUnknown_03000774[i].state != 0 && gUnknown_03000774[i].state != 3)
            active++;
    }
    if (Random() > 16000 && active < 10)
    {
        if (Random() > 0)
        {
            gUnknown_03000774[gUnknown_03000770].state = 1;
            gUnknown_03000774[gUnknown_03000770].x = 0;
        }
        else
        {
            gUnknown_03000774[gUnknown_03000770].state = 2;
            gUnknown_03000774[gUnknown_03000770].x = 240;
        }
        roll = Random();
        if (roll < 0)
            y = roll / 800 + 60;
        else
            y = roll / 800 + 120;
        gUnknown_03000774[gUnknown_03000770].y = y;
        gUnknown_03000770++;
    }
    for (i = 0; i < gUnknown_03000770; i++)
    {
        if (gUnknown_03000774[i].state == 1 || gUnknown_03000774[i].state == 2)
        {
            bestY = gUnknown_03000774[i].y;
            best = i;
            for (j = i; j < gUnknown_03000770; j++)
            {
                if (i != j
                 && (gUnknown_03000774[j].state == 1 || gUnknown_03000774[j].state == 2)
                 && bestY < gUnknown_03000774[j].y)
                {
                    bestY = gUnknown_03000774[j].y;
                    best = j;
                }
            }
            if (best != i)
            {
                temp = gUnknown_03000774[best];
                gUnknown_03000774[best] = gUnknown_03000774[i];
                gUnknown_03000774[i] = temp;
            }
        }
    }
}
