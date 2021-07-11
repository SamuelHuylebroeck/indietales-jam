if(state == TRAP_STATE.ACTIVATING){
	if ( image_index + (sprite_get_speed(sprite_index)/game_get_speed(gamespeed_fps)) >= sprite_active_start_index )
	{
		// Schedule trap cooldown
		alarm[1] = trap_active_duration * game_get_speed(gamespeed_fps)
		state = TRAP_STATE.ACTIVE
	}	
}

if (state == TRAP_STATE.ACTIVE){
	if ( image_index + (sprite_get_speed(sprite_index)/game_get_speed(gamespeed_fps)) > sprite_active_end_index )
	{
		image_index = sprite_active_start_index
	}
}