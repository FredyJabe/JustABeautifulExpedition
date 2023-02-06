/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if (canMove && (target_speed!=0))
{
	
	var pos = player_move(target_speed,0,character_direction,position_x,position_y,position_z);
	target_x = pos[0];
	target_y = pos[1];
}

var fp = 60;
//if (fp==0) fp = 60;

#region apply rotation
var diffDir = target_direction-character_direction;
if (diffDir!=0)
{
	is_turning = true;
	if (abs(diffDir)>5){
		var diff = sign(diffDir)*turn_speed*60/fp;
		character_direction+=diff;
	}
	else{
		is_turning = false;
		character_direction = target_direction;
		while (character_direction<0) 
		{
			character_direction+=360;
		}
		character_direction=character_direction%360;
		target_direction=character_direction;
	
	}
}
else
{
	is_turning = false;
}
#endregion

#region apply movement
var diffX = target_x - position_x;
var diffY = target_y - position_y;
if (diffX!=0 || diffY!=0)
{
	terrain_set_busy_cell(position_x,position_y,false);
	if (abs(diffX)>0.1 || abs(diffY)>0.1)
	{
		is_moving = true;
		position_x += sign(diffX)*move_speed/fp;
		position_y += sign(diffY)*move_speed/fp;
	}
	else
	{
		is_moving = false;
		position_x = target_x;
		position_y = target_y;
	}
	position_z = terrain_get_z(position_x,position_y,position_z);
	terrain_set_busy_cell(position_x,position_y,true);
}
else
{
	is_moving =false;
}
#endregion
