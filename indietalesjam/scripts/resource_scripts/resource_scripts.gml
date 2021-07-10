// Script assets have changed for v2.3.0 see
function spawn_resource(){
	var empty_pos_found = false;
	var i = 0;
	var rand_x = 0
	var rand_y = 0
	while (not empty_pos_found and i < 50){
		rand_x = irandom_range(-spawn_radius, spawn_radius)
		rand_y = irandom_range(-spawn_radius, spawn_radius)
		empty_pos_found = not tilemap_get_at_pixel(tile_collision_map, x+ rand_x, y+rand_y)
		i++
	}
	instance_create_layer(x+ rand_x, y+ rand_y, "Instances", resource_type)
}