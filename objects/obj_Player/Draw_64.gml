draw_text(500, 100, point_direction(0, 0, haxis_paddle, vaxis_paddle));
draw_text(500, 150, paddle_angle);
var fixed_angle = paddle_angle < 0 ? (paddle_angle % 360 + 360) : paddle_angle % 360;
draw_text(500, 200, fixed_angle	);