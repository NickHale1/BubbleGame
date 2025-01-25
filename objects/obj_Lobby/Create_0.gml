xPos = [400, 400, 1000, 1000];
yPos = [200, 600, 200, 600];

nextPlayerNum = 0;

for(i = 0; i < 4; i++) {
	nextPlayerNum = i;
	queued = instance_create_layer(xPos[i], yPos[i], "Instances", obj_Queued_Player);
	if global.players[i] && !playerActive{
		playerActive = true;
	}
}