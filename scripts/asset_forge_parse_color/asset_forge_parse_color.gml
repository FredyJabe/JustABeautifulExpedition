// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function asset_forge_parse_color(str){
	var s =string_split( string_copy(str,6,string_length(str)-6),",");
	var r = ((real(string_trim(s[0],true,true))*255)>>0) & 0xff;
	var g = ((real(string_trim(s[1],true,true))*255)>>0) & 0xff;
	var b = ((real(string_trim(s[2],true,true))*255)>>0) & 0xff;
	var a = ((real(string_trim(s[3],true,true))*255)>>0) & 0xff;
	
	return (r<<24) | (g<<16) | (b<<8) | a;
}