/// @desc

gameInstructions = 
@"Score 1,000 points to win!

UP/DOWN: FORWARD/BACKWARD
LEFT/RIGHT: ROTATE
SPACE: SHOOT

>> PRESS ENTER TO START! <<
"
;

switch(room) 
{
	case rmGame:
		draw_set_color(c_fuchsia);
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
		draw_set_halign(fa_center);
		draw_text_transformed(
			room_width/2, 100, "SPACE ROX!",
			3, 3, 0
		);
		draw_text(room_width/2, 200, gameInstructions);
		draw_set_halign(fa_left);
		
		break;
	
	case rmWin:
		draw_set_halign(fa_center);
		draw_text_transformed(
			room_width/2, 150, "YOU WON!",
			3, 3, 0
		);
		draw_text(
			room_width/2, 250,
		"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		
		break;
	
	case rmGameover:
		draw_set_halign(fa_center);
		draw_text_transformed(
			room_width/2, 150, "GAME OVER",
			3, 3, 0
		);
		draw_text(
			room_width/2, 250,
		"FINAL SCORE: " + string(score)
		);
		draw_text(
			room_width/2, 300,
		"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		
		break;
}