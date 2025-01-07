/// @desc Spawn asteroid every second
if (room != rmGame) 
{
	exit;
}

if(choose(0,1) == 0) 
{
	// vertical
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
}
else 
{
	// horizontal
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Instances", objAsteroid);

alarm[0] = 4*room_speed;