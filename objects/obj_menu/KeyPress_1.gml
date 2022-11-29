/// @description Go to Game

// If M is pressed when starting, start the game mute
if keyboard_check_pressed(ord("M")) {
	global.mute = !global.mute;
}

// Go to game
room_goto(rm_game);

