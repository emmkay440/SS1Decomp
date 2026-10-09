#include "global.h"
#include "thread.h"

// State checks on a structure that is probably the message window
// (fields are unknown).
struct Unknown_0802292C
{
    u8 unk0[0x30];
    u8 unk30;
    u8 unk31[0x43];
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
