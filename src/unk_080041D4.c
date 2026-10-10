#include "global.h"

// Six words cleared together: heads of the sprite draw lists? (guess;
// sub_0800449C in draw_list.c walks the one at gUnknown_030031EC)
extern void *gUnknown_030031E0;
extern void *gUnknown_030031E4;
extern void *gUnknown_030031E8;
extern void *gUnknown_030031EC;
extern void *gUnknown_030031F0;
extern void *gUnknown_030031F4;

void sub_080041E0(void);

void sub_080041D4(void)
{
    sub_080041E0();
}

void sub_080041E0(void)
{
    gUnknown_030031E4 = NULL;
    gUnknown_030031E8 = NULL;
    gUnknown_030031F4 = NULL;
    gUnknown_030031E0 = NULL;
    gUnknown_030031EC = NULL;
    gUnknown_030031F0 = NULL;
}
