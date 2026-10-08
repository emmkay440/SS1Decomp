#include "global.h"
#include "heap.h"

struct Unknown_03000064
{
    u8 unk0[0x8];
    u32 unk8;
    u8 unkC[0x1C];
};                     // size 0x28

extern struct Unknown_03000064 *gUnknown_03000064;

void sub_08038924(void)
{
    struct Unknown_03000064 *entry;
    u32 i;

    gUnknown_03000064 = entry = Alloc(sizeof(struct Unknown_03000064) * 3);
    for (i = 0; i < 3; i++, entry++)
        entry->unk8 = 0;
}
