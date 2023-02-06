// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_find_index(array,value){
	var nb = array_length(array);
	for(var i=0;i<nb;i++){
		if (array[i]==value) return i;
	}
	return -1;
}