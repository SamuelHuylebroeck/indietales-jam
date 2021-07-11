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
	var trap = self
	with(player){
		if (not slow_debuff_active) {
			play_sfx_global(trap.sfx_trap_hit)
			slow_debuff_active = true
			flash +=0.5
			slow_factor *= 0.33
			max_walk_speed *= 0.33
			alarm[5] = 3 * game_get_speed(gamespeed_fps)
			
			//Put abilities on cooldown
			if (speed_boost_state != SPEED_BOOST_STATE.LOCKED and speed_boost_state != SPEED_BOOST_STATE.ACTIVE){
				speed_boost_state = SPEED_BOOST_STATE.COOLDOWN
				alarm[2] = speed_boost_cooldown * game_get_speed(gamespeed_fps)
			}
			
			if( blink_boost_state != BLINK_BOOST_STATE.LOCKED){
				blink_boost_state = BLINK_BOOST_STATE.COOLDOWN
				alarm[4] = blink_boost_cooldown * game_get_speed(gamespeed_fps)
			}
		}else{
			play_sfx_global(trap.sfx_trap_hit)
			alarm[5] = 3 * game_get_speed(gamespeed_fps)
		}
	}	
}