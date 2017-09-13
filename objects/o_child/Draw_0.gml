/// @description draw pulling up bar
event_inherited();
if (time_to_stand < 90 && time_to_stand > 0) {
	if (keyboard_check(ord("H")) && global.lucky_boy == self) {
		draw_set_color(c_yellow);
		var p = round((90-time_to_stand)/90*100);
		draw_text(x+16,y, string(p)+"%");
		draw_set_color(c_white);
	}
}
