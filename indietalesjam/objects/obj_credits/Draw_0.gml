/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)

var old_halign = draw_get_halign() 
var old_font = draw_get_font()

var line_spacing = 15

draw_set_font(font_credits)
draw_set_halign(fa_center)
draw_text(x,y, "Made for the Indietales Gamejam in July 2021")
draw_text(x,y+line_spacing, "Theme: One Room")
draw_text(x,y+2*line_spacing, "By")
draw_text(x, y+3*line_spacing, "Michiel Van Gendt")
draw_text(x,y+4*line_spacing, "Samuel Huylebroeck")
draw_text(x,y+6*line_spacing, "Special thanks to")
draw_text(x,y+7*line_spacing, "Kasra Tabrizi for the helping us brainstorm the theme")
draw_text(x,y+8*line_spacing, "Techwolf for allowing us to jam in the office space")


draw_set_halign(old_halign)
draw_set_font(old_font)