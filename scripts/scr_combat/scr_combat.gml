/// @function						encounter()
function encounter() {
	/// @ Description				????
	
	// If the player character doesn't exist or the random encounters object is absent; skip
	if (!instance_exists(o_elizabeth) || !(instance_exists(o_random_encounters))) {
		exit;
	}
	
	// If random encounters are on, create a battle transition if one does not exist yet
	if (o_random_encounters.on_ && !instance_exists(o_battle_transition)) {
		
		// Remove the player object from the map
		o_elizabeth.state_ = elizabeth_wait_state;
		o_elizabeth.persistent = false;
		
		instance_create_layer(0, 0, "UI", o_battle_transition);
	}
}