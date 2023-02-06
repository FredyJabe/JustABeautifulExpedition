/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var idx = 0;
if (pressed){
	idx = 2;
} else if (mouse_over){
	idx = 1;
}
draw_sprite_ext(sprite_index,idx,x,y,image_xscale,image_yscale,0,c_white,1);