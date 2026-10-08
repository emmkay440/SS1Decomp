#include "global.h"
#include "item_bonus.h"

// One function per record group and bonus type (0x11 and 0x12 are only
// ever tested).

s16 sub_08014288(struct BonusesAt153 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x14)
                sum += rec->value[i];
    return sum;
}

bool32 sub_080142D0(struct BonusesAt153 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x12)
                return TRUE;
    return FALSE;
}

s16 sub_08014300(struct BonusesAt153 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xC)
                sum += rec->value[i];
    return sum;
}

s16 sub_08014348(struct BonusesAt153 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xD)
                sum += rec->value[i];
    return sum;
}

s16 sub_08014390(struct BonusesAt153 *rec)
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
s16 sub_080143D8(struct BonusesAt153 *rec, u16 base)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x15)
                sum += rec->value[i];
    return (s16)base * sum / 100;
}

s16 sub_08014434(struct BonusesAt153 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xB)
                sum += rec->value[i];
    return sum;
}

s16 sub_0801447C(struct BonusesAt153 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x10)
                sum += rec->value[i];
    return sum;
}

bool32 sub_080144C4(struct BonusesAt153 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x11)
                return TRUE;
    return FALSE;
}

s16 sub_080144F4(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xB)
                sum += rec->value[i];
    return sum;
}

s16 sub_08014538(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x10)
                sum += rec->value[i];
    return sum;
}

bool32 sub_0801457C(struct BonusesAtF2 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x11)
                return TRUE;
    return FALSE;
}

s16 sub_080145A8(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x14)
                sum += rec->value[i];
    return sum;
}

bool32 sub_080145EC(struct BonusesAtF2 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x12)
                return TRUE;
    return FALSE;
}

s16 sub_08014618(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xC)
                sum += rec->value[i];
    return sum;
}

s16 sub_0801465C(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xD)
                sum += rec->value[i];
    return sum;
}

s16 sub_080146A0(struct BonusesAtF2 *rec)
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
s16 sub_080146E4(struct BonusesAtF2 *rec, u16 base)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x15)
                sum += rec->value[i];
    return (s16)base * sum / 100;
}

s16 sub_0801473C(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xB)
                sum += rec->value[i];
    return sum;
}

s16 sub_08014780(struct BonusesAtF2 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x10)
                sum += rec->value[i];
    return sum;
}

bool32 sub_080147C4(struct BonusesAtF2 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x11)
                return TRUE;
    return FALSE;
}

s16 sub_080147F0(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x14)
                sum += rec->value[i];
    return sum;
}

bool32 sub_08014838(struct BonusesAt150 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x12)
                return TRUE;
    return FALSE;
}

s16 sub_08014864(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xC)
                sum += rec->value[i];
    return sum;
}

s16 sub_080148AC(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xD)
                sum += rec->value[i];
    return sum;
}

s16 sub_080148F4(struct BonusesAt150 *rec)
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
s16 sub_0801493C(struct BonusesAt150 *rec, u16 base)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x15)
                sum += rec->value[i];
    return (s16)base * sum / 100;
}

s16 sub_08014998(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xB)
                sum += rec->value[i];
    return sum;
}

s16 sub_080149E0(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x10)
                sum += rec->value[i];
    return sum;
}

bool32 sub_08014A28(struct BonusesAt150 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x11)
                return TRUE;
    return FALSE;
}

s16 sub_08014A54(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x14)
                sum += rec->value[i];
    return sum;
}

bool32 sub_08014A9C(struct BonusesAt150 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x12)
                return TRUE;
    return FALSE;
}

s16 sub_08014AC8(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xC)
                sum += rec->value[i];
    return sum;
}

s16 sub_08014B10(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xD)
                sum += rec->value[i];
    return sum;
}

s16 sub_08014B58(struct BonusesAt150 *rec)
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
s16 sub_08014BA0(struct BonusesAt150 *rec, u16 base)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x15)
                sum += rec->value[i];
    return (s16)base * sum / 100;
}

s16 sub_08014BFC(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0xB)
                sum += rec->value[i];
    return sum;
}

s16 sub_08014C44(struct BonusesAt150 *rec)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x10)
                sum += rec->value[i];
    return sum;
}

bool32 sub_08014C8C(struct BonusesAt150 *rec)
{
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == 0x11)
                return TRUE;
    return FALSE;
}
