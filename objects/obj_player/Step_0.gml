/// @description Movement & Actions


//Remove Player invincible when they move
if invincible == true {
	// Stops powerup spawn timer to prevent duplicate ones
	alarm[0]++;
	if (keyboard_check_pressed(vk_anykey)) && (!keyboard_check_pressed(ord("P"))){
		// invincible = false;
		invincibleTimer = true
		image_speed = 0;
		image_index = 0;
		alarm[2] = 1;
		
	}
}
	
// Arrow Key Movement
if keyboard_check(vk_up) {
	if speed <= 10 {
	motion_add(image_angle, 0.1);
	}
}
if keyboard_check(vk_left) {
	image_angle += 4;
}
if keyboard_check(vk_right) {
	image_angle -= 4;
}

// Screen Wrap
move_wrap(true, true, 0);

// Shooting
if keyboard_check_pressed(vk_space) {
	switch (powerup) {
		case "Trishot": // Shoot 3 shots
			audio_play_sound(laserShoot, 5, false);
			instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle});
			instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle + 10});
			instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle - 10});
		break;
		case "MachGun":
			// Do nothing, this will be done via the Space Pressed Event.
		break;
		default: // This is both for no powerup, and for Invul
			audio_play_sound(laserShoot, 5, false);
			instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle});
		break;
	}
}

/*
instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle});
instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle + 10});
instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle - 10});
*/