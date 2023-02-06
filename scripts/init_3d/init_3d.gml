// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_3d(){
	
	gpu_set_tex_mip_filter(tf_anisotropic); 
	gpu_set_tex_filter(true);
	
	vertex_format_begin();
	vertex_format_add_position_3d();
	vertex_format_add_normal();
	vertex_format_add_texcoord();
	vertex_format_add_color();
	global.vertex_format_obj_with_normal = vertex_format_end();

	vertex_format_begin();
	vertex_format_add_position_3d();
	vertex_format_add_texcoord();
	vertex_format_add_color();
	global.vertex_format_obj_without_normal = vertex_format_end();

	gpu_set_ztestenable(true);
	gpu_set_zwriteenable(true);
	//gpu_set_alphatestenable(false);
	gpu_set_cullmode(cull_noculling);
	//draw_set_lighting(true);
	
	
	setup_light();

}