/// @description people move
if (life <= 0) {
	if (sprite_index != s_grave) {
		sprite_index = s_grave;
	}
	exit;
}

if (running) {
	x -= spd;
} 

if (!running && time_to_stand <= 0) {
	running = true;
	image_index = 0;
}


if (x < -32) {
	instance_destroy();
}
