/// @description Insert description here
// You can write your code in this editor

var resource = other
var sfx_index = max(0,irandom(array_length(drop_off_sound_array)-1))
var sfx = drop_off_sound_array[sfx_index]
play_sfx_global(sfx)
controlling_room.current_growth_progress += resource.dropoff_progress

if (resource.dropoff_hindrance >=0){
	with (controlling_room){
		room_shrink(resource.dropoff_hindrance)
	}
}

if (resource.carrier != noone) {
	resource.carrier.resource_carrying = false
	resource.carrier.resource = noone
}

with (resource) {
	
	part_particles_create(global.particle_system, x,y,global.part_void,5);
	instance_destroy()
}