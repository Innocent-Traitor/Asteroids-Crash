/// @description Variables

global.mute = false;
nameChange = false;

ini_open("save.ini");
global.highscore = ini_read_real("global", "highscore", 0);
ini_close();











