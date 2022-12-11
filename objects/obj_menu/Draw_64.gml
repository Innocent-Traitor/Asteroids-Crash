/// @description Game Menu

// Menu
draw_set_font(ft_fontLarge);
draw_set_halign(fa_center);
draw_text(500, 100, "High-Score: " + string(global.highscore));
draw_text_transformed(500, 150, "Asteroid", 2, 2, 0);
draw_text_transformed(500, 225, "Crash", 2, 2, 0);
draw_text_transformed(500, 350, "Press any button", 2, 2, 0);
draw_text_transformed(500, 425, "to start!", 2, 2, 0);

// Powerup Guide
draw_set_halign(fa_left);
draw_text(150, 575, "Tri-Shot");
draw_text(150, 675, "Invulnerability");
draw_text(150, 775, "Machine Gun");

// Leaderboard
if (nameChange == false) {
	draw_text_transformed(525, 525, "Player Name: " + string(LLPlayerName()), 0.5, 0.5, 0);
} else {
	draw_text_transformed(525, 525, "Player Name: " + string(keyboard_string), 0.5, 0.5, 0);
	draw_text_transformed(525, 500, "Press enter to confirm", 0.5, 0.5, 0);
}
draw_text_transformed(525, 550, "Leaderboard: \n" + string(LLHighscoresTopFormatted()), 0.5, 0.5, 0);




