/// @description Insert description here
// You can write your code in this editor
if(speed - decel < min_speed)
{
	speed = min_speed;
} else
{
	speed = speed - decel;
}

