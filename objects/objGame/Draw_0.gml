/// @desc

gameInstructions = 
@"Score 1,000 points to win!

UP/DOWN: FORWARD/BACKWARD
LEFT/RIGHT: ROTATE
SPACE: SHOOT
"
;

switch(room) 
{
	case rmGame:
		if (score >= 800)
		{	
			draw_set_color(#0055ff);
		}
		else if (score >= 600) 
		{	
			draw_set_color(#0080ff);
		}
		else if (score >= 400) 
		{	
			draw_set_color(#00aaff);
		}
		else if (score >= 200) 
		{	
			draw_set_color(#00d5ff);
		}
		else
		{	
			draw_set_color(c_aqua);
		}
		draw_text(10,10,"SCORE: " + string(score));
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

		draw_text(10,30,"LIVES: " + string(lives));
		
		break;
		
	case rmStart:
		var c = c_fuchsia;
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			8+room_width/2, 100, "SPACE ROX!",
			3.5, 3.5, 0, c_red, c, c, c_red, 1
		);
		draw_text_color(
			room_width/2, 200, gameInstructions, 
			c_yellow, c_yellow, c_white, c_white, 1
		);
		draw_text_color(
			room_width/2, 335,  ">> PRESS ENTER TO START! <<",
			c_lime, c_aqua, c_aqua, c_lime, 1
		);
		
		draw_set_halign(fa_left);
		
		break;
	
	case rmWin:
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			10+room_width/2, 170, "YOU WON!",
			3.5, 3.5, 0,
			c_aqua, c_lime, c_lime, c_aqua, 1
		);
		draw_text_color(
			room_width/2, 270,
			">> PRESS ENTER TO RESTART <<",
			c_yellow, c_yellow, c_white, c_white, 1
		);
		draw_set_halign(fa_left);
		
		break;
	
	case rmGameover:
		draw_set_color(c_red);
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			room_width/2, 135, "GAME OVER",
			3.5, 3.5, 0,
			c_dkgray, c_red, c_red, c_dkgray, 1
		);
		draw_text_color(
			room_width/2, 230,
			"FINAL SCORE: " + string(score),
			c_fuchsia, c_white, c_white, c_fuchsia, 1
		);
		draw_text_color(
			room_width/2, 295,
			">> PRESS ENTER TO RESTART <<",
			c_yellow, c_yellow, c_white, c_white, 1
		);
		draw_set_halign(fa_left);
		
		break;
}