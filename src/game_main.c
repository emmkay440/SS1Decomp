#include "global.h"
#include "save.h"
#include "sound.h"
#include "thread.h"

extern u16 gLanguage;
extern u16 gUnknown_03003CA0;      // character advance
extern u32 gUnknown_03006878;

void sub_0800EC38(void);
void sub_0802177C(void);
void sub_08022A38(void);
void sub_0800EE58(void);
void sub_0800F174(void);
void sub_08001DF8(void);
void sub_08026AD0(void);
void sub_08022AB4(void);
void sub_080022BC(void);
void StartTitleMenu(void);
void sub_0800EC74(void);
void sub_080041E0(void);

// Entry of the main thread: sets everything up, starts the title menu and
// then clears the text layer and the draw list every frame.
void GameMain(void)
{
    gLanguage = 1;
    sub_0800EC38();
    sub_0802177C();
    sub_08022A38();
    sub_0800EE58();
    sub_0800F174();
    sub_08001DF8();
    sub_08026AD0();
    InitSaveFlash();
    sub_08022AB4();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    StartSoundThread();
    gUnknown_03006878 = 0;
    if (gLanguage == 0)
        gUnknown_03003CA0 = 13;
    else
        gUnknown_03003CA0 = 7;
    sub_080022BC();
    StartTitleMenu();
    WaitFrame();
    WaitFrame();
    for (;;)
    {
        WaitFrame();
        sub_0800EC74();
        sub_080041E0();
    }
}
