/// @description Deactivate speed boost

speed_boost_state = SPEED_BOOST_STATE.COOLDOWN

max_walk_speed_pps /= 2
max_walk_speed = max_walk_speed_pps / game_get_speed(gamespeed_fps)

image_speed /= 2

// After X seconds cooldown, make the speed boost available again
alarm[2] = speed_boost_cooldown * game_get_speed(gamespeed_fps)