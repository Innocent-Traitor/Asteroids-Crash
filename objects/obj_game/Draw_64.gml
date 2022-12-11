/// @description Draw Text


// Debug
if debug = true {
	draw_text(500, 50, "DEBUG");
	draw_text(500, 100, "Speed: " + string(obj_player.speed)); //hardcore mode: dont die or else you crash
	draw_text(500, 150, "FPS: " + string(fps));
}

// HUD Check: Pausing > Lost Screen > HUD
// Pausing
if paused == true {
	if !surface_exists(paused_surf) {
		if paused_surf == -1 {
			instance_deactivate_all(true);
		}
	paused_surf = surface_create(room_width, room_height);
	surface_set_target(paused_surf);
	draw_surface(application_surface, 0, 0);
	surface_reset_target();
	}
	else {
		// Sets the pausing surface and coloring
		draw_surface(paused_surf, 0, 0);
		draw_set_alpha(0.5);
		draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		// Pausing Text
		draw_set_halign(fa_center);
		draw_set_font(ft_fontLarge);
		draw_text(500, 250, "PAUSED");
		draw_text(500, 400, "Press R to restart");
		draw_text(500, 500, "Press ESC to quit");
		draw_set_halign(fa_left);
    }
}
	
// Lost Screen
else if lost = true {
	draw_set_halign(fa_center);
	draw_set_font(ft_fontLarge);
	draw_text(500, 200, "You Lose");
	draw_text(500, 300, "Total Score: " + string(points));
	draw_text(500, 400, "Press any button to restart");
	draw_text(500, 550, "Leaderboard: \n" + string(LLHighscoresTopFormatted()));
	draw_set_halign(fa_left);
}

// HUD
else {
draw_set_font(ft_hud);
draw_text(10, 10, "Score: " + string(points));
draw_text(10, 30, "Lives:");
var _x = 15;
repeat(life) {
draw_sprite_ext(spr_player, 0, _x, 60, .25, .25, 90, c_white, .5);
_x += 20;
}
}