// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function player_animate_move(direction){
	var cardinal_direction = round(direction/90)
			//movement
	switch(cardinal_direction){
		case 0:
		//left to right
			sprite_index = resource_carrying ? spr_pc_move_side_ltr_c : spr_pc_move_side_ltr
			break;
		case 1:
		//bottom to top
			sprite_index = resource_carrying ? spr_pc_move_btt_c : spr_pc_move_btt
			break;
		case 2:
		//right to left
			sprite_index = resource_carrying ? spr_pc_move_side_rtl_c : spr_pc_move_side_rtl
			break;
		case 3:
		//top to bottom
			sprite_index = resource_carrying ? spr_pc_move_ttb_c : spr_pc_move_ttb
			break;
	}


}


function player_animate_idle(direction){
	var cardinal_direction = round(direction/90)
			//movement
	switch(cardinal_direction){
		case 0:
		//left to right
			sprite_index = resource_carrying ? spr_pc_idle_ltr_c : spr_pc_idle_ltr
			break;
		case 1:
		//bottom to top
			sprite_index = resource_carrying ? spr_pc_idle_btt_c : spr_pc_idle_btt
			break;
		case 2:
		//right to left
			sprite_index = resource_carrying ? spr_pc_idle_rtl_c : spr_pc_idle_rtl
			break;
		case 3:
		//top to bottom
			sprite_index = resource_carrying ? spr_pc_idle_ttb_c : spr_pc_idle_ttb
			break;
	}

}