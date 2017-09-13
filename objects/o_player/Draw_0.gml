/// @description TEST
draw_self();
//draw_text(x,y,string(x));
if (time_to_stand > 0) {
	draw_text(x-16 ,y-16, "standing up.." +string(time_to_stand/room_speed)+"s");
}
