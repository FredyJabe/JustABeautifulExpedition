// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function asset_forge_parse_vector(str){
	var s = string_split(string_copy(str,2,string_length(str)-2),",");
	var _x = real(string_trim(s[0],true,true));
	var _y = real(string_trim(s[1],true,true));
	var _z = real(string_trim(s[2],true,true));
	
	return [_x,_y,_z];
}