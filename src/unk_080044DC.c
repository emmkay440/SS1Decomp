#include "global.h"

struct Unknown_080044DC
{
    u16 unk0;
    u16 unk2;
};

s32 sub_080044DC(struct Unknown_080044DC *p)
{
    return p->unk2 - 1;
}
