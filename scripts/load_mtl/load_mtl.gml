function load_mtl(argument0) {
	var result = ds_map_create();

	var file = file_text_open_read(argument0);
	var mtlKey = "";
	while !file_text_eof(file)
	{
		var str = string_replace_all(file_text_read_string(file),"  "," ");
		if (string_copy(str,1,7)== "newmtl ")
		{
			mtlKey = string_delete(str, 1, string_pos(" ", str));

		}
		var t = string_copy(str,1,3);
		switch(t)
		{
			case "Kd ":
				str = string_delete(str,1,3);
				var _r = (real(string_copy(str, 1, string_pos(" ", str)))*255)>>0;
				str = string_delete(str, 1, string_pos(" ", str));    
				var _g = (real(string_copy(str, 1, string_pos(" ", str)))*255)>>0;
				var _b = (real(string_delete(str, 1, string_pos(" ", str)))*255)>>0;
				//var _a = 255;
				result[? mtlKey] = make_color_rgb(_r,_g,_b);
				break;
		}
	
	    file_text_readln(file);
	}
	file_text_close(file); 
	return result;


}
