/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur



event_inherited();

camera_1_idx = 0;
camera_2_idx = 1;
if (!fullscreen)
{
	surface_width = sprite_width;
	surface_height = sprite_height;
	surface_left = x-sprite_xoffset;
	surface_top = y-sprite_yoffset;
}
else
{
	surface_left	= 0;
	surface_top		= 0;
	surface_width  = window_get_width();
	surface_height = window_get_height();
}
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

surface_camera_1 = surface_recreate(undefined,surface_1_width,surface_1_height);
surface_camera_2 = surface_recreate(undefined,surface_2_width,surface_2_height);
camera_1 = camera_init(camera_1_idx,surface_1_width,surface_1_height,surface_1_left,surface_1_top,surface_camera_1,undefined);
camera_2 = camera_init(camera_2_idx,surface_2_width,surface_2_height,surface_2_left,surface_2_top,surface_camera_2,undefined);