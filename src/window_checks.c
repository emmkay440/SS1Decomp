#include "global.h"

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
