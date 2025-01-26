if (livingPlayers < 2)
{
	var survivor = instance_find(obj_Player,0);
	global.players[survivor.playerIndex].player_current_score += getSurvivalScore();
	room_goto(room_NextLevel);
}

if (!instance_exists(obj_Projectile) and alarm[gameAlarms.SpawnProjectile] < 0) {
	
	
	alarm[gameAlarms.SpawnProjectile] = 1* 60;
	nextProjectileSpawner = instance_find(obj_ProjectileSpawner, random(instance_number(obj_ProjectileSpawner)));
	nextProjectileSpawner.sprite_index = spr_ProjectileSpawner_Ready
	nextProjectileSpawner.visible = true;
}