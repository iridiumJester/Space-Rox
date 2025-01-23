// @desc create_bullet

var _gun_type = -1;

function create_bullet(_x,_y)
{
	_x = x;
	_y = y;
	
	var inst = instance_create_layer(x,y,"Instances", objBullet);
	
	audio_play_sound(sfxZap, 1, false,0.75);
	
	inst.direction = image_angle;
	inst.image_angle = image_angle;
	sprite_index = sprShipShoot;
	alarm[0] = 0.1*60;
}	

function three_bullet() 
{
	var _dir = direction;
	var _sep = 12;
	
	create_bullet(x,y);
	create_bullet(x+10,y+10);
	create_bullet(x-10,y-10);
	// create_bullet(x+lengthdir_x(_sep,_dir+90),y+lengthdir_y(_sep,_dir+90));
	// create_bullet(x+lengthdir_x(_sep,_dir-90),y+lengthdir_y(_sep,_dir-90));
}