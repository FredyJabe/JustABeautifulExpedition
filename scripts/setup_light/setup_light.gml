// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_light(){
	
	draw_set_lighting(true);
	
	var colorAmbiant =0x555555;// color_interpolate(0,0xFFEDE3,0.10);
	var color1 = 0xCCCCCC;// color_interpolate(0,0xFFEDE3,0.50);
	var color2 = 0x444444;
	draw_light_define_ambient(0x222222);
	
	draw_light_define_point(0,-0,-1024,-1024,2048,colorAmbiant);
	draw_light_enable(0,true);

	/*
	
	draw_light_define_point(1,1024,-1024,-512,1024,color);
	draw_light_enable(1,true);
	draw_light_define_point(2,-1024,1024,-512,1024,color);
	draw_light_enable(2,true);
	draw_light_define_point(3,1024,1024,-512,1024,color);
	draw_light_enable(3,true);
	draw_light_define_point(4,0,0,-512,1024,color);
	draw_light_enable(4,true);
	*/
	
	
	
	draw_light_define_direction(5,-1,0.5,1,color1);
	draw_light_enable(5,true);
	
	draw_light_define_direction(6,1,-0.5,1,color2);
	draw_light_enable(6,true);
	
	
	
	//gpu_set_fog(true,c_black,10,50);
}