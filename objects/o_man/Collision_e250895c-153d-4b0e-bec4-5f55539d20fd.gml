/// @description 
if (other.life <= 0) exit; // dead body

if (other.running) {
	if (running) {
		running = false;
		life -= other.damage *10;
		// new code ???
		show_message("terrible.");
		other.running = false;
		show_message("terrible.");
		other.life -= damage *10;
		//
	}
	time_to_stand = room_speed * 3;
	life -= other.damage;
} else if (running) {
	other.life -= damage;
	other.time_to_stand = room_speed * 3;
} 
