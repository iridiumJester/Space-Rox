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
	motion_add(image_angle, 0.05);
}

