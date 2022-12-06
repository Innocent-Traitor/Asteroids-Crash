/// @description MachGun Powerup

if powerup = "MachGun" {
	if alarm[3] <= 0 {
		audio_play_sound(laserShoot, 5, false);
		instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle});
		alarm[3] = 5;
	}
}	






