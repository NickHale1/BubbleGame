//var survival_scores = [-1, 5, 3, 1, 0]

if (other.image_blend == image_blend) {
	
} else {
	
	if (other.projectileOwner != -1) {
		global.players[other.projectileOwner].player_current_score +=1;
	}
	global.players[playerIndex].player_current_score += obj_game.getSurvivalScore();
	obj_game.livingPlayers -= 1;
	
	// Check if this player died with multi powerup, and spawn a new one if so
	if (active_powerup == powerups.Multi) {
		obj_game.alarm[2] = 2 * 60;
	}
	
	effect_create_above(ef_firework, x, y, 1.0, global.colorsArray[global.players[playerIndex].player_color]);
	
	instance_destroy(other);
	instance_destroy(paddle);
	instance_destroy();
	
	
	//global.score[playerIndex] += survival_scores[obj_game.livingPlayers];
}
