/// @description Spawn Projectile
// You can write your code in this editor


instance_create_layer(nextProjectileSpawner.x, nextProjectileSpawner.y, "Instances", obj_Projectile);
nextProjectileSpawner.sprite_index = spr_ProjectileSpawner;
nextProjectileSpawner.visible = false;
nextProjectileSpawner = 0;
