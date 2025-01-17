/// @desc Key variables

score = 0;
lives = 3;
text_visible = true;

draw_set_font(fntText);

randomize();

enum powerups {
	triple,
	laser,
	extra_life
}