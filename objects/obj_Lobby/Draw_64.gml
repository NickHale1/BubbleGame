
draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if playerActive {
	draw_text(1366/2, 768/2, "Press Start to Play!");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);