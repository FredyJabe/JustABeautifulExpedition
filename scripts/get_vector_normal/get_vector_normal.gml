function get_vector_normal(argument0) {
	var vect = argument0;
	var dist = sqrt(vect[0]*vect[0]+vect[1]*vect[1]+vect[2]*vect[2]);
	var vectNormal = [vect[0]/dist,vect[1]/dist,vect[2]/dist];
	return vectNormal


}
