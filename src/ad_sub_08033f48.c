#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknown_03006814;
extern void sub_080330E8(void);

void sub_08033F48(void *arg0, s32 arg1) {
    struct Thread *thread;
    u32 index;
    void *stack;

    thread = gUnknown_03006814;
    thread = (struct Thread *)((u32)thread + 0x50);
    index = 2;

    while (index <= 3) {
        if (!IsThreadInList(thread) && thread->priority == 0) {
            thread->priority = 0x3C;
            stack = Alloc(0x400);
            thread->stack = stack;
            thread->entry = sub_080330E8;
            thread->sp = stack + 0x3FC;
            thread->onExit = NULL;
            CreateThread(thread, arg0, (index << 16) | arg1);
            break;
        }
        index++;
        thread = (struct Thread *)((u32)thread + 0x28);
    }
}
