#ifndef GUARD_THREAD_H
#define GUARD_THREAD_H

// Cooperative threads (0x0800023C-0x080004A4, hand-written asm).
// Each thread has its own stack; WaitFrame() etc. switch stacks. The PC port
// (../shiningsoul-pc/include/glue/thread.h) keeps the same layout.
//
// To start one: set entry, sp (top of a stack), stack, priority, onExit,
// then CreateThread(thread, arg0, arg1). The entry runs as entry(arg0, arg1)
// and returning from it calls ThreadExit.

enum ThreadState
{
    THREAD_FREE,
    THREAD_READY,
    THREAD_RUNNING,
    THREAD_YIELDED,
    THREAD_WAITING,
};

struct Thread
{
    struct Thread *next;  // +0x00
    u32 state;            // +0x04 enum ThreadState
    s32 priority;         // +0x08 lower runs first
    void *entry;          // +0x0C entry point, later the saved LR
    void *sp;             // +0x10 saved SP
    u32 waitEvent;        // +0x14
    struct Thread *prev;  // +0x18
    u16 cpuTime;          // +0x1C
    void *stack;          // +0x20 Free()d by ThreadExit
    void (*onExit)(void); // +0x24 if set, ThreadExit calls it instead
};

s32 CreateThread(struct Thread *thread, ...);
void ThreadExit(void);
void KillThread(struct Thread *thread);
void WaitFrame(void);
void WaitEvent(u32 event);
bool32 IsAnyThreadWaitingOn(u32 event);
void SignalEvent(u32 event);
bool32 IsThreadInList(struct Thread *thread);
struct Thread *GetCurrentThread(void);

#endif // GUARD_THREAD_H
