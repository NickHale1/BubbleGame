//if(player_index == global.winningPlayer)
//{
//	draw_set_color(#efbf04)
//	draw_rectangle(bbox_left, bbox_top, bbox_right-1, bbox_bottom-1, true)	
//}


draw_self();

draw_sprite_ext(spr_Bubble, 0, x, y, 3.0, 3.0, 0, global.colorsArray[global.players[player_index].player_color], 1);



if(player_index == global.winningPlayer)
{
	draw_sprite_ext(spr_Crown , 0 , x, y, 3.0, 3.0,0, c_white, 1);
		
}