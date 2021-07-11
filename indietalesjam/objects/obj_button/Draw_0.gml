/// @description Insert description here
// You can write your code in this editor
var old_color = draw_get_color()
draw_set_color(c_black)
draw_rectangle(x, y, x+sprite_width, y+sprite_height, false)
draw_self()

var old_halign = draw_get_halign()
var old_valign = draw_get_valign()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_text(x+sprite_width/2, y+sprite_height/2, button_text);
draw_set_halign(old_halign)
draw_set_valign(old_valign)
draw_set_color(old_color)