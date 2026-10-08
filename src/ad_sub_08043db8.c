#include "global.h"

u32 sub_08043DB8(u16 value1, u16 value2)
{
  u32 result = 0;
  if (value1 != value2)
  {
    result = 2;
    if (value1 <= value2)
    {
    }
    else
    {
      result = 1;
    }
  }
  return result;
}
