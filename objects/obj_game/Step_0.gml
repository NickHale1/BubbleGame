if (livingPlayers < 2)
{
	var survivor = instance_find(obj_Player,0);
	global.players[survivor.playerIndex].player_current_score += getSurvivalScore();
	room_goto(room_NextLevel);
}

if !instance_exists(obj_Projectile) {
	
	var spawner = instance_find(obj_ProjectileSpawner, random(instance_number(obj_ProjectileSpawner)));
	instance_create_layer(spawner.x, spawner.y, "Instances", obj_Projectile);
}