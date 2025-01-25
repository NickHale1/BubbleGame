
// You can write your code in this editor



haxis = gamepad_axis_value(controllerId, gp_axislh);
vaxis = gamepad_axis_value(controllerId, gp_axislv);
//direction = point_direction(0, 0, haxis, vaxis);
//speed = point_distance(0 ,0, haxis, vaxis) * 5;

 move_and_collide(haxis * movespeed, vaxis * movespeed, obj_Solid);


haxis_paddle = gamepad_axis_value(controllerId, gp_axisrh);
vaxis_paddle = gamepad_axis_value(controllerId, gp_axisrv);
var paddle_joystick_angle = point_direction(0, 0, haxis_paddle, vaxis_paddle);
if (haxis_paddle != 0 and vaxis_paddle != 0 ) {
	paddle_angle = paddle_joystick_angle;
}
paddle.image_angle = paddle_angle;
paddle.x = x
paddle.y = y



