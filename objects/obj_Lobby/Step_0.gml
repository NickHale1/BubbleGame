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
	
	if gamepad_button_check_pressed(i, gp_shoulderr){
		var colorIndex = global.playerColors[i];
		colorIndex = (colorIndex+1) % array_length(global.colorsArray);
		var queued = instance_find(obj_Queued_Player, i);
		global.playerColors[i] = colorIndex;
		queued.player_color = global.colorsArray[colorIndex]
	}
	if gamepad_button_check_pressed(i, gp_shoulderl){
		var colorIndex = global.playerColors[i];
		if(colorIndex == 0){
			colorIndex = array_length(global.colorsArray) - 1;
		} else {
			colorIndex = (colorIndex-1) % array_length(global.colorsArray);
		}
		
		var queued = instance_find(obj_Queued_Player, i);
		global.playerColors[i] = colorIndex;
		queued.player_color = global.colorsArray[colorIndex];
	}
//gamepad_button_check(controllerId, gp_shoulderl);
}