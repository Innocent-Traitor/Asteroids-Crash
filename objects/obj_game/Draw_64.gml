/// @description Draw Text

// HUD
draw_text (10, 10, "Score: " + string(points));
draw_text (10, 25, "Lives: " + string(life));

// Debug
if debug = true {
	draw_text(500, 50, "DEBUG");
}

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
		draw_surface(paused_surf, 0, 0);
		draw_set_alpha(0.5);
		draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_sprite(spr_pause, 0, 300, 300);
		draw_set_halign(fa_left);
    }
}