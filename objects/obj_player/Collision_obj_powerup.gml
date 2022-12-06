/// @description Power up Collison

// Give Powerup depending on which power spawned.
switch (obj_powerup._power) {
	case 0:
		powerup = powerupArray[0]; // Trishot
	break;
	case 1:
		powerup = powerupArray[1]; // Invul
		image_speed = 1;
	break;
	case 2:
		powerup = powerupArray[2]; // MachGun
	break;
}

alarm[1] = 900;
obj_game.points += 100;
obj_game.bonusPoints += 100;
audio_play_sound(powerUp, 50, false);
instance_destroy(other);
