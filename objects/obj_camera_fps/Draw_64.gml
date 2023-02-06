
//shader_set(shd_sepia);
/*
if (!fullscreen)
{
	draw_surface(surface_camera,surface_left,surface_top);
}
*/
//shader_reset();

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(surface_left+10,surface_top+10,"FPS real : "+string(the_fps_real));
draw_text(surface_left+10,surface_top+30,"FPS : "+string(fps));
draw_text(surface_left+10,surface_top+50,"Position : "+string(obj_player.position_x)+" - "+string(obj_player.position_y)+" - "+string(obj_player.position_z));

draw_text(surface_left+10,surface_top+70,"Gyro X : "+string(html5_gyro_get_tilt_x()));
draw_text(surface_left+10,surface_top+90,"Gyro Y : "+string(html5_gyro_get_tilt_y()));
draw_text(surface_left+10,surface_top+110,"Gyro Z : "+string(html5_gyro_get_tilt_z()));