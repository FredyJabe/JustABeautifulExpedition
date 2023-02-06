// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_trim(s,atstart,atend){
	var result = s

	while (atstart && (string_length(result)>0) && (string_pos(" ",result)==1))
	{
		result = string_copy(result,2,string_length(result)-1);
	}
	while(atend && (string_length(result)>0) && (string_last_pos(" ",result) == string_length(result)))
	{
		result = string_copy(result,1,string_length(result)-1);
	}
	return result;
}