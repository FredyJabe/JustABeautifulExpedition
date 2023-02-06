/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
view_enabled = true;
the_fps_real = 0;
alarm[0] = 60;

xfrom = 0;
yfrom = 0;
zfrom = 0;
xto   = 0;
yto	  = 0;
zto	  = 0;

surface_left   = 0
surface_top		= 0
surface_width  = 0
surface_height =0

init_3d();

if (!fullscreen){
}
else{
	
	if (instance_exists(obj_gui_bg)){
		instance_destroy(obj_gui_bg);
	}
}