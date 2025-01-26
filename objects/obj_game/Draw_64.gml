//draw_text(100, 30, gamepad_axis_value(0, gp_axislh));
//draw_text(100, 50, gamepad_axis_value(0, gp_axislv));


//draw_text(100, 100, gamepad_axis_value(0, gp_axisrh));
//draw_text(100, 120, gamepad_axis_value(0, gp_axisrv));


for(i = 0; i < 4; i++) {
	draw_text(100, 100*(1+i), global.players[i].player_current_score + 	global.players[i].player_prev_score);
}