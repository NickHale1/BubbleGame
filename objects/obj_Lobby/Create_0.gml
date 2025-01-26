xPos = [400, 400, 1000, 1000];
yPos = [200, 600, 200, 600];
global.score = [0,0,0,0]
global.playerColors = [0, 1, 2, 3];
global.colorsArray = [c_red, c_blue, c_green, c_yellow, c_aqua, c_fuchsia, c_lime];

global.testRoom = lmaoo;

nextPlayerNum = 0;


for(i = 0; i < 4; i++) {
	nextPlayerNum = i;
	queued = instance_create_layer(xPos[i], yPos[i], "Instances", obj_Queued_Player);
	if global.players[i].player_active && !playerActive{
		playerActive = true;
	}
}
