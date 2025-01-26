global.totalRoundsPlayed += 1;

if winConMet(){
	//display some wincon shit	
	
}



for(i = 0; i < 4; i++) {
	if global.players[i].player_active {
		nextPlayer = i;
		instance_create_layer((350 * (i)) + 200, 300, "Instances", obj_Player_Score_Body);	
	}
}