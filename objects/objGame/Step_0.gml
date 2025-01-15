/// @desc Change rooms

if (keyboard_check_pressed(vk_enter))
{
	switch(room) 
	{
		case rmStart:
			text_visible = false;
			audio_stop_sound(mscStartLoop);
			audio_play_sound(sfxBlip, 2, false, 0.75);
			audio_play_sound(mscStartLoopEnd, 2, false);
			alarm_set(2, 2*60);
			alarm_set(3, 1*60);
			break;
		
		case rmWin:
		case rmGameover:
			text_visible = false;
			audio_play_sound(sfxBlip, 2, false, 0.75);
			alarm_set(3, 0.5*60);
			break;
	}
}

if (room == rmGame) 
{
	if (score >= 1000) 
	{
		room_goto(rmWin);
		audio_stop_all();
		audio_play_sound(sfxWin, 1, false);
	}

	if (lives <= 0) 
	{
		room_goto(rmGameover);
		audio_stop_all();
		audio_play_sound(sfxLose, 1, false);
	}
}