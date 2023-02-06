
if(fullscreen)
{
	var n_surface_width = window_get_width();
	var n_surface_height = window_get_height();
	if (n_surface_width!=surface_width || n_surface_height!=surface_height)
	{
		surface_width = n_surface_width;
		surface_height = n_surface_height;
		surface_center_x = (surface_width>>1) + surface_left;
		surface_center_y = (surface_height>>1) + surface_top;
	
		/*
		
		surface_1_width = surface_width>>1;
		surface_2_width = surface_width>>1;
		surface_1_height = surface_height;
		surface_2_height = surface_height;
		surface_1_left = surface_left;
		surface_2_left = surface_1_left+surface_1_width;
		surface_1_top = surface_top;
		surface_2_top = surface_top;
		*/
		var twidth = (surface_width>>1)-64;
		var mid1 = (surface_width>>2);
		var mid2 = (surface_width>>1)+(surface_width>>2);

		surface_1_width = twidth;
		surface_2_width = twidth;
		surface_1_height = twidth;
		surface_2_height = twidth;
		surface_1_left = mid1-(twidth>>1);
		surface_2_left = mid2-(twidth>>1);
		surface_1_top = (surface_height>>1)-(twidth>>1);
		surface_2_top = (surface_height>>1)-(twidth>>1);
		
		surface_camera_1 = surface_recreate(surface_camera_1,surface_1_width,surface_1_height);
		surface_camera_2 = surface_recreate(surface_camera_2,surface_2_width,surface_2_height);

		camera_1 = camera_init(camera_1_idx,surface_1_width,surface_1_height,surface_1_left,surface_1_top,surface_camera_1,camera_1);
		camera_2 = camera_init(camera_2_idx,surface_2_width,surface_2_height,surface_2_left,surface_2_top,surface_camera_2,camera_2);
		
	}
}
if (!surface_exists(surface_camera_1))
{
	surface_camera_1 = surface_recreate(surface_camera_1,surface_1_width,surface_1_height);
	view_surface_id[camera_1_idx] = surface_camera_1;	
}

if (!surface_exists(surface_camera_2))
{
	surface_camera_2 = surface_recreate(surface_camera_2,surface_2_width,surface_1_height);
	view_surface_id[camera_2_idx] = surface_camera_2;	
}

if (surface_exists(surface_camera_1))
{
	surface_set_target(surface_camera_1);
	draw_clear(c_black);
	surface_reset_target();
}
if (surface_exists(surface_camera_2))
{
	surface_set_target(surface_camera_2);
	draw_clear(c_black);
	surface_reset_target();
}