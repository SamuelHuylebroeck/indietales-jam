// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_free(){
	
	if(input_magnitude !=0){
		player_animate_move(input_direction)
		direction = input_direction
	}else{
		player_animate_idle(direction)
	}
	
	//Movement
	h_speed = lengthdir_x(input_magnitude * max_walk_speed, input_direction);
	v_speed = lengthdir_y(input_magnitude * max_walk_speed, input_direction);
	
	if (blink_on) {
		h_speed += lengthdir_x(blink_max_distance, direction);
		v_speed += lengthdir_y(blink_max_distance, direction);
		blink_on = false
		
		part_particles_create(global.particle_system, x, y+16, global.part_void, 10);
		part_particles_create(global.particle_system, x+h_speed, y+16+v_speed, global.part_void, 10);
	}
	
	scr_player_collision();
	
	if(speed_boost_state == SPEED_BOOST_STATE.ACTIVE){
		part_particles_create(global.particle_system, x-5,y+16,global.part_sprint,1);
		part_particles_create(global.particle_system, x+5,y+16,global.part_sprint,1);
	
	}
	
	if(slow_debuff_active){
		part_particles_create(global.particle_system, x, y+10, global.part_void, 2)
	}

}