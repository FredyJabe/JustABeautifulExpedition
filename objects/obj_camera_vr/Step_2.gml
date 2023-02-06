/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Inherit the parent event
event_inherited();

var angle0 = get_angle(xfrom,yfrom,xto,yto);
var distance = distance_between_points(xfrom,yfrom,xto,yto);
var angle1 = angle0-1;
var angle2 = angle0+1;
var xto1 = xfrom + lengthdir_x(distance,angle1);
var xto2 = xfrom + lengthdir_x(distance,angle2);
var yto1 = yfrom + lengthdir_y(distance,angle1);
var yto2 = yfrom + lengthdir_y(distance,angle2);



var view_1_matrix = matrix_build_lookat(xfrom,yfrom,zfrom,xto1,yto1,zto,0,0,1)
var view_2_matrix = matrix_build_lookat(xfrom,yfrom,zfrom,xto2,yto2,zto,0,0,1)
camera_set_view_mat(camera_1,view_1_matrix);
camera_set_view_mat(camera_2,view_2_matrix);
