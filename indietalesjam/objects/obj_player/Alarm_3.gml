/// @description Activate blink

blink_on = true
blink_boost_state = BLINK_BOOST_STATE.COOLDOWN
play_sfx_global(snd_blink)

alarm[4] = blink_boost_cooldown * game_get_speed(gamespeed_fps)