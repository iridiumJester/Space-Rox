/// @desc

draw_set_color(c_fuchsia);
draw_text(10,5,"SCORE: " + string(score));
if (lives = 3) 
{	
	draw_set_color(c_lime);
}
else if (lives = 2) 
{	
	draw_set_color(c_yellow);
}
else if (lives = 1) 
{	
	draw_set_color(c_red);
}

draw_text(10,25,"LIVES: " + string(lives));