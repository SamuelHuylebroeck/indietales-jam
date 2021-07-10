// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_listener(){


}


function play_sfx_global(sfx){
	//Play sound
	if(sfx != -1)
	{
		audio_sound_gain(sfx,global.sfx_gain_base*global.sound_effect_scale*global.sound_master_scale,0)
		audio_play_sound(sfx,global.sfx_priority,false)
	}
}