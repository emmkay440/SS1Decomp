#include "global.h"
#include "heap.h"
#include "thread.h"
#include "window.h"

// State checks on a structure that is probably the message window
// (fields are unknown).
struct Unknown_0802292C
{
    u8 unk0[0x28];
    struct Unknown_0802292C *unk28;   // the record sub_080228D4 checks
    u8 unk2C[0x4];
    u8 unk30;          // state: 3 -> 4 in sub_08022A0C
    u8 unk31;          // slot in gUnknown_03006424
    u8 unk32[0x42];
    u32 unk74;
    u8 unk78[0x8];
    u16 unk80;
};

static inline bool32 IsState3(struct Unknown_0802292C *p)
{
    bool32 result = FALSE;

    if (p->unk30 == 3)
        result = TRUE;
    return result;
}

static inline bool32 IsState0(struct Unknown_0802292C *p)
{
    bool32 result = FALSE;

    if (p->unk30 == 0)
        result = TRUE;
    return result;
}

static inline void Advance(struct Unknown_0802292C *p)
{
    if (((gUnknown_03006424 >> p->unk31) & 1) && p->unk30 == 3)
        p->unk30 = 4;
}

// If p's record is in state 3, moves it on to 4 and sets unk74 = 7.
// Returns FALSE while the record is in a state other than 0 or 3.
// (Inlined copies of sub_0802292C, sub_08022A0C and sub_0802293C.)
bool32 sub_080228D4(struct Unknown_0802292C *p)
{
    if (p != NULL)
    {
        struct Unknown_0802292C *record = p->unk28;

        if (IsState3(record))
        {
            Advance(record);
            p->unk74 = 7;
        }
        else if (!IsState0(record))
        {
            return FALSE;
        }
    }
    return TRUE;
}

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

// Stops the live 0x34-byte records (see window.h).
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
    struct Unknown_0300641C **records = &gUnknown_0300641C;

    *records = Alloc(4 * sizeof(struct Unknown_0300641C));
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
