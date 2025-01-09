/// @desc

score += 25;

instance_destroy();

with(other) 
{
	instance_destroy();
	
	if(sprite_index == sprAsteroidLg) 
	{
		repeat(2)
		{
			var aster = instance_create_layer(x,y,"Instances",objAsteroid);
			aster.sprite_index = sprAsteroidMd;
		}
	}
	else if(sprite_index == sprAsteroidMd) 
	{
		repeat(2)
		{
			var aster = instance_create_layer(x,y,"Instances",objAsteroid);
			aster.sprite_index = sprAsteroidSm;
		}
	}
	else if(sprite_index == sprAsteroidSm) 
	{
		audio_play_sound(sfxDie, 1, false,0.75);
	}
	repeat(10)
	{
		instance_create_layer(x,y,"Instances",objDebris);
	}
}