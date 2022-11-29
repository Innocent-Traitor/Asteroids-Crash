/// @description Movement & Actions


//Remove Player invincible when they move

if keyboard_check_pressed(vk_anykey){
	invincible = false;
	image_speed = 0;
	image_index = 0;
}

// Arrow Key Movement
if keyboard_check(vk_up) {
	motion_add(image_angle, 0.1);
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
	if poweredup = false{
		audio_play_sound(laserShoot, 5, false);
		instance_create_layer(x, y, "Instances", obj_bullet,
		{
			speed : 10,
			direction : image_angle
		});
	} else if poweredup = true {
		audio_play_sound(laserShoot, 5, false);
		// If powered up, shoot 3 bullets are the same time
		instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle});
		instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle + 10});
		instance_create_layer(x, y, "Instances", obj_bullet, {speed : 10, direction : image_angle - 10});
	}
}

