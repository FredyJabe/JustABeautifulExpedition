// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_create_3d(w,h,l,v){
	var arr = array_create(w);
	
	for(var _x = 0;_x<w;_x++)
	{
		var arry=array_create(h);
		for(var _y=0;_y<h;_y++)
		{
			arry[_y]=array_create(l,v);
		}
		arr[_x]=arry
	}
	return arr;
}