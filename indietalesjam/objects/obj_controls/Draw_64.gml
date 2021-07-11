/// @description Insert description here
// You can write your code in this editor
var old_font = draw_get_font()
var old_color = draw_get_color()
var old_halign = draw_get_halign()
var line_spacing = 15
var pos_x = view_get_wport(view_current) - 300
var pos_y = 200
draw_set_font(font_credits)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_text(pos_x,pos_y,"Controls")
draw_text(pos_x,pos_y+1*line_spacing, "Movement: ")
draw_text(pos_x,pos_y+2*line_spacing, "Speed Boost: ")
draw_text(pos_x,pos_y+3*line_spacing, "Blink: ")
draw_text(pos_x,pos_y+4*line_spacing, "Drop: ")
draw_text(pos_x,pos_y+6*line_spacing, "Hide Controls: ")
draw_text(pos_x,pos_y+7*line_spacing, "Switch between")
draw_text(pos_x,pos_y+8*line_spacing, "QWERTY and AZERTY: ")

var x_spacing = 150
draw_set_color(c_red)
var qwerty_text = global.azerty ? "ZQSD" : "WASD"
draw_text(pos_x+x_spacing,pos_y+1*line_spacing, "Arrow keys or " +qwerty_text)
draw_text(pos_x+x_spacing,pos_y+2*line_spacing, "Spacebar ")
draw_text(pos_x+x_spacing,pos_y+3*line_spacing, "B")
draw_text(pos_x+x_spacing,pos_y+4*line_spacing, "F")
draw_text(pos_x+x_spacing,pos_y+6*line_spacing, "H")
draw_text(pos_x+1.5*x_spacing,pos_y+8*line_spacing, "M")

draw_set_font(old_font)
draw_set_color(old_color)
draw_set_halign(old_halign)