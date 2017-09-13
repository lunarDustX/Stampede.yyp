/// @description 
if (o_player.life <= 0) {
	show_message("Game Over!");
}

// fail pulling up
if (!keyboard_check(ord("H"))) {
	with (o_child) {
		if (!running && time_to_stand < room_speed *3) {
			time_to_stand = room_speed * 3;
		}
	}
}

global.hint = false;
var inst = instance_nearest(o_player.x, o_player.y, o_child);
if (inst != noone) {
	if (point_distance(o_player.x, o_player.y, inst.x, inst.y) < 50) {
		if (inst.running == false && inst.life > 0) {
			if (point_distance(o_player.x, o_player.y, inst.x, inst.y) >= 32) {
				global.hint = true;
				global.lucky_boy = inst;
				if (keyboard_check(ord("H"))) {
					inst.time_to_stand -= inst.spd_stand;
				}
			}
		}
	}	
}  

// below for test
// Restart Game
if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}
