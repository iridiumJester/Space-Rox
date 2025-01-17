/// @desc

audio_play_sound(sfxBlip, 1, false);

with(other)
{
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type)
{
	case powerups.extra_life:
		lives += 1;
		invincible = true;
		alarm[2] = 2 * 60;
		break;
	
	default:
		// alter bullets
		guns = powerup_type;
		alarm[1] = 15 * 60;
		break;
}