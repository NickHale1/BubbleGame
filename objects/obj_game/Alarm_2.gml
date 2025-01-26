/// @description Spawn Multi Powerup
// You can write your code in this editor


var spawner = instance_find(obj_ProjectileSpawner, random(instance_number(obj_ProjectileSpawner)));
instance_create_layer(spawner.x, spawner.y , "Instances" , obj_powerup_multi)