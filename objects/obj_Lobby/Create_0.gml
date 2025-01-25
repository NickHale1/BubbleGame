for(i = 0; i < 4; i++) {
	if global.players[i] {
		instance_create_layer(100, 200 * (1+i), "Instances", obj_Queued_Player);
	}
}