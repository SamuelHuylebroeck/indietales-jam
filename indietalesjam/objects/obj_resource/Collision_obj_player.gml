/// @description Insert description here
// You can write your code in this editor

if state == RESOURCE_STATE.ON_FLOOR and not other.resource_carrying {
	state = RESOURCE_STATE.CARRIED
	carrier = other
	other.resource_carrying = true
}
