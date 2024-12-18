/// @desc

score += 10;

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
	repeat(10)
	{
		instance_create_layer(x,y,"Instances",objDebris);
	}
}