/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
event_inherited();

if (!fullscreen)
{
	surface_left   = x-sprite_xoffset;
	surface_top		= y-sprite_yoffset;
	surface_width  = sprite_width;// window_get_width();
	surface_height = sprite_height;//window_get_height();
	
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


camera = camera_init(0,surface_width,surface_height,surface_left,surface_top,undefined,undefined);