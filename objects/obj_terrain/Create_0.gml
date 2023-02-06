/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var gui_layer_id = layer_get_id("instances_gui");
layer_set_visible(gui_layer_id,true);




collision_grid_width = 2048;
collision_grid_height = 2048;

grid_width =2048;// tilemap_get_width(tm_id);
grid_height =2048;// tilemap_get_height(tm_id);

grid_width_half = grid_width>>1
grid_height_half = grid_height>>1;
collision_grid_width_half = collision_grid_width >>1;
collision_grid_height_half = collision_grid_height >>1;

cell_width = 32;
cell_height = 32;


grid_data  =  array_create_3d(grid_width,grid_height,20,0);
collision_grid_data = array_create_2d(collision_grid_width,collision_grid_height,0);
matrix_identity = matrix_build_identity();


draw_list = ds_list_create();
static_draw = ds_map_create();

asset_forge_import(model_file,model_object);

for(var key=ds_map_find_first(static_draw);key!=undefined;key=ds_map_find_next(static_draw,key)){
	var vbuff = static_draw[? key];
	vertex_end(vbuff);
	vertex_freeze(vbuff);
	ds_list_add(draw_list,{
		vbuffer:vbuff,
		matrix:matrix_identity,
		texture:key
	});
}
room_width=1;
room_height=1;

skybox_vbuffer	= create_skybox(0xFFD47F,0x888888);
skybox_matrix	= matrix_build(0,0,0,0,0,0,grid_width_half,grid_height_half,grid_width_half);
skybox_texture	= -1;//sprite_get_texture(spr_skybox,0);