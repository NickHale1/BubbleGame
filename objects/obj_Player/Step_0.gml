
// You can write your code in this editor


if keyboard_check(ord("W"))
{
	ysp = -1;	
}
if keyboard_check(ord("S"))
{
	ysp = 1;	
}
if(!keyboard_check(ord("W")) && !keyboard_check(ord("S")))
{
	ysp = 0;	
}


if keyboard_check(ord("D"))
{
	xsp = 1;	
}
if keyboard_check(ord("A"))
{
	xsp = -1;	
}
if(!keyboard_check(ord("D")) && !keyboard_check(ord("A")))
{
	xsp = 0;	
}


move_and_collide(xsp, ysp, obj_Solid);


