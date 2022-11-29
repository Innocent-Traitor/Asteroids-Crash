/// @description Point and Pausing

// Every 1000 points, grant user a new life
if bonusPoints >= 1000 {
	life += 1;
	bonusPoints -= 1000;
	audio_play_sound(newLife, 75, false);
}

// If user loses, check for keypress to restart
if lost = true {
	if keyboard_check_pressed(vk_anykey){
		room_restart();
	}
}

// Debug
if keyboard_check_pressed(ord("Q")) {
	debug = true;
}
if debug = true {
	switch (keyboard_key) {
		case ord("T"):
		break;
	}
}

 
// Quit upon Esc MUST BE LAST
if keyboard_check_pressed(vk_escape){
	game_end();
}