// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function distance_between_points(p1x,p1y,p2x,p2y){
	var dx = p2x-p1x;
	var dy = p2y-p1y;
	var sdx = dx*dx;
	var sdy = dy*dy;
	return sqrt(sdx+sdy);
}