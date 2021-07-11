if (state == TRAP_STATE.ARMED) {
	state = TRAP_STATE.TRIGGERED
	alarm[0] = trap_trigger_delay * game_get_speed(gamespeed_fps)
}

if (state == TRAP_STATE.ACTIVE or state ==TRAP_STATE.ACTIVATING) {
	if (trap_player_effect_script != -1){
		script_execute(trap_player_effect_script, other)
	
	}
}