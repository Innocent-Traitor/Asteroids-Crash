/// @description Draw Text

draw_text (10, 10, "Score: " + string(points));
draw_text (10, 25, "Lives: " + string(life));

if debug = true {
	draw_text(500, 50, "DEBUG");
}

