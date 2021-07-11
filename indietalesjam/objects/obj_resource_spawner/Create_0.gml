/// @description Insert description here
// You can write your code in this editor

max_resources = 5
spawn_interval = 5

alarm[0] = spawn_interval * game_get_speed(gamespeed_fps)

tile_collision_map = layer_tilemap_get_id(layer_get_id("Collision"))