#include "global.h"
#include "thread.h"

// Two arrays of thread-driven records (windows?): 0x34-byte ones at
// gUnknown_03006418 and 0x88-byte ones at gUnknown_0300641C, with byte masks
// of the live ones.
struct Unknown_03006418
{
    struct Thread thread;
    u8 unk28[0xC];
};

struct Unknown_0300641C
{
    struct Thread thread;
    u8 unk28[0x60];
};

extern struct Unknown_03006418 *gUnknown_03006418;
extern struct Unknown_0300641C *gUnknown_0300641C;
extern u8 gUnknown_03006420;
extern u8 gUnknown_03006424;

// Stops every live record of both arrays.
void sub_08021C44(void)
{
    u32 i;

    for (i = 0; i < 4; i++)
    {
        if ((gUnknown_03006424 >> i) & 1)
        {
            if (IsThreadInList(&gUnknown_03006418[i].thread))
                KillThread(&gUnknown_03006418[i].thread);
            gUnknown_03006424 &= ~(1 << i);
        }
    }
    for (i = 0; i < 4; i++)
    {
        if ((gUnknown_03006420 >> i) & 1)
        {
            if (IsThreadInList(&gUnknown_0300641C[i].thread))
                KillThread(&gUnknown_0300641C[i].thread);
            gUnknown_03006420 &= ~(1 << i);
        }
    }
}
