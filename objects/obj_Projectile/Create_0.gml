min_speed = 5;
default_speed = 6;
max_speed = 20;
decel = 0.03;

LastHit = 0;

motion_set(random(360), default_speed);


on_cooldown = false;

show_debug_message("Created!");