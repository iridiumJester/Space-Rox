/// @desc 

// turn left
if (keyboard_check(vk_left)) 
{
	image_angle += 5;
}

// turn right
if (keyboard_check(vk_right)) 
{
	image_angle -= 5;
}

// movement
if (keyboard_check(vk_up)) 
{
	if (speed <= 3)
	{
		motion_add(image_angle, 0.05);
	}
}

// movement
if (keyboard_check(vk_down)) 
{
	if (speed <= 3)
	{
		motion_add(image_angle, -0.05);
	}
}

// slow momentum when not pressing up. ITS SO HARD TO CONTROL
if (speed > 0) && not (keyboard_check(vk_up)) 
{
	speed -= 0.0075
}


// bullet
if (keyboard_check_pressed(vk_space)) 
{
	create_bullet(x,y);
}

move_wrap(true,true,sprite_width/2);