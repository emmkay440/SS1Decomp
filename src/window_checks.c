#include "global.h"
#include "heap.h"
#include "thread.h"

// State checks on a structure that is probably the message window
// (fields are unknown).
struct Unknown_0802292C
{
    u8 unk0[0x30];
    u8 unk30;          // state: 3 -> 4 in sub_08022A0C
    u8 unk31;          // slot in gUnknown_03006424
    u8 unk32[0x42];
    u32 unk74;
    u8 unk78[0x8];
    u16 unk80;
};

bool32 sub_0802292C(struct Unknown_0802292C *p)
{
    bool32 result = FALSE;

    if (p->unk30 == 3)
        result = TRUE;
    return result;
}

bool32 sub_0802293C(struct Unknown_0802292C *p)
{
    bool32 result = FALSE;

    if (p->unk30 == 0)
        result = TRUE;
    return result;
}

bool32 sub_0802294C(struct Unknown_0802292C *p)
{
    bool32 result;

    if (p == NULL)
        return FALSE;
    result = FALSE;
    if (p->unk74 == 0)
        result = TRUE;
    return result;
}

bool32 sub_08022964(struct Unknown_0802292C *p)
{
    bool32 result;

    if (p == NULL)
        return FALSE;
    result = FALSE;
    if (p->unk80 == 0)
        result = TRUE;
    return result;
}

// Stops the live 0x34-byte records (see window_kill.c).
struct Unknown_03006418
{
    struct Thread thread;
    u8 unk28[0xC];
};

extern struct Unknown_03006418 *gUnknown_03006418;
extern u8 gUnknown_03006424;

void sub_0802297C(void)
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
}

extern void *gUnknown_0300641C;   // 4 x 0x88 bytes (see window_kill.c)
extern u8 gUnknown_03006420;      // its live mask

void sub_080229D4(struct Unknown_0802292C *p, u32 value)
{
    if (p != NULL)
        p->unk80 = value;
}

// First free slot of gUnknown_03006418, or 0xFF.
u8 sub_080229E0(void)
{
    u8 i;

    for (i = 0; i < 4; i++)
        if (!((gUnknown_03006424 >> i) & 1))
            return i;
    return 0xFF;
}

void sub_08022A0C(struct Unknown_0802292C *p)
{
    if (((gUnknown_03006424 >> p->unk31) & 1) && p->unk30 == 3)
        p->unk30 = 4;
}

void sub_08022A38(void)
{
    void **records = &gUnknown_0300641C;

    *records = Alloc(4 * 0x88);
    gUnknown_03006420 = 0;
}

// First free slot of gUnknown_0300641C, or 0xFF.
u8 sub_08022A5C(void)
{
    u8 i;

    for (i = 0; i < 4; i++)
        if (!((gUnknown_03006420 >> i) & 1))
            return i;
    return 0xFF;
}

// TRUE if any gUnknown_0300641C slot is live.
bool32 sub_08022A88(void)
{
    u8 i;

    for (i = 0; i < 4; i++)
        if ((gUnknown_03006420 >> i) & 1)
            return TRUE;
    return FALSE;
}
