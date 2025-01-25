draw_self();
if global.players[player_num] {
	draw_sprite_ext(spr_Player, 0, x, y, 1.0, 1.0, 0, player_color, 1.0);
} 