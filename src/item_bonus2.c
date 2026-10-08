#include "global.h"
#include "item_bonus.h"

// The rest of the second +0xF2 group (see item_bonus.c).

s16 sub_08014F40(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x14)
                sum += rec->value[i];
    return sum;
}

bool32 sub_08014F84(struct BonusesAtF2 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x12)
                return TRUE;
    return FALSE;
}

s16 sub_08014FB0(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xC)
                sum += rec->value[i];
    return sum;
}

s16 sub_08014FF4(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xD)
                sum += rec->value[i];
    return sum;
}

s16 sub_08015038(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xF)
                sum += rec->value[i];
    return sum;
}

// Bonus 0x15 as a percentage of `base`.
s16 sub_0801507C(struct BonusesAtF2 *rec, u16 base)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x15)
                sum += rec->value[i];
    return (s16)base * sum / 100;
}
