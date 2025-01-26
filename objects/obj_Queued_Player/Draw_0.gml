draw_self();
if global.players[player_num].player_active {
	draw_sprite_ext(spr_Player, 0, x, y, 1.0, 1.0, 0, global.colorsArray[global.players[player_num].player_color], 1.0);
} 