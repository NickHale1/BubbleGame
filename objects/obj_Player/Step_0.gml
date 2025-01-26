
// You can write your code in this editor



haxis = gamepad_axis_value(controllerId, gp_axislh);
vaxis = gamepad_axis_value(controllerId, gp_axislv);
//direction = point_direction(0, 0, haxis, vaxis);
//speed = point_distance(0 ,0, haxis, vaxis) * 5;


move_and_collide((haxis * movespeed), (vaxis * movespeed), obj_PlayerCollisionObject);

//========================
// Paddle movement logic
//========================

haxis_paddle = gamepad_axis_value(controllerId, gp_axisrh);
vaxis_paddle = gamepad_axis_value(controllerId, gp_axisrv);
var paddle_joystick_angle = point_direction(0, 0, haxis_paddle, vaxis_paddle);

//----------------------------------
// Move paddle based on bumpers if pressed
//----------------------------------
var rb = gamepad_button_check(controllerId, gp_shoulderr);
var lb = gamepad_button_check(controllerId, gp_shoulderl);
show_debug_message(rb);
show_debug_message(lb);
	
if (rb == 1 and lb == 0) {
	paddle_angle -= paddle_angle_increment;
} else if (rb == 0 and lb == 1) {
	paddle_angle += paddle_angle_increment;
} else if (rb == 0 and lb == 0) {
	//----------------------------------
	// Move paddle based on right stick if no bumpers are pressed
	//----------------------------------

	// Check that joystick isn't centered
	if (haxis_paddle != 0 and vaxis_paddle != 0 ) {	
		// Get paddle angle in 0-359 range
		var clamped_paddle_angle = paddle_angle < 0 ? (paddle_angle % 360 + 360) : paddle_angle % 360;
		// Check which way to move paddle and increment accordingly
		if (clamped_paddle_angle > paddle_joystick_angle) {
			var diff = clamped_paddle_angle - paddle_joystick_angle;
			if (diff > paddle_angle_deadzone) {
				if (diff < 180) {
					paddle_angle -= paddle_angle_increment;
				} else {
					paddle_angle += paddle_angle_increment;
				}
			} else {
				paddle_angle = paddle_joystick_angle;
			}
		} else {
			var diff = paddle_joystick_angle - clamped_paddle_angle;
			if (diff > paddle_angle_deadzone) {
				if (diff < 180) {
					paddle_angle += paddle_angle_increment;
				} else {
					paddle_angle -= paddle_angle_increment;
				}
			} else {
				paddle_angle = paddle_joystick_angle;
			}
		}
		// This line was the original logic that just snapped it wherever
		// paddle_angle = paddle_joystick_angle;
	}
}

// Update values on actual obj_paddle
paddle.image_angle = paddle_angle;
paddle.x = x
paddle.y = y