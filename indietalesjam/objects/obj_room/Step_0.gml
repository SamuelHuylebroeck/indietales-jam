/// @description Insert description here
// You can write your code in this editor

if current_growth_progress >= growth_progress_threshold {
	current_growth_progress = 0
	room_expand()
}

current_growth_progress = current_growth_progress + 1 / game_get_speed(gamespeed_fps)