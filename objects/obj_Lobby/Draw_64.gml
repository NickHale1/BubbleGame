
draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if playerActive  && !badMatch {
	draw_text(room_width/2, (room_height/2) +25, "Press Start to Play!");
}
if playerActive && badMatch {
	draw_text(room_width/2, (room_height/2) +25, "Two Matching Colors mus change!");		
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);


var xBtn = instance_find(obj_xBtn, 0)
draw_text(xBtn.x + 80, xBtn.y + 16, global.activeWinCon.typeString);


var yBtn = instance_find(obj_yBtn, 0)
draw_text(yBtn.x + 80, yBtn.y + 16, global.activeWinCon.value);