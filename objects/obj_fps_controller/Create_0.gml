/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
gyroEnabled = 0;
if (os_browser!=browser_not_a_browser)
{
	gyroEnabled = html5_gyro_init();
}

rotation = 0;
tilt = 0;
forward_movement = 0;
side_movement = 0;

rotating = false;
start_mouse_x = 0;
start_mouse_y = 0;

camera_update_function = function(ctrl){
	obj_camera.xfrom = obj_player.position_x;
	obj_camera.yfrom = obj_player.position_y;
	obj_camera.zfrom = obj_player.position_z-1.25
	
	var d = lengthdir_xyz(3,rotation,tilt);
	

	obj_camera.xto = obj_camera.xfrom+d[0];
	obj_camera.yto = obj_camera.yfrom+d[1];
	obj_camera.zto = obj_camera.zfrom-d[2];

}