/// @description Insert description here
// You can write your code in this editor
var ds_nearby_resources = ds_list_create()

collision_rectangle_list(x-spawn_radius, y-spawn_radius, x+spawn_radius, y+spawn_radius, obj_resource, false, true, ds_nearby_resources, false)

if (ds_list_size(ds_nearby_resources) < max_resources) {
	spawn_resource()	
}

ds_list_destroy(ds_nearby_resources)
alarm[0] = spawn_interval * game_get_speed(gamespeed_fps)