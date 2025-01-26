draw_set_font(fnt_scoreboard);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//increase = global.players[player_index].player_current_score;
//previous = global.players[player_index].player_prev_score;
//total = increase + previous;



draw_text(x, y + 50, "+" + string(increase));

draw_text(x, y + 150, "Score: " + string(current_score));




draw_set_halign(fa_left);
draw_set_valign(fa_top);