#include "global.h"

#include "global.h"

extern u8 gUnknown_03000768;
extern void sub_08048930(void);
extern void sub_08049088(void);
extern void sub_080497D8(void);
extern void sub_0804A074(void);
extern void sub_0804A5FC(void);
extern void sub_0804ADF0(void);
extern void sub_0804B660(void);
extern void sub_0804BD48(void);
extern void sub_0804C548(void);

void sub_08048740(void)
{
    u8 value;
    value = gUnknown_03000768;
    if (value > 8)
        return;

    switch (value) {
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

