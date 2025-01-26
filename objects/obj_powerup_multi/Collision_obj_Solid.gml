// Reset paddle contact cooldown if needed
// This helps for the case where a player is really close to a wall bouncing a
//	     projectile in between
if (on_cooldown) {
	on_cooldown = false;
}

move_bounce_all(false);