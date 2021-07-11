// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function lose_game(){
	// Announce to player they have lost
	show_debug_message("Game lost")
	// Play sound effect
	room_goto(room_game_end_lost)
}


function win_game()
{
	// Announce to player they have won
	show_debug_message("Game won")
	 // Play sound effect
	room_goto(room_game_end_won)
}
