/// @description State goes from ACTIVE to INACTIVE
state = TRAP_STATE.INACTIVE
image_index = 0
image_speed = 0

// Schedule trap to become ARMED again 
alarm[2] = trap_cooldown * game_get_speed(gamespeed_fps)

