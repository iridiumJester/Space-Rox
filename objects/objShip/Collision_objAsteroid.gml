/// @desc Collision

lives -= 1;

instance_destroy();

repeat(10)
	{
		instance_create_layer(x,y,"Instances",objDebris);
	}

with(objGame)
{
	alarm[1] = 60;
}
audio_stop_all();
audio_play_sound(sfxDie, 1, false);