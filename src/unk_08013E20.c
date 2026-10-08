#include "global.h"

struct Unknown_08013E20
{
    u8 unk0[0xC];
    u32 unkC;    // bit 0 tested; the whole word is cleared
    u8 unk10[0x4];
    u32 unk14;   // set to 5 (a state?)
};

// Returns 0 for NULL, else 1. If bit 0 of unkC is set, clears unkC and sets
// unk14 = 5. The caller is in asm/code_080270D8.s.
bool32 sub_08013E20(struct Unknown_08013E20 *obj)
{
    if (obj == NULL)
        return FALSE;
    if (obj->unkC & 1)
    {
        obj->unkC = 0;
        obj->unk14 = 5;
    }
    return TRUE;
}
