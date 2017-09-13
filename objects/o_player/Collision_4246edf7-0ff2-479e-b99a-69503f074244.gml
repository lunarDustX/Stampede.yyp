/// @description 
if (other.life <= 0) exit; // dead body

if (running) {
	// child
	other.life -= damage;
	other.hurting = true;
	other.time_to_stand = room_speed * 3;
	if (other.running) {
		other.running = false;
		life -= other.damage * 10;
	}
} else {
	if (other.running) {
		time_to_stand = room_speed * 3;
		life -= other.damage;
	}
}

