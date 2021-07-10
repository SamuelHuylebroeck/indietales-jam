/// @description Insert description here
// You can write your code in this editor

current_radius = current_radius + 1

for(var i = -global.room_max_height/2; i < global.room_max_height/2; i++){
	for(var j = -global.room_max_width/2; j < global.room_max_width/2; j ++){
		if (i*i + j*j < current_radius*current_radius) {
			var inst = instance_create_layer(x+(i * sprite_get_width(spr_tile_room)),
											 y+(j * sprite_get_height(spr_tile_room)),
											 "Instances_Room", obj_tile_room)
		} else {
			var inst = noone
		}
		
		board[i+global.room_max_height/2, j+global.room_max_width/2] = inst;
	}
}