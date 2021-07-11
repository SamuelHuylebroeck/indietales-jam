/// @description Insert description here
// You can write your code in this editor
//Create dialogue for informing

var announcement = instance_create_layer(x,y,"Instances",obj_announcer)
var trigger = self
with (announcement){
	announcement_text=trigger.announcement_txt
	announcement_sfx = trigger.announcement_sfx
}

instance_destroy()