draw_self();
if global.players[player_num].player_active {
	draw_sprite_ext(spr_Bubble, 0, x, y, 3.0, 3.0, 0, global.colorsArray[global.players[player_num].player_color], 1.0);
} 