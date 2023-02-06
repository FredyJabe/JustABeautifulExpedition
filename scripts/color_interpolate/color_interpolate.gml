// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function color_interpolate(c1,c2,r){
	var r1 = (c1>>16) & 0xff
	var r2 = (c2>>16) & 0xff
	var g1 = (c1>>8) & 0xff
	var g2 = (c2>>8) & 0xff
	var b1 = (c1) & 0xff
	var b2 = (c2) & 0xff;
	
	var r3 = lerp(r1,r2,r)>>0;
	var g3 = lerp(g1,g2,r)>>0;
	var b3 = lerp(b1,b2,r)>>0;
	
	return (r3<<16) | (g3<<8) | (b3);
}