for(i = 0; i < 4; i++) {
	global.players[i] = 
	{
		player_active : false,
		player_color : 0,
		controller_id : -1,
		player_current_score : 0,
		player_prev_score : 0,
	};
}

enum winCons{
	Rounds,
	Score,
}

global.activeWinCon =
{
	type: winCons.Rounds,
	value: 10,

}

global.totalRoundsPlayed = -1;


function winConMet()
{
	
	switch(global.activeWinCon.type)
	{
		case winCons.Rounds:
		
			if(true)
			{
				return true;	
			}
			return false;
		case winCons.Score:
			for (i = 0; i < 4; i++) {
				if (global.player[i].player_active and global.player[i].player_current_score >= global.activeWinCon.value) {
					return true;
				}
			}
			return false;
		
	
	}
	
}

	
