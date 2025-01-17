/// @desc Powerup Overlay

draw_self();

// guns
if(guns != -1) 
{
	var alpha = min(1,alarm[1]/60);
	
	draw_sprite_ext(
		sprShipPowerups, guns, x,y, 
		image_xscale, image_yscale, 
		image_angle, image_blend, alpha
		);
}

// life
if(invincible) 
{	
	var alpha = min(1,alarm[2]/60);
	
	draw_sprite_ext(
		sprShipPowerups, powerups.extra_life, x,y, 
		image_xscale, image_yscale, 
		image_angle, image_blend, 
		alpha);
}