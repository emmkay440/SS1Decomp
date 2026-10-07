#ifndef GUARD_SOUND_H
#define GUARD_SOUND_H

// Game-side sound API (src/sound.c), thin wrappers around m4a.
// The BGM/SE split of the two wrapper sets is a guess: PlayBGM checks
// gMusicEnabled, and menu code calls PlaySE.

void SoundThread(void);
void StartSoundThread(void);
void ShutdownSound(void);
void EnableSoundVSync(void);
void DisableSoundVSync(void);
void FadeOutAllMusicPlayers(u16 speed);
void FadeOutBGM(u16 speed);
void SetMusicEnabled(u8 enabled);

void PlayBGM(u16 song);
void PlayBGMOrChange(u16 song);
void PlayBGMOrContinue(u16 song);
void StopBGM(u16 song);
void ContinueBGM(u16 song);
void PlaySE(u16 song);
void PlaySEOrChange(u16 song);
void PlaySEOrContinue(u16 song);
void StopSE(u16 song);
void ContinueSE(u16 song);

#endif // GUARD_SOUND_H
