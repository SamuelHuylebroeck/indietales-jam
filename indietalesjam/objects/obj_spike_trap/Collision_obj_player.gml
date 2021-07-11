if (state == TRAP_STATE.INACTIVE) {
	state = TRAP_STATE.ACTIVE
	alarm[0] = trigger_seconds * game_get_speed(gamespeed_fps)
}

if ((state == TRAP_STATE.TRIGGERED) and (other.resource_carrying)) {
	hit_player_with_trap(other)
}



function hit_player_with_trap(player){
	player.flash +=1
	play_sfx_global(sfx_trap_hit)
	if (player.resource_carrying) {
		var resource = player.resource
		player.resource = noone
		player.resource_carrying = false
		with (resource) {
			part_particles_create(global.particle_system, x,y,global.part_white,3);
			instance_destroy()
		}
	}

}