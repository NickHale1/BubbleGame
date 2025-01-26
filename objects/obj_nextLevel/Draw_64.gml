/// @description Insert description here
// You can write your code in this editor
var TopText = "Round " + string(global.totalRoundsPlayed) + " Recap";
if matchComplete
{
	TopText = "P" + string(global.winningPlayer+1) + " wins!";
	
}

draw_text(room_width/2, 100, TopText);