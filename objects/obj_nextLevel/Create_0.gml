global.totalRoundsPlayed += 1;


function winConMet()
{
	
	switch(global.activeWinCon.type)
	{
		case winCons.Rounds:
			if(global.totalRoundsPlayed >= global.activeWinCon.value)
			{
				var highScore = -1;
				var winner = -1;
				for (i = 0; i < 4; i++) {
					if (global.players[i].player_active and global.players[i].player_current_score > highScore) {
						winner = i;
						highScore = global.players[i].player_current_score;
					}
				}
				global.winningPlayer = winner;
				return true;	
			}
			return false;
			
		case winCons.Score:
			for (i = 0; i < 4; i++) {
				if (global.players[i].player_active and global.players[i].player_current_score >= global.activeWinCon.value) {
					global.winningPlayer = i;
					return true;
				}
			}
			return false;	
	
	}
	
}


matchComplete = winConMet();




for(i = 0; i < 4; i++) {
	if global.players[i].player_active {
		nextPlayer = i;
		instance_create_layer((350 * (i)) + 200, 300, "Instances", obj_Player_Score_Body);	
	}
}