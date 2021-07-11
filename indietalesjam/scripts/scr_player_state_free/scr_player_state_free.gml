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
	
	
	scr_player_collision();

}