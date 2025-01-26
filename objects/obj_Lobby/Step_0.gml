for (var i = 0; i < gamepad_get_device_count(); i++)
{
	used = false;
	for(j = 0; j < 4; j++) {
		if i == global.activeControllers[j] {
			used = true;	
		}
	}
    if gamepad_button_check_pressed(i, gp_face1) && !used && i < 4 {
		for(j = 0; j < 4; j++) {
			if !global.players[j].player_active {
				global.players[j].player_active = true; // setting active
				global.players[j].controller_id = i; // controller to player
				global.colorOccupied[global.players[j].player_color]++; 
				global.activeControllers[j] = i;
				break;
			}
		}
		if !playerActive {
			playerActive = true;
		}
	}
	if gamepad_button_check_pressed(i, gp_start) { // && global.players[i] {
		badMatch = false;
		for(j = 0; j < array_length(global.colorOccupied); j++) {
			if global.colorOccupied[j] > 1 {
				badMatch = true;
			}
		}
		if !badMatch {
			room_goto(choose(FourCorners,FourCorners));	
		}
	}
//gamepad_button_check(controllerId, gp_shoulderl);
}