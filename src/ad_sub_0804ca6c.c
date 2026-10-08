#include "global.h"

#include "global.h"

extern u8 gUnknown_03006920;
void sub_0804E1F0(void);

void sub_0804CA6C(void)
{
    u8 value;

    value = gUnknown_03006920;
    if (value == 0) {
        sub_0804E1F0();
    }
}

