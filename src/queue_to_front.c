#include "global.h"
#include "queue.h"

// Moves the first pending (unkA bit 0) entry of kind 1 (or else 7, or else
// 4) behind entry 0 to the front of the queue, shifting the ones before it
// back by one, and sets unkA of the entry that is now second to 9 (keeping
// its bit 2). Returns FALSE if there is no such entry.
bool32 sub_08027940(void)
{
    struct Unknown_03006720 saved;
    u32 i;

    for (i = 1; i < gUnknown_03006758; i++)
    {
        if (gUnknown_03006720[i].unkA & 1)
        {
            u32 kind = gUnknown_03006720[i].unk4.k.kind;

            if (kind == 1)
            {
                saved = gUnknown_03006720[i];
                break;
            }
        }
    }
    if (i >= gUnknown_03006758)
    {
        for (i = 1; i < gUnknown_03006758; i++)
        {
            if (gUnknown_03006720[i].unkA & 1)
            {
                u32 kind = gUnknown_03006720[i].unk4.k.kind;

                if (kind == 7)
                {
                    saved = gUnknown_03006720[i];
                    break;
                }
            }
        }
        if (i >= gUnknown_03006758)
        {
            for (i = 1; i < gUnknown_03006758; i++)
            {
                if (gUnknown_03006720[i].unkA & 1)
                {
                    u32 kind = gUnknown_03006720[i].unk4.k.kind;

                    if (kind == 4)
                    {
                        saved = gUnknown_03006720[i];
                        break;
                    }
                }
            }
            if (i >= gUnknown_03006758)
                return FALSE;
        }
    }
    for (; i != 0; i--)
        gUnknown_03006720[i] = gUnknown_03006720[i - 1];
    gUnknown_03006720[0] = saved;
    gUnknown_03006720[1].unkA = (gUnknown_03006720[1].unkA & 4) | 9;
    return TRUE;
}
