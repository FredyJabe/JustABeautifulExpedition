// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_obj_animations(fpath,count){
	
	
	if (!variable_global_exists("animation_cache"))
	{
		global.animation_cache = ds_map_create();
	}
	
	if (ds_map_exists(global.animation_cache ,fpath))
	{
		return global.animation_cache[? fpath];
	}
	
	var result = ds_list_create();
	if (!directory_exists("animations"))
	{
		directory_create("animations")
	}
	var fname_zip = file_name(fpath);
	fname_zip = string_copy(fname_zip,1,string_pos(".",fname_zip)-1);
	var destPath = "animations/"+fname_zip;
	if (!directory_exists(destPath))
	{
		directory_create(destPath);
	}
	zip_unzip(fpath,destPath);
	
	for(var i=1;i<=count;i++)
	{
		var s = string_repeat("0",6-string_length(string(i)))+string(i)
		var obj_file =  destPath+"/"+ fname_zip+"_"+s+".obj"
		var buff_file = destPath+"/"+fname_zip+"_"+s+".sav";
		show_debug_message("Loading "+fname_zip+" ..."+string(i)+"/"+string(count));
		var vbuff = undefined;
		if (!file_exists(buff_file))
		{
			if (file_exists(obj_file))
			{
				vbuff = load_obj(obj_file,c_white,false,false);
				var buff = buffer_create_from_vertex_buffer(vbuff,buffer_fixed,buffer_u32);
				buffer_save(buff,buff_file);
				buffer_delete(buff);
			}
		}
		else
		{
			var buff = buffer_load(buff_file);
			vbuff = vertex_create_buffer_from_buffer(buff,global.vertex_format_obj_with_normal);
			buffer_delete(buff);
		}
		if (vbuff!=undefined)
		{
			vertex_freeze(vbuff);
			ds_list_add(result,vbuff);
		}
		
	}
	
	 global.animation_cache[? fpath] = result;
	return result;
}