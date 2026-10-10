#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gSpawnerThreads;
extern struct Thread *gUnknownThreadPtr_030063CC;
extern struct Thread *gUnknownThreadPtr_030063D0;
extern struct Thread *gUnknownThreadPtr_030063D4;
extern struct Thread *gUnknownThreadPtr_030063DC;
extern struct Thread *gUnknownThreadPtr_030063E0;
extern struct Thread *gUnknownThreadPtr_030063E4;
extern struct Thread *gUnknownThreadPtr_030063E8;
extern struct Thread *gUnknownThreadPtr_030063EC;
extern struct Thread *gUnknownThreadPtr_030063F0;
extern struct Thread *gUnknownThreadPtr_030063F4;
extern struct Thread *gUnknownThreadPtr_030063F8;
extern struct Thread *gUnknownThreadPtr_030063FC;
extern struct Thread *gUnknownThreadPtr_03006400;
extern struct Thread *gUnknownThreadPtr_03006404;
extern struct Thread *gUnknownThreadPtr_03006408;
extern struct Thread *gUnknownThreadPtr_0300640C;
extern struct Thread *gUnknownThreadPtr_03006410;
extern struct Thread *gUnknownThreadPtr_03006414;
extern void *gUnknown_030063D8;

// Frees the area's thread slots (allocated elsewhere) and gUnknown_030063D8.
void sub_080187E8(void)
{
    Free(gUnknown_030063D8);
    Free(gSpawnerThreads);
    Free(gUnknownThreadPtr_0300640C);
    Free(gUnknownThreadPtr_03006410);
    Free(gUnknownThreadPtr_03006404);
    Free(gUnknownThreadPtr_03006408);
    Free(gUnknownThreadPtr_030063D0);
    Free(gUnknownThreadPtr_030063F4);
    Free(gUnknownThreadPtr_030063F0);
    Free(gUnknownThreadPtr_030063FC);
    Free(gUnknownThreadPtr_030063DC);
    Free(gUnknownThreadPtr_030063E0);
    Free(gUnknownThreadPtr_030063CC);
    Free(gUnknownThreadPtr_030063F8);
    Free(gUnknownThreadPtr_030063E8);
    Free(gUnknownThreadPtr_030063D4);
    Free(gUnknownThreadPtr_03006414);
    Free(gUnknownThreadPtr_030063EC);
    Free(gUnknownThreadPtr_030063E4);
    Free(gUnknownThreadPtr_03006400);
    gUnknown_030063D8 = NULL;
    gSpawnerThreads = NULL;
    gUnknownThreadPtr_0300640C = NULL;
    gUnknownThreadPtr_03006410 = NULL;
    gUnknownThreadPtr_03006404 = NULL;
    gUnknownThreadPtr_03006408 = NULL;
    gUnknownThreadPtr_030063D0 = NULL;
    gUnknownThreadPtr_030063F4 = NULL;
    gUnknownThreadPtr_030063F0 = NULL;
    gUnknownThreadPtr_030063FC = NULL;
    gUnknownThreadPtr_030063DC = NULL;
    gUnknownThreadPtr_030063E0 = NULL;
    gUnknownThreadPtr_030063CC = NULL;
    gUnknownThreadPtr_030063F8 = NULL;
    gUnknownThreadPtr_030063E8 = NULL;
    gUnknownThreadPtr_030063D4 = NULL;
    gUnknownThreadPtr_03006414 = NULL;
    gUnknownThreadPtr_030063EC = NULL;
    gUnknownThreadPtr_030063E4 = NULL;
    gUnknownThreadPtr_03006400 = NULL;
}
