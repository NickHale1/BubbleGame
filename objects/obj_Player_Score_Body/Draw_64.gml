draw_set_font(fnt_scoreboard);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

increase = global.players[player_index].player_current_score;
previous = global.players[player_index].player_prev_score;
total = increase + previous;

draw_text(x, y + 50, "Current Increase: ");
draw_text(x + 100, y + 50, increase);
draw_text(x, y + 100, "Previous Score: ");
draw_text(x + 100, y + 100, previous);
draw_text(x, y + 150, "Current Score: ");
draw_text(x + 100, y + 150, total);
global.players[player_index].player_current_score = 0;
global.players[player_index].player_prev_score = total;

draw_set_halign(fa_left);
draw_set_valign(fa_top);