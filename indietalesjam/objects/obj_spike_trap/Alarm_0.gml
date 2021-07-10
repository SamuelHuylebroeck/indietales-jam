/// @description Make trap trigger

// State goes from ACTIVE to TRIGGERED
state = TRAP_STATE.TRIGGERED
image_index = 1

// Schedule trap cooldown
alarm[1] = active_seconds * game_get_speed(gamespeed_fps)
