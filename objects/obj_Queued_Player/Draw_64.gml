
draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if gamepad_is_connected(player_num) && !global.players[player_num] {
	draw_text(x, y, "Press A to play");
}
if !gamepad_is_connected(player_num) && !global.players[player_num] {
	draw_text(x, y, "Connect Controller");	
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);