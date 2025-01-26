if (livingPlayers < 2)
{
	var survivor = instance_find(obj_Player,0);
	global.players[survivor.playerIndex].player_current_score += getSurvivalScore();
	room_goto(room_NextLevel);
}

if !instance_exists(obj_Projectile) {
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_Projectile);
}