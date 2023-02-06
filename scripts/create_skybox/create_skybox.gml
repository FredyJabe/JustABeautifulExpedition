// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_skybox(skycolor,groundcolor){
	var vbuffer = vertex_create_buffer();
	vertex_begin( vbuffer, global.vertex_format_obj_with_normal );
	
	
	#region triangle 1.1
	vertex_position_3d(vbuffer,-1,-1,-1); 
	vertex_normal(vbuffer,0,1,0);
	vertex_texcoord(vbuffer,0,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,1,-1,-1);
	vertex_normal(vbuffer,0,1,0);
	vertex_texcoord(vbuffer,0.25,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,-1,-1,1);
	vertex_normal(vbuffer,0,1,0);
	vertex_texcoord(vbuffer,0,0.5);
	vertex_color(vbuffer,groundcolor,1);
	#endregion
	
	#region triangle 1.2
	vertex_position_3d(vbuffer,1,-1,1);
	vertex_normal(vbuffer,0,1,0);
	vertex_texcoord(vbuffer,0.25,0.5);
	vertex_color(vbuffer,groundcolor,1);
	
	vertex_position_3d(vbuffer,1,-1,-1);
	vertex_normal(vbuffer,0,1,0);
	vertex_texcoord(vbuffer,0.25,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,-1,-1,1);
	vertex_normal(vbuffer,0,1,0);
	vertex_texcoord(vbuffer,0,0.5);
	vertex_color(vbuffer,groundcolor,1);
	#endregion

	#region triangle 2.1
	vertex_position_3d(vbuffer,1,-1,-1); 
	vertex_normal(vbuffer,-1,0,0);
	vertex_texcoord(vbuffer,0.25,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,1,1,-1);
	vertex_normal(vbuffer,-1,0,0);
	vertex_texcoord(vbuffer,0.5,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,1,-1,1);
	vertex_normal(vbuffer,-1,0,0);
	vertex_texcoord(vbuffer,0.25,0.5);
	vertex_color(vbuffer,groundcolor,1);
	#endregion
	
	#region triangle 2.2
	vertex_position_3d(vbuffer,1,1,1); 
	vertex_normal(vbuffer,-1,0,0);
	vertex_texcoord(vbuffer,0.5,0.5);
	vertex_color(vbuffer,groundcolor,1);
	
	vertex_position_3d(vbuffer,1,1,-1);
	vertex_normal(vbuffer,-1,0,0);
	vertex_texcoord(vbuffer,0.5,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,1,-1,1);
	vertex_normal(vbuffer,-1,0,0);
	vertex_texcoord(vbuffer,0.25,0.5);
	vertex_color(vbuffer,groundcolor,1);
	#endregion

	#region triangle 3.1
	vertex_position_3d(vbuffer,1,1,-1); 
	vertex_normal(vbuffer,0,-1,0);
	vertex_texcoord(vbuffer,0.5,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,-1,1,-1);
	vertex_normal(vbuffer,0,-1,0);
	vertex_texcoord(vbuffer,0.75,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,1,1,1);
	vertex_normal(vbuffer,0,-1,0);
	vertex_texcoord(vbuffer,0.5,0.5);
	vertex_color(vbuffer,groundcolor,1);
	#endregion
	
	#region triangle 3.2
	vertex_position_3d(vbuffer,-1,1,1);
	vertex_normal(vbuffer,0,-1,0);
	vertex_texcoord(vbuffer,0.75,0.5);
	vertex_color(vbuffer,groundcolor,1);
	
	vertex_position_3d(vbuffer,-1,1,-1);
	vertex_normal(vbuffer,0,-1,0);
	vertex_texcoord(vbuffer,0.75,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,1,1,1);
	vertex_normal(vbuffer,0,-1,0);
	vertex_texcoord(vbuffer,0.5,0.5);
	vertex_color(vbuffer,groundcolor,1);
	#endregion

	#region triangle 4.1
	vertex_position_3d(vbuffer,-1,1,-1); 
	vertex_normal(vbuffer,1,0,0);
	vertex_texcoord(vbuffer,0.75,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,-1,-1,-1);
	vertex_normal(vbuffer,1,0,0);
	vertex_texcoord(vbuffer,1,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,-1,1,1);
	vertex_normal(vbuffer,1,0,0);
	vertex_texcoord(vbuffer,0.75,0.5);
	vertex_color(vbuffer,groundcolor,1);
	#endregion
	
	#region triangle 4.2
	vertex_position_3d(vbuffer,-1,-1,1); 
	vertex_normal(vbuffer,1,0,0);
	vertex_texcoord(vbuffer,1,0.5);
	vertex_color(vbuffer,groundcolor,1);
	
	vertex_position_3d(vbuffer,-1,-1,-1);
	vertex_normal(vbuffer,1,0,0);
	vertex_texcoord(vbuffer,1,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,-1,1,1);
	vertex_normal(vbuffer,1,0,0);
	vertex_texcoord(vbuffer,0.75,0.5);
	vertex_color(vbuffer,groundcolor,1);
	#endregion


	
	#region triangle 5.1
	vertex_position_3d(vbuffer,-1,-1,-1);
	vertex_normal(vbuffer,0,0,1);
	vertex_texcoord(vbuffer,0.25,0);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,-1,1,-1);
	vertex_normal(vbuffer,0,0,1);
	vertex_texcoord(vbuffer,0.5,0);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,1,-1,-1);
	vertex_normal(vbuffer,0,0,1);
	vertex_texcoord(vbuffer,0.25,0.25);
	vertex_color(vbuffer,skycolor,1);
	#endregion
	
	#region triangle 5.2
	vertex_position_3d(vbuffer,1,1,-1); 
	vertex_normal(vbuffer,0,0,1);
	vertex_texcoord(vbuffer,0.5,0.25);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,-1,1,-1);
	vertex_normal(vbuffer,0,0,1);
	vertex_texcoord(vbuffer,0.5,0);
	vertex_color(vbuffer,skycolor,1);
	
	vertex_position_3d(vbuffer,1,-1,-1);
	vertex_normal(vbuffer,0,0,1);
	vertex_texcoord(vbuffer,0.25,0.25);
	vertex_color(vbuffer,skycolor,1);
	#endregion
	
	#region triangle 6.1
	vertex_position_3d(vbuffer,1,-1,1);
	vertex_normal(vbuffer,0,0,-1);
	vertex_texcoord(vbuffer,0.25,0.5);
	vertex_color(vbuffer,groundcolor,1);
	
	vertex_position_3d(vbuffer,1,1,1);
	vertex_normal(vbuffer,0,0,-1);
	vertex_texcoord(vbuffer,0.5,0.5);
	vertex_color(vbuffer,groundcolor,1);
	
	vertex_position_3d(vbuffer,-1,-1,1);
	vertex_normal(vbuffer,0,0,-1);
	vertex_texcoord(vbuffer,0.25,0.75);
	vertex_color(vbuffer,groundcolor,1);
	#endregion
	
	#region triangle 5.2
	vertex_position_3d(vbuffer,-1,1,1); 
	vertex_normal(vbuffer,0,0,-1);
	vertex_texcoord(vbuffer,0.5,0.75);
	vertex_color(vbuffer,groundcolor,1);
	
	vertex_position_3d(vbuffer,1,1,1);
	vertex_normal(vbuffer,0,0,-1);
	vertex_texcoord(vbuffer,0.5,0.5);
	vertex_color(vbuffer,groundcolor,1);
	
	vertex_position_3d(vbuffer,-1,-1,1);
	vertex_normal(vbuffer,0,0,-1);
	vertex_texcoord(vbuffer,0.25,0.75);
	vertex_color(vbuffer,groundcolor,1);
	#endregion
	
	vertex_end(vbuffer);
	vertex_freeze(vbuffer);
	return vbuffer;
}