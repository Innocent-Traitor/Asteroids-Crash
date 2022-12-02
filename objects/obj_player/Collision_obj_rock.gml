/// @description Rock Collision and Death

// If collide with Rock, die and respawn after 2 seconds
switch (invincible) {
	case false:
		effect_create_above(ef_firework, x, y, 1, c_white);
		instance_destroy();
		obj_game.life--;
		obj_game.alarm[0] = 120;
		instance_destroy(obj_powerup);
		audio_play_sound(playerDeath, 100, false);
		break;
	case true:
		if invincibleTimer == true {
			effect_create_above(ef_explosion, x, y, 1, c_white);
			instance_destroy(other);
			audio_play_sound(choose(rockDeath1, rockDeath2, rockDeath3), 50, false);
		}
		break;
}


