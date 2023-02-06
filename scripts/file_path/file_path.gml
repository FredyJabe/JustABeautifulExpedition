function file_path(argument0) {
	var fname = argument0;
	var result = "";
	while (string_pos("/",fname)>0)
	{
		result += string_copy(fname,1,string_pos("/",fname));
		fname = string_delete(fname,1,string_pos("/",fname));
	}
	return result;


}
