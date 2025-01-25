
for(i = 0; i < 4; i++) {
	if global.players[i] {
		gamepad_set_axis_deadzone(i, 0.1);
		nextAvailControl = i;
		var playerSpawn = instance_find(obj_PlayerStart, i);
		currPlayer = instance_create_layer(playerSpawn.x, playerSpawn.y, "Instances", obj_Player);
	}
}
