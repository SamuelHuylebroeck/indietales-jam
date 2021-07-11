/// @description Insert description here
// You can write your code in this editor
event_inherited()
//Configuration
default_state = PLAYER_STATE.FREE

state_map[PLAYER_STATE.FREE] = scr_player_state_free

max_walk_speed_pps = 128

depth = 200
image_speed = 1

speed_boost_state = SPEED_BOOST_STATE.LOCKED
speed_boost_duration = 4
speed_boost_cooldown = 8

blink_boost_state = BLINK_BOOST_STATE.LOCKED
blink_on = false
blink_boost_cooldown = 5
blink_max_distance = 100


//Internals
h_speed = 0
v_speed = 0

state = default_state
collision_map = layer_tilemap_get_id(layer_get_id("Collision"))
max_walk_speed = max_walk_speed_pps / game_get_speed(gamespeed_fps)
resource_carrying = false
resource = noone

slow_debuff_active = false
slow_factor = 1