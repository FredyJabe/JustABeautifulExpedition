/// @description lengthdir_xyz
/// @param distance
/// @param horizontal_angle
/// @param vertical_angle
function lengthdir_xyz(distance, h_angle, v_angle) {

	var r = lengthdir_x(distance,v_angle);
	var len_z = lengthdir_y(distance,v_angle);

	var len_x = lengthdir_x(r,h_angle);
	var len_y = lengthdir_y(r,h_angle);

	return [len_x,len_y,len_z];



}
