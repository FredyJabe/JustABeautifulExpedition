/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
event_inherited();
	
var view_matrix = matrix_build_lookat(xfrom,yfrom,zfrom,xto	,yto,zto,0,0,1)
camera_set_view_mat(camera,view_matrix);