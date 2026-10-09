#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gTitleMenuThread;

void TitleMenuThread(void);

void StartTitleMenu(void)
{
    u8 *stack = Alloc(0x200);

    gTitleMenuThread.entry = TitleMenuThread;
    gTitleMenuThread.sp = stack + 0x1FC;
    gTitleMenuThread.stack = stack;
    gTitleMenuThread.onExit = NULL;
    gTitleMenuThread.priority = 1;
    CreateThread(&gTitleMenuThread, 0);
}
