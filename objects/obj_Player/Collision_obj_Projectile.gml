//var survival_scores = [-1, 5, 3, 1, 0]

if (other.image_blend == image_blend) {
	
} else {
	
	if (other.projectileOwner != 0) {
		global.score[other.projectileOwner.playerIndex] +=1;
	}
	global.score[playerIndex] += obj_game.getSurvivalScore();
	obj_game.livingPlayers -= 1;
	
	instance_destroy(other);
	instance_destroy(paddle);
	instance_destroy();
	
	
	//global.score[playerIndex] += survival_scores[obj_game.livingPlayers];
}
