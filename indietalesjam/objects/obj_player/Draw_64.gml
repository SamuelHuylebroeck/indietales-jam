/// @description Show player boosts

if (speed_boost_state == SPEED_BOOST_STATE.AVAILABLE) {
	var rect_color = c_green
} else if (speed_boost_state == SPEED_BOOST_STATE.ACTIVE) {
	var rect_color = c_red
} else if (speed_boost_state == SPEED_BOOST_STATE.COOLDOWN) {
	var rect_color = c_gray
}

var width = view_get_wport(view_current)
var height = view_get_hport(view_current)

draw_roundrect_colour_ext(width-220, height-70, width-30, height-30, 20, 20, c_black, c_black, false);

draw_text_transformed(width-140, height-60, "SPEED BOOST", 0.6, 0.6, 0)

draw_circle_colour(width-50,height-50, 10, rect_color, rect_color, false);