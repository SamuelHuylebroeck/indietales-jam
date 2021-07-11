/// @description Activate speed boost

speed_boost_state = SPEED_BOOST_STATE.ACTIVE

max_walk_speed_pps *= 2
max_walk_speed = max_walk_speed_pps / game_get_speed(gamespeed_fps)

image_speed *= 2

// Deactivate speed boost after X seconds
alarm[1] = speed_boost_duration * game_get_speed(gamespeed_fps)