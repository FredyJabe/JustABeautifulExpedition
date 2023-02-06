/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
	
var move_delta = (delta_time/1000000)*move_speed;

var forward = (move_delta) *  controller.forward_movement;
var side = (move_delta) * controller.side_movement;
if (forward!=0 ||side!=0)
{
	
	terrain_set_busy_cell(position_x,position_y,false);
	var p = player_move(forward,side,controller.rotation,position_x,position_y,position_z);
	
	if (p[0]!=position_x || p[1]!=position_y)
	{
	
	
		position_x = p[0];
		position_y = p[1];
	
	
		position_z = terrain_get_z(position_x,position_y,position_z);
	}
	terrain_set_busy_cell(position_x,position_y,true);
}


/*
if (canMove)
{
	target_speed = (obj_input_controller.move_forward_pressed-obj_input_controller.move_backward_pressed)*0.5
	target_direction = character_direction+(obj_input_controller.turn_left_pressed-obj_input_controller.turn_right_pressed)*90;
	
	if (target_speed==0 && target_direction==character_direction)
	{
		var translate = (obj_input_controller.move_left_pressed-obj_input_controller.move_right_pressed)*0.5;
		var pos = player_move(translate,character_direction+90,position_x,position_y,position_z);
		target_x = pos[0];
		target_y = pos[1];
	}
}
else
{
	target_speed = 0;
	
}

if (target_direction!=character_direction)
{
	var nx1 = lengthdir_x(2,character_direction);
	var ny1 = lengthdir_y(2,character_direction);
	draw_light_define_direction(1,nx1,ny1,1,light_color);
	//draw_light_enable(1,true);
}

if (target_x!=position_x || target_y!=position_y)
{
	draw_light_define_point(2,position_x,position_y,position_z-2,light_range,light_color);
	//draw_light_enable(2,true);
}

event_inherited();
*/
var dx = position_x+lengthdir_x(0.7,character_direction)+lengthdir_x(0.3,character_direction-90);
var dy = position_y+lengthdir_y(0.7,character_direction)+lengthdir_y(0.3,character_direction-90);
matrix = matrix_build(
				dx,dy,position_z-0.4,
				5,0,character_direction+95,
				0.3,0.3,0.3
);