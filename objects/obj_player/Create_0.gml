/// @description Set player invincible

image_speed = 1;
image_index = 1;
invincible = true;
invincibleTimer = false;

// Powerups
powerupArray = ["Trishot", "Invul", "MachGun", "None"];
powerup = powerupArray[3];


// Once player moves, start powerup spawn timer
alarm[0] = random_range(600, 1800);


