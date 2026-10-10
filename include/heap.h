#ifndef GUARD_HEAP_H
#define GUARD_HEAP_H

// A heap block header. The first word is the previous block's address with
// the "in use" flag in bit 31; code also reads it as a plain pointer while
// the flag is clear.
struct HeapBlock
{
    union
    {
        struct HeapBlock *prevPtr;
        struct
        {
            u32 prev:31;
            u32 used:1;
        } b;
    } u;
    struct HeapBlock *next;
    struct HeapBlock *freePrev;
    struct HeapBlock *freeNext;
};

struct Heap
{
    struct HeapBlock sentinel;   // free list head
    u32 start;
    u32 size;
};

extern struct Heap gHeap;

#define HEAP_SIZE 0x40000

void InitHeap(void);
void *Alloc(u32 size);
void Free(void *ptr);
void *sub_08001430(u32 size);

#endif // GUARD_HEAP_H
