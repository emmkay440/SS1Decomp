#include "global.h"
#include "heap.h"
#include "thread.h"

extern void sub_0803279C(void);
extern struct Thread *gUnknown_03006814;

void sub_08033EE0(void *arg0, s32 arg1) {
    struct Thread *thread;
    u32 index;
    void *stack;
    u32 temp_r0;
    u32 temp_r5;

    thread = gUnknown_03006814;
    index = 0;

    while (index <= 1) {
        if (!IsThreadInList(thread) && (temp_r5 = thread->priority, temp_r5 == 0)) {
            thread->priority = 0x3C;
            temp_r0 = Alloc(0x400);
            thread->stack = temp_r0;
            thread->entry = sub_0803279C;
            thread->sp = temp_r0 + 0x3FC;
            thread->onExit = (void (*)(void))temp_r5;
            CreateThread(thread, arg0, (index << 16) | arg1);
            break;
        }
        index++;
        thread = (struct Thread *)((u8 *)thread + 0x28);
    }
}
