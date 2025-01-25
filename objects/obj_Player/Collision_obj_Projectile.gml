//var survival_scores = [-1, 5, 3, 1, 0]

if (other.image_blend == image_blend) {
	
} else {
	global.score[other.projectileOwner.playerIndex] +=1;
	instance_destroy(other);
	instance_destroy(paddle)
	instance_destroy();
	obj_game.livingPlayers -= 1;
	//global.score[playerIndex] += survival_scores[obj_game.livingPlayers];
}
