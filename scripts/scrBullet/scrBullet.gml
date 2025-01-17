// @desc create_bullet
// @arg direction
// @arg speed
// @arg gun_type*

var _dir = argument[0];
var _spd = argument[1];

var _gun_type = -1;
if(argument_count > 2) _gun_type = argument[3];

// gun type
switch(_gun_type)
{
	case powerups.triple:
		
		break;
		
	case powerups.laser:
		
		break;
		
	default:
		audio_play_sound(sfxZap, 1, false,0.75);
		var inst = instance_create_layer(x,y,"Instances", objBullet);
		break;
}


	
with(inst){
	direction = _dir;
	speed = _spd;
}	
	
	inst.direction = image_angle;
	inst.image_angle = image_angle;
	sprite_index = sprShipShoot;
	alarm[0] = 0.1*60;