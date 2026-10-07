#include "global.h"
#include <string.h>
#include "heap.h"
#include "player_stats.h"
#include "save.h"

u32 SaveGame(void)
{
    u8 *buf = Alloc(SAVE_SECTOR_SIZE);
    u8 sum;
    u32 result;

    memcpy(buf, &gPlayerStats, SAVE_DATA_SIZE);
    {
        u8 *p;
        u32 i;

        sum = 0;
        p = buf;
        i = 0;
        while (i < SAVE_DATA_SIZE)
        {
            sum += *p;
            i++;
            p++;
        }
    }
    sum = ~sum;
    buf[SAVE_DATA_SIZE] = sum;
    result = WriteSaveSector(gPlayerStats.saveSlot, buf);
    if (result == 0)
    {
        result = VerifySaveSector(gPlayerStats.saveSlot, buf);
        if (result == 0)
        {
            Free(buf);
            return 0;
        }
    }
    Free(buf);
    return result;
}

