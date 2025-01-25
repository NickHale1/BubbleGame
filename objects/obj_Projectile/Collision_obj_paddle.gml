/// @description Insert description here
// You can write your code in this editor
move_bounce_all(false);

if(other.associated_Player.active_powerup == powerups.Multi)
{
	var new_projectile = instance_create_layer(x,y,"Instances", obj_Projectile);
	new_projectile.direction = direction +10;
	new_projectile = instance_create_layer(x,y,"Instances", obj_Projectile);
	new_projectile.direction = direction -10;
	
}
