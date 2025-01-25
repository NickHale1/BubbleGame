/// @description Insert description here
// You can write your code in this editor
show_debug_message("Steppin");
if(speed - decel < min_speed)
{
	speed = min_speed;
} else
{
	speed = speed - decel;
}

