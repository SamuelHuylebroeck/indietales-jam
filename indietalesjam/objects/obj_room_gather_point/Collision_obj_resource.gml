/// @description Insert description here
// You can write your code in this editor

var resource = other

var sfx_index, sfx
if (resource.dropoff_hindrance >0){
	if(global.first_hindrance_dropped_off){
		sfx_index = max(0,irandom(array_length(drop_off_sound_array_hindrances)-1))
		sfx = drop_off_sound_array_hindrances[sfx_index]
	
	}else{
		sfx = snd_dropoff_hindrance_first
		global.first_hindrance_dropped_off = true
	}

}else{
	sfx_index = max(0,irandom(array_length(drop_off_sound_array)-1))
	sfx = drop_off_sound_array[sfx_index]

}

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