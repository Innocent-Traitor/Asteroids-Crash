/// @description Restart

if life >= 1 {
	instance_create_layer(500, 500, "Instances", obj_player);
}

// Restarts the game if the player is out of lives
if life == 0 {
	instance_create_layer(250, 250, "Instances", obj_lose);
	lost = true;
	audio_play_sound(youLose, 100, false);
} 
