/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

draw_surface(surface_camera_1,surface_1_left,surface_1_top);
draw_surface(surface_camera_2,surface_2_left,surface_2_top);

/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var l = [surface_1_left,surface_2_left];
var to = surface_top;
for(var i =0;i<2;i++)
{
	var le = l[i];
	draw_text(le+10,to+10,"FPS real : "+string(the_fps_real));
	draw_text(le+10,to+30,"FPS : "+string(fps));
	draw_text(le+10,to+50,"Position : "+string(obj_player.position_x)+" - "+string(obj_player.position_y)+" - "+string(obj_player.position_z));
	
	draw_text(le+10,to+70,"Gyro X : "+string(html5_gyro_get_tilt_x()));
	draw_text(le+10,to+90,"Gyro Y : "+string(html5_gyro_get_tilt_y()));
	draw_text(le+10,to+110,"Gyro Z : "+string(html5_gyro_get_tilt_z()));
}

draw_rectangle(
	surface_1_left,
	surface_1_top,
	surface_1_left+surface_1_width,
	surface_1_top+surface_1_height,
	true
);
draw_rectangle(
	surface_2_left,
	surface_2_top,
	surface_2_left+surface_2_width,
	surface_2_top+surface_2_height,
	true
);