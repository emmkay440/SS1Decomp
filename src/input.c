#include "global.h"

extern u16 gKeysPrev;
extern u16 gKeysHeld;
extern u16 gKeysNew;
extern u16 gKeysRepeat;
extern u16 gKeyRepeatCounter;
extern u16 gKeyRepeatDelay;
extern u16 gKeyRepeatTimer;
extern u16 gKeyRepeatRate;

// Reads the keys. gKeysRepeat holds newly pressed keys, and the D-pad
// direction again after gKeyRepeatDelay frames and then every
// gKeyRepeatRate frames while it's held.
void UpdateInput(void)
{
    gKeysPrev = gKeysHeld;
    gKeysHeld = REG_KEYINPUT ^ KEYS_MASK;
    gKeysNew = gKeysHeld & ~gKeysPrev;
    if ((gKeysPrev & DPAD_ANY) == (gKeysHeld & DPAD_ANY))
    {
        gKeyRepeatCounter++;
        if (gKeyRepeatCounter == gKeyRepeatDelay)
        {
            gKeysRepeat = gKeysHeld & DPAD_ANY;
        }
        else if (gKeyRepeatCounter > gKeyRepeatDelay && gKeyRepeatTimer++ > gKeyRepeatRate)
        {
            gKeysRepeat = gKeysHeld & DPAD_ANY;
            gKeyRepeatTimer = 0;
            gKeyRepeatCounter = gKeyRepeatDelay;
        }
        else
        {
            gKeysRepeat = 0;
        }
    }
    else
    {
        gKeysRepeat = gKeysNew;
        gKeyRepeatCounter = gKeyRepeatTimer = 0;
    }
}

extern u8 gRngState[8];

// Shifts the 64-bit state right by one bit, feeding in the XOR of bit 1 of
// its first two bytes, and returns two state bytes picked by bytes 2 and 3.
s16 Random(void)
{
    u8 hi;
    u8 lo;
    u32 carry;
    s32 i;

    hi = gRngState[0] ^ gRngState[1];
    hi &= 2;
    carry = (hi != 0);

    for (i = 0; i < 8; i++)
    {
        u8 byte = gRngState[i];
        u8 shifted = (byte >> 1) | (carry << 7);

        carry = byte & 1;
        gRngState[i] = shifted;
    }
    lo = gRngState[gRngState[2] & 7];
    hi = gRngState[gRngState[3] & 7];
    return lo | (hi << 8);
}

// Nothing calls it.
void sub_0800088C(void)
{
}
