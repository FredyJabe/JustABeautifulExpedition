// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_split(str,sep){
	var cpt=0;
	var result = [];
	var tmpStr = str;
	for(var i=1;i<=string_length(tmpStr);i++)
	{
		if (string_char_at(tmpStr,i)==sep)
		{
			var s = string_copy(tmpStr,1,i-1);
			tmpStr = string_copy(tmpStr,i+1,string_length(tmpStr)-i);
			i=0;
			result[cpt++]=s;
		}
	}
	if (tmpStr!="")
	{
		result[cpt]=tmpStr;
	}
	return result;
}