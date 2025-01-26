if(speed - decel < min_speed)
{
	speed = min_speed;
} else
{
	speed = speed - decel;
}

image_angle += 1;