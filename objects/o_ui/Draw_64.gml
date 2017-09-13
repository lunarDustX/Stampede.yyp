/// @description Draw UI
draw_set_color(c_gray);
draw_rectangle(0, 0, view_wport[0], 40, false);
draw_rectangle(0, view_hport[0]- 24, view_wport[0], view_hport[0],false);
draw_set_color(c_white);
draw_text(10, 10, "life: "+string(round(o_player.life)));
draw_text(view_wport[0]-200, 10, "victim:" + string(global.victim));
draw_text(view_wport[0] div 2 -80, 10, "distance: " + string(round(o_player.x)));

if (global.hint) {
	draw_set_color(c_yellow);
	draw_text(view_wport[0] div 2-50, view_hport[0]-20, "Hold H to help.");
	draw_set_color(c_white);
}