/// @description Power up Collison

instance_destroy(other);
poweredup = true;
alarm[1] = 900;
obj_game.points += 100;
obj_game.bonusPoints += 100;
audio_play_sound(powerUp, 50, false);