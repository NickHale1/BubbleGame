//if(player_index == global.winningPlayer)
//{
//	draw_set_color(#efbf04)
//	draw_rectangle(bbox_left, bbox_top, bbox_right-1, bbox_bottom-1, true)	
//}


draw_self();

draw_sprite_ext(spr_Player, 0, x, y, 1.0, 1.0, 0, global.colorsArray[global.players[player_index].player_color], 1);



if(player_index == global.winningPlayer)
{
	draw_sprite(spr_Crown , 0 , x, y-10);
		
}