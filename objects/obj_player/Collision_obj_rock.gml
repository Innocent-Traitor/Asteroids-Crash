/// @description Rock Collision and Death

// If collide with Rock, die and respawn after 2 seconds
if invincible == false {
effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
obj_game.life -= 1;
obj_game.alarm[0] = 120;
audio_play_sound(playerDeath, 100, false);
}