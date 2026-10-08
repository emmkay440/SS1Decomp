#include "global.h"
#include "player_stats.h"

void *GetDataRecord(u32 key);

// Data record 0x900E4: `count` 0-terminated names, back to back.
struct NameList
{
    u8 unk0[8];
    u16 count;
    u16 names[0];
};

// Index of the player's name in the list. Doesn't return a value when the
// name isn't there (the caller gets the record pointer).
// The do/while (0) and the empty if (1) are no-ops that decomp-permuter
// found; they reproduce the original block layout (maybe macros or debug
// code in the original source).
u32 sub_080150D4(void)
{
    struct NameList *list = GetDataRecord(0x900E4);
    u32 pos = 0;
    u32 i;
    u32 len;

    for (i = 0; i < list->count; i++)
    {
        len = 0;
        while (list->names[pos] != 0 && gPlayerStats.name[len] == list->names[pos])
        {
            do
            {
                pos++;
                len++;
            } while (0);
        }
        if (list->names[pos] == 0 && gPlayerStats.name[len] == 0)
            return i;
        while (list->names[pos] != 0)
        {
            if (1)
            {
            }
            pos++;
        }
        pos++;
    }
}
