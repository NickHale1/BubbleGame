/// @description Insert description here
// You can write your code in this editor

// Set cooldown false if hitting different paddle than the most
//    recent one to hit it

audio_play_sound(snd_ball_tap, 1.0, false);
if (on_cooldown and projectileOwner != other.associated_Player) {
	on_cooldown = false;
	
}

// Do bounce stuff if off cooldown
if(!on_cooldown){
	
	on_cooldown = true;
	alarm[0] = .3 *60;
	move_bounce_all(false);
	image_blend = other.associated_Player.image_blend;
	projectileOwner = other.associated_Player.playerIndex;
	//dont go over top speed
	if( speed + accel > max_speed)
	{
		speed = max_speed;
	} else {
		//always go faster than the player that hit it
		if (speed+accel < other.associated_Player.movespeed){
			speed = other.associated_Player.movespeed + accel;
		}
		else {
			speed = speed + accel;
		}
		
	}
	
	if(other.associated_Player.active_powerup == powerups.Multi)
	{
		obj_game.alarm[gameAlarms.SpawnMultiPowerup] = 2*60;
		other.associated_Player.active_powerup = powerups.None
		other.associated_Player.alarm[0] = -1;
		var new_projectile = instance_create_layer(x,y,"Instances", obj_Projectile);
		new_projectile.direction = direction +10;
		new_projectile.speed = speed;
		new_projectile.on_cooldown = true;
		new_projectile.alarm[0] = .3*60;
		new_projectile.image_blend = image_blend;
		new_projectile.projectileOwner = projectileOwner
		new_projectile = instance_create_layer(x,y,"Instances", obj_Projectile);
		new_projectile.direction = direction -10;
		new_projectile.speed = speed;
		new_projectile.on_cooldown=true;
		new_projectile.alarm[0] = .3*60;
		new_projectile.image_blend = image_blend;
		new_projectile.projectileOwner = projectileOwner
	}
	

}