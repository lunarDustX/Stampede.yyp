/// @description fall down
if (other.life <= 0) exit; // dead body

if (other.running) {
	if (running) {
		running = false;
		life -= other.damage * 10;
	}
	time_to_stand = room_speed * 3;
	life -= other.damage;
} else {
	other.life -= damage;
	other.time_to_stand = room_speed * 3;
}
