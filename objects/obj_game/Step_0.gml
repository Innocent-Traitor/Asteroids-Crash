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

// Audio Management
if keyboard_check_pressed(ord("M")) {
	global.mute = !global.mute;
}
switch (global.mute) {
	case true:
		audio_set_master_gain(0, 0);
		break;
	case false:
		audio_set_master_gain(0, 1);
		break;
}

// Debug
if keyboard_check_pressed(ord("Q")) {
	debug = true;
}
if debug = true {
	switch (keyboard_key) {
		// Force Create Powerup
		case ord("T"):
		instance_create_layer(500, 500, "Instances", obj_powerup);
		break;
	}
}

// Pausing
if keyboard_check_pressed(ord("P")) {
	paused = !paused;
	if paused == false {
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;
	}
	if paused == true {
		alarm[0]++;
		if instance_exists(obj_player) {
			obj_player.alarm[0]++;
			obj_player.alarm[1]++;
		}
	}
}
	
// Restarting while paused
if (paused = true) && keyboard_check_pressed(ord("R")) {
	room_restart();
}
 
// Quit upon Esc MUST BE LAST
if keyboard_check_pressed(vk_escape){
	game_end();
}