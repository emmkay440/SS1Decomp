#include "global.h"

extern u8 gUnknown_03000768;

void sub_08048930(void);
void sub_08049088(void);
void sub_080497D8(void);
void sub_0804A074(void);
void sub_0804A5FC(void);
void sub_0804ADF0(void);
void sub_0804B660(void);
void sub_0804BD48(void);
void sub_0804C548(void);

// The thread in save_select_thread.c calls sub_080486C8 and then this, both
// switching on gUnknown_03000768; sub_08048614 is the matching cleanup switch.
void sub_08048740(void)
{
    switch (gUnknown_03000768)
    {
    case 0:
        sub_08048930();
        break;
    case 1:
        sub_08049088();
        break;
    case 2:
        sub_080497D8();
        break;
    case 3:
        sub_0804A074();
        break;
    case 4:
        sub_0804A5FC();
        break;
    case 5:
        sub_0804ADF0();
        break;
    case 6:
        sub_0804B660();
        break;
    case 7:
        sub_0804BD48();
        break;
    case 8:
        sub_0804C548();
        break;
    }
}
