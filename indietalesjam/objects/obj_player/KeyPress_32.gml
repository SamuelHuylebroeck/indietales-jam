/// @description Speed boost

if (speed_boost_state == SPEED_BOOST_STATE.AVAILABLE) {
	speed_boost_state = SPEED_BOOST_STATE.ACTIVE
	
	max_walk_speed *=2 

	image_speed *= 2

	// Deactivate speed boost after X seconds
	alarm[1] = speed_boost_duration * game_get_speed(gamespeed_fps)
}
