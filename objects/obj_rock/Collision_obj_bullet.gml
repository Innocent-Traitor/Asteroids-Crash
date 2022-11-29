/// @description Bullet Collision

// Collision Check = if collided, destory and do particles
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);
direction = random(360);
audio_play_sound(choose(rockDeath1, rockDeath2, rockDeath3), 50, false);

// Rock Destruction/Creation Logic
if sprite_index == spr_rock_big {
	// Check to see if it's a big rock, if so, create 2 small rock
	sprite_index = spr_rock_small;
	instance_copy(true);
} else if instance_number(obj_rock) < 12 {
	// If there are less than 12 rocks, respawn one
	sprite_index = spr_rock_big;
	x = -100;
} else {
	// Destroy small rocks if there are more than 12
	instance_destroy();
}

// Do Points when rock die
obj_game.points += 50;
obj_game.bonusPoints += 50;