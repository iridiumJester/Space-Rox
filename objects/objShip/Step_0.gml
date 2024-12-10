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

// bullet
if (keyboard_check_pressed(vk_space)) 
{
	var inst = instance_create_layer(x,y,"Instances", objBullet);
	inst.direction = image_angle;
}

move_wrap(true,true,sprite_width/2);