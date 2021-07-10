/// @description Make trap cooldown

// State goes from TRIGGERED to COOLDOWN
state = TRAP_STATE.COOLDOWN
image_index = 0

// Schedule trap inactive
alarm[2] = cooldown_seconds * game_get_speed(gamespeed_fps)

