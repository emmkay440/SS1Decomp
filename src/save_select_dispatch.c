#include "global.h"

extern u8 gUnknown_03000768;

void sub_08048834(void);
void sub_08048F7C(void);
void sub_080496CC(void);
void sub_08049E70(void);
void sub_0804A4AC(void);
void sub_0804AC1C(void);
void sub_0804B52C(void);
void sub_0804BBA0(void);
void sub_0804C37C(void);
void sub_08048F38(void);
void sub_08049678(void);
void sub_08049DBC(void);
void sub_0804A3F4(void);
void sub_0804AB7C(void);
void sub_0804B4CC(void);
void sub_0804BB88(void);
void sub_0804C2E0(void);
void sub_0804C9A4(void);
void sub_08048930(void);
void sub_08049088(void);
void sub_080497D8(void);
void sub_0804A074(void);
void sub_0804A5FC(void);
void sub_0804ADF0(void);
void sub_0804B660(void);
void sub_0804BD48(void);
void sub_0804C548(void);

// First half of a save-select mode's frame (see sub_08048740).
void sub_080486C8(void)
{
    switch (gUnknown_03000768)
    {
    case 0:
        sub_08048834();
        break;
    case 1:
        sub_08048F7C();
        break;
    case 2:
        sub_080496CC();
        break;
    case 3:
        sub_08049E70();
        break;
    case 4:
        sub_0804A4AC();
        break;
    case 5:
        sub_0804AC1C();
        break;
    case 6:
        sub_0804B52C();
        break;
    case 7:
        sub_0804BBA0();
        break;
    case 8:
        sub_0804C37C();
        break;
    }
}

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

// Switches to save-select mode `mode` and runs its setup.
void sub_080487B8(u8 mode)
{
    gUnknown_03000768 = mode;
    switch (gUnknown_03000768)
    {
    case 0:
        sub_08048F38();
        break;
    case 1:
        sub_08049678();
        break;
    case 2:
        sub_08049DBC();
        break;
    case 3:
        sub_0804A3F4();
        break;
    case 4:
        sub_0804AB7C();
        break;
    case 5:
        sub_0804B4CC();
        break;
    case 6:
        sub_0804BB88();
        break;
    case 7:
        sub_0804C2E0();
        break;
    case 8:
        sub_0804C9A4();
        break;
    }
}
