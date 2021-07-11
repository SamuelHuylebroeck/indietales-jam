/// @description Show player boosts

var width = view_get_wport(view_current)
var height = view_get_hport(view_current)

// Speed boost
if (speed_boost_state == SPEED_BOOST_STATE.AVAILABLE) {
	var sprint_color = c_green
} else if (speed_boost_state == SPEED_BOOST_STATE.ACTIVE) {
	var sprint_color = c_red
} else if (speed_boost_state == SPEED_BOOST_STATE.COOLDOWN) or (speed_boost_state == SPEED_BOOST_STATE.LOCKED) {
	var sprint_color = c_gray
}

draw_roundrect_colour_ext(width-220, height-70, width-30, height-30, 20, 20, c_black, c_black, false);
draw_text_transformed(width-140, height-60, "SPEED BOOST", 0.6, 0.6, 0)
draw_circle_colour(width-50, height-50, 10, sprint_color, sprint_color, false);

// Blink
if (blink_boost_state == BLINK_BOOST_STATE.AVAILABLE) {
	var blink_color = c_green
} else if (blink_boost_state == BLINK_BOOST_STATE.COOLDOWN) or (blink_boost_state == BLINK_BOOST_STATE.LOCKED) {
	var blink_color = c_gray
}

draw_roundrect_colour_ext(width-220, height-120, width-30, height-80, 20, 20, c_black, c_black, false);
draw_text_transformed(width-180, height-110, "BLINK", 0.6, 0.6, 0)
draw_circle_colour(width-50, height-100, 10, blink_color, blink_color, false);