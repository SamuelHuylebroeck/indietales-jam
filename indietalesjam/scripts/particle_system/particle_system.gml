// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_particle_system(){
	
	//Basic void
	var part_v=part_type_create()
	part_type_shape(part_v, pt_shape_pixel);
	part_type_life(part_v, 10,20);
	part_type_size(part_v, 2 ,5 ,0,0)
	part_type_speed(part_v, 1,2,0,0)
	part_type_direction(part_v, 0,360,0,0)
	part_type_color2(part_v, PARTICLE_VOID_BRIGHT, PARTICLE_VOID_DARK);
	global.part_void=part_v
	
	//Basic white
	var part_w = part_type_create()
	part_type_shape(part_w, pt_shape_pixel);
	part_type_life(part_w, 10,20);
	part_type_size(part_w, 1 ,3 ,0,0)
	part_type_speed(part_w, 1,1.5,0,0)
	part_type_direction(part_w, 0,360,0,0)
	part_type_alpha2(part_w,1,0);
	part_type_color1(part_w, c_white)
	global.part_white = part_w
	
	//basic green
	var part_g=part_type_create()
	part_type_shape(part_g, pt_shape_pixel);
	part_type_life(part_g, 10,20);
	part_type_alpha2(part_g,1,0);
	part_type_color2(part_g, PARTICLE_GREEN_BRIGHT, PARTICLE_GREEN_DARK);
	global.part_green=part_g

}