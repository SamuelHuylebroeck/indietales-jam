// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_room_progress(top_offset, left_offset,bar_height, current_radius, max_radius){
	var old_color = draw_get_color()
	//Get viewport width and height
	var vp_w = view_get_wport(view_current)
	var vp_h = view_get_hport(view_current)
	
	var bar_width = 6*vp_w/8
	var bar_progress = current_radius/max_radius * bar_width
	
	//Draw progress
	draw_set_color(PARTICLE_VOID_DARK)
	draw_rectangle(vp_w/8, top_offset, 7*vp_w/8, top_offset+bar_height, false  )
	//Draw wooden board sprites
	draw_set_color(PARTICLE_VOID_BRIGHT)
	draw_rectangle(vp_w/8, top_offset, vp_w/8+bar_progress, top_offset+bar_height, false  )
	draw_sprite(spr_resource_plank, 0, vp_w/8+bar_progress, top_offset + bar_height/2)
	//Draw void gate at the end
	
	draw_set_color(old_color)


}