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
