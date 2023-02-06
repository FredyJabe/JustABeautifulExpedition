// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function asset_forge_add_object(info,pos,scal,rot,path,add_obj){
	
	
	var t_x = pos[0];
	var t_y = -pos[2];
	var t_z = -pos[1];
	var s_x = scal[0];
	var s_y = scal[2];
	var s_z = scal[1];
	var rotation = rot[1];
	var obj_rotation = rotation;
	if (s_x<0) obj_rotation = -obj_rotation;
	if (add_obj)
	{
		load_obj_into_vbuffer(path,static_vbuff,c_white,t_x,t_y,t_z,[s_x,s_y,s_z],-(obj_rotation+180),false);
	}
	if (info!=undefined)
	{
		for (var _mx = 0; _mx<info.block_size.w ;_mx++)
		{
			for(var _my = 0;_my<info.block_size.h;_my++)
			{
			
				var _x = _mx;
				var _y = _my;
				
				if (s_x<0)
				{
					_x = (info.block_size.w - _mx) -1;
				}
				if (s_y<0)
				{
					_y = (info.block_size.h - _my)-1;
				}
				
				if (info.block_pattern[_y][_x]==1)
				{
					var n = rotate_point(_mx-info.offset_x,_my-info.offset_y,-rotation);
					var _nx = n[0];
					var _ny = n[1];
			
					var tx = (t_x+_nx)+obj_terrain.grid_width_half;
					var ty = (t_y+_ny)+obj_terrain.grid_height_half;
					var tz = floor(-t_z);
					var gdata = obj_terrain.grid_data[tx][ty][tz];
					if (gdata==undefined || gdata==0)
					{
						var heights = ds_list_create();
						ds_list_add(heights,tz);
						gdata = {
							rotation : 0,
							heights  : heights,
							points_heights : [0,0,0,0]
						}
					}
					ds_list_add(gdata.heights,tz);
					gdata.rotation = (rotation)%360;
					
					var pheights = info.z_positions[_y][_x];
					var bpos = [0,0,0,0];
					switch(gdata.rotation)
					{
						case 0:
							bpos = [pheights[0],pheights[1],pheights[2],pheights[3]];
							break;
						case 90:
							bpos = [pheights[2],pheights[0],pheights[3],pheights[1]];
							break;
						case 180:
							bpos = [pheights[3],pheights[2],pheights[1],pheights[0]];
							break;
						case 270:
							bpos = [pheights[1],pheights[3],pheights[0],pheights[2]];
							break;
					}
					var ph = [
						max(bpos[0],gdata.points_heights[0]),
						max(bpos[1],gdata.points_heights[1]),
						max(bpos[2],gdata.points_heights[2]),
						max(bpos[3],gdata.points_heights[3])
					];
					var p1 = ph[0];
					var p2 = ph[1];
					var p3 = ph[2];
					var p4 = ph[3];
					if (s_x<0)
					{
						ph = [p2,p1,p4,p3];
					}
					if (s_y<0)
					{
						ph = [p3,p4,p1,p2];
					}
					gdata.points_heights = ph;
			
					obj_terrain.grid_data[tx][ty][tz]=gdata;
				
				}
			}
		}
	}
}