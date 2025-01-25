if (livingPlayers < 2)
{
	var survivor = instance_find(obj_Player,0);
	global.score[survivor.playerIndex] += getSurvivalScore();
	room_goto(room_NextLevel);
}