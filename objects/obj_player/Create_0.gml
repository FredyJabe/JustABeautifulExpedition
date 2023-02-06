/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

controller = instance_create_depth(0,0,0,obj_fps_controller);
// Inherit the parent event
event_inherited();

vbuffer = load_obj("gun1.obj",c_white,false,true);
matrix = undefined;

light_color =0x334444;
light_range= 15;
var nx1 = lengthdir_x(2,character_direction);
var ny1 = lengthdir_y(2,character_direction);
draw_light_define_direction(1,nx1,ny1,1,light_color);
move_speed = 4;
//draw_light_enable(1,true);

draw_light_define_point(2,position_x,position_y,position_z-2,light_range,light_color);
//draw_light_enable(2,true);