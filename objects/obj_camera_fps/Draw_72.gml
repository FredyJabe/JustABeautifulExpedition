/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if (fullscreen)
{
	var n_surface_width = window_get_width();
	var n_surface_height = window_get_height();
	if (n_surface_width!=surface_width ||
		n_surface_height!=surface_height)
	{
		surface_width = n_surface_width;
		surface_height = n_surface_height;
		surface_center_x = (surface_width>>1) + surface_left;
		surface_center_y = (surface_height>>1) + surface_top;
		camera = camera_init(0,surface_width,surface_height,surface_left,surface_top,undefined,camera);
	}
}

event_inherited();