min_speed = 4;
default_speed = 6;
max_speed = 20;
decel = 0.02;
accel = 3;

projectileOwner = -1;

motion_set(random(360), default_speed);


on_cooldown = false;

show_debug_message("Created!");