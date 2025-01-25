/// @description Insert description here
// You can write your code in this editor

if(!on_cooldown){
	
	on_cooldown = true;
	alarm[0] = .3 *60;
	move_bounce_all(false);
	image_blend = other.associated_Player.image_blend	

	if(other.associated_Player.active_powerup == powerups.Multi)
	{
		obj_game.alarm[2] = 2*60;
		other.associated_Player.active_powerup = powerups.None
		other.associated_Player.alarm[0] = -1;
		var new_projectile = instance_create_layer(x,y,"Instances", obj_Projectile);
		new_projectile.direction = direction +10;
		new_projectile.speed = max_speed;
		new_projectile.on_cooldown = true;
		new_projectile.alarm[0] = .3*60;
		new_projectile.image_blend = image_blend;
		new_projectile = instance_create_layer(x,y,"Instances", obj_Projectile);
		new_projectile.direction = direction -10;
		new_projectile.speed = max_speed;
		new_projectile.on_cooldown=true;
		new_projectile.alarm[0] = .3*60;
		new_projectile.image_blend = image_blend;
	}
	
	
	//if (LastHit == 0)
	//{	
	//	LastHit = other;
	//	image_blend = LastHit.associated_Player.image_blend;
	//}
	//if (LastHit.associated_Player.image_blend == c_red || LastHit.associated_Player.image_blend == c_blue)
	//{	
	//	LastHit = other;
	//	image_blend = LastHit.associated_Player.image_blend;
	//}
	
	speed = max_speed;
}