// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_init(idx,w,h,_x,_y,surf,currentCamera){
	if (currentCamera!=undefined)
	{
		camera_destroy(currentCamera);
	}
	
	
	var cam =camera_create();// camera_create_view(0,0,w,h);
	view_camera[idx]		= cam;
	view_visible[idx]	= true;
	view_wport[idx]		= w;
	view_hport[idx]		= h;
	view_xport[idx]		= _x;
	view_yport[idx]		= _y;
	if(surf!=undefined)
	{
		view_surface_id[idx]=surf;
	}
	var project = matrix_build_projection_perspective_fov(60,(w)/h,0.1,4096);
	camera_set_proj_mat(cam,project);

	return cam;
}