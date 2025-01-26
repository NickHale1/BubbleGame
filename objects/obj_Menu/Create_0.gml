for(i = 0; i < 4; i++) {
	global.players[i] = 
	{
		player_active : false,
		player_color : i,
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
	value: 2,

}

global.winningPlayer = -1;

global.totalRoundsPlayed = -1;




	
