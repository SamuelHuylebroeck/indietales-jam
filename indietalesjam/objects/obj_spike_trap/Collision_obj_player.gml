if (state == TRAP_STATE.INACTIVE) {
	state = TRAP_STATE.ACTIVE
	alarm[0] = trigger_seconds * game_get_speed(gamespeed_fps)
}

if ((state == TRAP_STATE.TRIGGERED) and (not other.hit_by_trap)) {
	other.hit_by_trap = true
	show_debug_message("Player got hit by trap")
}
