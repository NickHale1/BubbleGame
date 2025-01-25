for(i = 0; i < 4; i++) {
	if global.players[i] {
		gamepad_set_axis_deadzone(i, 0.1);
		nextAvailControl = i;
		currPlayer = instance_create_layer(100 * (1+i), 200, "Instances", obj_Player);
	}
}
