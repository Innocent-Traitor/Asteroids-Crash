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
// Need to cap player speed 
if keyboard_check(vk_up) {
	motion_add(image_angle, 0.1);
}
if keyboard_check(vk_left) {
	image_angle += 4;
}
if keyboard_check(vk_right) {
	image_angle -= 4;
}

/* Switch Based Movement
 Not using this for the time being as it causes issues when shooting
 when shooting, it breaks the switch and stops player movement
switch (keyboard_key) {
	case vk_up:
		motion_add(image_angle, 0.1);
		break;
	case vk_left:
		image_angle += 4;
		break;
	case vk_right:
		image_angle -= 4;
		break;
	default:
		break;
}
*/

// Screen Wrap
move_wrap(true, true, 0);


// Shooting
if keyboard_check_pressed(vk_space) {
	// Standard Shooting
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
