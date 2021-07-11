// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroy_carrying_resource(player){
	
	if (player.resource_carrying) {
		player.flash +=1
		play_sfx_global(sfx_trap_hit)
		var resource = player.resource
		player.resource = noone
		player.resource_carrying = false
		with (resource) {
			part_particles_create(global.particle_system, x,y,global.part_white,3);
			instance_destroy()
		}
	}

}


function apply_slowdown_debuff(player){
	
	with(player){
		if (not slow_debuff_active) {
			slow_debuff_active = true
			flash +=0.5
			slow_factor *= 0.5
			max_walk_speed *= 0.5
			alarm[3] = 3 * game_get_speed(gamespeed_fps)
		
		}
		
	
	}
	
}