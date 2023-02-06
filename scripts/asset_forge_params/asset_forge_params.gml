// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function asset_forge_params(array){
	var n = array_length(array);
	var result = ds_map_create();
	for(var i =0;i<n;i++)
	{
		var s = string_split( array[i],":");
		if (array_length(s)==2)
		{
			result[? string_trim(s[0],true,true)] = string_trim(s[1],true,true);
		}
	}
	return result;
}