nextAvailControl = 0;
gamepad_set_axis_deadzone(0, 0.1);
gamepad_set_axis_deadzone(1, 0.1);

playerId = instance_create_layer(100, room_height/2, "Instances", obj_Player);
nextAvailControl += 1;
playerId = instance_create_layer(room_width-100, room_height/2, "Instances", obj_Player);
nextAvailControl += 1;