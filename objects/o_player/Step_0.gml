/// @description 
if (time_to_stand > 0) {
	time_to_stand -= spd_stand;
	if (time_to_stand <= 0) {
		running = true;
	}
}

/*
global.hint = false;
var inst = instance_nearest(x, y, o_child);
if (inst != noone) {
	if (point_distance(x, y, inst.x, inst.y) < 50) {
		if (inst.running == false && inst.life > 0) {
			if (point_distance(x, y, inst.x, inst.y) >= 32) {
				global.hint = true;
				global.lucky_boy = inst;
				if (keyboard_check(ord("H"))) {
					inst.time_to_stand -= spd_stand;
				}
			}
		}
	}	
} 
*/ 

xDir = 0;
yDir = 0;

// running or not
if (!running) {
	sprite_index = s_player_fall;
	exit;
} else {
	sprite_index = s_player_running;
}

xDir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yDir = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
/*
if (xDir < 0) image_xscale = -1;
else if (xDir >0 )image_xscale = 1;
else image_index 
*/
if (xDir != 0) {
	sprite_index = s_player_running;
	if (xDir < 0) image_xscale = -1;
	else image_xscale = 1;
} else sprite_index = s_player_idle;


x = clamp(x + xDir * spd, 16, room_width-16);
if (yDir > 0 && y < 192) {
	y += yDir * 32;
} else if (yDir <0 && y > 64) {
	y += yDir * 32;
}


/*
// switch state
if (keyboard_check_pressed(vk_space)) {
	if (image_angle == 0) {
		image_angle += 90;
	} else {
		image_angle -= 90;
	}
}
*/
