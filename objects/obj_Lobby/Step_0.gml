for (var i = 0; i < gamepad_get_device_count(); i++)
{
    if gamepad_button_check_pressed(i, gp_face1) && i < 4 {
	used = false;
	for(j = 0; j < 4; j++) {
		if i == global.activeControllers[j] {
			used = true;	
		}
	}
    if gamepad_button_check_pressed(i, gp_face1) && !used {
		for(j = 0; j < 4; j++) {
			if !global.players[j].player_active {
				global.players[j].player_active = true; // setting active
				global.players[j].controller_id = i; // controller to player
				global.activeControllers[j] = i;
				break;
			}
		}
		if !playerActive {
			playerActive = true;
		}
	}
	if gamepad_button_check_pressed(i, gp_start) { // && global.players[i] {
		room_goto(choose(FourCorners,FourCorners));	

	}
//gamepad_button_check(controllerId, gp_shoulderl);
}