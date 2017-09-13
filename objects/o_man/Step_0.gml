/// @description 
event_inherited();
if (life <= 0) exit;




if (running) {
	sprite_index = s_man_running;
	image_xscale = dir;
} else {
	sprite_index = s_man_fall;
	if (global.hint && self == global.lucky_boy) {
		image_index = 1;
	} else if (hurting) {
		image_index = 2;	
	} else {
		image_index = 0;
	}
}
hurting = false;

/*
if (running) {
	sprite_index = s_man_running;
	image_xscale = dir;
} else {
	sprite_index = s_man;
}
*/