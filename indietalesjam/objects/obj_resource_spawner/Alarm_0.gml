/// @description Insert description here
// You can write your code in this editor
var ds_nearby_resources = ds_list_create()

collision_rectangle_list(x-spawn_radius, y-spawn_radius, x+spawn_radius, y+spawn_radius, obj_resource, false, true, ds_nearby_resources, false)

if (ds_list_size(ds_nearby_resources) < max_resources) {
	rand_x = irandom_range(-spawn_radius, spawn_radius)
	rand_y = irandom_range(-spawn_radius, spawn_radius)
	instance_create_layer(x+ rand_x, y+ rand_y, "Instances", resource_type)
}

ds_list_destroy(ds_nearby_resources)
alarm[0] = spawn_interval * game_get_speed(gamespeed_fps)