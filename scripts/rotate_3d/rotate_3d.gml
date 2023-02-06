// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rotate_3d(pitch, roll, yaw,px,py,pz) {
    var cosa = cos(yaw);
    var sina = sin(yaw);

    var cosb = cos(pitch);
    var sinb = sin(pitch);

    var cosc = cos(roll);
    var sinc = sin(roll);

    var Axx = cosa*cosb;
    var Axy = cosa*sinb*sinc - sina*cosc;
    var Axz = cosa*sinb*cosc + sina*sinc;

    var Ayx = sina*cosb;
    var Ayy = sina*sinb*sinc + cosa*cosc;
    var Ayz = sina*sinb*cosc - cosa*sinc;

    var Azx = -sinb;
    var Azy = cosb*sinc;
    var Azz = cosb*cosc;

    return [Axx*px + Axy*py + Axz*pz,
			Ayx*px + Ayy*py + Ayz*pz,
			Azx*px + Azy*py + Azz*pz];
}