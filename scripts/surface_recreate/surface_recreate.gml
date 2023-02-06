// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function surface_recreate(surface,w,h){
	if (surface!=undefined){
		if (surface_exists(surface)){
			surface_free(surface);
		}
	}
	var surf = surface_create(w,h);
	return surf;
}