/// @description Insert description here
// You can write your code in this editor
var TopText = "Round " + string(global.totalRoundsPlayed) + " Recap";
var BottomText = "Press A to continue to the next round";


if matchComplete
{
	TopText = "P" + string(global.winningPlayer+1) + " wins!";
	BottomText = "Press A to return to menu";
	
}

draw_set_halign(fa_center); // horizontal center
//draw_set_valign(fa_middle); // vertical center

draw_text_transformed_color(room_width/2, 50, TopText, 2, 2, 0, c_navy, c_navy, c_black, c_black, 1);

draw_text_transformed_color(room_width/2, room_height - 85, BottomText, 1.5, 1.5, 0, c_navy, c_navy, c_black, c_black, 1);