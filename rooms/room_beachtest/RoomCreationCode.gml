scr_getchar(6)
if (!snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = snd_init("hometown_day.ogg")
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1)
}
