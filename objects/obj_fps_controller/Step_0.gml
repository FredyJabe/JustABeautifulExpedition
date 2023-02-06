/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


forward_movement = 
	obj_input_controller.move_forward_press -
	obj_input_controller.move_backward_press;
	
side_movement =
	obj_input_controller.move_right_press -
	obj_input_controller.move_left_press;


rotation += (obj_input_controller.turn_left_press -
	obj_input_controller.turn_right_press)


if (mouse_check_button(mb_right)){
	var ax_mouse = window_mouse_get_x();
	var ay_mouse = window_mouse_get_y();
	if (!rotating)
	{
		start_mouse_x = ax_mouse;
		start_mouse_y = ay_mouse;
		rotating = true;
	}
	
	var diffx = ax_mouse-start_mouse_x
	var diffy = ay_mouse-start_mouse_y
	if (os_browser== browser_not_a_browser)
	{
		window_mouse_set(start_mouse_x,start_mouse_y);
	}
	else
	{
		start_mouse_x = ax_mouse;
		start_mouse_y = ay_mouse;
	}
	tilt += lerp(0,sign(diffy)*90,abs(diffy)/obj_camera.surface_center_y);
	tilt  = clamp(tilt ,-180,90);
	rotation -= lerp(0,sign(diffx)*180, abs(diffx)/obj_camera.surface_center_x);
	
}
else
{
	rotating = false;
}

if (gyroEnabled)
{
	
	var tx = html5_gyro_get_tilt_x();
	var tz = html5_gyro_get_tilt_z();
	var ty = html5_gyro_get_tilt_y();
	if (string(tx)=="null") tx = 0;
	if (string(ty)=="null") ty = 0;
	if (string(tz)=="null") tz = 0;
	
	var r = tx
	var ry = ty-90;
	while (r<0) r+=360;
	r = abs((r%360)-180)/180;
	tilt =  -((ry*r)-(ry/2))*2
	rotation = -(tx - tz);
}