#include "global.h"
#include "heap.h"
#include "thread.h"

extern void sub_08039EC8(void);

void sub_0803A3E4(s32 arg0, s32 arg1) {
    struct Thread *thread;
    u32 index;
    void *stack;

    thread = *(struct Thread **)0x03006818;
    index = 0;

    while (index <= 0x11) {
        if (!IsThreadInList(thread) && thread->priority == 0) {
            thread->priority = 0x46;
            stack = Alloc(0x400);
            thread->stack = stack;
            thread->sp = stack + 0x3FC;
            thread->entry = &sub_08039EC8;
            thread->onExit = NULL;
            CreateThread(thread, arg0, arg1);
            break;
        }
        index++;
        thread = (struct Thread *)((u8 *)thread + 0x28);
    }
}
