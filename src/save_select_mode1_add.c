#include "global.h"
#include "display.h"
#include "sound.h"

// One of the 100 falling objects (see src/save_select_mode1_drops.c).
struct Drop
{
    u8 state;          // 1 falling, 2 bouncing, 3 lying, 4 done
    u8 timer;
    u8 sprite;
    s16 speed;         // +0x04
    s16 x;
    s16 y;             // +0x08
    s16 floor;         // +0x0A where it lands
};

extern u8 gUnknown_030007B0;        // number of drops made so far (up to 100)
extern s8 gUnknown_030007B1;        // shake offsets, set when a drop lands
extern s8 gUnknown_030007B2;
extern struct Drop *gUnknown_030007B4;

s16 Random(void);
void sub_08005F60(s32 a, s32 b);   // takes u16; this file passes ints

// Lets the shake offsets go back to 0 by one step and applies them to BG3
// (and sub_08005F60). By chance (Random() above `chance`) and with fewer
// than 20 on the way, adds a drop at a random x with a floor of 48 to 80
// or 140 to 172 and one of 10 sprites (sound 0x68). Then sorts the drops
// by y, largest first. The inner test of the sort checks states 2 and 3
// on the outer entry.
void sub_080492A8(u16 chance)
{
    struct Drop temp;
    u8 active;
    u8 i;
    u8 j;
    u8 best;
    s16 bestY;
    s16 roll;
    u16 floor;

    if (gUnknown_030007B0 > 99)
        return;
    if (gUnknown_030007B1 != 0)
    {
        if (gUnknown_030007B1 > 0)
            gUnknown_030007B1--;
        else
            gUnknown_030007B1++;
    }
    if (gUnknown_030007B2 != 0)
    {
        if (gUnknown_030007B2 > 0)
            gUnknown_030007B2--;
        else
            gUnknown_030007B2++;
    }
    gBgRegsBuffer[6] = -gUnknown_030007B1 + 8;
    gBgRegsBuffer[7] = -gUnknown_030007B2 + 77;
    sub_08005F60(-gUnknown_030007B1, -gUnknown_030007B2);
    active = 0;
    for (i = 0; i < gUnknown_030007B0; i++)
    {
        if (gUnknown_030007B4[i].state != 0 && gUnknown_030007B4[i].state != 4)
            active++;
    }
    if (Random() > (s16)chance && active < 20)
    {
        gUnknown_030007B4[gUnknown_030007B0].y = 0;
        gUnknown_030007B4[gUnknown_030007B0].state = 1;
        gUnknown_030007B4[gUnknown_030007B0].x = (u16)Random() % 240;
        roll = Random();
        if (roll < 0)
            floor = roll / 1000 + 80;
        else
            floor = roll / 1000 + 140;
        gUnknown_030007B4[gUnknown_030007B0].floor = floor;
        gUnknown_030007B4[gUnknown_030007B0].sprite = (Random() + 0x8000) / 6557 + 1;
        gUnknown_030007B0++;
        PlaySE(0x68);
    }
    for (i = 0; i < gUnknown_030007B0; i++)
    {
        if (gUnknown_030007B4[i].state == 1 || gUnknown_030007B4[i].state == 2
         || gUnknown_030007B4[i].state == 3)
        {
            bestY = gUnknown_030007B4[i].y;
            best = i;
            for (j = i; j < gUnknown_030007B0; j++)
            {
                if (i != j
                 && (gUnknown_030007B4[j].state == 1 || gUnknown_030007B4[i].state == 2
                  || gUnknown_030007B4[i].state == 3)
                 && bestY < gUnknown_030007B4[j].y)
                {
                    bestY = gUnknown_030007B4[j].y;
                    best = j;
                }
            }
            if (best != i)
            {
                temp = gUnknown_030007B4[best];
                gUnknown_030007B4[best] = gUnknown_030007B4[i];
                gUnknown_030007B4[i] = temp;
            }
        }
    }
}
