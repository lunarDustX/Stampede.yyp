/// @description 
draw_self();
// 0. life state
if (life <= 0) {
	//draw_set_color(c_red);
	//draw_text(x, y, "dead");
	//draw_set_color(c_white);
} else {
	if (life != 100) { // only child
		//draw_text(x, y-16, string(round(life)));
		draw_healthbar(x-10, y-16, x+10, y-15, life*2, c_gray, c_red, c_green, 0, true,false);
	}
}

// 1. help range
if (!running && life > 0) {
	if (hurting) {
		draw_text(x-16, y-32, "oh!");
	} else {
		draw_text(x-16, y-32, "help!");
	}
}