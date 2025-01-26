global.colorsArray = [c_red, c_blue, c_green, c_yellow, c_aqua, c_fuchsia, c_lime, c_orange, c_teal];

window_set_caption("Bubble Bash");

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
	value: 10,
	typeString: "Max Rounds",
	
	

}



global.changeWinConType = function () {
	if(global.activeWinCon.type == winCons.Rounds){
		global.activeWinCon.type = winCons.Score;
		global.activeWinCon.value = 50;
		global.activeWinCon.typeString = "Target Score";
	
	}
	else if(global.activeWinCon.type == winCons.Score){
		global.activeWinCon.type = winCons.Rounds;
		global.activeWinCon.value = 10;
		global.activeWinCon.typeString = "Max Rounds";
	
	}
}

global.changeWinConValue = function() {
	var newValue = global.activeWinCon.value + 5;
	if (newValue > 50) {newValue = 5};
	global.activeWinCon.value = newValue
	
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

audio_play_sound(snd_bg_music, 0.2, true);


	
