/// @desc Init asteroids + Music

text_visible = true;

if (room == rmStart) 
{
	audio_play_sound(mscStartLoop, 2, true);
}

if (room == rmGame) 
{
	if (lives == 3) 
	{
	text_visible = false;
	alarm_set(5, 0.5*60);
	}
	else
	{
	alarm_set(2, 0.25*60);
	}
	
	repeat(6)
	{
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);
		instance_create_layer(xx, yy, "Instances", objAsteroid);
	}
	
	alarm[0] = 60;
}