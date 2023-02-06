// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_create_2d(w,h,v){
	var arr = array_create(w);
	
	for(var _x = 0;_x<w;_x++)
	{
		arr[_x]=array_create(h,v);
	}
	return arr;
}