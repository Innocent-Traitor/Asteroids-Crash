/// @description Go to Game

if (nameChange = true) {
	
} else {
// If M is pressed when starting, start the game mute
if (keyboard_check_pressed(ord("M"))) {
	global.mute = !global.mute;
// If C is pressed, change player name
} else if (keyboard_check_pressed(ord("C"))){
	nameChange = true;
	keyboard_string = "";
}
}

// Confirms Player Name and starts the game
if (keyboard_check_pressed(vk_enter)){
	LootLockerSetPlayerName(keyboard_string);
	nameChange = false;
	room_goto(rm_game);
}


if (nameChange == false) {
	// Go to game
	room_goto(rm_game);
}
