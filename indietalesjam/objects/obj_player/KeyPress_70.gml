/// @description Drop carrying resource behind you
// You can write your code in this editor
var drop_distance = 32

if (resource_carrying){
	var dropoff_dir = direction
	var player = self
	resource_carrying = false
	var to_drop = resource
	resource = noone
	with(to_drop){
		x = player.x + lengthdir_x(drop_distance, dropoff_dir)
		y = player.y + lengthdir_y(drop_distance, dropoff_dir)
		state = RESOURCE_STATE.ON_FLOOR
		carrier = noone
		
		
	}

}