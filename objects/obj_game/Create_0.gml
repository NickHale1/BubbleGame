/// @description Insert description here
// You can write your code in this editor
livingPlayers = 0;

for(i = 0; i < 4; i++) {
	if global.players[i] {
		
		gamepad_set_axis_deadzone(i, 0.1);
		var player_spawn = instance_find(obj_PlayerStart, i )
		nextAvailControl = i;
		
		var currPlayer = instance_create_layer(player_spawn.x, player_spawn.y, "Instances", obj_Player);
		if (i == 0) {
			currPlayer.image_blend = c_blue;
		} else if (i == 1) {
			currPlayer.image_blend = c_red;
		} else if (i == 2) {
			currPlayer.image_blend = c_white
		} else if (i == 3) {
			currPlayer.image_blend = c_green
		}

		livingPlayers +=1;
	}
}

