/// @description Insert description here
// You can write your code in this editor
livingPlayers = 0;
totalPlayers = 0;
for(i = 0; i < 4; i++) {
	if global.players[i] {
		
		gamepad_set_axis_deadzone(i, 0.1);
		var player_spawn = instance_find(obj_PlayerStart, i )
		nextAvailControl = i;
		currPlayer = instance_create_layer(player_spawn.x, player_spawn.y, "Instances", obj_Player);
	
		// switch statement to assign players
		switch (i) {
			case 0:
				currPlayer.image_blend = c_blue;
				break;
			case 1:
				currPlayer.image_blend = c_red;
				break;
			case 2:
				currPlayer.image_blend = c_white;
				break;
			case 3:
				currPlayer.image_blend = c_green;
				break;
		}

		livingPlayers +=1;
		totalPlayers += 1;

	}
}

function getSurvivalScore() {
	var playersOutlasted = totalPlayers - livingPlayers;
	switch (playersOutlasted) {
		case 0:
			return 0;
		case 1:
			return 1;
		case 2:
			return 3;
		case 3:
			return 5;
	}
	
}