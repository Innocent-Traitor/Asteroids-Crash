/// @description Restart

if life >= 1 {
	instance_create_layer(500, 500, "Instances", obj_player);
}

// Restarts the game if the player is out of lives
if life == 0 {
	audio_play_sound(youLose, 100, false);
	lost = true;
	// If score higher than highscore, make points the new highscore
	if points > global.highscore {
		global.highscore = points;
		ini_open("save.ini");
		ini_write_real("global", "highscore", global.highscore);
		ini_close();
		LootLockerSubmitScore("9462", string(points));
	}
} 
