for(i = 0; i < 4; i++) {
	if global.players[i] {
		gamepad_set_axis_deadzone(i, 0.1);
		player_spawn = instance_find(obj_PlayerStart, i )
		nextAvailControl = i;
		currPlayer = instance_create_layer(player_spawn.x, player_spawn.y, "Instances", obj_Player);
	
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
	}
}