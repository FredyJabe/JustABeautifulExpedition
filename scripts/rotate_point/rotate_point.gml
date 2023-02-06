function rotate_point(argument0, argument1, argument2) {
	var _x = argument0;
	var _y = argument1;
	var _degree = argument2;
	var radian = degtorad(-_degree);
	var s = sin(radian);
	var c = cos(radian);

	var xnew = _x * c - _y * s;
	var ynew = _x * s + _y * c;

	return [xnew,ynew];



}
