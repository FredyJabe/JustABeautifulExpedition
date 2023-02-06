function load_obj(argument0, argument1, argument2,do_freeze) {
	var min_x = 999999;
	var min_y = 999999;
	var min_z = 999999;
	var max_x = -999999;
	var max_y = -999999;
	var max_z = -999999;
	
	
	var bcolor= argument1;
	var replace_z = argument2;

	if (!variable_global_exists("object_cache")){
		global.object_cache = ds_map_create();
	}

	if (ds_map_exists(global.object_cache,argument0)){
		var obj_cache = global.object_cache[? argument0];
		var vbuffer = obj_cache[? "vbuffer"];
		min_x = obj_cache[? "min_x"];
		min_y = obj_cache[? "min_y"];
		min_z = obj_cache[? "min_z"];
		max_x = obj_cache[? "max_x"];
		max_y = obj_cache[? "max_y"];
		max_z = obj_cache[? "max_z"];
		return vbuffer;
	}

	//var format = global.vertex_format_obj_without_normal ;
	var format = global.vertex_format_obj_with_normal ;

		
	// create the preview buffer where we will finally apply all the obj model data.	
	var vbuffer = vertex_create_buffer();
	vertex_begin( vbuffer, format );


	var vx, vy, vz, nx, ny, nz, tx, ty, fl, v, n, t, f,vertMat;
	var str,type,triNum,vertString;
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
		
	var file = file_text_open_read(argument0);


	min_x = 9999;
	min_y = 9999;
	min_z = 9999;
	max_x = 0;
	max_y = 0;
	max_z = 0;

	var mtlToUse	= "";
	var mtlLib		= noone;

	var filePath = file_path(argument0);
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
				var _z = real(string_copy(str, 1, string_pos(" ", str)));
				var _y = real(string_delete(str, 1, string_pos(" ", str)));
				if (_x<min_x) min_x = _x;
				if (_x>max_x) max_x = _x;
				if (_y<min_y) min_y = _y;
				if (_y>max_y) max_y = _y;
				if (_z<min_z) min_z = _z;
				if (_z>max_z) max_z = _z;
				ds_list_add(vx,_x);
				ds_list_add(vy,_y);  
				ds_list_add(vz,_z);
				break;
			case "vn":
				ds_list_add(nx, real(string_copy(str, 1, string_pos(" ", str))));
		        str = string_delete(str, 1, string_pos(" ", str)); 
				ds_list_add(nz, real(string_copy(str, 1, string_pos(" ", str))));
				ds_list_add(ny, real(string_delete(str, 1, string_pos(" ", str))));
				break;
			case "vt":
				ds_list_add(tx, real(string_copy(str, 1, string_pos(" ", str))));
				ds_list_add(ty, real(string_delete(str, 1, string_pos(" ", str))));
				break;
			case "f ":
		        if (string_char_at(str, string_length(str)) == " "){
					str = string_copy(str, 0, string_length(str) - 1);
				}
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
		var ma_z = max_z;
		var mi_z = min_z;
		var zz = vz[| v]
		if (replace_z)
		{
		
			zz-=mi_z;
		}
		//zz = zz-ma_z;
		vertex_position_3d(vbuffer, vx[| v], vy[| v], -zz);
		//if light enabled
		vertex_normal(vbuffer, nx[| n], ny[| n], nz[| n]);
		/*
		if (obj_scene_view.light_enabled)
		{
			//vertex_normal_3d
			
		}
		*/
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
	min_z-=max_z;
	max_z-=max_z;
	file_text_close(file); 
	// finish building model	
	vertex_end( vbuffer );
	if (do_freeze)
	{
		vertex_freeze(vbuffer);
	}
	ds_list_destroy(vertMat);
	ds_list_destroy(vx);
	ds_list_destroy(vy);
	ds_list_destroy(vz);
	ds_list_destroy(nx);
	ds_list_destroy(ny);
	ds_list_destroy(nz);
	ds_list_destroy(tx);
	ds_list_destroy(ty);
	ds_list_destroy(fl);


	var obj_cache_result = ds_map_create();
	obj_cache_result[? "vbuffer"]	= vbuffer;
	obj_cache_result[? "min_x"]	= min_x;
	obj_cache_result[? "min_y"]	= min_y;
	obj_cache_result[? "min_z"]	= min_z;
	obj_cache_result[? "max_x"]	= max_x;
	obj_cache_result[? "max_y"]	= max_y;
	obj_cache_result[? "max_z"]	= max_z;
	global.object_cache[? argument0] = obj_cache_result;

	return vbuffer;


}
