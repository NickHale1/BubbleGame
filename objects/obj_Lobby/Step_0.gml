for (var i = 0; i < gamepad_get_device_count(); i++)
{
    if gamepad_button_check_pressed(i, gp_face1) && i < 4 && !global.players[i] {
		global.players[i] = true;	
		instance_create_layer(100, 200 * (1+i), "Instances", obj_Queued_Player);
	}
	if gamepad_button_check_pressed(i, gp_start) {
		room_goto(Room1);	
	}
}