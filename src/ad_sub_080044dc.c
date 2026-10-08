#include "global.h"

s32 sub_080044DC(void *arg0) {
    struct {
        u8 unk0[2];
        u16 unk2;
    } *ptr = arg0;
    return ptr->unk2 - 1;
}
