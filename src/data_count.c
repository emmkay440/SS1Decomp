#include "global.h"
#include "data_record.h"

// "SSDT" archive header (docs/data.md).
struct DataArchive
{
    u32 magic;
    u32 version;
    u32 offsets[24]; // per category, from the archive start
};

extern u8 gDataArchive[];

// Number of records in a category.
u32 sub_08002E18(u32 category)
{
    u8 *base = gDataArchive;
    struct DataArchive *archive = (struct DataArchive *)gDataArchive;
    u32 *section;
    u32 count;

    category &= 0xFFF;
    switch (category)
    {
    case 18:
        section = (u32 *)(base + archive->offsets[1]);
        break;
    case 19:
        section = (u32 *)(base + archive->offsets[17]);
        break;
    case 20:
        section = (u32 *)(base + archive->offsets[3]);
        break;
    case 0: case 1: case 2: case 3: case 4: case 5: case 6: case 7:
    case 8: case 9: case 10: case 11: case 12: case 13: case 14: case 15:
    case 16: case 17: case 22: case 23:
        section = (u32 *)(base + archive->offsets[category]);
        break;
    default:
        return 0;
    }

    switch (category)
    {
    case 0:
        count = *section;
        break;
    case 1:
        count = *section;
        break;
    case 2:
        count = *section;
        break;
    case 3:
        count = *section;
        break;
    case 4:
        count = *section;
        break;
    case 5:
        count = *section;
        break;
    case 6:
        count = *section;
        break;
    case 7:
        count = *section;
        break;
    case 8:
        count = *section;
        break;
    case 9:
        count = *section;
        break;
    case 10:
        count = *section;
        break;
    case 11:
        count = *section;
        break;
    case 12:
        count = *section;
        break;
    case 13:
        count = *section;
        break;
    case 14:
        count = *section;
        break;
    case 15:
        count = *section;
        break;
    case 16:
        count = *section;
        break;
    case 17:
        count = *section;
        break;
    case 18:
        count = *section;
        break;
    case 19:
        count = *section;
        break;
    case 20:
        count = *section;
        break;
    case 22:
        count = 3;
        break;
    case 23:
        count = 1;
        break;
    }
    return count;
}
