/// @description 
event_inherited();
if (life <= 0) exit;

if (running) {
	sprite_index = s_child_running;
	image_xscale = -1;
} else {
	sprite_index = s_child_fall;
	if (global.hint && self == global.lucky_boy) {
		image_index = 1;
	} else if (hurting) {
		image_index = 2;	
	} else {
		image_index = 0;
	}
}
hurting = false;