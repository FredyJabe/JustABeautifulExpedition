function load_obj_into_vbuffer(
	path, vbuffer, bcolor, 
	translate_x, translate_y, translate_z,
	scales,rotation,mirror
) {

	var scale_x = scales[0];
	var scale_y = scales[1];
	var scale_z = scales[2];
	if (!variable_global_exists("object_preload_cache")){
		global.object_preload_cache = ds_map_create();

	}
	var cache_entry = undefined;
	var vx, vy, vz, nx, ny, nz, tx, ty, fl, v, n, t, f,vertMat,mtlLib
	var str,type,triNum,vertString;
	if (ds_map_exists(global.object_preload_cache,path)){
		cache_entry = global.object_preload_cache[? path];
		mtlLib  = cache_entry[? "mtlLib"];
		vx	    = cache_entry[? "vx"];
		vy		= cache_entry[? "vy"];
		vz		= cache_entry[? "vz"];
		nx	    = cache_entry[? "nx"];
		ny		= cache_entry[? "ny"];
		nz		= cache_entry[? "nz"];
		tx		= cache_entry[? "tx"];
		ty		= cache_entry[? "ty"];
		fl		= cache_entry[? "fl"];
		vertMat	= cache_entry[? "vertMat"];
	}
	else
	{
		/*
		var min_x = 999999;
		var min_y = 999999;
		var min_z = 999999;
		var max_x = -999999;
		var max_y = -999999;
		var max_z = -999999;
		*/
	
		cache_entry = ds_map_create();
		vx = ds_list_create(); vx[| 0] = 0;
		vy = ds_list_create(); vy[| 0] = 0;
		vz = ds_list_create(); vz[| 0] = 0;
		nx = ds_list_create(); nx[| 0] = 0;
		ny = ds_list_create(); ny[| 0] = 0;
		nz = ds_list_create(); nz[| 0] = 0;
		tx = ds_list_create(); tx[| 0] = 0;
		ty = ds_list_create(); ty[| 0] = 0;
		vertMat = ds_list_create();
		fl = ds_list_create();
		
		var file = file_text_open_read(path);

		var mtlToUse	= "";
		mtlLib		= noone;

		var filePath = file_path(path);
		while !file_text_eof(file)
		{
			str = string_replace_all(file_text_read_string(file),"  "," ");
			type = string_copy(str, 1, 2);
	
			if (string_copy(str,1,7) == "mtllib ")
			{
				var mtlLibPath = filePath+string_delete(str, 1, string_pos(" ", str));
				if (file_exists(mtlLibPath))
				{
					mtlLib = load_mtl(mtlLibPath);
				}
			}
			if (string_copy(str,1,7) == "usemtl ")
			{
				mtlToUse = string_delete(str, 1, string_pos(" ", str));
			}
			str = string_delete(str, 1, string_pos(" ", str));
	
	
	
			switch type
			{
				case "v ":
					var _x = real(string_copy(str, 1, string_pos(" ", str)));
					str = string_delete(str, 1, string_pos(" ", str));    
					var _z = -real(string_copy(str, 1, string_pos(" ", str)));
					var _y = real(string_delete(str, 1, string_pos(" ", str)));
				
					ds_list_add(vx,_x);//(pt[0]*scale)+translate_x);
					ds_list_add(vy,_y);//(pt[1]*scale)+translate_y);  
					ds_list_add(vz,_z);//(_z*scale)+translate_z);
					break;
				case "vn":
					var _x = real(string_copy(str, 1, string_pos(" ", str)));
					str = string_delete(str, 1, string_pos(" ", str));    
					var _z = -real(string_copy(str, 1, string_pos(" ", str)));
					var _y = real(string_delete(str, 1, string_pos(" ", str)));
					//var pt = rotate_point(_x,_y,rotation);
					ds_list_add(nx,_x);//pt[0] );
					ds_list_add(ny,_y);//pt[1] );
					ds_list_add(nz,_z);//
					break;
				case "vt":
					ds_list_add(tx, real(string_copy(str, 1, string_pos(" ", str))));
					ds_list_add(ty, real(string_delete(str, 1, string_pos(" ", str))));
					break;
				case "f ":
			        if (string_char_at(str, string_length(str)) == " "){str = string_copy(str, 0, string_length(str) - 1);}
			        triNum = string_count(" ", str);
			        for (i = 0; i < triNum; i ++){
			            vertString[i] = string_copy(str, 1, string_pos(" ", str));
			            str = string_delete(str, 1, string_pos(" ", str));
					}
					vertString[i--] = str;
			
			        while i--{
						for (j = 2; j >= 0; j --){
							ds_list_add(fl, vertString[(i + j) * (j > 0)]);
							ds_list_add(vertMat,mtlToUse);
						}
					}
			
					break;
				}
		    file_text_readln(file);
		}
		file_text_close(file);
		cache_entry[? "mtlLib"]=mtlLib;
		cache_entry[? "vx"]=vx;
		cache_entry[? "vy"]=vy;
		cache_entry[? "vz"]=vz;
		cache_entry[? "nx"]=nx;
		cache_entry[? "ny"]=ny;
		cache_entry[? "nz"]=nz;
		cache_entry[? "tx"]=tx;
		cache_entry[? "ty"]=ty;
		cache_entry[? "fl"]=fl;
		cache_entry[? "vertMat"]=vertMat;
		global.object_preload_cache[? path] = cache_entry;
	}

	for (var f = 0; f < ds_list_size(fl); f ++)
	{
		mtlToUse = vertMat[| f];
		vertString = fl[| f];
		v = 0; n = 0; t = 0;
		if string_count("/", vertString) == 2 and string_count("//", vertString) == 0{
			v = real(string_copy(vertString, 1, string_pos("/", vertString) - 1));
			vertString = string_delete(vertString, 1, string_pos("/", vertString));
			t = real(string_copy(vertString, 1, string_pos("/", vertString) - 1));
			n = real(string_delete(vertString, 1, string_pos("/", vertString)));}
		else if string_count("/", vertString) == 1{
			v = real(string_copy(vertString, 1, string_pos("/", vertString) - 1));
			t = real(string_delete(vertString, 1, string_pos("/", vertString)));}
		else if (string_count("/", vertString) == 0){
			v = real(vertString);}
		else if string_count("/",vertString) == 2 and string_count("//", vertString) == 1{
			vertString = string_replace(vertString, "//", "/");
			v = real(string_copy(vertString, 1, string_pos("/", vertString) - 1));
			n = real(string_delete(vertString, 1, string_pos("/", vertString)));}
			
		//vertex_position_3d
		var _x = vx[| v];
		var _y = vy[| v];
		var _z = vz[| v];
		
		if (mirror)_x = -_x;
		var pt = rotate_point(_x,_y,rotation);
		
		/*
		if (object_is_ancestor(object_index,obj_mesh)||object_index==obj_mesh)
		{
		*/
		/*
			if (pt[0]<min_x) min_x = pt[0];
			if (pt[0]>max_x) max_x = pt[0];
			if (pt[1]<min_y) min_y = pt[1];
			if (pt[1]>max_y) max_y = pt[1];
			if (_z<min_z) min_z = _z;
			if (_z>max_z) max_z = _z;
		*/
		/*
		}
		*/
		var px = (pt[0]*scale_x)+translate_x;
		var py = (pt[1]*scale_y)+translate_y;
		var pz = (_z*scale_z)+translate_z;
	
	
		vertex_position_3d(vbuffer, px,  py, pz);
	
		//if (obj_scene_view.light_enabled)
		//{
			var _nx = nx[| n];
			var _ny = ny[| n];
			var _nz = nz[| n];
			
			var npt = rotate_point(_nx,_ny,rotation);
			if (mirror || scale_x<0)
			{
				npt[0] = -npt[0];
			}
			if (mirror || scale_y<0)
			{
				npt[1] = -npt[1];
			}
			vertex_normal(vbuffer, npt[0],npt[1] ,_nz);
		//}
		vertex_texcoord(vbuffer,  tx[| t], 1 - ty[| t]);
	
		var c = c_white;
		if (bcolor != c_white)
		{
			c = bcolor
		}
		else{
			//vertex_color (Colour, tangent or bone indices)
			if ((mtlToUse!="") && (mtlLib!=noone) && (mtlToUse!=undefined))
			{
				c =mtlLib[? mtlToUse];
			}
			else{
				c = c_white;
			}
		}
		vertex_color(vbuffer, c,1);
	
	}





	return vbuffer;


}
