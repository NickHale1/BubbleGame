
// You can write your code in this editor


//if keyboard_check(ord("W"))
//{
//	ysp = -1* movespeed;	
//}
//if keyboard_check(ord("S"))
//{
//	ysp = 1 * movespeed;	
//}
//if(!keyboard_check(ord("W")) && !keyboard_check(ord("S")))
//{
//	ysp = 0 * movespeed;	
//}


//if keyboard_check(ord("D"))
//{
//	xsp = 1 *movespeed;	
//}
//if keyboard_check(ord("A"))
//{
//	xsp = -1 *movespeed;	
//}
//if(!keyboard_check(ord("D")) && !keyboard_check(ord("A")))
//{
//	xsp = 0* movespeed;	
//}

haxis = gamepad_axis_value(0, gp_axislh);
vaxis = gamepad_axis_value(0, gp_axislv);
//direction = point_direction(0, 0, haxis, vaxis);
//speed = point_distance(0 ,0, haxis, vaxis) * 5;

 move_and_collide(haxis * movespeed, vaxis * movespeed, obj_Solid);


