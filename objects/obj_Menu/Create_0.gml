global.colorsArray = [c_red, c_blue, c_green, c_yellow, c_aqua, c_fuchsia, c_lime, c_orange, c_teal];

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
	value: 5,

}

global.winningPlayer = -1;

global.totalRoundsPlayed = -1;



global.getRandomMap = function() 
{
	return choose(Basic, Clover, Dogbone, Domino_Five, Dominos, Donut, 
			Donut_Circle, Football, FourCorners, FourCorners_Circle, lmaoo, MathSymbols,
			NeopolitanH, NeopolitanV, PictureFrame, Rink, Spade, Strip)	
//	return Basic;
}


	
