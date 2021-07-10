// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_expand(){
	var previous_radius = current_radius
	current_radius = current_radius+1
	
	if (current_radius >= global.room_size_loss_threshold){
		lose_game()
	}
	for(var i = -global.room_max_height/2; i < global.room_max_height/2; i++){
		for(var j = -global.room_max_width/2; j < global.room_max_width/2; j ++){
			if (i*i + j*j < current_radius*current_radius) and (i*i + j*j >= previous_radius*previous_radius) {
				var inst = instance_create_layer(x+(i * sprite_get_width(spr_tile_room)),
												 y+(j * sprite_get_height(spr_tile_room)),
												 "Instances_Room", obj_tile_room)
				board[i+global.room_max_height/2, j+global.room_max_width/2] = inst;
			}			
		}
	}
}

function room_shrink(shrink_amount){
	var previous_radius = current_radius
	current_radius = current_radius-shrink_amount
	
	if(current_radius <= 0){
		win_game()
	}
	
	
	for(var i = -global.room_max_height/2; i < global.room_max_height/2; i++){
		for(var j = -global.room_max_width/2; j < global.room_max_width/2; j ++){
			if (i*i + j*j >= current_radius*current_radius) and (i*i + j*j < previous_radius*previous_radius) {
				var inst = board[i+global.room_max_height/2, j+global.room_max_width/2];
				with (inst) {
					instance_destroy()
				}
			}			
		}
	}	
}
