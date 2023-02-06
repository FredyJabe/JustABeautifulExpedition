/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
canMove = true;
position_x = (x/obj_terrain.cell_width);
position_y = (y/obj_terrain.cell_height);
position_z = terrain_get_z(position_x,position_y,-99);
character_direction = image_angle;
target_x = position_x;
target_y = position_y;
target_direction = character_direction;
move_speed = 2;
turn_speed = 2;
target_speed = 0;

is_moving = false;
is_turning = false;

terrain_set_busy_cell(position_x,position_y,true);