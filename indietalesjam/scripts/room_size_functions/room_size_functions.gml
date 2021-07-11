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
	room_create_furniture()
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


function room_create_furniture(){
	var amount_to_create = floor(current_radius/10)+1
	show_debug_message(string(amount_to_create))
	
	for(var i=0;i<amount_to_create;i++){
		var jitter_x=irandom_range(-10,10)
		var jitter_y=irandom_range(-10,10)
		
		var alpha = random_range(0,360)
		var len = (current_radius-1) * 16 //tilesize
		
		var spawn_x = lengthdir_x(len, alpha)
		var spawn_y =lengthdir_y(len, alpha)
		
		var inst = instance_create_layer(x+spawn_x+jitter_x, y+ spawn_y+jitter_y,"Instances", obj_furniture)
		
	}


}