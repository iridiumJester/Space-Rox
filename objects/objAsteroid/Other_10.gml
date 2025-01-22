/// @desc Take Damage

score += 20;

instance_destroy();
	
if(sprite_index == sprAsteroidLg) 
{
	repeat(2)
	{
		var aster = instance_create_layer(x,y,"Instances",objAsteroid);
		aster.sprite_index = sprAsteroidMd;
	}
	audio_play_sound(sfxHurt, 1, false,0.75);
}
else if(sprite_index == sprAsteroidMd) 
{
	repeat(2)
	{
		var aster = instance_create_layer(x,y,"Instances",objAsteroid);
		aster.sprite_index = sprAsteroidSm;
	}
	audio_play_sound(sfxHurt, 1, false,0.75);
}
else if(sprite_index == sprAsteroidSm) 
{
	audio_play_sound(sfxDie, 1, false,0.75);
}
repeat(10)
{
	instance_create_layer(x,y,"Instances",objDebris);
}