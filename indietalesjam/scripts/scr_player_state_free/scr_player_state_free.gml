// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_free(){
	//Movement
	h_speed = lengthdir_x(input_magnitude * max_walk_speed, input_direction);
	v_speed = lengthdir_y(input_magnitude * max_walk_speed, input_direction);
	
	
	scr_player_collision();

}