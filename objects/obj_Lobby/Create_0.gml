xPos = [400, 400, 1000, 1000];
yPos = [200, 600, 200, 600];
global.activeControllers = [-1, -1, -1, -1];
global.colorsArray = [c_red, c_blue, c_green, c_yellow, c_aqua, c_fuchsia, c_lime];
nextPlayerNum = 0;


for(i = 0; i < 4; i++) {
	nextPlayerNum = i;
	queued = instance_create_layer(xPos[i], yPos[i], "Instances", obj_Queued_Player);
	if global.players[i].player_active {
		global.activeControllers[i] = global.players[i].controller_id;
	}
	
	if global.players[i].player_active && !playerActive{
		playerActive = true;
	}
}
