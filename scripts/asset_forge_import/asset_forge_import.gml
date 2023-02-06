// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function asset_forge_import(filename,objpath){

	if (!ds_map_exists(static_draw,"undefined"))
	{
		static_vbuff = vertex_create_buffer();
		vertex_begin(static_vbuff,global.vertex_format_obj_with_normal);
		static_draw[? "undefined"] = static_vbuff;
	}
	else
	{
		static_vbuff = static_draw[? "undefined"];
	}
	asset_forge_init_collections()
	
	var currentSection = 0;
	var obj_imported = false;
	if (objpath!="" && objpath!=undefined && objpath!=noone)
	{
		if (file_exists(objpath))
		{
			load_obj_into_vbuffer(objpath,static_vbuff,c_white,0,0,0,[1,1,1],-180,false);
			obj_imported = true;
		}
	}
	if (file_exists(filename))
	{
		var file = file_text_open_read(filename)
		if (file!=-1)
		{
			while(!file_text_eof(file))
			{
				var line =string_trim( file_text_read_string(file),true,true)
				if (line!="")
				{
					if (line==":materials")
					{
						currentSection = 1;
					}
					if (line==":models")
					{
						currentSection = 2;
					}
					
					if (string_char_at(line,1)=="[" &&
						string_char_at(line,string_length(line))=="]")
					{
						line = string_copy(line,2,string_length(line)-2)
						var params = asset_forge_params(string_split(line,";"));
						
						if (currentSection==2)
						{
							var collection	= params[? "collection"];
							var item_type	= params[? "type"];
							var obj_path	= "collections/"+collection+"/"+item_type+".obj";
							if (file_exists(obj_path))
							{
								var pos  = asset_forge_parse_vector(params[? "position"]);
								var scal = asset_forge_parse_vector(params[? "scale"]);
								var item_info = undefined;
								var rot  = asset_forge_parse_vector(params[? "rotation"]);
								if (ds_map_exists(global.collections,collection))
								{
									if (ds_map_exists(global.collections[? collection],item_type))
									{
										item_info = global.collections[? collection][? item_type];
									}
								}
								asset_forge_add_object(item_info,pos,scal,rot,obj_path,!obj_imported);
							}
							ds_map_destroy(params);
						}
					}
					
				}
				file_text_readln(file);
			}
		}
		file_text_close(file)
	}
	return undefined;
}