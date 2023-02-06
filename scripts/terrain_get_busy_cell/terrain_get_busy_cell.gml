// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function terrain_get_busy_cell(_ax,_ay){

	var _tx  = floor( _ax+ obj_terrain.collision_grid_width_half);
	var _ty  = floor( _ay+ obj_terrain.collision_grid_height_half);
	
	if (_tx>=0 && _tx<obj_terrain.collision_grid_width &&
		_ty>=0 && _ty<obj_terrain.collision_grid_height)
	{
		var cell = obj_terrain.collision_grid_data[_tx][_ty];
		if ((cell!=0) && (cell!=undefined))
		{
			return obj_terrain.collision_grid_data[_tx][_ty].busy;
		}
	}
	return false;
}