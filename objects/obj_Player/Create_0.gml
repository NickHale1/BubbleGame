/// @description Declare Variables
// You can write your code in this editor
xsp = 0;
ysp = 0;
vaxis = 0;
haxis = 0;

playerIndex = obj_game.nextAvailControl;
controllerId = global.players[playerIndex].controller_id;

paddle_angle_increment = 3;
// Theoretically deadzone should be bigger than increment to avoid getting stuck
paddle_angle_deadzone = 2.5;

//powerup enum
enum powerups {
	None,
	Multi,
}
active_powerup = powerups.None;

//generic multipler so we can update the movement speed easily
movespeed = 8;

haxis_paddle = 0;
vaxis_paddle = 0;
paddle_angle = 0;

paddle = instance_create_layer(x+10,y,"Instances", obj_paddle);
paddle.associated_Player = id

var scale_factor = 1.25;

image_xscale = scale_factor;
image_yscale = scale_factor;
paddle.image_yscale = scale_factor;
paddle.image_xscale = scale_factor;