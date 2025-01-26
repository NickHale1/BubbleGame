//var survival_scores = [-1, 5, 3, 1, 0]

if (other.image_blend == image_blend) {
	
} else {
	
	if (other.projectileOwner != -1) {
		global.score[other.projectileOwner] +=1;
	}
	global.score[playerIndex] += obj_game.getSurvivalScore();
	obj_game.livingPlayers -= 1;
	
	// Check if this player died with multi powerup, and spawn a new one if so
	if (active_powerup == powerups.Multi) {
		obj_game.alarm[2] = 2 * 60;
	}
	
	instance_destroy(other);
	instance_destroy(paddle);
	instance_destroy();
	
	
	//global.score[playerIndex] += survival_scores[obj_game.livingPlayers];
}
