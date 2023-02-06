// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_angle(center_x,center_y,point_x,point_y){
	return arctan2(-(point_y-center_y),(point_x-center_x))*180 / pi;
}