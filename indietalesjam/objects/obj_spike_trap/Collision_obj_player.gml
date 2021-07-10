if (state == TRAP_STATE.INACTIVE) {
	state = TRAP_STATE.ACTIVE
	alarm[0] = trigger_seconds * game_get_speed(gamespeed_fps)
}

if ((state == TRAP_STATE.TRIGGERED) and (other.resource_carrying)) {
	if (other.resource_carrying) {
		var resource = other.resource
		other.resource = noone
		other.resource_carrying = false
		with (resource) {
			instance_destroy()
		}
	}
}
