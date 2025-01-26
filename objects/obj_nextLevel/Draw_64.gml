/// @description Insert description here
// You can write your code in this editor
var TopText = "Round " + string(global.totalRoundsPlayed) + " Recap";
var BottomText = "Press A to continue to the next round";


if matchComplete
{
	TopText = "P" + string(global.winningPlayer+1) + " wins!";
	BottomText = "Press A to return to menu";
	
}

draw_text_color(room_width/2, 100, TopText, c_navy, c_navy, c_black, c_black, 1);

draw_text_color(room_width/2, room_height - 100, BottomText, c_navy, c_navy, c_black, c_black, 1);