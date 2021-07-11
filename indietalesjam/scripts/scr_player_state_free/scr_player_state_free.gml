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
		h_speed += lengthdir_x(max_walk_speed*50, direction);
		v_speed += lengthdir_y(max_walk_speed*50, direction);
		blink_on = false
	}
	
	scr_player_collision();
	
	if(speed_boost_state == SPEED_BOOST_STATE.ACTIVE){
		part_particles_create(global.particle_system, x-5,y+16,global.part_sprint,1);
		part_particles_create(global.particle_system, x+5,y+16,global.part_sprint,1);
	
	}

}