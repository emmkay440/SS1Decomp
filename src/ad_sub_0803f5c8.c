#include "global.h"

// sub_0803F73C: no C declaration yet; declare it yourself (guess the type)
void sub_0803F73C(u8 value);    // from src/ad_sub_0803f73c.c
// sub_08043D3C: no C declaration yet; declare it yourself (guess the type)
void sub_08043D3C(u8 value);    // from src/ad_sub_08043d3c.c
// sub_08045234: no C declaration yet; declare it yourself (guess the type)
void sub_08045234(u8 value);    // from src/ad_sub_08045234.c

void sub_0803F5C8(u8 value)
{
    u8 processedValue = value;

    sub_08045234(processedValue);
    sub_08043D3C(processedValue);
    sub_0803F73C(processedValue);
}

