#include "global.h"
#include "heap.h"
#include "thread.h"
#include "m4a.h"
#include "sound.h"

extern u32 gSoundVSyncEnabled;
extern u32 gMusicEnabled;
extern struct Thread gSoundThread;

void DisplayOn(void);
void sub_0800ED08(void);

// Started once at boot. Turns sound on, then keeps calling sub_0800ED08
// every frame. (Name is a guess; what sub_0800ED08 does is unknown.)
void SoundThread(void)
{
    gSoundVSyncEnabled = FALSE;
    gMusicEnabled = FALSE;
    DisplayOn();
    m4aMPlayAllStop();
    EnableSoundVSync();
    while (1)
    {
        sub_0800ED08();
        WaitFrame();
    }
}

// SoundThread's onExit.
void ShutdownSound(void)
{
    m4aMPlayAllStop();
    DisableSoundVSync();
}

void EnableSoundVSync(void)
{
    if (!gSoundVSyncEnabled)
    {
        gSoundVSyncEnabled = TRUE;
        m4aSoundVSyncOn();
    }
}

void DisableSoundVSync(void)
{
    if (gSoundVSyncEnabled)
    {
        gSoundVSyncEnabled = FALSE;
        m4aSoundVSyncOff();
    }
}

void FadeOutAllMusicPlayers(u16 speed)
{
    m4aMPlayFadeOut(&gMPlayInfo_BGM, speed);
    m4aMPlayFadeOut(&gMPlayInfo_SE1, speed);
    m4aMPlayFadeOut(&gMPlayInfo_SE2, speed);
    m4aMPlayFadeOut(&gMPlayInfo_SE3, speed);
}

// Music only plays while gMusicEnabled is set (SetMusicEnabled).
void PlayBGM(u16 song)
{
    if (gMusicEnabled)
        m4aSongNumStart(song);
}

void PlayBGMOrChange(u16 song)
{
    m4aSongNumStartOrChange(song);
}

void PlayBGMOrContinue(u16 song)
{
    m4aSongNumStartOrContinue(song);
}

void StopBGM(u16 song)
{
    m4aSongNumStop(song);
}

void ContinueBGM(u16 song)
{
    m4aSongNumContinue(song);
}

void PlaySE(u16 song)
{
    m4aSongNumStart(song);
}

void PlaySEOrChange(u16 song)
{
    m4aSongNumStartOrChange(song);
}

void PlaySEOrContinue(u16 song)
{
    m4aSongNumStartOrContinue(song);
}

void StopSE(u16 song)
{
    m4aSongNumStop(song);
}

void ContinueSE(u16 song)
{
    m4aSongNumContinue(song);
}

void SndMPlayStart(struct MusicPlayerInfo *mplayInfo, struct SongHeader *songHeader)
{
    MPlayStart(mplayInfo, songHeader);
}

void SndMPlayStop(struct MusicPlayerInfo *mplayInfo)
{
    m4aMPlayStop(mplayInfo);
}

void SndMPlayAllStop(void)
{
    m4aMPlayAllStop();
}

void SndMPlayAllContinue(void)
{
    m4aMPlayAllContinue();
}

void SndMPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed)
{
    m4aMPlayFadeOut(mplayInfo, speed);
}

void SndMPlayTempoControl(struct MusicPlayerInfo *mplayInfo, u16 tempo)
{
    m4aMPlayTempoControl(mplayInfo, tempo);
}

void SndMPlayVolumeControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u16 volume)
{
    m4aMPlayVolumeControl(mplayInfo, trackBits, volume);
}

void SndMPlayPitchControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s16 pitch)
{
    m4aMPlayPitchControl(mplayInfo, trackBits, pitch);
}

void SndMPlayPanpotControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s8 pan)
{
    m4aMPlayPanpotControl(mplayInfo, trackBits, pan);
}

void SndMPlayModDepthSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 modDepth)
{
    m4aMPlayModDepthSet(mplayInfo, trackBits, modDepth);
}

void SndMPlayLFOSpeedSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 lfoSpeed)
{
    m4aMPlayLFOSpeedSet(mplayInfo, trackBits, lfoSpeed);
}

void SndMPlayImmInit(struct MusicPlayerInfo *mplayInfo)
{
    m4aMPlayImmInit(mplayInfo);
}

void sub_0803F3DC(void)
{
}

void sub_0803F3E0(void)
{
    m4aSongNumStart(98);
}

void SetMusicEnabled(u8 enabled)
{
    gMusicEnabled = enabled;
    if (!enabled)
        m4aMPlayStop(&gMPlayInfo_BGM);
}

void StartSoundThread(void)
{
    u8 *stack = Alloc(0x400);

    gSoundThread.entry = SoundThread;
    gSoundThread.sp = stack + 0x3FC;
    gSoundThread.stack = stack;
    gSoundThread.priority = 1000;
    gSoundThread.prev = NULL;
    gSoundThread.next = NULL;
    gSoundThread.onExit = ShutdownSound;
    CreateThread(&gSoundThread, 0);
}

void FadeOutBGM(u16 speed)
{
    m4aMPlayFadeOut(&gMPlayInfo_BGM, speed);
}
