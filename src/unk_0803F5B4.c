#include "global.h"

void sub_08045F24(void);
void sub_08043C5C(void);
void sub_0803F6A4(void);
void sub_08045234(u8 value);
void sub_08043D3C(u8 value);
void sub_0803F73C(u8 value);

void sub_0803F5B4(void)
{
    sub_08045F24();
    sub_08043C5C();
    sub_0803F6A4();
}

// Passes the same value to three modules (sub_08043D3C just stores it).
void sub_0803F5C8(u8 value)
{
    sub_08045234(value);
    sub_08043D3C(value);
    sub_0803F73C(value);
}
