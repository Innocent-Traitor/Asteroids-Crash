/// @description Point Bonus Logic

// Every 1000 points, grant user a new life
if bonusPoints >= 1000 {
	life += 1;
	bonusPoints -= 1000
}

if lost = true{
	if keyboard_check_pressed(vk_anykey){
		room_restart();
	}
}