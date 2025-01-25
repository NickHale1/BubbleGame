for(i = 0; i < 4; i++) {
	if global.players[i] {
		nextAvailControl = i;
		currPlayer = instance_create_layer(100 * (1+i), 200, "Instances", obj_Player);
	}
}