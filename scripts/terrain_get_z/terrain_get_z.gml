// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function terrain_get_z(_ax,_ay,_az){
	var _x  = _ax+obj_terrain.grid_width_half;
	var _y  = _ay+obj_terrain.grid_height_half;
	var _nx = floor(_x);
	var _ny = floor(_y);
	var _nz = floor(-_az);
	
	var _ox = _x-_nx;
	var _oy = _y-_ny;
	
	var _z = 0;
	var found = false;
	for(var _iz=_nz+3;(_iz>=0) && !found;_iz--)
	{
		if (_nx>=0 && _ny>=0 && _nx<obj_terrain.grid_width && _ny<obj_terrain.grid_height)
		{
			var gdataarray = obj_terrain.grid_data[_nx][_ny];
			if (_iz>=0 && _iz< array_length(gdataarray))
			{
				var gdata = gdataarray[_iz];
				if (gdata!=0)
				{
					var z1 = lerp(gdata.points_heights[0],gdata.points_heights[1],_ox);
					var z2 = lerp(gdata.points_heights[2],gdata.points_heights[3],_ox);
					
					_z = lerp(z1,z2,_oy);
					_z += _iz;
					found = true;
				}
			}
		}
	}
	return -_z;
}