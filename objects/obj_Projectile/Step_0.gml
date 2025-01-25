show_debug_message("Steppin");
if(speed - decel < min_speed)
{
	speed = min_speed;
} else
{
	speed = speed - decel;
}