/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < gamepad_get_device_count(); i++)
{
	    if gamepad_button_check_pressed(i, gp_face1){
			room_goto(room_Lobby)
		
		}
	//gamepad_button_check(controllerId, gp_shoulderl);
}