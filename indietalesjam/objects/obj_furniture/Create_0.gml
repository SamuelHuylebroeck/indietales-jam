/// @description Insert description here
// You can write your code in this editor
possible_sprites = [spr_room_bed, spr_room_chair, spr_room_stool, spr_room_table]
var draw = irandom(array_length(possible_sprites)-1)

sprite_index = possible_sprites[draw]
alarm[0] = decay_time * game_get_speed(gamespeed_fps)