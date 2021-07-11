/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
var announcement = instance_create_layer(x,y,"Instances",obj_announcer)
var trigger = self
with (announcement){
	show_debug_message(string(global.current_warning_index))
	show_debug_message(trigger.warning_text_array[global.current_warning_index])
	show_debug_message(trigger.warning_array[global.current_warning_index])
	announcement_text= trigger.warning_text_array[global.current_warning_index]
	announcement_sfx = trigger.warning_array[global.current_warning_index]
	global.current_warning_index = min(global.current_warning_index+1, global.max_warning_index-1)
	show_debug_message(string(global.current_warning_index))
}

instance_destroy()