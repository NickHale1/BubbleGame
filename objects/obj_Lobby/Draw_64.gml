
draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if playerActive  && !badMatch {
	//draw_text(room_width/2, (room_height/2) +25, "Press Start to Play!");
	draw_text_transformed_color(room_width/2, (room_height/2) +25, "Press Start to Play!", 1, 1, 0, c_navy, c_navy, c_black, c_black, 1);
}
if playerActive && badMatch {
	//draw_text(room_width/2, (room_height/2) +25, "Two Matching Colors mus change!");		
	draw_text_transformed_color(room_width/2, (room_height/2) +25, "Two Matching Colors mus change!", 1, 1, 0, c_navy, c_navy, c_black, c_black, 1);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);


var xBtn = instance_find(obj_xBtn, 0)
//draw_text(xBtn.x + 80, xBtn.y + 16, global.activeWinCon.typeString);
draw_text_transformed_color(xBtn.x + 80, xBtn.y + 8, global.activeWinCon.typeString, 1, 1, 0, c_navy, c_navy, c_black, c_black, 1);


var yBtn = instance_find(obj_yBtn, 0)
//draw_text(yBtn.x + 80, yBtn.y + 16, global.activeWinCon.value);
draw_text_transformed_color(yBtn.x + 80, yBtn.y + 8, global.activeWinCon.value, 1, 1, 0, c_navy, c_navy, c_black, c_black, 1);