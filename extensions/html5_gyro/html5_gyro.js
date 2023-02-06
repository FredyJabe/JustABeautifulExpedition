var tiltX = 0;
var tiltY = 0;
var tiltZ = 0;

function deviceOrientationHandler(event) {
	tiltZ = event.alpha;
	tiltX = event.beta;
	tiltY = event.gamma;
}

function html5_gyro_get_tilt_x()
{
	return tiltX;
}

function html5_gyro_get_tilt_y()
{
	return tiltY;
}


function html5_gyro_get_tilt_z()
{
	return tiltZ;
}


function html5_gyro_init()
{
	if (window.DeviceOrientationEvent) {
	  window.addEventListener('deviceorientation', deviceOrientationHandler, false);
	  return 1;
	}
	else{
		return 0;
	}
	
}

