for (var i = 0; i < gamepad_get_device_count(); i++)
{
    if gamepad_button_check_pressed(i, gp_face1) && i < 4 && !global.players[i] {
		global.players[i] = true;	
		if !playerActive {
			playerActive = true;	
		}
	}
	if gamepad_button_check_pressed(i, gp_start) { // && global.players[i] {
		room_goto(Room1);	
	}
}