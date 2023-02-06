// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_move(distance,_side_distance,_direction,old_x,old_y,old_z){
	if (distance!=0 || _side_distance!=0)
	{
		var dir_x = lengthdir_x(distance,_direction) + lengthdir_x(_side_distance,_direction-90);
		var dir_y = lengthdir_y(distance,_direction)+ lengthdir_y(_side_distance,_direction-90);
		
		var check_x = old_x+dir_x;
		var check_y = old_y+dir_y;
		
		
		var check_busy_x = old_x+dir_x*3;
		var check_busy_y = old_y+dir_y*3;
		
		
		//var new_z2 = terrain_get_z(check2_x,check2_y,old_z);
		var new_z = terrain_get_z(check_x,check_y,old_z);
		if (
			(abs(new_z-old_z)>0.5)
			//||(abs(new_z2-old_z)>1)
		)
		{
				return [old_x,old_y];
		}		
				
		var isBusy = terrain_get_busy_cell(check_busy_x,check_busy_y);
		if (!isBusy)
		{
			return [old_x+dir_x,old_y+dir_y];
		}
	}
	return [old_x,old_y]
}