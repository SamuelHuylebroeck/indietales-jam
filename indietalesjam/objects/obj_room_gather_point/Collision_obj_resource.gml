/// @description Insert description here
// You can write your code in this editor

var resource = other

controlling_room.current_growth_progress += resource.dropoff_progress

if (resource.carrier != noone) {
	resource.carrier.resource_carrying = false
	resource.carrier.resource = noone
}

with (resource) {
	instance_destroy()
}