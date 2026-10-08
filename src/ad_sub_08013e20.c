#include "global.h"

// ---- src/unknown.c (matches the ROM) ----
#include "global.h"

// Known uses: This function is called with a pointer to a struct and checks
// a specific bit in a field of that struct. If the bit is set, it clears the
// bit and sets another field to 5. If the bit is not set, it returns 1.
extern struct UnknownStruct *gUnknownPointer;

struct UnknownStruct {
    u8 unk0[0xC];
    u32 fieldC;
    u8 unk10[0x4];
    u32 field14;
};

u32 sub_08013E20(struct UnknownStruct *arg)
{
    u32 fieldC;
    u32 bitCheck;

    if (arg == NULL)
    {
        return 0;
    }

    fieldC = arg->fieldC;
    bitCheck = fieldC & 1;

    if (bitCheck == 0)
    {
        return 1;
    }

    arg->fieldC = 0;
    arg->field14 = 5;

    return 1;
}

