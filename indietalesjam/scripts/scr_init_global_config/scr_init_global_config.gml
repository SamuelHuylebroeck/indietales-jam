// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_global_config(){
	global.azerty = true
	global.game_paused = false;
	apply_keybinds()
	
	global.sound_music_scale = 0.5;
	global.sound_effect_scale = 1;
	global.sound_master_scale = 1;

	global.sfx_priority = 1100;
	global.sfx_gain_base = 1;

}