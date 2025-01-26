	if gamepad_button_check_pressed(global.players[player_num].controller_id, gp_shoulderr){
		var colorIndex = global.players[player_num].player_color;
		global.colorOccupied[colorIndex]--;
		colorIndex = (colorIndex+1) % array_length(global.colorsArray);
		global.colorOccupied[colorIndex]++;
		global.players[player_num].player_color = colorIndex;
		player_color = global.colorsArray[colorIndex]
	}
	if gamepad_button_check_pressed(global.players[player_num].controller_id, gp_shoulderl){
		var colorIndex = global.players[player_num].player_color;
		global.colorOccupied[colorIndex]--;
		if(colorIndex == 0){
			colorIndex = array_length(global.colorsArray) - 1;
		} else {
			colorIndex = (colorIndex-1) % array_length(global.colorsArray);
		}
		global.colorOccupied[colorIndex]++;
		global.players[player_num].player_color = colorIndex;
		player_color = global.colorsArray[colorIndex];
	}
	if(gamepad_button_check_pressed(global.players[player_num].controller_id , gp_face3))
	{
		global.changeWinConType();
	}
	if(gamepad_button_check_pressed(global.players[player_num].controller_id , gp_face4))
	{
		global.changeWinConValue();
	}