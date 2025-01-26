player_index = obj_nextLevel.nextPlayer;

current_score = global.players[player_index].player_current_score;
prev_score = global.players[player_index].player_prev_score;
global.players[player_index].player_prev_score = current_score;
increase = current_score - prev_score;

show_debug_message("scoreboard: " + string(player_index));
show_debug_message("current_score: " + string(current_score));
show_debug_message("prev_score: " + string(prev_score));
show_debug_message("increase: " + string(increase));