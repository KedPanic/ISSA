// PlayMusic(sound, fade)
assert(g_musicManager.fade_state == g_musicManager.FADE_NONE, "music manager can't play a new music when we are cross-fading");

// play the new music.
if(g_musicManager.music == 0)
{
    g_musicManager.music = argument[0];
    audio_play_sound(g_musicManager.music, 100, true);
    
    if(argument_count > 1)
    {
        audio_sound_gain(g_musicManager.music, 1, argument[1]);
    }
    else
    {
        audio_sound_gain(g_musicManager.music, 1, 0);
    }
}
// or cross-fade.
else
{
    g_musicManager.next_music = argument[0];
    
    if(argument_count > 1)
    {
        g_musicManager.fade = argument[1];
    }
}
